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
    public partial class planyr : System.Web.UI.Page
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
                pTab2SelectYear.SelectedIndex = pTab2SelectYear.Items.IndexOf(pTab2SelectYear.Items.FindByValue(currentYear));
                pTab3SelectYear.SelectedIndex = pTab3SelectYear.Items.IndexOf(pTab3SelectYear.Items.FindByValue(currentYear));
                pTab4SelectYear.SelectedIndex = pTab4SelectYear.Items.IndexOf(pTab4SelectYear.Items.FindByValue(currentYear));
                pTab4SelectQuarter.SelectedIndex = pTab4SelectQuarter.Items.IndexOf(pTab4SelectQuarter.Items.FindByValue(currentQuarter));
                pTab5SelectYear.SelectedIndex = pTab5SelectYear.Items.IndexOf(pTab5SelectYear.Items.FindByValue(currentYear));
                pTab5SelectQuarter.SelectedIndex = pTab5SelectQuarter.Items.IndexOf(pTab5SelectQuarter.Items.FindByValue(currentQuarter));
                pTab6t1SelectYear.SelectedIndex = pTab6t1SelectYear.Items.IndexOf(pTab6t1SelectYear.Items.FindByValue(currentYear));
                pTab6t1SelectQuarter.SelectedIndex = pTab6t1SelectQuarter.Items.IndexOf(pTab6t1SelectQuarter.Items.FindByValue(currentQuarter));
                pTab6t2SelectYear.SelectedIndex = pTab6t2SelectYear.Items.IndexOf(pTab6t2SelectYear.Items.FindByValue(currentYear));
                pTab6t2SelectQuarter.SelectedIndex = pTab6t2SelectQuarter.Items.IndexOf(pTab6t2SelectQuarter.Items.FindByValue(currentQuarter));
                pTab6t3SelectYear.SelectedIndex = pTab6t3SelectYear.Items.IndexOf(pTab6t3SelectYear.Items.FindByValue(currentYear));
                pTab6t3SelectQuarter.SelectedIndex = pTab6t3SelectQuarter.Items.IndexOf(pTab6t3SelectQuarter.Items.FindByValue(currentQuarter));
                pTab7t1SelectYear.SelectedIndex = pTab7t1SelectYear.Items.IndexOf(pTab7t1SelectYear.Items.FindByValue(currentYear));
                pTab7t1SelectQuarter.SelectedIndex = pTab7t1SelectQuarter.Items.IndexOf(pTab7t1SelectQuarter.Items.FindByValue(currentQuarter));
                pTab6t5SelectYear.SelectedIndex = pTab6t5SelectYear.Items.IndexOf(pTab6t5SelectYear.Items.FindByValue(currentYear));
                if (!myObjGetTableData.UserCheckRoles(stid, "1,8"))
                {
                    pTab1Add.Visible = false;
                    pTab2Add.Visible = false;
                }
                else
                {
                    pTab1Add.Visible = true;
                    pTab2Add.Visible = true;
                }
                if (Request.QueryString["t"] != null)
                {
                    if (Request.QueryString["t"] == "plan")
                    {
                        pageUrlModuleName.InnerHtml = "> Жилийн төлөвлөгөө";
                        pTab1Li.Style.Add("display", "block");
                        //pTab2Li.Style.Add("display", "block");
                        //pTab3Li.Style.Add("display", "block");
                        pTab4Li.Style.Add("display", "none");
                        pTab5Li.Style.Add("display", "none");
                        pTab6Li.Style.Add("display", "none");
                        //pTab7Li.Style.Add("display", "none");
                        pTab1Li.Attributes["class"] = "active";
                        //pTab2Li.Attributes["class"] = "";
                        //pTab3Li.Attributes["class"] = "active";
                        pTab4Li.Attributes["class"] = "";
                        pTab5Li.Attributes["class"] = "";
                        pTab6Li.Attributes["class"] = "";
                        //pTab7Li.Attributes["class"] = "";

                        pTab1.Attributes["class"] = "tab-pane active";
                        //pTab2.Attributes["class"] = "tab-pane";
                        //pTab3.Attributes["class"] = "tab-pane active";
                        pTab4.Attributes["class"] = "tab-pane";
                        pTab5.Attributes["class"] = "tab-pane";
                        pTab6.Attributes["class"] = "tab-pane";
                        //pTab7.Attributes["class"] = "tab-pane";
                    }
                    else if (Request.QueryString["t"] == "impl")
                    {
                        pageUrlModuleName.InnerHtml = "> Жилийн тайлан";
                        pTab1Li.Style.Add("display", "none");
                        //pTab2Li.Style.Add("display", "none");
                        //pTab3Li.Style.Add("display", "none");
                        pTab4Li.Style.Add("display", "block");
                        pTab5Li.Style.Add("display", "block");
                        pTab6Li.Style.Add("display", "block");
                        //pTab7Li.Style.Add("display", "block");
                        pTab1Li.Attributes["class"] = "";
                        //pTab2Li.Attributes["class"] = "";
                        //pTab3Li.Attributes["class"] = "";
                        pTab4Li.Attributes["class"] = "active";
                        pTab5Li.Attributes["class"] = "";
                        pTab6Li.Attributes["class"] = "";
                        //pTab7Li.Attributes["class"] = "";

                        pTab1.Attributes["class"] = "tab-pane";
                        //pTab2.Attributes["class"] = "tab-pane";
                        //pTab3.Attributes["class"] = "tab-pane";
                        pTab4.Attributes["class"] = "tab-pane active";
                        pTab5.Attributes["class"] = "tab-pane";
                        pTab6.Attributes["class"] = "tab-pane";
                        //pTab7.Attributes["class"] = "tab-pane";
                    }
                    else
                    {
                        pageUrlModuleName.InnerHtml = "> Жилийн төлөвлөгөө";
                        pTab1Li.Style.Add("display", "block");
                        //pTab2Li.Style.Add("display", "block");
                        //pTab3Li.Style.Add("display", "block");
                        pTab4Li.Style.Add("display", "block");
                        pTab5Li.Style.Add("display", "block");
                        pTab6Li.Style.Add("display", "block");
                        //pTab7Li.Style.Add("display", "block");
                        pTab1Li.Attributes["class"] = "active";
                        //pTab2Li.Attributes["class"] = "";
                        //pTab3Li.Attributes["class"] = "active";
                        pTab4Li.Attributes["class"] = "";
                        pTab5Li.Attributes["class"] = "";
                        pTab6Li.Attributes["class"] = "";
                        //pTab7Li.Attributes["class"] = "";

                        pTab1.Attributes["class"] = "tab-pane active";
                        //pTab2.Attributes["class"] = "tab-pane";
                        //pTab3.Attributes["class"] = "tab-pane active";
                        pTab4.Attributes["class"] = "tab-pane";
                        pTab5.Attributes["class"] = "tab-pane";
                        pTab6.Attributes["class"] = "tab-pane";
                        //pTab7.Attributes["class"] = "tab-pane";
                    }
                }
                else
                {
                    pageUrlModuleName.InnerHtml = "> Жилийн төлөвлөгөө";
                    pTab1Li.Style.Add("display", "block");
                    //pTab2Li.Style.Add("display", "block");
                    //pTab3Li.Style.Add("display", "block");
                    pTab4Li.Style.Add("display", "block");
                    pTab5Li.Style.Add("display", "block");
                    pTab6Li.Style.Add("display", "block");
                    //pTab7Li.Style.Add("display", "block");
                    pTab1Li.Attributes["class"] = "active";
                    //pTab2Li.Attributes["class"] = "";
                    //pTab3Li.Attributes["class"] = "active";
                    pTab4Li.Attributes["class"] = "";
                    pTab5Li.Attributes["class"] = "";
                    pTab6Li.Attributes["class"] = "";
                    //pTab7Li.Attributes["class"] = "";

                    pTab1.Attributes["class"] = "tab-pane active";
                    //pTab2.Attributes["class"] = "tab-pane";
                    //pTab3.Attributes["class"] = "tab-pane active";
                    pTab4.Attributes["class"] = "tab-pane";
                    pTab5.Attributes["class"] = "tab-pane";
                    pTab6.Attributes["class"] = "tab-pane";
                    //pTab7.Attributes["class"] = "tab-pane";
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