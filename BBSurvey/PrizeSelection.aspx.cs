using System;

namespace BBSurvey {
   public partial class PrizeSelection : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (!IsPostBack) {
            Model.CreatePageVisitLog("PrizeSelection.aspx", ResponseId.GetValueOrDefault());
         }    
      }

      protected void OnNextClick(object sender, EventArgs e) {
         try {
            Model.UpdateExperimentDataForPrizeAndNoContact(ResponseId.GetValueOrDefault(), rdChooseGift.SelectedValue, checkContactNotAllowed.Checked ? 1 : 0);   
         }
         catch (Exception) {
            Model.CreatePageVisitLog("PrizeSelection.aspx: Error", ResponseId.GetValueOrDefault());
         }
         finally {
            Response.Redirect(string.Format("ThankYou.aspx?ResponseId={0}", ResponseId.GetValueOrDefault()));
         }
      }
   }
}