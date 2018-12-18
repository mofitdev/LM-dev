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
    public partial class agreementTab2PrintModal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            string stid = Request.QueryString["stid"];
            string pos = "", userposid = "", gereeposname = "", gereeposnamefather = "", fatherpos = "", fatherfname = "", fname = "", currentYear = "", currentYearHalf = "", cntwork = "", userHeltesId = "", userGazarId = "", userGazarName = "", userHeltesName = "";
            DataSet ds = myObjGetTableData.getCurrentInfo();
            currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
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
            perfcont_Tab3lbl2.InnerHtml = myObjGetTableData.getCurrentInfo().Tables[0].Rows[0]["YEAR"].ToString();
            perfcont_Tab3lbl1.InnerHtml = gereeposname.Replace("Төсвийн шууд захирагч", "СЯ-НЫ ТӨСВИЙН ШУУД ЗАХИРАГЧ").Replace("Газрын дарга", userGazarName + "-ЫН ДАРГА " + fname).Replace("Хэлтсийн дарга", userGazarName + "-ЫН " + userHeltesName + "-ИЙН ДАРГА " + fname).Replace("Мэргэжилтэн", userGazarName + "-ЫН " + userHeltesName + "-ИЙН " + pos.ToUpper() + " " + fname);
            perfcont_Tab3lbl3.InnerHtml = gereeposname.Replace("Төсвийн шууд захирагч", "Tөсвийн ерөнхийлөн захирагчийн").Replace("Газрын дарга", "Төсвийн шууд захирагчийн").Replace("Хэлтсийн дарга", "Газрын даргын").Replace("Мэргэжилтэн", "Газрын даргын");
            perfcont_Tab3lbl4.InnerHtml = gereeposname.Replace("Төсвийн шууд захирагч", "шууд захирагчийн").Replace("Газрын дарга", "газрын даргын").Replace("Хэлтсийн дарга", "хэлтсийн даргын").Replace("Мэргэжилтэн", "мэргэжилтэний");
            perfcont_Tab3lbl5.InnerHtml = gereeposname.Replace("Төсвийн шууд захирагч", "шууд захирагчийн").Replace("Газрын дарга", "газрын даргын").Replace("Хэлтсийн дарга", "хэлтсийн даргын").Replace("Мэргэжилтэн", "мэргэжилтэний");
            perfcont_Tab3lbl7.InnerHtml = fatherpos;
            if (fatherfname != "") perfcont_Tab3lbl8.InnerHtml = fatherfname.Substring(0, 4) + fatherfname.ToLower().Substring(4);
            else perfcont_Tab3lbl8.InnerHtml = fatherfname;
            perfcont_Tab3lbl9.InnerHtml = DateTime.Now.ToString("yyyy-MM-dd");
            perfcont_Tab3lbl10.InnerHtml = pos;
            perfcont_Tab3lbl11.InnerHtml = fname.Substring(0, 4) + fname.ToLower().Substring(4);
            perfcont_Tab3lbl12.InnerHtml = DateTime.Now.ToString("yyyy-MM-dd");
        }
    }
}