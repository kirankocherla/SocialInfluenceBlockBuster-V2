using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSurveyVer2 {
   public partial class BasicData : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (!IsPostBack) {

            if (!ResponseId.HasValue) {
               Response.Redirect("StartPage.aspx");
            }

            else {
               Model.CreatePageVisitLog("BasecData AgeChildrenGenderMarried", ResponseId.Value);
               LoadPreviousAnswer();
            }                                                     
         }

      }

      private void LoadPreviousAnswer() {
         if (ExperimentData != null) {
            rdAge.SelectedValue = ExperimentData.Age;
            rdMarries.SelectedValue = ExperimentData.MaritalStatus;
            rdGender.SelectedValue = ExperimentData.Gender;
            rdChildrenCount.SelectedValue = ExperimentData.ChildrenCount != null ? ExperimentData.ChildrenCount.ToString() : string.Empty;
         }
            
      }
      

      protected void OnNextClick(object sender, EventArgs e) {

         if (rdAge.SelectedIndex < 1 || rdChildrenCount.SelectedIndex < 1 || rdGender.SelectedIndex < 1
             || rdMarries.SelectedIndex < 1) {
            lblError.Visible = true;
            lblError.Text = "Besvar venligst spørgsmålet";
            return;
         }


         //if ((rdAge.SelectedValue == "Under25") || (rdAge.SelectedValue == "50+")) {
         //   Model.UpdateExperimentDataForBasicService(ResponseId.GetValueOrDefault(), rdAge.SelectedValue, rdGender.SelectedValue, int.Parse(rdChildrenCount.SelectedValue), "0", "0", "0", rdMarries.SelectedValue, string.Empty);
         //   divQuestion.Visible = false;
         //   divResult.Visible = true;
         //   cmdNext.Visible = false;
         //   return;
         //}
         try {
            Model.UpdateExperimentDataForBasicService(ResponseId.GetValueOrDefault(), rdAge.SelectedValue, rdGender.SelectedValue,
                                                      int.Parse(rdChildrenCount.SelectedValue), "0", "0", "0",
                                                      rdMarries.SelectedValue, string.Empty);
         }
         catch (Exception) {
            Model.CreatePageVisitLog("BasicData.aspx: Error", ResponseId.GetValueOrDefault());
         }


         Response.Redirect(string.Format("FilmWatchPref.aspx?Responseid={0}", ResponseId));

      }

      protected void OnPreviousClick(object sender, EventArgs e) {
         Response.Redirect(string.Format("PreviousService.aspx?Responseid={0}", ResponseId));
      }

      protected void NotTargetGroup(object sender, EventArgs e) {
         if (!string.IsNullOrEmpty(txtEmail.Text)) {
            Model.UpdateExperimentDataForEmail(ResponseId.Value, txtEmail.Text);
            txtEmail.Text = "E-mail er gemt";
         }
      }
   }
}