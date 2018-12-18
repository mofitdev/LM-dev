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
    public partial class mofnews : System.Web.UI.Page
    {
        string currentYear = "", currentMonth = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LM_UserID"] == null) Response.Redirect("~/login");
            else setDatas();   
        }
        protected void setDatas()
        {
            GetTableData myObjGetTableData = new GetTableData();
            try {
                DataSet ds = myObjGetTableData.getCurrentInfo();
                currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
                currentMonth = ds.Tables[0].Rows[0]["MONTH"].ToString();
                mofnewsCurrentYear1.InnerHtml = currentYear;
                mofnewsTab1PlanSelectYear.SelectedIndex = mofnewsTab1PlanSelectYear.Items.IndexOf(mofnewsTab1PlanSelectYear.Items.FindByValue(currentYear));
                mofnewsTab2SelectYear.SelectedIndex = mofnewsTab2SelectYear.Items.IndexOf(mofnewsTab2SelectYear.Items.FindByValue(currentYear));
                mofnewsTab3SelectYear.SelectedIndex = mofnewsTab3SelectYear.Items.IndexOf(mofnewsTab3SelectYear.Items.FindByValue(currentYear));
                mofnewsTab2SelectMonth.SelectedIndex = mofnewsTab2SelectMonth.Items.IndexOf(mofnewsTab2SelectMonth.Items.FindByValue(currentMonth));
                mofnewsTab3SelectMonth.SelectedIndex = mofnewsTab3SelectMonth.Items.IndexOf(mofnewsTab3SelectMonth.Items.FindByValue(currentMonth));
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