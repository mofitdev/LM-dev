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
    public partial class policytype : System.Web.UI.Page
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
                string strTableVal = "";
                DataSet ds = myObj.OracleExecuteDataSet("SELECT ID, NAME, BEGINYR, ENDYR, CASE WHEN BEGINYR=ENDYR THEN CAST(BEGINYR as varchar2(4)) ELSE CAST(BEGINYR as varchar2(4))||CAST('-' as varchar2(1))||CAST(ENDYR as varchar2(4)) END AS YRNAME, CASE WHEN ISACTIVE = 0 THEN ENDYR ELSE(SELECT YR FROM TBL_SYSSET WHERE ACTIVE = 1) END as YR, CASE WHEN ISACTIVE = 0 THEN 'bg-color-blueLight' ELSE null END as ISDISABLED1, CASE WHEN ISACTIVE = 0 THEN 'disabled' ELSE null END as ISDISABLED2, CASE WHEN ISACTIVE=1 THEN 'bg-color-green' ELSE 'bg-color-blueLight' END as ISDISABLED3 FROM TBL_POLICYTYPE ORDER BY CASE WHEN ISACTIVE = 0 THEN ENDYR ELSE(SELECT YR FROM TBL_SYSSET WHERE ACTIVE = 1) END DESC, ISACTIVE DESC");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    strTableVal = "<ul class=\"smart-timeline-list\">";
                    string strYr = "";
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        if (strYr != dr["YR"].ToString()) {
                            if (strYr != "") strTableVal += "</div></div></li>";
                            strTableVal += "<li><div class=\"smart-timeline-icon \""+dr["ISDISABLED1"].ToString()+"><i class=\"fa fa-file-text\"></i></div><div class=\"smart-timeline-time\"><small>"+dr["YR"].ToString()+"</small></div><div class=\"smart-timeline-content\"><div style=\"display:inline-block; min-height:60px; width:100%;\">";
                        }
                        strTableVal += "<div data-id=\""+ dr["ID"].ToString() + "\" data-beginyr=\""+ dr["BEGINYR"].ToString() + "\" data-endyr=\"" + dr["ENDYR"].ToString() + "\" class=\"bodlogolist well well-sm " + dr["ISDISABLED3"].ToString() + " txt-color-white text-center font-xs\" style=\"width: 30%; padding: 4px 0px; margin: 0 5px 0 0; float: left; height:60px; margin-top: 5px;\"><div class=\"btn-group pull-right\" style=\"margin-top: -4px; margin-right: 0;\"><button class=\"btn " + dr["ISDISABLED3"].ToString() + " btn-xs\" rel=\"tooltip\" data-placement=\"top\" data-original-title=\"Засах\" onclick=\"showAddEdit(this, 'засах');\" data-target=\"#pModal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn " + dr["ISDISABLED3"].ToString() + " btn-xs\" rel=\"tooltip\" data-placement=\"top\" data-original-title=\"Устгах\" onclick=\"showDelete(this);\"><i class=\"fa fa fa fa-trash-o\"></i></button></div><a href=\"../#pg/policy.aspx?id=" + dr["ID"].ToString() + "\" style=\"color:#FFF;\" class=\"font-md\">" + dr["NAME"].ToString() + " /"+ dr["YRNAME"].ToString() + "/</a></div>";
                        strYr = dr["YR"].ToString();
                    }
                    strTableVal += "</div></div></li></ul>";
                }
                else {
                    strTableVal = "<div class=\"col-md-12\"><em>Мэдээлэл олдсонгүй...</em></div>";
                }
                policytypeList.InnerHtml = strTableVal;
                pTab1Add.Style.Add("display", "none");
                ds = myObjGetTableData.getUserInfo(Session["LM_UserID"].ToString());
                for (int i = 0; i < ds.Tables[0].Rows[0]["ROLELISTID"].ToString().Split(',').Length; i++)
                {
                    if (ds.Tables[0].Rows[0]["ROLELISTID"].ToString().Split(',')[i].ToString() == "1" || ds.Tables[0].Rows[0]["ROLELISTID"].ToString().Split(',')[i].ToString() == "21")
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