using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSurveyVer2 {
   public partial class PrizeAndContact : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (!IsPostBack) {
            
            if (!ResponseId.HasValue)
               Response.Redirect("StartPage.aspx");            

            if (ResponseId != null)
               Model.CreatePageVisitLog("PrizePage", ResponseId.Value);
         }

      }      

      protected void OnNextClick(object sender, EventArgs e) {

         if (rdGift.SelectedIndex < 0) {
            lblError.Visible = true;
            lblError.Text = "Besvar venligst alle spørgsmål";
            return;
         }

         if (rdContactPermission.SelectedIndex < 0) {
            lblError.Visible = true;
            lblError.Text = "Besvar venligst alle spørgsmål";
         }

         if (rdContactPermission.SelectedValue == "1" && string.IsNullOrEmpty(txtEmail.Text)) {
            lblError.Visible = true;
            lblError.Text = "Indtadt dit email adresse";
         }

         Model.UpdateExperimentDataForPrizeAndNoContact(ResponseId.Value, rdGift.SelectedValue, rdContactPermission.SelectedValue == "0" ? 1 : 0, txtEmail.Text);


         var expData = Model.GetExperimentDataByResponseId(ResponseId.Value);

         if(expData.GroupType == 1)
            Response.Redirect(string.Format("ThankYou.aspx?Responseid={0}", ResponseId));
         else
            Response.Redirect(string.Format("ImportantInfo.aspx?Responseid={0}", ResponseId));

      }

      protected void OnPreviousClick(object sender, EventArgs e) {
         Response.Redirect("Index.aspx");
      }
   }
}