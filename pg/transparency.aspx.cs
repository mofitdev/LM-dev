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
    public partial class transparency : System.Web.UI.Page
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
            string currentMonth = "", currentYear="";
            try
            {
                ds = myObjGetTableData.getCurrentInfo();
                currentMonth = ds.Tables[0].Rows[0]["MONTH"].ToString();
                currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
                pTab4SelectMnth.SelectedIndex = pTab4SelectMnth.Items.IndexOf(pTab4SelectMnth.Items.FindByValue(currentMonth));
                for (int i = Convert.ToInt32(currentYear) - 5; i <= Convert.ToInt32(currentYear) + 5; i++)
                {
                    pTab4SelectYr.Items.Add(Convert.ToString(i));
                    pTab3t1SelectYr.Items.Add(Convert.ToString(i));
                    pTab3t2SelectYr.Items.Add(Convert.ToString(i));
                }
                pTab3t1SelectYr.SelectedIndex = pTab3t1SelectYr.Items.IndexOf(pTab3t1SelectYr.Items.FindByValue(currentYear));
                pTab3t1SelectMnth.SelectedIndex = pTab3t1SelectMnth.Items.IndexOf(pTab3t1SelectMnth.Items.FindByValue(currentMonth));
                pTab3t1SelectMnth2.SelectedIndex = pTab3t1SelectMnth2.Items.IndexOf(pTab3t1SelectMnth2.Items.FindByValue(currentMonth));
                pTab3t2SelectYr.SelectedIndex = pTab3t2SelectYr.Items.IndexOf(pTab3t2SelectYr.Items.FindByValue(currentYear));
                pTab3t2SelectMnth.SelectedIndex = pTab3t2SelectMnth.Items.IndexOf(pTab3t2SelectMnth.Items.FindByValue(currentMonth));
                pTab4SelectYr.SelectedIndex = pTab4SelectYr.Items.IndexOf(pTab4SelectYr.Items.FindByValue(currentYear));
                pTab4SelectMnth.SelectedIndex = pTab4SelectMnth.Items.IndexOf(pTab4SelectMnth.Items.FindByValue(currentMonth));

                pTab1t1Add.Style.Add("display", "none");
                pTab1t2Add.Style.Add("display", "none");
                ds = myObjGetTableData.getUserInfo(Session["LM_UserID"].ToString());
                for (int i = 0; i < ds.Tables[0].Rows[0]["ROLELISTID"].ToString().Split(',').Length; i++)
                {
                    if (ds.Tables[0].Rows[0]["ROLELISTID"].ToString().Split(',')[i].ToString() == "1" || ds.Tables[0].Rows[0]["ROLELISTID"].ToString().Split(',')[i].ToString() == "16")
                    {
                        pTab1t1Add.Style.Add("display", "block");
                        pTab1t2Add.Style.Add("display", "block");
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