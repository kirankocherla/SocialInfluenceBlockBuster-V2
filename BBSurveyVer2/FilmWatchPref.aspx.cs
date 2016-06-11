using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSurveyVer2 {
   public partial class FilmWatchPref : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (!IsPostBack) {
            rdFilmMedium.Items.Clear();
            //rdFilmPerMonth.Items.Clear();
            GetItems();


            if (!ResponseId.HasValue)
               Response.Redirect("StartPage.aspx");
            else {
               //load previous answer
               LoadPreviousAnswer();
            }

            if (ResponseId != null)
               Model.CreatePageVisitLog("FilmWatchPref", ResponseId.Value);
         }

      }

      private void LoadPreviousAnswer() {
         if (ExperimentData != null && !string.IsNullOrEmpty(ExperimentData.PreviousService)) {
            rdFilmMedium.SelectedValue = ExperimentData.HowSeeFilm;
            rdFilmPerMonth.SelectedValue = ExperimentData.FilmCountPerMonth;
         }
      }

      private void GetItems() {
         var rnd = new Random();
         int rndInstance = rnd.Next(1, 3);

         switch (rndInstance) {
            case 1:
               rdFilmMedium.Items.Add(new ListItem("Smart-tv (via en on-demand service som f.eks. Netflix, Viaplay el. lign.)", "SmartTv")); 
               rdFilmMedium.Items.Add(new ListItem("På tv (live tv eller optaget fra tv)", "OnLiveTVOrRecorded"));                
               rdFilmMedium.Items.Add(new ListItem("Tablet (f.eks. iPad)", "Tablet")); 
               rdFilmMedium.Items.Add(new ListItem("Mobil", "Mobil"));                
               rdFilmMedium.Items.Add(new ListItem("Spillekonsol, fx Xbox eller Playstation (via en on-demand service som f.eks. Netflix, Viaplay el. lign.)", "GameConsole")); 
               rdFilmMedium.Items.Add(new ListItem("I biografen", "Cinema")); 
               rdFilmMedium.Items.Add(new ListItem("På DVD", "DVD"));
               rdFilmMedium.Items.Add(new ListItem("Computer", "Computer")); 
               rdFilmMedium.Items.Add(new ListItem("Andet", "Others")); 
               rdFilmMedium.Items.Add(new ListItem("Ved ikke", "Do not know")); 
               break;
            case 2:
               rdFilmMedium.Items.Add(new ListItem("På tv (live tv eller optaget fra tv)", "OnLiveTVOrRecorded"));                
               rdFilmMedium.Items.Add(new ListItem("Tablet (f.eks. iPad)", "Tablet"));
               rdFilmMedium.Items.Add(new ListItem("I biografen", "Cinema")); 
               rdFilmMedium.Items.Add(new ListItem("Mobil", "Mobil")); 
               rdFilmMedium.Items.Add(new ListItem("Computer", "Computer")); 
               rdFilmMedium.Items.Add(new ListItem("Spillekonsol, fx Xbox eller Playstation (via en on-demand service som f.eks. Netflix, Viaplay el. lign.)", "GameConsole"));                
               rdFilmMedium.Items.Add(new ListItem("På DVD", "DVD"));
               rdFilmMedium.Items.Add(new ListItem("Smart-tv (via en on-demand service som f.eks. Netflix, Viaplay el. lign.)", "SmartTv")); 
               rdFilmMedium.Items.Add(new ListItem("Andet", "Others")); 
               rdFilmMedium.Items.Add(new ListItem("Ved ikke", "Do not know")); 
               break;
            case 3:
               rdFilmMedium.Items.Add(new ListItem("På DVD", "DVD"));
               rdFilmMedium.Items.Add(new ListItem("Computer", "Computer")); 
               rdFilmMedium.Items.Add(new ListItem("I biografen", "Cinema"));                
               rdFilmMedium.Items.Add(new ListItem("Smart-tv (via en on-demand service som f.eks. Netflix, Viaplay el. lign.)","SmartTv")); 
               rdFilmMedium.Items.Add(new ListItem("Tablet (f.eks. iPad)", "Tablet")); 
               rdFilmMedium.Items.Add(new ListItem("Mobil", "Mobil"));                
               rdFilmMedium.Items.Add(new ListItem("Spillekonsol, fx Xbox eller Playstation (via en on-demand service som f.eks. Netflix, Viaplay el. lign.)", "GameConsole"));                
               rdFilmMedium.Items.Add(new ListItem("Andet", "Others")); 
               rdFilmMedium.Items.Add(new ListItem("Ved ikke", "Do not know"));
               rdFilmMedium.Items.Add(new ListItem("På tv (live tv eller optaget fra tv)", "OnLiveTVOrRecorded")); 
               break;
            default:
               rdFilmMedium.Items.Add(new ListItem("Mobil", "Mobil")); 
               rdFilmMedium.Items.Add(new ListItem("Spillekonsol, fx Xbox eller Playstation (via en on-demand service som f.eks. Netflix, Viaplay el. lign.)", "GameConsole"));
               rdFilmMedium.Items.Add(new ListItem("Smart-tv (via en on-demand service som f.eks. Netflix, Viaplay el. lign.)", "SmartTv")); 
               rdFilmMedium.Items.Add(new ListItem("På tv (live tv eller optaget fra tv)", "OnLiveTVOrRecorded"));                
               rdFilmMedium.Items.Add(new ListItem("Tablet (f.eks. iPad)", "Tablet"));                
               rdFilmMedium.Items.Add(new ListItem("Computer", "Computer"));                
               rdFilmMedium.Items.Add(new ListItem("I biografen", "Cinema")); 
               rdFilmMedium.Items.Add(new ListItem("På DVD", "DVD")); 
               rdFilmMedium.Items.Add(new ListItem("Andet", "Others")); 
               rdFilmMedium.Items.Add(new ListItem("Ved ikke", "Do not know")); 
               break;
         }

      }

      protected void OnNextClick(object sender, EventArgs e) {

         if (rdFilmPerMonth.SelectedIndex < 0 || rdFilmMedium.SelectedIndex < 0) {
            lblError.Visible = true;
            lblError.Text = "Besvar venligst spørgsmålet";
            return;
         }

         Model.UpdateFilmCount(ResponseId.Value, rdFilmPerMonth.SelectedValue, rdFilmMedium.SelectedValue);

         Response.Redirect(string.Format("FilmTypePref.aspx?Responseid={0}", ResponseId));

      }

      protected void OnPreviousClick(object sender, EventArgs e) {
         Response.Redirect(string.Format("BasicData.aspx?Responseid={0}", ResponseId));
      }
   }
}