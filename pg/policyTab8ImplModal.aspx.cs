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
    public partial class policyTab8ImplModal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                policytab8ImplModalID.InnerHtml = Request.QueryString["id"];
                DataSet ds = myObj.OracleExecuteDataSet(@"SELECT a.IMPL, a.FILENAME, a.BEGINYR, a.BEGINYRHF, a.ENDYR, a.ENDYRHF, b.YRHFLIST
FROM TBL_POLICYPLAN_IMPLNEGDSEN a
INNER JOIN(
  SELECT a.ID, NVL(RTRIM(xmlagg(xmlelement(e, b.YR || '-' || b.YRHF || ',') ORDER BY b.YR, b.YRHF).extract('//text()'), ','), 'none') YRHFLIST
  FROM TBL_POLICYPLAN_IMPLNEGDSEN a
  INNER JOIN TBL_POLPLAN_IMPLNEGDSEN_YRHF b ON a.ID = b.POLICYPLAN_IMPLNEGDSEN_ID
  WHERE a.POLICYPLAN_ID = "+ Request.QueryString["id"] + @"
  GROUP BY a.ID
) b ON a.ID = b.ID");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    policytab8ImplModalHeaderLabel.InnerHtml = "засах";
                    policytab8ImplModalCharLength.InnerHtml = ds.Tables[0].Rows[0]["IMPL"].ToString().Length.ToString();
                    policytab8ImplModalImpl.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["IMPL"].ToString());
                    policytab8ImplModalAttachBtn.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["FILENAME"].ToString());
                    policyTab8SelectYearbegin.SelectedIndex = policyTab8SelectYearbegin.Items.IndexOf(policyTab8SelectYearbegin.Items.FindByValue(ds.Tables[0].Rows[0]["BEGINYR"].ToString()));
                    policyTab8SelectYearhalfbegin.SelectedIndex = policyTab8SelectYearhalfbegin.Items.IndexOf(policyTab8SelectYearhalfbegin.Items.FindByValue(ds.Tables[0].Rows[0]["BEGINYRHF"].ToString()));
                    policyTab8SelectYearend.SelectedIndex = policyTab8SelectYearend.Items.IndexOf(policyTab8SelectYearend.Items.FindByValue(ds.Tables[0].Rows[0]["ENDYR"].ToString()));
                    policyTab8SelectYearhalfend.SelectedIndex = policyTab8SelectYearhalfend.Items.IndexOf(policyTab8SelectYearhalfend.Items.FindByValue(ds.Tables[0].Rows[0]["ENDYRHF"].ToString()));
                    policyTab8SelectedYrhf.InnerHtml = ds.Tables[0].Rows[0]["YRHFLIST"].ToString();
                }
                else
                {
                    policytab8ImplModalHeaderLabel.InnerHtml = "оруулах";
                    policytab8ImplModalCharLength.InnerHtml = "0";
                    policytab8ImplModalImpl.InnerHtml = "";
                    policytab8ImplModalAttachBtn.InnerHtml = "Файл хавсаргаагүй байна...";
                    policyTab8SelectYearbegin.SelectedIndex = 0;
                    policyTab8SelectYearhalfbegin.SelectedIndex = 0;
                    policyTab8SelectYearend.SelectedIndex = 0;
                    policyTab8SelectYearhalfend.SelectedIndex = 0;
                    policyTab8SelectedYrhf.InnerHtml = "";
                }
                ds = myObj.OracleExecuteDataSet("SELECT BEGINYR, CASE WHEN ENDYR < (SELECT YR FROM TBL_SYSSET WHERE ACTIVE=1) THEN (SELECT YR FROM TBL_SYSSET WHERE ACTIVE=1) ELSE ENDYR END as ENDYR FROM TBL_POLICYPLAN WHERE ID=" + Request.QueryString["id"]);
                policyTab8PlanYrhf.InnerHtml = ds.Tables[0].Rows[0]["BEGINYR"].ToString() + "-" + ds.Tables[0].Rows[0]["ENDYR"].ToString();
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