using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSurveyVer2
{
    public partial class BBAbout : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if (!IsPostBack) {
              if (ResponseId.HasValue)
                 Model.CreatePageVisitLog("BBAbout", ResponseId.Value);
           }      
        }
    }
}