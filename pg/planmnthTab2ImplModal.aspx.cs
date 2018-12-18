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
    public partial class planmnthTab2ImplModal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                planmnthTab2ImplModalCurrentYr.InnerHtml = Request.QueryString["yr"];
                planmnthTab2ImplModalCurrentMnth.InnerHtml = Request.QueryString["mnth"] + "-р сар";
                planmnthTab2ImplModalID.InnerHtml = Request.QueryString["id"];
                DataSet ds = myObj.OracleExecuteDataSet("SELECT IMPL_DATA, FILE_NAME FROM TBL_PLAN_IMPL WHERE PLAN_ID=" + Request.QueryString["id"] + " AND YR=" + Request.QueryString["yr"] + " AND MNTH=" + Request.QueryString["mnth"]+" AND tp='month'");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    planmnthTab2ImplModalHeaderLabel.InnerHtml = "засах";
                    planmnthTab2ImplModalCharLength.InnerHtml = ds.Tables[0].Rows[0]["IMPL_DATA"].ToString().Length.ToString();
                    planmnthTab2ImplModalImpl.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["IMPL_DATA"].ToString());
                    planmnthTab2ImplModalAttachBtn.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["FILE_NAME"].ToString());
                }
                else
                {
                    planmnthTab2ImplModalHeaderLabel.InnerHtml = "оруулах";
                    planmnthTab2ImplModalCharLength.InnerHtml = "0";
                    planmnthTab2ImplModalImpl.InnerHtml = "";
                    planmnthTab2ImplModalAttachBtn.InnerHtml = "Файл хавсаргаагүй байна...";
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