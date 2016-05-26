using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSurvey {
   public partial class OverallEvaluation : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (!ResponseId.HasValue)
            Response.Redirect("StartPage.aspx");

         if (ResponseId != null)
            Model.CreatePageVisitLog("OverallEvaluation", ResponseId.Value);
      }

      protected void OnNextClick(object sender, EventArgs e) {
         //save answers
         if (ResponseId != null)
            Model.UpdateExperimentDataForOverall(ResponseId.Value, rdOverallEvaluation.SelectedValue, txtOpenAnswer.Text, rdAdopt.SelectedValue);

         Response.Redirect("FriendSelfReport.aspx");
      }
   }
}