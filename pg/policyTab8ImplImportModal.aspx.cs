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
    public partial class policyTab8ImplImportModal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                string strTableVal = "";
                policytab8ImplImportModalID.InnerHtml = Request.QueryString["id"];
                DataSet ds = myObj.OracleExecuteDataSet("SELECT a.ID, a.YR, a.YRHF, CASE WHEN a.YRHF=1 THEN 'Эхний хагас жил' ELSE 'Сүүлийн хагас жил' END as YRHF_NAME, a.IMPL, a.FILENAME, CASE WHEN ((a.YR > b.ENDYR) OR (a.YR=b.ENDYR AND a.YRHF > b.ENDYRHF)) OR (b.ENDYR is null AND b.ENDYRHF is null) THEN 1 ELSE 0 END as ISENABLE FROM TBL_POLICYPLAN_IMPL a LEFT JOIN TBL_POLICYPLAN_IMPLNEGDSEN b ON a.POLICYPLAN_ID = b.POLICYPLAN_ID WHERE a.POLICYPLAN_ID = " + Request.QueryString["id"]+" ORDER BY a.YR, a.YRHF");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        strTableVal += "<tr data-id=\"" + dr["ID"].ToString() + "\">";
                        strTableVal += "<td>" + dr["YR"].ToString() + "</td>";
                        strTableVal += "<td data-yrhf=\""+ dr["YRHF"].ToString() + "\">" + dr["YRHF_NAME"].ToString() + "</td>";
                        strTableVal += "<td>" + myObjGetTableData.getReplaceDatabaseToDisplay(dr["IMPL"].ToString()) + "</td>";
                        strTableVal += "<td>";
                        if (dr["FILENAME"].ToString() != "") strTableVal += "<a href=\"../files/policy/" + dr["FILENAME"].ToString() + "\" class=\"btn btn-link btn-xs\" style=\"padding:0px; border:none;\" download title=\"Хавсаргасан файл татах\"><i class=\"fa fa-paperclip fa-lg\"></i></a></td>";
                        strTableVal += "</td>";
                        strTableVal += "<td>";
                        if (dr["ISENABLE"].ToString() == "1") strTableVal += "<label class=\"no-margin\"><input type=\"checkbox\" class=\"checkbox style-0\"><span class=\"no-margin\"></span></label>";
                        strTableVal += "</td>";
                        strTableVal += "</tr>";
                    }
                }
                policyTab8ImplImportModalTableTbody.InnerHtml = strTableVal;
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