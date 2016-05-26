using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace BBSurvey {
   public class BasePage : Page {

      private SIModelDS _model = null;
      protected SIModelDS Model {
         get {
            return _model = _model ?? new SIModelDS();
         }
      }

      protected int? ResponseId {
         get {

            if (Request.QueryString["RESPONSEID"] != null) {
               int responseid = 0;
               if (Int32.TryParse(Request.QueryString["RESPONSEID"], out responseid)) {
                  ViewState["RESPONSEID"] = responseid;
                  Session["RESPONSEID"] = responseid;
               }
               return responseid;
            }

            if (ViewState["RESPONSEID"] != null) {
               return Convert.ToInt32(ViewState["RESPONSEID"]);
            }

            if (Session["RESPONSEID"] != null) {
               ViewState["RESPONSEID"] = Session["RESPONSEID"];
               return Convert.ToInt32(ViewState["RESPONSEID"]);
            }

            
            return null;
         }
         set {
            ViewState["RESPONSEID"] = value;
         }
      }

      protected FacebookUserData UserId {
         get {
            if (ResponseId == null)
               return null;

            return Model.GetFacebookUserDataByResponseId(ResponseId.Value);
         }
      }      

   }
}