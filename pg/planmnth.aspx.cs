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
    public partial class planmnth : System.Web.UI.Page
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
                string currentYear = "", currentQuarter = "", currentMonth = "", stid = HttpContext.Current.Session["LM_UserID"].ToString();
                DataSet ds = myObjGetTableData.getCurrentInfo();
                currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
                currentQuarter = ds.Tables[0].Rows[0]["QUARTER"].ToString();
                currentMonth = ds.Tables[0].Rows[0]["MONTH"].ToString();
                pTab1SelectYear.SelectedIndex = pTab1SelectYear.Items.IndexOf(pTab1SelectYear.Items.FindByValue(currentYear));
                pTab1SelectMonth.SelectedIndex = pTab1SelectMonth.Items.IndexOf(pTab1SelectMonth.Items.FindByValue(currentMonth));
                pTab2SelectYear.SelectedIndex = pTab2SelectYear.Items.IndexOf(pTab2SelectYear.Items.FindByValue(currentYear));
                pTab2SelectMonth.SelectedIndex = pTab2SelectMonth.Items.IndexOf(pTab2SelectMonth.Items.FindByValue(currentMonth));
                pTab3SelectYear.SelectedIndex = pTab3SelectYear.Items.IndexOf(pTab3SelectYear.Items.FindByValue(currentYear));
                pTab3SelectMonth.SelectedIndex = pTab3SelectMonth.Items.IndexOf(pTab3SelectMonth.Items.FindByValue(currentMonth));
                pTab4t1SelectYear.SelectedIndex = pTab4t1SelectYear.Items.IndexOf(pTab4t1SelectYear.Items.FindByValue(currentYear));
                pTab4t1SelectMonth.SelectedIndex = pTab4t1SelectMonth.Items.IndexOf(pTab4t1SelectMonth.Items.FindByValue(currentMonth));
                pTab4t2SelectYear.SelectedIndex = pTab4t2SelectYear.Items.IndexOf(pTab4t2SelectYear.Items.FindByValue(currentYear));
                pTab4t2SelectMonth.SelectedIndex = pTab4t2SelectMonth.Items.IndexOf(pTab4t2SelectMonth.Items.FindByValue(currentMonth));
                pTab5t1SelectYear.SelectedIndex = pTab5t1SelectYear.Items.IndexOf(pTab5t1SelectYear.Items.FindByValue(currentYear));
                pTab5t1SelectMonth.SelectedIndex = pTab5t1SelectMonth.Items.IndexOf(pTab5t1SelectMonth.Items.FindByValue(currentMonth));
                pTab4t4SelectYear.SelectedIndex = pTab4t4SelectYear.Items.IndexOf(pTab4t4SelectYear.Items.FindByValue(currentYear));
                pTab4t4SelectMonth.SelectedIndex = pTab4t4SelectMonth.Items.IndexOf(pTab4t4SelectMonth.Items.FindByValue(currentMonth));
                pTab4t5SelectYear.SelectedIndex = pTab4t5SelectYear.Items.IndexOf(pTab4t5SelectYear.Items.FindByValue(currentYear));
                pTab4t5SelectMonth.SelectedIndex = pTab4t5SelectMonth.Items.IndexOf(pTab4t5SelectMonth.Items.FindByValue(currentMonth));
                if (Request.QueryString["t"] != null)
                {
                    if (Request.QueryString["t"] == "plan")
                    {
                        pageUrlModuleName.InnerHtml = "> ҮЙЛ АЖИЛЛАГААНЫ САРЫН ТӨЛӨВЛӨГӨӨ";
                        pTab1Li.Style.Add("display", "block");
                        pTab2Li.Style.Add("display", "none");
                        pTab3Li.Style.Add("display", "none");
                        pTab4Li.Style.Add("display", "none");
                        pTab1Li.Attributes["class"] = "active";
                        pTab2Li.Attributes["class"] = "";
                        pTab3Li.Attributes["class"] = "";
                        pTab4Li.Attributes["class"] = "";

                        pTab1.Attributes["class"] = "tab-pane active";
                        pTab2.Attributes["class"] = "tab-pane";
                        pTab3.Attributes["class"] = "tab-pane";
                        pTab4.Attributes["class"] = "tab-pane";
                    }
                    else if (Request.QueryString["t"] == "impl")
                    {
                        pageUrlModuleName.InnerHtml = "> ҮЙЛ АЖИЛЛАГААНЫ САРЫН ТӨЛӨВЛӨГӨӨНИЙ ТАЙЛАН";
                        pTab1Li.Style.Add("display", "none");
                        pTab2Li.Style.Add("display", "block");
                        pTab3Li.Style.Add("display", "block");
                        pTab4Li.Style.Add("display", "block");
                        pTab1Li.Attributes["class"] = "";
                        pTab2Li.Attributes["class"] = "active";
                        pTab3Li.Attributes["class"] = "";
                        pTab4Li.Attributes["class"] = "";

                        pTab1.Attributes["class"] = "tab-pane";
                        pTab2.Attributes["class"] = "tab-pane active";
                        pTab3.Attributes["class"] = "tab-pane";
                        pTab4.Attributes["class"] = "tab-pane";
                    }
                    else
                    {
                        pageUrlModuleName.InnerHtml = "> ҮЙЛ АЖИЛЛАГААНЫ САРЫН ТӨЛӨВЛӨГӨӨ";
                        pTab1Li.Style.Add("display", "block");
                        pTab2Li.Style.Add("display", "block");
                        pTab3Li.Style.Add("display", "block");
                        pTab4Li.Style.Add("display", "block");
                        pTab1Li.Attributes["class"] = "active";
                        pTab2Li.Attributes["class"] = "";
                        pTab3Li.Attributes["class"] = "";
                        pTab4Li.Attributes["class"] = "";

                        pTab1.Attributes["class"] = "tab-pane active";
                        pTab2.Attributes["class"] = "tab-pane";
                        pTab3.Attributes["class"] = "tab-pane";
                        pTab4.Attributes["class"] = "tab-pane";
                    }
                }
                else
                {
                    pageUrlModuleName.InnerHtml = "> ҮЙЛ АЖИЛЛАГААНЫ САРЫН ТӨЛӨВЛӨГӨӨ";
                    pTab1Li.Style.Add("display", "block");
                    pTab2Li.Style.Add("display", "block");
                    pTab3Li.Style.Add("display", "block");
                    pTab4Li.Style.Add("display", "block");
                    pTab1Li.Attributes["class"] = "active";
                    pTab2Li.Attributes["class"] = "";
                    pTab3Li.Attributes["class"] = "";
                    pTab4Li.Attributes["class"] = "";

                    pTab1.Attributes["class"] = "tab-pane active";
                    pTab2.Attributes["class"] = "tab-pane";
                    pTab3.Attributes["class"] = "tab-pane";
                    pTab4.Attributes["class"] = "tab-pane";
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