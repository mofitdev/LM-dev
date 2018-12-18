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
    public partial class planyrTab3PlanPrintModal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            string currentYear = "", isPlaned="", userGazarId = "", userGazarName = "", stid = "", userHeltesName = "", userGazarBossName = "", userHeltesId = "", userTNBDName = "";
            currentYear = Request.QueryString["yr"];
            if (Request.QueryString["isplaned"] != null) isPlaned = Request.QueryString["isplaned"];
            userGazarId = Request.QueryString["gazar"];
            if (Request.QueryString["heltes"] != null) userHeltesId = Request.QueryString["heltes"];
            if (Request.QueryString["staff"] != null) stid = Request.QueryString["staff"];

            userGazarName = myObj.OracleExecuteScalar("SELECT BR_NAME FROM TBL_BRANCH WHERE YR=" + currentYear + " AND BR_ID=" + userGazarId + " AND BR_TYPE1=3").ToString();
            if (userHeltesId != "") userHeltesName = myObj.OracleExecuteScalar("SELECT BR_NAME FROM TBL_BRANCH WHERE YR=" + currentYear + " AND BR_ID=" + userHeltesId + " AND BR_TYPE1=2").ToString();

            lblHeaderGazar.InnerHtml = userGazarName.ToUpper().Replace("ГАЗАР", "ГАЗРЫН");
            lblHeaderHeltes.InnerHtml = userHeltesName.ToUpper().Replace("ХЭЛТЭС", "ХЭЛТСИЙН");

            userGazarBossName = myObj.OracleExecuteScalar(@"SELECT SUBSTR(a.LNAME,0,1)||'.'||SUBSTR(a.FNAME,1,1)||LOWER(SUBSTR(a.FNAME,2)) as GAZARBOSSNAMEINIT 
FROM hrdbuser.ST_STAFFS a
INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE=1
INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID=c.ID AND c.ACTIVE=1 
WHERE b.POS_ID=2010201 AND b.BRANCH_ID=" + userGazarId).ToString();
            userTNBDName = myObj.OracleExecuteScalar(@"SELECT SUBSTR(a.LNAME,0,1)||'.'||SUBSTR(a.FNAME,1,1)||LOWER(SUBSTR(a.FNAME,2)) as TNBDNAME 
FROM hrdbuser.ST_STAFFS a
INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE=1
INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID=c.ID AND c.ACTIVE=1 
WHERE b.POS_ID=10205").ToString();

            tdFooterGazarName.InnerHtml = userGazarName.Replace("газар", "газрын дарга");
            //tdFooterGazarHeadName.InnerHtml = userGazarName.Replace("газар", "газрын дарга");

            if (tdFooterGazarsOfBoss.InnerHtml.Trim() == tdFooterGazarName.InnerHtml.Trim()) trFooterGazarsOfBoss.Style.Add("display", "none");
            try
            {
                tdFooterGazarHeadName.InnerHtml = userGazarBossName.ToUpper();
            }
            catch (NullReferenceException ex)
            {
                tdFooterGazarHeadName.InnerHtml = "";
            }
            tbodyFooterHeads.InnerHtml = "<tr style=\"font-weight:bold; height: 20px;\"><td style=\"width:10%;\">&nbsp;</td><td style=\"width:60%;\">Төлөвлөгөөг нэгтгэн боловсруулсан:</td><td style=\"width:30%;\"></td></tr>";
            try
            {
                DataSet ds = myObj.OracleExecuteDataSet(@"SELECT d.BR_NAME, SUBSTR(a.LNAME,0,1)||'.'||SUBSTR(a.FNAME,1,1)||LOWER(SUBSTR(a.FNAME,2)) as ST_NAME 
FROM hrdbuser.ST_STAFFS a
INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE=1
INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID=c.ID AND c.ACTIVE=1 
INNER JOIN TBL_BRANCH d ON b.BRANCH_ID=d.BR_ID AND d.YR=" + currentYear +@"
WHERE d.BR_MAIN_ID1 = " + userGazarId + " AND b.POS_ID = 2010301");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        tbodyFooterHeads.InnerHtml += "<tr style=\"height: 20px;\"><td style=\"width:10%;\">&nbsp;</td><td style=\"width:60%;\">" + dr["BR_NAME"].ToString().Replace("газар", "газрын дарга").Replace("хэлтэс", "хэлтсийн дарга") + "</td><td style=\"width:30%; font-weight:bold;\">" + dr["ST_NAME"].ToString() + "</td></tr>";
                    }
                }
            }
            catch (NullReferenceException ex)
            {
                tbodyFooterHeads.InnerHtml += "";
            }
            finally
            {
                myObj.DBDisconnect();
            }


            tbodyFooterDate.InnerHtml = DateTime.Now.ToString("yyyy оны MM дугаар сарын dd-ний өдөр");
            lblHeaderHeltes.InnerHtml = userHeltesName.Replace("хэлтэс", "хэлтсийн");
            lblHeaderYear.InnerHtml = currentYear;
            lblHeaderTNBDName.InnerHtml = userTNBDName;

            divMainTable.InnerHtml = planyrTab3PlanPrintModalDatatable(currentYear, isPlaned, userGazarId, userHeltesId, stid);
        }
        public string planyrTab3PlanPrintModalDatatable(string yr, string isplaned, string gazar, string heltes, string staff)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            string strTableVal = "";
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                DataSet ds = myObjGetTableData.getCurrentInfo();
                if (gazar != "") gazar = " AND d.BR_ID=" + gazar;
                if (heltes != "") heltes = " AND f.BR_ID=" + heltes;
                if (staff != "") staff = " AND b.ST_ID=" + staff;
                if (isplaned != "") isplaned = " AND a.IS_PLANED=" + isplaned;

                strTableVal += "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\"><thead>";
                strTableVal += "<tr>";
                strTableVal += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\"><b>Төсвийн шууд захирагчийн гэрээнд тухайн нэгж хариуцахаар тусгагдсан арга хэмжээ </b><i>(гарц буюу ажил, үйлчилгээ)</i></th>";
                strTableVal += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:35%;\"><b>Тухайн арга хэмжээг хэрэгжүүлэхэд чиглэгдсэн нэгжийн гүйцэтгэх ажил, үйлчилгээ, гүйцэтгэлийн шалгуур үзүүлэлт </b><i>(тоо, чанар, хугацаа)</i> <b>-ийн хүрэх түвшин</b></th>";
                strTableVal += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хариуцах төрийн албан хаагчийн нэр</th>";
                strTableVal += "</tr>";
                strTableVal += "<tr>";
                strTableVal += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">1</th>";
                strTableVal += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">2</th>";
                strTableVal += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">3</th>";
                strTableVal += "</tr>";
                strTableVal += "</thead><tbody>";
                string strQry = "", strstratid = "", stractionid = "";
                strQry = @"SELECT a.PLANYR_ID, d.NO as STRAT_NO, d.NAME as STRAT_NAME, c.NO as ACTION_NO, c.NAME as ACTION_NAME, b.NO as PLANYR_NO, b.NAME as PLANYR_NAME, b.CRITERIA, b.CNT, b.QUALITY, a.STLISTNAME, REPLACE(NVL(b.BUDGET,'Жилдээ'),'1,2,3,4,5,6,7,8,9,10,11,12','Сар бүр') as BUDGET, d.BR_ID as STRAT_BRID, c.ID as ACTION_ID 
FROM ( 
  SELECT a.PLANYR_ID, NVL(RTRIM(xmlagg (xmlelement (e, ' '||SUBSTR(c.LNAME,0,1)||'.'||SUBSTR(c.FNAME,1,1)||LOWER(SUBSTR(c.FNAME,2)) || ',') ORDER BY c.NAT_ID DESC).extract('//text()'), ','),'none') STLISTNAME 
  FROM ( 
    SELECT a.ID as PLANYR_ID 
    FROM TBL_PLANYR a 
    INNER JOIN TBL_PLANYR_USER b ON a.ID=b.PLANYR_ID 
    INNER JOIN TBL_FUNC_ACTION c ON a.FUNC_ACTION_ID=c.ID 
    INNER JOIN TBL_FUNC_STRAT d ON c.FUNC_STRAT_ID=d.ID AND d.YR=" + yr + @" 
    INNER JOIN TBL_FUNC_ACTION_BR f ON c.ID = f.FUNC_ACTION_ID
    WHERE a.SUBMIT_D2 = 1 AND a.YR = " + yr + gazar + heltes + staff + isplaned + @"
    GROUP BY a.ID
  ) a
  INNER JOIN TBL_PLANYR_USER b ON a.PLANYR_ID = b.PLANYR_ID
  LEFT JOIN hrdbuser.ST_STAFFS c ON b.ST_ID = c.ID
  LEFT JOIN hrdbuser.ST_STBR d ON c.ID = d.STAFFS_ID AND d.ISACTIVE = 1
  LEFT JOIN hrdbuser.STN_POS f ON d.POS_ID = f.ID
  WHERE b.ISREAL = 1
  GROUP BY a.PLANYR_ID
) a
INNER JOIN TBL_PLANYR b ON a.PLANYR_ID = b.ID
INNER JOIN TBL_FUNC_ACTION c ON b.FUNC_ACTION_ID = c.ID
INNER JOIN TBL_FUNC_STRAT d ON c.FUNC_STRAT_ID = d.ID
INNER JOIN TBL_BRANCH f ON d.BR_ID = f.BR_ID AND f.YR = " + yr + @"
ORDER BY d.NO, c.NO, b.NO";
                ds = myObj.OracleExecuteDataSet(strQry);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        if (strstratid != dr["STRAT_BRID"].ToString())
                        {
                            strTableVal += "<tr>";
                            strTableVal += "<td colspan=\"3\" style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + dr["STRAT_NO"].ToString().ToUpper() + ". " + myObjGetTableData.getReplaceDatabaseToDisplay(dr["STRAT_NAME"].ToString()).ToUpper() + "</td>";
                            strTableVal += "</tr>";
                        }
                        if (stractionid != dr["ACTION_ID"].ToString())
                        {
                            strTableVal += "<tr>";
                            strTableVal += "<td colspan=\"3\" style=\"border: 1px solid #000; padding:5px; font-weight:bold;\">" + dr["STRAT_NO"].ToString() + "." + dr["ACTION_NO"].ToString() + ". " + myObjGetTableData.getReplaceDatabaseToDisplay(dr["ACTION_NAME"].ToString()) + "</td>";
                            strTableVal += "</tr>";
                        }
                        strTableVal += "<tr>";
                        strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align: justify;\">" + dr["STRAT_NO"].ToString() + "." + dr["ACTION_NO"].ToString() + "." + dr["PLANYR_NO"].ToString() + ". " + myObjGetTableData.getReplaceDatabaseToDisplay(dr["PLANYR_NAME"].ToString()) + "</td>";
                        strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align: justify;\">";
                        strTableVal += "<b>Гүйцэтгэлийн шалгуур үзүүлэлт: </b>" + myObjGetTableData.getReplaceDatabaseToDisplay(dr["CRITERIA"].ToString());
                        strTableVal += "<br/><b>Тоо: </b>" + dr["CNT"].ToString();
                        strTableVal += "<br/><b>Чанар: </b>" + dr["QUALITY"].ToString();
                        strTableVal += "<br/><b>\tТөлөвлөгөөт хугацаа /сар/: </b>" + dr["BUDGET"].ToString().Replace(",", ", ");
                        strTableVal += "</td>";
                        strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + dr["STLISTNAME"].ToString() + "</td>";
                        strTableVal += "</tr>";
                        strstratid = dr["STRAT_BRID"].ToString();
                        stractionid = dr["ACTION_ID"].ToString();
                    }
                }
                strTableVal += "</tbody></table>";
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
            return strTableVal;
        }
    }
}