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
    public partial class indicatortype : System.Web.UI.Page
    {
        DataSet ds = null;
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
                string strTableVal = "";
                ds = myObj.OracleExecuteDataSet("SELECT ID, NAME, DESCRIPTION, CASE WHEN ISACTIVE=1 THEN 'bg-color-teal' ELSE 'bg-color-blueLight' END as ISDISABLED FROM TBL_INDICATORTYPE ORDER BY ISACTIVE DESC, NAME");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        strTableVal += "<div class=\"col-md-4\">";
                        strTableVal += "<div data-id=\"" + dr["ID"].ToString() + "\" data-description=\"" + dr["DESCRIPTION"].ToString() + "\" class=\"indicatorlist well well-sm " + dr["ISDISABLED"].ToString() + " txt-color-white text-center font-xs\">";
                        strTableVal += "<div class=\"btn-group pull-right\" style=\"margin-top: -4px; margin-right: 0;\">";
                        strTableVal += "<button class=\"btn " + dr["ISDISABLED"].ToString() + " btn-xs\" rel=\"tooltip\" data-placement=\"top\" data-original-title=\"Засах\" onclick=\"showAddEdit(this, 'засах');\" data-target=\"#pModal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                        strTableVal += "<button class=\"btn " + dr["ISDISABLED"].ToString() + " btn-xs\" rel=\"tooltip\" data-placement=\"top\" data-original-title=\"Устгах\" onclick=\"showDelete(this);\"><i class=\"fa fa fa fa-trash-o\"></i></button>";
                        strTableVal += "</div>";
                        strTableVal += "<a href=\"../#pg/indicator.aspx?id=" + dr["ID"].ToString() + "\" style=\"color:#FFF;\" class=\"font-md\">" + dr["NAME"].ToString() + "</a>";
                        strTableVal += "</div>";
                        strTableVal += "</div>";
                    }
                }
                else {
                    strTableVal = "<div class=\"col-md-12\"><em>Мэдээлэл олдсонгүй...</em></div>";
                }
                indicatortypeList.InnerHtml = strTableVal;
                pTab1Add.Style.Add("display", "none");
                ds = myObjGetTableData.getUserInfo(Session["LM_UserID"].ToString());
                for (int i = 0; i < ds.Tables[0].Rows[0]["ROLELISTID"].ToString().Split(',').Length; i++)
                {
                    if (ds.Tables[0].Rows[0]["ROLELISTID"].ToString().Split(',')[i].ToString() == "1" || ds.Tables[0].Rows[0]["ROLELISTID"].ToString().Split(',')[i].ToString() == "37")
                    {
                        pTab1Add.Style.Add("display", "block");
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