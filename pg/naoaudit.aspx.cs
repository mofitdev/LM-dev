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
    public partial class naoaudit : System.Web.UI.Page
    {
        string currentYear = "", currentQuarter = "", userId = "", userGazarId = "";
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
                        pageUrlModuleName.InnerHtml = "> Хөндлөнгийн аудитын тайлан";
                        naoauditTab1Li.Style.Add("display", "block");
                        naoauditTab2Li.Style.Add("display", "block");
                        naoauditTab3Li.Style.Add("display", "none");
                        naoauditTab4Li.Style.Add("display", "none");
                        naoauditTab5Li.Style.Add("display", "block");
                        naoauditTab6Li.Style.Add("display", "block");
                        naoauditTab1Li.Attributes["class"] = "active";
                        naoauditTab2Li.Attributes["class"] = "";
                        naoauditTab3Li.Attributes["class"] = "";
                        naoauditTab4Li.Attributes["class"] = "";
                        naoauditTab5Li.Attributes["class"] = "";
                        naoauditTab6Li.Attributes["class"] = "";

                        naoauditTab1.Attributes["class"] = "tab-pane active";
                        naoauditTab2.Attributes["class"] = "tab-pane";
                        naoauditTab3.Attributes["class"] = "tab-pane";
                        naoauditTab4.Attributes["class"] = "tab-pane";
                        naoauditTab5.Attributes["class"] = "tab-pane";
                        naoauditTab6.Attributes["class"] = "tab-pane";
                    }
                    else if (Request.QueryString["t"] == "impl")
                    {
                        pageUrlModuleName.InnerHtml = "> Хөндлөнгийн аудитын зөвлөмжийн хэрэгжилт";
                        naoauditTab1Li.Style.Add("display", "none");
                        naoauditTab2Li.Style.Add("display", "none");
                        naoauditTab3Li.Style.Add("display", "block");
                        naoauditTab4Li.Style.Add("display", "block");
                        naoauditTab5Li.Style.Add("display", "none");
                        naoauditTab6Li.Style.Add("display", "none");
                        naoauditTab1Li.Attributes["class"] = "";
                        naoauditTab2Li.Attributes["class"] = "";
                        naoauditTab3Li.Attributes["class"] = "active";
                        naoauditTab4Li.Attributes["class"] = "";
                        naoauditTab5Li.Attributes["class"] = "";
                        naoauditTab6Li.Attributes["class"] = "";

                        naoauditTab1.Attributes["class"] = "tab-pane";
                        naoauditTab2.Attributes["class"] = "tab-pane";
                        naoauditTab3.Attributes["class"] = "tab-pane active";
                        naoauditTab4.Attributes["class"] = "tab-pane";
                        naoauditTab5.Attributes["class"] = "tab-pane";
                        naoauditTab6.Attributes["class"] = "tab-pane";
                    }
                    else
                    {
                        pageUrlModuleName.InnerHtml = "> Хөндлөнгийн аудитын тайлан";
                        naoauditTab1Li.Style.Add("display", "block");
                        naoauditTab2Li.Style.Add("display", "block");
                        naoauditTab3Li.Style.Add("display", "block");
                        naoauditTab4Li.Style.Add("display", "block");
                        naoauditTab5Li.Style.Add("display", "block");
                        naoauditTab6Li.Style.Add("display", "block");
                        naoauditTab1Li.Attributes["class"] = "active";
                        naoauditTab2Li.Attributes["class"] = "";
                        naoauditTab3Li.Attributes["class"] = "";
                        naoauditTab4Li.Attributes["class"] = "";
                        naoauditTab5Li.Attributes["class"] = "";
                        naoauditTab6Li.Attributes["class"] = "";

                        naoauditTab1.Attributes["class"] = "tab-pane active";
                        naoauditTab2.Attributes["class"] = "tab-pane";
                        naoauditTab3.Attributes["class"] = "tab-pane";
                        naoauditTab4.Attributes["class"] = "tab-pane";
                        naoauditTab5.Attributes["class"] = "tab-pane";
                        naoauditTab6.Attributes["class"] = "tab-pane";
                    }
                }
                else
                {
                    pageUrlModuleName.InnerHtml = "> Хөндлөнгийн аудитын тайлан";
                    naoauditTab1Li.Style.Add("display", "block");
                    naoauditTab2Li.Style.Add("display", "block");
                    naoauditTab3Li.Style.Add("display", "block");
                    naoauditTab4Li.Style.Add("display", "block");
                    naoauditTab5Li.Style.Add("display", "block");
                    naoauditTab6Li.Style.Add("display", "block");
                    naoauditTab1Li.Attributes["class"] = "active";
                    naoauditTab2Li.Attributes["class"] = "";
                    naoauditTab3Li.Attributes["class"] = "";
                    naoauditTab4Li.Attributes["class"] = "";
                    naoauditTab5Li.Attributes["class"] = "";
                    naoauditTab6Li.Attributes["class"] = "";

                    naoauditTab1.Attributes["class"] = "tab-pane active";
                    naoauditTab2.Attributes["class"] = "tab-pane";
                    naoauditTab3.Attributes["class"] = "tab-pane";
                    naoauditTab4.Attributes["class"] = "tab-pane";
                    naoauditTab5.Attributes["class"] = "tab-pane";
                    naoauditTab6.Attributes["class"] = "tab-pane";
                }


                DataSet ds = myObjGetTableData.getCurrentInfo();
                currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
                currentQuarter = ds.Tables[0].Rows[0]["QUARTER"].ToString();
                userId = Session["LM_UserID"].ToString();
                ds = myObjGetTableData.getUserInfo(userId);
                userGazarId = ds.Tables[0].Rows[0]["GAZARID"].ToString();
                DataTable dt = new DataTable();
                naoauditCurrentYear1.InnerHtml = currentYear;
                naoauditCurrentYear2.InnerHtml = currentYear;
                naoauditCurrentYear3.InnerHtml = currentYear;
                naoauditCurrentQuarter1.InnerHtml = currentQuarter;
                naoauditTab1SelectYear.SelectedIndex = naoauditTab1SelectYear.Items.IndexOf(naoauditTab1SelectYear.Items.FindByValue(currentYear));
                naoauditTab2SelectYear.SelectedIndex = naoauditTab2SelectYear.Items.IndexOf(naoauditTab2SelectYear.Items.FindByValue(currentYear));
                naoauditTab3SelectYear.SelectedIndex = naoauditTab3SelectYear.Items.IndexOf(naoauditTab3SelectYear.Items.FindByValue(currentYear));
                naoauditTab3SelectQuarter.SelectedIndex = naoauditTab3SelectQuarter.Items.IndexOf(naoauditTab3SelectQuarter.Items.FindByValue(currentQuarter));

                if (!myObjGetTableData.UserCheckRoles(userId, "1,20"))
                {
                    divnaoauditTab1Add.Style.Add("display", "none");
                    divnaoauditTab2Add.Style.Add("display", "none");
                    divnaoauditTab5Add.Style.Add("display", "none");
                    divnaoauditTab6Add.Style.Add("display", "none");
                }
                if (!myObjGetTableData.UserCheckRoles(userId, "1"))
                {
                    naoauditTab2SelectGazar.Disabled = true;
                    naoauditTab3SelectGazar.Disabled = true;
                }

                //tab4t1
                divtogtoolTab4t1Year1.InnerHtml = currentYear;
                divtogtoolTab4t1Quarter1.InnerHtml = currentQuarter;
                divtogtoolTab4t1Year2.InnerHtml = currentYear;
                naoauditTab4t1SelectYear.SelectedIndex = naoauditTab4t1SelectYear.Items.IndexOf(naoauditTab4t1SelectYear.Items.FindByValue(currentYear));
                naoauditTab4t1SelectQuarter.SelectedIndex = naoauditTab4t1SelectQuarter.Items.IndexOf(naoauditTab4t1SelectQuarter.Items.FindByValue(currentQuarter));
                //tab4t2
                divtogtoolTab4t2Year1.InnerHtml = currentYear;
                divtogtoolTab4t2Quarter1.InnerHtml = currentQuarter;
                naoauditTab4t2SelectYear.SelectedIndex = naoauditTab4t2SelectYear.Items.IndexOf(naoauditTab4t2SelectYear.Items.FindByValue(currentYear));
                naoauditTab4t2SelectQuarter.SelectedIndex = naoauditTab4t2SelectQuarter.Items.IndexOf(naoauditTab4t2SelectQuarter.Items.FindByValue(currentQuarter));

                dt.Rows.Clear();
                dt.Load(myObj.OracleExecuteReader("SELECT TO_CHAR('all') as ID, TO_CHAR('Бүгд') as NAME FROM DUAL UNION ALL SELECT TO_CHAR(ID) as ID, TO_CHAR(NO||'. '||NAME) as NAME FROM TBL_AUDIT_NAO_TYPE"));
                myObj.DBDisconnect();
                naoauditTab4t2SelectType.DataSource = dt;
                naoauditTab4t2SelectType.DataTextField = "NAME";
                naoauditTab4t2SelectType.DataValueField = "ID";
                naoauditTab4t2SelectType.DataBind();
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