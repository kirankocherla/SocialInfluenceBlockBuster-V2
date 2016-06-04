using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSurveyVer2 {
   public partial class RememberFriends : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (!IsPostBack) {

            if (!ResponseId.HasValue)
               Response.Redirect("StartPage.aspx");

            if (ResponseId != null)
               Model.CreatePageVisitLog("RememberFriends", ResponseId.Value);
         }
      }  

      protected void OnPreviousClick(object sender, EventArgs e) {
         Response.Redirect(string.Format("UsageChances.aspx.aspx?Responseid={0}", ResponseId));
      }

      private bool IsItValid() {
         if (rdRememberFriends.SelectedIndex < 0) {            
            return false;
         }

         return true;
      }

      protected void OnNextClick(object sender, EventArgs e) {
         if (IsItValid()) {            
            Model.UpdateRememberFriends(ResponseId.Value, rdRememberFriends.SelectedValue);

            if(rdRememberFriends.SelectedValue == "1")
               Response.Redirect(string.Format("RememberFriendsNames.aspx?Responseid={0}", ResponseId));
            else {
               Response.Redirect(string.Format("PrizeAndContact.aspx?Responseid={0}", ResponseId));         
            }

         }
         else {
            lblError.Visible = true;
            lblError.Text = "Besvar venligst spørgsmål";
            return;
         }
         
         

          
      }
   }
}