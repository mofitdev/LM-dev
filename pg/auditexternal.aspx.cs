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
    public partial class auditexternal : System.Web.UI.Page
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
            try
            {
                string currentYear = "", currentQuarter = "", stid = HttpContext.Current.Session["LM_UserID"].ToString();
                ds = myObjGetTableData.getCurrentInfo();
                currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
                currentQuarter = ds.Tables[0].Rows[0]["QUARTER"].ToString();
                for (int i = Convert.ToInt32(currentYear); i >= 2003; i--) {
                    pTab1SelectYear.Items.Add(new ListItem(i.ToString()));
                    pTab3SelectYear.Items.Add(new ListItem(i.ToString()));
                    pTab1t5SelectYear.Items.Add(new ListItem(i.ToString()));
                    pTab5SelectYear.Items.Add(new ListItem(i.ToString()));
                    pTab6SelectYear.Items.Add(new ListItem(i.ToString()));
                    pTab9t1SelectYear.Items.Add(new ListItem(i.ToString()));
                    pTab9t2SelectYear.Items.Add(new ListItem(i.ToString()));
                    pTab9t3SelectYear.Items.Add(new ListItem(i.ToString()));
                    pTab9t5SelectYear.Items.Add(new ListItem(i.ToString()));

                    pTab1ModalSelectYear.Items.Add(new ListItem(i.ToString()));
                }
                //pTab1SelectYear.SelectedIndex = pTab1SelectYear.Items.IndexOf(pTab1SelectYear.Items.FindByValue(currentYear));
                pTab3SelectYear.SelectedIndex = pTab3SelectYear.Items.IndexOf(pTab3SelectYear.Items.FindByValue(currentYear));
                pTab1t5SelectYear.SelectedIndex = pTab1t5SelectYear.Items.IndexOf(pTab1t5SelectYear.Items.FindByValue(currentYear));
                pTab5SelectYear.SelectedIndex = pTab5SelectYear.Items.IndexOf(pTab5SelectYear.Items.FindByValue(currentYear));
                pTab5SelectQuarter.SelectedIndex = pTab5SelectQuarter.Items.IndexOf(pTab5SelectQuarter.Items.FindByValue(currentQuarter));
                pTab6SelectYear.SelectedIndex = pTab6SelectYear.Items.IndexOf(pTab6SelectYear.Items.FindByValue(currentYear));
                pTab6SelectQuarter.SelectedIndex = pTab6SelectQuarter.Items.IndexOf(pTab6SelectQuarter.Items.FindByValue(currentQuarter));
                pTab9t1SelectYear.SelectedIndex = pTab9t1SelectYear.Items.IndexOf(pTab9t1SelectYear.Items.FindByValue(currentYear));
                pTab9t1SelectQuarter.SelectedIndex = pTab9t1SelectQuarter.Items.IndexOf(pTab9t1SelectQuarter.Items.FindByValue(currentQuarter));
                pTab9t2SelectYear.SelectedIndex = pTab9t2SelectYear.Items.IndexOf(pTab9t2SelectYear.Items.FindByValue(currentYear));
                pTab9t2SelectQuarter.SelectedIndex = pTab9t2SelectQuarter.Items.IndexOf(pTab9t2SelectQuarter.Items.FindByValue(currentQuarter));
                pTab9t3SelectYear.SelectedIndex = pTab9t3SelectYear.Items.IndexOf(pTab9t3SelectYear.Items.FindByValue(currentYear));
                pTab9t3SelectQuarter.SelectedIndex = pTab9t3SelectQuarter.Items.IndexOf(pTab9t3SelectQuarter.Items.FindByValue(currentQuarter));
                pTab9t5SelectYear.SelectedIndex = pTab9t5SelectYear.Items.IndexOf(pTab9t5SelectYear.Items.FindByValue(currentYear));
                pTab9t5SelectQuarter.SelectedIndex = pTab9t5SelectQuarter.Items.IndexOf(pTab9t5SelectQuarter.Items.FindByValue(currentQuarter));

                pTab1Add.Style.Add("display", "none");
                pTab3Add.Style.Add("display", "none");
                pTab1t5Add.Style.Add("display", "none");
                pTab2Add.Style.Add("display", "none");
                ds = myObjGetTableData.getUserInfo(Session["LM_UserID"].ToString());
                for (int i = 0; i < ds.Tables[0].Rows[0]["ROLELISTID"].ToString().Split(',').Length; i++)
                {
                    if (ds.Tables[0].Rows[0]["ROLELISTID"].ToString().Split(',')[i].ToString() == "1" || ds.Tables[0].Rows[0]["ROLELISTID"].ToString().Split(',')[i].ToString() == "36")
                    {
                        pTab1Add.Style.Add("display", "block");
                        pTab3Add.Style.Add("display", "block");
                        pTab1t5Add.Style.Add("display", "block");
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