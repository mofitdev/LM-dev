using LMWebApp.cs;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMWebApp.pg
{
    public partial class gap : System.Web.UI.Page
    {
        string currentYear = "";
        string currentYearHalf="";
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
                        gapTabTitle4.Attributes.Remove("class");
                        gapTabTitle4.Style.Add("display", "none");
                        gapTab4.Attributes.Remove("class");
                        gapTab4.Style.Add("display", "none");

                        gapTabTitle5.Attributes.Remove("class");
                        gapTabTitle5.Style.Add("display", "none");
                        gapTab5.Attributes.Remove("class");
                        gapTab5.Style.Add("display", "none");

                        gapTabTitle6.Attributes.Remove("class");
                        gapTabTitle6.Style.Add("display", "none");
                        gapTab6.Attributes.Remove("class");
                        gapTab6.Style.Add("display", "none");
                    }
                    if (Request.QueryString["t"] == "impl")
                    {

                        gapTabTitle1.Attributes.Remove("class");
                        gapTabTitle1.Style.Add("display", "none");
                        gapTab1.Attributes.Remove("class");
                        gapTab1.Style.Add("display", "none");

                        gapTabTitle2.Attributes.Remove("class");
                        gapTabTitle2.Style.Add("display", "none");
                        gapTab2.Attributes.Remove("class");
                        gapTab2.Style.Add("display", "none");

                        gapTabTitle3.Attributes.Remove("class");
                        gapTabTitle3.Style.Add("display", "none");

                        gapTab3.Attributes.Remove("class");
                        gapTab3.Style.Add("display", "none");

                        gapTabTitle4.Attributes.Remove("class");
                        gapTabTitle4.Attributes.Add("class", "active");
                        gapTab4.Attributes.Remove("class");
                        gapTab4.Attributes.Add("class", "tab-pane active");
                    }
                }
                if (!myObjGetTableData.UserCheckRoles(Session["LM_UserID"].ToString(), "1"))
                {
                    if (!myObjGetTableData.UserCheckRoles(Session["LM_UserID"].ToString(), "22"))
                    {
                        gap_Policy_add.Visible = false;
                        Object_add.Visible = false;
                        Work_add.Visible = false;
                    }
                    else
                    {
                        gap_Policy_add.Visible = true;
                        Object_add.Visible = true;
                        Work_add.Visible = true;
                    }
                }
                else
                {
                    gap_Policy_add.Visible = true;
                    Object_add.Visible = true;
                    Work_add.Visible = true;
                }

                DataSet ds = myObjGetTableData.getCurrentInfo();

                currentYearHalf = ds.Tables[0].Rows[0]["YEARHALF"].ToString();
                gapindexCurrentYearHalf.InnerHtml = currentYearHalf;
                currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
                gapPolicyModalCurrentYr.InnerHtml = currentYear;
                gapImplModalCurrentYr1.InnerHtml = currentYear;
                gapTab6t3Year.InnerHtml = currentYear;
                double last = 0;
                string new_start = "", new_end = "";
                last = Double.Parse(currentYear.ToString());
                if (last == 2007 || last > 2007 && 2011 > last || 2011 == last)
                {
                    new_start = "2007";
                    new_end = "2011";
                }
                if (last == 2012 || last > 2012 && 2016 > last || 2016 == last)
                {
                    new_start = "2012";
                    new_end = "2016";
                }
                if (last == 2017 || last > 2017 && 2021 > last || 2021 == last)
                {
                    new_start = "2017";
                    new_end = "2021";
                }
                if (last == 2022 || last > 2022 && 2026 > last || 2026 == last)
                {
                    new_start = "2022";
                    new_end = "2026";
                }
                gapObjectModalCurrentYr.InnerHtml = new_start + "-" + new_end;
                gapTab6t2Year2.InnerHtml = currentYear;
                gapPolicyModalCurrentYr.InnerHtml = new_start + "-" + new_end;
                gapTab6t1Year.InnerHtml = new_start + "-" + new_end;
                gapTab6t2Year.InnerHtml = new_start + "-" + new_end;
                gapTab6t2Year3.InnerHtml = new_start + "-" + new_end;
                gapTab6t2Year4.InnerHtml = new_start + "-" + new_end;
                gapTab6t2Year5.InnerHtml = currentYear;
                gapTab5t1SelectYear.SelectedIndex = gapTab5t1SelectYear.Items.IndexOf(gapTab5t1SelectYear.Items.FindByText(new_start + "-" + new_end));
                gapTab5t2SelectYear.SelectedIndex = gapTab5t2SelectYear.Items.IndexOf(gapTab5t2SelectYear.Items.FindByText(new_start + "-" + new_end));
                gapTab5t3SelectYear.SelectedIndex = gapTab5t3SelectYear.Items.IndexOf(gapTab5t3SelectYear.Items.FindByText(new_start + "-" + new_end));
                gapTab6t1SelectYear.SelectedIndex = gapTab6t1SelectYear.Items.IndexOf(gapTab6t1SelectYear.Items.FindByText(new_start + "-" + new_end));
                gapTab6t2SelectYear.SelectedIndex = gapTab6t2SelectYear.Items.IndexOf(gapTab6t2SelectYear.Items.FindByText(new_start + "-" + new_end));
                gapTab6t3SelectYear.SelectedIndex = gapTab6t3SelectYear.Items.IndexOf(gapTab6t3SelectYear.Items.FindByText(new_start + "-" + new_end));
                gapTab3SelectYear.SelectedIndex = gapTab3SelectYear.Items.IndexOf(gapTab3SelectYear.Items.FindByText(new_start + "-" + new_end));
                gapTab1SelectYear.SelectedIndex = gapTab1SelectYear.Items.IndexOf(gapTab1SelectYear.Items.FindByText(new_start + "-" + new_end));
                gapTab2SelectYear.SelectedIndex = gapTab2SelectYear.Items.IndexOf(gapTab2SelectYear.Items.FindByText(new_start + "-" + new_end));
                gapTab5t1SelectYear.Items.FindByText(new_start + "-" + new_end);
                Tab6t3selectYear.InnerHtml = new_start + "-" + new_end;
                gapWorkModalCurrentYr.InnerHtml = new_start + "-" + new_end;
                gapTab6t2InputTushaal.Value = "2013 оны 06 дугаар сарын 13-ны 136";
                gapTab6t2InputTogtool.Value = "2013 оны “Журам шинэчлэн батлах тухай” 322";
                gapTab6t2Year.InnerHtml = new_start + "-" + new_end;
                gapTab6t2Year2.InnerHtml = currentYear;
                gapTab6t2Year3.InnerHtml = currentYear;
                gapTab6t2Tushaal.InnerHtml = gapTab6t2InputTushaal.Value;
                //string worksInDatas = myObjGetTableData.GapGetEGTab6T1Datas(new_start, currentYearHalf);
                DataTable dt = new DataTable();
                dt.Load(myObj.OracleExecuteReader("SELECT '0' as BR_ID, CAST('Бүгд' as VARCHAR2(200)) as DOMAIN_ORG FROM DUAL UNION ALL SELECT BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=3 AND BR_ID!=9911"));
                myObj.DBDisconnect();
                gapTab5t2SelectBranch.DataSource = dt;
                gapTab5t2SelectBranch.DataTextField = "DOMAIN_ORG";
                gapTab5t2SelectBranch.DataValueField = "BR_ID";
                gapTab5t2SelectBranch.DataBind();
                DataTable dt_1 = new DataTable();
                dt_1.Load(myObj.OracleExecuteReader("SELECT '0' as BR_ID, CAST('Бүгд' as VARCHAR2(200)) as DOMAIN_ORG FROM DUAL UNION ALL SELECT BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=3 AND BR_ID!=9911"));
                myObj.DBDisconnect();
                gapTab5t3SelectBranch.DataSource = dt_1;
                gapTab5t3SelectBranch.DataTextField = "DOMAIN_ORG";
                gapTab5t3SelectBranch.DataValueField = "BR_ID";
                gapTab5t3SelectBranch.DataBind();
                DataTable dt_2 = new DataTable();
                dt_2.Load(myObj.OracleExecuteReader("SELECT '0' as BR_ID, CAST('Бүгд' as VARCHAR2(200)) as DOMAIN_ORG FROM DUAL UNION ALL SELECT BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=3 AND BR_ID!=9911"));
                myObj.DBDisconnect();
                gapTab4SelectGazar.DataSource = dt_2;
                gapTab4SelectGazar.DataTextField = "DOMAIN_ORG";
                gapTab4SelectGazar.DataValueField = "BR_ID";
                gapTab4SelectGazar.DataBind();
                DataTable dt_3 = new DataTable();
                dt_3.Load(myObj.OracleExecuteReader("SELECT '0' as BR_ID, CAST('Бүгд' as VARCHAR2(200)) as DOMAIN_ORG FROM DUAL UNION ALL SELECT BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=3 AND BR_ID!=9911"));
                myObj.DBDisconnect();
                gapTab6t1SelectGazar.DataSource = dt_3;
                gapTab6t1SelectGazar.DataTextField = "DOMAIN_ORG";
                gapTab6t1SelectGazar.DataValueField = "BR_ID";
                gapTab6t1SelectGazar.DataBind();
                DataTable dt_4 = new DataTable();
                dt_4.Load(myObj.OracleExecuteReader("SELECT '0' as BR_ID, CAST('Бүгд' as VARCHAR2(200)) as DOMAIN_ORG FROM DUAL UNION ALL SELECT BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=3 AND BR_ID!=9911"));
                myObj.DBDisconnect();
                gapTab6t3SelectGazar.DataSource = dt_4;
                gapTab6t3SelectGazar.DataTextField = "DOMAIN_ORG";
                gapTab6t3SelectGazar.DataValueField = "BR_ID";
                gapTab6t3SelectGazar.DataBind();
                DataTable dt_5 = new DataTable();
                dt_5.Load(myObj.OracleExecuteReader("SELECT  CAST('Бүгд' as VARCHAR2(200)) as DATE_USER,'0' as VALL FROM DUAL UNION ALL SELECT  DATE_USER,DATE_USER as VALL FROM TBL_WORK WHERE DATE_USER!='none' GROUP BY DATE_USER ORDER BY DATE_USER DESC"));
                myObj.DBDisconnect();
                gapTab6t3SelectUserYear.DataSource = dt_5;
                gapTab6t3SelectUserYear.DataTextField = "DATE_USER";
                gapTab6t3SelectUserYear.DataValueField = "VALL";
                gapTab6t3SelectUserYear.DataBind();
                //string[] arrWorksInDatas = worksInDatas.Split('~');
                gapTab6t2Year4.InnerHtml = currentYear;
                gapTab6t2Year5.InnerHtml = currentYear;
                //divgapTab6t3Table.InnerHtml = myObjGetTableData.GapGetEGTab6T3(new_start, "2", "0", "0", currentYearHalf).Replace("&", "").Replace("&amp;", "").Replace("&#38;", "");
                gapTab5t2Year.InnerHtml = new_start + "-" + new_end;
                gapTab5t3Year.InnerHtml = currentYear;
                //divgapTab5t3Table.InnerHtml = myObjGetTableData.GapGetEGTab5T3(new_start, currentYearHalf, "2", "0");
                gapTab6t1Year.InnerHtml = new_start + "-" + new_end;
                //divgapTab6t1Table.InnerHtml = myObjGetTableData.GapGetEGTab6T1(new_start, "all", "2", "0");
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