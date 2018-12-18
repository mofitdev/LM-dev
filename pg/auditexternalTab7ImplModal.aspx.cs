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
    public partial class auditexternalTab7ImplModal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                pTab7ImplModalCurrentYr.InnerHtml = Request.QueryString["yr"];
                pTab7ImplModalCurrentQrtr.InnerHtml = Request.QueryString["qrtr"] + "-р улирал";
                pTab7ModalID.InnerHtml = Request.QueryString["id"];
                DataSet ds = myObj.OracleExecuteDataSet("SELECT IMPL, FILENAME FROM TBL_AUDITEXTERNAL_AKT_IMPL WHERE AUDITEXTERNAL_AKT_ID=" + Request.QueryString["id"] + " AND YR=" + Request.QueryString["yr"] + " AND QRTR=" + Request.QueryString["qrtr"]);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    auditexternalTab7ImplModalHeaderLabel.InnerHtml = "засах";
                    pTab7ImplModalCharLength.InnerHtml = ds.Tables[0].Rows[0][0].ToString().Length.ToString();
                    pTab7ImplModalImpl.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0][0].ToString());
                    pTab7ImplModalAttachBtn.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["FILENAME"].ToString());
                }
                else
                {
                    auditexternalTab7ImplModalHeaderLabel.InnerHtml = "оруулах";
                    pTab7ImplModalCharLength.InnerHtml = "0";
                    pTab7ImplModalImpl.InnerHtml = "";
                    pTab7ImplModalAttachBtn.InnerHtml = "Файл хавсаргаагүй байна...";
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