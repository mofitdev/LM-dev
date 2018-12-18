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
    public partial class togtoolTab3ImplModal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                pTab3ImplModalCurrentYr.InnerHtml = Request.QueryString["yr"];
                if (Request.QueryString["yrhf"] == "1") pTab3ImplModalCurrentYrhf.InnerHtml = "Эхний хагас жил";
                else pTab3ImplModalCurrentYrhf.InnerHtml = "Сүүлийн хагас жил";
                pTab3ImplModalID.InnerHtml = Request.QueryString["id"];
                DataSet ds = myObj.OracleExecuteDataSet("SELECT IMPL, FILENAME FROM TBL_ZAALT_IMPL WHERE ZAALT_ID=" + Request.QueryString["id"] + " AND YR=" + Request.QueryString["yr"] + " AND YR_HF=" + Request.QueryString["yrhf"]);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    pTab3ImplModalHeaderLabel.InnerHtml = "засах";
                    pTab3ImplModalCharLength.InnerHtml = ds.Tables[0].Rows[0]["IMPL"].ToString().Length.ToString();
                    pTab3ImplModalImpl.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["IMPL"].ToString());
                    pTab3ImplModalAttachBtn.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["FILENAME"].ToString());
                }
                else
                {
                    pTab3ImplModalHeaderLabel.InnerHtml = "оруулах";
                    pTab3ImplModalCharLength.InnerHtml = "0";
                    pTab3ImplModalImpl.InnerHtml = "";
                    pTab3ImplModalAttachBtn.InnerHtml = "Файл хавсаргаагүй байна...";
                }
            }
            catch (cs.LMException ex)
            {
                myObjGetTableData.exeptionMethod(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                myObjGetTableData.exeptionMethod(ex);
                throw ex;
            }
        }
    }
}