using System;
using System.Configuration;
using System.Web.UI;

namespace BBSurveyVer2 {
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

      protected int? ExperimentGroup {
         get{
            return Model.GetExperimentDataByResponseId(ResponseId.Value).GroupType;
         }         
      }

      private FacebookUserData _fbUserData;
      protected FacebookUserData UserId {
         get {
            if (ResponseId == null)
               return null;

            if(_fbUserData == null)
               _fbUserData = Model.GetFacebookUserDataByResponseId(ResponseId.Value);

            return _fbUserData;
         }
      }

      private ExperimentData _experimentData;
      protected ExperimentData ExperimentData {
         get {
            if (ResponseId == null)
               return null;

            if(_experimentData == null)
               _experimentData = Model.GetExperimentDataByResponseId(ResponseId.Value);

            return _experimentData;
         }
      }

      protected string SurveyMode {
         get {
            return ConfigurationManager.AppSettings["SurveyMode"];
         }
      }

      protected void ClearSession() {
         ViewState["RESPONSEID"] = null;
         Session["RESPONSEID"] = null;         
      }
   }
}