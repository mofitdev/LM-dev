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
    public partial class planyrTab3ModalInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            string strQry = "";
            string strVal = "";
            try
            {
                strQry = "SELECT a.PLANYR_ID, d.NO as STRAT_NO, d.NAME as STRAT_NAME, c.NO as ACTION_NO, c.NAME as ACTION_NAME, b.NO as PLANYR_NO, b.NAME as PLANYR_NAME, b.CRITERIA, b.CNT, b.QUALITY, f.DOMAIN_ORG as GAZARNAME, a.HELTESNAME, a.STLISTNAME, CASE WHEN b.SUBMIT_D0=1 THEN ' checked=\"checked\"' ELSE '' END as SUBMIT_D0, CASE WHEN b.SUBMIT_D1=1 THEN ' checked=\"checked\"' ELSE '' END as SUBMIT_D1, CASE WHEN b.SUBMIT_D2=1 THEN ' checked=\"checked\"' ELSE '' END as SUBMIT_D2, REPLACE(NVL(b.BUDGET,'Жилдээ'),'1,2,3,4,5,6,7,8,9,10,11,12','Сар бүр') as BUDGET, d.BR_ID as STRAT_BRID, c.ID as ACTION_ID, a.STLISTID, b.DODAY FROM( SELECT a.PLANYR_ID, a.HELTESID, a.HELTESNAME, NVL(RTRIM(xmlagg(xmlelement(e, b.ST_ID || ',') ORDER BY f.SORT DESC).extract('//text()'), ','), 'none') STLISTID, NVL(RTRIM(xmlagg(xmlelement(e, ' ' || SUBSTR(c.LNAME, 0, 1) || '.' || SUBSTR(c.FNAME, 1, 1) || LOWER(SUBSTR(c.FNAME, 2)) || ',') ORDER BY f.SORT DESC).extract('//text()'), ','), 'none') STLISTNAME FROM( SELECT a.PLANYR_ID, NVL(RTRIM(xmlagg(xmlelement(e, d.BR_ID || ',') ORDER BY d.BR_ID).extract('//text()'), ','), 'none') as HELTESID, NVL(RTRIM(xmlagg(xmlelement(e, ' ' || f.DOMAIN_ORG || ',') ORDER BY d.BR_ID).extract('//text()'), ','), 'none') as HELTESNAME FROM( SELECT a.ID as PLANYR_ID FROM TBL_PLANYR a INNER JOIN TBL_PLANYR_USER b ON a.ID = b.PLANYR_ID INNER JOIN TBL_FUNC_ACTION c ON a.FUNC_ACTION_ID = c.ID INNER JOIN TBL_FUNC_STRAT d ON c.FUNC_STRAT_ID = d.ID AND d.YR = " + Request.QueryString["yr"] + " INNER JOIN TBL_FUNC_ACTION_BR f ON c.ID = f.FUNC_ACTION_ID WHERE a.YR = " + Request.QueryString["yr"] + " AND a.ID = " + Request.QueryString["id"] + " GROUP BY a.ID ) a INNER JOIN TBL_PLANYR b ON a.PLANYR_ID = b.ID INNER JOIN TBL_FUNC_ACTION c ON b.FUNC_ACTION_ID = c.ID INNER JOIN TBL_FUNC_ACTION_BR d ON c.ID = d.FUNC_ACTION_ID INNER JOIN TBL_BRANCH f ON d.BR_ID = f.BR_ID AND f.YR = " + Request.QueryString["yr"] + " GROUP BY a.PLANYR_ID ) a INNER JOIN TBL_PLANYR_USER b ON a.PLANYR_ID = b.PLANYR_ID LEFT JOIN hrdbuser.ST_STAFFS c ON b.ST_ID = c.ID LEFT JOIN hrdbuser.ST_STBR d ON c.ID = d.STAFFS_ID AND d.ISACTIVE = 1 LEFT JOIN hrdbuser.STN_POS f ON d.POS_ID = f.ID WHERE b.ISREAL = 1 GROUP BY a.PLANYR_ID, a.HELTESID, HELTESNAME ) a INNER JOIN TBL_PLANYR b ON a.PLANYR_ID = b.ID INNER JOIN TBL_FUNC_ACTION c ON b.FUNC_ACTION_ID = c.ID INNER JOIN TBL_FUNC_STRAT d ON c.FUNC_STRAT_ID = d.ID INNER JOIN TBL_BRANCH f ON d.BR_ID = f.BR_ID AND f.YR = " + Request.QueryString["yr"] + " ORDER BY d.NO, c.NO, b.NO";
                DataSet ds = myObj.OracleExecuteDataSet(strQry);
                showModalYear.InnerHtml = Request.QueryString["yr"];
                showModalStrat.InnerHtml = ds.Tables[0].Rows[0]["STRAT_NO"].ToString() + ". " + ds.Tables[0].Rows[0]["STRAT_NAME"].ToString();
                showModalAction.InnerHtml = ds.Tables[0].Rows[0]["STRAT_NO"].ToString() + ". " + ds.Tables[0].Rows[0]["ACTION_NO"].ToString() + ". " + ds.Tables[0].Rows[0]["ACTION_NAME"].ToString();
                showModalPlan.InnerHtml = ds.Tables[0].Rows[0]["STRAT_NO"].ToString() + ". " + ds.Tables[0].Rows[0]["ACTION_NO"].ToString() + ". " + ds.Tables[0].Rows[0]["PLANYR_NO"].ToString() + ". " + ds.Tables[0].Rows[0]["PLANYR_NAME"].ToString();
                showModalCriteria.InnerHtml = ds.Tables[0].Rows[0]["CRITERIA"].ToString();
                showModalCnt.InnerHtml = ds.Tables[0].Rows[0]["CNT"].ToString();
                showModalQuality.InnerHtml = ds.Tables[0].Rows[0]["QUALITY"].ToString();
                showModalBudget.InnerHtml = ds.Tables[0].Rows[0]["BUDGET"].ToString();
                showModalDoday.InnerHtml = ds.Tables[0].Rows[0]["DODAY"].ToString();
                showModalGazar.InnerHtml = ds.Tables[0].Rows[0]["GAZARNAME"].ToString();
                showModalHeltes.InnerHtml = ds.Tables[0].Rows[0]["HELTESNAME"].ToString();
                showModalStafflist.InnerHtml = ds.Tables[0].Rows[0]["STLISTNAME"].ToString();
                strQry = @"SELECT a.PLANYR_ID, a.WORK_ID, f.NAME, d.NO||'.'||c.NO||'.'||b.NO||'. '||b.NAME as POLICPLANLISTNAME
      FROM TBL_PLANYR_WORK a 
      INNER JOIN TBL_POLICYPLAN b ON a.WORK_ID=b.ID
      INNER JOIN TBL_POLICYZORILT c ON b.POLICYZORILT_ID=c.ID
      INNER JOIN TBL_POLICYBODLOGO d ON c.POLICYBODLOGO_ID=d.ID
      INNER JOIN TBL_POLICYTYPE f ON d.POLICYTYPE_ID=f.ID
      WHERE a.PLANYR_ID=" + Request.QueryString["id"] + @"
      ORDER BY a.WORK_ID";
                strVal = "";
                ds = myObj.OracleExecuteDataSet(strQry);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        strVal += "<tr>";
                        strVal += "<td>"+dr["NAME"].ToString()+"</td>";
                        strVal += "<td>" + dr["POLICPLANLISTNAME"].ToString() + "</td>";
                        strVal += "</tr>";
                    }
                }
                showModalPolicyPlanListTbody.InnerHtml = strVal;
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