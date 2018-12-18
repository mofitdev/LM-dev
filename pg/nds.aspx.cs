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
    public partial class nds : System.Web.UI.Page
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
                if (Request.QueryString["t"] != null)
                {
                    if (Request.QueryString["t"] == "plan")
                    {
                        ndsTab1HeadLi1.Style.Add("display", "block");
                        ndsTab1HeadLi2.Style.Add("display", "block");
                        ndsTab1HeadLi3.Style.Add("display", "block");
                        ndsTab1HeadLi4.Style.Add("display", "none");
                        ndsTab1HeadLi5.Style.Add("display", "none");
                        ndsTab1HeadLi6.Style.Add("display", "none");
                        ndsTab1HeadLi1.Attributes["class"] = "";
                        ndsTab1HeadLi2.Attributes["class"] = "";
                        ndsTab1HeadLi3.Attributes["class"] = "active";
                        ndsTab1HeadLi4.Attributes["class"] = "";
                        ndsTab1HeadLi5.Attributes["class"] = "";
                        ndsTab1HeadLi6.Attributes["class"] = "";

                        ndsTab1.Attributes["class"] = "tab-pane";
                        ndsTab2.Attributes["class"] = "tab-pane";
                        ndsTab3.Attributes["class"] = "tab-pane active";
                        ndsTab4.Attributes["class"] = "tab-pane";
                        ndsTab5.Attributes["class"] = "tab-pane";
                        ndsTab6.Attributes["class"] = "tab-pane";
                    }
                    else if (Request.QueryString["t"] == "impl")
                    {
                        ndsTab1HeadLi1.Style.Add("display", "none");
                        ndsTab1HeadLi2.Style.Add("display", "none");
                        ndsTab1HeadLi3.Style.Add("display", "none");
                        ndsTab1HeadLi4.Style.Add("display", "block");
                        ndsTab1HeadLi5.Style.Add("display", "block");
                        ndsTab1HeadLi6.Style.Add("display", "block");
                        ndsTab1HeadLi1.Attributes["class"] = "";
                        ndsTab1HeadLi2.Attributes["class"] = "";
                        ndsTab1HeadLi3.Attributes["class"] = "";
                        ndsTab1HeadLi4.Attributes["class"] = "active";
                        ndsTab1HeadLi5.Attributes["class"] = "";
                        ndsTab1HeadLi6.Attributes["class"] = "";

                        ndsTab1.Attributes["class"] = "tab-pane";
                        ndsTab2.Attributes["class"] = "tab-pane";
                        ndsTab3.Attributes["class"] = "tab-pane";
                        ndsTab4.Attributes["class"] = "tab-pane active";
                        ndsTab5.Attributes["class"] = "tab-pane";
                        ndsTab6.Attributes["class"] = "tab-pane";
                    }
                    else
                    {
                        ndsTab1HeadLi1.Style.Add("display", "block");
                        ndsTab1HeadLi2.Style.Add("display", "block");
                        ndsTab1HeadLi3.Style.Add("display", "block");
                        ndsTab1HeadLi4.Style.Add("display", "block");
                        ndsTab1HeadLi5.Style.Add("display", "block");
                        ndsTab1HeadLi6.Style.Add("display", "block");
                        ndsTab1HeadLi1.Attributes["class"] = "";
                        ndsTab1HeadLi2.Attributes["class"] = "";
                        ndsTab1HeadLi3.Attributes["class"] = "active";
                        ndsTab1HeadLi4.Attributes["class"] = "";
                        ndsTab1HeadLi5.Attributes["class"] = "";
                        ndsTab1HeadLi6.Attributes["class"] = "";

                        ndsTab1.Attributes["class"] = "tab-pane";
                        ndsTab2.Attributes["class"] = "tab-pane";
                        ndsTab3.Attributes["class"] = "tab-pane active";
                        ndsTab4.Attributes["class"] = "tab-pane";
                        ndsTab5.Attributes["class"] = "tab-pane";
                        ndsTab6.Attributes["class"] = "tab-pane";
                    }
                }
                else
                {
                    ndsTab1HeadLi1.Style.Add("display", "block");
                    ndsTab1HeadLi2.Style.Add("display", "block");
                    ndsTab1HeadLi3.Style.Add("display", "block");
                    ndsTab1HeadLi4.Style.Add("display", "block");
                    ndsTab1HeadLi5.Style.Add("display", "block");
                    ndsTab1HeadLi6.Style.Add("display", "block");
                    ndsTab1HeadLi1.Attributes["class"] = "";
                    ndsTab1HeadLi2.Attributes["class"] = "";
                    ndsTab1HeadLi3.Attributes["class"] = "active";
                    ndsTab1HeadLi4.Attributes["class"] = "";
                    ndsTab1HeadLi5.Attributes["class"] = "";
                    ndsTab1HeadLi6.Attributes["class"] = "";

                    ndsTab1.Attributes["class"] = "tab-pane";
                    ndsTab2.Attributes["class"] = "tab-pane";
                    ndsTab3.Attributes["class"] = "tab-pane active";
                    ndsTab4.Attributes["class"] = "tab-pane";
                    ndsTab5.Attributes["class"] = "tab-pane";
                    ndsTab6.Attributes["class"] = "tab-pane";
                }

                currentYear = myObjGetTableData.getCurrentInfo().Tables[0].Rows[0]["YEAR"].ToString();
                //ndsImplModalCurrentYr.InnerHtml = currentYear;
                ndsTab4SelectYear.SelectedIndex = ndsTab4SelectYear.Items.IndexOf(ndsTab4SelectYear.Items.FindByText(currentYear));

                ndsTab5t3Year.InnerHtml = currentYear;
                ndsTab5t1SelectYear.SelectedIndex = ndsTab5t1SelectYear.Items.IndexOf(ndsTab5t1SelectYear.Items.FindByText(currentYear));
                //divndsTab5t1Table.InnerHtml = cs.GetTableData.GetNDSTab5T1(ndsTab5t1SelectShat.Items[ndsTab5t1SelectShat.SelectedIndex].Value.Substring(0, ndsTab5t1SelectShat.Items[ndsTab5t1SelectShat.SelectedIndex].Value.IndexOf("-")), ndsTab5t1SelectShat.Items[ndsTab5t1SelectShat.SelectedIndex].Value.Substring(5, ndsTab5t1SelectShat.Items[ndsTab5t1SelectShat.SelectedIndex].Value.IndexOf("-")), "1", currentYear);

                ndsTab5t2SelectYear.SelectedIndex = ndsTab5t1SelectYear.Items.IndexOf(ndsTab5t1SelectYear.Items.FindByText(currentYear));
                //divndsTab5t2Table.InnerHtml = cs.GetTableData.GetNDSTab5T2(ndsTab5t2SelectShat.Items[ndsTab5t2SelectShat.SelectedIndex].Value.Substring(0, ndsTab5t2SelectShat.Items[ndsTab5t2SelectShat.SelectedIndex].Value.IndexOf("-")), ndsTab5t2SelectShat.Items[ndsTab5t2SelectShat.SelectedIndex].Value.Substring(5, ndsTab5t2SelectShat.Items[ndsTab5t2SelectYear.SelectedIndex].Value.IndexOf("-")), "1", currentYear,"0");

                ndsTab5t2SelectYear.SelectedIndex = ndsTab5t1SelectYear.Items.IndexOf(ndsTab5t1SelectYear.Items.FindByText(currentYear));
                //divndsTab5t3Table.InnerHtml = cs.GetTableData.GetNDSTab5T3(ndsTab5t3SelectShat.Items[ndsTab5t3SelectShat.SelectedIndex].Value.Substring(0, ndsTab5t3SelectShat.Items[ndsTab5t3SelectShat.SelectedIndex].Value.IndexOf("-")), ndsTab5t3SelectShat.Items[ndsTab5t3SelectShat.SelectedIndex].Value.Substring(5, ndsTab5t3SelectShat.Items[ndsTab5t3SelectYear.SelectedIndex].Value.IndexOf("-")), "1", currentYear, "0", "all");

                DataTable dt = new DataTable();
                dt.Load(myObj.OracleExecuteReader("SELECT '0' as BR_ID, CAST('Бүгд' as VARCHAR2(200)) as DOMAIN_ORG FROM DUAL UNION ALL SELECT BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=3 AND BR_ID!=9911"));
                myObj.DBDisconnect();
                //ndsTab5t2SelectBranch.DataSource = dt;
                //ndsTab5t2SelectBranch.DataTextField = "DOMAIN_ORG";
                //ndsTab5t2SelectBranch.DataValueField = "BR_ID";
                //ndsTab5t2SelectBranch.DataBind();
                //ndsTab5t3SelectBranch.DataSource = dt;
                //ndsTab5t3SelectBranch.DataTextField = "DOMAIN_ORG";
                //ndsTab5t3SelectBranch.DataValueField = "BR_ID";
                //ndsTab5t3SelectBranch.DataBind();
                //ndsTab4SelectBranch.DataSource = dt;
                //ndsTab4SelectBranch.DataTextField = "DOMAIN_ORG";
                //ndsTab4SelectBranch.DataValueField = "BR_ID";
                //ndsTab4SelectBranch.DataBind();
                ndsTab6t1SelectBranch.DataSource = dt;
                ndsTab6t1SelectBranch.DataTextField = "DOMAIN_ORG";
                ndsTab6t1SelectBranch.DataValueField = "BR_ID";
                ndsTab6t1SelectBranch.DataBind();
                //ndsTab6t3SelectBranch.DataSource = dt;
                //ndsTab6t3SelectBranch.DataTextField = "DOMAIN_ORG";
                //ndsTab6t3SelectBranch.DataValueField = "BR_ID";
                //ndsTab6t3SelectBranch.DataBind();

                //divndsTab6t1Table.InnerHtml = cs.GetTableData.GetNDSTab6T1(ndsTab6t1SelectYear.Items[ndsTab6t1SelectYear.SelectedIndex].Value.Substring(0, ndsTab6t1SelectYear.Items[ndsTab6t1SelectYear.SelectedIndex].Value.IndexOf("-")), ndsTab6t1SelectYear.Items[ndsTab6t1SelectYear.SelectedIndex].Value.Substring(5, ndsTab6t1SelectYear.Items[ndsTab6t1SelectYear.SelectedIndex].Value.IndexOf("-")), "1", "0");

                ndsTab6t2SelectYear.SelectedIndex = ndsTab6t2SelectYear.Items.IndexOf(ndsTab6t2SelectYear.Items.FindByText(currentYear));
                ndsTab6t2InputTushaal.Value = "2013 оны 06 дугаар сарын 13-ны 136";
                ndsTab6t2InputTogtool.Value = "2013 оны “Журам шинэчлэн батлах тухай” 322";
                ndsTab6t2Year.InnerHtml = currentYear;
                ndsTab6t2Year2.InnerHtml = currentYear;
                ndsTab6t2Tushaal.InnerHtml = ndsTab6t2InputTushaal.Value;
                ndsTab6t2Togtool.InnerHtml = ndsTab6t2InputTogtool.Value;
                string worksInDatas = myObjGetTableData.GetEGTab6T2Datas(ndsTab6t2SelectShat.Items[ndsTab6t2SelectShat.SelectedIndex].Value.Substring(0, ndsTab6t2SelectShat.Items[ndsTab6t2SelectShat.SelectedIndex].Value.IndexOf("-")), ndsTab6t2SelectShat.Items[ndsTab6t2SelectShat.SelectedIndex].Value.Substring(5, ndsTab6t2SelectShat.Items[ndsTab6t2SelectShat.SelectedIndex].Value.IndexOf("-")), "1", currentYear);
                string[] arrWorksInDatas = worksInDatas.Split('~');
                ndsTab6t2WorkWorkCnt.InnerHtml = arrWorksInDatas[0];
                ndsTab6t2WorkCntPolList.InnerHtml = arrWorksInDatas[1];
                ndsTab6t2TotalPercent.InnerHtml = Math.Round(Convert.ToDouble(arrWorksInDatas[2]), 1).ToString();
                ndsTab6t2Tab3Desc.InnerHtml = arrWorksInDatas[3];

                //divndsTab6t2Table1.InnerHtml = cs.GetTableData.GetNDSTab5T1(ndsTab5t1SelectShat.Items[ndsTab5t1SelectShat.SelectedIndex].Value.Substring(0, ndsTab5t1SelectShat.Items[ndsTab5t1SelectShat.SelectedIndex].Value.IndexOf("-")), ndsTab5t1SelectShat.Items[ndsTab5t1SelectShat.SelectedIndex].Value.Substring(5, ndsTab5t1SelectShat.Items[ndsTab5t1SelectShat.SelectedIndex].Value.IndexOf("-")), "1", currentYear);
                //divndsTab6t2Table2.InnerHtml=cs.GetTableData.GetNDSTab5T2(ndsTab5t2SelectShat.Items[ndsTab5t2SelectShat.SelectedIndex].Value.Substring(0, ndsTab5t2SelectShat.Items[ndsTab5t2SelectShat.SelectedIndex].Value.IndexOf("-")), ndsTab5t2SelectShat.Items[ndsTab5t2SelectShat.SelectedIndex].Value.Substring(5, ndsTab5t2SelectShat.Items[ndsTab5t2SelectYear.SelectedIndex].Value.IndexOf("-")), "1", currentYear,"0");
                //divndsTab6t2Table3.InnerHtml = cs.GetTableData.GetNDSTab5T3(ndsTab5t3SelectShat.Items[ndsTab5t3SelectShat.SelectedIndex].Value.Substring(0, ndsTab5t3SelectShat.Items[ndsTab5t3SelectShat.SelectedIndex].Value.IndexOf("-")), ndsTab5t3SelectShat.Items[ndsTab5t3SelectShat.SelectedIndex].Value.Substring(5, ndsTab5t3SelectShat.Items[ndsTab5t3SelectYear.SelectedIndex].Value.IndexOf("-")), "1", currentYear, "0", "all");

                ndsTab6t3SelectYear.SelectedIndex = ndsTab6t3SelectYear.Items.IndexOf(ndsTab6t3SelectYear.Items.FindByText(currentYear));
                ndsTab6t3Year.InnerHtml = currentYear;
                //divndsTab6t3Table.InnerHtml = cs.GetTableData.GetNDSTab6T3(ndsTab6t3SelectShat.Items[ndsTab6t3SelectShat.SelectedIndex].Value.Substring(0, ndsTab6t3SelectShat.Items[ndsTab6t3SelectShat.SelectedIndex].Value.IndexOf("-")), ndsTab6t3SelectShat.Items[ndsTab6t3SelectShat.SelectedIndex].Value.Substring(5, ndsTab6t3SelectShat.Items[ndsTab6t3SelectShat.SelectedIndex].Value.IndexOf("-")), "1", currentYear,"0").Replace("lt;", "<").Replace("gt;", ">").Replace("quot;", "\"").Replace("amp;", "&").Replace("apos;", "'");

                if (!myObjGetTableData.UserCheckRoles(Session["LM_UserID"].ToString(), "1"))
                {
                    if (!myObjGetTableData.UserCheckRoles(Session["LM_UserID"].ToString(), "21"))
                    {
                        ndsTab1Add.Visible = false;
                        ndsTab2Add.Visible = false;
                        ndsTab3Add.Visible = false;
                    }
                    else
                    {
                        ndsTab1Add.Visible = true;
                        ndsTab2Add.Visible = true;
                        ndsTab3Add.Visible = true;
                    }
                }
                else
                {
                    ndsTab1Add.Visible = true;
                    ndsTab2Add.Visible = true;
                    ndsTab3Add.Visible = true;
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