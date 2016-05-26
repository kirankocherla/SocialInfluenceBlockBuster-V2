using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

namespace BBSurvey {
   public partial class FriendSelfReport : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (!IsPostBack) {
            BindFriends();
         }
      }

      private void BindFriends() {
         if (ResponseId.HasValue) {
            var friendToShow = Model.GetExperimentShownByResponseid(ResponseId.Value).ToArray();
            rptCloseness.DataSource = friendToShow;
            rptCloseness.DataBind();

            rptLocation.DataSource = friendToShow;
            rptLocation.DataBind();
         }   
      }

      protected void OnNextClick(object sender, EventArgs e) {
         // Save user response
         try {
            var dictCloseness = new Dictionary<int, int>();
            var dictLocation = new Dictionary<int, string>();
            foreach (
               var repeaterItem in
                  rptCloseness.Items.Cast<RepeaterItem>()
                              .Where(r => r.ItemType == ListItemType.Item || r.ItemType == ListItemType.AlternatingItem)
               ) {
               var literalControl = (Literal) repeaterItem.FindControl("ltrFriendId");
               int id = int.Parse(literalControl.Text);

               var dropDownList = (DropDownList) repeaterItem.FindControl("ddlFriendClose");
               int closeness = int.Parse(dropDownList.SelectedValue);

               dictCloseness.Add(id, closeness);
            }

            foreach (
               var repeaterItem in
                  rptLocation.Items.Cast<RepeaterItem>()
                             .Where(r => r.ItemType == ListItemType.Item || r.ItemType == ListItemType.AlternatingItem)) {
               var literalControl = (Literal) repeaterItem.FindControl("ltrFriendId");
               int id = int.Parse(literalControl.Text);

               var dropDownList = (DropDownList) repeaterItem.FindControl("ddlFriendLocation");
               string location = dropDownList.SelectedValue;

               dictLocation.Add(id, location);
            }

            dictCloseness.ToList()
                         .ForEach(
                            kv =>
                            Model.UpdateExperimentFriendShown(kv.Key, kv.Value.ToString(), dictLocation[kv.Key], null));

         }
         catch (Exception ex) {
            Model.CreatePageVisitLog("FriendSelfReport.aspx: Error", ResponseId.GetValueOrDefault());
         }
         finally {
            Response.Redirect(string.Format("BasicData.aspx?ResponseId={0}", ResponseId.GetValueOrDefault()));
         }
      }

      protected void rptCloseness_OnItemDataBound(object sender, RepeaterItemEventArgs e) {
         if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem) {
            var friend = (ExperimentFriendsShown) e.Item.DataItem;
            if (friend != null) {
               var literalControl = (Literal) e.Item.FindControl("ltrFriendId");
               literalControl.Text = friend.Id.ToString();

               var imageControl = (Image) e.Item.FindControl("img");
               imageControl.ImageUrl = Model.GetFacebookFriendById(friend.FriendId.GetValueOrDefault()).ImageUrl;
            }
         }
      }

      protected void rptLocation_OnItemDataBound(object sender, RepeaterItemEventArgs e) {
         if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem) {
            var friend = (ExperimentFriendsShown) e.Item.DataItem;
            if (friend != null) {
               var literalControl = (Literal) e.Item.FindControl("ltrFriendId");
               literalControl.Text = friend.Id.ToString();

               var imageControl = (Image) e.Item.FindControl("img");
               imageControl.ImageUrl = Model.GetFacebookFriendById(friend.FriendId.GetValueOrDefault()).ImageUrl;
            }
         }
      }
   }
}