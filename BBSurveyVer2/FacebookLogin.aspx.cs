using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace BBSurveyVer2 {
   public partial class FacebookLogin : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (!IsPostBack) {
            if (ResponseId.HasValue)
               Model.CreatePageVisitLog("FBLoginPage", ResponseId.Value);
         }
      }

      private static int GetRandomExcluding(int min, int max, int[] excludeList) {
         var rnd = new Random();
         int randomVal;
         do {
            randomVal = rnd.Next(min, max);
         } while (excludeList.Contains(randomVal));

         return randomVal;
      }

      [WebMethod(EnableSession = true)]
      public static int PostAuthToken(string authToken, string fbUserId, int responseId, string expType) {
         var model = new SIModelDS();
         try {
            if (string.IsNullOrEmpty(authToken))
               throw new Exception("AuthToken is null");

            var facebookClient = new Facebook.FacebookClient(authToken);
            var userInfo = JObject.Parse(facebookClient.Get(fbUserId).ToString());

            //int sessionId = 0;

            //if (HttpContext.Current.Session["RESPONSEID"] == null) {
            //   sessionId = model.CreateNewSession("");
            //   HttpContext.Current.Session["RESPONSEID"] = sessionId;
            //}
            //else {
            //   sessionId = int.Parse(HttpContext.Current.Session["RESPONSEID"].ToString());
            //}

            // Internal UserID
            int userId = model.SaveFacebookDataForUser(responseId, string.Format("{0} {1}", userInfo.Value<string>("first_name"), userInfo.Value<string>("last_name")), null, userInfo.Value<string>("email"), userInfo.Value<string>("gender"), userInfo.Value<string>("locale"), null, authToken, null, null, JsonConvert.SerializeObject(userInfo));

            // Get User's taggable friends

            string urlToGet = fbUserId + "/taggable_friends";
            bool isPagingActive = true;

            do {
               var friendsResponse = JObject.Parse(facebookClient.Get(urlToGet).ToString());
               if (friendsResponse == null)
                  break; //list complete 

               var friends = friendsResponse.Value<JArray>("data");
               foreach (var friend in friends) {
                  model.AddFriendForUser(
                     userId,
                     null,
                     friend.Value<string>("name"),
                     friend.Value<JObject>("picture").Value<JObject>("data").Value<string>("url"),
                     null,
                     null
                     );
               }

               if (friendsResponse.Value<JObject>("paging") != null
                   && friendsResponse.Value<JObject>("paging").Value<string>("next") != null) {
                  urlToGet = friendsResponse.Value<JObject>("paging").Value<string>("next");
               }
               else {
                  isPagingActive = false;
               }

            } while (isPagingActive);
            

            //Decide group 

            if (expType == "pre")
               return responseId;

            var friendIds = model.GetFriendIdsByUserId(userId).ToList();

            int experimentGroup = 0;
            experimentGroup = Convert.ToInt32(model.GetServiceInfoByName("LastExperimentGroup"));
            if (experimentGroup < 5) {
               experimentGroup++;
            }
            else {
               experimentGroup = 1;
            }

            model.UpdateServiceInfoByName("", experimentGroup.ToString());
            model.UpdateExperimentTypeAndGroup(responseId, "post", experimentGroup);

            var experimentDataDefinition = model.GetExperimentDataDefinition();
            var experimentDataDefForType = experimentDataDefinition.First(d => d.GroupId == experimentGroup && d.ExperimentType == "post");

            var rnd = new Random();            

            var includeList = new List<int>();
            var includeFriendList = new List<int>();


            if (experimentDataDefForType.NumberOfFriends == 2) {
               includeList.Add(rnd.Next(0, friendIds.Count - 1));

               includeList.Add(GetRandomExcluding(0, friendIds.Count - 1, includeList.ToArray()));

               foreach (var i1 in includeList) {
                  includeFriendList.Add(friendIds[i1]);
               }
            }

            if (experimentDataDefForType.NumberOfFriends == 8) {

               includeList.Add(rnd.Next(0, friendIds.Count - 1));

               includeList.Add(GetRandomExcluding(0, friendIds.Count - 1, includeList.ToArray()));

               includeList.Add(GetRandomExcluding(0, friendIds.Count - 1, includeList.ToArray()));

               includeList.Add(GetRandomExcluding(0, friendIds.Count - 1, includeList.ToArray()));

               includeList.Add(GetRandomExcluding(0, friendIds.Count - 1, includeList.ToArray()));

               includeList.Add(GetRandomExcluding(0, friendIds.Count - 1, includeList.ToArray()));

               includeList.Add(GetRandomExcluding(0, friendIds.Count - 1, includeList.ToArray()));

               includeList.Add(GetRandomExcluding(0, friendIds.Count - 1, includeList.ToArray()));



               foreach (var i1 in includeList) {
                  includeFriendList.Add(friendIds[i1]);
               }

            }


            var friendsShown = new List<ExperimentFriendsShown>();
            int i = 0;
            for (int j = 0; j < experimentDataDefForType.NumberOfFriends; j++) {
               friendsShown.Add(new ExperimentFriendsShown() {
                  CreatedAt = DateTime.Now,
                  ExperimentGroup = experimentGroup,
                  ResponseId = responseId,
                  FriendId = includeFriendList[i],
                  Orderid = i++,

               });
            }

            model.SaveFriendsShown(friendsShown, responseId);

            return responseId;
         }
         catch (Exception ex) {
            // TODO: consider logging
            model.CreatePageVisitLog("FacebookLogin.aspx: error", 0);
         }

         return -1;
      }

      protected void OnPreviousClick(object sender, EventArgs e) {
         Response.Redirect(string.Format("FilmPaymentPref.aspx?Responseid={0}", ResponseId));
      }
   }
}