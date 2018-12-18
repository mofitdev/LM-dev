using LMWebApp.cs;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMWebApp.pg
{
    public partial class eg : System.Web.UI.Page
    {
        string currentYear = "", currentYearHalf="";
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
                if (Request.QueryString["t"] != null)
                {
                    if (Request.QueryString["t"] == "plan")
                    {
                        egTab1HeadLi1.Style.Add("display", "block");
                        egTab1HeadLi2.Style.Add("display", "block");
                        egTab1HeadLi3.Style.Add("display", "block");
                        egTab1HeadLi4.Style.Add("display", "none");
                        egTab1HeadLi5.Style.Add("display", "none");
                        egTab1HeadLi6.Style.Add("display", "none");
                        egTab1HeadLi1.Attributes["class"] = "";
                        egTab1HeadLi2.Attributes["class"] = "";
                        egTab1HeadLi3.Attributes["class"] = "active";
                        egTab1HeadLi4.Attributes["class"] = "";
                        egTab1HeadLi5.Attributes["class"] = "";
                        egTab1HeadLi6.Attributes["class"] = "";

                        egTab1.Attributes["class"] = "tab-pane";
                        egTab2.Attributes["class"] = "tab-pane";
                        egTab3.Attributes["class"] = "tab-pane active";
                        egTab4.Attributes["class"] = "tab-pane";
                        egTab5.Attributes["class"] = "tab-pane";
                        egTab6.Attributes["class"] = "tab-pane";
                    }
                    else if (Request.QueryString["t"] == "impl")
                    {
                        egTab1HeadLi1.Style.Add("display", "none");
                        egTab1HeadLi2.Style.Add("display", "none");
                        egTab1HeadLi3.Style.Add("display", "none");
                        egTab1HeadLi4.Style.Add("display", "block");
                        egTab1HeadLi5.Style.Add("display", "block");
                        egTab1HeadLi6.Style.Add("display", "block");
                        egTab1HeadLi1.Attributes["class"] = "";
                        egTab1HeadLi2.Attributes["class"] = "";
                        egTab1HeadLi3.Attributes["class"] = "";
                        egTab1HeadLi4.Attributes["class"] = "active";
                        egTab1HeadLi5.Attributes["class"] = "";
                        egTab1HeadLi6.Attributes["class"] = "";

                        egTab1.Attributes["class"] = "tab-pane";
                        egTab2.Attributes["class"] = "tab-pane";
                        egTab3.Attributes["class"] = "tab-pane";
                        egTab4.Attributes["class"] = "tab-pane active";
                        egTab5.Attributes["class"] = "tab-pane";
                        egTab6.Attributes["class"] = "tab-pane";
                    }
                    else
                    {
                        egTab1HeadLi1.Style.Add("display", "block");
                        egTab1HeadLi2.Style.Add("display", "block");
                        egTab1HeadLi3.Style.Add("display", "block");
                        egTab1HeadLi4.Style.Add("display", "block");
                        egTab1HeadLi5.Style.Add("display", "block");
                        egTab1HeadLi6.Style.Add("display", "block");
                        egTab1HeadLi1.Attributes["class"] = "";
                        egTab1HeadLi2.Attributes["class"] = "";
                        egTab1HeadLi3.Attributes["class"] = "active";
                        egTab1HeadLi4.Attributes["class"] = "";
                        egTab1HeadLi5.Attributes["class"] = "";
                        egTab1HeadLi6.Attributes["class"] = "";

                        egTab1.Attributes["class"] = "tab-pane";
                        egTab2.Attributes["class"] = "tab-pane";
                        egTab3.Attributes["class"] = "tab-pane active";
                        egTab4.Attributes["class"] = "tab-pane";
                        egTab5.Attributes["class"] = "tab-pane";
                        egTab6.Attributes["class"] = "tab-pane";
                    }
                }
                else
                {
                    egTab1HeadLi1.Style.Add("display", "block");
                    egTab1HeadLi2.Style.Add("display", "block");
                    egTab1HeadLi3.Style.Add("display", "block");
                    egTab1HeadLi4.Style.Add("display", "block");
                    egTab1HeadLi5.Style.Add("display", "block");
                    egTab1HeadLi6.Style.Add("display", "block");
                    egTab1HeadLi1.Attributes["class"] = "";
                    egTab1HeadLi2.Attributes["class"] = "";
                    egTab1HeadLi3.Attributes["class"] = "active";
                    egTab1HeadLi4.Attributes["class"] = "";
                    egTab1HeadLi5.Attributes["class"] = "";
                    egTab1HeadLi6.Attributes["class"] = "";

                    egTab1.Attributes["class"] = "tab-pane";
                    egTab2.Attributes["class"] = "tab-pane";
                    egTab3.Attributes["class"] = "tab-pane active";
                    egTab4.Attributes["class"] = "tab-pane";
                    egTab5.Attributes["class"] = "tab-pane";
                    egTab6.Attributes["class"] = "tab-pane";
                }
                DataSet ds = myObjGetTableData.getCurrentInfo();
                currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
                currentYearHalf = ds.Tables[0].Rows[0]["YEARHALF"].ToString();
                egPolicyModalCurrentYr.InnerHtml = currentYear;
                egObjectModalCurrentYr.InnerHtml = currentYear;
                egWorkModalCurrentYr.InnerHtml = currentYear;
                egImplModalCurrentYr.InnerHtml = currentYear;

                egTab4SelectYearHalf.SelectedIndex = egTab4SelectYearHalf.Items.IndexOf(egTab4SelectYearHalf.Items.FindByValue(currentYearHalf));

                egTab1SelectYear.SelectedIndex = egTab1SelectYear.Items.IndexOf(egTab1SelectYear.Items.FindByValue(currentYear));
                egTab2SelectYear.SelectedIndex = egTab2SelectYear.Items.IndexOf(egTab2SelectYear.Items.FindByValue(currentYear));
                egTab3SelectYear.SelectedIndex = egTab3SelectYear.Items.IndexOf(egTab3SelectYear.Items.FindByValue(currentYear));
                egTab4SelectYear.SelectedIndex = egTab4SelectYear.Items.IndexOf(egTab4SelectYear.Items.FindByValue(currentYear));

                egTab5t1SelectYear.SelectedIndex = egTab5t1SelectYear.Items.IndexOf(egTab5t1SelectYear.Items.FindByValue(currentYear));
                egTab5t1SelectYearHalf.SelectedIndex = egTab5t1SelectYearHalf.Items.IndexOf(egTab5t1SelectYearHalf.Items.FindByValue(currentYearHalf));
                egTab5t1Year.InnerHtml = currentYear;
                egTab5t1YearHalf.InnerHtml = currentYearHalf.Replace("1", "ЭХНИЙ ХАГАС ЖИЛИЙН").Replace("2", "ЖИЛИЙН ЭЦСИЙН");
                //divegTab5t1Table.InnerHtml = myObjGetTableData.GetEGTab5T1(currentYear, currentYearHalf, "3");
                egTab5t2SelectYear.SelectedIndex = egTab5t2SelectYear.Items.IndexOf(egTab5t2SelectYear.Items.FindByValue(currentYear));
                egTab5t2SelectYearHalf.SelectedIndex = egTab5t2SelectYearHalf.Items.IndexOf(egTab5t2SelectYearHalf.Items.FindByValue(currentYearHalf));
                egTab5t2Year.InnerHtml = currentYear;
                egTab5t2YearHalf.InnerHtml = currentYearHalf.Replace("1", "ЭХНИЙ ХАГАС ЖИЛИЙН").Replace("2", "ЖИЛИЙН ЭЦСИЙН");
                //divegTab5t2Table.InnerHtml = myObjGetTableData.GetEGTab5T2(currentYear, currentYearHalf, "3", "0");
                egTab5t3SelectYear.SelectedIndex = egTab5t3SelectYear.Items.IndexOf(egTab5t3SelectYear.Items.FindByValue(currentYear));
                egTab5t3SelectYearHalf.SelectedIndex = egTab5t3SelectYearHalf.Items.IndexOf(egTab5t3SelectYearHalf.Items.FindByValue(currentYearHalf));
                egTab5t3Year.InnerHtml = currentYear;
                egTab5t3YearHalf.InnerHtml = currentYearHalf.Replace("1", "ЭХНИЙ ХАГАС ЖИЛИЙН").Replace("2", "ЖИЛИЙН ЭЦСИЙН");
                //divegTab5t3Table.InnerHtml = myObjGetTableData.GetEGTab5T3(currentYear, currentYearHalf, "3", "0", "all");
                egTab6t1SelectYear.SelectedIndex = egTab6t1SelectYear.Items.IndexOf(egTab6t1SelectYear.Items.FindByValue(currentYear));
                egTab6t1Year.InnerHtml = currentYear;
                //divegTab6t1Table.InnerHtml = myObjGetTableData.GetEGTab6T1(currentYear, "all", "0");
                //DataTable dt = new DataTable();
                //dt.Load(cs.ModifyDB.OracleExecuteReader("SELECT '0' as BR_ID, CAST('Бүгд' as VARCHAR2(200)) as DOMAIN_ORG FROM DUAL UNION ALL SELECT BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=3 AND BR_ID!=9911"));
                //cs.ModifyDB.DBDisconnect();
                //egTab5t2SelectBranch.DataSource = dt;
                //egTab5t2SelectBranch.DataTextField = "DOMAIN_ORG";
                //egTab5t2SelectBranch.DataValueField = "BR_ID";
                //egTab5t2SelectBranch.DataBind();
                //egTab5t3SelectBranch.DataSource = dt;
                //egTab5t3SelectBranch.DataTextField = "DOMAIN_ORG";
                //egTab5t3SelectBranch.DataValueField = "BR_ID";
                //egTab5t3SelectBranch.DataBind();
                //egTab4SelectBranch.DataSource = dt;
                //egTab4SelectBranch.DataTextField = "DOMAIN_ORG";
                //egTab4SelectBranch.DataValueField = "BR_ID";
                //egTab4SelectBranch.DataBind();
                //egTab6t1SelectBranch.DataSource = dt;
                //egTab6t1SelectBranch.DataTextField = "DOMAIN_ORG";
                //egTab6t1SelectBranch.DataValueField = "BR_ID";
                //egTab6t1SelectBranch.DataBind();
                //egTab6t3SelectBranch.DataSource = dt;
                //egTab6t3SelectBranch.DataTextField = "DOMAIN_ORG";
                //egTab6t3SelectBranch.DataValueField = "BR_ID";
                //egTab6t3SelectBranch.DataBind();
                //egTab6t4SelectBranch.DataSource = dt;
                //egTab6t4SelectBranch.DataTextField = "DOMAIN_ORG";
                //egTab6t4SelectBranch.DataValueField = "BR_ID";
                //egTab6t4SelectBranch.DataBind();

                egTab6t2SelectYear.SelectedIndex = egTab2SelectYear.Items.IndexOf(egTab2SelectYear.Items.FindByValue(currentYear));
                egTab6t2SelectYearHalf.SelectedIndex = egTab6t2SelectYearHalf.Items.IndexOf(egTab6t2SelectYearHalf.Items.FindByValue(currentYearHalf));
                egTab6t2InputTushaal.Value = "2013 оны 06 дугаар сарын 13-ны 136";
                egTab6t2InputTogtool.Value = "2013 оны “Захиргааны байгууллагын хяналт-шинжилгээ, үнэлгээний нийтлэг журам батлах тухай” 322 дугаар";
                egTab6t2Year.InnerHtml = currentYear;
                egTab6t2Year2.InnerHtml = currentYear;
                egTab6t2YearHalf.InnerHtml = egTab6t2SelectYearHalf.Items[egTab6t2SelectYearHalf.SelectedIndex].Value.Replace("1", "эхний хагас жилийн").Replace("2", "жилийн эцсийн");
                egTab6t2Year3.InnerHtml = currentYear;
                egTab6t2Tushaal.InnerHtml = egTab6t2InputTushaal.Value;

                string worksInDatas = myObjGetTableData.GetEGTab6T1Datas(currentYear, egTab6t2SelectYearHalf.Items[egTab6t2SelectYearHalf.SelectedIndex].Value);
                string[] arrWorksInDatas = worksInDatas.Split('~');
                egTab6t2WorkTeam0.InnerHtml = arrWorksInDatas[0];
                egTab6t2WorkTeam1.InnerHtml = arrWorksInDatas[1];
                egTab6t2WorkTeam.InnerHtml = (Int32.Parse(arrWorksInDatas[1]) + Int32.Parse(arrWorksInDatas[0])).ToString();
                egTab6t2Togtool.InnerHtml = egTab6t2InputTogtool.Value;
                egTab6t2Year4.InnerHtml = currentYear;
                egTab6t2Year5.InnerHtml = currentYear;
                egTab6t2YearHalf2.InnerHtml = egTab6t2SelectYearHalf.Items[egTab6t2SelectYearHalf.SelectedIndex].Value.Replace("1", "эхний хагас жилийн").Replace("2", "жилийн эцсийн");
                egTab6t2TotalPercent.InnerHtml = Math.Round(Convert.ToDouble(arrWorksInDatas[2]), 1).ToString();

                //divegTab6t2Table1.InnerHtml = myObjGetTableData.GetEGTab5T1(currentYear, egTab6t2SelectYearHalf.Items[egTab6t2SelectYearHalf.SelectedIndex].Value, "3");
                //divegTab6t2Table2.InnerHtml = myObjGetTableData.GetEGTab5T2(currentYear, egTab6t2SelectYearHalf.Items[egTab6t2SelectYearHalf.SelectedIndex].Value, "3", "0");
                //divegTab6t2Table3.InnerHtml = myObjGetTableData.GetEGTab5T3(currentYear, egTab6t2SelectYearHalf.Items[egTab6t2SelectYearHalf.SelectedIndex].Value, "3", "0", "all");

                egTab6t3SelectYear.SelectedIndex = egTab6t3SelectYear.Items.IndexOf(egTab6t3SelectYear.Items.FindByValue(currentYear));
                egTab6t3SelectYearHalf.SelectedIndex = egTab6t3SelectYearHalf.Items.IndexOf(egTab6t3SelectYearHalf.Items.FindByValue(currentYearHalf));
                egTab6t3Year.InnerHtml = currentYear;
                egTab6t3Year2.InnerHtml = currentYear;
                egTab6t3YearHalf.InnerHtml = currentYearHalf.Replace("1", "эхний хагас жилийн").Replace("2", "жилийн эцсийн");
                //divegTab6t3Table.InnerHtml = myObjGetTableData.GetEGTab6T3(currentYear, currentYearHalf, "3", "0");

                egTab6t4SelectYear.SelectedIndex = egTab6t4SelectYear.Items.IndexOf(egTab6t4SelectYear.Items.FindByValue(currentYear));
                egTab6t4SelectYearHalf.SelectedIndex = egTab6t4SelectYearHalf.Items.IndexOf(egTab6t4SelectYearHalf.Items.FindByValue(currentYearHalf));
                egTab6t4Year.InnerHtml = currentYear;
                egTab6t4Year2.InnerHtml = currentYear;
                egTab6t4YearHalf.InnerHtml = currentYearHalf.Replace("1", "эхний хагас жилийн").Replace("2", "жилийн эцсийн");
                //divegTab6t4Table1.InnerHtml = myObjGetTableData.GetEGTab6T4(currentYear, egTab6t4SelectYearHalf.Items[egTab6t4SelectYearHalf.SelectedIndex].Value, "all", "3", "0");

                if (!myObjGetTableData.UserCheckRoles(Session["LM_UserID"].ToString(), "1"))
                {
                    if (!myObjGetTableData.UserCheckRoles(Session["LM_UserID"].ToString(), "23"))
                    {
                        egTab1Add.Visible = false;
                        egTab2Add.Visible = false;
                        egTab3Add.Visible = false;
                    }
                    else
                    {
                        egTab1Add.Visible = true;
                        egTab2Add.Visible = true;
                        egTab3Add.Visible = true;
                    }
                }
                else
                {
                    egTab1Add.Visible = true;
                    egTab2Add.Visible = true;
                    egTab3Add.Visible = true;
                }
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