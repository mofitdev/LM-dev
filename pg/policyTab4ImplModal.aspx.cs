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
    public partial class policyTab4ImplModal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                policyTab4ImplModalCurrentYr.InnerHtml = Request.QueryString["yr"];
                if (Request.QueryString["yrhf"] == "1") policyTab4ImplModalCurrentYrhf.InnerHtml = "Эхний хагас жил";
                else if (Request.QueryString["yrhf"] == "2") policyTab4ImplModalCurrentYrhf.InnerHtml = "Сүүлийн хагас жил";
                policyTab4ImplModalID.InnerHtml = Request.QueryString["id"];
                DataSet ds = myObj.OracleExecuteDataSet("SELECT IMPL, FILENAME FROM TBL_POLICYPLAN_IMPL WHERE POLICYPLAN_ID=" + Request.QueryString["id"] + " AND YR=" + Request.QueryString["yr"] + " AND YRHF=" + Request.QueryString["yrhf"]);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    policyTab4ImplModalHeaderLabel.InnerHtml = "засах";
                    policyTab4ImplModalCharLength.InnerHtml = ds.Tables[0].Rows[0]["IMPL"].ToString().Length.ToString();
                    policyTab4ImplModalImpl.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["IMPL"].ToString());
                    policyTab4ImplModalAttachBtn.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["FILENAME"].ToString());
                }
                else
                {
                    policyTab4ImplModalHeaderLabel.InnerHtml = "оруулах";
                    policyTab4ImplModalCharLength.InnerHtml = "0";
                    policyTab4ImplModalImpl.InnerHtml = "";
                    policyTab4ImplModalAttachBtn.InnerHtml = "Файл хавсаргаагүй байна...";
                }
                if ("0" == myObj.OracleExecuteScalar("SELECT COUNT(ID) FROM TBL_PLANYR_WORK WHERE WORK_ID=" + Request.QueryString["id"]).ToString())
                {
                    policyTab4ImplModalDivPlanyrImplImport.Style.Add("display", "none");
                }
                else {
                    policyTab4ImplModalDivPlanyrImplImport.Style.Add("display", "block");
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