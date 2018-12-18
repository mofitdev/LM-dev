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
    public partial class tevalmnth : System.Web.UI.Page
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
            string strMnth = "", strYr = "", strQry = "", strData="";
            int cnt = 0, cnt100 = 0, cnt90 = 0, cnt80 = 0, cnt70 = 0, cnt50 = 0, cnt30 = 0, cnt10 = 0, cnt0 = 0, cntnone = 0, cntgazarcnt = 0;
            float peravg = 0, pntavg=0;
            try
            {
                ds = myObjGetTableData.getCurrentInfo();
                strMnth = ds.Tables[0].Rows[0]["MONTH"].ToString();
                strYr = ds.Tables[0].Rows[0]["YEAR"].ToString();
                for (int i = Convert.ToInt32(strYr) - 5; i <= Convert.ToInt32(strYr) + 5; i++)
                {
                    pTab1SelectYr.Items.Add(Convert.ToString(i));
                }
                if (Request.QueryString["mnth"] != null)
                {
                    if (Request.QueryString["mnth"] == "1" || Request.QueryString["mnth"] == "2" || Request.QueryString["mnth"] == "3" || Request.QueryString["mnth"] == "4" || Request.QueryString["mnth"] == "5" || Request.QueryString["mnth"] == "6" || Request.QueryString["mnth"] == "7" || Request.QueryString["mnth"] == "8" || Request.QueryString["mnth"] == "9" || Request.QueryString["mnth"] == "10" || Request.QueryString["mnth"] == "11" || Request.QueryString["mnth"] == "12") {
                        strMnth = Request.QueryString["mnth"];
                    }
                }
                if (Request.QueryString["yr"] != null)
                {
                    strYr = Request.QueryString["yr"];
                }
                pTab1SelectYr.SelectedIndex = pTab1SelectYr.Items.IndexOf(pTab1SelectYr.Items.FindByValue(strYr));
                pTab1SelectMnth.SelectedIndex = pTab1SelectMnth.Items.IndexOf(pTab1SelectMnth.Items.FindByValue(strMnth));

                // bind planmnth
                strQry = @"SELECT 
  b.DOMAIN_ORG, 
  b.BR_NAME, 
  COUNT(a.PLANMNTH_CNT) as PLANMNTH_CNT, 
  NVL(TO_CHAR(SUM(a.EVAL100)),'-') as EVAL100, 
  NVL(TO_CHAR(SUM(a.EVAL90)),'-') as EVAL90, 
  NVL(TO_CHAR(SUM(a.EVAL80)),'-') as EVAL80, 
  NVL(TO_CHAR(SUM(a.EVAL70)),'-') as EVAL70, 
  NVL(TO_CHAR(SUM(a.EVAL50)),'-') as EVAL50, 
  NVL(TO_CHAR(SUM(a.EVAL30)),'-') as EVAL30, 
  NVL(TO_CHAR(SUM(a.EVAL10)),'-') as EVAL10, 
  NVL(TO_CHAR(SUM(a.EVAL0)),'-') as EVAL0, 
  NVL(TO_CHAR(SUM(a.EVALNONE)),'-') as EVALNONE, 
  ROUND((((NVL(SUM(a.EVAL100),0)*100)+ (NVL(SUM(a.EVAL90),0)*90)+ (NVL(SUM(a.EVAL80),0)*80)+ (NVL(SUM(a.EVAL70),0)*70)+ (NVL(SUM(a.EVAL50),0)*50)+ (NVL(SUM(a.EVAL30),0)*30)+ (NVL(SUM(a.EVAL10),0)*10)+ (NVL(SUM(a.EVAL0),0)*0))/CASE WHEN ((NVL(SUM(a.EVAL100),0)+NVL(SUM(a.EVAL90),0)+NVL(SUM(a.EVAL80),0)+NVL(SUM(a.EVAL70),0)+NVL(SUM(a.EVAL50),0)+NVL(SUM(a.EVAL30),0)+NVL(SUM(a.EVAL10),0)+NVL(SUM(a.EVAL0),0))*100)=0 THEN 1 ELSE ((NVL(SUM(a.EVAL100),0)+NVL(SUM(a.EVAL90),0)+NVL(SUM(a.EVAL80),0)+NVL(SUM(a.EVAL70),0)+NVL(SUM(a.EVAL50),0)+NVL(SUM(a.EVAL30),0)+NVL(SUM(a.EVAL10),0)+NVL(SUM(a.EVAL0),0))*100) END)*100,1) as PERAVG, 
  ROUND(ROUND((((NVL(SUM(a.EVAL100),0)*100)+ (NVL(SUM(a.EVAL90),0)*90)+ (NVL(SUM(a.EVAL80),0)*80)+ (NVL(SUM(a.EVAL70),0)*70)+ (NVL(SUM(a.EVAL50),0)*50)+ (NVL(SUM(a.EVAL30),0)*30)+ (NVL(SUM(a.EVAL10),0)*10)+ (NVL(SUM(a.EVAL0),0)*0))/CASE WHEN ((NVL(SUM(a.EVAL100),0)+NVL(SUM(a.EVAL90),0)+NVL(SUM(a.EVAL80),0)+NVL(SUM(a.EVAL70),0)+NVL(SUM(a.EVAL50),0)+NVL(SUM(a.EVAL30),0)+NVL(SUM(a.EVAL10),0)+NVL(SUM(a.EVAL0),0))*100)=0 THEN 1 ELSE ((NVL(SUM(a.EVAL100),0)+NVL(SUM(a.EVAL90),0)+NVL(SUM(a.EVAL80),0)+NVL(SUM(a.EVAL70),0)+NVL(SUM(a.EVAL50),0)+NVL(SUM(a.EVAL30),0)+NVL(SUM(a.EVAL10),0)+NVL(SUM(a.EVAL0),0))*100) END)*100,1) * 0.3,2) as PNTAVG,
  b.SORT 
FROM ( 
  SELECT 
    d.BR_ID, 
    b.ID as PLANYR_ID, 
    COUNT(a.ID) as PLANMNTH_CNT, 
    CASE WHEN f.EVAL=100 THEN 1 END as EVAL100, 
    CASE WHEN f.EVAL=90 THEN 1 END as EVAL90, 
    CASE WHEN f.EVAL=80 THEN 1 END as EVAL80, 
    CASE WHEN f.EVAL=70 THEN 1 END as EVAL70, 
    CASE WHEN f.EVAL=50 THEN 1 END as EVAL50, 
    CASE WHEN f.EVAL=30 THEN 1 END as EVAL30, 
    CASE WHEN f.EVAL=10 THEN 1 END as EVAL10, 
    CASE WHEN f.EVAL=0 THEN 1 END as EVAL0, 
    CASE WHEN f.EVAL is null THEN 1 END as EVALNONE 
  FROM TBL_PLANMNTH a 
  INNER JOIN TBL_PLANYR b ON a.PLANYR_ID=b.ID 
  INNER JOIN TBL_FUNC_ACTION c ON b.FUNC_ACTION_ID=c.ID 
  INNER JOIN TBL_FUNC_STRAT d ON c.FUNC_STRAT_ID=d.ID 
  LEFT JOIN TBL_PLANYR_EVAL f ON b.ID=f.PLANYR_ID AND f.TP='month' AND f.INTERVAL=" + strMnth+ @" 
  WHERE a.SUBMIT_D2=1 AND b.YR="+strYr+" AND TO_NUMBER(TO_CHAR(a.STRT_DATE,'mm'))=" + strMnth + @" 
  GROUP BY d.BR_ID, b.ID, f.EVAL 
) a 
INNER JOIN TBL_BRANCH b ON a.BR_ID=b.BR_ID AND b.YR=" + strYr + @" 
GROUP BY b.DOMAIN_ORG, b.BR_NAME, b.SORT 
ORDER BY b.SORT";
                ds = myObj.OracleExecuteDataSet(strQry);
                strData = "";
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        if(dr["PLANMNTH_CNT"].ToString().Trim() != "-") cnt += Int32.Parse(dr["PLANMNTH_CNT"].ToString());
                        if (dr["EVAL100"].ToString().Trim() != "-") cnt100 += Int32.Parse(dr["EVAL100"].ToString());
                        if (dr["EVAL90"].ToString().Trim() != "-") cnt90 += Int32.Parse(dr["EVAL90"].ToString());
                        if (dr["EVAL80"].ToString().Trim() != "-") cnt80 += Int32.Parse(dr["EVAL80"].ToString());
                        if (dr["EVAL70"].ToString().Trim() != "-") cnt70 += Int32.Parse(dr["EVAL70"].ToString());
                        if (dr["EVAL50"].ToString().Trim() != "-") cnt50 += Int32.Parse(dr["EVAL50"].ToString());
                        if (dr["EVAL30"].ToString().Trim() != "-") cnt30 += Int32.Parse(dr["EVAL30"].ToString());
                        if (dr["EVAL10"].ToString().Trim() != "-") cnt10 += Int32.Parse(dr["EVAL10"].ToString());
                        if (dr["EVAL0"].ToString().Trim() != "-") cnt0 += Int32.Parse(dr["EVAL0"].ToString());
                        if (dr["EVALNONE"].ToString().Trim() != "-") cntnone += Int32.Parse(dr["EVALNONE"].ToString());
                        peravg += float.Parse(dr["PERAVG"].ToString());
                        pntavg += float.Parse(dr["PNTAVG"].ToString());
                        strData += "<tr style=\"background-color:#f9f9f9; -webkit-print-color-adjust: exact;\">";
                        strData += "<td style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + (cntgazarcnt+1).ToString() + "</td>";
                        strData += "<td style=\"text-align:left; border: 1px solid grey; padding:3px;\">" + dr["DOMAIN_ORG"].ToString() + "</td>";
                        strData += "<td style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + dr["PLANMNTH_CNT"].ToString() + "</td>";
                        strData += "<td style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + dr["EVAL100"].ToString() + "</td>";
                        strData += "<td style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + dr["EVAL90"].ToString() + "</td>";
                        strData += "<td style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + dr["EVAL80"].ToString() + "</td>";
                        strData += "<td style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + dr["EVAL70"].ToString() + "</td>";
                        strData += "<td style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + dr["EVAL50"].ToString() + "</td>";
                        strData += "<td style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + dr["EVAL30"].ToString() + "</td>";
                        strData += "<td style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + dr["EVAL10"].ToString() + "</td>";
                        strData += "<td style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + dr["EVAL0"].ToString() + "</td>";
                        strData += "<td style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + dr["EVALNONE"].ToString() + "</td>";
                        strData += "<td style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + Math.Round(float.Parse(dr["PERAVG"].ToString()),1).ToString() + "</td>";
                        strData += "<td style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + Math.Round(float.Parse(dr["PNTAVG"].ToString()),2).ToString() + "</td>";
                        strData += "</tr>";
                        cntgazarcnt++;
                    }
                }
                pTab1PlanmnthTbody1.InnerHtml = strData;
                strData = "";
                strData += "<tfoot style=\"background-color:C6D9F1;\">";
                strData += "<tr style=\"background-color:#f9f9f9; -webkit-print-color-adjust: exact;\">";
                strData += "<th style=\"text-align:center; border: 1px solid grey; padding:3px;\"></th>";
                strData += "<th style=\"text-align:center; border: 1px solid grey; padding:3px;\">НИЙТ</th>";
                strData += "<th style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + cnt.ToString() + "</th>";
                strData += "<th style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + cnt100.ToString() + "</th>";
                strData += "<th style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + cnt90.ToString() + "</th>";
                strData += "<th style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + cnt80.ToString() + "</th>";
                strData += "<th style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + cnt70.ToString() + "</th>";
                strData += "<th style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + cnt50.ToString() + "</th>";
                strData += "<th style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + cnt30.ToString() + "</th>";
                strData += "<th style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + cnt10.ToString() + "</th>";
                strData += "<th style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + cnt0.ToString() + "</th>";
                strData += "<th style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + cntnone.ToString() + "</th>";
                strData += "<th style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + Math.Round(peravg / cntgazarcnt, 1).ToString() + "</th>";
                strData += "<th style=\"text-align:center; border: 1px solid grey; padding:3px;\">" + Math.Round(pntavg / cntgazarcnt, 2).ToString() + "</th>";
                strData += "</tr>";
                pTab1PlanmnthTfoot1.InnerHtml = strData;
                pTab1PlanmnthYr1Span.InnerHtml = strYr;
                pTab1PlanmnthMnth1Span.InnerHtml = strMnth;
                pTab1PlanmnthPlanCount.InnerHtml = cnt.ToString();
                pTab1PlanmnthHighEvalCount.InnerHtml = (cnt100+cnt90+cnt80).ToString();
                pTab1PlanmnthMediumEvalCount.InnerHtml = (cnt50 + cnt70).ToString();
                pTab1PlanmnthLowEvalCount.InnerHtml = (cnt0 + cnt10 + cnt30).ToString();
                pTab1PlanmnthNoneEvalCount.InnerHtml = cntnone.ToString();
                pTab1PlanmnthMnth2Span.InnerHtml = strMnth;
                pTab1PlanmnthTotalPer1Span.InnerHtml = Math.Round(peravg / cntgazarcnt, 1).ToString();

                strQry = @"SELECT RTRIM(xmlagg (xmlelement (e, BR_NAME||' ('||PERAVG||' хувь)' || ', ') ORDER BY PERAVG DESC).extract('//text()'), ', ') as LIST1
FROM (
    SELECT BR_NAME, PERAVG
    FROM (
      SELECT b.BR_NAME, a.PERAVG
      FROM (
        SELECT 
          a.BR_ID, 
          ROUND((((NVL(SUM(a.EVAL100),0)*100)+ (NVL(SUM(a.EVAL90),0)*90)+ (NVL(SUM(a.EVAL80),0)*80)+ (NVL(SUM(a.EVAL70),0)*70)+ (NVL(SUM(a.EVAL50),0)*50)+ (NVL(SUM(a.EVAL30),0)*30)+ (NVL(SUM(a.EVAL10),0)*10)+ (NVL(SUM(a.EVAL0),0)*0))/CASE WHEN ((NVL(SUM(a.EVAL100),0)+NVL(SUM(a.EVAL90),0)+NVL(SUM(a.EVAL80),0)+NVL(SUM(a.EVAL70),0)+NVL(SUM(a.EVAL50),0)+NVL(SUM(a.EVAL30),0)+NVL(SUM(a.EVAL10),0)+NVL(SUM(a.EVAL0),0))*100)=0 THEN 1 ELSE ((NVL(SUM(a.EVAL100),0)+NVL(SUM(a.EVAL90),0)+NVL(SUM(a.EVAL80),0)+NVL(SUM(a.EVAL70),0)+NVL(SUM(a.EVAL50),0)+NVL(SUM(a.EVAL30),0)+NVL(SUM(a.EVAL10),0)+NVL(SUM(a.EVAL0),0))*100) END)*100,2) as PERAVG 
        FROM ( 
          SELECT 
            d.BR_ID, 
            b.ID as PLANYR_ID, 
            COUNT(a.ID) as PLANMNTH_CNT, 
            CASE WHEN f.EVAL=100 THEN 1 END as EVAL100, 
            CASE WHEN f.EVAL=90 THEN 1 END as EVAL90, 
            CASE WHEN f.EVAL=80 THEN 1 END as EVAL80, 
            CASE WHEN f.EVAL=70 THEN 1 END as EVAL70, 
            CASE WHEN f.EVAL=50 THEN 1 END as EVAL50, 
            CASE WHEN f.EVAL=30 THEN 1 END as EVAL30, 
            CASE WHEN f.EVAL=10 THEN 1 END as EVAL10, 
            CASE WHEN f.EVAL=0 THEN 1 END as EVAL0, 
            CASE WHEN f.EVAL is null THEN 1 END as EVALNONE 
          FROM TBL_PLANMNTH a 
          INNER JOIN TBL_PLANYR b ON a.PLANYR_ID=b.ID 
          INNER JOIN TBL_FUNC_ACTION c ON b.FUNC_ACTION_ID=c.ID 
          INNER JOIN TBL_FUNC_STRAT d ON c.FUNC_STRAT_ID=d.ID 
          LEFT JOIN TBL_PLANYR_EVAL f ON b.ID=f.PLANYR_ID AND f.TP='month' AND f.INTERVAL=" + strMnth+ @" 
          WHERE a.SUBMIT_D2=1 AND b.YR=" + strYr + " AND TO_NUMBER(TO_CHAR(a.STRT_DATE,'mm'))=" + strMnth + @" 
          GROUP BY d.BR_ID, b.ID, f.EVAL 
        ) a 
        GROUP BY a.BR_ID
      ) a
      INNER JOIN TBL_BRANCH b ON a.BR_ID=b.BR_ID AND b.YR=" + strYr + @"
      ORDER BY a.PERAVG DESC
    ) 
    WHERE ROWNUM < 4
)";
                ds = myObj.OracleExecuteDataSet(strQry);
                pTab1PlanmnthLast3HighEvalGazarList1Span.InnerHtml = ds.Tables[0].Rows[0]["LIST1"].ToString();
                strQry = @"SELECT RTRIM(xmlagg (xmlelement (e, BR_NAME||' ('||PERAVG||' хувь)' || ', ') ORDER BY PERAVG DESC).extract('//text()'), ', ') as LIST1
FROM (
    SELECT BR_NAME, PERAVG
    FROM (
      SELECT b.BR_NAME, a.PERAVG
      FROM (
        SELECT 
          a.BR_ID, 
          ROUND((((NVL(SUM(a.EVAL100),0)*100)+ (NVL(SUM(a.EVAL90),0)*90)+ (NVL(SUM(a.EVAL80),0)*80)+ (NVL(SUM(a.EVAL70),0)*70)+ (NVL(SUM(a.EVAL50),0)*50)+ (NVL(SUM(a.EVAL30),0)*30)+ (NVL(SUM(a.EVAL10),0)*10)+ (NVL(SUM(a.EVAL0),0)*0))/CASE WHEN ((NVL(SUM(a.EVAL100),0)+NVL(SUM(a.EVAL90),0)+NVL(SUM(a.EVAL80),0)+NVL(SUM(a.EVAL70),0)+NVL(SUM(a.EVAL50),0)+NVL(SUM(a.EVAL30),0)+NVL(SUM(a.EVAL10),0)+NVL(SUM(a.EVAL0),0))*100)=0 THEN 1 ELSE ((NVL(SUM(a.EVAL100),0)+NVL(SUM(a.EVAL90),0)+NVL(SUM(a.EVAL80),0)+NVL(SUM(a.EVAL70),0)+NVL(SUM(a.EVAL50),0)+NVL(SUM(a.EVAL30),0)+NVL(SUM(a.EVAL10),0)+NVL(SUM(a.EVAL0),0))*100) END)*100,2) as PERAVG 
        FROM ( 
          SELECT 
            d.BR_ID, 
            b.ID as PLANYR_ID, 
            COUNT(a.ID) as PLANMNTH_CNT, 
            CASE WHEN f.EVAL=100 THEN 1 END as EVAL100, 
            CASE WHEN f.EVAL=90 THEN 1 END as EVAL90, 
            CASE WHEN f.EVAL=80 THEN 1 END as EVAL80, 
            CASE WHEN f.EVAL=70 THEN 1 END as EVAL70, 
            CASE WHEN f.EVAL=50 THEN 1 END as EVAL50, 
            CASE WHEN f.EVAL=30 THEN 1 END as EVAL30, 
            CASE WHEN f.EVAL=10 THEN 1 END as EVAL10, 
            CASE WHEN f.EVAL=0 THEN 1 END as EVAL0, 
            CASE WHEN f.EVAL is null THEN 1 END as EVALNONE 
          FROM TBL_PLANMNTH a 
          INNER JOIN TBL_PLANYR b ON a.PLANYR_ID=b.ID 
          INNER JOIN TBL_FUNC_ACTION c ON b.FUNC_ACTION_ID=c.ID 
          INNER JOIN TBL_FUNC_STRAT d ON c.FUNC_STRAT_ID=d.ID 
          LEFT JOIN TBL_PLANYR_EVAL f ON b.ID=f.PLANYR_ID AND f.TP='month' AND f.INTERVAL=" + strMnth + @" 
          WHERE a.SUBMIT_D2=1 AND b.YR=" + strYr + " AND TO_NUMBER(TO_CHAR(a.STRT_DATE,'mm'))=" + strMnth + @" 
          GROUP BY d.BR_ID, b.ID, f.EVAL 
        ) a 
        GROUP BY a.BR_ID
      ) a
      INNER JOIN TBL_BRANCH b ON a.BR_ID=b.BR_ID AND b.YR=" + strYr + @"
      ORDER BY a.PERAVG ASC
    ) 
    WHERE ROWNUM < 4
)";
                ds = myObj.OracleExecuteDataSet(strQry);
                pTab1PlanmnthLast3LowEvalGazarList1Span.InnerHtml = ds.Tables[0].Rows[0]["LIST1"].ToString();


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