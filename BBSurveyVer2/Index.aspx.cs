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
         }         
      }

      protected void OnNextClick(object sender, EventArgs e) {
         Response.Redirect(string.Format("PreviousService.aspx?Responseid={0}", ResponseId));
      }
   }
}

