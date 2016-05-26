using System;

namespace BBSurveyVer2 {
   public partial class ImportantInfo : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (!IsPostBack) {
            if (ResponseId.HasValue)
               Model.CreatePageVisitLog("ImportantInfo", ResponseId.Value);
         }
      }

      protected void OnNextClick(object sender, EventArgs e) {
         Model.MarkExperimentFinished(ResponseId.Value);
         Model.ExperimentCompleted(ResponseId.Value);
        ClearSession();

         Response.Redirect("ThankYou.aspx");

      }
   }
}