using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSurveyVer2 {
   public partial class FriendsInspireRate : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (!IsPostBack) {
            if (ResponseId.HasValue)
               Model.CreatePageVisitLog("FriendsPreInfo", ResponseId.Value);
         }

         if (!IsPostBack) {
            BindFriends();
         }
      }

      private void BindFriends() {
         if (ResponseId.HasValue) {
            var userId = Model.GerUserIdByResponseId(ResponseId.Value);

            List<FacebookFriend> friendToShow = Model.GetFacebookFriendByUserId(userId).ToList();
            friendToShow.Shuffle();
            rptCloseness.DataSource = friendToShow;
            rptCloseness.DataBind();
         }
      }

      protected void rptCloseness_OnItemDataBound(object sender, RepeaterItemEventArgs e) {
         if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem) {
            var friend = (FacebookFriend) e.Item.DataItem;
            if (friend != null) {
               var literalControl = (Literal) e.Item.FindControl("ltrFriendId");
               var literalControlName = (Literal) e.Item.FindControl("ltrFriendName");
               literalControl.Text = friend.Id.ToString(CultureInfo.InvariantCulture);
               literalControlName.Text = friend.Name;

               var imageControl = (Image) e.Item.FindControl("img");
               imageControl.ImageUrl = friend.ImageUrl;
            }
         }
      }

      private int GetRandomExcluding(int min, int max, int[] excludeList) {
         var rnd = new Random();
         int randomVal;
         do {
            randomVal = rnd.Next(min, max);
         } while (excludeList.Contains(randomVal));

         return randomVal;
      }

     

      protected void OnNextClick(object sender, EventArgs e) {

         var friendsDic = new Dictionary<int,int>();
         var friends = new List<int>();
         int indx = 0;

         foreach (
            var repeaterItem in
               rptCloseness.Items.Cast<RepeaterItem>()
                           .Where(r => r.ItemType == ListItemType.Item || r.ItemType == ListItemType.AlternatingItem)
            ) {
            var literalControl = (Literal) repeaterItem.FindControl("ltrFriendId");

            int id = int.Parse(literalControl.Text);

            var friendChosen = (CheckBox) repeaterItem.FindControl("checkChooseFriend");

            if (friendChosen.Checked)
               friendsDic.Add(id, indx);
            
            indx++;
         }

         if (friendsDic.Count() >= 10) {
            foreach (var friend in friendsDic) {
               Model.SaveFriendPreChosen(ResponseId.Value, friend.Key, friend.Value);
               friends.Add(friend.Key);
            }

            //Choose category etc and go next
            int experimentGroup = Model.GetExperimentDataByResponseId(ResponseId.Value).GroupType.Value;
            //experimentGroup = Convert.ToInt32(Model.GetServiceInfoByName("LastExperimentGroup"));
            //if (experimentGroup < 9) {
            //   experimentGroup++;
            //}
            //else {
            //   experimentGroup = 1;
            //}


            //Model.UpdateServiceInfoByName("LastExperimentGroup", experimentGroup.ToString());

            //Model.UpdateExperimentTypeAndGroup(ResponseId.Value, "pre", experimentGroup);


            var experimentDataDefinition = Model.GetExperimentDataDefinition();
            var experimentDataDefForType = experimentDataDefinition.First(d => d.GroupId == experimentGroup && d.ExperimentType == "pre");

            var rnd = new Random();

            var includeList = new List<int>();
            var includeFriendList = new List<int>();

            var userId = Model.GerUserIdByResponseId(ResponseId.Value);

            //for these types it should be random friends instead of influential ones
            if (experimentGroup == 2 || experimentGroup == 4 || experimentGroup == 6 || experimentGroup == 8)
               friends = Model.GetFriendIdsByUserId(userId).ToList();


            if (experimentDataDefForType.NumberOfFriends == 2) {
               includeList.Add(rnd.Next(0, friends.Count - 1));

               includeList.Add(GetRandomExcluding(0, friends.Count - 1, includeList.ToArray()));

               foreach (var i1 in includeList) {
                  includeFriendList.Add(friends[i1]);
               }
            }

            if (experimentDataDefForType.NumberOfFriends == 8) {

               includeList.Add(rnd.Next(0, friends.Count - 1));

               includeList.Add(GetRandomExcluding(0, friends.Count - 1, includeList.ToArray()));

               includeList.Add(GetRandomExcluding(0, friends.Count - 1, includeList.ToArray()));

               includeList.Add(GetRandomExcluding(0, friends.Count - 1, includeList.ToArray()));

               includeList.Add(GetRandomExcluding(0, friends.Count - 1, includeList.ToArray()));

               includeList.Add(GetRandomExcluding(0, friends.Count - 1, includeList.ToArray()));

               includeList.Add(GetRandomExcluding(0, friends.Count - 1, includeList.ToArray()));

               includeList.Add(GetRandomExcluding(0, friends.Count - 1, includeList.ToArray()));



               foreach (var i1 in includeList) {
                  includeFriendList.Add(friends[i1]);
               }
            }


            var friendsShown = new List<ExperimentFriendsShown>();
            int i = 0;
            for (int j = 0; j < experimentDataDefForType.NumberOfFriends; j++) {
               friendsShown.Add(new ExperimentFriendsShown() {
                  CreatedAt = DateTime.Now,
                  ExperimentGroup = experimentGroup,
                  ResponseId = ResponseId.Value,
                  FriendId = includeFriendList[i],
                  Orderid = i++,

               });
            }

            Model.SaveFriendsShown(friendsShown, ResponseId.Value);

            Response.Redirect(string.Format("BBLauncher.aspx?Responseid={0}", ResponseId));

         }
         else {
            lblError.Visible = true;
            lblError.Text = "Du skal minimum vælge 10 venner";
         }
      }
   }
}