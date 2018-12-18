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
    public partial class lw : System.Web.UI.Page
    {
        string currentYear = "";
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
                DataSet ds = myObjGetTableData.getCurrentInfo();
                currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
                //lwTab2SelectYear.SelectedIndex = lwTab2SelectYear.Items.IndexOf(lwTab2SelectYear.Items.FindByText(currentYear));
                //lwTab3SelectYear.SelectedIndex = lwTab3SelectYear.Items.IndexOf(lwTab3SelectYear.Items.FindByText(currentYear));
                lwTab4SelectYear.SelectedIndex = lwTab4SelectYear.Items.IndexOf(lwTab4SelectYear.Items.FindByText(currentYear));
                lwTab5t1SelectYear.SelectedIndex = lwTab5t1SelectYear.Items.IndexOf(lwTab5t1SelectYear.Items.FindByText(currentYear));
                lwTab5t3SelectYear.SelectedIndex = lwTab5t3SelectYear.Items.IndexOf(lwTab5t3SelectYear.Items.FindByText(currentYear));
                lwTab6SelectYear.SelectedIndex = lwTab6SelectYear.Items.IndexOf(lwTab6SelectYear.Items.FindByText(currentYear));
                lwTab7SelectYear.SelectedIndex = lwTab7SelectYear.Items.IndexOf(lwTab7SelectYear.Items.FindByText(currentYear));
                lwTab5t1Year.InnerHtml = currentYear;
                lwTab8AddBtn.Style.Add("display", "none");
                lwTab7AddBtn.Style.Add("display", "none");
                lwTab6AddBtn.Style.Add("display", "none");
                lwTab4AddBtn.Style.Add("display", "none");
                lwTab3AddBtn.Style.Add("display", "none");
                lwTab2AddBtn.Style.Add("display", "none");
                lwTab1AddBtn.Style.Add("display", "none");
                ds = myObjGetTableData.getUserInfo(Session["LM_UserID"].ToString());
                for (int i = 0; i < ds.Tables[0].Rows[0]["ROLELISTID"].ToString().Split(',').Length; i++)
                {
                    if (ds.Tables[0].Rows[0]["ROLELISTID"].ToString().Split(',')[i].ToString() == "1" || ds.Tables[0].Rows[0]["ROLELISTID"].ToString().Split(',')[i].ToString() == "39")
                    {
                        lwTab1AddBtn.Style.Add("display", "block");
                        lwTab2AddBtn.Style.Add("display", "block");
                        lwTab3AddBtn.Style.Add("display", "block");
                        lwTab4AddBtn.Style.Add("display", "block");
                        lwTab6AddBtn.Style.Add("display", "block");
                        lwTab7AddBtn.Style.Add("display", "block");
                        lwTab8AddBtn.Style.Add("display", "block");
                        break;
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