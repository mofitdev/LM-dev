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
    public partial class agreementTab1PrintModal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            string stid = Request.QueryString["stid"];
            string pos = "", userposid = "", gereeposname="", gereeposnamefather = "", fatherpos = "", fatherfname = "", fname = "", currentYear = "", currentYearHalf = "", cntwork = "", userHeltesId = "", userGazarId = "", userGazarName="", userHeltesName="", userGazarNameButen="", userHeltesButen="";
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
INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE=1
INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID=c.ID 
WHERE c.ACTIVE=1 AND b.POS_ID=2010201 AND b.BRANCH_ID=9915").ToString();
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
            cntwork = myObj.OracleExecuteScalar("SELECT SUM(CNT) as CNT FROM ( SELECT COUNT(1) as CNT FROM TBL_PERFCONTRACT WHERE YR=" + currentYear + " AND ST_ID=" + stid + " UNION ALL SELECT COUNT(1) as CNT FROM TBL_PERFCONTRACT_SKILL WHERE YR=" + currentYear + " AND ST_ID=" + stid + " UNION ALL SELECT COUNT(1) as CNT FROM TBL_PERFCONTRACT_OTHER WHERE YR=" + currentYear + " AND ST_ID=" + stid + " ) ").ToString();

            perfcont_lbl5.InnerHtml = gereeposnamefather;
            perfcont_lbl6.InnerHtml = fatherpos;
            if (fatherfname != "") perfcont_lbl7.InnerHtml = fatherfname.Substring(0, 4) + fatherfname.ToLower().Substring(4);
            else perfcont_lbl7.InnerHtml = fatherfname;
            perfcont_lbl8.InnerHtml = gereeposname;
            perfcont_lbl9.InnerHtml = pos;
            perfcont_lbl10.InnerHtml = fname.Substring(0, 4) + fname.ToLower().Substring(4);
            //perfcont_lbl11.InnerHtml = gereeposname.Replace("Төсвийн шууд захирагч", "Байгууллагын").Replace("Газрын дарга", "Газрын").Replace("Хэлтсийн дарга", "Хэлтсийн").Replace("Мэргэжилтэн", "Мэргэжилтэний");
            //perfcont_lbl12.InnerHtml = gereeposname.Replace("Төсвийн шууд захирагч", "төсвийн шууд захирагчаас Байгуулага тухайн төсвийн жилд хэрэгжүүлэх хөтөлбөр, арга хэмжээ, тэдгээрийн төсөв, хүрэх үр дүн, хугацаа, тоо хэмжээ, хэрэгжилтийг хариуцах нэгж (албан хаагч), манлайллын").Replace("Газрын дарга", "газрын даргын хэрэгжүүлэх ажил, үйлчилгээ, тэдгээрийн суурь түвшин, хүрэх үр дүн, хугацаа, тоо хэмжээ, хариуцах төрийн албан хаагчийн нэр, газрын даргын мэдлэг чадвараа дээшлүүлэх").Replace("Хэлтсийн дарга", "хэлтсийн даргын хэрэгжүүлэх ажил, үйлчилгээ, тэдгээрийн суурь түвшин, хүрэх үр дүн, хугацаа, тоо хэмжээ, хариуцах төрийн албан хаагчийн нэр, хэлтсийн даргын мэдлэг чадвараа дээшлүүлэх").Replace("Мэргэжилтэн", "мэргэжилтэний хэрэгжүүлэх ажил, үйлчилгээ, тэдгээрийн суурь түвшин, хүрэх үр дүн, хугацаа, тоо хэмжээ, мэдлэг чадвараа дээшлүүлэх");
            perfcont_lbl13.InnerHtml = gereeposname.Replace("Төсвийн шууд захирагч", "Төсвийн шууд захирагчийн").Replace("Газрын дарга", "Газрын даргын").Replace("Хэлтсийн дарга", "Хэлтсийн даргын").Replace("Мэргэжилтэн", "Мэргэжилтэний");
            perfcont_lbl14.InnerHtml = gereeposname.Replace("Төсвийн шууд захирагч", "Байгууллагын").Replace("Газрын дарга", "Газрын").Replace("Хэлтсийн дарга", "Хэлтсийн").Replace("Мэргэжилтэн", "Мэргэжилтэний");
            perfcont_lbl15.InnerHtml = cntwork;
            perfcont_lbl17.InnerHtml = gereeposname.Replace("Төсвийн шууд захирагч", "арга хэмжээг").Replace("Газрын дарга", "ажил, үйлчилгээг").Replace("Хэлтсийн дарга", "ажил, үйлчилгээг").Replace("Мэргэжилтэн", "ажил, үйлчилгээг");
            perfcont_lbl18.InnerHtml = gereeposname.Replace("Төсвийн шууд захирагч", "Байгууллагын").Replace("Газрын дарга", "Газрын").Replace("Хэлтсийн дарга", "Хэлтсийн").Replace("Мэргэжилтэн", "Мэргэжилтэний");
            perfcont_lbl19.InnerHtml = gereeposname.Replace("Төсвийн шууд захирагч", "төрийн жинхэнэ албаны удирдах ажилтны манлайллын").Replace("Газрын дарга", "мэдлэг чадвараа дээшлүүлэх").Replace("Хэлтсийн дарга", "мэдлэг чадвараа дээшлүүлэх").Replace("Мэргэжилтэн", "мэдлэг чадвараа дээшлүүлэх");
            perfcont_lbl20.InnerHtml = gereeposnamefather;
            perfcont_lbl21.InnerHtml = gereeposnamefather.Replace("Төсвийн ерөнхийлөн захирагч", "Төсвийн ерөнхийлөн захирагчийн").Replace("Газрын дарга", "Газрын даргын").Replace("Хэлтсийн дарга", "Хэлтсийн даргын").Replace("Мэргэжилтэн", "Мэргэжилтэний");
            perfcont_lbl22.InnerHtml = gereeposname.Replace("Төсвийн шууд захирагч", "Төсвийн шууд захирагчтай").Replace("Газрын дарга", "Газрын даргатай").Replace("Хэлтсийн дарга", "Хэлтсийн даргатай").Replace("Мэргэжилтэн", "Мэргэжилтэнтэй");
            perfcont_lbl23.InnerHtml = gereeposname.Replace("Төсвийн шууд захирагч", "хөтөлбөр, арга хэмжээний").Replace("Газрын дарга", "ажил, үйлчилгээний").Replace("Хэлтсийн дарга", "ажил, үйлчилгээний").Replace("Мэргэжилтэн", "ажил, үйлчилгээний");
            perfcont_lbl24.InnerHtml = gereeposname.Replace("Төсвийн шууд захирагч", "Манлайллын").Replace("Газрын дарга", "Мэдлэг чадвараа").Replace("Хэлтсийн дарга", "Мэдлэг чадвараа").Replace("Мэргэжилтэн", "Мэдлэг чадвараа");
            perfcont_lbl25.InnerHtml = gereeposname.Replace("Төсвийн шууд захирагч", "шууд захирагчид").Replace("Газрын дарга", "газрын даргад").Replace("Хэлтсийн дарга", "хэлтсийн даргад").Replace("Мэргэжилтэн", "мэргэжилтэнд");
            perfcont_lbl26.InnerHtml = gereeposname.Replace("Төсвийн шууд захирагч", "хөтөлбөр, арга хэмжээнүүд, манлайллын").Replace("Газрын дарга", "ажил, үйлчилгээ, мэдлэг чадвараа дээшлүүлэх").Replace("Хэлтсийн дарга", "ажил, үйлчилгээ, мэдлэг чадвараа дээшлүүлэх").Replace("Мэргэжилтэн", "ажил, үйлчилгээ, мэдлэг чадвараа дээшлүүлэх");
            perfcont_lbl27.InnerHtml = gereeposname.Replace("Төсвийн шууд захирагч", "шууд захирагчид").Replace("Газрын дарга", "газрын даргад").Replace("Хэлтсийн дарга", "хэлтсийн даргад").Replace("Мэргэжилтэн", "мэргэжилтэнд");
            perfcont_lbl28.InnerHtml = currentYear;
            perfcont_lbl29.InnerHtml = currentYear;
            perfcont_lbl30.InnerHtml = gereeposname;
            perfcont_lbl31.InnerHtml = currentYear;
            if (currentYearHalf == "1") {
                perfcont_lbl32.InnerHtml = "6";
                perfcont_lbl33.InnerHtml = "15";
                perfcont_lbl36.InnerHtml = "7";
                perfcont_lbl37.InnerHtml = "1";
            }
            else if (currentYearHalf == "2") {
                perfcont_lbl32.InnerHtml = "12";
                perfcont_lbl33.InnerHtml = "15";
                perfcont_lbl36.InnerHtml = "12";
                perfcont_lbl37.InnerHtml = "31";
            }
            
            perfcont_lbl34.InnerHtml = gereeposnamefather;
            perfcont_lbl35.InnerHtml = currentYear;
            perfcont_lbl38.InnerHtml = gereeposname;
            perfcont_lbl39.InnerHtml = char.ToLower(gereeposnamefather[0]) + gereeposnamefather.Substring(1);
            perfcont_lbl40.InnerHtml = gereeposname;
            perfcont_lbl41.InnerHtml = char.ToLower(gereeposnamefather[0]) + gereeposnamefather.Substring(1);
            perfcont_lbl42.InnerHtml = gereeposnamefather;
            perfcont_lbl43.InnerHtml = fatherpos;
            //perfcont_lbl44.InnerHtml = fatherfname.Substring(0, 4) + fatherfname.ToLower().Substring(4);
            if (fatherfname != "") perfcont_lbl44.InnerHtml = fatherfname.Substring(0, 4) + fatherfname.ToLower().Substring(4);
            else perfcont_lbl44.InnerHtml = fatherfname;
            perfcont_lbl45.InnerHtml = gereeposname;
            perfcont_lbl46.InnerHtml = pos;
            perfcont_lbl47.InnerHtml = fname.Substring(0, 4) + fname.ToLower().Substring(4);
            perfcont_lbl48.InnerHtml = DateTime.Now.ToString("yyyy-MM-dd");

            ////havsralt
            perfcont_lbl49.InnerHtml = gereeposname.Replace("Төсвийн шууд захирагч", "Төсвийн шууд захирагчийн гэрээний хавсралт, байгууллагын").Replace("Газрын дарга", "Газрын даргын").Replace("Хэлтсийн дарга", "Хэлтсийн даргын").Replace("Мэргэжилтэн", "Мэргэжилтэний");
            perfcont_lbl50.InnerHtml = fatherpos;
            if (fatherfname != "") perfcont_lbl51.InnerHtml = fatherfname.Substring(0, 4) + fatherfname.ToLower().Substring(4);
            else perfcont_lbl51.InnerHtml = fatherfname;
            perfcont_lbl52.InnerHtml = gereeposname.Replace("Төсвийн шууд захирагч", "САНГИЙН ЯАМ").Replace("Газрын дарга", userGazarName + "-Н ДАРГА " + fname).Replace("Хэлтсийн дарга", userGazarName + "-Н " + userHeltesName + "-Н ДАРГА " + fname).Replace("Мэргэжилтэн", userGazarName + "-Н " + userHeltesName + "-Н " + pos.ToUpper() + " " + fname);
            perfcont_lbl53.InnerHtml = currentYear;
            perfcont_lbl54.InnerHtml = pos;
            perfcont_lbl55.InnerHtml = fname.Substring(0, 4) + fname.ToLower().Substring(4);
            perfcont_lbl56.InnerHtml = DateTime.Now.ToString("yyyy-MM-dd");
            



            niitTusgaiHusnegt.InnerHtml = "";
            niitTusgaiHusnegt.InnerHtml += "<table style=\"border:1px solid #000; border-collapse:collapse; font: 12px arial, sans-serif; width: 100%;\">";
            niitTusgaiHusnegt.InnerHtml += "<thead>";
            niitTusgaiHusnegt.InnerHtml += "<tr>";
            niitTusgaiHusnegt.InnerHtml += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Тухайн жилд хэрэгжүүлэх арга хэмжээ</th>";
            niitTusgaiHusnegt.InnerHtml += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Хүрэх үр дүн, Хугацаа, Тоо хэмжээ</th>";
            //niitTusgaiHusnegt.InnerHtml += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Хариуцан гүйцэтгэх нэгж /албан хаагчийн/ нэр</th>";
            niitTusgaiHusnegt.InnerHtml += "</tr>";
            niitTusgaiHusnegt.InnerHtml += "<tr>";
            niitTusgaiHusnegt.InnerHtml += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">1</th>";
            niitTusgaiHusnegt.InnerHtml += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">2</th>";
            //niitTusgaiHusnegt.InnerHtml += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">3</th>";
            niitTusgaiHusnegt.InnerHtml += "</tr>";
            niitTusgaiHusnegt.InnerHtml += "</thead>";
            niitTusgaiHusnegt.InnerHtml += "<tbody>";
            niitTusgaiHusnegt.InnerHtml += "<tr>";
            niitTusgaiHusnegt.InnerHtml += "<td style=\"font-weight:bold; padding:5px; text-align:center;\" colspan=\"2\">А. НИЙТ (Тусгай ажил, үйлчилгээнээс бусад) АЖИЛ, ҮЙЛЧИЛГЭЭ</td>";
            niitTusgaiHusnegt.InnerHtml += "</tr>";
            string qry = "SELECT a.PLANYR_ID, a.STRAT_BRID, a.STRAT_NO, a.STRAT_NAME, a.ACTION_BRID, a.ACTION_NO, a.ACTION_NAME, a.PLANYR_NO, a.PLANYR_NAME, a.CRITERIA, a.CNT, a.QUALITY, a.MNTHLIST, a.BUDGET, a.GAZARID, a.GAZARNAME, a.HELTESID, a.HELTESNAME, NVL(RTRIM(xmlagg (xmlelement (e, c.ID || ',')).extract('//text()'), ','),'none') STLISTID, NVL(RTRIM(xmlagg (xmlelement (e, ' '||SUBSTR(c.LNAME,0,1)||'.'||SUBSTR(c.FNAME,1,1)||LOWER(SUBSTR(c.FNAME,2)) || ',')).extract('//text()'), ','),'none') STLISTNAME FROM ( SELECT a.PLANYR_ID, a.STRAT_BRID, a.STRAT_NO, a.STRAT_NAME, a.ACTION_BRID, a.ACTION_NO, a.ACTION_NAME, a.PLANYR_NO, a.PLANYR_NAME, a.CRITERIA, a.CNT, a.QUALITY, a.MNTHLIST, a.BUDGET, a.GAZARID, a.GAZARNAME, NVL(RTRIM(xmlagg (xmlelement (e, b.BR_ID || ',') ORDER BY b.BR_ID).extract('//text()'), ','),'-') as HELTESID, NVL(RTRIM(xmlagg (xmlelement (e, c.DOMAIN_ORG || ',') ORDER BY b.BR_ID).extract('//text()'), ','),'none') as HELTESNAME FROM ( SELECT a.PLANYR_ID, d.ID as STRAT_BRID, d.NO as STRAT_NO, d.NAME as STRAT_NAME, c.ID as ACTION_BRID, c.NO as ACTION_NO, c.NAME as ACTION_NAME, b.NO as PLANYR_NO, b.NAME as PLANYR_NAME, b.CRITERIA, b.QUALITY, b.BUDGET, b.CNT, NVL(RTRIM(xmlagg (xmlelement (e, f.INTERVAL || ',') ORDER BY f.INTERVAL).extract('//text()'), ','),'-') MNTHLIST, g.BR_ID as GAZARID, g.DOMAIN_ORG as GAZARNAME FROM ( SELECT b.PLANYR_ID FROM ( SELECT PLANYR_ID FROM TBL_AGREEMENT_MAIN WHERE YR=" + currentYear + " AND ST_ID=" + stid + " AND ISSPECIAL=1 ) a RIGHT JOIN ( SELECT a.ID as PLANYR_ID FROM TBL_PLANYR a INNER JOIN TBL_PLANYR_USER b ON a.ID=b.PLANYR_ID AND b.ST_ID=" + stid + " INNER JOIN TBL_FUNC_ACTION c ON a.FUNC_ACTION_ID=c.ID AND c.IS_PLANED=1 INNER JOIN TBL_FUNC_ACTION_BR d ON c.ID=d.FUNC_ACTION_ID INNER JOIN TBL_FUNC_STRAT f ON c.FUNC_STRAT_ID=f.ID WHERE a.YR=" + currentYear + " AND a.IS_PLANED=1 AND a.SUBMIT_D2=1 GROUP BY a.ID ) b ON a.PLANYR_ID=b.PLANYR_ID WHERE a.PLANYR_ID IS NULL ) a INNER JOIN TBL_PLANYR b ON a.PLANYR_ID=b.ID INNER JOIN TBL_FUNC_ACTION c ON b.FUNC_ACTION_ID=c.ID INNER JOIN TBL_FUNC_STRAT d ON c.FUNC_STRAT_ID=d.ID LEFT JOIN TBL_PLANYR_EVAL f ON a.PLANYR_ID=f.PLANYR_ID AND f.TP='month' INNER JOIN TBL_BRANCH g ON d.BR_ID=g.BR_ID AND g.YR="+currentYear+ " GROUP BY a.PLANYR_ID ,d.ID, d.NO, d.NAME,c.ID, c.NO, c.NAME, b.NO, b.NAME, b.CRITERIA, b.QUALITY, b.BUDGET,b.CNT,g.BR_ID,g.DOMAIN_ORG ) a INNER JOIN TBL_FUNC_ACTION_BR b ON a.ACTION_BRID=b.FUNC_ACTION_ID INNER JOIN TBL_BRANCH c ON b.BR_ID=c.BR_ID AND c.YR=" + currentYear + " GROUP BY a.PLANYR_ID, a.STRAT_BRID, a.STRAT_NO, a.STRAT_NAME, a.ACTION_BRID, a.ACTION_NO, a.ACTION_NAME, a.PLANYR_NO, a.PLANYR_NAME, a.CRITERIA, a.CNT, a.QUALITY, a.MNTHLIST, a.BUDGET, a.GAZARID, a.GAZARNAME ) a INNER JOIN TBL_PLANYR_USER b ON a.PLANYR_ID=b.PLANYR_ID AND b.ISREAL=1 INNER JOIN hrdbuser.ST_STAFFS c ON b.ST_ID=c.ID GROUP BY a.PLANYR_ID, a.STRAT_BRID,a.STRAT_NO,a.STRAT_NAME,a.ACTION_BRID,a.ACTION_NO, a.ACTION_NAME, a.PLANYR_NO, a.PLANYR_NAME, a.CRITERIA, a.CNT, a.QUALITY, a.MNTHLIST,a.BUDGET, a.GAZARID, a.GAZARNAME, a.HELTESID, a.HELTESNAME ORDER BY a.STRAT_NO, a.ACTION_NO, a.PLANYR_NO";
            ds = myObj.OracleExecuteDataSet(qry);
            if (ds.Tables[0].Rows.Count != 0)
            {
                string objno = "", polno = "";
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    if (polno != dr[2].ToString())
                    {
                        niitTusgaiHusnegt.InnerHtml += "<tr>";
                        niitTusgaiHusnegt.InnerHtml += "<td colspan=\"2\" style=\"border: 1px solid #000; font-weight:bold; padding:5px; text-align:justify;\">" + dr[2].ToString() + ". " + dr[3].ToString() + "</td>";
                        niitTusgaiHusnegt.InnerHtml += "</tr>";
                        polno = dr[2].ToString();
                        if (objno != dr[4].ToString())
                        {
                            niitTusgaiHusnegt.InnerHtml += "<tr>";
                            niitTusgaiHusnegt.InnerHtml += "<td colspan=\"2\" style=\"border: 1px solid #000; font-weight:bold; padding:5px; text-align:justify;\">" + dr[2].ToString() + "." + dr[5].ToString() + ". " + dr[6].ToString() + "</td>";
                            niitTusgaiHusnegt.InnerHtml += "</tr>";
                            objno = dr[4].ToString();
                        }
                    }
                    else
                    {
                        if (objno != dr[4].ToString())
                        {
                            niitTusgaiHusnegt.InnerHtml += "<tr>";
                            niitTusgaiHusnegt.InnerHtml += "<td colspan=\"2\" style=\"border: 1px solid #000; font-weight:bold; padding:5px; text-align:justify;\">" + dr[2].ToString() + "." + dr[5].ToString() + ". " + dr[6].ToString() + "</td>";
                            niitTusgaiHusnegt.InnerHtml += "</tr>";
                            objno = dr[4].ToString();
                        }
                    }
                    niitTusgaiHusnegt.InnerHtml += "<tr>";
                    niitTusgaiHusnegt.InnerHtml += "<td style=\"border: 1px solid #000; padding:5px; vertical-align:top; text-align:justify;\">" + dr[2].ToString() + "." + dr[5].ToString() + "." + dr[7].ToString() + ". " + dr[8].ToString() + "</td>";
                    niitTusgaiHusnegt.InnerHtml += "<td style=\"border: 1px solid #000; padding:5px; vertical-align:top;\">" + dr[9].ToString() + "<br /><b>тоо:</b> " + dr[10].ToString() + "<br /><b>хугацаа:</b> " + dr[12].ToString() + "</td>";
                    //niitTusgaiHusnegt.InnerHtml += "<td style=\"border: 1px solid #000; padding:5px; padding:5px; vertical-align:top;\">" + dr[15].ToString() + ", " + dr[17].ToString() + " /" + dr[19].ToString() + "/</td>";
                    niitTusgaiHusnegt.InnerHtml += "</tr>";
                }
            }
            niitTusgaiHusnegt.InnerHtml += "<tr>";
            niitTusgaiHusnegt.InnerHtml += "<td colspan=\"2\" style=\"font-weight:bold; padding:5px; text-align:center;border: 1px solid #000;\">Б. ТУСГАЙ  АЖИЛ, ҮЙЛЧИЛГЭЭ</th>";
            niitTusgaiHusnegt.InnerHtml += "</tr>";
            qry = "SELECT a.PLANYR_ID, a.STRAT_BRID, a.STRAT_NO, a.STRAT_NAME, a.ACTION_BRID, a.ACTION_NO, a.ACTION_NAME, a.PLANYR_NO, a.PLANYR_NAME, a.CRITERIA, a.CNT, a.QUALITY, a.MNTHLIST, a.BUDGET, a.GAZARID, a.GAZARNAME, a.HELTESID, a.HELTESNAME, NVL(RTRIM(xmlagg (xmlelement (e, c.ID || ',')).extract('//text()'), ','),'none') STLISTID, NVL(RTRIM(xmlagg (xmlelement (e, ' '||SUBSTR(c.LNAME,0,1)||'.'||SUBSTR(c.FNAME,1,1)||LOWER(SUBSTR(c.FNAME,2)) || ',')).extract('//text()'), ','),'none') STLISTNAME FROM ( SELECT a.PLANYR_ID, a.STRAT_BRID, a.STRAT_NO, a.STRAT_NAME, a.ACTION_BRID, a.ACTION_NO, a.ACTION_NAME, a.PLANYR_NO, a.PLANYR_NAME, a.CRITERIA, a.CNT, a.QUALITY, a.MNTHLIST, a.BUDGET, a.GAZARID, a.GAZARNAME, NVL(RTRIM(xmlagg (xmlelement (e, b.BR_ID || ',') ORDER BY b.BR_ID).extract('//text()'), ','),'-') as HELTESID, NVL(RTRIM(xmlagg (xmlelement (e, c.DOMAIN_ORG || ',') ORDER BY b.BR_ID).extract('//text()'), ','),'none') as HELTESNAME FROM ( SELECT a.PLANYR_ID, d.ID as STRAT_BRID, d.NO as STRAT_NO, d.NAME as STRAT_NAME, c.ID as ACTION_BRID, c.NO as ACTION_NO, c.NAME as ACTION_NAME, b.NO as PLANYR_NO, b.NAME as PLANYR_NAME, b.CRITERIA, b.QUALITY, b.BUDGET, b.CNT, NVL(RTRIM(xmlagg (xmlelement (e, f.INTERVAL || ',') ORDER BY f.INTERVAL).extract('//text()'), ','),'-') MNTHLIST, g.BR_ID as GAZARID, g.DOMAIN_ORG as GAZARNAME FROM ( SELECT b.PLANYR_ID FROM ( SELECT PLANYR_ID FROM TBL_AGREEMENT_MAIN WHERE YR=" + currentYear + " AND ST_ID=" + stid + " AND ISSPECIAL=1 ) a INNER JOIN ( SELECT a.ID as PLANYR_ID FROM TBL_PLANYR a INNER JOIN TBL_PLANYR_USER b ON a.ID=b.PLANYR_ID AND b.ST_ID=" + stid + " INNER JOIN TBL_FUNC_ACTION c ON a.FUNC_ACTION_ID=c.ID AND c.IS_PLANED=1 INNER JOIN TBL_FUNC_ACTION_BR d ON c.ID=d.FUNC_ACTION_ID INNER JOIN TBL_FUNC_STRAT f ON c.FUNC_STRAT_ID=f.ID WHERE a.YR=" + currentYear + " AND a.IS_PLANED=1 AND a.SUBMIT_D2=1 GROUP BY a.ID ) b ON a.PLANYR_ID=b.PLANYR_ID ) a INNER JOIN TBL_PLANYR b ON a.PLANYR_ID=b.ID INNER JOIN TBL_FUNC_ACTION c ON b.FUNC_ACTION_ID=c.ID INNER JOIN TBL_FUNC_STRAT d ON c.FUNC_STRAT_ID=d.ID LEFT JOIN TBL_PLANYR_EVAL f ON a.PLANYR_ID=f.PLANYR_ID AND f.TP='month' INNER JOIN TBL_BRANCH g ON d.BR_ID=g.BR_ID AND g.YR=" + currentYear + " GROUP BY a.PLANYR_ID ,d.ID, d.NO, d.NAME,c.ID, c.NO, c.NAME, b.NO, b.NAME, b.CRITERIA, b.QUALITY, b.BUDGET,b.CNT,g.BR_ID,g.DOMAIN_ORG ) a INNER JOIN TBL_FUNC_ACTION_BR b ON a.ACTION_BRID=b.FUNC_ACTION_ID INNER JOIN TBL_BRANCH c ON b.BR_ID=c.BR_ID AND c.YR=" + currentYear + " GROUP BY a.PLANYR_ID, a.STRAT_BRID, a.STRAT_NO, a.STRAT_NAME, a.ACTION_BRID, a.ACTION_NO, a.ACTION_NAME, a.PLANYR_NO, a.PLANYR_NAME, a.CRITERIA, a.CNT, a.QUALITY, a.MNTHLIST, a.BUDGET, a.GAZARID, a.GAZARNAME ) a INNER JOIN TBL_PLANYR_USER b ON a.PLANYR_ID=b.PLANYR_ID AND b.ISREAL=1 INNER JOIN hrdbuser.ST_STAFFS c ON b.ST_ID=c.ID GROUP BY a.PLANYR_ID, a.STRAT_BRID,a.STRAT_NO,a.STRAT_NAME,a.ACTION_BRID,a.ACTION_NO, a.ACTION_NAME, a.PLANYR_NO, a.PLANYR_NAME, a.CRITERIA, a.CNT, a.QUALITY, a.MNTHLIST,a.BUDGET, a.GAZARID, a.GAZARNAME, a.HELTESID, a.HELTESNAME ORDER BY a.STRAT_NO, a.ACTION_NO, a.PLANYR_NO";
            ds = myObj.OracleExecuteDataSet(qry);
            if (ds.Tables[0].Rows.Count != 0)
            {
                string objno = "", polno = "";
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    if (polno != dr[2].ToString())
                    {
                        niitTusgaiHusnegt.InnerHtml += "<tr>";
                        niitTusgaiHusnegt.InnerHtml += "<td colspan=\"2\" style=\"border: 1px solid #000; font-weight:bold; padding:5px; text-align:justify;\">" + dr[2].ToString() + ". " + dr[3].ToString() + "</td>";
                        niitTusgaiHusnegt.InnerHtml += "</tr>";
                        polno = dr[2].ToString();
                        if (objno != dr[4].ToString())
                        {
                            niitTusgaiHusnegt.InnerHtml += "<tr>";
                            niitTusgaiHusnegt.InnerHtml += "<td colspan=\"2\" style=\"border: 1px solid #000; font-weight:bold; padding:5px; text-align:justify;\">" + dr[2].ToString() + "." + dr[5].ToString() + ". " + dr[6].ToString() + "</td>";
                            niitTusgaiHusnegt.InnerHtml += "</tr>";
                            objno = dr[4].ToString();
                        }
                    }
                    else
                    {
                        if (objno != dr[4].ToString())
                        {
                            niitTusgaiHusnegt.InnerHtml += "<tr>";
                            niitTusgaiHusnegt.InnerHtml += "<td colspan=\"2\" style=\"border: 1px solid #000; font-weight:bold; padding:5px; text-align:justify;\">" + dr[2].ToString() + "." + dr[5].ToString() + ". " + dr[6].ToString() + "</td>";
                            niitTusgaiHusnegt.InnerHtml += "</tr>";
                            objno = dr[4].ToString();
                        }
                    }
                    niitTusgaiHusnegt.InnerHtml += "<tr>";
                    niitTusgaiHusnegt.InnerHtml += "<td style=\"border: 1px solid #000; padding:5px; vertical-align:top; text-align:justify;\">" + dr[2].ToString() + "." + dr[5].ToString() + "." + dr[7].ToString() + ". " + dr[8].ToString() + "</td>";
                    niitTusgaiHusnegt.InnerHtml += "<td style=\"border: 1px solid #000; padding:5px; vertical-align:top;\">" + dr[9].ToString() + "<br /><b>тоо:</b> " + dr[10].ToString() + "<br /><b>хугацаа:</b> " + dr[12].ToString() + "</td>";
                    //niitTusgaiHusnegt.InnerHtml += "<td style=\"border: 1px solid #000; padding:5px; padding:5px; vertical-align:top;\">" + dr[15].ToString() + ", " + dr[17].ToString() + " /" + dr[19].ToString() + "/</td>";
                    niitTusgaiHusnegt.InnerHtml += "</tr>";
                }
            }
            niitTusgaiHusnegt.InnerHtml += "</tbody>";
            niitTusgaiHusnegt.InnerHtml += "</table>";

            busadHusnegt.InnerHtml = "";
            busadHusnegt.InnerHtml += "<table style=\"border:1px solid #000; border-collapse:collapse; font: 12px arial, sans-serif; width: 100%;\">";
            busadHusnegt.InnerHtml += "<thead>";
            busadHusnegt.InnerHtml += "<tr>";
            busadHusnegt.InnerHtml += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Тухайн жилд хэрэгжүүлэх арга хэмжээ</th>";
            busadHusnegt.InnerHtml += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Хүрэх үр дүн, Хугацаа, Тоо хэмжээ</th>";
            //busadHusnegt.InnerHtml += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Хариуцан гүйцэтгэх нэгж /албан хаагчийн/ нэр</th>";
            busadHusnegt.InnerHtml += "</tr>";
            busadHusnegt.InnerHtml += "<tr>";
            busadHusnegt.InnerHtml += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">1</th>";
            busadHusnegt.InnerHtml += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">2</th>";
            //.InnerHtml += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">3</th>";
            busadHusnegt.InnerHtml += "</tr>";
            busadHusnegt.InnerHtml += "</thead>";
            busadHusnegt.InnerHtml += "<tbody>";
            busadHusnegt.InnerHtml += "<tr>";
            busadHusnegt.InnerHtml += "<td colspan=\"2\" style=\"font-weight:bold; padding:5px; text-align:center;\">В. БУСАД АЖИЛ ҮЙЛЧИЛГЭЭ</th>";
            busadHusnegt.InnerHtml += "</tr>";
            qry = "SELECT a.NO, a.NAME, SUBSTR(b.LNAME,0,1)||'.'||SUBSTR(b.FNAME,1,1)||LOWER(SUBSTR(b.FNAME,2)) as FNAME FROM TBL_AGREEMENT_OTHER a INNER JOIN hrdbuser.ST_STAFFS b ON a.ST_ID=b.ID WHERE a.YR=" + currentYear + " AND a.ST_ID=" + stid + " ORDER BY a.NO";
            ds = myObj.OracleExecuteDataSet(qry);
            if (ds.Tables[0].Rows.Count != 0)
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    busadHusnegt.InnerHtml += "<tr>";
                    busadHusnegt.InnerHtml += "<td colspan=\"1\" style=\"border: 1px solid #000; padding:5px; vertical-align:top; text-align:justify;\">" + dr[0].ToString() + ". " + dr[1].ToString() + "</td>";
                    busadHusnegt.InnerHtml += "<td style=\"border: 1px solid #000; padding:5px; padding:5px; vertical-align:top;\">" + dr[2].ToString() + "</td>";
                    busadHusnegt.InnerHtml += "</tr>";
                }
            }
            busadHusnegt.InnerHtml += "</tbody>";
            busadHusnegt.InnerHtml += "</table>";

            medlegHusnegt.InnerHtml = "";
            medlegHusnegt.InnerHtml += "<table style=\"border:1px solid #000; border-collapse:collapse; font: 12px arial, sans-serif; width: 100%;\">";
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
            ds = myObj.OracleExecuteDataSet("SELECT ROWNUM as ROWNO, ID, NVL(D1,'-') as IMPROVESKILL_TARGET, NVL(D2,'-') as IMPROVESKILL_RESULTED, NVL(D3,'-') as IMPROVESKILL_BASICLEVEL FROM TBL_AGREEMENT_SKILL WHERE ST_ID=" + stid + " AND YR=" + currentYear + " ORDER BY ID");
            if (ds.Tables[0].Rows.Count != 0)
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    medlegHusnegt.InnerHtml += "<tr>";
                    medlegHusnegt.InnerHtml += "<td style=\"border: 1px solid #000; padding:5px;\">" + dr[2].ToString() + "</td>";
                    medlegHusnegt.InnerHtml += "<td style=\"border: 1px solid #000; padding:5px;\">" + dr[3].ToString() + "</td>";
                    medlegHusnegt.InnerHtml += "<td style=\"border: 1px solid #000; padding:5px;\" colspan=\"2\">" + dr[4].ToString() + "</td>";
                    medlegHusnegt.InnerHtml += "</tr>";
                }
            }
            medlegHusnegt.InnerHtml += "</tbody>";
            medlegHusnegt.InnerHtml += "</table>";
        }
    }
}