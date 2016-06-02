using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSurveyVer2 {
   public partial class Index : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (!IsPostBack) {
            if (ResponseId.HasValue)
               Model.CreatePageVisitLog("FirstPageIndex", ResponseId.Value);
         }

         if (!IsPostBack && !ResponseId.HasValue) {
            ResponseId = Model.CreateNewSession(Request.UserHostName);
            Session["RESPONSEID"] = ResponseId;


            //Choose category etc and go next
            int experimentGroup = 0;
            experimentGroup = Convert.ToInt32(Model.GetServiceInfoByName("LastExperimentGroup"));
            if (experimentGroup < 9) {
               experimentGroup++;
            }
            else {
               experimentGroup = 1;
            }


            Model.UpdateServiceInfoByName("LastExperimentGroup", experimentGroup.ToString());

            Model.UpdateExperimentTypeAndGroup(ResponseId.Value, "pre", experimentGroup);

            if (experimentGroup == 1) {
               cmdLiteral.Text =
                  "<h3>Velkommen</h3><p>Du starter undersøgelsen ved at trykke på Start-knappen nedenfor, hvorefter vi vil stille dig et nogle indledende spørgsmål. Herefter vil vi bede dig se på nogle forskellige dele af Blockbuster.dk og derefter svare på et par spørgsmål. Og så er du færdig!</p><p>Skulle du have nogen spørgsmål til undersøgelsen, er du meget velkommen til at skrive til os på <a href='mailto:kalk.itm@cbs.dk'>kalk.itm@cbs.dk </a></p><p>Klar til at starte undersøgelsen?</p>";
            }
            else {
               cmdLiteral.Text = "<h3>Velkommen</h3><p>Du starter undersøgelsen ved at trykke på Start-knappen nedenfor, hvorefter vi vil stille dig et nogle indledende spørgsmål. Herefter vil du blive bedt om tilladelse til at forbinde din Facebook-konto med Facebook-app’en ”CSSL Survey Tool”. Denne tilladelse er nødvendig for at kunne gennemføre resten af undersøgelsen. Når du har accepteret, vil app’en udelukkende få adgang til dine offentligt tilgængelige Facebook oplysninger samt en liste over dine Facebook venner. Den vil IKKE kunne poste opslag på hverken din eller dine venners sider, og vi vil ikke kontakte dine venner. Disse informationer vil udelukkende blive brugt i denne undersøgelse og vil - ligesom dine svar i resten af undersøgelsen - blive behandlet fortroligt. Når du har klikket ok til dette, vil vi bede dig se på nogle forskellige dele af Blockbuster.dk og derefter svare på et par spørgsmål. Og så er du færdig!</p><p>Skulle du have nogen spørgsmål til undersøgelsen, er du meget velkommen til at skrive til os på <a href='mailto:kalk.itm@cbs.dk'>kalk.itm@cbs.dk </a></p><p>Klar til at starte undersøgelsen?</p>";
            }
         }         
      }

      protected void OnNextClick(object sender, EventArgs e) {
         Response.Redirect(string.Format("PreviousService.aspx?Responseid={0}", ResponseId));
      }
   }
}

