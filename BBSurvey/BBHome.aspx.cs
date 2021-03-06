﻿using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace BBSurvey {
   public partial class BBHome : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (!IsPostBack) {
            BindFriends();
         }
      }

      private void BindFriends() {
         if (ResponseId.HasValue) {
            var friendToShow = Model.GetExperimentShownByResponseid(ResponseId.Value).ToArray();
            if (!friendToShow.Any()) {
               divTableWrapper.Visible = false;
            }
            else {               
               
               rptFriends.DataSource = friendToShow;
               rptFriends.DataBind();
            }
         }
      }

      protected void rptFriends_OnItemDataBound(object sender, RepeaterItemEventArgs e) {
         if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem) {
            var friend = (ExperimentFriendsShown) e.Item.DataItem;
            if (friend != null) {
               var imgControl = (Image) e.Item.FindControl("img");
               imgControl.ImageUrl = Model.GetFacebookFriendById(friend.FriendId.GetValueOrDefault()).ImageUrl;
            }
         }
         else if (e.Item.ItemType == ListItemType.Header) {
            if (ResponseId != null) {
               var friendToShow = Model.GetExperimentShownByResponseid(ResponseId.Value).ToArray();
               var literalControl = (Literal) e.Item.FindControl("textForFriend");
               literalControl.Text = Model.GetExperimentDataDefinition().First(d => d.PageName.Equals("Home", StringComparison.InvariantCultureIgnoreCase) && d.GroupId == friendToShow.First().ExperimentGroup).LabelForFriends;
            }
         }
      }
   }
}