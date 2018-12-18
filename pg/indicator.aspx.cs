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
    public partial class indicator : System.Web.UI.Page
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
                if (Request.QueryString["id"] != null)
                {
                    ds = myObj.OracleExecuteDataSet("SELECT NAME, ISACTIVE FROM TBL_INDICATORTYPE WHERE ID=" + Request.QueryString["id"]);
                    if (ds.Tables[0].Rows.Count == 0)
                    {
                        HttpContext.Current.Session["error500"] = "Message: Буруу хандалт...";
                        Response.Redirect("~/#pg/error500.aspx");
                    }
                    else
                    {
                        pageUrlModuleName.InnerHtml = ds.Tables[0].Rows[0]["NAME"].ToString();
                        pTab3t1Type.InnerHtml = ds.Tables[0].Rows[0]["NAME"].ToString();
                        pTab3t2Type.InnerHtml = ds.Tables[0].Rows[0]["NAME"].ToString();
                        
                        if (ds.Tables[0].Rows[0]["ISACTIVE"].ToString() == "1")
                        {
                            pTab1Add.Style.Add("display", "none");
                            pTab3t3Add.Style.Add("display", "none");
                            ds = myObjGetTableData.getUserInfo(Session["LM_UserID"].ToString());
                            for (int i = 0; i < ds.Tables[0].Rows[0]["ROLELISTID"].ToString().Split(',').Length; i++)
                            {
                                if (ds.Tables[0].Rows[0]["ROLELISTID"].ToString().Split(',')[i].ToString() == "1" || ds.Tables[0].Rows[0]["ROLELISTID"].ToString().Split(',')[i].ToString() == "37")
                                {
                                    pTab1Add.Style.Add("display", "block");
                                    pTab3t3Add.Style.Add("display", "block");
                                    break;
                                }
                            }
                        }
                        for (int i = DateTime.Now.Year - 5; i <= DateTime.Now.Year + 5; i++)
                        {
                            pTab1SelectYear.Items.Add(Convert.ToString(i));
                            pTab2SelectYear.Items.Add(Convert.ToString(i));
                            pTab3t1SelectYear.Items.Add(Convert.ToString(i));
                            pTab3t2SelectYear.Items.Add(Convert.ToString(i));
                            pTab3t2SelectYear2.Items.Add(Convert.ToString(i));
                        }
                        pTab1SelectYear.SelectedIndex = pTab1SelectYear.Items.IndexOf(pTab1SelectYear.Items.FindByValue(DateTime.Now.Year.ToString()));
                        pTab2SelectYear.SelectedIndex = pTab2SelectYear.Items.IndexOf(pTab2SelectYear.Items.FindByValue(DateTime.Now.Year.ToString()));
                        pTab3t1SelectYear.SelectedIndex = pTab3t1SelectYear.Items.IndexOf(pTab3t1SelectYear.Items.FindByValue(DateTime.Now.Year.ToString()));
                        pTab3t2SelectYear.SelectedIndex = pTab3t2SelectYear.Items.IndexOf(pTab3t2SelectYear.Items.FindByValue(DateTime.Now.Year.ToString()));
                        pTab3t2SelectYear2.SelectedIndex = pTab3t2SelectYear2.Items.IndexOf(pTab3t2SelectYear2.Items.FindByValue(DateTime.Now.Year.ToString()));
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