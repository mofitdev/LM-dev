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
    public partial class planyrTab4ImplModal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                planyrTab4ImplModalCurrentYr.InnerHtml = Request.QueryString["yr"];
                planyrTab4ImplModalCurrentQrtr.InnerHtml = Request.QueryString["qrtr"] + "-р улирал";
                planyrTab4ImplModalID.InnerHtml = Request.QueryString["id"];
                DataSet ds = myObj.OracleExecuteDataSet("SELECT IMPL_DATA, FILE_NAME FROM TBL_PLAN_IMPL WHERE PLAN_ID=" + Request.QueryString["id"] + " AND YR=" + Request.QueryString["yr"] + " AND QRTR=" + Request.QueryString["qrtr"] + " AND tp='quarter'");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    planyrTab4ImplModalHeaderLabel.InnerHtml = "засах";
                    planyrTab4ImplModalCharLength.InnerHtml = ds.Tables[0].Rows[0]["IMPL_DATA"].ToString().Length.ToString();
                    planyrTab4ImplModalImpl.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["IMPL_DATA"].ToString());
                    planyrTab4ImplModalAttachBtn.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["FILE_NAME"].ToString());
                }
                else
                {
                    planyrTab4ImplModalHeaderLabel.InnerHtml = "оруулах";
                    planyrTab4ImplModalCharLength.InnerHtml = "0";
                    planyrTab4ImplModalImpl.InnerHtml = "";
                    planyrTab4ImplModalAttachBtn.InnerHtml = "Файл хавсаргаагүй байна...";
                }
            }
            catch (cs.LMException ex)
            {
                myObjGetTableData.exeptionMethod(ex);
                Response.Redirect("~/#pg/error500.aspx");
            }
            catch (Exception ex)
            {
                myObjGetTableData.exeptionMethod(ex);
                Response.Redirect("~/#pg/error500.aspx");
            }
        }
    }
}