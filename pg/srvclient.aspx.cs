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
    public partial class srvclient : System.Web.UI.Page
    {
        string currentYear = "", currentMonth = "", userGazarId = "", userId = "";
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
                DataSet ds = myObjGetTableData.getCurrentInfo(); 
                currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
                currentMonth = ds.Tables[0].Rows[0]["MONTH"].ToString();
                userId = Session["LM_UserID"].ToString();
                ds = myObjGetTableData.getUserInfo(userId);
                userGazarId = ds.Tables[0].Rows[0]["GAZARID"].ToString();

                divsrvclientTab1Year.InnerHtml = currentYear;
                divsrvclientTab1Month.InnerHtml = currentMonth;
                srvclientTab1SelectYear.SelectedIndex = srvclientTab1SelectYear.Items.IndexOf(srvclientTab1SelectYear.Items.FindByValue(currentYear));
                srvclientTab1SelectMonth.SelectedIndex = srvclientTab1SelectMonth.Items.IndexOf(srvclientTab1SelectMonth.Items.FindByValue(currentMonth));
                srvclientTab1SelectMonth2.SelectedIndex = srvclientTab1SelectMonth2.Items.IndexOf(srvclientTab1SelectMonth2.Items.FindByValue(currentMonth));
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