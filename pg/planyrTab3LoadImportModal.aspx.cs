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
    public partial class planyrTab3LoadImportModal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            try {
                string yr = Request.QueryString["yr"];
                string strGazar = "", strHeltes = "", strTableVal = "";
                if (Request.QueryString["gazar"] != null) strGazar = Request.QueryString["gazar"];
                if (Request.QueryString["heltes"] != null) strHeltes = Request.QueryString["heltes"];
                lblHeaderYr.InnerHtml = yr;
                if (strGazar != "") strGazar = " AND d.BR_ID=" + strGazar;
                if (strHeltes != "") strHeltes = " AND f.BR_ID=" + strHeltes;
                strTableVal += "<table id=\"pTab3ImportModalDatatable\" class=\"table table-striped table-bordered table-hover smart-form\" style=\"width:100%\">";
                strTableVal += "<thead>";
                strTableVal += "<tr>";
                strTableVal += "<th class=\"text-center\" style=\"vertical-align:middle; width:20px;\">#</th>";
                strTableVal += "<th class=\"text-center\" style=\"vertical-align:middle; width:35%;\">Арга хэмжээ</th>";
                strTableVal += "<th class=\"text-center\" style=\"vertical-align:middle; width:35%;\">Хүрэх үр дүн, хугацаа, тоо хэмжээ</th>";
                strTableVal += "<th class=\"text-center\" style=\"vertical-align:middle;\">Газар</th>";
                strTableVal += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хэлтэс</th>";
                strTableVal += "<th class=\"text-center\" style=\"vertical-align:middle;\">Ажилтан</th>";
                strTableVal += "<th class=\"text-center\" style=\"vertical-align:middle;\">Татах</th>";
                strTableVal += "</tr>";
                strTableVal += "</thead>";
                strTableVal += "<tbody>";
                string strQry = "SELECT ROWNUM as ROWNO, a.*  FROM ( SELECT a.PLANYR_ID, d.NO as STRAT_NO, c.NO as ACTION_NO, b.NO as PLANYR_NO, b.NAME as PLANYR_NAME, b.CRITERIA, b.CNT, b.QUALITY, f.DOMAIN_ORG as GAZARNAME, a.HELTESNAME, a.STLISTNAME, CASE WHEN b.SUBMIT_D0=1 THEN ' checked=\"checked\"' ELSE '' END as SUBMIT_D0, CASE WHEN b.SUBMIT_D1=1 THEN ' checked=\"checked\"' ELSE '' END as SUBMIT_D1, CASE WHEN b.SUBMIT_D2=1 THEN ' checked=\"checked\"' ELSE '' END as SUBMIT_D2, REPLACE(NVL(b.BUDGET,'Жилдээ'),'1,2,3,4,5,6,7,8,9,10,11,12','Сар бүр') as BUDGET, d.BR_ID as STRAT_BRID, c.ID as ACTION_ID, a.STLISTID, b.DODAY, a.POLICYPLANLISTID FROM( SELECT a.PLANYR_ID, a.HELTESID, a.HELTESNAME, a.STLISTID, a.STLISTNAME, RTRIM(xmlagg(xmlelement(e, a.WORK_ID || ',')).extract('//text()'), ',') as POLICYPLANLISTID FROM( SELECT a.PLANYR_ID, a.HELTESID, a.HELTESNAME, a.STLISTID, a.STLISTNAME, b.WORK_ID FROM( SELECT a.PLANYR_ID, a.HELTESID, a.HELTESNAME, NVL(RTRIM(xmlagg(xmlelement(e, b.ST_ID || ',') ORDER BY f.SORT DESC).extract('//text()'), ','), 'none') STLISTID, NVL(RTRIM(xmlagg(xmlelement(e, ' ' || SUBSTR(c.LNAME, 0, 1) || '.' || SUBSTR(c.FNAME, 1, 1) || LOWER(SUBSTR(c.FNAME, 2)) || ',') ORDER BY f.SORT DESC).extract('//text()'), ','), 'none') STLISTNAME FROM( SELECT a.PLANYR_ID, NVL(RTRIM(xmlagg(xmlelement(e, d.BR_ID || ',') ORDER BY d.BR_ID).extract('//text()'), ','), 'none') as HELTESID, NVL(RTRIM(xmlagg(xmlelement(e, ' ' || f.DOMAIN_ORG || ',') ORDER BY d.BR_ID).extract('//text()'), ','), 'none') as HELTESNAME FROM( SELECT a.ID as PLANYR_ID FROM TBL_PLANYR a INNER JOIN TBL_PLANYR_USER b ON a.ID = b.PLANYR_ID INNER JOIN TBL_FUNC_ACTION c ON a.FUNC_ACTION_ID = c.ID INNER JOIN TBL_FUNC_STRAT d ON c.FUNC_STRAT_ID = d.ID AND d.YR = " + yr + " INNER JOIN TBL_FUNC_ACTION_BR f ON c.ID = f.FUNC_ACTION_ID WHERE a.YR = " + yr + strGazar + strHeltes + " GROUP BY a.ID ) a INNER JOIN TBL_PLANYR b ON a.PLANYR_ID = b.ID INNER JOIN TBL_FUNC_ACTION c ON b.FUNC_ACTION_ID = c.ID INNER JOIN TBL_FUNC_ACTION_BR d ON c.ID = d.FUNC_ACTION_ID INNER JOIN TBL_BRANCH f ON d.BR_ID = f.BR_ID AND f.YR = " + yr + " GROUP BY a.PLANYR_ID ) a INNER JOIN TBL_PLANYR_USER b ON a.PLANYR_ID = b.PLANYR_ID INNER JOIN hrdbuser.ST_STAFFS c ON b.ST_ID = c.ID INNER JOIN hrdbuser.ST_STBR d ON c.ID = d.STAFFS_ID AND d.ISACTIVE = 1 INNER JOIN hrdbuser.STN_POS f ON d.POS_ID = f.ID WHERE b.ISREAL = 1 GROUP BY a.PLANYR_ID, a.HELTESID, HELTESNAME ) a LEFT JOIN( SELECT a.PLANYR_ID, a.WORK_ID, c.POLICYTYPE_ID FROM TBL_PLANYR_WORK a INNER JOIN TBL_PLANYR b ON a.PLANYR_ID = b.ID INNER JOIN( SELECT a.ID as POLICYPLAN_ID, c.POLICYTYPE_ID FROM TBL_POLICYPLAN a INNER JOIN TBL_POLICYZORILT b ON a.POLICYZORILT_ID = b.ID INNER JOIN TBL_POLICYBODLOGO c ON b.POLICYBODLOGO_ID = c.ID ) c ON a.WORK_ID = c.POLICYPLAN_ID WHERE b.YR = " + yr + " ) b ON a.PLANYR_ID = b.PLANYR_ID ) a GROUP BY a.PLANYR_ID, a.HELTESID, a.HELTESNAME, a.STLISTID, a.STLISTNAME ) a INNER JOIN TBL_PLANYR b ON a.PLANYR_ID = b.ID INNER JOIN TBL_FUNC_ACTION c ON b.FUNC_ACTION_ID = c.ID INNER JOIN TBL_FUNC_STRAT d ON c.FUNC_STRAT_ID = d.ID INNER JOIN TBL_BRANCH f ON d.BR_ID = f.BR_ID AND f.YR = " + yr + " ORDER BY d.NO, c.NO, b.NO ) a";
                DataSet ds = myObj.OracleExecuteDataSet(strQry);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        strTableVal += "<tr data-id=\"" + dr["PLANYR_ID"].ToString() + "\">";
                        strTableVal += "<td>" + dr["ROWNO"].ToString() + "</td>";
                        strTableVal += "<td>" + dr["STRAT_NO"].ToString() + "." + dr["ACTION_NO"].ToString() + "." + dr["PLANYR_NO"].ToString() + ". " + myObjGetTableData.getReplaceDatabaseToDisplay(dr["PLANYR_NAME"].ToString()) + "</td>";
                        strTableVal += "<td>";
                        strTableVal += "<label>" + myObjGetTableData.getReplaceDatabaseToDisplay(dr["CRITERIA"].ToString()) + "</label><br />";
                        strTableVal += "<b>тоо: </b><label>" + dr["CNT"].ToString() + "</label><br />";
                        strTableVal += "<b>чанар: </b><label>" + myObjGetTableData.getReplaceDatabaseToDisplay(dr["QUALITY"].ToString()) + "</label><br />";
                        strTableVal += "<b>Төлөвлөгөөт хугацаа /сараар/: </b><label>" + dr["BUDGET"].ToString() + "</label><br />";
                        strTableVal += "</td>";
                        strTableVal += "<td>" + dr["GAZARNAME"].ToString() + "</td>";
                        strTableVal += "<td>" + dr["HELTESNAME"].ToString() + "</td>";
                        strTableVal += "<td>" + dr["STLISTNAME"].ToString() + "</td>";
                        strTableVal += "<td><div class=\"checkbox no-padding\"><label><input type=\"checkbox\" class=\"checkbox style-2\" onclick=\"pTab3ImportModalCheckbox(this)\"><span></span></label></div></td>";
                        strTableVal += "</tr>";
                    }
                }
                strTableVal += "</tbody>";
                strTableVal += "</table>";
                divBodyTable.InnerHtml = strTableVal;
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