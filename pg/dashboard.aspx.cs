using LMWebApp.cs;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

namespace LMWebApp.pg
{
    public partial class dashboard : System.Web.UI.Page
    {
        string currentYear = "", currentMonth = "";
        string userGazarId = "", userGazarInitName="", userStaffName="";
        string userHeltesId = "";
        string userHeltesInitName = "";
        string userId = "";
        string strQry = "";
        string strMyVal = "";
        string strMnthList = "";
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
                DataSet ds = myObjGetTableData.getCurrentInfo();
                currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
                currentMonth = ds.Tables[0].Rows[0]["MONTH"].ToString();
                userId = Session["LM_UserID"].ToString();
                ds = myObjGetTableData.getUserInfo(userId);
                userGazarId = ds.Tables[0].Rows[0]["GAZARID"].ToString();
                userGazarInitName = ds.Tables[0].Rows[0]["GAZARNAMEINIT"].ToString();
                userHeltesId = ds.Tables[0].Rows[0]["HELTESID"].ToString();
                userHeltesInitName = ds.Tables[0].Rows[0]["HELTESNAMEINIT"].ToString();
                userStaffName = ds.Tables[0].Rows[0]["STNAMEINIT"].ToString();
                for (int i = 1; i <= Int32.Parse(currentMonth); i++)
                {
                    if (strMnthList != "") strMnthList += ", ";
                    strMnthList += i.ToString();
                }

                //set currency
                strMyVal = "";
                ds = myObj.OracleExecuteDataSet("SELECT * FROM ( SELECT KEYVAL, DT, VAL FROM TBL_QRYRESULTDATAS WHERE KEYVAL LIKE 'CURRENCY_%' ) PIVOT( MAX(VAL) FOR KEYVAL IN ('CURRENCY_USD' as \"USD\", 'CURRENCY_EUR' as \"EUR\", 'CURRENCY_CNY' as \"CNY\", 'CURRENCY_GBP' as \"GBP\", 'CURRENCY_RUB' as \"RUB\", 'CURRENCY_JPY' as \"JPY\", 'CURRENCY_CHF' as \"CHF\", 'CURRENCY_KZT' as \"KZT\", 'CURRENCY_KRW' as \"KRW\", 'CURRENCY_CZK' as \"CZK\"))");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        dashboardCurrencyDate.InnerHtml = dr["DT"].ToString();
                        strMyVal += "<li><img class=\"flag flag-us\" src=\"img/blank.gif\" alt=\"USD\">&nbsp;USD: "+dr["USD"].ToString()+"</li>";
                        strMyVal += "<li><img class=\"flag flag-eu\" src=\"img/blank.gif\" alt=\"EUR\">&nbsp;EUR: " + dr["EUR"].ToString() + "</li>";
                        strMyVal += "<li><img class=\"flag flag-cn\" src=\"img/blank.gif\" alt=\"CNY\">&nbsp;CNY: " + dr["CNY"].ToString() + "</li>";
                        strMyVal += "<li><img class=\"flag flag-gb\" src=\"img/blank.gif\" alt=\"GBP\">&nbsp;GBP: " + dr["GBP"].ToString() + "</li>";
                        strMyVal += "<li><img class=\"flag flag-ru\" src=\"img/blank.gif\" alt=\"RUB\">&nbsp;RUB: " + dr["RUB"].ToString() + "</li>";
                        strMyVal += "<li><img class=\"flag flag-jp\" src=\"img/blank.gif\" alt=\"JPY\">&nbsp;JPY: " + dr["JPY"].ToString() + "</li>";
                        strMyVal += "<li><img class=\"flag flag-ch\" src=\"img/blank.gif\" alt=\"CHF\">&nbsp;CHF: " + dr["CHF"].ToString() + "</li>";
                        strMyVal += "<li><img class=\"flag flag-kz\" src=\"img/blank.gif\" alt=\"KZT\">&nbsp;KZT: " + dr["KZT"].ToString() + "</li>";
                        strMyVal += "<li><img class=\"flag flag-kr\" src=\"img/blank.gif\" alt=\"KRW\">&nbsp;KRW: " + dr["KRW"].ToString() + "</li>";
                        strMyVal += "<li><img class=\"flag flag-cz\" src=\"img/blank.gif\" alt=\"CZK\">&nbsp;CZK: " + dr["CZK"].ToString() + "</li>";
                    }
                }
                webticker.InnerHtml = strMyVal;

                //set weather
                strMyVal = "";
                webticker2.InnerHtml = myObj.OracleExecuteScalar("SELECT VAL FROM TBL_QRYRESULTDATAS WHERE KEYVAL='WEATHER_UB'").ToString();

                dashboardSection2SelectYear.SelectedIndex = dashboardSection2SelectYear.Items.IndexOf(dashboardSection2SelectYear.Items.FindByValue(currentYear));
                dashboardSection2SelectMonth.SelectedIndex = dashboardSection2SelectMonth.Items.IndexOf(dashboardSection2SelectMonth.Items.FindByValue(currentMonth));

                //set HR profile info
                dashboardSection1btnStaffAnket.HRef = "http://hr/#pg/profile.aspx?id=" + Session["LM_UserID"];
                ds = myObj.OracleExecuteDataSet("SELECT a.IMAGE, CASE WHEN i.ACTIVE=1 AND i.SHOW=1 THEN TO_CHAR(h.NAME) WHEN i.ACTIVE=1 AND i.SHOW=0 THEN 'Идэвхтэй' ELSE TO_CHAR(j.NAME) END AS TP, i.COLOR, CASE WHEN a.GENDER=1 THEN '<i class=\"fa fa-male\"></i> Эрэгтэй<br />' ELSE '<i class=\"fa fa-female\"></i> Эмэгтэй<br />' END as GENDER,  NVL(TO_CHAR(trunc(months_between(sysdate,to_date(a.BDATE,'YYYY-MM-DD'))/12)),'-') as AGE,  a.FNAME, a.LNAME, CASE WHEN c.ID=c.FATHER_ID THEN c.INITNAME ELSE d.INITNAME||' - '||c.INITNAME END as NEGJ, f.NAME as POS_NAME, a.TEL||CASE WHEN TEL is not null THEN ', '||TEL2 END as TEL, a.EMAIL, g.NAME||NVL2(g.NAME,', ','')||h.NAME||NVL2(h.NAME,', ','')||a.ADDRESSNAME as ADDRESSNAME, a.REGNO, a.CITNO, a.SOCNO, a.HEALNO FROM hrdbuser.ST_STAFFS a INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE=1 INNER JOIN hrdbuser.ST_BRANCH c ON b.BRANCH_ID=c.ID INNER JOIN hrdbuser.ST_BRANCH d ON c.FATHER_ID=d.ID INNER JOIN hrdbuser.STN_POS f ON b.POS_ID=f.ID LEFT JOIN hrdbuser.STN_CITY g ON a.ADDRCITY_ID=g.ID LEFT JOIN hrdbuser.STN_DIST h ON a.ADDRDIST_ID=h.ID INNER JOIN hrdbuser.STN_MOVE i ON b.MOVE_ID=i.ID INNER JOIN hrdbuser.STN_MOVETYPE j ON i.MOVETYPE_ID=j.ID WHERE a.ID=" + Session["LM_UserID"].ToString());
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        if (dr["IMAGE"].ToString() != "") dashboardSection1Image.Src = "http://hr/files/staffs/" + dr["IMAGE"].ToString();
                        dashboardSection1DivStafftype.InnerHtml = "<span class=\"label " + dr["COLOR"].ToString() + "\">" + dr["TP"].ToString() + "</span><br /><br />" + dr["GENDER"].ToString() + "<span>" + dr["AGE"].ToString() + " нас</span>";
                        dashboardSection1H1Names.InnerHtml = "<span class=\"semi-bold\">" + dr["FNAME"].ToString() + "</span> " + dr["LNAME"].ToString() + "<br><small>" + dr["NEGJ"].ToString() + " | " + dr["POS_NAME"].ToString() + "</small>";
                        if (dr["TEL"].ToString() != "") dashboardSection1SpanTels.InnerHtml = dr["TEL"].ToString();
                        if (dr["EMAIL"].ToString() != "")
                        {
                            dashboardSection1SpanEmail.InnerHtml = dr["EMAIL"].ToString();
                            dashboardSection1SpanEmail.HRef = "mailto:" + dr["EMAIL"].ToString();
                        }
                        if (dr["ADDRESSNAME"].ToString() != "") dashboardSection1SpanAddress.InnerHtml = dr["ADDRESSNAME"].ToString();
                    }
                }

                strMyVal = myObj.OracleExecuteScalar("SELECT ROUND(SUM(TOTALTM)/365,1)||'~'||ROUND(SUM(ISGOVTM)/365,1)||'~'||ROUND(SUM(ISMYORG)/365,1) as TMS FROM ( SELECT SUM(CC) as TOTALTM, 0 as ISGOVTM, 0 as ISMYORG FROM ( SELECT NVL(TO_DATE(a.TODATE,'YYYY-MM-DD'),SYSDATE)-TO_DATE(a.FROMDATE,'YYYY-MM-DD') as CC, b.ISGOV, 0 as ISMYORG FROM hrdbuser.ST_EXPHISTORY a INNER JOIN hrdbuser.STN_ORGTYPE b ON a.ORGTYPE_ID=b.ID WHERE a.STAFFS_ID=" + Session["LM_UserID"].ToString() + " UNION ALL SELECT (SELECT CASE WHEN b.ACTIVE=1 THEN SYSDATE ELSE TO_DATE(a.DT,'YYYY-MM-DD') END FROM hrdbuser.ST_STBR a INNER JOIN hrdbuser.STN_MOVE b ON a.MOVE_ID=b.ID WHERE a.STAFFS_ID=" + Session["LM_UserID"].ToString() + " AND a.ISACTIVE=1)-(SELECT MIN(TO_DATE(DT,'YYYY-MM-DD')) FROM hrdbuser.ST_STBR WHERE STAFFS_ID=" + Session["LM_UserID"].ToString() + ") as CC, 1 as ISGOV, 1 as ISMYORG FROM DUAL ) UNION ALL SELECT 0 as TOTALTM, SUM(CC) as ISGOVTM, 0 as ISMYORG FROM ( SELECT NVL(TO_DATE(a.TODATE,'YYYY-MM-DD'),SYSDATE)-TO_DATE(a.FROMDATE,'YYYY-MM-DD') as CC, b.ISGOV, 0 as ISMYORG FROM hrdbuser.ST_EXPHISTORY a INNER JOIN hrdbuser.STN_ORGTYPE b ON a.ORGTYPE_ID=b.ID WHERE a.STAFFS_ID=" + Session["LM_UserID"].ToString() + " UNION ALL SELECT (SELECT CASE WHEN b.ACTIVE=1 THEN SYSDATE ELSE TO_DATE(a.DT,'YYYY-MM-DD') END FROM hrdbuser.ST_STBR a INNER JOIN hrdbuser.STN_MOVE b ON a.MOVE_ID=b.ID WHERE a.STAFFS_ID=" + Session["LM_UserID"].ToString() + " AND a.ISACTIVE=1)-(SELECT MIN(TO_DATE(DT,'YYYY-MM-DD')) FROM hrdbuser.ST_STBR WHERE STAFFS_ID=" + Session["LM_UserID"].ToString() + ") as CC, 1 as ISGOV, 1 as ISMYORG FROM DUAL ) WHERE ISGOV=1 UNION ALL SELECT 0 as TOTALTM, 0 as ISGOVTM, SUM(CC) as ISMYORG FROM ( SELECT NVL(TO_DATE(a.TODATE,'YYYY-MM-DD'),SYSDATE)-TO_DATE(a.FROMDATE,'YYYY-MM-DD') as CC, b.ISGOV, 0 as ISMYORG FROM hrdbuser.ST_EXPHISTORY a INNER JOIN hrdbuser.STN_ORGTYPE b ON a.ORGTYPE_ID=b.ID WHERE a.STAFFS_ID=" + Session["LM_UserID"].ToString() + " UNION ALL SELECT (SELECT CASE WHEN b.ACTIVE=1 THEN SYSDATE ELSE TO_DATE(a.DT,'YYYY-MM-DD') END FROM hrdbuser.ST_STBR a INNER JOIN hrdbuser.STN_MOVE b ON a.MOVE_ID=b.ID WHERE a.STAFFS_ID=" + Session["LM_UserID"].ToString() + " AND a.ISACTIVE=1)-(SELECT MIN(TO_DATE(DT,'YYYY-MM-DD')) FROM hrdbuser.ST_STBR WHERE STAFFS_ID=" + Session["LM_UserID"].ToString() + ") as CC, 1 as ISGOV, 1 as ISMYORG FROM DUAL ) WHERE ISMYORG=1 )").ToString();
                string valTotalYear = "0", valTotalMonth = "0", valISGOVYear = "0", valISGOVMonth = "0", valISMYORGYear = "0", valISMYORGMonth = "0";
                valTotalYear = strMyVal.Split('~')[0].Split('.')[0];
                if (strMyVal.Split('~')[0].Split('.').Length > 1) valTotalMonth = strMyVal.Split('~')[0].Split('.')[1];
                valISGOVYear = strMyVal.Split('~')[1].Split('.')[0];
                if (strMyVal.Split('~')[1].Split('.').Length > 1) valISGOVMonth = strMyVal.Split('~')[1].Split('.')[1];
                valISMYORGYear = strMyVal.Split('~')[2].Split('.')[0];
                if (strMyVal.Split('~')[2].Split('.').Length > 1) valISMYORGMonth = strMyVal.Split('~')[2].Split('.')[1];
                dashboardSection1PWorkedTime.InnerHtml = "Нийт - <strong> " + valTotalYear + " жил " + valTotalMonth + " сар</strong><br>Төрд - <strong>" + valISGOVYear + " жил " + valISGOVMonth + " сар</strong><br>Сангийн яам - <strong>" + valISMYORGYear + " жил " + valISMYORGMonth + " сар</strong>";


                //set Col2-iin Section 1 //Sariin unelgee
                strQry = "";
                strMyVal = "";
                strQry = @"SELECT * 
FROM ( 
  SELECT a.BR_ID, a.DOMAIN_ORG, a.SORT, a.MNTH, b.PERAVG
  FROM (
    SELECT a.BR_ID, a.DOMAIN_ORG, a.SORT, b.MNTH
    FROM (
      SELECT BR_ID, DOMAIN_ORG, SORT 
      FROM TBL_BRANCH 
      WHERE YR=" + currentYear + @" AND BR_TYPE1=3 AND BR_ID NOT IN (9911,9903)
    ) a 
    , (
      SELECT ROWNUM MNTH FROM DUAL
      CONNECT BY LEVEL<=12 
    ) b
  ) a
  LEFT JOIN (
    SELECT a.BR_ID
      , a.MNTH
      , ROUND((((NVL(SUM(a.EVAL100),0)*100)+ (NVL(SUM(a.EVAL90),0)*90)+ (NVL(SUM(a.EVAL80),0)*80)+ (NVL(SUM(a.EVAL70),0)*70)+ (NVL(SUM(a.EVAL50),0)*50)+ (NVL(SUM(a.EVAL30),0)*30)+ (NVL(SUM(a.EVAL10),0)*10)+ (NVL(SUM(a.EVAL0),0)*0))/CASE WHEN ((NVL(SUM(a.EVAL100),0)+NVL(SUM(a.EVAL90),0)+NVL(SUM(a.EVAL80),0)+NVL(SUM(a.EVAL70),0)+NVL(SUM(a.EVAL50),0)+NVL(SUM(a.EVAL30),0)+NVL(SUM(a.EVAL10),0)+NVL(SUM(a.EVAL0),0))*100)=0 THEN 1 ELSE ((NVL(SUM(a.EVAL100),0)+NVL(SUM(a.EVAL90),0)+NVL(SUM(a.EVAL80),0)+NVL(SUM(a.EVAL70),0)+NVL(SUM(a.EVAL50),0)+NVL(SUM(a.EVAL30),0)+NVL(SUM(a.EVAL10),0)+NVL(SUM(a.EVAL0),0))*100) END)*100,1) as PERAVG
    FROM ( 
      SELECT d.BR_ID
        , TO_NUMBER(TO_CHAR(a.STRT_DATE,'mm')) as MNTH
        , b.ID as PLANYR_ID
        , COUNT(a.ID) as PLANMNTH_CNT
        , CASE WHEN f.EVAL=100 THEN 1 END as EVAL100
        , CASE WHEN f.EVAL=90 THEN 1 END as EVAL90
        , CASE WHEN f.EVAL=80 THEN 1 END as EVAL80
        , CASE WHEN f.EVAL=70 THEN 1 END as EVAL70
        , CASE WHEN f.EVAL=50 THEN 1 END as EVAL50
        , CASE WHEN f.EVAL=30 THEN 1 END as EVAL30
        , CASE WHEN f.EVAL=10 THEN 1 END as EVAL10
        , CASE WHEN f.EVAL=0 THEN 1 END as EVAL0
        , CASE WHEN f.EVAL is null THEN 1 END as EVALNONE 
      FROM TBL_PLANMNTH a 
      INNER JOIN TBL_PLANYR b ON a.PLANYR_ID=b.ID 
      INNER JOIN TBL_FUNC_ACTION c ON b.FUNC_ACTION_ID=c.ID 
      INNER JOIN TBL_FUNC_STRAT d ON c.FUNC_STRAT_ID=d.ID 
      LEFT JOIN TBL_PLANYR_EVAL f ON b.ID=f.PLANYR_ID AND f.TP='month' AND f.INTERVAL=TO_NUMBER(TO_CHAR(a.STRT_DATE,'mm')) 
      WHERE a.SUBMIT_D2=1 AND b.YR=" + currentYear + @"
      GROUP BY d.BR_ID, b.ID, f.EVAL, TO_NUMBER(TO_CHAR(a.STRT_DATE,'mm')) 
    ) a 
    GROUP BY a.BR_ID, a.MNTH
  ) b ON a.BR_ID=b.BR_ID AND a.MNTH=b.MNTH  
)
PIVOT(
  AVG(PERAVG)";
                strQry += "FOR MNTH IN (1 as \"Jan\",2 as \"Feb\",3 as \"Mar\",4 as \"Apr\",5 as \"May\",6 as \"Jun\",7 as \"Jul\",8 as \"Aug\",9 as \"Sep\",10 as \"Oct\",11 as \"Nov\",12 as \"Dec\") ) ORDER BY SORT";
                ds = myObj.OracleExecuteDataSet(strQry);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        strMyVal += "<tr>";
                        strMyVal += "<td>"+dr["DOMAIN_ORG"].ToString()+"</td>";
                        strMyVal += "<td class=\"text-center\">";
                        if (dr["Jan"].ToString() == "") strMyVal += "-";
                        else strMyVal += Math.Round(Convert.ToDouble(dr["Jan"].ToString()),1).ToString();
                        strMyVal += "</td>";
                        strMyVal += "<td class=\"text-center\">";
                        if (dr["Feb"].ToString() == "") strMyVal += "-";
                        else strMyVal += Math.Round(Convert.ToDouble(dr["Feb"].ToString()), 1).ToString();
                        strMyVal += "</td>";
                        strMyVal += "<td class=\"text-center\">";
                        if (dr["Mar"].ToString() == "") strMyVal += "-";
                        else strMyVal += Math.Round(Convert.ToDouble(dr["Mar"].ToString()), 1).ToString();
                        strMyVal += "</td>";
                        strMyVal += "<td class=\"text-center\">";
                        if (dr["Apr"].ToString() == "") strMyVal += "-";
                        else strMyVal += Math.Round(Convert.ToDouble(dr["Apr"].ToString()), 1).ToString();
                        strMyVal += "</td>";
                        strMyVal += "<td class=\"text-center\">";
                        if (dr["May"].ToString() == "") strMyVal += "-";
                        else strMyVal += Math.Round(Convert.ToDouble(dr["May"].ToString()), 1).ToString();
                        strMyVal += "</td>";
                        strMyVal += "<td class=\"text-center\">";
                        if (dr["Jun"].ToString() == "") strMyVal += "-";
                        else strMyVal += Math.Round(Convert.ToDouble(dr["Jun"].ToString()), 1).ToString();
                        strMyVal += "</td>";
                        strMyVal += "<td class=\"text-center\">";
                        if (dr["Jul"].ToString() == "") strMyVal += "-";
                        else strMyVal += Math.Round(Convert.ToDouble(dr["Jul"].ToString()), 1).ToString();
                        strMyVal += "</td>";
                        strMyVal += "<td class=\"text-center\">";
                        if (dr["Aug"].ToString() == "") strMyVal += "-";
                        else strMyVal += Math.Round(Convert.ToDouble(dr["Aug"].ToString()), 1).ToString();
                        strMyVal += "</td>";
                        strMyVal += "<td class=\"text-center\">";
                        if (dr["Sep"].ToString() == "") strMyVal += "-";
                        else strMyVal += Math.Round(Convert.ToDouble(dr["Sep"].ToString()), 1).ToString();
                        strMyVal += "</td>";
                        strMyVal += "<td class=\"text-center\">";
                        if (dr["Oct"].ToString() == "") strMyVal += "-";
                        else strMyVal += Math.Round(Convert.ToDouble(dr["Oct"].ToString()), 1).ToString();
                        strMyVal += "</td>";
                        strMyVal += "<td class=\"text-center\">";
                        if (dr["Nov"].ToString() == "") strMyVal += "-";
                        else strMyVal += Math.Round(Convert.ToDouble(dr["Nov"].ToString()), 1).ToString();
                        strMyVal += "</td>";
                        strMyVal += "<td class=\"text-center\">";
                        if (dr["Dec"].ToString() == "") strMyVal += "-";
                        else strMyVal += Math.Round(Convert.ToDouble(dr["Dec"].ToString()), 1).ToString();
                        strMyVal += "</td>";
                        strMyVal += "</tr>";
                    }
                }
                dashboardCol2Sec1Tbody.InnerHtml = strMyVal;


                //col 1 section 2 //letter person
                letterDate.InnerHtml = DateTime.Today.ToString("yyyy-MM-dd");
                letterStaffName.InnerHtml = userStaffName;
                //string strLetter0 = "SELECT COUNT(1) as CNT FROM MOFDMS" + currentYear + ".dbo.Document WITH(NOLOCK) WHERE TOSTAFFID = " + userId + " AND DOCUMENTTYPE = 'I' AND DOCNOTEPKID != 51 AND ISREPLYDOC = 'Y' AND CLOSEDDATE IS NULL AND PARENTPKID IS NOT NULL AND PKID NOT IN(SELECT PARENTPKID FROM MOFDMS" + currentYear + ".dbo.Document WITH(NOLOCK) WHERE PARENTPKID IS NOT NULL)";
                //string strLetter1 = "SELECT COUNT(1) as CNT FROM MOFDMS" + currentYear + ".dbo.Document WITH(NOLOCK) WHERE TOSTAFFID = " + userId+ " AND DOCUMENTTYPE = 'I' AND DOCNOTEPKID != 51 AND ISREPLYDOC = 'Y' AND RETURNDATE > = CLOSEDDATE AND PARENTPKID IS NOT NULL AND PKID NOT IN(SELECT PARENTPKID FROM MOFDMS" + currentYear + ".dbo.Document WITH(NOLOCK) WHERE PARENTPKID IS NOT NULL)";
                //string strLetter2 = "SELECT COUNT(1) as CNT FROM MOFDMS" + currentYear + ".dbo.Document WITH(NOLOCK) WHERE TOSTAFFID = " + userId+ " AND DOCUMENTTYPE = 'I' AND DOCNOTEPKID != 51 AND ISREPLYDOC = 'Y' AND CLOSEDDATE > = RETURNDATE AND PARENTPKID IS NOT NULL AND PKID NOT IN(SELECT PARENTPKID FROM MOFDMS" + currentYear + ".dbo.Document WITH(NOLOCK) WHERE PARENTPKID IS NOT NULL)";

                //ds = myObj.ExecuteDataSet(strLetter0 + "     "+ strLetter1 + "     " + strLetter2);
                //letterKartCount.InnerHtml = ds.Tables[0].Rows[0]["CNT"].ToString();
                //letterTotalKartCount.InnerHtml = (Int32.Parse(ds.Tables[0].Rows[0]["CNT"].ToString())+Int32.Parse(ds.Tables[1].Rows[0]["CNT"].ToString()) + Int32.Parse(ds.Tables[2].Rows[0]["CNT"].ToString())).ToString();
                //letterTotalClosedKartCount.InnerHtml = ds.Tables[1].Rows[0]["CNT"].ToString();
                //letterTotalLateKartCount.InnerHtml = ds.Tables[2].Rows[0]["CNT"].ToString();

                ////col 2 section 2 //negj person
                //strLetter0 = "SELECT COUNT(1) as CNT FROM MOFDMS" + currentYear + ".dbo.Document WITH(NOLOCK) WHERE TOBRID = " + userHeltesId + " AND DOCUMENTTYPE = 'I' AND DOCNOTEPKID != 51 AND ISREPLYDOC = 'Y' AND CLOSEDDATE IS NULL AND PARENTPKID IS NOT NULL AND PKID NOT IN(SELECT PARENTPKID FROM MOFDMS" + currentYear + ".dbo.Document WITH(NOLOCK) WHERE PARENTPKID IS NOT NULL)";
                //strLetter1 = "SELECT COUNT(1) as CNT FROM MOFDMS" + currentYear + ".dbo.Document WITH(NOLOCK) WHERE TOBRID = " + userHeltesId + " AND DOCUMENTTYPE = 'I' AND DOCNOTEPKID != 51 AND ISREPLYDOC = 'Y' AND RETURNDATE > = CLOSEDDATE AND PARENTPKID IS NOT NULL AND PKID NOT IN(SELECT PARENTPKID FROM MOFDMS" + currentYear + ".dbo.Document WITH(NOLOCK) WHERE PARENTPKID IS NOT NULL)";
                //strLetter2 = "SELECT COUNT(1) as CNT FROM MOFDMS" + currentYear + ".dbo.Document WITH(NOLOCK) WHERE TOBRID = " + userHeltesId + " AND DOCUMENTTYPE = 'I' AND DOCNOTEPKID != 51 AND ISREPLYDOC = 'Y' AND CLOSEDDATE > = RETURNDATE AND PARENTPKID IS NOT NULL AND PKID NOT IN(SELECT PARENTPKID FROM MOFDMS" + currentYear + ".dbo.Document WITH(NOLOCK) WHERE PARENTPKID IS NOT NULL)";

                //ds = myObj.ExecuteDataSet(strLetter0 + "     " + strLetter1 + "     " + strLetter2);
                //dashboardtCol2Sec2KartCount.InnerHtml = ds.Tables[0].Rows[0]["CNT"].ToString();
                //dashboardtCol2Sec2TotalKartCount.InnerHtml = (Int32.Parse(ds.Tables[0].Rows[0]["CNT"].ToString()) + Int32.Parse(ds.Tables[1].Rows[0]["CNT"].ToString()) + Int32.Parse(ds.Tables[2].Rows[0]["CNT"].ToString())).ToString();
                //dashboardtCol2Sec2TotalClosedKartCount.InnerHtml = ds.Tables[1].Rows[0]["CNT"].ToString();
                //dashboardtCol2Sec2TotalLateKartCount.InnerHtml = ds.Tables[2].Rows[0]["CNT"].ToString();

                dashboardtCol2Sec2SpanInitname.InnerHtml = userHeltesInitName;
                dashboardtCol2Sec2SpanDate.InnerHtml= DateTime.Today.ToString("yyyy-MM-dd");

                //col2 section3 totals
                dashboardCol2Sec3Table1GazarInitname1.InnerHtml = userGazarInitName;
                dashboardCol2Sec3Table1GazarInitname2.InnerHtml = userGazarInitName;
                dashboardCol2Sec3Table1GazarInitname3.InnerHtml = userGazarInitName;

                strMyVal = "";
                string strTable1 = "", strTable2="";
                string strValChartComeTm = "", strValChartComeTm_Gazar = "", strValChartComeTm_Me = "";
                string strValChartGoTm = "", strValChartGoTm_Gazar = "", strValChartGoTm_Me = "";
                string strValChartWorkedTm = "", strValChartWorkedTm_Gazar = "", strValChartWorkedTm_Me = "";
                //                strQry = @"SELECT * 
                //FROM ( 
                //  SELECT 
                //    a.KEYVAL, 
                //    a.MNTH, 
                //    --NVL(b.VAL,0) as VAL, 
                //    CASE WHEN b.VAL IS NULL THEN TO_CHAR('--:--:--') ELSE TO_CHAR(TO_DATE(b.VAL,'SSSSS'), 'HH24:MI:SS') END as TM
                //  FROM (
                //    SELECT a.KEYVAL, b.MNTH
                //    FROM (
                //      SELECT 'IRTSAVGCOMETM' as KEYVAL FROM DUAL
                //      UNION ALL 
                //      SELECT 'IRTSAVGGOTM' as KEYVAL FROM DUAL
                //      UNION ALL 
                //      SELECT 'IRTSAVGWORKEDTM' as KEYVAL FROM DUAL
                //      UNION ALL 
                //      SELECT 'IRTSAVGCOMETM_GAZAR' as KEYVAL FROM DUAL
                //      UNION ALL 
                //      SELECT 'IRTSAVGGOTM_GAZAR' as KEYVAL FROM DUAL
                //      UNION ALL 
                //      SELECT 'IRTSAVGWORKEDTM_GAZAR' as KEYVAL FROM DUAL
                //      UNION ALL 
                //      SELECT 'IRTSAVGCOMETM_ME' as KEYVAL FROM DUAL
                //      UNION ALL 
                //      SELECT 'IRTSAVGGOTM_ME' as KEYVAL FROM DUAL
                //      UNION ALL 
                //      SELECT 'IRTSAVGWORKEDTM_ME' as KEYVAL FROM DUAL
                //    ) a, 
                //    (
                //      SELECT ROWNUM MNTH FROM DUAL
                //      CONNECT BY LEVEL<=" + currentMonth + @" 
                //    ) b 
                //  ) a
                //  LEFT JOIN (
                //    SELECT TO_CHAR(KEYVAL) as KEYVAL, TO_NUMBER(TO_CHAR(TO_DATE(VAL,'HH24:MI:SS'),'SSSSS')) as VAL, TO_NUMBER(MNTH) as MNTH 
                //    FROM TBL_QRYRESULTDATAS 
                //    WHERE KEYVAL IN ('IRTSAVGCOMETM', 'IRTSAVGGOTM', 'IRTSAVGWORKEDTM', 'IRTSAVGCOMETM_GAZAR', 'IRTSAVGGOTM_GAZAR', 'IRTSAVGWORKEDTM_GAZAR') AND YR = " + currentYear + " AND (TP IS NULL OR TP='" + userGazarId + @"')
                //    UNION ALL
                //    SELECT TO_CHAR(KEYVAL) as KEYVAL, TO_NUMBER(TM) as VAL, TO_NUMBER(MNTH) as MNTH
                //    FROM (
                //        SELECT * FROM (
                //        SELECT 
                //            MNTH
                //            , TO_NUMBER(TO_CHAR(TO_DATE(TO_CHAR(TRUNC(COMETM/3600),'FM9900') || ':' ||TO_CHAR(TRUNC(MOD(COMETM,3600)/60),'FM00') || ':' ||TO_CHAR(MOD(COMETM,60),'FM00'),'HH24:MI:SS'),'SSSSS')) as IRTSAVGCOMETM_ME
                //            , TO_NUMBER(TO_CHAR(TO_DATE(TO_CHAR(TRUNC(MAXTM/3600),'FM9900') || ':' ||TO_CHAR(TRUNC(MOD(MAXTM,3600)/60),'FM00') || ':' ||TO_CHAR(MOD(MAXTM,60),'FM00'),'HH24:MI:SS'),'SSSSS')) as IRTSAVGGOTM_ME
                //            , TO_NUMBER(TO_CHAR(TO_DATE(TO_CHAR(TRUNC((MAXTM-COMETM)/3600),'FM9900') || ':' ||TO_CHAR(TRUNC(MOD((MAXTM-COMETM),3600)/60),'FM00') || ':' ||TO_CHAR(MOD((MAXTM-COMETM),60),'FM00'),'HH24:MI:SS'),'SSSSS')) as IRTSAVGWORKEDTM_ME
                //        FROM (
                //            SELECT TO_NUMBER(TO_CHAR(a.DT,'MM')) as MNTH, AVG(TO_NUMBER(TO_CHAR(TO_DATE(a.MINTM,'HH24:MI:SS'),'SSSSS'))) as COMETM, AVG(TO_NUMBER(TO_CHAR(TO_DATE(a.MAXTM,'HH24:MI:SS'),'SSSSS'))) as MAXTM
                //            FROM (
                //            SELECT ST_ID, TP, DT, MINTM, MAXTM, ISWORK
                //            FROM( 
                //                SELECT a.ST_ID, a.TP, a.DT, a.MINTM, a.MAXTM, CASE WHEN b.DT is null THEN a.ISWORK ELSE 0 END as ISWORK
                //                FROM( 
                //                SELECT a.ST_ID, NVL(b.TP, 0) as TP, a.DT, a.MINTM, a.MAXTM, a.ISWORK
                //                FROM( 
                //                    SELECT a.ST_ID, a.DT, NVL(b.TP, 0) as TP, NVL(b.MINTM, '00:00:00') as MINTM, NVL(b.MAXTM, '00:00:00') as MAXTM, a.ISWORK
                //                    FROM(
                //                    SELECT a.STAFFS_ID as ST_ID, a.DT, CASE WHEN b.DT IS NULL THEN a.ISWORK ELSE 1 END as ISWORK
                //                    FROM(              
                //                        SELECT a.ID, b.STAFFS_ID, a.DT, CASE WHEN(MOD(TO_CHAR(a.DT, 'J'), 7) + 1) = 6 OR(MOD(TO_CHAR(a.DT, 'J'), 7) + 1) = 7 THEN 0 ELSE 1 END as ISWORK
                //                        FROM (              
                //                        SELECT a.ID, a.BEGINDT, a.ENDDT, b.DT
                //                        FROM(                
                //                            SELECT a.ID, 
                //                                CASE 
                //                                WHEN TO_DATE(a.DT,'YYYY-MM-DD')>TO_DATE('" + currentYear + @"-01-01','YYYY-MM-DD') 
                //                                THEN a.DT 
                //                                ELSE '" + currentYear + @"-01-01' 
                //                                END as BEGINDT, 
                //                                CASE 
                //                                WHEN TO_DATE(CASE WHEN c.ACTIVE=0 THEN TO_CHAR((TO_DATE(NVL(a.ENDDT,a.DT),'YYYY-MM-DD')-1),'YYYY-MM-DD') ELSE NVL(TO_CHAR((TO_DATE(a.ENDDT,'YYYY-MM-DD')-1),'YYYY-MM-DD'), TO_CHAR(SYSDATE,'YYYY-MM-DD')) END,'YYYY-MM-DD')<LAST_DAY(TO_DATE('" + currentYear + @"-" + currentMonth + @"-01','YYYY-MM-DD')) 
                //                                THEN CASE WHEN c.ACTIVE=0 THEN TO_CHAR((TO_DATE(NVL(a.ENDDT,a.DT),'YYYY-MM-DD')-1),'YYYY-MM-DD') ELSE NVL(TO_CHAR((TO_DATE(a.ENDDT,'YYYY-MM-DD')-1),'YYYY-MM-DD'), TO_CHAR(SYSDATE,'YYYY-MM-DD')) END ELSE TO_CHAR(LAST_DAY(TO_DATE('" + currentYear + @"-" + currentMonth + @"-01','YYYY-MM-DD')),'YYYY-MM-DD') END as ENDDT
                //                            FROM hrdbuser.ST_STBR a
                //                            INNER JOIN hrdbuser.ST_BRANCH b ON a.BRANCH_ID=b.ID AND b.ISACTIVE=1
                //                            INNER JOIN hrdbuser.STN_MOVE c ON a.MOVE_ID=c.ID
                //                            WHERE a.POS_ID!=2020102 AND c.ACTIVE=1 AND a.STAFFS_ID=" + userId + @"
                //                            AND ((
                //                                TO_DATE('" + currentYear + @"-01-01','YYYY-MM-DD') 
                //                                BETWEEN TO_DATE(a.DT,'YYYY-MM-DD') AND TO_DATE(CASE WHEN c.ACTIVE=0 THEN NVL(a.ENDDT,a.DT) ELSE NVL(a.ENDDT, TO_CHAR(SYSDATE,'YYYY-MM-DD')) END,'YYYY-MM-DD')
                //                                OR 
                //                                LAST_DAY(TO_DATE('" + currentYear + @"-" + currentMonth + @"-01','YYYY-MM-DD')) 
                //                                BETWEEN TO_DATE(a.DT,'YYYY-MM-DD') AND TO_DATE(CASE WHEN c.ACTIVE=0 THEN NVL(a.ENDDT,a.DT) ELSE NVL(a.ENDDT, TO_CHAR(SYSDATE,'YYYY-MM-DD')) END,'YYYY-MM-DD')
                //                                ) OR 
                //                                (
                //                                    TO_DATE('" + currentYear + @"-01-01','YYYY-MM-DD')<TO_DATE(a.DT,'YYYY-MM-DD') AND LAST_DAY(TO_DATE('" + currentYear + @"-" + currentMonth + @"-01','YYYY-MM-DD'))>TO_DATE(a.DT,'YYYY-MM-DD')
                //                                ))                        
                //                        ) a, (
                //                            SELECT DT
                //                            FROM(
                //                            SELECT(TO_DATE('" + currentYear + @"-01-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
                //                            FROM DUAL
                //                            CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('" + currentYear + @"-" + currentMonth + @"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('" + currentYear + @"-01-01', 'yyyy-mm-dd')
                //                            )
                //                            WHERE DT BETWEEN TO_DATE('" + currentYear + @"-01-01', 'yyyy-mm-dd') AND SYSDATE AND MOD(TO_CHAR(DT, 'J'), 7) + 1 IN(1, 2, 3, 4, 5, 6, 7)
                //                        ) b                
                //                        ) a
                //                        INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.ID
                //                        INNER JOIN hrdbuser.ST_BRANCH c ON b.BRANCH_ID=c.ID AND c.ISACTIVE=1
                //                        WHERE a.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD') AND b.POS_ID!=2020102 
                //                    ) a
                //                    LEFT JOIN(
                //                        SELECT TO_DATE(HOLDATE, 'YYYY-MM-DD') as DT FROM hrdbuser.ST_HOLIDAYISWORK WHERE TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE, 'YYYY-MM-DD'), 'YYYY')) = " + currentYear + @" AND TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE, 'YYYY-MM-DD'), 'MM')) IN(" + strMnthList + @")
                //                    ) b ON a.DT = b.DT
                //                    ) a
                //                    LEFT JOIN(
                //                    SELECT a.MONTH, a.INOUT as TP, b.ID as ST_ID, TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY, 'yyyy-mm-dd') as DT, TO_CHAR(MIN(TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY || ' ' || a.HOUR || ':' || a.MINUTE || ':' || a.SECOND, 'yyyy-mm-dd hh24:mi:ss')), 'hh24:mi:ss') as MINTM, TO_CHAR(MAX(TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY || ' ' || a.HOUR || ':' || a.MINUTE || ':' || a.SECOND, 'yyyy-mm-dd hh24:mi:ss')), 'hh24:mi:ss') as MAXTM
                //                    FROM STN_TRCDLOG a
                //                    INNER JOIN hrdbuser.ST_STAFFS b ON a.ENO = b.FINGERID
                //                    INNER JOIN hrdbuser.ST_STBR c ON b.ID = c.STAFFS_ID AND c.ISACTIVE = 1
                //                    INNER JOIN hrdbuser.STN_MOVE d ON c.MOVE_ID = d.ID AND d.ACTIVE = 1
                //                    INNER JOIN hrdbuser.ST_BRANCH f ON c.BRANCH_ID = f.ID AND f.ISACTIVE = 1
                //                    WHERE a.INOUT = 0 AND a.YEAR = " + currentYear + @" AND a.MONTH IN(" + strMnthList + @") AND TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY, 'yyyy-mm-dd') BETWEEN TO_DATE('" + currentYear + @"-01-01', 'yyyy-mm-dd') AND SYSDATE AND MOD(TO_CHAR(TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY, 'yyyy-mm-dd'), 'J'), 7) + 1 IN(1, 2, 3, 4, 5, 6, 7)
                //                    GROUP BY a.MONTH, a.INOUT, b.ID, TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY, 'yyyy-mm-dd')
                //                    ) b ON a.ST_ID = b.ST_ID AND a.DT = b.DT
                //                ) a
                //                LEFT JOIN(
                //                    SELECT DT, STAFFS_ID, MAX(TP) as TP
                //                    FROM(
                //                        SELECT b.DT, a.STAFFS_ID, 11 as TP
                //                        FROM hrdbuser.ST_CHULUUDAYF3 a,
                //                        (
                //                            SELECT(TO_DATE('" + currentYear + @"-01-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
                //                            FROM DUAL
                //                            CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('" + currentYear + @"-" + currentMonth + @"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('" + currentYear + @"-01-01', 'yyyy-mm-dd')
                //                        ) b
                //                        WHERE
                //                        b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD') AND a.STAFFS_ID=" + userId + @"
                //                        UNION ALL
                //                        SELECT b.DT, a.STAFFS_ID, 12 as TP
                //                        FROM hrdbuser.ST_CHULUUDAYT2 a,
                //                        (
                //                            SELECT(TO_DATE('" + currentYear + @"-01-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
                //                            FROM DUAL
                //                            CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('" + currentYear + @"-" + currentMonth + @"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('" + currentYear + @"-01-01', 'yyyy-mm-dd')
                //                        ) b
                //                        WHERE
                //                        a.ISRECEIVED = 1 AND
                //                        b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD') AND a.STAFFS_ID=" + userId + @"
                //                        UNION ALL
                //                        SELECT b.DT, a.STAFFS_ID, 13 as TP
                //                        FROM hrdbuser.ST_CHULUUSICK a,
                //                        (
                //                            SELECT(TO_DATE('" + currentYear + @"-01-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
                //                            FROM DUAL
                //                            CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('" + currentYear + @"-" + currentMonth + @"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('" + currentYear + @"-01-01', 'yyyy-mm-dd')
                //                        ) b
                //                        WHERE
                //                        b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD') AND a.STAFFS_ID=" + userId + @"
                //                        UNION ALL
                //                        SELECT b.DT, a.STAFFS_ID, 21 as TP
                //                        FROM hrdbuser.ST_AMRALT a,
                //                        (
                //                            SELECT(TO_DATE('" + currentYear + @"-01-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
                //                            FROM DUAL
                //                            CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('" + currentYear + @"-" + currentMonth + @"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('" + currentYear + @"-01-01', 'yyyy-mm-dd')
                //                        ) b
                //                        WHERE
                //                        a.TZISRECEIVED = 1 AND
                //                        b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD') AND a.STAFFS_ID=" + userId + @"
                //                        UNION ALL
                //                        SELECT b.DT, a.STAFFS_ID, 31 as TP
                //                        FROM hrdbuser.ST_TOMILOLT_STAFFS a
                //                        INNER JOIN hrdbuser.ST_TOMILOLT c ON a.TOMILOLT_ID = c.ID,
                //                        (
                //                            SELECT(TO_DATE('" + currentYear + @"-01-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
                //                            FROM DUAL
                //                            CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('" + currentYear + @"-" + currentMonth + @"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('" + currentYear + @"-01-01', 'yyyy-mm-dd')
                //                        ) b
                //                        WHERE
                //                        b.DT BETWEEN TO_DATE(c.FROMDATE, 'YYYY-MM-DD') AND TO_DATE(c.TODATE, 'YYYY-MM-DD') AND a.STAFFS_ID=" + userId + @"
                //                    )
                //                    GROUP BY DT, STAFFS_ID
                //                  ) b ON a.DT = b.DT AND a.ST_ID = b.STAFFS_ID
                //                ) a
                //                LEFT JOIN(
                //                SELECT TO_DATE('" + currentYear + @"-' || HOLMONTH || '-' || HOLDAY, 'YYYY-MM-DD') as DT
                //                FROM hrdbuser.ST_HOLIDAYOFFICIAL
                //                WHERE HOLMONTH IN(" + strMnthList + @")
                //                UNION ALL
                //                SELECT TO_DATE(HOLDATE, 'YYYY-MM-DD') as DT
                //                FROM hrdbuser.ST_HOLIDAYUNOFFICIAL
                //                WHERE TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE, 'YYYY-MM-DD'), 'YYYY')) = " + currentYear + @" AND TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE, 'YYYY-MM-DD'), 'MM')) IN(" + strMnthList + @")
                //                ) b ON a.DT = b.DT
                //            )
                //            ) a
                //            WHERE a.ISWORK=1 AND a.TP=0 AND a.MINTM != '00:00:00' AND a.MAXTM != '00:00:00'
                //            GROUP BY TO_NUMBER(TO_CHAR(a.DT,'MM'))
                //        )
                //        )
                //        UNPIVOT INCLUDE NULLS
                //            (TM FOR KEYVAL IN (IRTSAVGCOMETM_ME, IRTSAVGGOTM_ME, IRTSAVGWORKEDTM_ME))
                //    )
                //  ) b ON a.KEYVAL=b.KEYVAL AND a.MNTH=b.MNTH
                //) 
                //PIVOT( ";
                //                strQry +=" MAX(TM) FOR KEYVAL IN('IRTSAVGCOMETM' as \"IRTSAVGCOMETM\", 'IRTSAVGGOTM' as \"IRTSAVGGOTM\", 'IRTSAVGWORKEDTM' as \"IRTSAVGWORKEDTM\", 'IRTSAVGCOMETM_GAZAR' as \"IRTSAVGCOMETM_GAZAR\", 'IRTSAVGGOTM_GAZAR' as \"IRTSAVGGOTM_GAZAR\", 'IRTSAVGWORKEDTM_GAZAR' as \"IRTSAVGWORKEDTM_GAZAR\", 'IRTSAVGCOMETM_ME' as \"IRTSAVGCOMETM_ME\", 'IRTSAVGGOTM_ME' as \"IRTSAVGGOTM_ME\", 'IRTSAVGWORKEDTM_ME' as \"IRTSAVGWORKEDTM_ME\") ) ORDER BY MNTH";

                strQry = @"SELECT * 
                        FROM ( 
                          SELECT 
                            a.KEYVAL, 
                            a.MNTH, 
                            --NVL(b.VAL,0) as VAL, 
                            CASE WHEN b.VAL IS NULL THEN TO_CHAR('--:--:--') ELSE TO_CHAR(TO_DATE(b.VAL,'SSSSS'), 'HH24:MI:SS') END as TM
                          FROM (
                            SELECT a.KEYVAL, b.MNTH
                            FROM (
                              SELECT 'IRTSAVGCOMETM' as KEYVAL FROM DUAL
                              UNION ALL 
                              SELECT 'IRTSAVGGOTM' as KEYVAL FROM DUAL
                              UNION ALL 
                              SELECT 'IRTSAVGWORKEDTM' as KEYVAL FROM DUAL
                              UNION ALL 
                              SELECT 'IRTSAVGCOMETM_GAZAR' as KEYVAL FROM DUAL
                              UNION ALL 
                              SELECT 'IRTSAVGGOTM_GAZAR' as KEYVAL FROM DUAL
                              UNION ALL 
                              SELECT 'IRTSAVGWORKEDTM_GAZAR' as KEYVAL FROM DUAL
                            ) a, 
                            (
                              SELECT ROWNUM MNTH FROM DUAL
                              CONNECT BY LEVEL<=" + currentMonth + @" 
                            ) b 
                          ) a
                          LEFT JOIN (
                            SELECT TO_CHAR(KEYVAL) as KEYVAL, TO_NUMBER(TO_CHAR(TO_DATE(VAL,'HH24:MI:SS'),'SSSSS')) as VAL, TO_NUMBER(MNTH) as MNTH 
                            FROM TBL_QRYRESULTDATAS 
                            WHERE KEYVAL IN ('IRTSAVGCOMETM', 'IRTSAVGGOTM', 'IRTSAVGWORKEDTM', 'IRTSAVGCOMETM_GAZAR', 'IRTSAVGGOTM_GAZAR', 'IRTSAVGWORKEDTM_GAZAR') AND YR = " + currentYear + " AND (TP IS NULL OR TP='" + userGazarId + @"')
                          ) b ON a.KEYVAL=b.KEYVAL AND a.MNTH=b.MNTH
                        ) 
                        PIVOT( ";
                strQry += " MAX(TM) FOR KEYVAL IN('IRTSAVGCOMETM' as \"IRTSAVGCOMETM\", 'IRTSAVGGOTM' as \"IRTSAVGGOTM\", 'IRTSAVGWORKEDTM' as \"IRTSAVGWORKEDTM\", 'IRTSAVGCOMETM_GAZAR' as \"IRTSAVGCOMETM_GAZAR\", 'IRTSAVGGOTM_GAZAR' as \"IRTSAVGGOTM_GAZAR\", 'IRTSAVGWORKEDTM_GAZAR' as \"IRTSAVGWORKEDTM_GAZAR\") ) ORDER BY MNTH";
                //ds = myObj.OracleExecuteDataSet(strQry);
                //if (ds.Tables[0].Rows.Count != 0)
                //{
                //    foreach (DataRow dr in ds.Tables[0].Rows)
                //    {
                //        strTable1 += "<tr>";
                //        strTable1 += "<td class=\"text-center\">" + dr["MNTH"].ToString() + "</td>";
                //        strTable1 += "<td class=\"text-center\">" + dr["IRTSAVGCOMETM"].ToString() + "</td>";
                //        strTable1 += "<td class=\"text-center\">" + dr["IRTSAVGCOMETM_GAZAR"].ToString() + "</td>";
                //        //strTable1 += "<td class=\"text-center\">" + dr["IRTSAVGCOMETM_ME"].ToString() + "</td>";
                //        strTable1 += "<td class=\"text-center\">" + dr["IRTSAVGGOTM"].ToString() + "</td>";
                //        strTable1 += "<td class=\"text-center\">" + dr["IRTSAVGGOTM_GAZAR"].ToString() + "</td>";
                //        //strTable1 += "<td class=\"text-center\">" + dr["IRTSAVGGOTM_ME"].ToString() + "</td>";
                //        strTable1 += "<td class=\"text-center\">" + dr["IRTSAVGWORKEDTM"].ToString() + "</td>";
                //        strTable1 += "<td class=\"text-center\">" + dr["IRTSAVGWORKEDTM_GAZAR"].ToString() + "</td>";
                //        strTable1 += "</tr>";

                //        //strTable2 += "<tr>";
                //        //strTable2 += "<td class=\"text-center\">" + dr["MNTH"].ToString() + "</td>";
                //        //strTable2 += "<td class=\"text-center\">" + dr["IRTSAVGWORKEDTM"].ToString() + "</td>";
                //        //strTable2 += "<td class=\"text-center\">" + dr["IRTSAVGWORKEDTM_GAZAR"].ToString() + "</td>";
                //        //strTable2 += "<td class=\"text-center\">" + dr["IRTSAVGWORKEDTM_ME"].ToString() + "</td>";
                //        //strTable2 += "</tr>";

                //        if (strValChartComeTm != "") strValChartComeTm += ", ";
                //        if (dr["IRTSAVGCOMETM"].ToString() != "--:--:--") strValChartComeTm += TimeSpan.Parse(dr["IRTSAVGCOMETM"].ToString()).TotalSeconds;
                //        else strValChartComeTm += "0";

                //        if (strValChartComeTm_Gazar != "") strValChartComeTm_Gazar += ", ";
                //        if (dr["IRTSAVGCOMETM_GAZAR"].ToString() != "--:--:--") strValChartComeTm_Gazar += TimeSpan.Parse(dr["IRTSAVGCOMETM_GAZAR"].ToString()).TotalSeconds;
                //        else strValChartComeTm_Gazar += "0";

                //        //if (strValChartComeTm_Me != "") strValChartComeTm_Me += ", ";
                //        //if (dr["IRTSAVGCOMETM_ME"].ToString() != "--:--:--") strValChartComeTm_Me += TimeSpan.Parse(dr["IRTSAVGCOMETM_ME"].ToString()).TotalSeconds;
                //        //else strValChartComeTm_Me += "0";

                //        if (strValChartGoTm != "") strValChartGoTm += ", ";
                //        if (dr["IRTSAVGGOTM"].ToString() != "--:--:--") strValChartGoTm += TimeSpan.Parse(dr["IRTSAVGGOTM"].ToString()).TotalSeconds;
                //        else strValChartGoTm += "0";

                //        if (strValChartGoTm_Gazar != "") strValChartGoTm_Gazar += ", ";
                //        if (dr["IRTSAVGGOTM_GAZAR"].ToString() != "--:--:--") strValChartGoTm_Gazar += TimeSpan.Parse(dr["IRTSAVGGOTM_GAZAR"].ToString()).TotalSeconds;
                //        else strValChartGoTm_Gazar += "0";

                //        //if (strValChartGoTm_Me != "") strValChartGoTm_Me += ", ";
                //        //if (dr["IRTSAVGGOTM_ME"].ToString() != "--:--:--") strValChartGoTm_Me += TimeSpan.Parse(dr["IRTSAVGGOTM_ME"].ToString()).TotalSeconds;
                //        //else strValChartGoTm_Me += "0";

                //        if (strValChartWorkedTm != "") strValChartWorkedTm += ", ";
                //        if (dr["IRTSAVGWORKEDTM"].ToString() != "--:--:--") strValChartWorkedTm += TimeSpan.Parse(dr["IRTSAVGWORKEDTM"].ToString()).TotalSeconds;
                //        else strValChartWorkedTm += "0";

                //        if (strValChartWorkedTm_Gazar != "") strValChartWorkedTm_Gazar += ", ";
                //        if (dr["IRTSAVGWORKEDTM_GAZAR"].ToString() != "--:--:--") strValChartWorkedTm_Gazar += TimeSpan.Parse(dr["IRTSAVGWORKEDTM_GAZAR"].ToString()).TotalSeconds;
                //        else strValChartWorkedTm_Gazar += "0";

                //        //if (strValChartWorkedTm_Me != "") strValChartWorkedTm_Me += ", ";
                //        //if (dr["IRTSAVGWORKEDTM_ME"].ToString() != "--:--:--") strValChartWorkedTm_Me += TimeSpan.Parse(dr["IRTSAVGWORKEDTM_ME"].ToString()).TotalSeconds;
                //        //else strValChartWorkedTm_Me += "0";
                //    }
                //}
                //dashboardCol2Sec3Table1Tbody.InnerHtml = strTable1;
                ////dashboardCol2Sec3Table2Tbody.InnerHtml = strTable2;

                dashboardCol2Sec4Canvas.Attributes["data-come-value-yam"] = strValChartComeTm;
                dashboardCol2Sec4Canvas.Attributes["data-come-value-gazar"] = strValChartComeTm_Gazar;
                //dashboardCol2Sec4Canvas.Attributes["data-come-value-me"] = strValChartComeTm_Me;
                dashboardCol2Sec4Canvas.Attributes["data-go-value-yam"] = strValChartGoTm;
                dashboardCol2Sec4Canvas.Attributes["data-go-value-gazar"] = strValChartGoTm_Gazar;
                //dashboardCol2Sec4Canvas.Attributes["data-go-value-me"] = strValChartGoTm_Me;
                dashboardCol2Sec4Canvas.Attributes["data-worked-value-yam"] = strValChartWorkedTm;
                dashboardCol2Sec4Canvas.Attributes["data-worked-value-gazar"] = strValChartWorkedTm_Gazar;
                //dashboardCol2Sec4Canvas.Attributes["data-worked-value-me"] = strValChartWorkedTm_Me;

                strMyVal = "";
                for (int i = 1; i <= Int32.Parse(currentMonth); i++)
                {
                    if (strMyVal != "") strMyVal += ", ";
                    strMyVal += "\"" + i.ToString() + "-р сар" + "\"";
                }
                dashboardCol2Sec4Canvas.Attributes["data-mnth"] = strMyVal;



                //col3 section1 //yam sariin cnt
                dashboardCol3Sec1SpanPlanMnthCnt.InnerHtml = myObj.OracleExecuteScalar(@"SELECT COUNT(a.ID) as CNT 
FROM TBL_PLANMNTH a 
INNER JOIN TBL_PLANYR b ON a.PLANYR_ID=b.ID
WHERE a.SUBMIT_D2=1 AND b.YR="+currentYear+" AND TO_NUMBER(TO_CHAR(a.STRT_DATE,'mm'))="+currentMonth).ToString();
                //col3 section2 //heltes sariin cnt
                dashboardCol3Sec2SpanPlanMnthCnt.InnerHtml = myObj.OracleExecuteScalar(@"SELECT COUNT(a.ID) as CNT 
FROM TBL_PLANMNTH a 
INNER JOIN TBL_PLANYR b ON a.PLANYR_ID=b.ID
INNER JOIN TBL_FUNC_ACTION c ON b.FUNC_ACTION_ID=c.ID 
INNER JOIN TBL_FUNC_ACTION_BR d ON c.ID=d.FUNC_ACTION_ID
INNER JOIN TBL_FUNC_STRAT f ON c.FUNC_STRAT_ID=f.ID 
WHERE a.SUBMIT_D2=1 AND b.YR=" + currentYear + " AND TO_NUMBER(TO_CHAR(a.STRT_DATE,'mm'))="+ currentMonth + " AND d.BR_ID="+userHeltesId).ToString();
                dashboardtCol3Sec2SpanHeltesInitName1.InnerHtml = userHeltesInitName;
                dashboardCol3Sec1SpanMnth.InnerHtml = currentMonth;
                dashboardCol3Sec2SpanMnth.InnerHtml = currentMonth;
                //col3 section3 //jiliin tuluvluguunii heregjilt
                dashboardtCol3Sec3SpanHeltesInitName1.InnerHtml = userHeltesInitName;
                dashboardCol3Sec3Canvas.Attributes["data-value"] = myObj.OracleExecuteScalar(@"SELECT RTRIM(xmlagg (xmlelement (e, EVALAVG || ', ') ORDER BY MNTH).extract('//text()'), ', ') as EVALAVGLIST
FROM (
  SELECT MNTH, ROUND(AVG(EVALAVG),0) as EVALAVG
  FROM(
    SELECT a.PLANYR_ID, a.MNTH, NVL(b.EVALAVG,0) as EVALAVG
    FROM (
      SELECT a.PLANYR_ID, b.MNTH
      FROM (
        SELECT a.ID as PLANYR_ID
        FROM TBL_PLANYR a 
        INNER JOIN TBL_FUNC_ACTION b ON a.FUNC_ACTION_ID=b.ID 
        INNER JOIN TBL_FUNC_ACTION_BR c ON b.ID=c.FUNC_ACTION_ID
        INNER JOIN TBL_FUNC_STRAT d ON b.FUNC_STRAT_ID=d.ID 
        WHERE a.SUBMIT_D2=1 AND a.YR="+currentYear+" AND c.BR_ID="+userHeltesId+ @"
      ) a, 
      (
        SELECT ROWNUM MNTH FROM DUAL
        CONNECT BY LEVEL<=12 
      ) b 
    ) a
    LEFT JOIN (
      SELECT b.ID as PLANYR_ID, TO_NUMBER(TO_CHAR(a.STRT_DATE,'mm')) as MNTH, AVG(g.EVAL) as EVALAVG
      FROM TBL_PLANMNTH a 
      INNER JOIN TBL_PLANYR b ON a.PLANYR_ID=b.ID
      INNER JOIN TBL_FUNC_ACTION c ON b.FUNC_ACTION_ID=c.ID 
      INNER JOIN TBL_FUNC_ACTION_BR d ON c.ID=d.FUNC_ACTION_ID
      INNER JOIN TBL_FUNC_STRAT f ON c.FUNC_STRAT_ID=f.ID 
      INNER JOIN TBL_PLANYR_EVAL g ON b.ID=g.PLANYR_ID AND g.TP='month' AND g.EVAL IS NOT NULL
      WHERE a.SUBMIT_D2=1 AND b.YR=" + currentYear + " AND d.BR_ID=" + userHeltesId + @"
      GROUP BY b.ID, TO_NUMBER(TO_CHAR(a.STRT_DATE,'mm'))
    ) b ON a.PLANYR_ID=b.PLANYR_ID AND a.MNTH=b.MNTH
  ) 
  GROUP BY MNTH
)").ToString();
                // suuld nemegdsen
                //col3 section4 collapse1
                strMyVal = "";
                ds = myObj.OracleExecuteDataSet(@"SELECT a.ID, a.NO, a.AKT_NAME, a.SUCCES_DATE FROM ( SELECT a.* FROM TBL_TOGTOOL a WHERE a.SUCCES_DATE IS NOT NULL ORDER BY a.SUCCES_DATE DESC ) a WHERE ROWNUM <= 5");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        strMyVal += "<tr><td>";
                        strMyVal += "<strong>#"+dr["NO"].ToString()+ "</strong> - " + dr["AKT_NAME"].ToString() + " [<a href=\"../#pg/togtool.aspx?id="+ dr["ID"].ToString() + "\" class=\"font-xs\">Дэлгэрэнгүй</a>]<span class=\"col3Sec4ListDate\">" + dr["SUCCES_DATE"].ToString() + "</span>";
                        strMyVal += "</td></tr>";
                    }
                }
                dashboardCol3Sec4Collapse1Tbody.InnerHtml = strMyVal;

                //col3 section4 collapse2
                strMyVal = "";
                ds = myObj.OracleExecuteDataSet(@"SELECT ID, TUSHAAL_NUMBER, TUSHAAL_NAME, SUCCESS_DATE FROM ( SELECT * FROM TBL_TUSHAAL WHERE TUSHAAL_TYPE=3 AND SUCCESS_DATE IS NOT NULL ORDER BY SUCCESS_DATE DESC ) WHERE ROWNUM<=5");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        strMyVal += "<tr><td>";
                        strMyVal += "<strong>#" + dr["TUSHAAL_NUMBER"].ToString() + "</strong> - " + dr["TUSHAAL_NAME"].ToString() + " [<a href=\"../#pg/tushaalsaid.aspx?id=" + dr["ID"].ToString() + "\" class=\"font-xs\">Дэлгэрэнгүй</a>]<span class=\"col3Sec4ListDate\">" + dr["SUCCESS_DATE"].ToString() + "</span>";
                        strMyVal += "</td></tr>";
                    }
                }
                dashboardCol3Sec4Collapse2Tbody.InnerHtml = strMyVal;

                //col3 section4 collapse3
                strMyVal = "";
                ds = myObj.OracleExecuteDataSet(@"SELECT ID, TUSHAAL_NUMBER, TUSHAAL_NAME, SUCCESS_DATE FROM ( SELECT * FROM TBL_TUSHAAL WHERE TUSHAAL_TYPE=2 AND SUCCESS_DATE IS NOT NULL ORDER BY SUCCESS_DATE DESC ) WHERE ROWNUM<=5");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        strMyVal += "<tr><td>";
                        strMyVal += "<strong>#" + dr["TUSHAAL_NUMBER"].ToString() + "</strong> - " + dr["TUSHAAL_NAME"].ToString() + " [<a href=\"../#pg/tushaaltnbd.aspx?id=" + dr["ID"].ToString() + "\" class=\"font-xs\">Дэлгэрэнгүй</a>]<span class=\"col3Sec4ListDate\">" + dr["SUCCESS_DATE"].ToString() + "</span>";
                        strMyVal += "</td></tr>";
                    }
                }
                dashboardCol3Sec4Collapse3Tbody.InnerHtml = strMyVal;

                //col3 section4 collapse4
                strMyVal = "";
                ds = myObj.OracleExecuteDataSet(@"SELECT ID, NO, NAME FROM ( SELECT * FROM TBL_AUDITEXTERNAL_RECOMMEND ORDER BY CREATED_DATE DESC ) WHERE ROWNUM<=5");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        strMyVal += "<tr><td>";
                        strMyVal += "<strong>#" + dr["NO"].ToString() + "</strong> - " + dr["NAME"].ToString() + " [<a href=\"../#pg/auditexternal.aspx?id=" + dr["ID"].ToString() + "\" class=\"font-xs\">Дэлгэрэнгүй</a>]";
                        strMyVal += "</td></tr>";
                    }
                }
                dashboardCol3Sec4Collapse4Tbody.InnerHtml = strMyVal;

                //col3 section4 collapse5
                strMyVal = "";
                ds = myObj.OracleExecuteDataSet(@"SELECT ID, NO, NAME FROM ( SELECT * FROM TBL_AUDITINTERNAL_RECOMMEND ORDER BY CREATED_DATE DESC ) WHERE ROWNUM<=5");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        strMyVal += "<tr><td>";
                        strMyVal += "<strong>#" + dr["NO"].ToString() + "</strong> - " + dr["NAME"].ToString() + " [<a href=\"../#pg/auditinternal.aspx?id=" + dr["ID"].ToString() + "\" class=\"font-xs\">Дэлгэрэнгүй</a>]";
                        strMyVal += "</td></tr>";
                    }
                }
                dashboardCol3Sec4Collapse5Tbody.InnerHtml = strMyVal;

                //col1 section4
                dashboardCol1Sec4SpanMnth.InnerHtml = currentMonth;
                dashboardCol1Sec4SpanPlanMnthCnt.InnerHtml = myObj.OracleExecuteScalar(@"SELECT COUNT(ID) as CNT
FROM(
  SELECT a.ID
  FROM TBL_PLANMNTH a
  INNER JOIN TBL_PLANYR b ON a.PLANYR_ID = b.ID AND b.SUBMIT_D2 = 1
  INNER JOIN TBL_FUNC_ACTION c ON b.FUNC_ACTION_ID = c.ID
  INNER JOIN TBL_FUNC_ACTION_BR d ON c.ID = d.FUNC_ACTION_ID
  INNER JOIN TBL_FUNC_STRAT f ON c.FUNC_STRAT_ID = f.ID
  INNER JOIN TBL_PLANMNTH_USER g ON a.ID = g.PLANMNTH_ID
  WHERE a.SUBMIT_D2 = 1 AND b.YR = "+currentYear+" AND TO_NUMBER(TO_CHAR(a.STRT_DATE, 'mm')) = "+currentMonth+" AND g.USER_ID = "+userId+@"
  GROUP BY a.ID
)").ToString();

                //col1 section5
                dashboardCol1Sec5SpanYr.InnerHtml = currentYear;
                dashboardCol1Sec5SpanPlanYrCnt.InnerHtml = myObj.OracleExecuteScalar(@"SELECT COUNT(ID) as CNT
FROM (
  SELECT a.ID
  FROM TBL_PLANYR a
  INNER JOIN TBL_FUNC_ACTION b ON a.FUNC_ACTION_ID=b.ID 
  INNER JOIN TBL_FUNC_ACTION_BR c ON b.ID=c.FUNC_ACTION_ID
  INNER JOIN TBL_FUNC_STRAT d ON b.FUNC_STRAT_ID=d.ID 
  INNER JOIN TBL_PLANYR_USER f ON a.ID=f.PLANYR_ID
  WHERE a.SUBMIT_D2=1 AND a.YR=" + currentYear + " AND f.ST_ID=" + userId + @"
  GROUP BY a.ID
)").ToString();

                //irts line chart
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                Response.Redirect("~/#pg/error500.aspx");
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                Response.Redirect("~/#pg/error500.aspx");
            }
            try
            {
                dashboardWorkingTimeDiv.InnerHtml = dashboardWorkingTime(userId, currentYear, currentMonth);
            }
            catch (TypeInitializationException ex) {
                dashboardWorkingTimeDiv.InnerHtml = "";
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
        public string dashboardWorkingTime(string stid, string year, string month)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "";
                string[] date = new string[3];
                string[] time1 = new string[3];
                string[] time2 = new string[3];
                strTableVal = "";
                strTableVal += "<table class=\"table table-bordered table-hover\" style=\"font-size:13px;\">";
                strTableVal += "<thead>";
                strTableVal += "<tr>";
                strTableVal += "<th>&nbsp;</th>";
                strTableVal += "<th>Ирсэн</th>";
                strTableVal += "<th>Явсан</th>";
                strTableVal += "<th></th>";
                //strTableVal += "<th>Хоцорсон</th>";
                //strTableVal += "<th>Эрт явсан</th>";
                strTableVal += "<tr>";
                strTableVal += "</thead>";
                strTableVal += "<tbody>";
                string qry = @"SELECT TP, DT, MINTM, MAXTM, ISWORK, MOD(TO_CHAR(DT, 'J'), 7) + 1 as DY 
FROM ( 
  SELECT ROWNUM as ROWNO, ST_ID, TP, DT, MINTM, MAXTM, ISWORK
  FROM (
    SELECT a.ST_ID, NVL(b.TP,a.TP) as TP, a.DT, a.MINTM, a.MAXTM, a.ISWORK
    FROM(
  SELECT a.ST_ID, NVL(b.TP, 0) as TP, a.DT, a.MINTM, a.MAXTM, a.ISWORK
  FROM(
    SELECT a.YEAR, a.MONTH, a.ST_ID, a.DT, NVL(b.TP, 0) as TP, NVL(b.MINTM, '00:00:00') as MINTM, NVL(b.MAXTM, '00:00:00') as MAXTM, a.ISWORK
    FROM(
      SELECT a.YEAR, a.MONTH, a.ST_ID, a.DT, CASE WHEN b.DT IS NULL THEN a.ISWORK ELSE 1 END as ISWORK
      FROM(
        SELECT YEAR, MONTH2 as MONTH, ST_ID, DT, ISWORK
        FROM(
          SELECT a.ST_ID, a.YEAR, a.MONTH as MONTH1, TO_NUMBER(TO_CHAR(b.DT, 'mm')) as MONTH2, b.DT, CASE WHEN(MOD(TO_CHAR(b.DT, 'J'), 7) + 1) = 6 OR(MOD(TO_CHAR(b.DT, 'J'), 7) + 1) = 7 THEN 0 ELSE 1 END as ISWORK
          FROM(
            SELECT a.ID as ST_ID, f.YEAR, MIN(f.MONTH) as MONTH
            FROM hrdbuser.ST_STAFFS a
            INNER JOIN hrdbuser.ST_STBR b ON a.ID = b.STAFFS_ID AND b.ISACTIVE = 1
            INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID = c.ID AND c.ACTIVE = 1
            INNER JOIN STN_TRCDLOG f ON a.FINGERID = f.ENO
            WHERE f.YEAR = " + year + " AND a.ID = " + stid;
                qry += @" GROUP BY a.ID, f.YEAR 
          ) a, ( 
            SELECT DT 
            FROM ( 
              SELECT (TO_DATE('" + year + "-" + month + "-01','yyyy-mm-dd')-1)+ROWNUM DT ";
                qry += @" FROM DUAL 
              CONNECT BY LEVEL<=(LAST_DAY(TO_DATE('" + year + "-" + month + "-01','yyyy-mm-dd'))+1)-TO_DATE('" + year + "-" + month + "-01','yyyy-mm-dd') ";
                qry += @" ) 
            WHERE DT BETWEEN TO_DATE('" + year + "-" + month + "-01','yyyy-mm-dd') AND SYSDATE AND MOD(TO_CHAR(DT, 'J'), 7) + 1 IN (1, 2, 3, 4, 5, 6, 7)";
                qry += @" ) b 
        ) 
        WHERE MONTH1<=MONTH2 
      ) a
      LEFT JOIN (
        SELECT TO_DATE(HOLDATE,'YYYY-MM-DD') as DT FROM hrdbuser.ST_HOLIDAYISWORK WHERE TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE,'YYYY-MM-DD'),'YYYY'))=" + year + " AND TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE,'YYYY-MM-DD'),'MM')) IN (" + month + ")";
                qry += @" ) b ON a.DT=b.DT
    ) a 
    LEFT JOIN ( 
      SELECT a.MONTH, a.INOUT as TP, b.ID as ST_ID, TO_DATE(a.YEAR||'-'||a.MONTH||'-'||a.DAY, 'yyyy-mm-dd') as DT, TO_CHAR(MIN(TO_DATE(a.YEAR||'-'||a.MONTH||'-'||a.DAY||' '||a.HOUR||':'||a.MINUTE||':'||a.SECOND, 'yyyy-mm-dd hh24:mi:ss')),'hh24:mi:ss') as MINTM, TO_CHAR(MAX(TO_DATE(a.YEAR||'-'||a.MONTH||'-'||a.DAY||' '||a.HOUR||':'||a.MINUTE||':'||a.SECOND, 'yyyy-mm-dd hh24:mi:ss')),'hh24:mi:ss') as MAXTM 
      FROM STN_TRCDLOG a 
      INNER JOIN hrdbuser.ST_STAFFS b ON a.ENO=b.FINGERID 
      INNER JOIN hrdbuser.ST_STBR c ON b.ID=c.STAFFS_ID AND c.ISACTIVE=1
      INNER JOIN hrdbuser.STN_MOVE d ON c.MOVE_ID=d.ID AND d.ACTIVE=1
      WHERE a.INOUT=0 AND a.YEAR=" + year + " AND b.ID=" + stid + " AND a.MONTH IN (" + month + ") AND TO_DATE(a.YEAR||'-'||a.MONTH||'-'||a.DAY, 'yyyy-mm-dd') BETWEEN TO_DATE('" + year + "-" + month + "-01','yyyy-mm-dd') AND SYSDATE AND MOD(TO_CHAR(TO_DATE(a.YEAR||'-'||a.MONTH||'-'||a.DAY, 'yyyy-mm-dd'), 'J'), 7) + 1 IN (1, 2, 3, 4, 5, 6, 7) ";
                qry += @" GROUP BY a.MONTH, a.INOUT, b.ID, TO_DATE(a.YEAR||'-'||a.MONTH||'-'||a.DAY, 'yyyy-mm-dd') 
    ) b ON a.ST_ID=b.ST_ID AND a.DT=b.DT 
  ) a 
  LEFT JOIN ( 
    SELECT DT, STAFFS_ID, MAX(TP) as TP
    FROM (
      SELECT b.DT, a.STAFFS_ID, 11 as TP
      FROM hrdbuser.ST_CHULUUDAYF3 a,
      (
        SELECT TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD')+(ROWNUM-1) DT";
                qry += @" FROM DUAL
        CONNECT BY LEVEL<=ADD_MONTHS(TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD'),1)-TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD')";
                qry += @" ) b
      WHERE 
        a.STAFFS_ID=" + stid + " AND ";
                qry += @" (TO_DATE(a.BEGINDT, 'YYYY-MM-DD') BETWEEN TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD') AND LAST_DAY(TO_DATE('" + year + "-" + month + "-01','yyyy-mm-dd')) OR TO_DATE(a.ENDDT, 'YYYY-MM-DD') BETWEEN TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD') AND LAST_DAY(TO_DATE('" + year + "-" + month + "-01','yyyy-mm-dd'))) AND";
                qry += @" b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD')
      UNION ALL
      SELECT b.DT, a.STAFFS_ID, 12 as TP
      FROM hrdbuser.ST_CHULUUDAYT2 a,
      (
        SELECT TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD')+(ROWNUM-1) DT";
                qry += @" FROM DUAL
        CONNECT BY LEVEL<=ADD_MONTHS(TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD'),1)-TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD')";
                qry += @" ) b
      WHERE 
        a.STAFFS_ID=" + stid + " AND ";
                qry += @" a.ISRECEIVED=1 AND
        (TO_DATE(a.BEGINDT, 'YYYY-MM-DD') BETWEEN TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD') AND LAST_DAY(TO_DATE('" + year + "-" + month + "-01', 'yyyy-mm-dd')) OR TO_DATE(a.ENDDT, 'YYYY-MM-DD') BETWEEN TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD') AND LAST_DAY(TO_DATE('" + year + "-" + month + "-01', 'yyyy-mm-dd'))) AND";
                qry += @" b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD')
      UNION ALL
      SELECT b.DT, a.STAFFS_ID, 13 as TP
      FROM hrdbuser.ST_CHULUUSICK a,
      (
        SELECT TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD')+(ROWNUM-1) DT";
                qry += @" FROM DUAL
        CONNECT BY LEVEL<=ADD_MONTHS(TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD'),1)-TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD')";
                qry += @" ) b
      WHERE 
        a.STAFFS_ID=" + stid + " AND ";
                qry += @" (TO_DATE(a.BEGINDT, 'YYYY-MM-DD') BETWEEN TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD') AND LAST_DAY(TO_DATE('" + year + "-" + month + "-01','yyyy-mm-dd')) OR TO_DATE(a.ENDDT, 'YYYY-MM-DD') BETWEEN TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD') AND LAST_DAY(TO_DATE('" + year + "-" + month + "-01','yyyy-mm-dd'))) AND";
                qry += @" b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD')
      UNION ALL
      SELECT b.DT, a.STAFFS_ID, 21 as TP
      FROM hrdbuser.ST_AMRALT a,
      (
        SELECT TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD')+(ROWNUM-1) DT";
                qry += @" FROM DUAL
        CONNECT BY LEVEL<=ADD_MONTHS(TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD'),1)-TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD')";
                qry += @" ) b
      WHERE 
        a.STAFFS_ID=" + stid + " AND ";
                qry += @" a.TZISRECEIVED=1 AND
        (TO_DATE(a.BEGINDT, 'YYYY-MM-DD') BETWEEN TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD') AND LAST_DAY(TO_DATE('" + year + "-" + month + "-01','yyyy-mm-dd')) OR TO_DATE(a.ENDDT, 'YYYY-MM-DD') BETWEEN TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD') AND LAST_DAY(TO_DATE('" + year + "-" + month + "-01','yyyy-mm-dd'))) AND";
                qry += @" b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD')
      UNION ALL
      SELECT b.DT, a.STAFFS_ID, 31 as TP
      FROM hrdbuser.ST_TOMILOLT_STAFFS a
      INNER JOIN hrdbuser.ST_TOMILOLT c ON a.TOMILOLT_ID=c.ID,
      (
        SELECT TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD')+(ROWNUM-1) DT";
                qry += @" FROM DUAL
        CONNECT BY LEVEL<=ADD_MONTHS(TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD'),1)-TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD')";
                qry += @" ) b
      WHERE 
        a.STAFFS_ID=" + stid + " AND ";
                qry += @" (
          TO_DATE(c.FROMDATE, 'YYYY-MM-DD') 
          BETWEEN 
            TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD') AND LAST_DAY(TO_DATE('" + year + "-" + month + "-01','yyyy-mm-dd')) OR ";
                qry += @" TO_DATE(c.TODATE, 'YYYY-MM-DD') 
          BETWEEN 
            TO_DATE('" + year + "-" + month + "-01','YYYY-MM-DD') AND LAST_DAY(TO_DATE('" + year + "-" + month + "-01','yyyy-mm-dd'))) AND";
                qry += @" b.DT BETWEEN TO_DATE(c.FROMDATE, 'YYYY-MM-DD') AND TO_DATE(c.TODATE, 'YYYY-MM-DD')    
    )
    GROUP BY DT, STAFFS_ID
  ) b ON a.DT=b.DT AND a.ST_ID=b.STAFFS_ID
) a
LEFT JOIN (
  SELECT TO_DATE('" + year + "-'||HOLMONTH||'-'||HOLDAY,'YYYY-MM-DD') as DT, 91 as TP";
                qry += @" FROM hrdbuser.ST_HOLIDAYOFFICIAL
  WHERE HOLMONTH IN (" + month + ")";
                qry += @" UNION ALL
  SELECT TO_DATE(HOLDATE, 'YYYY-MM-DD') as DT, 91 as TP
  FROM hrdbuser.ST_HOLIDAYUNOFFICIAL
  WHERE TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE,'YYYY-MM-DD'),'YYYY'))=" + year + " AND TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE,'YYYY-MM-DD'),'MM')) IN (" + month + ")";
                qry += @" ) b ON a.DT=b.DT 
    ORDER BY a.DT DESC 
  ) 
) WHERE ROWNO>0 AND ROWNO<8 
ORDER BY DT DESC";
                DataSet ds = myObj.OracleExecuteDataSet(qry);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        Array.Clear(date, 0, date.Length);
                        date = new string[3];
                        date = Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd").Split('-');

                        if (dr["ISWORK"].ToString() == "0")
                        {
                            strTableVal += "<tr>";
                            strTableVal += "<td><span class=\"text-primary\" style=\"font-weight:bold;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</span><span style=\"float:right; font-size:11px; font-weight:bold;\">" + dr["DY"].ToString().Replace("1", "Да").Replace("2", "Мя").Replace("3", "Лх").Replace("4", "Пү").Replace("5", "Ба").Replace("6", "Бя").Replace("7", "Ня") + "</span></td>";
                            strTableVal += "<td>" + dr["MINTM"].ToString().Replace("00:00:00", "--:--:--") + "</td>";
                            strTableVal += "<td>" + dr["MAXTM"].ToString().Replace("00:00:00", "--:--:--") + "</td>";
                            strTableVal += "<td><span class=\"label bg-color-blueDark\" style=\"float:left;\">Амралтын өдөр</span></td>";
                            //strTableVal += "<td>--:--:--</td>";
                            //strTableVal += "<td>--:--:--</td>";
                            strTableVal += "</tr>";
                        }
                        else
                        {
                            if (dr["TP"].ToString() == "0")
                            {
                                Array.Clear(time1, 0, time1.Length);
                                time1 = new string[3];
                                time1 = dr["MINTM"].ToString().Split(':');
                                Array.Clear(time2, 0, time2.Length);
                                time2 = new string[3];
                                time2 = dr["MAXTM"].ToString().Split(':');
                                DateTime come = new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), Int32.Parse(time1[0]), Int32.Parse(time1[1]), Int32.Parse(time1[2]));
                                DateTime go = new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), Int32.Parse(time2[0]), Int32.Parse(time2[1]), Int32.Parse(time2[2]));
                                DateTime late = new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), 08, 40, 00);
                                DateTime early = new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), 17, 30, 00);
                                if (dr["MINTM"].ToString() != dr["MAXTM"].ToString())
                                {
                                    var lateTimeSpanHour = TimeSpan.FromHours(Convert.ToDouble(come.Subtract(late).Hours));
                                    var earlyTimeSpanHour = TimeSpan.FromHours(Convert.ToDouble(early.Subtract(go).Hours));
                                    var lateTimeSpanMin = TimeSpan.FromMinutes(Convert.ToDouble(come.Subtract(late).Minutes));
                                    var earlyTimeSpanMin = TimeSpan.FromMinutes(Convert.ToDouble(early.Subtract(go).Minutes));
                                    var lateTimeSpanSec = TimeSpan.FromSeconds(Convert.ToDouble(come.Subtract(late).Seconds));
                                    var earlyTimeSpanSec = TimeSpan.FromSeconds(Convert.ToDouble(early.Subtract(go).Seconds));
                                    TimeSpan lateTimeSpan = lateTimeSpanHour + lateTimeSpanMin + lateTimeSpanSec;
                                    TimeSpan earlyTimeSpan = earlyTimeSpanHour + earlyTimeSpanMin + earlyTimeSpanSec;

                                    if (Convert.ToDouble(come.Subtract(late).Seconds) > 0)
                                    {
                                        strTableVal += "<tr>";
                                        strTableVal += "<td><span class=\"text-primary\" style=\"font-weight:bold;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</span><span style=\"float:right; font-size:11px; font-weight:bold;\">" + dr["DY"].ToString().Replace("1", "Да").Replace("2", "Мя").Replace("3", "Лх").Replace("4", "Пү").Replace("5", "Ба").Replace("6", "Бя").Replace("7", "Ня") + "</span></td>";
                                        strTableVal += "<td>" + come.ToString("HH:mm:ss") + "</td>";
                                        strTableVal += "<td>" + go.ToString("HH:mm:ss") + "</td>";
                                        strTableVal += "<td><span class=\"label bg-color-yellow\" style=\"float:left;\">Хоцорсон</span></td>";
                                        //strTableVal += "<td>" + lateTimeSpan.ToString() + "</td>";
                                        //strTableVal += "<td>";
                                        //if (Convert.ToDouble(go.Subtract(early).Seconds) < 0)
                                        //    strTableVal += earlyTimeSpan.ToString();
                                        //else strTableVal += "--:--:--";
                                        //strTableVal += "</td>";
                                        strTableVal += "</tr>";
                                    }
                                    else
                                    {
                                        strTableVal += "<tr>";
                                        strTableVal += "<td><span class=\"text-primary\" style=\"font-weight:bold;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</span><span style=\"float:right; font-size:11px; font-weight:bold;\">" + dr["DY"].ToString().Replace("1", "Да").Replace("2", "Мя").Replace("3", "Лх").Replace("4", "Пү").Replace("5", "Ба").Replace("6", "Бя").Replace("7", "Ня") + "</span></td>";
                                        strTableVal += "<td>" + come.ToString("HH:mm:ss") + "</td>";
                                        strTableVal += "<td>" + go.ToString("HH:mm:ss") + "</td>";
                                        strTableVal += "<td><span class=\"label bg-color-blueLight\" style=\"float:left;\">Цагтаа ирсэн</span></td>";
                                        //strTableVal += "<td>" + lateTimeSpan.ToString() + "</td>";
                                        //strTableVal += "<td>";
                                        //if (Convert.ToDouble(go.Subtract(early).Seconds) < 0)
                                        //    strTableVal += earlyTimeSpan.ToString();
                                        //else strTableVal += "--:--:--";
                                        //strTableVal += "</td>";
                                        strTableVal += "</tr>";
                                    }
                                }
                                else
                                {
                                    strTableVal += "<tr>";
                                    strTableVal += "<td><span class=\"text-primary\" style=\"font-weight:bold;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</span><span style=\"float:right; font-size:11px; font-weight:bold;\">" + dr["DY"].ToString().Replace("1", "Да").Replace("2", "Мя").Replace("3", "Лх").Replace("4", "Пү").Replace("5", "Ба").Replace("6", "Бя").Replace("7", "Ня") + "</span></td>";
                                    if (come.ToString("HH:mm:ss").Replace("00:00:00", "--:--:--") == "--:--:--")
                                    {
                                        strTableVal += "<td>--:--:--</td>";
                                        strTableVal += "<td>--:--:--</td>";
                                    }
                                    else if (come >= new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), 00, 00, 00) && come <= new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), 13, 00, 00))
                                    {
                                        strTableVal += "<td>" + come.ToString("HH:mm:ss").Replace("00:00:00", "--:--:--") + "</td>";
                                        strTableVal += "<td>--:--:--</td>";
                                    }
                                    else if (come > new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), 13, 00, 00) && come <= new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), 23, 59, 59))
                                    {
                                        strTableVal += "<td>--:--:--</td>";
                                        strTableVal += "<td>" + come.ToString("HH:mm:ss").Replace("00:00:00", "--:--:--") + "</td>";
                                    }
                                    strTableVal += "<td><span class=\"label bg-color-redLight\" style=\"float:left;\">Тасалсан</span></td>";
                                    //strTableVal += "<td>--:--:--</td>";
                                    //strTableVal += "<td>--:--:--</td>";
                                    strTableVal += "</tr>";
                                }
                            }
                            else if (dr["TP"].ToString() == "13")
                            {
                                strTableVal += "<tr>";
                                strTableVal += "<td><span class=\"text-primary\" style=\"font-weight:bold;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</span><span style=\"float:right; font-size:11px; font-weight:bold;\">" + dr["DY"].ToString().Replace("1", "Да").Replace("2", "Мя").Replace("3", "Лх").Replace("4", "Пү").Replace("5", "Ба").Replace("6", "Бя").Replace("7", "Ня") + "</span></td>";
                                strTableVal += "<td>" + dr["MINTM"].ToString().Replace("00:00:00", "--:--:--") + "</td>";
                                strTableVal += "<td>" + dr["MAXTM"].ToString().Replace("00:00:00", "--:--:--") + "</td>";
                                strTableVal += "<td><span class=\"label bg-color-pink\" style=\"float:left;\">Өвчтэй</span></td>";
                                //strTableVal += "<td>--:--:--</td>";
                                //strTableVal += "<td>--:--:--</td>";
                                strTableVal += "</tr>";
                            }
                            else if (dr["TP"].ToString() == "21")
                            {
                                strTableVal += "<tr>";
                                strTableVal += "<td><span class=\"text-primary\" style=\"font-weight:bold;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</span><span style=\"float:right; font-size:11px; font-weight:bold;\">" + dr["DY"].ToString().Replace("1", "Да").Replace("2", "Мя").Replace("3", "Лх").Replace("4", "Пү").Replace("5", "Ба").Replace("6", "Бя").Replace("7", "Ня") + "</span></td>";
                                strTableVal += "<td>" + dr["MINTM"].ToString().Replace("00:00:00", "--:--:--") + "</td>";
                                strTableVal += "<td>" + dr["MAXTM"].ToString().Replace("00:00:00", "--:--:--") + "</td>";
                                strTableVal += "<td><span class=\"label bg-color-greenDark\" style=\"float:left;\">Ээлжийн амралттай</span></td>";
                                //strTableVal += "<td>--:--:--</td>";
                                //strTableVal += "<td>--:--:--</td>";
                                strTableVal += "</tr>";
                            }
                            else if (dr["TP"].ToString() == "11" || dr["TP"].ToString() == "12")
                            {
                                strTableVal += "<tr>";
                                strTableVal += "<td><span class=\"text-primary\" style=\"font-weight:bold;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</span><span style=\"float:right; font-size:11px; font-weight:bold;\">" + dr["DY"].ToString().Replace("1", "Да").Replace("2", "Мя").Replace("3", "Лх").Replace("4", "Пү").Replace("5", "Ба").Replace("6", "Бя").Replace("7", "Ня") + "</span></td>";
                                strTableVal += "<td>" + dr["MINTM"].ToString().Replace("00:00:00", "--:--:--") + "</td>";
                                strTableVal += "<td>" + dr["MAXTM"].ToString().Replace("00:00:00", "--:--:--") + "</td>";
                                strTableVal += "<td><span class=\"label bg-color-orangeDark\" style=\"float:left;\">Чөлөөтэй</span></td>";
                                //strTableVal += "<td>--:--:--</td>";
                                //strTableVal += "<td>--:--:--</td>";
                                strTableVal += "</tr>";
                            }
                            else if (dr["TP"].ToString() == "31")
                            {
                                strTableVal += "<tr>";
                                strTableVal += "<td><span class=\"text-primary\" style=\"font-weight:bold;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</span><span style=\"float:right; font-size:11px; font-weight:bold;\">" + dr["DY"].ToString().Replace("1", "Да").Replace("2", "Мя").Replace("3", "Лх").Replace("4", "Пү").Replace("5", "Ба").Replace("6", "Бя").Replace("7", "Ня") + "</span></td>";
                                strTableVal += "<td>" + dr["MINTM"].ToString().Replace("00:00:00", "--:--:--") + "</td>";
                                strTableVal += "<td>" + dr["MAXTM"].ToString().Replace("00:00:00", "--:--:--") + "</td>";
                                strTableVal += "<td><span class=\"label bg-color-blue\" style=\"float:left;\">Албан томилолт</span></td>";
                                //strTableVal += "<td>--:--:--</td>";
                                //strTableVal += "<td>--:--:--</td>";
                                strTableVal += "</tr>";
                            }
                            else if (dr["TP"].ToString() == "91")
                            {
                                strTableVal += "<tr>";
                                strTableVal += "<td><span class=\"text-primary\" style=\"font-weight:bold;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</span><span style=\"float:right; font-size:11px; font-weight:bold;\">" + dr["DY"].ToString().Replace("1", "Да").Replace("2", "Мя").Replace("3", "Лх").Replace("4", "Пү").Replace("5", "Ба").Replace("6", "Бя").Replace("7", "Ня") + "</span></td>";
                                strTableVal += "<td>" + dr["MINTM"].ToString().Replace("00:00:00", "--:--:--") + "</td>";
                                strTableVal += "<td>" + dr["MAXTM"].ToString().Replace("00:00:00", "--:--:--") + "</td>";
                                strTableVal += "<td><span class=\"label bg-color-lighten\" style=\"float:left;\">Тэмдэглэлт өдөр</span></td>";
                                //strTableVal += "<td>--:--:--</td>";
                                //strTableVal += "<td>--:--:--</td>";
                                strTableVal += "</tr>";
                            }
                        }
                    }
                }
                strTableVal += "</tbody></table>";
                return strTableVal;
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