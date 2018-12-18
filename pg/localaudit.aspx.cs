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
    public partial class localaudit : System.Web.UI.Page
    {
        string currentYear = "", currentQuarter = "", userId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LM_UserID"] == null) Response.Redirect("~/login.aspx");
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
                        localauditTab1Li.Style.Add("display", "block");
                        localauditTab2Li.Style.Add("display", "block");
                        localauditTab3Li.Style.Add("display", "none");
                        localauditTab4Li.Style.Add("display", "none");
                        localauditTab1Li.Attributes["class"] = "active";
                        localauditTab2Li.Attributes["class"] = "";
                        localauditTab3Li.Attributes["class"] = "";
                        localauditTab4Li.Attributes["class"] = "";

                        localauditTab1.Attributes["class"] = "tab-pane active";
                        localauditTab2.Attributes["class"] = "tab-pane";
                        localauditTab3.Attributes["class"] = "tab-pane";
                        localauditTab4.Attributes["class"] = "tab-pane";
                    }
                    else if (Request.QueryString["t"] == "impl")
                    {
                        localauditTab1Li.Style.Add("display", "none");
                        localauditTab2Li.Style.Add("display", "none");
                        localauditTab3Li.Style.Add("display", "block");
                        localauditTab4Li.Style.Add("display", "block");
                        localauditTab1Li.Attributes["class"] = "";
                        localauditTab2Li.Attributes["class"] = "";
                        localauditTab3Li.Attributes["class"] = "active";
                        localauditTab4Li.Attributes["class"] = "";

                        localauditTab1.Attributes["class"] = "tab-pane";
                        localauditTab2.Attributes["class"] = "tab-pane";
                        localauditTab3.Attributes["class"] = "tab-pane active";
                        localauditTab4.Attributes["class"] = "tab-pane";
                    }
                    else
                    {
                        localauditTab1Li.Style.Add("display", "block");
                        localauditTab2Li.Style.Add("display", "block");
                        localauditTab3Li.Style.Add("display", "block");
                        localauditTab4Li.Style.Add("display", "block");
                        localauditTab1Li.Attributes["class"] = "active";
                        localauditTab2Li.Attributes["class"] = "";
                        localauditTab3Li.Attributes["class"] = "";
                        localauditTab4Li.Attributes["class"] = "";

                        localauditTab1.Attributes["class"] = "tab-pane active";
                        localauditTab2.Attributes["class"] = "tab-pane";
                        localauditTab3.Attributes["class"] = "tab-pane";
                        localauditTab4.Attributes["class"] = "tab-pane";
                    }
                }
                else
                {
                    localauditTab1Li.Style.Add("display", "block");
                    localauditTab2Li.Style.Add("display", "block");
                    localauditTab3Li.Style.Add("display", "block");
                    localauditTab4Li.Style.Add("display", "block");
                    localauditTab1Li.Attributes["class"] = "active";
                    localauditTab2Li.Attributes["class"] = "";
                    localauditTab3Li.Attributes["class"] = "";
                    localauditTab4Li.Attributes["class"] = "";

                    localauditTab1.Attributes["class"] = "tab-pane active";
                    localauditTab2.Attributes["class"] = "tab-pane";
                    localauditTab3.Attributes["class"] = "tab-pane";
                    localauditTab4.Attributes["class"] = "tab-pane";
                }

                DataSet ds = myObjGetTableData.getCurrentInfo();
                currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
                currentQuarter = ds.Tables[0].Rows[0]["QUARTER"].ToString();
                userId = Session["LM_UserID"].ToString();
                DataTable dt = new DataTable();
                localauditCurrentYear1.InnerHtml = currentYear;
                localauditCurrentYear2.InnerHtml = currentYear;
                localauditCurrentYear3.InnerHtml = currentYear;
                localauditCurrentQuarter1.InnerHtml = currentQuarter;
                localauditTab1SelectYear.SelectedIndex = localauditTab1SelectYear.Items.IndexOf(localauditTab1SelectYear.Items.FindByValue(currentYear));
                localauditTab2SelectYear.SelectedIndex = localauditTab2SelectYear.Items.IndexOf(localauditTab2SelectYear.Items.FindByValue(currentYear));
                localauditTab3SelectYear.SelectedIndex = localauditTab3SelectYear.Items.IndexOf(localauditTab3SelectYear.Items.FindByValue(currentYear));
                localauditTab3SelectQuarter.SelectedIndex = localauditTab3SelectQuarter.Items.IndexOf(localauditTab3SelectQuarter.Items.FindByValue(currentQuarter));

                if (!myObjGetTableData.UserCheckRoles(userId, "1,19"))
                {
                    divlocalauditTab1Add.Style.Add("display", "none");
                    divlocalauditTab2Add.Style.Add("display", "none");
                }

                //tab4t1
                divtogtoolTab4t1Year1.InnerHtml = currentYear;
                divtogtoolTab4t1Quarter1.InnerHtml = currentQuarter;
                divtogtoolTab4t1Year2.InnerHtml = currentYear;
                localauditTab4t1SelectYear.SelectedIndex = localauditTab4t1SelectYear.Items.IndexOf(localauditTab4t1SelectYear.Items.FindByValue(currentYear));
                localauditTab4t1SelectQuarter.SelectedIndex = localauditTab4t1SelectQuarter.Items.IndexOf(localauditTab4t1SelectQuarter.Items.FindByValue(currentQuarter));
                //tab4t2
                divtogtoolTab4t2Year1.InnerHtml = currentYear;
                divtogtoolTab4t2Quarter1.InnerHtml = currentQuarter;
                localauditTab4t2SelectYear.SelectedIndex = localauditTab4t2SelectYear.Items.IndexOf(localauditTab4t2SelectYear.Items.FindByValue(currentYear));
                localauditTab4t2SelectQuarter.SelectedIndex = localauditTab4t2SelectQuarter.Items.IndexOf(localauditTab4t2SelectQuarter.Items.FindByValue(currentQuarter));
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