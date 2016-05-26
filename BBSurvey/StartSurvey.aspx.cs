using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSurvey {
   public partial class StartSurvey : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (!IsPostBack) {
            ResponseId = Model.CreateNewSession(Request.UserHostName);
            Session["RESPONSEID"] = ResponseId;
         }
      }

      protected void OnNextClick(object sender, EventArgs e) {
         //start session in database and experiment id
         Response.Redirect(string.Format("PreviousService.aspx?Responseid={0}", ResponseId));
      }
   }
}