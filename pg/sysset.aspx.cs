using LMWebApp.cs;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMWebApp.pg
{
    public partial class sysset : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LM_UserID"] == null) Response.Redirect("~/login");
            else setDatas();
        }
        protected void setDatas()
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (myObjGetTableData.UserCheckRoles(HttpContext.Current.Session["LM_UserID"].ToString(), "1"))
                {
                    DataSet ds = myObj.OracleExecuteDataSet("SELECT YR, YR_H, QRTR, MONTH FROM TBL_SYSSET WHERE ACTIVE=1");
                    if (ds.Tables[0].Rows.Count != 0)
                    {
                        foreach (DataRow dr in ds.Tables[0].Rows)
                        {
                            main_yr.Items.FindByValue(dr["YR"].ToString()).Selected = true;
                            main_hyr.InnerHtml = dr["YR_H"].ToString();
                            main_qrtr.InnerHtml = dr["QRTR"].ToString();
                            main_month.Items.FindByValue(dr["MONTH"].ToString()).Selected = true;
                        }
                    }
                }
                else Response.Redirect("~/login", false);
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