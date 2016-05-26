using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSurvey {
   public partial class FacebookDataFetch : BasePage {
      protected void Page_Load(object sender, EventArgs e) {
         if (ResponseId != null)
            Model.CreatePageVisitLog("FacebookFetch", ResponseId.Value);

         //here user will return as postback uri after permission 
         //create user and fetch friends
         //save friends 
         //redirect to post fetch

      }

      protected void OnNextClick(object sender, EventArgs e) {
         //at this page data will be fetched and user will be redirected after login
         //this redirect is only for simulation purpose
         Response.Redirect(string.Format("PostFacebookFetch.aspx?ResponseId={0}", ResponseId));
      }
   }
}