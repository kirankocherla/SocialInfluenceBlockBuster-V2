using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSurveyVer2 {
   public partial class PreviousService : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (!IsPostBack) {
            rdPreviousServices.Items.Clear();
            GetItems();


            if (!ResponseId.HasValue)
               Response.Redirect("StartPage.aspx");
            else {
               //load previous answer
               LoadPreviousAnswer();
            }

            if (ResponseId != null)
               Model.CreatePageVisitLog("PreviousService", ResponseId.Value);
         }

      }

      private void LoadPreviousAnswer() {

         if (ExperimentData != null && !string.IsNullOrEmpty(ExperimentData.PreviousService)) {

            foreach (var s in ExperimentData.PreviousService.Split('#')) {
               foreach (ListItem item in rdPreviousServices.Items) {
                  if (item.Value.ToLower() == s.ToLower()) {
                     item.Selected = true;
                  }
               }
            }
         }


         //if (ExperimentData != null && !string.IsNullOrEmpty(ExperimentData.PreviousService))
         //   rdPreviousServices.SelectedValue = ExperimentData.PreviousService;
      }

      private void GetItems() {
         var rnd = new Random();
         int rndInstance = rnd.Next(1, 3);

         switch (rndInstance) {
            case 1:
               rdPreviousServices.Items.Add(new ListItem("HBO", "HBO"));
               rdPreviousServices.Items.Add(new ListItem("Google Play", "GooglePlay"));
               rdPreviousServices.Items.Add(new ListItem("Viaplay", "Viaplay"));
               rdPreviousServices.Items.Add(new ListItem("Netflix", "Netflix"));
               rdPreviousServices.Items.Add(new ListItem("TDC Play / YouSee Play", "TDCPlay"));
               rdPreviousServices.Items.Add(new ListItem("iTunes", "iTunes"));
               rdPreviousServices.Items.Add(new ListItem("Blockbuster (på digitale platforme såsom PC, smart tv og tablet, dvs. ikke leje af film i fysiske butikker)", "BlockBuster"));
               rdPreviousServices.Items.Add(new ListItem("Anden tjeneste", "AndenTjeneste"));
               rdPreviousServices.Items.Add(new ListItem("Bruger ikke streaming-tjenester, men overvejer at prøve det", "NoneYetButWillTry"));
               rdPreviousServices.Items.Add(new ListItem("Bruger ikke streaming-tjenester og har heller ikke tænkt mig at gøre det", "NoneAndNever"));
               break;
            case 2:
               rdPreviousServices.Items.Add(new ListItem("TDC Play / YouSee Play", "TDCPlay"));
               rdPreviousServices.Items.Add(new ListItem("Netflix", "Netflix"));
               rdPreviousServices.Items.Add(new ListItem("HBO", "HBO"));
               rdPreviousServices.Items.Add(new ListItem("Blockbuster (på digitale platforme såsom PC, smart-tv og tablet, dvs. ikke leje af film i fysiske butikker)", "BlockBuster"));
               rdPreviousServices.Items.Add(new ListItem("Google Play", "GooglePlay"));
               rdPreviousServices.Items.Add(new ListItem("iTunes", "iTunes"));
               rdPreviousServices.Items.Add(new ListItem("Viaplay", "Viaplay"));
               rdPreviousServices.Items.Add(new ListItem("Anden tjeneste", "AndenTjeneste"));
               rdPreviousServices.Items.Add(new ListItem("Bruger ikke streaming-tjenester, men overvejer at prøve det", "NoneYetButWillTry"));
               rdPreviousServices.Items.Add(new ListItem("Bruger ikke streaming-tjenester og har heller ikke tænkt mig at gøre det", "NoneAndNever"));
               break;
            case 3:
               rdPreviousServices.Items.Add(new ListItem("Google Play", "GooglePlay"));
               rdPreviousServices.Items.Add(new ListItem("Viaplay", "Viaplay"));
               rdPreviousServices.Items.Add(new ListItem("TDC Play / YouSee Play", "TDCPlay"));
               rdPreviousServices.Items.Add(new ListItem("iTunes", "iTunes"));
               rdPreviousServices.Items.Add(new ListItem("Netflix", "Netflix"));
               rdPreviousServices.Items.Add(new ListItem("HBO", "HBO"));
               rdPreviousServices.Items.Add(new ListItem("Blockbuster (på digitale platforme såsom PC, smart tv og tablet, dvs. ikke leje af film i fysiske butikker)", "BlockBuster"));
               rdPreviousServices.Items.Add(new ListItem("Anden tjeneste", "AndenTjeneste"));
               rdPreviousServices.Items.Add(new ListItem("Bruger ikke streaming-tjenester, men overvejer at prøve det", "NoneYetButWillTry"));
               rdPreviousServices.Items.Add(new ListItem("Bruger ikke streaming-tjenester og har heller ikke tænkt mig at gøre det", "NoneAndNever"));
               break;
            default:
               rdPreviousServices.Items.Add(new ListItem("Blockbuster (på digitale platforme såsom PC, smart tv og tablet, dvs. ikke leje af film i fysiske butikker)", "BlockBuster"));
               rdPreviousServices.Items.Add(new ListItem("iTunes", "iTunes"));
               rdPreviousServices.Items.Add(new ListItem("HBO", "HBO"));
               rdPreviousServices.Items.Add(new ListItem("Viaplay", "Viaplay"));
               rdPreviousServices.Items.Add(new ListItem("TDC Play / YouSee Play", "TDCPlay"));
               rdPreviousServices.Items.Add(new ListItem("Netflix", "Netflix"));
               rdPreviousServices.Items.Add(new ListItem("Google Play", "Google Play"));
               rdPreviousServices.Items.Add(new ListItem("Anden tjeneste", "AndenTjeneste"));
               rdPreviousServices.Items.Add(new ListItem("Bruger ikke streaming-tjenester, men overvejer at prøve det", "NoneYetButWillTry"));
               rdPreviousServices.Items.Add(new ListItem("Bruger ikke streaming-tjenester og har heller ikke tænkt mig at gøre det", "NoneAndNever"));
               break;
         }
      }


      private bool IsValid() {
         int countNot = 0;
         int countYes = 0;
         foreach (ListItem item in rdPreviousServices.Items) {
            if (item.Selected) {
               if ((item.Value == "NoneAndNever") || (item.Value == "NoneYetButWillTry"))
                  countNot++;
               else {
                  countYes++;
               }
            }
         }

         if ((countNot > 0 && countYes > 0) || countNot > 1)
            return false;

         return true;
      }

      protected void OnNextClick(object sender, EventArgs e) {

         if (!IsValid()) {
            lblError.Visible = true;
            lblError.Text = "Ugyldigt svar";
            return;
         }

         bool isOutOfScope = false;
         int selectedCount = 0;
         string services = string.Empty;

         foreach (ListItem item in rdPreviousServices.Items) {
            if (item.Selected) {
               selectedCount++;
               services += string.Format("{0}#", item.Value);
               if ((item.Value == "NoneAndNever") || (item.Value == "BlockBuster"))
                  isOutOfScope = true;
            }
         }

         if (selectedCount <= 0) {
            lblError.Visible = true;
            lblError.Text = "Besvar venligst spørgsmålet";
            return;
         }

         if (isOutOfScope) {
            Model.UpdateExperimentDataItemWithPreviousService(ResponseId.Value, rdPreviousServices.SelectedValue);
            divQuestion.Visible = false;
            divResult.Visible = true;
            cmdNext.Visible = false;
            return;
         }

         Model.UpdateExperimentDataItemWithPreviousService(ResponseId.Value, services);

         Response.Redirect(string.Format("BasicData.aspx?Responseid={0}", ResponseId));

      }

      protected void OnPreviousClick(object sender, EventArgs e) {
         Response.Redirect("Index.aspx");
      }

      protected void NotTargetGroup(object sender, EventArgs e) {
         if (!string.IsNullOrEmpty(txtEmail.Text)) {
            Model.UpdateExperimentDataForEmail(ResponseId.Value, txtEmail.Text);
            txtEmail.Text = "Din e-mail adresse blev gemt";
         }
      }
   }
}