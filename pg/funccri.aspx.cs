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
    public partial class funccri : System.Web.UI.Page
    {
        string currentYear = "", currentQuarter = "", userId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LM_UserID"] == null) Response.Redirect("~/login");
            else setDatas();   
        }
        protected void setDatas()
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (Request.QueryString["t"] != null)
                {
                    if (Request.QueryString["t"] == "plan")
                    {
                        funccriTab1Li.Style.Add("display", "block");
                        funccriTab2Li.Style.Add("display", "block");
                        funccriTab3Li.Style.Add("display", "none");
                        funccriTab4Li.Style.Add("display", "none");
                        funccriTab1Li.Attributes["class"] = "active";
                        funccriTab2Li.Attributes["class"] = "";
                        funccriTab3Li.Attributes["class"] = "";
                        funccriTab4Li.Attributes["class"] = "";

                        funccriTab1.Attributes["class"] = "tab-pane active";
                        funccriTab2.Attributes["class"] = "tab-pane";
                        funccriTab3.Attributes["class"] = "tab-pane";
                        funccriTab4.Attributes["class"] = "tab-pane";
                    }
                    else if (Request.QueryString["t"] == "impl")
                    {
                        funccriTab1Li.Style.Add("display", "none");
                        funccriTab2Li.Style.Add("display", "none");
                        funccriTab3Li.Style.Add("display", "block");
                        funccriTab4Li.Style.Add("display", "block");
                        funccriTab1Li.Attributes["class"] = "";
                        funccriTab2Li.Attributes["class"] = "";
                        funccriTab3Li.Attributes["class"] = "active";
                        funccriTab4Li.Attributes["class"] = "";

                        funccriTab1.Attributes["class"] = "tab-pane";
                        funccriTab2.Attributes["class"] = "tab-pane";
                        funccriTab3.Attributes["class"] = "tab-pane active";
                        funccriTab4.Attributes["class"] = "tab-pane";
                    }
                    else
                    {
                        funccriTab1Li.Style.Add("display", "block");
                        funccriTab2Li.Style.Add("display", "block");
                        funccriTab3Li.Style.Add("display", "block");
                        funccriTab4Li.Style.Add("display", "block");
                        funccriTab1Li.Attributes["class"] = "active";
                        funccriTab2Li.Attributes["class"] = "";
                        funccriTab3Li.Attributes["class"] = "";
                        funccriTab4Li.Attributes["class"] = "";

                        funccriTab1.Attributes["class"] = "tab-pane active";
                        funccriTab2.Attributes["class"] = "tab-pane";
                        funccriTab3.Attributes["class"] = "tab-pane";
                        funccriTab4.Attributes["class"] = "tab-pane";
                    }
                }
                else
                {
                    funccriTab1Li.Style.Add("display", "block");
                    funccriTab2Li.Style.Add("display", "block");
                    funccriTab3Li.Style.Add("display", "block");
                    funccriTab4Li.Style.Add("display", "block");
                    funccriTab1Li.Attributes["class"] = "active";
                    funccriTab2Li.Attributes["class"] = "";
                    funccriTab3Li.Attributes["class"] = "";
                    funccriTab4Li.Attributes["class"] = "";

                    funccriTab1.Attributes["class"] = "tab-pane active";
                    funccriTab2.Attributes["class"] = "tab-pane";
                    funccriTab3.Attributes["class"] = "tab-pane";
                    funccriTab4.Attributes["class"] = "tab-pane";
                }

                DataSet ds = myObjGetTableData.getCurrentInfo();
                currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
                currentQuarter = ds.Tables[0].Rows[0]["QUARTER"].ToString();
                userId = Session["LM_UserID"].ToString();
                //tab1
                funccriCurrentYear1.InnerHtml = currentYear;
                funcriTab1SelectYear.SelectedIndex = funcriTab1SelectYear.Items.IndexOf(funcriTab1SelectYear.Items.FindByValue(currentYear));
                //tab2
                funccriCurrentYear2.InnerHtml = currentYear;
                funcriTab2SelectYear.SelectedIndex = funcriTab2SelectYear.Items.IndexOf(funcriTab2SelectYear.Items.FindByValue(currentYear));
                //tab3
                funccriCurrentYear3.InnerHtml = currentYear;
                funccriCurrentQuarter3.InnerHtml = currentQuarter;
                funcriTab3SelectYear.SelectedIndex = funcriTab3SelectYear.Items.IndexOf(funcriTab3SelectYear.Items.FindByValue(currentYear));
                funcriTab3SelectQuarter.SelectedIndex = funcriTab3SelectQuarter.Items.IndexOf(funcriTab3SelectQuarter.Items.FindByValue(currentQuarter));
                //tab4
                funccriTab4SelectYear.SelectedIndex = funccriTab4SelectYear.Items.IndexOf(funccriTab4SelectYear.Items.FindByValue(currentYear));
                funccriTab4SelectQuarter.SelectedIndex = funccriTab4SelectQuarter.Items.IndexOf(funccriTab4SelectQuarter.Items.FindByValue(currentQuarter));
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