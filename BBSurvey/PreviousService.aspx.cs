using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSurvey {
   public partial class PreviousService : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (!IsPostBack) {
            rdPreviousServices.Items.Clear();
            GetItems();


            if(!ResponseId.HasValue)
               Response.Redirect("StartPage.aspx");

            if (ResponseId != null)
               Model.CreatePageVisitLog("PreviousService", ResponseId.Value);
         }
         
      }

      private void GetItems() {
         var rnd = new Random();
         int rndInstance = rnd.Next(1, 3);

         switch (rndInstance) {
            case 1:
               rdPreviousServices.Items.Add(new ListItem("Netflix", "Netflix"));
               rdPreviousServices.Items.Add(new ListItem("TDCPlay", "TDC Play / YouSee Play"));
               rdPreviousServices.Items.Add(new ListItem("HBO", "HBO"));
               rdPreviousServices.Items.Add(new ListItem("BlockBuster", "Blockbuster.dk (either web, mobile, Sony PS version, i.e. NOT renting films in a physical BB store)"));
               rdPreviousServices.Items.Add(new ListItem("Others", "Other service"));
               rdPreviousServices.Items.Add(new ListItem("None", "Have not used an online movie streaming service"));
               break;
            case 2:
               rdPreviousServices.Items.Add(new ListItem("TDCPlay", "TDC Play / YouSee Play"));
               rdPreviousServices.Items.Add(new ListItem("Netflix", "Netflix"));               
               rdPreviousServices.Items.Add(new ListItem("HBO", "HBO"));
               rdPreviousServices.Items.Add(new ListItem("BlockBuster", "Blockbuster.dk (either web, mobile, Sony PS version, i.e. NOT renting films in a physical BB store)"));
               rdPreviousServices.Items.Add(new ListItem("Others", "Other service"));
               rdPreviousServices.Items.Add(new ListItem("None", "Have not used an online movie streaming service"));
               break;
            case 3:
               rdPreviousServices.Items.Add(new ListItem("BlockBuster", "Blockbuster.dk (either web, mobile, Sony PS version, i.e. NOT renting films in a physical BB store)"));
               rdPreviousServices.Items.Add(new ListItem("TDCPlay", "TDC Play / YouSee Play"));
               rdPreviousServices.Items.Add(new ListItem("Netflix", "Netflix"));               
               rdPreviousServices.Items.Add(new ListItem("HBO", "HBO"));               
               rdPreviousServices.Items.Add(new ListItem("Others", "Other service"));
               rdPreviousServices.Items.Add(new ListItem("None", "Have not used an online movie streaming service"));
               break;
            default:
               rdPreviousServices.Items.Add(new ListItem("BlockBuster", "Blockbuster.dk (either web, mobile, Sony PS version, i.e. NOT renting films in a physical BB store)"));
               rdPreviousServices.Items.Add(new ListItem("TDCPlay", "TDC Play / YouSee Play"));
               rdPreviousServices.Items.Add(new ListItem("Netflix", "Netflix"));               
               rdPreviousServices.Items.Add(new ListItem("HBO", "HBO"));               
               rdPreviousServices.Items.Add(new ListItem("Others", "Other service"));
               rdPreviousServices.Items.Add(new ListItem("None", "Have not used an online movie streaming service"));
               break;
         }

      }

      protected void OnNextClick(object sender, EventArgs e) {

         if (rdPreviousServices.SelectedIndex > -1) {

            if (rdPreviousServices.SelectedValue != "BlockBuster")
               Model.CreateExperimentDataItemWithPreviousService(ResponseId.Value, rdPreviousServices.SelectedValue);
         }

         //procedure for Facebook permission starts here
         Response.Redirect(string.Format("FacebookLogin.aspx?Responseid={0}", ResponseId));
      }
   }
}