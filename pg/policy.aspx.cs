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
    public partial class policy : System.Web.UI.Page
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
                if (Request.QueryString["id"] != null)
                {
                    DataSet ds = myObj.OracleExecuteDataSet("SELECT NAME FROM TBL_POLICYTYPE WHERE ID=" + Request.QueryString["id"]);
                    if (ds.Tables[0].Rows.Count == 0)
                    {
                        HttpContext.Current.Session["error500"] = "Message: Буруу хандалт...";
                        Response.Redirect("~/#pg/error500.aspx");
                    }
                    else {
                        pageUrlModuleName.InnerHtml = ds.Tables[0].Rows[0]["NAME"].ToString();
                        pTab6t1TypeName.InnerHtml = ds.Tables[0].Rows[0]["NAME"].ToString();
                        pTab6t2TypeName.InnerHtml = ds.Tables[0].Rows[0]["NAME"].ToString();
                        pTab6t7TypeName.InnerHtml = ds.Tables[0].Rows[0]["NAME"].ToString();
                        pTab7t2TypeName.InnerHtml = ds.Tables[0].Rows[0]["NAME"].ToString();
                        string currentYear = "", currentYearHalf = "", stid = HttpContext.Current.Session["LM_UserID"].ToString();
                        ds = myObjGetTableData.getCurrentInfo();
                        currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
                        currentYearHalf = ds.Tables[0].Rows[0]["YEARHALF"].ToString();
                        pTab4SelectYear.SelectedIndex = pTab4SelectYear.Items.IndexOf(pTab4SelectYear.Items.FindByValue(currentYear));
                        pTab4SelectYearHalf.SelectedIndex = pTab4SelectYearHalf.Items.IndexOf(pTab4SelectYearHalf.Items.FindByValue(currentYearHalf));
                        pTab5SelectYear.SelectedIndex = pTab5SelectYear.Items.IndexOf(pTab5SelectYear.Items.FindByValue(currentYear));
                        pTab5SelectYearHalf.SelectedIndex = pTab5SelectYearHalf.Items.IndexOf(pTab5SelectYearHalf.Items.FindByValue(currentYearHalf));
                        pTab6t1SelectYear.SelectedIndex = pTab6t1SelectYear.Items.IndexOf(pTab6t1SelectYear.Items.FindByValue(currentYear));
                        pTab6t1SelectYearHalf.SelectedIndex = pTab6t1SelectYearHalf.Items.IndexOf(pTab6t1SelectYearHalf.Items.FindByValue(currentYearHalf));
                        pTab6t2SelectYear.SelectedIndex = pTab6t2SelectYear.Items.IndexOf(pTab6t2SelectYear.Items.FindByValue(currentYear));
                        pTab6t2SelectYearHalf.SelectedIndex = pTab6t2SelectYearHalf.Items.IndexOf(pTab6t2SelectYearHalf.Items.FindByValue(currentYearHalf));
                        pTab7t1SelectYear.SelectedIndex = pTab7t1SelectYear.Items.IndexOf(pTab7t1SelectYear.Items.FindByValue(currentYear));
                        pTab7t1SelectYearHalf.SelectedIndex = pTab7t1SelectYearHalf.Items.IndexOf(pTab7t1SelectYearHalf.Items.FindByValue(currentYearHalf));
                        pTab7t2SelectYear.SelectedIndex = pTab7t2SelectYear.Items.IndexOf(pTab7t2SelectYear.Items.FindByValue(currentYear));
                        pTab7t2SelectYearHalf.SelectedIndex = pTab7t2SelectYearHalf.Items.IndexOf(pTab7t2SelectYearHalf.Items.FindByValue(currentYearHalf));
                        pTab6t7SelectYear.SelectedIndex = pTab6t7SelectYear.Items.IndexOf(pTab6t7SelectYear.Items.FindByValue(currentYear));
                        pTab6t7SelectYearHalf.SelectedIndex = pTab6t7SelectYearHalf.Items.IndexOf(pTab6t7SelectYearHalf.Items.FindByValue(currentYearHalf));
                        if (!myObjGetTableData.UserCheckRoles(stid, "1,21"))
                        {
                            pTab1Add.Visible = false;
                            pTab2Add.Visible = false;
                            pTab3Add.Visible = false;
                        }
                        else
                        {
                            pTab1Add.Visible = true;
                            pTab2Add.Visible = true;
                            pTab3Add.Visible = true;
                        }
                        if (myObj.OracleExecuteScalar("SELECT ISACTIVE FROM TBL_POLICYTYPE WHERE ID=" + Request.QueryString["id"]).ToString() == "0") {
                            //pTab1Li.Attributes["class"] = "hide";
                            //pTab2Li.Attributes["class"] = "hide";
                            //pTab3Li.Attributes["class"] = "hide";
                            //pTab4Li.Attributes["class"] = "hide";
                            //pTab5Li.Attributes["class"] = "hide";
                            //pTab8Li.Attributes["class"] = "hide";
                            //pTab9Li.Attributes["class"] = "hide";
                        }
                    }
                }
                else
                {
                    HttpContext.Current.Session["error500"] = "Message: Буруу хандалт...";
                    Response.Redirect("~/#pg/error500.aspx");
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