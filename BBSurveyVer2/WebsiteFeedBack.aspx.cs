using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSurveyVer2 {
   public partial class WebsiteFeedBack : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (!IsPostBack) {
            if (ResponseId.HasValue)
               Model.CreatePageVisitLog("WebSiteFeedBack", ResponseId.Value);
         }

         if (!IsPostBack)
            LoadPrevious();
      }

      private void LoadPrevious() {
         switch (ExperimentData.HowIsWebsite) {
            case "1":
               radioWebsite1.Checked = true;
               break;
            case "2":
               radioWebsite2.Checked = true;
               break;
            case "3":
               radioWebsite3.Checked = true;
               break;
            case "4":
               radioWebsite4.Checked = true;
               break;
            case "5":
               radioWebsite5.Checked = true;
               break;
            case "6":
               radioWebsite6.Checked = true;
               break;
            case "7":
               radioWebsite7.Checked = true;
               break;
            case "99":
               radioWebsite99.Checked = true;
               break;
         }

         switch (ExperimentData.FilmFinding) {
            case "1":
               radiowebsiteEasyFindFilm1.Checked = true;
               break;
            case "2":
               radiowebsiteEasyFindFilm2.Checked = true;
               break;
            case "3":
               radiowebsiteEasyFindFilm3.Checked = true;
               break;
            case "4":
               radiowebsiteEasyFindFilm4.Checked = true;
               break;
            case "5":
               radiowebsiteEasyFindFilm5.Checked = true;
               break;
            case "6":
               radiowebsiteEasyFindFilm6.Checked = true;
               break;
            case "7":
               radiowebsiteEasyFindFilm7.Checked = true;
               break;
            case "99":
               radiowebsiteEasyFindFilm99.Checked = true;
               break;
         }

         switch (ExperimentData.IsGoodService) {
            case "1":
               radiofilmService1.Checked = true;
               break;
            case "2":
               radiofilmService2.Checked = true;
               break;
            case "3":
               radiofilmService3.Checked = true;
               break;
            case "4":
               radiofilmService4.Checked = true;
               break;
            case "5":
               radiofilmService5.Checked = true;
               break;
            case "6":
               radiofilmService6.Checked = true;
               break;
            case "7":
               radiofilmService7.Checked = true;
               break;
            case "99":
               radiofilmService99.Checked = true;
               break;
         }

         txtYourFeedBack.Text = ExperimentData.WebsiteExperienceText;
      }

      private bool IsItValid() {
         if (!radioWebsite1.Checked && !radioWebsite2.Checked && !radioWebsite3.Checked && !radioWebsite4.Checked
             && !radioWebsite5.Checked && !radioWebsite6.Checked && !radioWebsite7.Checked && !radioWebsite99.Checked)
            return false;

         if (!radiofilmService1.Checked && !radiofilmService2.Checked && !radiofilmService3.Checked
             && !radiofilmService4.Checked && !radiofilmService5.Checked && !radiofilmService6.Checked
             && !radiofilmService7.Checked && !radiofilmService99.Checked)
            return false;

         if (!radiowebsiteEasyFindFilm1.Checked && !radiowebsiteEasyFindFilm2.Checked
             && !radiowebsiteEasyFindFilm3.Checked && !radiowebsiteEasyFindFilm4.Checked
             && !radiowebsiteEasyFindFilm5.Checked && !radiowebsiteEasyFindFilm6.Checked
             && !radiowebsiteEasyFindFilm7.Checked && !radiowebsiteEasyFindFilm99.Checked)
            return false;

         return true;
      }


      private string WebsiteOverAll() {
         if (radioWebsite1.Checked)
            return "1";
         if (radioWebsite2.Checked)
            return "2";
         if (radioWebsite3.Checked)
            return "3";
         if (radioWebsite4.Checked)
            return "4";
         if (radioWebsite5.Checked)
            return "5";
         if (radioWebsite6.Checked)
            return "6";
         if (radioWebsite7.Checked)
            return "7";
         if (radioWebsite99.Checked)
            return "99";
         return string.Empty;
      }

      private string FilmFinding() {
         if (radiowebsiteEasyFindFilm1.Checked)
            return "1";
         if (radiowebsiteEasyFindFilm2.Checked)
            return "2";
         if (radiowebsiteEasyFindFilm3.Checked)
            return "3";
         if (radiowebsiteEasyFindFilm4.Checked)
            return "4";
         if (radiowebsiteEasyFindFilm5.Checked)
            return "5";
         if (radiowebsiteEasyFindFilm6.Checked)
            return "6";
         if (radiowebsiteEasyFindFilm7.Checked)
            return "7";
         if (radiowebsiteEasyFindFilm99.Checked)
            return "99";
         return string.Empty;
      }

      private string FilmService() {
         if (radiofilmService1.Checked)
            return "1";
         if (radiofilmService2.Checked)
            return "2";
         if (radiofilmService3.Checked)
            return "3";
         if (radiofilmService4.Checked)
            return "4";
         if (radiofilmService5.Checked)
            return "5";
         if (radiofilmService6.Checked)
            return "6";
         if (radiofilmService7.Checked)
            return "7";
         if (radiofilmService99.Checked)
            return "99";
         return string.Empty;
      }

      protected void OnNextClick(object sender, EventArgs e) {
         if (IsItValid()) {
            Model.UpdateWebsiteFeedBack(ResponseId.Value, WebsiteOverAll(), FilmFinding(), FilmService(), txtYourFeedBack.Text);            
         }
         else {
            lblError.Visible = true;
            lblError.Text = "Besvar venligst alle spørgsmål";
            return;
         }

         Response.Redirect(string.Format("BBConsider.aspx?Responseid={0}", ResponseId));

      }
   }
}