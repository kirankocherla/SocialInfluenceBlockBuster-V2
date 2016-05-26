using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSurveyVer2 {
   public partial class BBLauncher : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (!IsPostBack) {
            if (ResponseId.HasValue)
               Model.CreatePageVisitLog("Launch page for BB universe", ResponseId.Value);
         }
      }


      protected void OnBBClick(object sender, EventArgs e) {
         string url = string.Format("BBHome.aspx?ResponseId={0}", ResponseId);
         Page.ClientScript.RegisterStartupScript(
      this.GetType(), "OpenWindow", "window.open('" + url + "','newwin');", true);

      }


      protected void OnNextClick(object sender, EventArgs e) {

         if (Model.IsPageVisited(ResponseId.Value, "BBHome HomePage BB") < 1) {
            lblError.Visible = true;
            lblError.Text = "Besøg venligst sitet inden du klikker på næste";
         }
         else {
            lblError.Visible = false;
            Response.Redirect(string.Format("WebsiteFeedBack.aspx?Responseid={0}", ResponseId));
         }
      }
   }
}