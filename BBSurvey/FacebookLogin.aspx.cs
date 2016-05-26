using System;
using System.Web;
using System.Web.Services;

using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace BBSurvey {
   public partial class FacebookLogin : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         //if (!ResponseId.HasValue)
         //   Response.Redirect("StartPage.aspx");

         //if (ResponseId != null)
         //   Model.CreatePageVisitLog("FaceBookLogin", ResponseId.Value);
      }

      protected void OnNextClick(object sender, EventArgs e) {
         //only for simulation purpose 
         //generally this redirect will happen through FB
         Response.Redirect(string.Format("FacebookDataFetch.aspx?ResponseId={0}", ResponseId));
      }

      [WebMethod(EnableSession = true)]
      public static int PostAuthToken(string authToken, string fbUserId) {
         var model = new SIModelDS();
         try {
            if (string.IsNullOrEmpty(authToken))
               throw new Exception("AuthToken is null");
            
            var facebookClient = new Facebook.FacebookClient(authToken);
            var userInfo = JObject.Parse(facebookClient.Get(fbUserId).ToString());

            int sessionId = 0;
            
            if (HttpContext.Current.Session["RESPONSEID"] == null) {
               sessionId = model.CreateNewSession("");
               HttpContext.Current.Session["RESPONSEID"] = sessionId;
            }
            else {
               sessionId = int.Parse(HttpContext.Current.Session["RESPONSEID"].ToString());
            }

            // Internal UserID
            int userId = model.SaveFacebookDataForUser(sessionId, string.Format("{0} {1}", userInfo.Value<string>("first_name"), userInfo.Value<string>("last_name")), null, userInfo.Value<string>("email"), userInfo.Value<string>("gender"), userInfo.Value<string>("locale"), null, authToken, null, null, JsonConvert.SerializeObject(userInfo));

            // Get User's taggable friends
            var friendsResponse = JObject.Parse(facebookClient.Get(fbUserId + "/taggable_friends").ToString());
            if (friendsResponse == null)
               throw new Exception("Unable to retrieve taggable friends for user");
            
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

            return sessionId;
         }
         catch (Exception ex) {
            // TODO: consider logging
            model.CreatePageVisitLog("FacebookLogin.aspx: error", 0);
         }

         return -1;
      }
   }
}