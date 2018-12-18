﻿using LMWebApp.cs;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMWebApp.pg
{
    public partial class agreementTab1HeadPrintModal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            string stid = Request.QueryString["stid"];
            string pos = "", userposid = "", gereeposname = "", gereeposnamefather = "", fatherpos = "", fatherfname = "", fname = "", currentYear = "", currentYearHalf = "", cntwork = "", userHeltesId = "", userGazarId = "", userGazarName = "", userHeltesName = "", userGazarNameButen = "", userHeltesNameButen = "";
            DataSet ds = myObjGetTableData.getCurrentInfo();
            currentYear = Request.QueryString["yr"]; ;
            currentYearHalf = ds.Tables[0].Rows[0]["YEARHALF"].ToString();
            ds = myObjGetTableData.getUserInfo(stid);
            userposid = ds.Tables[0].Rows[0]["POSID"].ToString();
            fname = ds.Tables[0].Rows[0]["STNAMEINIT"].ToString();
            pos = ds.Tables[0].Rows[0]["POSNAME"].ToString();
            userHeltesId = ds.Tables[0].Rows[0]["HELTESID"].ToString();
            userGazarId = ds.Tables[0].Rows[0]["GAZARID"].ToString();
            userGazarName = ds.Tables[0].Rows[0]["GAZARNAMEINIT"].ToString();
            userHeltesName = ds.Tables[0].Rows[0]["HELTESNAMEINIT"].ToString();
            userGazarNameButen = ds.Tables[0].Rows[0]["GAZARNAME"].ToString();
            userHeltesNameButen = ds.Tables[0].Rows[0]["HELTESNAME"].ToString();
            if (userposid == "10205")
            {
                gereeposname = "Төсвийн шууд захирагч"; gereeposnamefather = "Төсвийн ерөнхийлөн захирагч";
                fatherpos = "Сайд";
                try
                {
                    fatherfname = myObj.OracleExecuteScalar(@"SELECT SUBSTR(a.LNAME,1,1)||'. '||a.FNAME as NAME 
FROM hrdbuser.ST_STAFFS a
INNER JOIN hrdbuser.ST_STBR b ON a.ID = b.STAFFS_ID AND b.ISACTIVE = 1
INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID = c.ID
WHERE c.ACTIVE = 1 AND b.POS_ID = 10106").ToString();
                }
                catch (NullReferenceException ex)
                {
                    fatherfname = "";
                }
            }
            else if (userposid == "2010201")
            {
                gereeposname = "Газрын дарга"; gereeposnamefather = "Төсвийн шууд захирагч";
                fatherpos = "Төрийн нарийн бичгийн дарга";
                try
                {
                    fatherfname = myObj.OracleExecuteScalar(@"SELECT SUBSTR(a.LNAME,1,1)||'. '||a.FNAME as NAME 
FROM hrdbuser.ST_STAFFS a
INNER JOIN hrdbuser.ST_STBR b ON a.ID = b.STAFFS_ID AND b.ISACTIVE = 1
INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID = c.ID
WHERE c.ACTIVE = 1 AND b.POS_ID = 10205").ToString();
                }
                catch (NullReferenceException ex)
                {
                    fatherfname = "";
                }
            }
            else if (userposid == "2010301")
            {
                gereeposname = "Хэлтсийн дарга"; gereeposnamefather = "Газрын дарга";
                fatherpos = "Газрын дарга";
                try
                {
                    fatherfname = myObj.OracleExecuteScalar(@"SELECT SUBSTR(a.LNAME,1,1)||'. '||a.FNAME as NAME 
FROM hrdbuser.ST_STAFFS a
INNER JOIN hrdbuser.ST_STBR b ON a.ID = b.STAFFS_ID AND b.ISACTIVE = 1
INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID = c.ID
WHERE c.ACTIVE = 1 AND b.POS_ID = 2010201 AND b.BRANCH_ID = " + userGazarId).ToString();
                }
                catch (NullReferenceException ex)
                {
                    fatherfname = "";
                }
            }
            else if (userposid == "1043")
            {
                gereeposname = "Дэд сайдын туслах"; gereeposnamefather = "Газрын дарга";
                fatherpos = "Газрын дарга";
                try
                {
                    fatherfname = myObj.OracleExecuteScalar(@"SELECT SUBSTR(a.LNAME,1,1)||'. '||a.FNAME as NAME 
FROM hrdbuser.ST_STAFFS a
INNER JOIN hrdbuser.ST_STBR b ON a.ID = b.STAFFS_ID AND b.ISACTIVE = 1
INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID = c.ID
WHERE c.ACTIVE = 1 AND b.POS_ID = 2010201 AND b.BRANCH_ID = 9915").ToString();
                }
                catch (NullReferenceException ex)
                {
                    fatherfname = "";
                }
            }
            else if (userposid == "2040202")
            {
                gereeposname = "Төрийн нарийн бичгийн даргын туслах"; gereeposnamefather = "Газрын дарга";
                fatherpos = "Газрын дарга";
                try
                {
                    fatherfname = myObj.OracleExecuteScalar(@"SELECT SUBSTR(a.LNAME,1,1)||'. '||a.FNAME as NAME 
FROM hrdbuser.ST_STAFFS a
INNER JOIN hrdbuser.ST_STBR b ON a.ID = b.STAFFS_ID AND b.ISACTIVE = 1
INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID = c.ID
WHERE c.ACTIVE = 1 AND b.POS_ID = 2010201 AND b.BRANCH_ID = 9915").ToString();
                }
                catch (NullReferenceException ex)
                {
                    fatherfname = "";
                }
            }
            else
            {
                gereeposname = "Мэргэжилтэн"; gereeposnamefather = "Газрын дарга";
                fatherpos = "Газрын дарга";
                try
                {
                    fatherfname = myObj.OracleExecuteScalar(@"SELECT SUBSTR(a.LNAME,1,1)||'. '||a.FNAME as NAME 
FROM hrdbuser.ST_STAFFS a
INNER JOIN hrdbuser.ST_STBR b ON a.ID = b.STAFFS_ID AND b.ISACTIVE = 1
INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID = c.ID
WHERE c.ACTIVE = 1 AND b.POS_ID = 2010201 AND b.BRANCH_ID = " + userGazarId).ToString();
                }
                catch (NullReferenceException ex)
                {
                    fatherfname = "";
                }
            }
            data00.InnerHtml = currentYear + " ОНЫ ҮР ДҮНГИЙН ГЭРЭЭ";
            data01.InnerHtml = gereeposnamefather;
            data02.InnerHtml = fatherpos;
            if (fatherfname != "") data03.InnerHtml = fatherfname.Substring(0, 4) + fatherfname.ToLower().Substring(4);
            else data03.InnerHtml = fatherfname;
            data04.InnerHtml = gereeposname;
            data05.InnerHtml = pos;
            data06.InnerHtml = fname.Substring(0, 4) + fname.ToLower().Substring(4);
            //SELECT PLANYR_ID FROM TBL_AGREEMENT_MAIN WHERE YR=" + currentYear + " AND ST_ID=" + stid + " AND ISSPECIAL=1
            data11.InnerHtml = currentYear;
            data12.InnerHtml = currentYear;
            data13.InnerHtml = currentYear;
            data16.InnerHtml = currentYear;
            if (currentYearHalf == "1")
            {
                data14.InnerHtml = "6";
                data15.InnerHtml = "15";
                data17.InnerHtml = "7";
                data18.InnerHtml = "1";
            }
            else if (currentYearHalf == "2")
            {
                data14.InnerHtml = "12";
                data15.InnerHtml = "15";
                data17.InnerHtml = "12";
                data18.InnerHtml = "31";
            }
            data19.InnerHtml = fatherpos;
            if (fatherfname != "") data20.InnerHtml = fatherfname.Substring(0, 4) + fatherfname.ToLower().Substring(4);
            else data20.InnerHtml = fatherfname;
            data21.InnerHtml = pos;
            data22.InnerHtml = fname.Substring(0, 4) + fname.ToLower().Substring(4);
            data23.InnerHtml = DateTime.Now.ToString("yyyy-MM-dd");

            //string qry = "SELECT COUNT(1) as CNT FROM TBL_AGREEMENT_MAIN WHERE YR="+currentYear+" AND ST_ID="+stid+" AND ISSPECIAL=0";
            string qry = @"SELECT b.PLANYR_ID 
      FROM(
        SELECT PLANYR_ID FROM TBL_AGREEMENT_MAIN WHERE YR = " + currentYear + @" AND ST_ID = " + stid + @" AND ISSPECIAL = 1
      ) a
      RIGHT JOIN(
        SELECT a.PLANYR_ID
        FROM(
          SELECT PLANYR_ID
          FROM(
            SELECT a.ID as PLANYR_ID
            FROM TBL_PLANYR a
            INNER JOIN TBL_PLANYR_USER b ON a.ID = b.PLANYR_ID AND b.ST_ID = " + stid + @"
            INNER JOIN TBL_FUNC_ACTION c ON a.FUNC_ACTION_ID = c.ID
            INNER JOIN TBL_FUNC_ACTION_BR d ON c.ID = d.FUNC_ACTION_ID
            INNER JOIN TBL_FUNC_STRAT f ON c.FUNC_STRAT_ID = f.ID
            WHERE a.YR = " + currentYear + @" AND a.IS_PLANED = 1 AND a.SUBMIT_D2 = 1
            GROUP BY a.ID
            UNION ALL
            SELECT PLANYR_ID
            FROM TBL_AGREEMENT_MAIN
            WHERE ST_ID = " + stid + @" AND YR = " + currentYear + @"
          )
          GROUP BY PLANYR_ID
        ) a
        INNER JOIN TBL_PLANYR b ON a.PLANYR_ID = b.ID
        INNER JOIN TBL_FUNC_ACTION c ON b.FUNC_ACTION_ID = c.ID
        WHERE c.IS_LOCAL = 0
      ) b ON a.PLANYR_ID = b.PLANYR_ID
      WHERE a.PLANYR_ID IS NULL";
            ds = myObj.OracleExecuteDataSet(qry);
            data07.InnerHtml = ds.Tables[0].Rows[0][0].ToString();

            data10.InnerHtml = myObj.OracleExecuteScalar(@"SELECT ( SELECT COUNT(ID) as CNT FROM (SELECT a.ID  
      FROM TBL_PLANYR a
      INNER JOIN TBL_PLANYR_USER b ON a.ID = b.PLANYR_ID AND b.ST_ID = "+stid+@"
      INNER JOIN TBL_FUNC_ACTION c ON a.FUNC_ACTION_ID = c.ID
      INNER JOIN TBL_FUNC_ACTION_BR d ON c.ID = d.FUNC_ACTION_ID
      INNER JOIN TBL_FUNC_STRAT f ON c.FUNC_STRAT_ID = f.ID
      WHERE a.YR = " + currentYear + @" AND c.IS_LOCAL = 1 AND a.SUBMIT_D2 = 1
      GROUP BY a.ID) ) +
     (SELECT COUNT(ID) as CNT FROM TBL_AGREEMENT_OTHER WHERE YR = " + currentYear + " AND ST_ID = " + stid + @") as CNT FROM DUAL").ToString();
            //data10.InnerHtml = myObj.OracleExecuteScalar("SELECT COUNT(1) FROM TBL_AGREEMENT_OTHER WHERE YR=" + currentYear + " AND ST_ID=" + stid).ToString();
            
            qry = @"SELECT a.PLANYR_ID, a.STRAT_BRID, a.STRAT_NO, a.STRAT_NAME, a.ACTION_BRID, a.ACTION_NO, a.ACTION_NAME, a.PLANYR_NO, a.PLANYR_NAME, a.CRITERIA, a.CNT, a.QUALITY, a.MNTHLIST, a.BUDGET, a.GAZARID, a.GAZARNAME, a.HELTESID, a.HELTESNAME, NVL(RTRIM(xmlagg (xmlelement (e, c.ID || ',')).extract('//text()'), ','),'none') STLISTID, NVL(RTRIM(xmlagg (xmlelement (e, ' '||SUBSTR(c.LNAME,0,1)||'.'||SUBSTR(c.FNAME,1,1)||LOWER(SUBSTR(c.FNAME,2)) || ',')).extract('//text()'), ','),'none') STLISTNAME 
FROM ( 
  SELECT a.PLANYR_ID, a.STRAT_BRID, a.STRAT_NO, a.STRAT_NAME, a.ACTION_BRID, a.ACTION_NO, a.ACTION_NAME, a.PLANYR_NO, a.PLANYR_NAME, a.CRITERIA, a.CNT, a.QUALITY, a.MNTHLIST, a.BUDGET, a.GAZARID, a.GAZARNAME, NVL(RTRIM(xmlagg (xmlelement (e, b.BR_ID || ',') ORDER BY b.BR_ID).extract('//text()'), ','),'-') as HELTESID, NVL(RTRIM(xmlagg (xmlelement (e, c.DOMAIN_ORG || ',') ORDER BY b.BR_ID).extract('//text()'), ','),'none') as HELTESNAME 
  FROM ( 
    SELECT a.PLANYR_ID, d.ID as STRAT_BRID, d.NO as STRAT_NO, d.NAME as STRAT_NAME, c.ID as ACTION_BRID, c.NO as ACTION_NO, c.NAME as ACTION_NAME, b.NO as PLANYR_NO, b.NAME as PLANYR_NAME, b.CRITERIA, b.QUALITY, b.BUDGET, b.CNT, NVL(RTRIM(xmlagg (xmlelement (e, f.INTERVAL || ',') ORDER BY f.INTERVAL).extract('//text()'), ','),'-') MNTHLIST, g.BR_ID as GAZARID, g.DOMAIN_ORG as GAZARNAME 
    FROM ( 
      SELECT b.PLANYR_ID 
      FROM ( 
        SELECT PLANYR_ID FROM TBL_AGREEMENT_MAIN WHERE YR=" + currentYear + @" AND ST_ID=" + stid + @" AND ISSPECIAL=1 
      ) a 
      INNER JOIN ( 
        SELECT a.PLANYR_ID
        FROM (
          SELECT PLANYR_ID 
          FROM ( 
            SELECT a.ID as PLANYR_ID 
            FROM TBL_PLANYR a 
            INNER JOIN TBL_PLANYR_USER b ON a.ID=b.PLANYR_ID AND b.ST_ID=" + stid+@" 
            INNER JOIN TBL_FUNC_ACTION c ON a.FUNC_ACTION_ID=c.ID 
            INNER JOIN TBL_FUNC_ACTION_BR d ON c.ID=d.FUNC_ACTION_ID 
            INNER JOIN TBL_FUNC_STRAT f ON c.FUNC_STRAT_ID=f.ID 
            WHERE a.YR=" + currentYear + @" AND a.IS_PLANED=1 AND a.SUBMIT_D2=1
            GROUP BY a.ID 
            UNION ALL 
            SELECT PLANYR_ID 
            FROM TBL_AGREEMENT_MAIN 
            WHERE ST_ID = " + stid + @" AND YR = " + currentYear+@"
          ) 
          GROUP BY PLANYR_ID
        ) a
        INNER JOIN TBL_PLANYR b ON a.PLANYR_ID=b.ID 
        INNER JOIN TBL_FUNC_ACTION c ON b.FUNC_ACTION_ID=c.ID
        WHERE c.IS_LOCAL=0
      ) b ON a.PLANYR_ID=b.PLANYR_ID
    ) a 
    INNER JOIN TBL_PLANYR b ON a.PLANYR_ID=b.ID 
    INNER JOIN TBL_FUNC_ACTION c ON b.FUNC_ACTION_ID=c.ID 
    INNER JOIN TBL_FUNC_STRAT d ON c.FUNC_STRAT_ID=d.ID 
    LEFT JOIN TBL_PLANYR_EVAL f ON a.PLANYR_ID=f.PLANYR_ID AND f.TP='month' 
    INNER JOIN TBL_BRANCH g ON d.BR_ID=g.BR_ID AND g.YR=" + currentYear+ @"
    GROUP BY a.PLANYR_ID ,d.ID, d.NO, d.NAME,c.ID, c.NO, c.NAME, b.NO, b.NAME, b.CRITERIA, b.QUALITY, b.BUDGET,b.CNT,g.BR_ID,g.DOMAIN_ORG 
  ) a 
  INNER JOIN TBL_FUNC_ACTION_BR b ON a.ACTION_BRID=b.FUNC_ACTION_ID 
  INNER JOIN TBL_BRANCH c ON b.BR_ID=c.BR_ID AND c.YR=" + currentYear + @"
  GROUP BY a.PLANYR_ID, a.STRAT_BRID, a.STRAT_NO, a.STRAT_NAME, a.ACTION_BRID, a.ACTION_NO, a.ACTION_NAME, a.PLANYR_NO, a.PLANYR_NAME, a.CRITERIA, a.CNT, a.QUALITY, a.MNTHLIST, a.BUDGET, a.GAZARID, a.GAZARNAME 
) a 
INNER JOIN TBL_PLANYR_USER b ON a.PLANYR_ID=b.PLANYR_ID AND b.ISREAL=1 
INNER JOIN hrdbuser.ST_STAFFS c ON b.ST_ID=c.ID 
GROUP BY a.PLANYR_ID, a.STRAT_BRID,a.STRAT_NO,a.STRAT_NAME,a.ACTION_BRID,a.ACTION_NO, a.ACTION_NAME, a.PLANYR_NO, a.PLANYR_NAME, a.CRITERIA, a.CNT, a.QUALITY, a.MNTHLIST,a.BUDGET, a.GAZARID, a.GAZARNAME, a.HELTESID, a.HELTESNAME 
ORDER BY a.STRAT_NO, a.ACTION_NO, a.PLANYR_NO";
            ds = myObj.OracleExecuteDataSet(qry);
            if (ds.Tables[0].Rows.Count != 0)
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    if (data08.InnerHtml.Trim() != "") data08.InnerHtml += ", ";
                    data08.InnerHtml += dr[2].ToString() + "." + dr[5].ToString() + "." + dr[7].ToString();
                }
            }
            data09.InnerHtml = ds.Tables[0].Rows.Count.ToString();

            qry = "SELECT a.PLANYR_ID, a.STRAT_BRID, a.STRAT_NO, a.STRAT_NAME, a.ACTION_BRID, a.ACTION_NO, a.ACTION_NAME, a.PLANYR_NO, a.PLANYR_NAME, a.CRITERIA, a.CNT, a.QUALITY, a.MNTHLIST, a.BUDGET, a.GAZARID, a.GAZARNAME, a.HELTESID, a.HELTESNAME, NVL(RTRIM(xmlagg (xmlelement (e, c.ID || ',')).extract('//text()'), ','),'none') STLISTID, NVL(RTRIM(xmlagg (xmlelement (e, ' '||SUBSTR(c.LNAME,0,1)||'.'||SUBSTR(c.FNAME,1,1)||LOWER(SUBSTR(c.FNAME,2)) || ',')).extract('//text()'), ','),'none') STLISTNAME FROM ( SELECT a.PLANYR_ID, a.STRAT_BRID, a.STRAT_NO, a.STRAT_NAME, a.ACTION_BRID, a.ACTION_NO, a.ACTION_NAME, a.PLANYR_NO, a.PLANYR_NAME, a.CRITERIA, a.CNT, a.QUALITY, a.MNTHLIST, a.BUDGET, a.GAZARID, a.GAZARNAME, NVL(RTRIM(xmlagg (xmlelement (e, b.BR_ID || ',') ORDER BY b.BR_ID).extract('//text()'), ','),'-') as HELTESID, NVL(RTRIM(xmlagg (xmlelement (e, c.DOMAIN_ORG || ',') ORDER BY b.BR_ID).extract('//text()'), ','),'none') as HELTESNAME FROM ( SELECT a.PLANYR_ID, d.ID as STRAT_BRID, d.NO as STRAT_NO, d.NAME as STRAT_NAME, c.ID as ACTION_BRID, c.NO as ACTION_NO, c.NAME as ACTION_NAME, b.NO as PLANYR_NO, b.NAME as PLANYR_NAME, b.CRITERIA, b.QUALITY, b.BUDGET, b.CNT, NVL(RTRIM(xmlagg (xmlelement (e, f.INTERVAL || ',') ORDER BY f.INTERVAL).extract('//text()'), ','),'-') MNTHLIST, g.BR_ID as GAZARID, g.DOMAIN_ORG as GAZARNAME FROM ( SELECT a.ID as PLANYR_ID FROM TBL_PLANYR a INNER JOIN TBL_PLANYR_USER b ON a.ID=b.PLANYR_ID AND b.ST_ID=" + stid + " INNER JOIN TBL_FUNC_ACTION c ON a.FUNC_ACTION_ID=c.ID AND c.IS_LOCAL=1 INNER JOIN TBL_FUNC_ACTION_BR d ON c.ID=d.FUNC_ACTION_ID INNER JOIN TBL_FUNC_STRAT f ON c.FUNC_STRAT_ID=f.ID WHERE a.YR=" + currentYear + " AND c.IS_LOCAL=1 AND a.SUBMIT_D2=1 GROUP BY a.ID ) a INNER JOIN TBL_PLANYR b ON a.PLANYR_ID=b.ID INNER JOIN TBL_FUNC_ACTION c ON b.FUNC_ACTION_ID=c.ID INNER JOIN TBL_FUNC_STRAT d ON c.FUNC_STRAT_ID=d.ID LEFT JOIN TBL_PLANYR_EVAL f ON a.PLANYR_ID=f.PLANYR_ID AND f.TP='month' INNER JOIN TBL_BRANCH g ON d.BR_ID=g.BR_ID AND g.YR=" + currentYear + @" GROUP BY a.PLANYR_ID ,d.ID, d.NO, d.NAME,c.ID, c.NO, c.NAME, b.NO, b.NAME, b.CRITERIA, b.QUALITY, b.BUDGET,b.CNT,g.BR_ID,g.DOMAIN_ORG ) a INNER JOIN TBL_FUNC_ACTION_BR b ON a.ACTION_BRID=b.FUNC_ACTION_ID INNER JOIN TBL_BRANCH c ON b.BR_ID=c.BR_ID AND c.YR=" + currentYear + @" GROUP BY a.PLANYR_ID, a.STRAT_BRID, a.STRAT_NO, a.STRAT_NAME, a.ACTION_BRID, a.ACTION_NO, a.ACTION_NAME, a.PLANYR_NO, a.PLANYR_NAME, a.CRITERIA, a.CNT, a.QUALITY, a.MNTHLIST, a.BUDGET, a.GAZARID, a.GAZARNAME ) a INNER JOIN TBL_PLANYR_USER b ON a.PLANYR_ID=b.PLANYR_ID AND b.ISREAL=1 INNER JOIN hrdbuser.ST_STAFFS c ON b.ST_ID=c.ID GROUP BY a.PLANYR_ID, a.STRAT_BRID,a.STRAT_NO,a.STRAT_NAME,a.ACTION_BRID,a.ACTION_NO, a.ACTION_NAME, a.PLANYR_NO, a.PLANYR_NAME, a.CRITERIA, a.CNT, a.QUALITY, a.MNTHLIST,a.BUDGET, a.GAZARID, a.GAZARNAME, a.HELTESID, a.HELTESNAME ORDER BY a.STRAT_NO, a.ACTION_NO, a.PLANYR_NO";
            ds = myObj.OracleExecuteDataSet(qry);
            data10.InnerHtml = ds.Tables[0].Rows.Count.ToString();

            medlegHusnegt.InnerHtml = "";
            medlegHusnegt.InnerHtml += "<table style=\"border:1px solid #000; border-collapse:collapse; font: 11pt arial, sans-serif; width: 100%;\">";
            medlegHusnegt.InnerHtml += "<thead>";
            medlegHusnegt.InnerHtml += "<tr>";
            medlegHusnegt.InnerHtml += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Тухайн жилд хэрэгжүүлэх арга хэмжээ</th>";
            medlegHusnegt.InnerHtml += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Хүрэх үр дүн, Хугацаа, Тоо хэмжээ</th>";
            medlegHusnegt.InnerHtml += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Хариуцан гүйцэтгэх нэгж /албан хаагчийн/ нэр</th>";
            medlegHusnegt.InnerHtml += "</tr>";
            medlegHusnegt.InnerHtml += "<tr>";
            medlegHusnegt.InnerHtml += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">1</th>";
            medlegHusnegt.InnerHtml += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">2</th>";
            medlegHusnegt.InnerHtml += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">3</th>";
            medlegHusnegt.InnerHtml += "</tr>";
            medlegHusnegt.InnerHtml += "</thead>";
            medlegHusnegt.InnerHtml += "<tbody>";
            medlegHusnegt.InnerHtml += "<tr>";
            medlegHusnegt.InnerHtml += "<td style=\"border: 1px solid #000; font-weight:bold; padding:5px; text-align:center;\" colspan=\"3\">Д. МЭДЛЭГ ЧАДВАРАА ДЭЭШЛҮҮЛЭХ ЗОРИЛТ</td>";
            medlegHusnegt.InnerHtml += "</tr>";
            medlegHusnegt.InnerHtml += "<tr>";
            medlegHusnegt.InnerHtml += "<td style=\"border: 1px solid #000; font-weight:bold; text-align:center; padding:5px;\">Мэдлэг чадвараа дээшлүүлэх зорилт</td>";
            medlegHusnegt.InnerHtml += "<td style=\"border: 1px solid #000; font-weight:bold; text-align:center; padding:5px;\">Хүрэх үр дүн</td>";
            medlegHusnegt.InnerHtml += "<td style=\"border: 1px solid #000; font-weight:bold; text-align:center; padding:5px;\" colspan=\"2\">Суурь түвшин</td>";
            medlegHusnegt.InnerHtml += "</tr>";
            //ds = myObj.OracleExecuteDataSet("SELECT ROWNUM as ROWNO, ID, NVL(D1,'-') as IMPROVESKILL_TARGET, NVL(D2,'-') as IMPROVESKILL_RESULTED, NVL(D3,'-') as IMPROVESKILL_BASICLEVEL FROM TBL_AGREEMENT_SKILL WHERE ST_ID=" + stid + " AND YR=" + currentYear + " ORDER BY ID");
            ds = myObj.OracleExecuteDataSet(@"SELECT a.ID, a.NAME, NVL(b.AVGPNT,0) as AVGPNT
FROM TBL_SRV_QUESTION a
LEFT JOIN (
  SELECT a.SRV_QUESTION_ID, NVL(ROUND(ROUND(AVG(b.PER), 3) * 0.2, 3), 0) as AVGPNT
  FROM TBL_SRV a
  INNER JOIN TBL_SRV_ANSWER b ON a.SRV_ANSWER_ID = b.ID
  INNER JOIN hrdbuser.ST_STAFFS c ON a.TRGT_ID = c.ID
  INNER JOIN hrdbuser.ST_STBR d ON c.ID = d.STAFFS_ID AND d.ISACTIVE = 1
  INNER JOIN hrdbuser.ST_BRANCH f ON d.BRANCH_ID = f.ID AND f.ISACTIVE = 1
  INNER JOIN hrdbuser.ST_BRANCH g ON f.FATHER_ID = g.ID AND g.ISACTIVE = 1
  WHERE a.SRV_TYPE_ID = 1 AND a.TRGT_ID="+stid+" AND a.YR = "+(Int32.Parse(currentYear)-1).ToString()+@" AND a.YR_HF = 2
  GROUP BY a.SRV_QUESTION_ID
) b ON a.ID=b.SRV_QUESTION_ID
WHERE a.SRV_TYPE_ID=1 AND a.IS_ACTIVE=1
ORDER BY a.ID");
            if (ds.Tables[0].Rows.Count != 0)
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    medlegHusnegt.InnerHtml += "<tr>";
                    medlegHusnegt.InnerHtml += "<td style=\"border: 1px solid #000; padding:5px;\">" + dr["NAME"].ToString() + "</td>";
                    medlegHusnegt.InnerHtml += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">100 хувь</td>";
                    medlegHusnegt.InnerHtml += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\" colspan=\"2\">" + dr["AVGPNT"].ToString() + "</td>";
                    medlegHusnegt.InnerHtml += "</tr>";
                }
            }
            medlegHusnegt.InnerHtml += "</tbody>";
            medlegHusnegt.InnerHtml += "</table>";
        }
    }
}