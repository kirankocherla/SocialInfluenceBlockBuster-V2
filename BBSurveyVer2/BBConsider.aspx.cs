using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSurveyVer2 {
   public partial class BBConsider : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (!IsPostBack) {
            if (ResponseId.HasValue)
               Model.CreatePageVisitLog("BBConsider considerorprefer", ResponseId.Value);
         }

         if (!IsPostBack)
            LoadPrevious();
      }

      private void LoadPrevious() {
         switch (ExperimentData.ConsiderBB) {
            case "1":
               radioConsider1.Checked = true;
               break;
            case "2":
               radioConsider2.Checked = true;
               break;
            case "3":
               radioConsider3.Checked = true;
               break;
            case "4":
               radioConsider4.Checked = true;
               break;
            case "5":
               radioConsider5.Checked = true;
               break;
            case "6":
               radioConsider6.Checked = true;
               break;
            case "7":
               radioConsider7.Checked = true;
               break;            
         }

         switch (ExperimentData.PreferBB) {
            case "1":
               radioPrefer1.Checked = true;
               break;
            case "2":
               radioPrefer2.Checked = true;
               break;
            case "3":
               radioPrefer3.Checked = true;
               break;
            case "4":
               radioPrefer4.Checked = true;
               break;
            case "5":
               radioPrefer5.Checked = true;
               break;
            case "6":
               radioPrefer6.Checked = true;
               break;
            case "7":
               radioPrefer7.Checked = true;
               break;            
         }
      }

      private bool IsItValid() {
         if (!radioPrefer1.Checked && !radioPrefer2.Checked && !radioPrefer3.Checked && !radioPrefer4.Checked
             && !radioPrefer5.Checked && !radioPrefer6.Checked && !radioPrefer7.Checked)
            return false;

         if (!radioConsider1.Checked && !radioConsider2.Checked && !radioConsider3.Checked
             && !radioConsider4.Checked && !radioConsider5.Checked && !radioConsider6.Checked
             && !radioConsider7.Checked)
            return false;

         return true;
      }


      private string ConsiderBb() {
         if (radioConsider1.Checked)
            return "1";
         if (radioConsider2.Checked)
            return "2";
         if (radioConsider3.Checked)
            return "3";
         if (radioConsider4.Checked)
            return "4";
         if (radioConsider5.Checked)
            return "5";
         if (radioConsider6.Checked)
            return "6";
         if (radioConsider7.Checked)
            return "7";
         //if (radioConsider99.Checked)
         //   return "99";

         return string.Empty;

      }

      private string PreferBb() {
         if (radioPrefer1.Checked)
            return "1";
         if (radioPrefer2.Checked)
            return "2";
         if (radioPrefer3.Checked)
            return "3";
         if (radioPrefer4.Checked)
            return "4";
         if (radioPrefer5.Checked)
            return "5";
         if (radioPrefer6.Checked)
            return "6";
         if (radioPrefer7.Checked)
            return "7";
         //if (radioPrefer8.Checked)
         //   return "99";
         return string.Empty;
      }

      protected void OnNextClick(object sender, EventArgs e) {
         if (IsItValid()) {
            Model.UpdateConsiderPrefer(ResponseId.Value, ConsiderBb(), PreferBb());
         }
         else {
            lblError.Visible = true;
            lblError.Text = "Besvar venligst alle spørgsmål";
            return;
         }

         Response.Redirect(string.Format("UsageChances.aspx?Responseid={0}", ResponseId));

      }

      protected void OnPreviousClick(object sender, EventArgs e) {
         Response.Redirect(string.Format("WebsiteFeedBack.aspx?Responseid={0}", ResponseId));
      }
   }
}