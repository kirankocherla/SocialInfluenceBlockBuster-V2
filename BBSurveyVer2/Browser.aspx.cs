using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSurveyVer2
{
    public partial class Browser : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if (!IsPostBack) {              
                 Model.CreatePageVisitLog("RedirectIE", 0);
           }
        }
    }
}