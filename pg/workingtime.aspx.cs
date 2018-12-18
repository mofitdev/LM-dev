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
    public partial class workingtime : System.Web.UI.Page
    {
        string currentYear = "", currentMonth = "", stid="", userHeltesId="", userGazarId="";
        DateTime now = DateTime.Now;
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
                stid = HttpContext.Current.Session["LM_UserID"].ToString();
                ds = myObjGetTableData.getUserInfo(stid);
                userGazarId = ds.Tables[0].Rows[0]["GAZARID"].ToString();
                userHeltesId = ds.Tables[0].Rows[0]["HELTESID"].ToString();
                workingtimeTab1SelectYear.SelectedIndex = workingtimeTab1SelectYear.Items.IndexOf(workingtimeTab1SelectYear.Items.FindByText(now.Year.ToString()));
                workingtimeTab1SelectMonth.SelectedIndex = workingtimeTab1SelectMonth.Items.IndexOf(workingtimeTab1SelectMonth.Items.FindByValue(now.Month.ToString()));
                workingtimeTab2SelectYear.SelectedIndex = workingtimeTab2SelectYear.Items.IndexOf(workingtimeTab2SelectYear.Items.FindByText(currentYear));
                workingtimeTab2SelectMonth.SelectedIndex = workingtimeTab2SelectMonth.Items.IndexOf(workingtimeTab2SelectMonth.Items.FindByValue(currentMonth));
                workingtimeTab2SelectMonth2.SelectedIndex = workingtimeTab2SelectMonth2.Items.IndexOf(workingtimeTab2SelectMonth2.Items.FindByValue(currentMonth));
                workingtimeTab3SelectYear.SelectedIndex = workingtimeTab3SelectYear.Items.IndexOf(workingtimeTab3SelectYear.Items.FindByText(currentYear));
                workingtimeTab3SelectMonth.SelectedIndex = workingtimeTab3SelectMonth.Items.IndexOf(workingtimeTab3SelectMonth.Items.FindByValue(currentMonth));
                workingtimeTab3SelectMonth2.SelectedIndex = workingtimeTab3SelectMonth2.Items.IndexOf(workingtimeTab3SelectMonth2.Items.FindByValue(currentMonth));
                workingtimeTab4SelectYear.SelectedIndex = workingtimeTab4SelectYear.Items.IndexOf(workingtimeTab4SelectYear.Items.FindByText(currentYear));
                workingtimeTab4SelectMonth.SelectedIndex = workingtimeTab4SelectMonth.Items.IndexOf(workingtimeTab4SelectMonth.Items.FindByValue(currentMonth));
                workingtimeTab4t2SelectYear.SelectedIndex = workingtimeTab4t2SelectYear.Items.IndexOf(workingtimeTab4t2SelectYear.Items.FindByText(currentYear));
                workingtimeTab4t2SelectMonth.SelectedIndex = workingtimeTab4t2SelectMonth.Items.IndexOf(workingtimeTab4t2SelectMonth.Items.FindByValue(currentMonth));
                workingtimeTab4t2SelectMonth2.SelectedIndex = workingtimeTab4t2SelectMonth2.Items.IndexOf(workingtimeTab4t2SelectMonth2.Items.FindByValue(currentMonth));
                workingtimeTab4t3SelectYear.SelectedIndex = workingtimeTab4t3SelectYear.Items.IndexOf(workingtimeTab4t3SelectYear.Items.FindByValue(currentYear));

                divworkingtimeTab2Year.InnerHtml = currentYear;
                divworkingtimeTab2Month.InnerHtml = currentMonth;
                divworkingtimeTab3Year.InnerHtml = currentYear;
                divworkingtimeTab3Month.InnerHtml = currentMonth;
                divworkingtimeTab4Year.InnerHtml = currentYear;
                divworkingtimeTab4Month.InnerHtml = currentMonth;

                if (Request.QueryString["t"] != null)
                {
                    if (Request.QueryString["t"] == "staff") {
                        workingtimeTab4t1Li.Attributes["class"] = "hide";
                        workingtimeTab4t3Li.Attributes["class"] = "hide";
                    }
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