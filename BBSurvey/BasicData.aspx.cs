using System;

namespace BBSurvey {
   public partial class BasicData : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (!IsPostBack) {
            Model.CreatePageVisitLog("BasicData.aspx", ResponseId.GetValueOrDefault());   
         }
      }

      protected void OnNextClick(object sender, EventArgs e) {
         try {
            Model.UpdateExperimentDataForBasicService(ResponseId.GetValueOrDefault(), rdGender.SelectedValue, int.Parse(rdChildrenCount.SelectedValue), rdChildAge1.SelectedValue, rdChildAge2.SelectedValue, rdChildAge3.SelectedValue, rdMarries.SelectedValue, txtEmail.Text);
         }
         catch (Exception) {
            Model.CreatePageVisitLog("BasicData.aspx: Error", ResponseId.GetValueOrDefault());
         }
         finally {
            Response.Redirect(string.Format("PrizeSelection.aspx?ResponseId={0}", ResponseId.GetValueOrDefault()));
         }
      }
   }
}