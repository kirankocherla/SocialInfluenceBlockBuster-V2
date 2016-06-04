using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSurveyVer2 {
   public partial class RememberFriendsNames : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (!IsPostBack) {

            if (!ResponseId.HasValue)
               Response.Redirect("StartPage.aspx");

            if (ResponseId != null)
               Model.CreatePageVisitLog("RememberFriendsNames", ResponseId.Value);
         }
      }

      private bool IsItValid() {
         if (rdRemeberFriendNames.SelectedIndex < 0) {
            return false;
         }

         if (rdRemeberFriendNames.SelectedValue == "1" && string.IsNullOrWhiteSpace(txtFriendNames.Text))
            return false;

         return true;
      }

      protected void OnPreviousClick(object sender, EventArgs e) {
         Response.Redirect(string.Format("RememberFriends.aspx?Responseid={0}", ResponseId));
      }

      protected void OnNextClick(object sender, EventArgs e) {
         if (IsItValid()) {
            Model.UpdateRememberFriendsNames(ResponseId.Value, rdRemeberFriendNames.SelectedValue, txtFriendNames.Text);

            Response.Redirect(string.Format("PrizeAndContact.aspx?Responseid={0}", ResponseId));
         }
         else {
            lblError.Visible = true;
            lblError.Text = "Besvar venligst spørgsmål";            
         }
      }
   }
}