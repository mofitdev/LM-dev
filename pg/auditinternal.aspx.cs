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
    public partial class auditinternal : System.Web.UI.Page
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
            DataSet ds = null;
            string currentYear = "", currentQuarter = "", stid = HttpContext.Current.Session["LM_UserID"].ToString();
            try
            {
                if (!myObjGetTableData.UserCheckRoles(stid, "1,35")) {
                    pTab1Add.Style.Add("display","none");
                    pTab2Add.Style.Add("display", "none");
                }
                ds = myObjGetTableData.getCurrentInfo();
                currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
                currentQuarter = ds.Tables[0].Rows[0]["QUARTER"].ToString();
                //pTab1SelectYear.SelectedIndex = pTab1SelectYear.Items.IndexOf(pTab1SelectYear.Items.FindByValue(currentYear));
                pTab2SelectYear.SelectedIndex = pTab2SelectYear.Items.IndexOf(pTab2SelectYear.Items.FindByValue(currentYear));
                pTab1t3SelectYear.SelectedIndex = pTab1t3SelectYear.Items.IndexOf(pTab1t3SelectYear.Items.FindByValue(currentYear));
                pTab3SelectYear.SelectedIndex = pTab3SelectYear.Items.IndexOf(pTab3SelectYear.Items.FindByValue(currentYear));
                pTab3SelectQuarter.SelectedIndex = pTab3SelectQuarter.Items.IndexOf(pTab3SelectQuarter.Items.FindByValue(currentQuarter));
                pTab4SelectYear.SelectedIndex = pTab4SelectYear.Items.IndexOf(pTab4SelectYear.Items.FindByValue(currentYear));
                pTab4SelectQuarter.SelectedIndex = pTab4SelectQuarter.Items.IndexOf(pTab4SelectQuarter.Items.FindByValue(currentQuarter));
                pTab5t1SelectYear.SelectedIndex = pTab5t1SelectYear.Items.IndexOf(pTab5t1SelectYear.Items.FindByValue(currentYear));
                pTab5t1SelectQuarter.SelectedIndex = pTab5t1SelectQuarter.Items.IndexOf(pTab5t1SelectQuarter.Items.FindByValue(currentQuarter));
                pTab5t2SelectYear.SelectedIndex = pTab5t2SelectYear.Items.IndexOf(pTab5t2SelectYear.Items.FindByValue(currentYear));
                pTab5t2SelectQuarter.SelectedIndex = pTab5t2SelectQuarter.Items.IndexOf(pTab5t2SelectQuarter.Items.FindByValue(currentQuarter));
                pTab5t3SelectYear.SelectedIndex = pTab5t3SelectYear.Items.IndexOf(pTab5t3SelectYear.Items.FindByValue(currentYear));
                pTab5t3SelectQuarter.SelectedIndex = pTab5t3SelectQuarter.Items.IndexOf(pTab5t3SelectQuarter.Items.FindByValue(currentQuarter));

                pTab1Add.Style.Add("display", "none");
                pTab1t3Add.Style.Add("display", "none");
                pTab2Add.Style.Add("display", "none");
                ds = myObjGetTableData.getUserInfo(Session["LM_UserID"].ToString());
                for (int i = 0; i < ds.Tables[0].Rows[0]["ROLELISTID"].ToString().Split(',').Length; i++)
                {
                    if (ds.Tables[0].Rows[0]["ROLELISTID"].ToString().Split(',')[i].ToString() == "1" || ds.Tables[0].Rows[0]["ROLELISTID"].ToString().Split(',')[i].ToString() == "35")
                    {
                        pTab1Add.Style.Add("display", "block");
                        pTab1t3Add.Style.Add("display", "block");
                        pTab2Add.Style.Add("display", "block");
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