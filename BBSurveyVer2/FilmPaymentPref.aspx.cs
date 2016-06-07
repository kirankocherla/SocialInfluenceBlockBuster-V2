using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSurveyVer2 {
   public partial class FilmPaymentPref : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (!IsPostBack) {
            rdPaymentType.Items.Clear();
            radioFilmSerie.Items.Clear();

            GetItems();

            if (!ResponseId.HasValue)
               Response.Redirect("StartPage.aspx");
            else {
               //load previous answer
               LoadPreviousAnswer();               
            }

            if (ResponseId != null)
               Model.CreatePageVisitLog("FilmPayment", ResponseId.Value);
         }

      }

      private void LoadPreviousAnswer() {
         if (ExperimentData != null && !string.IsNullOrEmpty(ExperimentData.PreviousService)) {
            rdPaymentType.SelectedValue = ExperimentData.PaymentType;
         }
      }

      private void GetItems() {
         var rnd = new Random();
         int rndInstance = rnd.Next(1, 3);

         switch (rndInstance) {
            case 1:
               rdPaymentType.Items.Add(new ListItem("Abonnement (se så meget du vil for et fast, månedligt beløb)", "Subscription"));
               rdPaymentType.Items.Add(new ListItem("Pay per view (du betaler kun for de film, du ser)", "PayPerView"));
               rdPaymentType.Items.Add(new ListItem("Ved ikke", "Do not know"));
               
               break;
            case 2:               
               rdPaymentType.Items.Add(new ListItem("Pay per view (du betaler kun for de film, du ser)", "PayPerView"));
               rdPaymentType.Items.Add(new ListItem("Abonnement (se så meget du vil for et fast, månedligt beløb)", "Subscription"));
               rdPaymentType.Items.Add(new ListItem("Ved ikke", "Do not know"));

               break;
            case 3:
               rdPaymentType.Items.Add(new ListItem("Pay per view (du betaler kun for de film, du ser)", "PayPerView"));
               rdPaymentType.Items.Add(new ListItem("Abonnement (se så meget du vil for et fast, månedligt beløb)", "Subscription"));
               rdPaymentType.Items.Add(new ListItem("Ved ikke", "Do not know"));

               break;
            default:
               rdPaymentType.Items.Add(new ListItem("Abonnement (se så meget du vil for et fast, månedligt beløb)", "Subscription"));
               rdPaymentType.Items.Add(new ListItem("Pay per view (du betaler kun for de film, du ser)", "PayPerView"));               
               rdPaymentType.Items.Add(new ListItem("Ved ikke", "Do not know"));

               break;
         }

         radioFilmSerie.Items.Add(new ListItem("Film", "Film"));
         radioFilmSerie.Items.Add(new ListItem("Tv-serier", "TVSerier"));
         radioFilmSerie.Items.Add(new ListItem("Lige meget film og tv-serier", "LigeMeget"));
         radioFilmSerie.Items.Add(new ListItem("Ved ikke", "vedIkke"));

      }

      protected void OnNextClick(object sender, EventArgs e) {

         if (rdPaymentType.SelectedIndex < 0) {
            lblError.Visible = true;
            lblError.Text = "Besvar venligst spørgsmålet";
            return;
         }

         if (radioFilmSerie.SelectedIndex < 0) {
            lblError2.Visible = true;
            lblError2.Text = "Besvar venligst spørgsmålet";
            return;
         }


         Model.UpdateFilmPaymentType(ResponseId.Value, rdPaymentType.SelectedValue, txtOther.Text);

         Model.UpdateFilmTvSerier(ResponseId.Value, radioFilmSerie.SelectedValue);


         if(ExperimentGroup != 1)
            Response.Redirect(string.Format("FacebookLogin.aspx?Responseid={0}", ResponseId));
         else {
            Response.Redirect(string.Format("BBLauncher.aspx?Responseid={0}", ResponseId));
         }

      }

      protected void OnPreviousClick(object sender, EventArgs e) {
         Response.Redirect(string.Format("FilmTypePref.aspx?Responseid={0}", ResponseId));
      }
   }
}