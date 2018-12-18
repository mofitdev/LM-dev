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
    public partial class trainingreq : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        string userId = "", currentYear = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LM_UserID"] == null) Response.Redirect("~/login.aspx");
            else setDatas();
        }
        protected void setDatas()
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                DataSet ds = myObjGetTableData.getCurrentInfo();
                userId = Session["LM_UserID"].ToString();
                currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
                trainingreqTab1SelectYear.SelectedIndex = trainingreqTab1SelectYear.Items.IndexOf(trainingreqTab1SelectYear.Items.FindByValue(currentYear));
                dt.Rows.Clear();
                dt.Load(myObj.OracleExecuteReader("SELECT '' as ID, TO_CHAR('- Бүгд -') as NAME FROM DUAL UNION ALL SELECT TO_CHAR(ID) as ID, TO_CHAR(NAME) as NAME FROM TBL_TRAININGREQTYPE"));
                myObj.DBDisconnect();
                trainingreqTab1SelectType.DataSource = dt;
                trainingreqTab1SelectType.DataTextField = "NAME";
                trainingreqTab1SelectType.DataValueField = "ID";
                trainingreqTab1SelectType.DataBind();
                trainingreqTab1ModalSelectType.DataSource = dt;
                trainingreqTab1ModalSelectType.DataTextField = "NAME";
                trainingreqTab1ModalSelectType.DataValueField = "ID";
                trainingreqTab1ModalSelectType.DataBind();
                trainingreqTab1ModalDivStaff.InnerHtml = myObj.OracleExecuteScalar("SELECT CASE WHEN b.BR_ID=b.BR_MAIN_ID1 THEN b.DOMAIN_ORG ELSE c.DOMAIN_ORG||'-'||b.DOMAIN_ORG END||' | '||d.POS_NAME||' | '||SUBSTR(a.MNAME,0,1)||'.'||SUBSTR(a.LNAME,1,1)||LOWER(SUBSTR(a.LNAME,2)) as ST_NAME FROM ST_STAFFS a INNER JOIN ST_BRANCH b ON a.BR_ID=b.BR_ID INNER JOIN ST_BRANCH c ON b.BR_MAIN_ID1=c.BR_ID INNER JOIN ST_POS d ON a.POS_ID=d.POS_ID WHERE a.ST_ID=" + userId).ToString();
                trainingreqTab1ModalPrintLabelDate.InnerHtml = DateTime.Now.ToString("yyyy-MM-dd");
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