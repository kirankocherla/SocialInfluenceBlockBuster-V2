using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSurvey {
   public partial class PostFacebookFetch : BasePage {
      protected void Page_Load(object sender, EventArgs e) {

         if (ResponseId == null)
            Response.Redirect("StartSurvey.aspx");

         //experiment type
         if (!IsPostBack) {
            var experimentGroup = Convert.ToInt32(Model.GetServiceInfoByName("LastExperimentGroup"));

            if (ResponseId != null) {
               var id = Model.GetFacebookUserDataByResponseId(ResponseId.Value).Id;
               var facebookFriends = Model.GetFacebookFriendByUserId(id).ToList();
            

               if (experimentGroup < 5) {
                  experimentGroup++;               
               }
               else {
                  experimentGroup = 1;
               }

               if (!facebookFriends.Any()) {
                  experimentGroup = 1;               
               }
               else {
                  var experimentDataDefinition = Model.GetExperimentDataDefinition();
                  var experimentDataDefForType = experimentDataDefinition.First(d => d.GroupId == experimentGroup);

                  int i = 0;
                  if (experimentDataDefForType.NumberOfFriends >= facebookFriends.Count) {
                     Model.SaveFriendsShown(facebookFriends.Select(f => new ExperimentFriendsShown()
                        {
                           CreatedAt = DateTime.Now,
                           ExperimentGroup = experimentGroup,
                           ResponseId = ResponseId.Value,
                           Orderid = ++i,
                           FriendId = f.Id
                        }).ToList(), ResponseId.Value);
                  }
                  else {
                     Model.SaveFriendsShown(facebookFriends.Take(experimentDataDefForType.NumberOfFriends.Value).Select(f => new ExperimentFriendsShown() {
                        CreatedAt = DateTime.Now,
                        ExperimentGroup = experimentGroup,
                        ResponseId = ResponseId.Value,
                        Orderid = ++i,
                        FriendId = f.Id
                     }).ToList(), ResponseId.Value);
                  }
               }
            }

            Model.UpdateServiceInfoByName("LastExperimentGroup", experimentGroup.ToString(CultureInfo.InvariantCulture));

         }

         if (ResponseId != null)
            Model.CreatePageVisitLog("PostFaceBookFetch", ResponseId.Value);
      }

      protected void OnNextClick(object sender, EventArgs e) {
         //please check in db if user has been to the web site if not then promot user
         Response.Redirect(string.Format("SiteRating.aspx?ResponseId={0}", ResponseId));
      }
   }
}