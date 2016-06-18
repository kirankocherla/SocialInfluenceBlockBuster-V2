using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSurveyVer2 {
   public partial class FilmTypePref : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (!IsPostBack) {
            rdFilmType.Items.Clear();
            rdFilmInspiration.Items.Clear();

            GetItems();

            if (!ResponseId.HasValue)
               Response.Redirect("StartPage.aspx");
            else {
               //load previous answer
               LoadPreviousAnswer();

               if (ExperimentData.PreviousService == "NoneYetButWillTry")
                  divFilterNotStream.Visible = false;


            }

            if (ResponseId != null)
               Model.CreatePageVisitLog("FilmTypePref", ResponseId.Value);
         }

      }

      private void LoadPreviousAnswer() {
         if (ExperimentData != null && !string.IsNullOrEmpty(ExperimentData.FilmType)) {
            rdFilmType.SelectedValue = ExperimentData.FilmType;

            if (!string.IsNullOrEmpty(ExperimentData.FilmInspiration)) {
               foreach (var s in ExperimentData.FilmInspiration.Split('#')) {
                  foreach (ListItem item in rdFilmInspiration.Items) {
                     if (item.Value.ToLower() == s.ToLower()) {
                        item.Selected = true;
                     }
                  }
               }
            }            
         }
      }

      private void GetItems() {
         var rnd = new Random();
         int rndInstance = rnd.Next(1, 3);

         switch (rndInstance) {
            case 1:
               rdFilmType.Items.Add(new ListItem("Action", "Action"));               
               rdFilmType.Items.Add(new ListItem("Drama/thriller", "Drama_thriller"));
               rdFilmType.Items.Add(new ListItem("Eventyr", "Eventyr"));
               rdFilmType.Items.Add(new ListItem("Krigsfilm", "Krigsfilm"));
               rdFilmType.Items.Add(new ListItem("Indiefilm", "Indiefilm"));
               rdFilmType.Items.Add(new ListItem("Gyser", "Gyser"));
               rdFilmType.Items.Add(new ListItem("Komedie", "Komedie"));               
               rdFilmType.Items.Add(new ListItem("Romantisk film", "Romantiskfilm"));
               rdFilmType.Items.Add(new ListItem("Dokumentar", "Dokumentar"));
               rdFilmType.Items.Add(new ListItem("Science fiction", "Sciencefiction"));               
               rdFilmType.Items.Add(new ListItem("Ingen af ovenstående", "Ingen"));
               //rdFilmType.Items.Add(new ListItem("Ved ikke", "Do not know"));

               rdFilmInspiration.Items.Add(new ListItem("Læser anmeldelser i aviser og på filmsider (f.eks. kino.dk eller iMDB)", "Reviews"));
               rdFilmInspiration.Items.Add(new ListItem("Søger inspiration i de mest sete film på tjenesten", "MostSeen"));
               rdFilmInspiration.Items.Add(new ListItem("Søger inspiration i de nyeste film på tjenesten", "NewFilm"));
               rdFilmInspiration.Items.Add(new ListItem("Bruger redaktionens anbefalinger på den tjeneste, jeg skal se filmen på", "RedaktionRecommendation"));
               rdFilmInspiration.Items.Add(new ListItem("Bruger venners anbefalinger", "FriendsRecommendation"));
               rdFilmInspiration.Items.Add(new ListItem("Søger inspiration i de film, som tjenesten foreslår mig at se baseret på min historik", "MyOwnHistory"));                              
               //rdFilmInspiration.Items.Add(new ListItem("Ved ikke", "Do not know"));
               
               
               break;
            case 2:
               rdFilmType.Items.Add(new ListItem("Romantisk film", "Romantiskfilm"));
               rdFilmType.Items.Add(new ListItem("Drama/thriller", "Drama_thriller"));
               rdFilmType.Items.Add(new ListItem("Action", "Action"));
               rdFilmType.Items.Add(new ListItem("Indiefilm", "Indiefilm"));
               rdFilmType.Items.Add(new ListItem("Dokumentar", "Dokumentar"));               ;
               rdFilmType.Items.Add(new ListItem("Eventyr", "Eventyr"));
               rdFilmType.Items.Add(new ListItem("Gyser", "Gyser"));
               rdFilmType.Items.Add(new ListItem("Komedie", "Komedie"));                    
               rdFilmType.Items.Add(new ListItem("Science fiction", "Sciencefiction"));               
               rdFilmType.Items.Add(new ListItem("Krigsfilm", "Krigsfilm"));          
               rdFilmType.Items.Add(new ListItem("Ingen af ovenstående", "Ingen"));
               //rdFilmType.Items.Add(new ListItem("Ved ikke", "Do not know"));

               rdFilmInspiration.Items.Add(new ListItem("Søger inspiration i de film, som tjenesten foreslår mig at se baseret på min historik", "MyOwnHistory"));               
               rdFilmInspiration.Items.Add(new ListItem("Bruger redaktionens anbefalinger på den tjeneste, jeg skal se filmen på", "RedaktionRecommendation"));
               rdFilmInspiration.Items.Add(new ListItem("Bruger venners anbefalinger", "FriendsRecommendation"));               
               rdFilmInspiration.Items.Add(new ListItem("Søger inspiration i de mest sete film på tjenesten", "MostSeen"));
               rdFilmInspiration.Items.Add(new ListItem("Søger inspiration i de nyeste film på tjenesten", "NewFilm"));
               rdFilmInspiration.Items.Add(new ListItem("Læser anmeldelser i aviser og på filmsider (f.eks. kino.dk eller iMDB)", "Reviews"));
               //rdFilmInspiration.Items.Add(new ListItem("Ved ikke", "Do not know"));

               break;
            case 3:
               rdFilmType.Items.Add(new ListItem("Science fiction", "Sciencefiction"));
               rdFilmType.Items.Add(new ListItem("Eventyr", "Eventyr"));
               rdFilmType.Items.Add(new ListItem("Action", "Action"));
               rdFilmType.Items.Add(new ListItem("Dokumentar", "Dokumentar"));
               rdFilmType.Items.Add(new ListItem("Romantisk film", "Romantiskfilm"));
               rdFilmType.Items.Add(new ListItem("Drama/thriller", "Drama_thriller"));               
               rdFilmType.Items.Add(new ListItem("Gyser", "Gyser"));
               rdFilmType.Items.Add(new ListItem("Komedie", "Komedie"));
               rdFilmType.Items.Add(new ListItem("Krigsfilm", "Krigsfilm"));               
               rdFilmType.Items.Add(new ListItem("Indiefilm", "Indiefilm"));
               rdFilmType.Items.Add(new ListItem("Ingen af ovenstående", "Ingen"));
               //rdFilmType.Items.Add(new ListItem("Ved ikke", "Do not know"));

               rdFilmInspiration.Items.Add(new ListItem("Bruger redaktionens anbefalinger på den tjeneste, jeg skal se filmen på", "RedaktionRecommendation"));
               rdFilmInspiration.Items.Add(new ListItem("Søger inspiration i de mest sete film på tjenesten", "MostSeen"));
               rdFilmInspiration.Items.Add(new ListItem("Bruger venners anbefalinger", "FriendsRecommendation"));
               rdFilmInspiration.Items.Add(new ListItem("Søger inspiration i de film, som tjenesten foreslår mig at se baseret på min historik", "MyOwnHistory"));               
               rdFilmInspiration.Items.Add(new ListItem("Søger inspiration i de nyeste film på tjenesten", "NewFilm"));
               rdFilmInspiration.Items.Add(new ListItem("Læser anmeldelser i aviser og på filmsider (f.eks. kino.dk eller iMDB)", "Reviews"));               
               //rdFilmInspiration.Items.Add(new ListItem("Ved ikke", "Do not know"));

               break;
            default:
               rdFilmType.Items.Add(new ListItem("Indiefilm", "Indiefilm"));               
               rdFilmType.Items.Add(new ListItem("Dokumentar", "Dokumentar"));
               rdFilmType.Items.Add(new ListItem("Drama/thriller", "Drama_thriller"));
               rdFilmType.Items.Add(new ListItem("Romantisk film", "Romantiskfilm"));               
               rdFilmType.Items.Add(new ListItem("Gyser", "Gyser"));
               rdFilmType.Items.Add(new ListItem("Komedie", "Komedie"));
               rdFilmType.Items.Add(new ListItem("Krigsfilm", "Krigsfilm"));               
               rdFilmType.Items.Add(new ListItem("Science fiction", "Sciencefiction"));
               rdFilmType.Items.Add(new ListItem("Eventyr", "Eventyr"));
               rdFilmType.Items.Add(new ListItem("Action", "Action"));
               rdFilmType.Items.Add(new ListItem("Ingen af ovenstående", "Ingen"));
               //rdFilmType.Items.Add(new ListItem("Ved ikke", "Do not know"));

               rdFilmInspiration.Items.Add(new ListItem("Bruger venners anbefalinger", "FriendsRecommendation"));
               rdFilmInspiration.Items.Add(new ListItem("Bruger redaktionens anbefalinger på den tjeneste, jeg skal se filmen på", "RedaktionRecommendation"));
               rdFilmInspiration.Items.Add(new ListItem("Søger inspiration i de mest sete film på tjenesten", "MostSeen"));
               rdFilmInspiration.Items.Add(new ListItem("Læser anmeldelser i aviser og på filmsider (f.eks. kino.dk eller iMDB)", "Reviews"));                              
               rdFilmInspiration.Items.Add(new ListItem("Søger inspiration i de film, som tjenesten foreslår mig at se baseret på min historik", "MyOwnHistory"));               
               rdFilmInspiration.Items.Add(new ListItem("Søger inspiration i de nyeste film på tjenesten", "NewFilm"));
               //rdFilmInspiration.Items.Add(new ListItem("Ved ikke", "Do not know"));

               break;
         }

      }

      protected void OnNextClick(object sender, EventArgs e) {

         if (rdFilmType.SelectedIndex < 0) {
            lblError.Visible = true;
            lblError.Text = "Besvar venligst spørgsmålet";
            return;
         }


         int selectedCount = 0;
         string inspirations = string.Empty;

         foreach (ListItem item in rdFilmInspiration.Items) {
            if (item.Selected) {
               selectedCount++;
               inspirations += string.Format("{0}#", item.Value);
            }               
         }

         if (selectedCount <= 0) {
            lblError.Visible = true;
            lblError.Text = "Besvar venligst spørgsmålet";
            return;
         }

         
         if (divFilterNotStream.Visible) {
            Model.UpdateFilmTypeInspiration(ResponseId.Value, rdFilmType.SelectedValue, inspirations.TrimEnd('#'));
         }
         else {
            Model.UpdateFilmTypeInspiration(ResponseId.Value, rdFilmType.SelectedValue, string.Empty);
         }
         

         Response.Redirect(string.Format("FilmPaymentPref.aspx?Responseid={0}", ResponseId));

      }

      protected void OnPreviousClick(object sender, EventArgs e) {
         Response.Redirect(string.Format("FilmWatchPref.aspx?Responseid={0}", ResponseId));
      }
   }
}