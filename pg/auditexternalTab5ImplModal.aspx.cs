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
    public partial class auditexternalTab5ImplModal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                pTab5ImplModalCurrentYr.InnerHtml = Request.QueryString["yr"];
                pTab5ImplModalCurrentQrtr.InnerHtml = Request.QueryString["qrtr"]+"-р улирал";
                pTab5ModalID.InnerHtml = Request.QueryString["id"];
                DataSet ds = myObj.OracleExecuteDataSet("SELECT IMPL, FILENAME FROM TBL_AUDITEXTERNAL_PLAN_IMPL WHERE AUDITEXTERNAL_PLAN_ID=" + Request.QueryString["id"] + " AND YR=" + Request.QueryString["yr"] + " AND QRTR=" + Request.QueryString["qrtr"]);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    auditexternalTab5ImplModalHeaderLabel.InnerHtml = "засах";
                    pTab5ImplModalCharLength.InnerHtml = ds.Tables[0].Rows[0][0].ToString().Length.ToString();
                    pTab5ImplModalImpl.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0][0].ToString());
                    pTab5ImplModalAttachBtn.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["FILENAME"].ToString());
                }
                else
                {
                    auditexternalTab5ImplModalHeaderLabel.InnerHtml = "оруулах";
                    pTab5ImplModalCharLength.InnerHtml = "0";
                    pTab5ImplModalImpl.InnerHtml = "";
                    pTab5ImplModalAttachBtn.InnerHtml = "Файл хавсаргаагүй байна...";
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