using LMWebApp.cs;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace LMWebApp.pg
{
    public partial class letter : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LM_UserID"] == null) Response.Redirect("~/login");
            else setDatas(); 
        }
        protected void setDatas()
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            string currentYear = "", currentMonth = "";
            try
            {
                DataSet ds = myObjGetTableData.getCurrentInfo();
                currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
                currentMonth = ds.Tables[0].Rows[0]["MONTH"].ToString();

                dt.Rows.Clear();
                dt.Load(myObj.OracleExecuteReader(@"SELECT TO_CHAR('') as BR_ID, TO_CHAR('Бүгд') as DOMAIN_ORG FROM DUAL 
UNION ALL
SELECT TO_CHAR(BR_ID) as BR_ID, TO_CHAR(DOMAIN_ORG) as DOMAIN_ORG
FROM(
  SELECT BR_ID, DOMAIN_ORG
  FROM TBL_BRANCH
  WHERE YR = (SELECT YR FROM TBL_SYSSET WHERE ACTIVE = 1) AND BR_TYPE1 = 3 AND BR_ID != 9911
  ORDER BY SORT
)"));
                myObj.DBDisconnect();
                letterTab1t1SelectBranch.DataSource = dt;
                letterTab1t1SelectBranch.DataTextField = "DOMAIN_ORG";
                letterTab1t1SelectBranch.DataValueField = "BR_ID";
                letterTab1t1SelectBranch.DataBind();
                letterTab1t2SelectBranch.DataSource = dt;
                letterTab1t2SelectBranch.DataTextField = "DOMAIN_ORG";
                letterTab1t2SelectBranch.DataValueField = "BR_ID";
                letterTab1t2SelectBranch.DataBind();
                letterTab1t3SelectBranch.DataSource = dt;
                letterTab1t3SelectBranch.DataTextField = "DOMAIN_ORG";
                letterTab1t3SelectBranch.DataValueField = "BR_ID";
                letterTab1t3SelectBranch.DataBind();
                letterTab1t4SelectBranch.DataSource = dt;
                letterTab1t4SelectBranch.DataTextField = "DOMAIN_ORG";
                letterTab1t4SelectBranch.DataValueField = "BR_ID";
                letterTab1t4SelectBranch.DataBind();

                divletterTab1t1Start_date.Value = System.DateTime.Now.Date.ToString("yyyy-MM") + "-01";
                divletterTab1t2Start_date.Value = System.DateTime.Now.Date.ToString("yyyy-MM") + "-01";
                divletterTab1t3Start_date.Value = System.DateTime.Now.Date.ToString("yyyy-MM") + "-01";
                divletterTab1t4Start_date.Value = System.DateTime.Now.Date.ToString("yyyy-MM") + "-01";
                divletterTab1t1End_date.Value = System.DateTime.Now.Date.ToString("yyyy-MM-dd");
                divletterTab1t2End_date.Value = System.DateTime.Now.Date.ToString("yyyy-MM-dd");
                divletterTab1t3End_date.Value = System.DateTime.Now.Date.ToString("yyyy-MM-dd");
                divletterTab1t4End_date.Value = System.DateTime.Now.Date.ToString("yyyy-MM-dd");
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