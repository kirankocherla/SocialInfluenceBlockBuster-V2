using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSurvey {
   public partial class SiteRating : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (!ResponseId.HasValue)
            Response.Redirect("StartSurvey.aspx");

         if (ResponseId != null)
            Model.CreatePageVisitLog("SiteRating", ResponseId.Value);
      }

      protected void OnNextClick(object sender, EventArgs e) {
         //save answers and go next
         if (ResponseId != null)
            Model.UpdateExperimentDataForWebSiteStructure(ResponseId.Value, rdStructure.SelectedValue, rdFilmSelection.SelectedValue, rdInspiring.SelectedValue);
         Response.Redirect(string.Format("OverallEvaluation.aspx?ResponseId={0}", ResponseId));
      }
   }
}