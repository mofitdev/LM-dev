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
    public partial class risk : System.Web.UI.Page
    {
        string currentYear = "";
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
                currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
                DataTable dt = new DataTable();
                dt.Load(myObj.OracleExecuteReader("SELECT TO_CHAR('') as ID, TO_CHAR('- Ангилал сонго -') as NAME FROM DUAL UNION ALL SELECT TO_CHAR(ID) as ID, TO_CHAR(ID||'. '||NAME) as NAME FROM TBL_RISK_CLASS ORDER BY ID"));
                myObj.DBDisconnect();
                riskTab1ModalSelectClass.DataSource = dt;
                riskTab1ModalSelectClass.DataTextField = "NAME";
                riskTab1ModalSelectClass.DataValueField = "ID";
                riskTab1ModalSelectClass.DataBind();
                riskTab1SelectClass.DataSource = dt;
                riskTab1SelectClass.DataTextField = "NAME";
                riskTab1SelectClass.DataValueField = "ID";
                riskTab1SelectClass.DataBind();

                riskTab1SelectStartdate.Value = currentYear + "-01-01";
                riskTab1SelectEnddate.Value = currentYear + "-12-31";

                if (Request.QueryString["t"] != null)
                {
                    if ("0" != myObj.OracleExecuteScalar("SELECT COUNT(1) FROM TBL_RISK_CLASS WHERE ID=" + Request.QueryString["t"]).ToString())
                    {
                        riskTab1SelectClass.SelectedIndex = riskTab1SelectClass.Items.IndexOf(riskTab1SelectClass.Items.FindByValue(Request.QueryString["t"]));
                    }
                }
            }
            catch (cs.LMException ex)
            {
                myObjGetTableData.exeptionMethod(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                myObjGetTableData.exeptionMethod(ex);
                throw ex;
            }
        }
    }
}