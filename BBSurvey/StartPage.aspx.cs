using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSurvey {
   public partial class StartPage : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         
      }

      protected void OnNextClick(object sender, EventArgs e) {
         Response.Redirect(string.Format("PreviousService.aspx?Responseid={0}", ResponseId));
      }
   }
}