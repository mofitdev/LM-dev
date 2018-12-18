using LMWebApp.cs;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMWebApp.pg
{
    public partial class auditinternalTab3ImplModal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                pTab3ImplModalCurrentYr.InnerHtml = Request.QueryString["yr"];
                pTab3ImplModalCurrentQrtr.InnerHtml = Request.QueryString["qrtr"] + "-р улирал";
                pTab3ModalID.InnerHtml = Request.QueryString["id"];
                DataSet ds = myObj.OracleExecuteDataSet("SELECT IMPL FROM TBL_AUDITINTERNAL_PLAN_IMPL WHERE AUDITINTERNAL_PLAN_ID=" + Request.QueryString["id"] + " AND YR=" + Request.QueryString["yr"] + " AND QRTR=" + Request.QueryString["qrtr"]);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    auditinternalTab3ImplModalHeaderLabel.InnerHtml = "засах";
                    pTab3ImplModalCharLength.InnerHtml = ds.Tables[0].Rows[0][0].ToString().Length.ToString();
                    pTab3ImplModalImpl.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0][0].ToString());
                }
                else
                {
                    auditinternalTab3ImplModalHeaderLabel.InnerHtml = "оруулах";
                    pTab3ImplModalCharLength.InnerHtml = "0";
                    pTab3ImplModalImpl.InnerHtml = "";
                }
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                Response.Redirect("~/#pg/error500.aspx");
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                Response.Redirect("~/#pg/error500.aspx");
            }
        }
    }
}