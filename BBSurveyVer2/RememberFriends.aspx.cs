using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSurveyVer2 {
   public partial class RememberFriends : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (!IsPostBack) {

            if (!ResponseId.HasValue)
               Response.Redirect("StartPage.aspx");

            if (ResponseId != null)
               Model.CreatePageVisitLog("RememberFriends", ResponseId.Value);
         }

         if (!IsPostBack)
            LoadPrevious();

      }

      private void LoadPrevious() {
         switch (ExperimentData.RememberFriendPics) {
            case "Ja":
               radioFriendPics1.Checked = true;
               break;
            case "Nej":
               radioFriendPics1.Checked = true;
               break;
            case "Kan ikke hudke":
               radioFriendPics1.Checked = true;
               break;            
         }

         switch (ExperimentData.RememberChildFilm) {
            case "Ja":
               radioChildFilm1.Checked = true;
               break;
            case "Nej":
               radioChildFilm0.Checked = true;
               break;
            case "Kan ikke hudke":
               radioChildFilmX.Checked = true;
               break;
         }

         switch (ExperimentData.RememberJuleFilm) {
            case "Ja":
               radioJuleFilm1.Checked = true;
               break;
            case "Nej":
               radioJuleFilm0.Checked = true;
               break;
            case "Kan ikke hudke":
               radioJuleFilmX.Checked = true;
               break;
         }

         switch (ExperimentData.RememberJuliaRobert) {
            case "Ja":
               radioJuliaRobert1.Checked = true;
               break;
            case "Nej":
               radioJuliaRobert0.Checked = true;
               break;
            case "Kan ikke hudke":
               radioJuliaRobertX.Checked = true;
               break;
         }

         switch (ExperimentData.RememberKlippekort) {
            case "Ja":
               radioKlipKort1.Checked = true;
               break;
            case "Nej":
               radioKlipKort0.Checked = true;
               break;
            case "Kan ikke hudke":
               radioKlipKortX.Checked = true;
               break;
         }

         switch (ExperimentData.RememberMusicalTheme) {
            case "Ja":
               radioMusicTheme1.Checked = true;
               break;
            case "Nej":
               radioMusicTheme0.Checked = true;
               break;
            case "Kan ikke hudke":
               radioMusicThemeX.Checked = true;
               break;
         }
      }




      protected void OnPreviousClick(object sender, EventArgs e) {
         Response.Redirect(string.Format("UsageChances.aspx.aspx?Responseid={0}", ResponseId));
      }

      private bool IsItValid() {
         if (!radioFriendPics0.Checked && !radioFriendPics1.Checked && !radioFriendPicsX.Checked)
            return false;

         if (!radioChildFilm0.Checked && !radioChildFilm1.Checked && !radioChildFilmX.Checked)
            return false;

         if (!radioJuleFilm0.Checked && !radioJuleFilm1.Checked && !radioJuleFilmX.Checked)
            return false;

         if (!radioKlipKort0.Checked && !radioKlipKort1.Checked && !radioKlipKortX.Checked)
            return false;

         if (!radioMusicTheme0.Checked && !radioMusicTheme1.Checked && !radioMusicThemeX.Checked)
            return false;

         if (!radioJuleFilm0.Checked && !radioJuleFilm1.Checked && !radioJuleFilmX.Checked)
            return false;

         return true;         
      }

      private string RememberFriend() {
         if (radioFriendPics0.Checked)
            return "Nej";
         if (radioFriendPics1.Checked)
            return "Ja";
         if (radioFriendPicsX.Checked)
            return "Kan ikke huske";

         return string.Empty;
      }

      private string RememberChildFilm() {
         if (radioChildFilm0.Checked)
            return "Nej";
         if (radioChildFilm1.Checked)
            return "Ja";
         if (radioChildFilmX.Checked)
            return "Kan ikke huske";

         return string.Empty;
      }


      private string RememberJule() {
         if (radioJuleFilm0.Checked)
            return "Nej";
         if (radioJuleFilm1.Checked)
            return "Ja";
         if (radioJuleFilmX.Checked)
            return "Kan ikke huske";

         return string.Empty;
      }

      private string RememberKlippeKort() {
         if (radioKlipKort0.Checked)
            return "Nej";
         if (radioKlipKort1.Checked)
            return "Ja";
         if (radioKlipKortX.Checked)
            return "Kan ikke huske";

         return string.Empty;
      }


      private string RememberJuliaRobert() {
         if (radioJuliaRobert0.Checked)
            return "Nej";
         if (radioJuliaRobert1.Checked)
            return "Ja";
         if (radioJuliaRobertX.Checked)
            return "Kan ikke huske";

         return string.Empty;
      }

      private string RememberMusic() {
         if (radioMusicTheme0.Checked)
            return "Nej";
         if (radioMusicTheme1.Checked)
            return "Ja";
         if (radioMusicThemeX.Checked)
            return "Kan ikke huske";

         return string.Empty;
      }

      protected void OnNextClick(object sender, EventArgs e) {
         if (IsItValid()) {
            Model.UpdateRememberAll(ResponseId.Value, RememberFriend(), RememberChildFilm(), RememberJule(),
               RememberJuliaRobert(), RememberKlippeKort(), RememberMusic());

            Response.Redirect(string.Format("PrizeAndContact.aspx?Responseid={0}", ResponseId));


            //if(rdRememberFriends.SelectedValue == "1")
            //   Response.Redirect(string.Format("RememberFriendsNames.aspx?Responseid={0}", ResponseId));
            //else {
            //   Response.Redirect(string.Format("PrizeAndContact.aspx?Responseid={0}", ResponseId));         
            //}

         }
         else {
            lblError.Visible = true;
            lblError.Text = "Besvar venligst spørgsmålet";
         }
      }
   }
}