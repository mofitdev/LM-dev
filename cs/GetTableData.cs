using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Text.RegularExpressions;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using System.Globalization;

namespace LMWebApp.cs
{
    public class GetTableData
    {
        /// /////////////////////GUNDSAMBA
        public string DataTableToJson(DataTable dt) {
            List<Dictionary<string, string>> ListRows = new List<Dictionary<string, string>>();
            Dictionary<string, string> DicRow;
            if (dt.Rows.Count != 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    DicRow = new Dictionary<string, string>();
                    foreach (DataColumn col in dt.Columns)
                    {
                        DicRow.Add(col.ColumnName, dr[col].ToString());
                    }
                    ListRows.Add(DicRow);
                }
            }
            return (new JavaScriptSerializer().Serialize(ListRows));
        }
        public void exeptionMethod(Exception ex) {
            HttpContext.Current.Session["errorMessage"] = ex.Message;
            HttpContext.Current.Session["errorStackTrace"] = ex.StackTrace;
            HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
        }
        public DataSet getUserInfo(string stid)

        {
            ModifyDB myObj = new ModifyDB();
            DataSet ds = null;
            try
            {
                ds = myObj.OracleExecuteDataSet("SELECT COUNT(1) FROM hrdbuser.ST_BRANCH WHERE FATHER_ID = ( SELECT c.FATHER_ID FROM hrdbuser.ST_STAFFS a INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE=1 INNER JOIN hrdbuser.ST_BRANCH c ON b.BRANCH_ID=c.ID AND c.ISACTIVE=1 WHERE a.ID="+stid+" ) AND ID != ( SELECT c.FATHER_ID FROM hrdbuser.ST_STAFFS a INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE=1 INNER JOIN hrdbuser.ST_BRANCH c ON b.BRANCH_ID=c.ID AND c.ISACTIVE=1 WHERE a.ID="+stid+")");
                if (ds.Tables[0].Rows[0][0].ToString() == "0") ds = myObj.OracleExecuteDataSet(@"SELECT a.ID as STID
  , SUBSTR(a.LNAME,0,1)||'.'||SUBSTR(a.FNAME,1,1)||LOWER(SUBSTR(a.FNAME,2)) as STNAMEINIT
  , c.ID as HELTESID
  , c.INITNAME as HELTESNAMEINIT
  , c.NAME as HELTESNAME
  , d.ID as GAZARID
  , d.INITNAME as GAZARNAMEINIT
  , d.NAME as GAZARNAME
  , b.POS_ID as POSID
  , f.NAME as POSNAME
  , g.NAME as POSTYPE
  , h.GAZARBOSSID as HELTESBOSSID
  , h.GAZARBOSSNAMEINIT as HELTESBOSSNAMEINIT
  , h.GAZARBOSSID
  , h.GAZARBOSSNAMEINIT
  , (SELECT a.ID FROM hrdbuser.ST_STAFFS a INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE=1 AND b.POS_ID=10205 INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID=c.ID AND c.ACTIVE=1) as TNBDID
  , (SELECT SUBSTR(a.LNAME,0,1)||'.'||SUBSTR(a.FNAME,1,1)||LOWER(SUBSTR(a.FNAME,2)) FROM hrdbuser.ST_STAFFS a INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE=1 AND b.POS_ID=10205 INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID=c.ID AND c.ACTIVE=1) as TNBDNAME 
  , n.ROLELISTID
FROM (
  SELECT USER_ID as STAFFS_ID, RTRIM(xmlagg (xmlelement (e, ROLE_ID || ',')).extract('//text()'), ',') as ROLELISTID FROM TBL_USER_ROLE WHERE USER_ID=" + stid + @" GROUP BY USER_ID
) n
INNER JOIN hrdbuser.ST_STAFFS a ON n.STAFFS_ID=a.ID
INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE=1 
INNER JOIN hrdbuser.ST_BRANCH c ON b.BRANCH_ID=c.ID AND c.ISACTIVE=1 
INNER JOIN hrdbuser.ST_BRANCH d ON c.FATHER_ID=d.ID AND d.ISACTIVE=1 
LEFT JOIN hrdbuser.STN_POS f ON b.POS_ID=f.ID 
LEFT JOIN hrdbuser.ST_RANK g ON b.RANK_ID=g.ID 
LEFT JOIN (
  SELECT 
    b.STAFFS_ID
    , m.ID as GAZARBOSSID
    , SUBSTR(m.LNAME, 0, 1) || '.' || SUBSTR(m.FNAME, 1, 1) || LOWER(SUBSTR(m.FNAME, 2)) as GAZARBOSSNAMEINIT
  FROM hrdbuser.ST_STBR b
  INNER JOIN hrdbuser.ST_BRANCH c ON b.BRANCH_ID = c.ID AND c.ISACTIVE = 1
  INNER JOIN hrdbuser.ST_BRANCH d ON c.FATHER_ID = d.ID AND d.ISACTIVE = 1
  LEFT JOIN hrdbuser.ST_STBR k ON d.ID = k.BRANCH_ID AND k.ISACTIVE = 1 AND k.POS_ID = 2010201
  INNER JOIN hrdbuser.STN_MOVE l ON k.MOVE_ID = l.ID AND l.ACTIVE = 1
  LEFT JOIN hrdbuser.ST_STAFFS m ON k.STAFFS_ID = m.ID
  WHERE b.STAFFS_ID=" + stid + @" AND b.ISACTIVE=1
) h ON n.STAFFS_ID=h.STAFFS_ID");
                else

                    ds = myObj.OracleExecuteDataSet(@"SELECT a.ID as STID
  , SUBSTR(a.LNAME, 0, 1) || '.' || SUBSTR(a.FNAME, 1, 1) || LOWER(SUBSTR(a.FNAME, 2)) as STNAMEINIT
  , c.ID as HELTESID
  , c.INITNAME as HELTESNAMEINIT
  , c.NAME as HELTESNAME
  , d.ID as GAZARID
  , d.INITNAME as GAZARNAMEINIT
  , d.NAME as GAZARNAME
  , b.POS_ID as POSID
  , f.NAME as POSNAME
  , g.NAME as POSTYPE
  , h.HELTESBOSSID
  , h.HELTESBOSSNAMEINIT
  , i.GAZARBOSSID
  , i.GAZARBOSSNAMEINIT
  , n.ROLELISTID
FROM(
  SELECT USER_ID as STAFFS_ID, RTRIM(xmlagg(xmlelement(e, ROLE_ID || ',')).extract('//text()'), ',') as ROLELISTID FROM TBL_USER_ROLE WHERE USER_ID = " + stid + @" GROUP BY USER_ID
) n
INNER JOIN hrdbuser.ST_STAFFS a ON n.STAFFS_ID = a.ID
INNER JOIN hrdbuser.ST_STBR b ON a.ID = b.STAFFS_ID AND b.ISACTIVE = 1
INNER JOIN hrdbuser.ST_BRANCH c ON b.BRANCH_ID = c.ID AND c.ISACTIVE = 1
INNER JOIN hrdbuser.ST_BRANCH d ON c.FATHER_ID = d.ID AND d.ISACTIVE = 1
LEFT JOIN hrdbuser.STN_POS f ON b.POS_ID = f.ID
LEFT JOIN hrdbuser.ST_RANK g ON b.RANK_ID = g.ID
LEFT JOIN (
  SELECT 
    b.STAFFS_ID
    , i.ID as HELTESBOSSID
    , SUBSTR(j.LNAME, 0, 1) || '.' || SUBSTR(j.FNAME, 1, 1) || LOWER(SUBSTR(j.FNAME, 2)) as HELTESBOSSNAMEINIT
  FROM hrdbuser.ST_STBR b
  INNER JOIN hrdbuser.ST_BRANCH c ON b.BRANCH_ID = c.ID AND c.ISACTIVE = 1
  INNER JOIN hrdbuser.ST_BRANCH d ON c.FATHER_ID = d.ID AND d.ISACTIVE = 1
  INNER JOIN hrdbuser.ST_STBR h ON c.ID = h.BRANCH_ID AND h.ISACTIVE = 1 AND h.POS_ID = 2010301
  INNER JOIN hrdbuser.STN_MOVE i ON h.MOVE_ID = i.ID AND i.ACTIVE = 1
  INNER JOIN hrdbuser.ST_STAFFS j ON h.STAFFS_ID = j.ID
  WHERE b.STAFFS_ID=" + stid + @" AND b.ISACTIVE=1
) h ON n.STAFFS_ID=h.STAFFS_ID
LEFT JOIN (
  SELECT 
    b.STAFFS_ID
    , m.ID as GAZARBOSSID
    , SUBSTR(m.LNAME, 0, 1) || '.' || SUBSTR(m.FNAME, 1, 1) || LOWER(SUBSTR(m.FNAME, 2)) as GAZARBOSSNAMEINIT
  FROM hrdbuser.ST_STBR b
  INNER JOIN hrdbuser.ST_BRANCH c ON b.BRANCH_ID = c.ID AND c.ISACTIVE = 1
  INNER JOIN hrdbuser.ST_BRANCH d ON c.FATHER_ID = d.ID AND d.ISACTIVE = 1
  LEFT JOIN hrdbuser.ST_STBR k ON d.ID = k.BRANCH_ID AND k.ISACTIVE = 1 AND k.POS_ID = 2010201
  INNER JOIN hrdbuser.STN_MOVE l ON k.MOVE_ID = l.ID AND l.ACTIVE = 1
  LEFT JOIN hrdbuser.ST_STAFFS m ON k.STAFFS_ID = m.ID
  WHERE b.STAFFS_ID="+ stid + @" AND b.ISACTIVE=1
) i ON n.STAFFS_ID=i.STAFFS_ID");
                
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace; 
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            return ds;
        }
        public DataSet getCurrentInfo() {
            ModifyDB myObj = new ModifyDB();
            DataSet ds = null;
            try
            {
                ds = myObj.OracleExecuteDataSet("SELECT YR as YEAR, YR_H as YEARHALF, QRTR as QUARTER, MONTH FROM TBL_SYSSET WHERE ACTIVE=1");
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            return ds;
        }
        public string getGazarListForDDL(string yr)
        {
            ModifyDB myObj = new ModifyDB();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "";
                DataSet ds = myObj.OracleExecuteDataSet("SELECT BR_ID, DOMAIN_ORG, BR_NAME FROM TBL_BRANCH WHERE BR_TYPE1 IN (1,3) AND BR_ID!=2499 AND YR=" + yr + " ORDER BY SORT");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        strTableVal += "<option value=\"" + dr["BR_ID"].ToString() + "\" title=\"" + dr["BR_NAME"].ToString() + "\">" + dr["DOMAIN_ORG"].ToString() + "</option>";
                    }
                }
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string getGazarListForSelect2(string yr, string selectedList)
        {
            ModifyDB myObj = new ModifyDB();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                if (selectedList == "none") selectedList = "";
                string strTableVal = "";
                DataSet ds = myObj.OracleExecuteDataSet("SELECT a.BR_ID, a.DOMAIN_ORG, a.BR_NAME, NVL2(b.BR_ID,' selected=\"selected\"',null) as ISSELECTED FROM ( SELECT BR_ID, DOMAIN_ORG, BR_NAME, SORT FROM TBL_BRANCH WHERE BR_TYPE1 IN (1,3) AND BR_ID!=2499 AND YR=" + yr + " ) a LEFT JOIN ( SELECT TO_NUMBER(BR_ID) as BR_ID FROM ( select regexp_substr('" + selectedList + "','[^,]+', 1, level) AS BR_ID from dual connect by regexp_substr('" + selectedList + "', '[^,]+', 1, level) is not null ) a ) b ON a.BR_ID=b.BR_ID ORDER BY a.SORT ");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        strTableVal += "<option" + dr["ISSELECTED"].ToString() + " value=\"" + dr["BR_ID"].ToString() + "\">" + dr["DOMAIN_ORG"].ToString() + "</option>";
                    }
                }
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string getHeltesListForDDL(string yr, string gazar)
        {
            ModifyDB myObj = new ModifyDB();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "", strQry = "";
                if ("0" != myObj.OracleExecuteScalar("SELECT COUNT(1) FROM TBL_BRANCH WHERE BR_TYPE1 IN (1,2) AND BR_MAIN_ID1=" + gazar + " AND YR=" + yr).ToString())
                    strQry = "SELECT BR_ID, DOMAIN_ORG, BR_NAME FROM TBL_BRANCH WHERE BR_TYPE1 IN (1,2) AND BR_MAIN_ID1=" + gazar + " AND YR=" + yr;
                else
                    strQry = "SELECT BR_ID, DOMAIN_ORG, BR_NAME FROM TBL_BRANCH WHERE BR_TYPE1 IN (1,3) AND BR_MAIN_ID1=" + gazar + " AND YR=" + yr;
                DataSet ds = myObj.OracleExecuteDataSet(strQry);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        strTableVal += "<option value=\"" + dr["BR_ID"].ToString() + "\" title=\"" + dr["BR_NAME"].ToString() + "\">" + dr["DOMAIN_ORG"].ToString() + "</option>";
                    }
                }
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string getStaffListForDDL(string yr, string gazar, string heltes)
        {
            ModifyDB myObj = new ModifyDB();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "", stroptgroup = "", strQry = "";
                if (heltes == "")
                    strQry = "SELECT a.ID as ST_ID, SUBSTR(a.LNAME,0,1)||'.'||SUBSTR(a.FNAME,0,1)||LOWER(SUBSTR(a.FNAME,2)) as ST_NAME, d.NAME as POS_NAME, f.ID as BR_ID, CASE WHEN f.ID=f.FATHER_ID THEN f.INITNAME ELSE g.INITNAME||'-'||f.INITNAME END as DOMAIN_ORG FROM hrdbuser.ST_STAFFS a INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE=1 INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID=c.ID AND c.ACTIVE=1 LEFT JOIN hrdbuser.STN_POS d ON b.POS_ID=d.ID INNER JOIN hrdbuser.ST_BRANCH f ON b.BRANCH_ID=f.ID AND f.ISACTIVE=1 INNER JOIN hrdbuser.ST_BRANCH g ON f.FATHER_ID=g.ID AND g.ISACTIVE=1 WHERE f.FATHER_ID="+gazar+" ORDER BY g.SORT, f.SORT, d.SORT";
                else
                    strQry = @"SELECT h.ST_ID, SUBSTR(a.LNAME,0,1)||'.'||SUBSTR(a.FNAME,0,1)||LOWER(SUBSTR(a.FNAME,2)) as ST_NAME, d.NAME as POS_NAME, f.ID as BR_ID, CASE WHEN f.ID=f.FATHER_ID THEN f.INITNAME ELSE g.INITNAME||'-'||f.INITNAME END as DOMAIN_ORG 
FROM(
  SELECT ST_ID
  FROM(
    SELECT a.ID as ST_ID
    FROM hrdbuser.ST_STAFFS a
    INNER JOIN hrdbuser.ST_STBR b ON a.ID = b.STAFFS_ID AND b.ISACTIVE = 1
    INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID = c.ID AND c.ACTIVE = 1
    INNER JOIN hrdbuser.ST_BRANCH f ON b.BRANCH_ID = f.ID AND f.ISACTIVE = 1
    WHERE f.FATHER_ID = (SELECT FATHER_ID FROM hrdbuser.ST_BRANCH WHERE ID = " + heltes + @" AND ISACTIVE = 1) AND b.POS_ID = 2010201
    UNION ALL
    SELECT a.ID as ST_ID
    FROM hrdbuser.ST_STAFFS a
    INNER JOIN hrdbuser.ST_STBR b ON a.ID = b.STAFFS_ID AND b.ISACTIVE = 1
    INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID = c.ID AND c.ACTIVE = 1
    INNER JOIN hrdbuser.ST_BRANCH f ON b.BRANCH_ID = f.ID AND f.ISACTIVE = 1
    WHERE f.ID = "+heltes+@"
  )
  GROUP BY ST_ID
) h
INNER JOIN hrdbuser.ST_STAFFS a ON h.ST_ID = a.ID
INNER JOIN hrdbuser.ST_STBR b ON a.ID = b.STAFFS_ID AND b.ISACTIVE = 1
INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID = c.ID AND c.ACTIVE = 1
LEFT JOIN hrdbuser.STN_POS d ON b.POS_ID = d.ID
INNER JOIN hrdbuser.ST_BRANCH f ON b.BRANCH_ID = f.ID AND f.ISACTIVE = 1
INNER JOIN hrdbuser.ST_BRANCH g ON f.FATHER_ID = g.ID AND g.ISACTIVE = 1
ORDER BY g.SORT, f.SORT, d.SORT";
                DataSet ds = myObj.OracleExecuteDataSet(strQry);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        if (stroptgroup != dr["BR_ID"].ToString())
                        {
                            if (stroptgroup != "") strTableVal += "</optgroup>";
                            strTableVal += "<optgroup label=\"" + dr["DOMAIN_ORG"].ToString() + "\">";
                        }
                        strTableVal += "<option value=\"" + dr["ST_ID"].ToString() + "\" title=\"" + dr["ST_NAME"].ToString() + " | " + dr["POS_NAME"].ToString() + "\">" + dr["ST_NAME"].ToString() + "</option>";
                        stroptgroup = dr["BR_ID"].ToString();
                    }
                }
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string getNegjListForDDL(string yr)
        {
            ModifyDB myObj = new ModifyDB();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "", strQry = "", stroptgroup = "";
                DataSet ds = myObj.OracleExecuteDataSet("SELECT a.BR_MAIN_ID1 as GAZAR_ID, a.BR_ID as HELTES_ID, b.DOMAIN_ORG as GAZAR_NAME, a.DOMAIN_ORG as HELTES_NAMEINIT, a.BR_NAME as HELTES_NAME, CASE WHEN c.CNT>0 THEN 1 ELSE 0 END as ISCHILD FROM TBL_BRANCH a INNER JOIN TBL_BRANCH b ON a.BR_MAIN_ID1=b.BR_ID AND b.YR=" + yr + " LEFT JOIN ( SELECT a.BR_MAIN_ID1 as GAZARID, b.DOMAIN_ORG, COUNT(a.BR_ID)-1 as CNT FROM TBL_BRANCH a INNER JOIN TBL_BRANCH b ON a.BR_MAIN_ID1=b.BR_ID AND b.YR=" + yr + " WHERE a.YR=" + yr + " AND a.BR_TYPE1 IN (1,2,3) GROUP BY a.BR_MAIN_ID1, b.DOMAIN_ORG ) c ON a.BR_ID=c.GAZARID WHERE a.YR=" + yr + " AND a.BR_TYPE1 IN (1,2,3) ORDER BY b.SORT, a.SORT");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        if (stroptgroup != dr["GAZAR_ID"].ToString())
                        {
                            if (stroptgroup != "") strTableVal += "</optgroup>";
                            strTableVal += "<optgroup label=\"" + dr["GAZAR_NAME"].ToString() + "\">";
                        }
                        strTableVal += "<option value=\"" + dr["HELTES_ID"].ToString() + "\" title=\"" + dr["HELTES_NAME"].ToString() + "\">" + dr["HELTES_NAMEINIT"].ToString() + "</option>";
                        stroptgroup = dr["GAZAR_ID"].ToString();
                    }
                }
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string getNegjListForSelect2(string yr, string selectedList)
        {
            ModifyDB myObj = new ModifyDB();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "", stroptgroup = "";
                DataSet ds = myObj.OracleExecuteDataSet("SELECT a.BR_MAIN_ID1 as GAZAR_ID, a.BR_ID as HELTES_ID, b.DOMAIN_ORG as GAZAR_NAME, a.DOMAIN_ORG as HELTES_NAMEINIT, a.BR_NAME as HELTES_NAME, CASE WHEN c.CNT>0 THEN 1 ELSE 0 END as ISCHILD, NVL2(d.BR_ID,' selected=\"selected\"',null) as ISSELECTED FROM TBL_BRANCH a INNER JOIN TBL_BRANCH b ON a.BR_MAIN_ID1=b.BR_ID AND b.YR=" + yr + " LEFT JOIN ( SELECT a.BR_MAIN_ID1 as GAZARID, b.DOMAIN_ORG, COUNT(a.BR_ID)-1 as CNT FROM TBL_BRANCH a INNER JOIN TBL_BRANCH b ON a.BR_MAIN_ID1=b.BR_ID AND b.YR=" + yr + " WHERE a.YR=" + yr + " AND a.BR_TYPE1 IN (1,2,3) GROUP BY a.BR_MAIN_ID1, b.DOMAIN_ORG ) c ON a.BR_ID=c.GAZARID LEFT JOIN ( SELECT TO_NUMBER(BR_ID) as BR_ID FROM ( select regexp_substr('" + selectedList + "','[^,]+', 1, level) AS BR_ID from dual connect by regexp_substr('" + selectedList + "', '[^,]+', 1, level) is not null ) a ) d ON a.BR_ID=d.BR_ID WHERE a.YR=" + yr + " AND a.BR_TYPE1 IN (1,2,3) ORDER BY b.SORT, a.SORT");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        if (stroptgroup != dr["GAZAR_ID"].ToString())
                        {
                            if (stroptgroup != "") strTableVal += "</optgroup>";
                            strTableVal += "<optgroup label=\"" + dr["GAZAR_NAME"].ToString() + "\">";
                        }
                        strTableVal += "<option" + dr["ISSELECTED"].ToString() + " value=\"" + dr["HELTES_ID"].ToString() + "\" title=\"" + dr["HELTES_NAME"].ToString() + "\">" + dr["HELTES_NAMEINIT"].ToString() + "</option>";
                        stroptgroup = dr["GAZAR_ID"].ToString();
                    }
                }
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string getReplaceDatabaseToDisplay(string val)
        {
            try
            {
                ModifyDB myObj = new ModifyDB();
                return val.Replace("lt;", "<").Replace("gt;", ">").Replace("quot;", "\"").Replace("apos;", "'").Replace("amp;", "&").Replace("bsol;", "\\").Replace("none", "");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool UserCheckRoles(string userid, string roleids)
        {
            try
            {
                ModifyDB myObj = new ModifyDB();
                if ("0" == myObj.OracleExecuteScalar("SELECT COUNT(1) FROM TBL_USER_ROLE WHERE USER_ID=" + userid + " AND ROLE_ID IN (" + roleids + ")").ToString()) return false;
                else return true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public string getMnthToQrtr(string mnth)
        {
            string rtrnVal = "";
            if (mnth == "1") rtrnVal = "1";
            else if (mnth == "2") rtrnVal = "1";
            else if (mnth == "3") rtrnVal = "1";
            else if (mnth == "4") rtrnVal = "2";
            else if (mnth == "5") rtrnVal = "2";
            else if (mnth == "6") rtrnVal = "2";
            else if (mnth == "7") rtrnVal = "3";
            else if (mnth == "8") rtrnVal = "3";
            else if (mnth == "9") rtrnVal = "3";
            else if (mnth == "10") rtrnVal = "4";
            else if (mnth == "11") rtrnVal = "4";
            else if (mnth == "12") rtrnVal = "4";
            return rtrnVal;
        }
        
        public bool checkUserSession() {
            if (HttpContext.Current.Session["LM_UserID"] != null) return true;
            else return false;
        }
        public string NumberToChar(string number)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string rVal = "";
                if (number.Length == 1) return number.Replace("1", "Нэг").Replace("2", "Хоёр").Replace("3", "Гурав").Replace("4", "Дөрөв").Replace("5", "Тав").Replace("6", "Зургаа").Replace("7", "Долоо").Replace("8", "Найм").Replace("9", "Ес");
                else
                {
                    if (number[1] == '0')
                    {
                        switch (number[0])
                        {
                            case '1': rVal = "Арав"; break;
                            case '2': rVal = "Хорь"; break;
                            case '3': rVal = "Гуч"; break;
                            case '4': rVal = "Дөч"; break;
                            case '5': rVal = "Тавь"; break;
                            case '6': rVal = "Жар"; break;
                            case '7': rVal = "Дал"; break;
                            case '8': rVal = "Ная"; break;
                            case '9': rVal = "Ер"; break;
                        }
                    }
                    else
                    {
                        switch (number[0])
                        {
                            case '1': rVal = "Арван"; break;
                            case '2': rVal = "Хорин"; break;
                            case '3': rVal = "Гучин"; break;
                            case '4': rVal = "Дөчин"; break;
                            case '5': rVal = "Тавин"; break;
                            case '6': rVal = "Жаран"; break;
                            case '7': rVal = "Далан"; break;
                            case '8': rVal = "Наян"; break;
                            case '9': rVal = "Ерөн"; break;
                        }
                        switch (number[1])
                        {
                            case '1': rVal += " нэг"; break;
                            case '2': rVal += " хоёр"; break;
                            case '3': rVal += " гурав"; break;
                            case '4': rVal += " дөрөв"; break;
                            case '5': rVal += " тав"; break;
                            case '6': rVal += " зургаа"; break;
                            case '7': rVal += " долоо"; break;
                            case '8': rVal += " найм"; break;
                            case '9': rVal += " ес"; break;
                        }
                    }
                    return rVal;
                }
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        ////funccri////
        public string funccriTab1Datatable(string yr, string brid)
        {
            ModifyDB myObj = new ModifyDB();
             GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "";
                if (brid == "0") brid = "";
                else brid = " AND a.BR_ID=" + brid;
                string straddedit = "0";
                if (UserCheckRoles(HttpContext.Current.Session["LM_UserID"].ToString(), "1,25")) straddedit = "1";
                strTableVal = "<table id=\"funccriTab1Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                strTableVal += "<tr>";
                strTableVal += "<th class=\"hide\"></th>";
                strTableVal += "<th>Суурь үзүүлэлт</th>";
                strTableVal += "<th>Газрын нэр</th>";
                strTableVal += "<th class=\"hide\">Газрын код</th>";
                strTableVal += "<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>";
                strTableVal += "</tr></thead><tbody>";

                OracleDataReader rdr = myObj.OracleExecuteReader("SELECT a.ID, a.BR_ID, b.DOMAIN_ORG, a.NO, a.NAME FROM TBL_FUNCCRI_SUURI a INNER JOIN TBL_BRANCH b ON a.BR_ID=b.BR_ID AND b.YR=" + yr + " WHERE a.YR=" + yr + brid + " ORDER BY a.NO");
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        strTableVal += "<tr>";
                        strTableVal += "<td class=\"hide\">" + rdr[0].ToString() + "</td>";
                        strTableVal += "<td>" + rdr[3].ToString() + ". " + getReplaceDatabaseToDisplay(rdr[4].ToString()) + "</td>";
                        strTableVal += "<td>" + rdr[2].ToString() + "</td>";
                        strTableVal += "<td class=\"hide\">" + rdr[1].ToString() + "</td>";
                        strTableVal += "<td>";
                        if (straddedit == "1") strTableVal += "<a style=\"cursor:pointer; margin-right:8px;\" onclick=\"showEditFunccriTab1Modal(this);\" data-target=\"#funccriTab1Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></a><a style=\"cursor:pointer;\" onclick=\"showDeleteFunccriTab1Modal(this);\"><i class=\"fa fa-trash-o\"></i></a>";
                        strTableVal += "</td>";
                        strTableVal += "</tr>";
                    }
                }
                rdr.Close();
                myObj.DBDisconnect();
                strTableVal += "</tbody>";
                strTableVal += "</table>";
                strTableVal += "<script>";
                strTableVal += "var responsiveHelper_funccriTab1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#funccriTab1Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_funccriTab1Datatable) {responsiveHelper_funccriTab1Datatable = new ResponsiveDatatablesHelper($('#funccriTab1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_funccriTab1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_funccriTab1Datatable.respond();}});</script>";
                //strTableVal += "loadfunccriTab1DataTable();function loadfunccriTab1DataTable() {loadScript(\"js/plugin/datatables/jquery.dataTables-cust.min.js\", dt_2);function dt_2() { loadScript(\"js/plugin/datatables/ColReorder.min.js\", dt_3); }function dt_3() { loadScript(\"js/plugin/datatables/FixedColumns.min.js\", dt_4); }function dt_4() { loadScript(\"js/plugin/datatables/ColVis.min.js\", dt_5); }function dt_5() { loadScript(\"js/plugin/datatables/ZeroClipboard.js\", dt_6); }function dt_6() { loadScript(\"js/plugin/datatables/media/js/TableTools.min.js\", dt_7); }function dt_7() { loadScript(\"js/plugin/datatables/DT_bootstrap.js\", runfunccriTab1DataTable); }}function runfunccriTab1DataTable() {$('#funccriTab1Datatable').dataTable({\"iDisplayLength\" : 100, \"sPaginationType\": \"bootstrap_full\",\"oLanguage\": {\"sLengthMenu\": \"_MENU_ \",\"sInfo\": \"* Нийт _TOTAL_ бодлого (_START_ - _END_)\",\"sInfoEmpty\": \"\",\"oPaginate\": {\"sFirst\": \"Эхэнд\",\"sPrevious\": \"Өмнөх\",\"sNext\": \"Дараах\",\"sLast\": \"Сүүл\"}}});}";
                strTableVal += "</script>";
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string funccriTab2Datatable(string yr, string brid)
        {
            ModifyDB myObj = new ModifyDB();
             GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "";
                if (brid == "0") brid = "";
                else brid = " AND b.BR_ID=" + brid;
                string straddedit = "0";
                if (UserCheckRoles(HttpContext.Current.Session["LM_UserID"].ToString(), "1,25")) straddedit = "1";
                strTableVal = "<table id=\"funccriTab2Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                strTableVal += "<tr>";
                strTableVal += "<th class=\"hide\"></th>";
                strTableVal += "<th>Газар</th>";
                strTableVal += "<th class=\"hide\">Суурь үзүүлэлт код</th>";
                strTableVal += "<th>Суурь үзүүлэлт</th>";
                strTableVal += "<th>Гүйцэтгэлийн үзүүлэлт</th>";
                strTableVal += "<th>Тайлбар</th>";
                strTableVal += "<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>";
                strTableVal += "</tr></thead><tbody>";

                OracleDataReader rdr = myObj.OracleExecuteReader("SELECT a.ID as FUNCCRI_G_ID, c.SORT, c.BR_NAME, b.ID as FUNCCRU_SUURI_ID, b.NO as FUNCCRU_SUURI_NO, b.NAME as FUNCCRU_SUURI_NAME, a.NO, a.NAME, a.DESCRIPTION  FROM TBL_FUNCCRI_GUITSETGEL a INNER JOIN TBL_FUNCCRI_SUURI b ON a.FUNCCRI_SUURI_ID=b.ID INNER JOIN TBL_BRANCH c ON b.BR_ID=c.BR_ID AND c.YR=" + yr + " WHERE b.YR=" + yr + brid + " ORDER BY c.SORT, b.NO, a.NO");
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        strTableVal += "<tr>";
                        strTableVal += "<td class=\"hide\">" + rdr[0].ToString() + "</td>";
                        strTableVal += "<td>" + rdr[2].ToString() + "</td>";
                        strTableVal += "<td class=\"hide\">" + rdr[3].ToString() + "</td>";
                        strTableVal += "<td>" + rdr[4].ToString() + ". " + getReplaceDatabaseToDisplay(rdr[5].ToString()) + "</td>";
                        strTableVal += "<td>" + rdr[6].ToString() + ". " + getReplaceDatabaseToDisplay(rdr[7].ToString()) + "</td>";
                        strTableVal += "<td>" + getReplaceDatabaseToDisplay(rdr[8].ToString()) + "</td>";
                        strTableVal += "<td>";
                        if (straddedit == "1") strTableVal += "<a style=\"cursor:pointer; margin-right:8px;\" onclick=\"showEditFunccriTab2Modal(this);\" data-target=\"#funccriTab2Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></a><a style=\"cursor:pointer;\" onclick=\"showDeleteFunccriTab2Modal(this);\"><i class=\"fa fa-trash-o\"></i></a>";
                        strTableVal += "</td>";
                        strTableVal += "</tr>";
                    }
                }
                rdr.Close();
                myObj.DBDisconnect();
                strTableVal += "</tbody>";
                strTableVal += "</table>";
                strTableVal += "<script>";
                strTableVal += "var responsiveHelper_funccriTab2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#funccriTab2Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_funccriTab2Datatable) {responsiveHelper_funccriTab2Datatable = new ResponsiveDatatablesHelper($('#funccriTab2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_funccriTab2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_funccriTab2Datatable.respond();}}).rowGrouping({iGroupingColumnIndex: 1,bExpandableGrouping: true,iGroupingColumnIndex2: 3,bExpandableGrouping2: true});</script>";
                //strTableVal += "loadfunccriTab2DataTable();function loadfunccriTab2DataTable() {loadScript(\"js/plugin/datatables/dataTables.nightly.js\", loadfunccriTab2DataTable1);function loadfunccriTab2DataTable1() {loadScript(\"js/plugin/datatables/jquery.dataTables.rowGrouping.js\", runfunccriTab2DataTable);}}function runfunccriTab2DataTable() {$('#funccriTab2Datatable').dataTable(({\"iDisplayLength\" : 100, \"bLengthChange\": true,\"bPaginate\": true,\"bSort\":false, \"oLanguage\": {\"sSearch\": \"\",\"sLengthMenu\": \"_MENU_ \",\"sInfo\": \"* Нийт _TOTAL_ арга хэмжээ (_START_ - _END_)\",\"sInfoEmpty\": \"\",\"oPaginate\": {\"sFirst\": \"Эхэнд\",\"sPrevious\": \"Өмнөх\",\"sNext\": \"Дараах\",\"sLast\": \"Сүүл\"}}})).rowGrouping({iGroupingColumnIndex: 1,bExpandableGrouping: true,iGroupingColumnIndex2: 3,bExpandableGrouping2: true});}";
                strTableVal += "</script>";
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string funccriTab3Datatable(string yr, string qrtr, string brid)
        {
            ModifyDB myObj = new ModifyDB();
             GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "";
                if (brid == "0") brid = "";
                else brid = " AND a.BR_ID=" + brid;
                string strImplIsDisabled = " disabled=\"disabled\"";
                string strEvalIsDisabled = " disabled=\"disabled\"";
                if (UserCheckRoles(HttpContext.Current.Session["LM_UserID"].ToString(), "1,25")) strEvalIsDisabled = "";
                if (UserCheckRoles(HttpContext.Current.Session["LM_UserID"].ToString(), "1,4")) strImplIsDisabled = "";
                strTableVal = "<table id=\"funccriTab3Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                strTableVal += "<tr>";
                strTableVal += "<th class=\"hide\"></th>";
                strTableVal += "<th>Газар</th>";
                strTableVal += "<th>Суурь үзүүлэлт</th>";
                strTableVal += "<th>Биелэлт</th>";
                strTableVal += "<th>&nbsp;</th>";
                strTableVal += "<th>Үнэлгээ</th>";
                strTableVal += "<th>Үнэлгээний тайлбар</th>";
                strTableVal += "</tr></thead><tbody>";

                OracleDataReader rdr = myObj.OracleExecuteReader("SELECT a.ID as FUNCCRI_SUURI_ID, b.BR_NAME, a.NO||'. '||a.NAME as FUNCCRI_SUURI_NAME, NVL2(c.IMPL,1,0) as ISIMPL, c.IMPL, c.IMPL1, c.IMPL2, c.IMPL3, c.IMPL4, c.IMPL5, NVL2(c.EVAL,1,0) as ISEVAL, NVL(c.EVAL,0) as EVAL, c.EVAL_DESCRIPTION FROM TBL_FUNCCRI_SUURI a INNER JOIN TBL_BRANCH b ON a.BR_ID=b.BR_ID AND b.YR=" + yr + " LEFT JOIN TBL_FUNCCRI_SUURI_IMPL c ON a.ID=c.FUNCCRI_SUURI_ID AND c.QRTR=" + qrtr + " WHERE a.YR=" + yr + brid + " ORDER BY b.SORT, a.NO");
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        strTableVal += "<tr>";
                        strTableVal += "<td class=\"hide\">" + rdr[0].ToString() + "</td>";
                        strTableVal += "<td>" + rdr[1].ToString() + "</td>";
                        strTableVal += "<td>" + rdr[2].ToString() + "</td>";
                        strTableVal += "<td>" + (rdr[4].ToString() + rdr[5].ToString() + rdr[6].ToString() + rdr[7].ToString() + rdr[8].ToString() + rdr[9].ToString()) + "</td>";
                        if (rdr[3].ToString() == "0")
                        {
                            strTableVal += "<td><img" + strImplIsDisabled + " src=\"../img/red-circle.png\" width=\"20\" data-target=\"#funccriTab3ImplModal\" data-toggle=\"modal\" style=\"cursor:pointer\" title=\"Биелэлт оруулах\" onclick=\"funccriTab3ImplEdit(this)\"/></td>";
                        }
                        else
                        {
                            strTableVal += "<td><img" + strImplIsDisabled + " src=\"../img/green-circle.png\" width=\"20\" data-target=\"#funccriTab3ImplModal\" data-toggle=\"modal\" style=\"cursor:pointer\" title=\"Биелэлт засах\" onclick=\"funccriTab3ImplEdit(this)\"/></td>";
                        }

                        if (rdr[11].ToString() == "0") strTableVal += "<td><select" + strEvalIsDisabled + " class=\"bg-color-blueLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding: 0px; width: 66px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else
                        {
                            if (rdr[1].ToString() == "0") strTableVal += "<td><select" + strEvalIsDisabled + " class=\"bg-color-red form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding: 0px; width: 66px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                            else if (rdr[11].ToString() == "10") strTableVal += "<td><select" + strEvalIsDisabled + " class=\"bg-color-red form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding: 0px; width: 66px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                            else if (rdr[11].ToString() == "30") strTableVal += "<td><select" + strEvalIsDisabled + " class=\"bg-color-red form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding: 0px; width: 66px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                            else if (rdr[11].ToString() == "50") strTableVal += "<td><select" + strEvalIsDisabled + " class=\"bg-color-orange form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding: 0px; width: 66px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                            else if (rdr[11].ToString() == "70") strTableVal += "<td><select" + strEvalIsDisabled + " class=\"bg-color-orange form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding: 0px; width: 66px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                            else if (rdr[11].ToString() == "80") strTableVal += "<td><select" + strEvalIsDisabled + " class=\"bg-color-greenLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding: 0px; width: 66px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                            else if (rdr[11].ToString() == "90") strTableVal += "<td><select" + strEvalIsDisabled + " class=\"bg-color-greenLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding: 0px; width: 66px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                            else if (rdr[11].ToString() == "100") strTableVal += "<td><select" + strEvalIsDisabled + " class=\"bg-color-greenLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding: 0px; width: 66px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">100 %</option></select></td>";
                        }

                        strTableVal += "<td><div class=\"input-icon-right\"><textarea " + strEvalIsDisabled + " class=\"eg-txta-eval-desc\" rows=\"1\">" + rdr[12].ToString() + "</textarea><i " + strEvalIsDisabled + " class=\"glyphicon glyphicon-floppy-disk hover-black\" title=\"Үнэлгээний тайлбар хадгалах\" onclick=\"saveEvalDesc(this)\"></i></div></td>";
                        strTableVal += "</tr>";
                    }
                }
                rdr.Close();
                myObj.DBDisconnect();
                strTableVal += "</tbody>";
                strTableVal += "</table>";
                strTableVal += "<script>";
                strTableVal += "var responsiveHelper_funccriTab3Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#funccriTab3Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_funccriTab3Datatable) {responsiveHelper_funccriTab3Datatable = new ResponsiveDatatablesHelper($('#funccriTab3Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_funccriTab3Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_funccriTab3Datatable.respond();}}).rowGrouping({iGroupingColumnIndex: 1,bExpandableGrouping: true});</script>";
                //strTableVal += "loadfunccriTab3DataTable();function loadfunccriTab3DataTable() {loadScript(\"js/plugin/datatables/dataTables.nightly.js\", loadfunccriTab3DataTable1);function loadfunccriTab3DataTable1() {loadScript(\"js/plugin/datatables/jquery.dataTables.rowGrouping.js\", runfunccriTab3DataTable);}}function runfunccriTab3DataTable() {$('#funccriTab3Datatable').dataTable(({\"iDisplayLength\" : 100, \"bLengthChange\": true,\"bPaginate\": true,\"bSort\":false, \"oLanguage\": {\"sSearch\": \"\",\"sLengthMenu\": \"_MENU_ \",\"sInfo\": \"* Нийт _TOTAL_ арга хэмжээ (_START_ - _END_)\",\"sInfoEmpty\": \"\",\"oPaginate\": {\"sFirst\": \"Эхэнд\",\"sPrevious\": \"Өмнөх\",\"sNext\": \"Дараах\",\"sLast\": \"Сүүл\"}}})).rowGrouping({iGroupingColumnIndex: 1,bExpandableGrouping: true});}";
                strTableVal += "</script>";
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string funccriTab4Datatable(string yr, string qrtr)
        {
            ModifyDB myObj = new ModifyDB();
             GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string percolor = "";
                int i = 0;
                double per = 0;
                string strTableVal = "";
                string qry = "";
                qry = "SELECT SORT, BR_ID, BR_NAME, ROUND(AVG(EVAL),1) as EVAL, ROUND(AVG(EVAL)*0.1,2) as PNT FROM ( SELECT c.SORT, b.BR_ID, c.BR_NAME, NVL(a.EVAL,0) as EVAL FROM TBL_FUNCCRI_SUURI_IMPL a INNER JOIN TBL_FUNCCRI_SUURI b ON a.FUNCCRI_SUURI_ID=b.ID INNER JOIN TBL_BRANCH c ON b.BR_ID=c.BR_ID AND c.YR=" + yr + " WHERE b.YR=" + yr + " AND a.QRTR=" + qrtr + " ) GROUP BY SORT, BR_ID, BR_NAME ORDER BY SORT";
                strTableVal += "<table id=\"funccriTab4Datatable\" style=\"border:1px solid #000; border-collapse:collapse; font-family:'Times New Roman'; font-size:12px; width:100%\"><thead><tr style=\"background-color:lightgray;\">";
                strTableVal += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Газрын нэр</th>";
                strTableVal += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хувь</th>";
                strTableVal += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Оноо</th>";
                strTableVal += "</tr></thead><tbody>";
                OracleDataReader rdr = myObj.OracleExecuteReader(qry);
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        if (Convert.ToDouble(rdr[3].ToString()) >= 0 && Convert.ToDouble(rdr[3].ToString()) <= 49) { percolor = "bg-color-red"; }
                        else if (Convert.ToDouble(rdr[3].ToString()) >= 50 && Convert.ToDouble(rdr[3].ToString()) <= 79) { percolor = "bg-color-orange"; }
                        else if (Convert.ToDouble(rdr[3].ToString()) >= 80 && Convert.ToDouble(rdr[3].ToString()) <= 100) { percolor = "bg-color-greenLight"; }
                        strTableVal += "<tr>";
                        strTableVal += "<td style=\"border: 1px solid #000; padding:5px;\">" + rdr[2].ToString() + "</td>";
                        strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\"><span class=\"badge " + percolor + "\">" + Math.Round(Convert.ToDouble(rdr[3].ToString()), 1).ToString() + "</span></td>";
                        strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + rdr[4].ToString() + "</td>";
                        strTableVal += "</tr>";

                        per += Convert.ToDouble(rdr[3].ToString());
                        i++;
                    }
                }
                rdr.Close();
                myObj.DBDisconnect();
                strTableVal += "</tbody>";
                strTableVal += "<tfoot>";
                strTableVal += "<tr style=\"background-color:lightgray;\">";
                strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">НИЙТ ДҮН</td>";
                strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + Math.Round(per / i, 1).ToString() + "</td>";
                strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">-</td>";
                strTableVal += "</tr>";
                strTableVal += "</tfoot>";
                strTableVal += "</table>";
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string funccriTab4Column(string yr, string qrtr)
        {
            ModifyDB myObj = new ModifyDB();
             GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string percolor = "";
                string strTableVal = "";
                string qry = "";
                qry = "SELECT SORT, BR_ID, BR_NAME, ROUND(AVG(EVAL),1) as EVAL, ROUND(AVG(EVAL)*0.1,2) as PNT FROM ( SELECT c.SORT, b.BR_ID, c.BR_NAME, NVL(a.EVAL,0) as EVAL FROM TBL_FUNCCRI_SUURI_IMPL a INNER JOIN TBL_FUNCCRI_SUURI b ON a.FUNCCRI_SUURI_ID=b.ID INNER JOIN TBL_BRANCH c ON b.BR_ID=c.BR_ID AND c.YR=" + yr + " WHERE b.YR=" + yr + " AND a.QRTR=" + qrtr + " ) GROUP BY SORT, BR_ID, BR_NAME ORDER BY SORT";
                strTableVal += "{\"cols\": [{ \"id\": \"\", \"label\": \"Газар\", \"pattern\": \"\", \"type\": \"string\" },{ \"id\": \"\", \"label\": \"Хувь\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"\", \"pattern\": \"\", \"type\": \"string\", \"role\": \"style\" },{ \"id\": \"\", \"label\": \"\", \"pattern\": \"\", \"type\": \"string\", \"role\": \"annotation\" }],\"rows\": [";
                OracleDataReader rdr = myObj.OracleExecuteReader(qry);
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        if (Convert.ToDouble(rdr[3].ToString()) >= 0 && Convert.ToDouble(rdr[3].ToString()) <= 49) { percolor = "bg-color-red"; }
                        else if (Convert.ToDouble(rdr[3].ToString()) >= 50 && Convert.ToDouble(rdr[3].ToString()) <= 79) { percolor = "bg-color-orange"; }
                        else if (Convert.ToDouble(rdr[3].ToString()) >= 80 && Convert.ToDouble(rdr[3].ToString()) <= 100) { percolor = "bg-color-greenLight"; }
                        strTableVal += "{ \"c\": [{ \"v\": \"" + rdr[2].ToString() + "\", \"f\": null }, { \"v\": " + Math.Round(Convert.ToDouble(rdr[3].ToString()), 1).ToString() + ", \"f\": null }, { \"v\": \"" + percolor + "\", \"f\": null }, { \"v\": \"" + Math.Round(Convert.ToDouble(rdr[3].ToString()), 1).ToString() + "\", \"f\": null }] },";
                    }
                }
                strTableVal = strTableVal.Remove(strTableVal.Length - 1);
                strTableVal += "]}";
                rdr.Close();
                myObj.DBDisconnect();
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string funccriTab2SuuriListForDDL(string yr)
        {
            ModifyDB myObj = new ModifyDB();
             GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "<option value=\"0\">- Суурь үзүүлэлт сонго -</option>";
                OracleDataReader rdr = myObj.OracleExecuteReader("SELECT ID, NO||'. '||NAME FROM TBL_FUNCCRI_SUURI WHERE YR=" + yr + " ORDER BY NO");
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        strTableVal += "<option value=\"" + rdr[0].ToString() + "\">" + rdr[1].ToString() + "</option>";
                    }
                }
                else
                {
                    strTableVal = "<option value=\"0\">Илэрц алга</option>";
                }
                rdr.Close();
                myObj.DBDisconnect();
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }      
        
        

        ////eafki////
        public string eafkiTab2t1s1(string yr)
        {
            ModifyDB myObj = new ModifyDB();
             GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "";
                strTableVal = "<table id=\"eafkiTab2t1s1Table\" class=\"table table-striped table-bordered eafkiTable\" style=\"font-size:12px;\"><thead>";
                strTableVal += "<tr>";
                strTableVal += "<th>Сар</th>";
                strTableVal += "<th>ДНБ /оны эхнээс,<br />тэр.төг, 2005 оны<br />цэргэцүүлэх үнээр/</th>";
                strTableVal += "<th>ДНБ /оны эхнээс,<br />тэр.төг/</th>";
                strTableVal += "<th>ДНБ-ний<br />өсөлт<br />/хувиар/</th>";
                strTableVal += "<th>ДНБ-ний<br />зорилтот өсөлт<br />/хувиар/</th>";
                strTableVal += "<th>&nbsp;</th>";
                strTableVal += "</tr></thead><tbody>";

                OracleDataReader rdr = myObj.OracleExecuteReader("SELECT a.MNTH, b.D1, b.D2, b.D3, b.D4 FROM ( SELECT LEVEL as MNTH FROM DUAL CONNECT BY LEVEL < 12 + 1 ) a LEFT JOIN ( SELECT MNTH, D1, D2, D3, D4  FROM TBL_EAFKI_MAIN WHERE TP='2t1s1' AND YR=" + yr + " ) b ON a.MNTH=b.MNTH ORDER BY a.MNTH");
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        strTableVal += "<tr>";
                        strTableVal += "<td>" + rdr[0].ToString() + "</td>";
                        if (rdr[1].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t1s1TableTdOnClick(this)\">" + rdr[1].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t1s1TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[1].ToString())) + "</td>";
                        if (rdr[2].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t1s1TableTdOnClick(this)\">" + rdr[2].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t1s1TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[2].ToString())) + "</td>";
                        if (rdr[3].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t1s1TableTdOnClick(this)\">" + rdr[3].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t1s1TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[3].ToString())) + "</td>";
                        if (rdr[4].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t1s1TableTdOnClick(this)\">" + rdr[4].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t1s1TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[4].ToString())) + "</td>";
                        strTableVal += "<td>";
                        strTableVal += "<a style=\"cursor:pointer; display:none;\" onclick=\"saveTab2t1s1(this);\"><i class=\"glyphicon glyphicon-floppy-disk\"></i></a>";
                        strTableVal += "</td>";
                        strTableVal += "</tr>";
                    }
                }
                rdr.Close();
                myObj.DBDisconnect();
                strTableVal += "</tbody>";
                strTableVal += "</table>";
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string eafkiTab2t1s2(string yr)
        {
            ModifyDB myObj = new ModifyDB();
             GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "";
                strTableVal = "<table id=\"eafkiTab2t1s2Table\" class=\"table table-striped table-bordered eafkiTable\" style=\"font-size:12px;\"><thead>";
                strTableVal += "<tr>";
                strTableVal += "<th>Сар</th>";
                strTableVal += "<th>Сарын инфляци,<br />/хувиар/</th>";
                strTableVal += "<th>Инфляци /хувиар,<br />оны эхнээс/</th>";
                strTableVal += "<th>Инфляци<br />/хувиар,<br />жилийн</th>";
                strTableVal += "<th>Зорилтот инфляцийн<br />түвшин /хувиар/</th>";
                strTableVal += "<th>&nbsp;</th>";
                strTableVal += "</tr></thead><tbody>";

                OracleDataReader rdr = myObj.OracleExecuteReader("SELECT a.MNTH, b.D1, b.D2, b.D3, b.D4 FROM ( SELECT LEVEL as MNTH FROM DUAL CONNECT BY LEVEL < 12 + 1 ) a LEFT JOIN ( SELECT MNTH, D1, D2, D3, D4  FROM TBL_EAFKI_MAIN WHERE TP='2t1s2' AND YR=" + yr + " ) b ON a.MNTH=b.MNTH ORDER BY a.MNTH");
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        strTableVal += "<tr>";
                        strTableVal += "<td>" + rdr[0].ToString() + "</td>";
                        if (rdr[1].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t1s2TableTdOnClick(this)\">" + rdr[1].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t1s2TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[1].ToString())) + "</td>";
                        if (rdr[2].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t1s2TableTdOnClick(this)\">" + rdr[2].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t1s2TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[2].ToString())) + "</td>";
                        if (rdr[3].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t1s2TableTdOnClick(this)\">" + rdr[3].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t1s2TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[3].ToString())) + "</td>";
                        if (rdr[4].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t1s2TableTdOnClick(this)\">" + rdr[4].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t1s2TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[4].ToString())) + "</td>";
                        strTableVal += "<td>";
                        strTableVal += "<a style=\"cursor:pointer; display:none;\" onclick=\"saveTab2t1s2(this);\"><i class=\"glyphicon glyphicon-floppy-disk\"></i></a>";
                        strTableVal += "</td>";
                        strTableVal += "</tr>";
                    }
                }
                rdr.Close();
                myObj.DBDisconnect();
                strTableVal += "</tbody>";
                strTableVal += "</table>";
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string eafkiTab2t1s3(string yr)
        {
            ModifyDB myObj = new ModifyDB();
             GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "";
                strTableVal = "<table id=\"eafkiTab2t1s3Table\" class=\"table table-striped table-bordered eafkiTable\" style=\"font-size:12px;\"><thead>";
                strTableVal += "<tr>";
                strTableVal += "<th>Сар</th>";
                strTableVal += "<th>Зэс (ам.доллар<br />/тонн)<br />- Дэлхийн банк</th>";
                strTableVal += "<th>Алт (ам.доллар<br />/унц) - КОМЕКС<br />/Дэлхийн банк</th>";
                strTableVal += "<th>Австрали нүүрс<br />(ам.доллар/тонн)<br />-Дэлхийн банк</th>";
                strTableVal += "<th>Монгол нүүрс<br />(юань.тонн) -<br />Ганцмод боомт</th>";
                strTableVal += "<th>&nbsp;</th>";
                strTableVal += "</tr></thead><tbody>";

                OracleDataReader rdr = myObj.OracleExecuteReader("SELECT a.MNTH, b.D1, b.D2, b.D3, b.D4 FROM ( SELECT LEVEL as MNTH FROM DUAL CONNECT BY LEVEL < 12 + 1 ) a LEFT JOIN ( SELECT MNTH, D1, D2, D3, D4  FROM TBL_EAFKI_MAIN WHERE TP='2t1s3' AND YR=" + yr + " ) b ON a.MNTH=b.MNTH ORDER BY a.MNTH");
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        strTableVal += "<tr>";
                        strTableVal += "<td>" + rdr[0].ToString() + "</td>";
                        if (rdr[1].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t1s3TableTdOnClick(this)\">" + rdr[1].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t1s3TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[1].ToString())) + "</td>";
                        if (rdr[2].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t1s3TableTdOnClick(this)\">" + rdr[2].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t1s3TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[2].ToString())) + "</td>";
                        if (rdr[3].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t1s3TableTdOnClick(this)\">" + rdr[3].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t1s3TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[3].ToString())) + "</td>";
                        if (rdr[4].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t1s3TableTdOnClick(this)\">" + rdr[4].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t1s3TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[4].ToString())) + "</td>";
                        strTableVal += "<td>";
                        strTableVal += "<a style=\"cursor:pointer; display:none;\" onclick=\"saveTab2t1s3(this);\"><i class=\"glyphicon glyphicon-floppy-disk\"></i></a>";
                        strTableVal += "</td>";
                        strTableVal += "</tr>";
                    }
                }
                rdr.Close();
                myObj.DBDisconnect();
                strTableVal += "</tbody>";
                strTableVal += "</table>";
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string eafkiTab2t2s1(string yr)
        {
            ModifyDB myObj = new ModifyDB();
             GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "";
                strTableVal = "<table id=\"eafkiTab2t2s1Table\" class=\"table table-striped table-bordered eafkiTable\" style=\"font-size:12px;\"><thead>";
                strTableVal += "<tr>";
                strTableVal += "<th>Сар</th>";
                strTableVal += "<th>Хугацаа /монгол/</th>";
                strTableVal += "<th>Хугацаа /англи/</th>";
                strTableVal += "<th>Бодлогын хүү</th>";
                strTableVal += "<th>&nbsp;</th>";
                strTableVal += "</tr></thead><tbody>";

                OracleDataReader rdr = myObj.OracleExecuteReader("SELECT a.MNTH, b.DESC_MN, b.DESC_EN, b.D1 FROM ( SELECT LEVEL as MNTH FROM DUAL CONNECT BY LEVEL < 12 + 1 ) a LEFT JOIN ( SELECT MNTH, DESC_MN, DESC_EN, D1  FROM TBL_EAFKI_MAIN WHERE TP='2t2s1' AND YR=" + yr + " ) b ON a.MNTH=b.MNTH ORDER BY a.MNTH");
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        strTableVal += "<tr>";
                        strTableVal += "<td>" + rdr[0].ToString() + "</td>";
                        strTableVal += "<td style=\"text-align:left;\" onclick=\"eafkiTab2t2s1TableTdOnClick(this)\">" + rdr[1].ToString() + "</td>";
                        strTableVal += "<td style=\"text-align:left;\" onclick=\"eafkiTab2t2s1TableTdOnClick(this)\">" + rdr[2].ToString() + "</td>";
                        if (rdr[3].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t2s1TableTdOnClick(this)\">" + rdr[3].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t2s1TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[3].ToString())) + "</td>";
                        strTableVal += "<td>";
                        strTableVal += "<a style=\"cursor:pointer; display:none;\" onclick=\"saveTab2t2s1(this);\"><i class=\"glyphicon glyphicon-floppy-disk\"></i></a>";
                        strTableVal += "</td>";
                        strTableVal += "</tr>";
                    }
                }
                rdr.Close();
                myObj.DBDisconnect();
                strTableVal += "</tbody>";
                strTableVal += "</table>";
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string eafkiTab2t2s2(string yr)
        {
            ModifyDB myObj = new ModifyDB();
             GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "";
                strTableVal = "<table id=\"eafkiTab2t2s2Table\" class=\"table table-striped table-bordered eafkiTable\" style=\"font-size:12px;\"><thead>";
                strTableVal += "<tr>";
                strTableVal += "<th>Сар</th>";
                strTableVal += "<th>Хугацаа /монгол/</th>";
                strTableVal += "<th>Хугацаа /англи/</th>";
                strTableVal += "<th>Нөөц</th>";
                strTableVal += "<th>&nbsp;</th>";
                strTableVal += "</tr></thead><tbody>";

                OracleDataReader rdr = myObj.OracleExecuteReader("SELECT a.MNTH, b.DESC_MN, b.DESC_EN, b.D1 FROM ( SELECT LEVEL as MNTH FROM DUAL CONNECT BY LEVEL < 12 + 1 ) a LEFT JOIN ( SELECT MNTH, DESC_MN, DESC_EN, D1  FROM TBL_EAFKI_MAIN WHERE TP='2t2s2' AND YR=" + yr + " ) b ON a.MNTH=b.MNTH ORDER BY a.MNTH");
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        strTableVal += "<tr>";
                        strTableVal += "<td>" + rdr[0].ToString() + "</td>";
                        strTableVal += "<td style=\"text-align:left;\" onclick=\"eafkiTab2t2s2TableTdOnClick(this)\">" + rdr[1].ToString() + "</td>";
                        strTableVal += "<td style=\"text-align:left;\" onclick=\"eafkiTab2t2s2TableTdOnClick(this)\">" + rdr[2].ToString() + "</td>";
                        if (rdr[3].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t2s2TableTdOnClick(this)\">" + rdr[3].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t2s2TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[3].ToString())) + "</td>";
                        strTableVal += "<td>";
                        strTableVal += "<a style=\"cursor:pointer; display:none;\" onclick=\"saveTab2t2s2(this);\"><i class=\"glyphicon glyphicon-floppy-disk\"></i></a>";
                        strTableVal += "</td>";
                        strTableVal += "</tr>";
                    }
                }
                rdr.Close();
                myObj.DBDisconnect();
                strTableVal += "</tbody>";
                strTableVal += "</table>";
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string eafkiTab2t2s3(string yr)
        {
            ModifyDB myObj = new ModifyDB();
             GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "";
                strTableVal = "<table id=\"eafkiTab2t2s3Table\" class=\"table table-striped table-bordered eafkiTable\" style=\"font-size:12px;\"><thead>";
                strTableVal += "<tr>";
                strTableVal += "<th>Сар</th>";
                strTableVal += "<th>Ам.доллар</th>";
                strTableVal += "<th>Евро</th>";
                strTableVal += "<th>Юань</th>";
                strTableVal += "<th>Рубль</th>";
                strTableVal += "<th>&nbsp;</th>";
                strTableVal += "</tr></thead><tbody>";

                OracleDataReader rdr = myObj.OracleExecuteReader("SELECT a.MNTH, b.D1, b.D2, b.D3, b.D4 FROM ( SELECT LEVEL as MNTH FROM DUAL CONNECT BY LEVEL < 12 + 1 ) a LEFT JOIN ( SELECT MNTH, D1, D2, D3, D4  FROM TBL_EAFKI_MAIN WHERE TP='2t2s3' AND YR=" + yr + " ) b ON a.MNTH=b.MNTH ORDER BY a.MNTH");
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        strTableVal += "<tr>";
                        strTableVal += "<td>" + rdr[0].ToString() + "</td>";
                        if (rdr[1].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t2s3TableTdOnClick(this)\">" + rdr[1].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t2s3TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[1].ToString())) + "</td>";
                        if (rdr[2].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t2s3TableTdOnClick(this)\">" + rdr[2].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t2s3TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[2].ToString())) + "</td>";
                        if (rdr[3].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t2s3TableTdOnClick(this)\">" + rdr[3].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t2s3TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[3].ToString())) + "</td>";
                        if (rdr[4].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t2s3TableTdOnClick(this)\">" + rdr[4].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t2s3TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[4].ToString())) + "</td>";
                        strTableVal += "<td>";
                        strTableVal += "<a style=\"cursor:pointer; display:none;\" onclick=\"saveTab2t2s3(this);\"><i class=\"glyphicon glyphicon-floppy-disk\"></i></a>";
                        strTableVal += "</td>";
                        strTableVal += "</tr>";
                    }
                }
                rdr.Close();
                myObj.DBDisconnect();
                strTableVal += "</tbody>";
                strTableVal += "</table>";
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string eafkiTab2t3s1(string yr)
        {
            ModifyDB myObj = new ModifyDB();
             GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "";
                strTableVal = "<table id=\"eafkiTab2t3s1Table\" class=\"table table-striped table-bordered eafkiTable\" style=\"font-size:12px;\"><thead>";
                strTableVal += "<tr>";
                strTableVal += "<th>Сар</th>";
                strTableVal += "<th>Орлого</th>";
                strTableVal += "<th>Зарлага</th>";
                strTableVal += "<th>Хөрөнгө оруулалт</th>";
                strTableVal += "<th>Тэнцэл</th>";
                strTableVal += "<th>&nbsp;</th>";
                strTableVal += "</tr></thead><tbody>";

                OracleDataReader rdr = myObj.OracleExecuteReader("SELECT a.MNTH, b.D1, b.D2, b.D3, b.D4 FROM ( SELECT LEVEL as MNTH FROM DUAL CONNECT BY LEVEL < 12 + 1 ) a LEFT JOIN ( SELECT MNTH, D1, D2, D3, D4  FROM TBL_EAFKI_MAIN WHERE TP='2t3s1' AND YR=" + yr + " ) b ON a.MNTH=b.MNTH ORDER BY a.MNTH");
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        strTableVal += "<tr>";
                        strTableVal += "<td>" + rdr[0].ToString() + "</td>";
                        if (rdr[1].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t3s1TableTdOnClick(this)\">" + rdr[1].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t3s1TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[1].ToString())) + "</td>";
                        if (rdr[2].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t3s1TableTdOnClick(this)\">" + rdr[2].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t3s1TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[2].ToString())) + "</td>";
                        if (rdr[3].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t3s1TableTdOnClick(this)\">" + rdr[3].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t3s1TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[3].ToString())) + "</td>";
                        if (rdr[4].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t3s1TableTdOnClick(this)\">" + rdr[4].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t3s1TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[4].ToString())) + "</td>";
                        strTableVal += "<td>";
                        strTableVal += "<a style=\"cursor:pointer; display:none;\" onclick=\"saveTab2t3s1(this);\"><i class=\"glyphicon glyphicon-floppy-disk\"></i></a>";
                        strTableVal += "</td>";
                        strTableVal += "</tr>";
                    }
                }
                rdr.Close();
                myObj.DBDisconnect();
                strTableVal += "</tbody>";
                strTableVal += "</table>";
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string eafkiTab2t3s2(string yr)
        {
            ModifyDB myObj = new ModifyDB();
             GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "";
                strTableVal = "<table id=\"eafkiTab2t3s2Table\" class=\"table table-striped table-bordered eafkiTable\" style=\"font-size:12px;\"><thead>";
                strTableVal += "<tr>";
                strTableVal += "<th>Сар</th>";
                strTableVal += "<th>Орлого</th>";
                strTableVal += "<th>Зарлага</th>";
                strTableVal += "<th>Хөрөнгө оруулалт</th>";
                strTableVal += "<th>Нийт тэнцэл</th>";
                strTableVal += "<th>&nbsp;</th>";
                strTableVal += "</tr></thead><tbody>";

                OracleDataReader rdr = myObj.OracleExecuteReader("SELECT a.MNTH, b.D1, b.D2, b.D3, b.D4 FROM ( SELECT LEVEL as MNTH FROM DUAL CONNECT BY LEVEL < 12 + 1 ) a LEFT JOIN ( SELECT MNTH, D1, D2, D3, D4  FROM TBL_EAFKI_MAIN WHERE TP='2t3s2' AND YR=" + yr + " ) b ON a.MNTH=b.MNTH ORDER BY a.MNTH");
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        strTableVal += "<tr>";
                        strTableVal += "<td>" + rdr[0].ToString() + "</td>";
                        if (rdr[1].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t3s2TableTdOnClick(this)\">" + rdr[1].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t3s2TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[1].ToString())) + "</td>";
                        if (rdr[2].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t3s2TableTdOnClick(this)\">" + rdr[2].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t3s2TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[2].ToString())) + "</td>";
                        if (rdr[3].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t3s2TableTdOnClick(this)\">" + rdr[3].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t3s2TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[3].ToString())) + "</td>";
                        if (rdr[4].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t3s2TableTdOnClick(this)\">" + rdr[4].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t3s2TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[4].ToString())) + "</td>";
                        strTableVal += "<td>";
                        strTableVal += "<a style=\"cursor:pointer; display:none;\" onclick=\"saveTab2t3s2(this);\"><i class=\"glyphicon glyphicon-floppy-disk\"></i></a>";
                        strTableVal += "</td>";
                        strTableVal += "</tr>";
                    }
                }
                rdr.Close();
                myObj.DBDisconnect();
                strTableVal += "</tbody>";
                strTableVal += "</table>";
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string eafkiTab2t3s3(string yr)
        {
            ModifyDB myObj = new ModifyDB();
             GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "";
                strTableVal = "<table id=\"eafkiTab2t3s3Table\" class=\"table table-striped table-bordered eafkiTable\" style=\"font-size:12px;\"><thead>";
                strTableVal += "<tr>";
                strTableVal += "<th>Сар</th>";
                strTableVal += "<th>ТСНД-ны үлдэгдэл</th>";
                strTableVal += "<th>Мөнгөн хөрөнгийн үлдэгдэл</th>";
                strTableVal += "<th>Улсын төсвийн данс</th>";
                strTableVal += "<th>ОН-ийн ТБ-ын данс</th>";
                strTableVal += "<th>Нийгмийн даатгалын сан</th>";
                strTableVal += "<th>Валютын данс</th>";
                strTableVal += "<th>Богино хугацаат хадгаламж</th>";
                strTableVal += "<th>Орон нутгийн хөгжлийн нэгдсэн сан</th>";
                strTableVal += "<th>Улсын төсвийн ерөнхий орлогын данс</th>";
                strTableVal += "<th>&nbsp;</th>";
                strTableVal += "</tr></thead><tbody>";

                OracleDataReader rdr = myObj.OracleExecuteReader("SELECT a.MNTH, b.D1, b.D2, b.D3, b.D4, b.D5, b.D6, b.D7, b.D8, b.D9 FROM ( SELECT LEVEL as MNTH FROM DUAL CONNECT BY LEVEL < 12 + 1 ) a LEFT JOIN ( SELECT MNTH, D1, D2, D3, D4, D5, D6, D7, D8, D9  FROM TBL_EAFKI_MAIN WHERE TP = '2t3s3' AND YR=" + yr + " ) b ON a.MNTH=b.MNTH ORDER BY a.MNTH");
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        strTableVal += "<tr>";
                        strTableVal += "<td>" + rdr[0].ToString() + "</td>";
                        if (rdr[1].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t3s3TableTdOnClick(this)\">" + rdr[1].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t3s3TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[1].ToString())) + "</td>";
                        if (rdr[2].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t3s3TableTdOnClick(this)\">" + rdr[2].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t3s3TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[2].ToString())) + "</td>";
                        if (rdr[3].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t3s3TableTdOnClick(this)\">" + rdr[3].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t3s3TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[3].ToString())) + "</td>";
                        if (rdr[4].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t3s3TableTdOnClick(this)\">" + rdr[4].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t3s3TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[4].ToString())) + "</td>";
                        if (rdr[5].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t3s3TableTdOnClick(this)\">" + rdr[5].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t3s3TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[5].ToString())) + "</td>";
                        if (rdr[6].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t3s3TableTdOnClick(this)\">" + rdr[6].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t3s3TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[6].ToString())) + "</td>";
                        if (rdr[7].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t3s3TableTdOnClick(this)\">" + rdr[7].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t3s3TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[7].ToString())) + "</td>";
                        if (rdr[8].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t3s3TableTdOnClick(this)\">" + rdr[8].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t3s3TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[8].ToString())) + "</td>";
                        if (rdr[9].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t3s3TableTdOnClick(this)\">" + rdr[9].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t3s3TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[9].ToString())) + "</td>";
                        strTableVal += "<td>";
                        strTableVal += "<a style=\"cursor:pointer; display:none;\" onclick=\"saveTab2t3s3(this);\"><i class=\"glyphicon glyphicon-floppy-disk\"></i></a>";
                        strTableVal += "</td>";
                        strTableVal += "</tr>";
                    }
                }
                rdr.Close();
                myObj.DBDisconnect();
                strTableVal += "</tbody>";
                strTableVal += "</table>";
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string eafkiTab2t4s1(string yr)
        {
            ModifyDB myObj = new ModifyDB();
             GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "";
                strTableVal = "<table id=\"eafkiTab2t4s1Table\" class=\"table table-striped table-bordered eafkiTable\" style=\"font-size:12px;\"><thead>";
                strTableVal += "<tr>";
                strTableVal += "<th>Ул</th>";
                strTableVal += "<th>Гадаад зээл</th>";
                strTableVal += "<th>Дотоод үнэт цаас</th>";
                strTableVal += "<th>Гадаад үнэт цаас</th>";
                strTableVal += "<th>Бусад</th>";
                strTableVal += "<th>Баталгаа</th>";
                strTableVal += "<th>&nbsp;</th>";
                strTableVal += "</tr></thead><tbody>";

                OracleDataReader rdr = myObj.OracleExecuteReader("SELECT a.MNTH, b.D1, b.D2, b.D3, b.D4, b.D5 FROM ( SELECT LEVEL as MNTH FROM DUAL CONNECT BY LEVEL < 4 + 1 ) a LEFT JOIN ( SELECT MNTH, D1, D2, D3, D4, D5 FROM TBL_EAFKI_MAIN WHERE YR=" + yr + " AND TP='2t4s1') b ON a.MNTH=b.MNTH ORDER BY a.MNTH");
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        strTableVal += "<tr>";
                        strTableVal += "<td>" + rdr[0].ToString() + "</td>";
                        if (rdr[1].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t4s1TableTdOnClick(this)\">" + rdr[1].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t4s1TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[1].ToString())) + "</td>";
                        if (rdr[2].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t4s1TableTdOnClick(this)\">" + rdr[2].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t4s1TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[2].ToString())) + "</td>";
                        if (rdr[3].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t4s1TableTdOnClick(this)\">" + rdr[3].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t4s1TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[3].ToString())) + "</td>";
                        if (rdr[4].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t4s1TableTdOnClick(this)\">" + rdr[4].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t4s1TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[4].ToString())) + "</td>";
                        if (rdr[5].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t4s1TableTdOnClick(this)\">" + rdr[5].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t4s1TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[5].ToString())) + "</td>";
                        strTableVal += "<td>";
                        strTableVal += "<a style=\"cursor:pointer; display:none;\" onclick=\"saveTab2t4s1(this);\"><i class=\"glyphicon glyphicon-floppy-disk\"></i></a>";
                        strTableVal += "</td>";
                        strTableVal += "</tr>";
                    }
                }
                rdr.Close();
                myObj.DBDisconnect();
                strTableVal += "</tbody>";
                strTableVal += "</table>";
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string eafkiTab2t4s2(string yr)
        {
            ModifyDB myObj = new ModifyDB();
             GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "";
                strTableVal = "<table id=\"eafkiTab2t4s2Table\" class=\"table table-striped table-bordered eafkiTable\" style=\"font-size:12px;\"><thead>";
                strTableVal += "<tr>";
                strTableVal += "<th style=\"width:40px;\">Ул</th>";
                strTableVal += "<th style=\"width:150px;\">Төрөл</th>";
                strTableVal += "<th>SDR</th>";
                strTableVal += "<th>JPY</th>";
                strTableVal += "<th>USD</th>";
                strTableVal += "<th>EUR</th>";
                strTableVal += "<th>KRW</th>";
                strTableVal += "<th>KWD</th>";
                strTableVal += "<th>MNT</th>";
                strTableVal += "<th>Other</th>";
                strTableVal += "<th>&nbsp;</th>";
                strTableVal += "</tr></thead><tbody>";
                DataSet ds = myObj.OracleExecuteDataSet("SELECT a.MNTH, CASE WHEN a.D9=1 THEN 'Гадаад зээл' ELSE CASE WHEN a.D9=2 THEN 'Дотоод үнэт цаас' ELSE CASE WHEN a.D9=3 THEN 'Гадаад үнэт цаас' ELSE CASE WHEN a.D9=4 THEN 'Бусад' ELSE CASE WHEN a.D9=5 THEN 'Баталгаа' END END END END END as D9TP, b.D1, b.D2, b.D3, b.D4, b.D5, b.D6, b.D7, b.D8, a.D9 FROM ( SELECT a.MNTH, b.D9 FROM ( SELECT LEVEL as MNTH FROM DUAL CONNECT BY LEVEL < 4 + 1 ) a,( SELECT LEVEL as D9 FROM DUAL CONNECT BY LEVEL < 5 + 1 ) b ORDER BY a.MNTH, b.D9 ) a LEFT JOIN ( SELECT MNTH, D1, D2, D3, D4, D5, D6, D7, D8, D9 FROM TBL_EAFKI_MAIN WHERE YR=" + yr + " AND TP='2t4s2' ) b ON a.MNTH=b.MNTH AND a.D9=b.D9 ORDER BY a.MNTH, a.D9");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        strTableVal += "<tr>";
                        strTableVal += "<td class=\"text-center\">" + dr["MNTH"].ToString() + "</td>";
                        strTableVal += "<td class=\"text-left\" data-id=\"" + dr["D9"].ToString() + "\">" + dr["D9TP"].ToString() + "</td>";
                        strTableVal += "<td onclick=\"eafkiTab2t4s2TableTdOnClick(this)\">";
                        if (dr["D1"].ToString() != "") strTableVal += String.Format("{0:n}", Convert.ToDouble(dr["D1"].ToString()));
                        strTableVal += "</td>";
                        strTableVal += "<td onclick=\"eafkiTab2t4s2TableTdOnClick(this)\">";
                        if (dr["D2"].ToString() != "") strTableVal += String.Format("{0:n}", Convert.ToDouble(dr["D2"].ToString()));
                        strTableVal += "</td>";
                        strTableVal += "<td onclick=\"eafkiTab2t4s2TableTdOnClick(this)\">";
                        if (dr["D3"].ToString() != "") strTableVal += String.Format("{0:n}", Convert.ToDouble(dr["D3"].ToString()));
                        strTableVal += "</td>";
                        strTableVal += "<td onclick=\"eafkiTab2t4s2TableTdOnClick(this)\">";
                        if (dr["D4"].ToString() != "") strTableVal += String.Format("{0:n}", Convert.ToDouble(dr["D4"].ToString()));
                        strTableVal += "</td>";
                        strTableVal += "<td onclick=\"eafkiTab2t4s2TableTdOnClick(this)\">";
                        if (dr["D5"].ToString() != "") strTableVal += String.Format("{0:n}", Convert.ToDouble(dr["D5"].ToString()));
                        strTableVal += "</td>";
                        strTableVal += "<td onclick=\"eafkiTab2t4s2TableTdOnClick(this)\">";
                        if (dr["D6"].ToString() != "") strTableVal += String.Format("{0:n}", Convert.ToDouble(dr["D6"].ToString()));
                        strTableVal += "</td>";
                        strTableVal += "<td onclick=\"eafkiTab2t4s2TableTdOnClick(this)\">";
                        if (dr["D7"].ToString() != "") strTableVal += String.Format("{0:n}", Convert.ToDouble(dr["D7"].ToString()));
                        strTableVal += "</td>";
                        strTableVal += "<td onclick=\"eafkiTab2t4s2TableTdOnClick(this)\">";
                        if (dr["D8"].ToString() != "") strTableVal += String.Format("{0:n}", Convert.ToDouble(dr["D8"].ToString()));
                        strTableVal += "</td>";
                        strTableVal += "<td>";
                        strTableVal += "<a style=\"cursor:pointer; display:none;\" onclick=\"saveTab2t4s2(this);\"><i class=\"glyphicon glyphicon-floppy-disk\"></i></a>";
                        strTableVal += "</td>";
                        strTableVal += "</tr>";
                    }
                }
                
                
                //OracleDataReader rdr = myObj.OracleExecuteReader("SELECT a.MNTH, b.D1, b.D2, b.D3, b.D4, b.D5, b.D6, b.D7 FROM ( SELECT LEVEL as MNTH FROM DUAL CONNECT BY LEVEL < 4 + 1 ) a LEFT JOIN ( SELECT MNTH, D1, D2, D3, D4, D5, D6, D7 FROM TBL_EAFKI_MAIN WHERE YR=" + yr + " AND TP='2t4s2') b ON a.MNTH=b.MNTH ORDER BY a.MNTH");
                //if (rdr.HasRows)
                //{
                //    while (rdr.Read())
                //    {
                //        strTableVal += "<tr>";
                //        strTableVal += "<td>" + rdr[0].ToString() + "</td>";
                //        if (rdr[1].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t4s2TableTdOnClick(this)\">" + rdr[1].ToString() + "</td>";
                //        else strTableVal += "<td onclick=\"eafkiTab2t4s2TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[1].ToString())) + "</td>";
                //        if (rdr[2].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t4s2TableTdOnClick(this)\">" + rdr[2].ToString() + "</td>";
                //        else strTableVal += "<td onclick=\"eafkiTab2t4s2TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[2].ToString())) + "</td>";
                //        if (rdr[3].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t4s2TableTdOnClick(this)\">" + rdr[3].ToString() + "</td>";
                //        else strTableVal += "<td onclick=\"eafkiTab2t4s2TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[3].ToString())) + "</td>";
                //        if (rdr[4].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t4s2TableTdOnClick(this)\">" + rdr[4].ToString() + "</td>";
                //        else strTableVal += "<td onclick=\"eafkiTab2t4s2TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[4].ToString())) + "</td>";
                //        if (rdr[5].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t4s2TableTdOnClick(this)\">" + rdr[5].ToString() + "</td>";
                //        else strTableVal += "<td onclick=\"eafkiTab2t4s2TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[5].ToString())) + "</td>";
                //        if (rdr[6].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t4s2TableTdOnClick(this)\">" + rdr[6].ToString() + "</td>";
                //        else strTableVal += "<td onclick=\"eafkiTab2t4s2TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[6].ToString())) + "</td>";
                //        if (rdr[7].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t4s2TableTdOnClick(this)\">" + rdr[7].ToString() + "</td>";
                //        else strTableVal += "<td onclick=\"eafkiTab2t4s2TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[7].ToString())) + "</td>";
                //        strTableVal += "<td>";
                //        strTableVal += "<a style=\"cursor:pointer; display:none;\" onclick=\"saveTab2t4s2(this);\"><i class=\"glyphicon glyphicon-floppy-disk\"></i></a>";
                //        strTableVal += "</td>";
                //        strTableVal += "</tr>";
                //    }
                //}
                //rdr.Close();
                //myObj.DBDisconnect();
                strTableVal += "</tbody>";
                strTableVal += "</table>";
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string eafkiTab2t4s3(string yr)
        {
            ModifyDB myObj = new ModifyDB();
             GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "";
                strTableVal = "<table id=\"eafkiTab2t4s3Table\" class=\"table table-striped table-bordered eafkiTable\" style=\"font-size:12px;\"><thead>";
                strTableVal += "<tr>";
                strTableVal += "<th rowspan=\"2\">Сар</th>";
                strTableVal += "<th colspan=\"2\">Гадаад зээлийн төлбөр</th>";
                strTableVal += "<th colspan=\"2\">ЗГ-ын гадаад үнэт цаас</th>";
                strTableVal += "<th colspan=\"2\">Зг-ын дотоод үнэт цаас</th>";
                strTableVal += "<th rowspan=\"2\">&nbsp;</th>";
                strTableVal += "</tr>";
                strTableVal += "<tr>";
                strTableVal += "<th>Үндсэн</th>";
                strTableVal += "<th>Хүү</th>";
                strTableVal += "<th>Үндсэн</th>";
                strTableVal += "<th>Хүү</th>";
                strTableVal += "<th>Үндсэн</th>";
                strTableVal += "<th>Хүү</th>";
                strTableVal += "</tr>";
                strTableVal += "</thead><tbody>";

                OracleDataReader rdr = myObj.OracleExecuteReader("SELECT a.MNTH, b.D1, b.D2, b.D3, b.D4, b.D5, b.D6 FROM ( SELECT LEVEL as MNTH FROM DUAL CONNECT BY LEVEL < 12 + 1 ) a LEFT JOIN ( SELECT MNTH, D1, D2, D3, D4, D5, D6 FROM TBL_EAFKI_MAIN WHERE YR=" + yr + " AND TP='2t4s3') b ON a.MNTH=b.MNTH ORDER BY a.MNTH");
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        strTableVal += "<tr>";
                        strTableVal += "<td>" + rdr[0].ToString() + "</td>";
                        if (rdr[1].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t4s3TableTdOnClick(this)\">" + rdr[1].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t4s3TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[1].ToString())) + "</td>";
                        if (rdr[2].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t4s3TableTdOnClick(this)\">" + rdr[2].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t4s3TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[2].ToString())) + "</td>";
                        if (rdr[3].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t4s3TableTdOnClick(this)\">" + rdr[3].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t4s3TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[3].ToString())) + "</td>";
                        if (rdr[4].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t4s3TableTdOnClick(this)\">" + rdr[4].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t4s3TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[4].ToString())) + "</td>";
                        if (rdr[5].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t4s3TableTdOnClick(this)\">" + rdr[5].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t4s3TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[5].ToString())) + "</td>";
                        if (rdr[6].ToString() == "") strTableVal += "<td onclick=\"eafkiTab2t4s3TableTdOnClick(this)\">" + rdr[6].ToString() + "</td>";
                        else strTableVal += "<td onclick=\"eafkiTab2t4s3TableTdOnClick(this)\">" + String.Format("{0:n}", Convert.ToDouble(rdr[6].ToString())) + "</td>";
                        strTableVal += "<td>";
                        strTableVal += "<a style=\"cursor:pointer; display:none;\" onclick=\"saveTab2t4s3(this);\"><i class=\"glyphicon glyphicon-floppy-disk\"></i></a>";
                        strTableVal += "</td>";
                        strTableVal += "</tr>";
                    }
                }
                rdr.Close();
                myObj.DBDisconnect();
                strTableVal += "</tbody>";
                strTableVal += "</table>";
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string eafkiTab1s1(string yr, string mnth, string lang)
        {
            ModifyDB myObj = new ModifyDB();
             GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "";
                string strBfrYr = "", strBfrMnth = "";
                OracleDataReader rdr;
                if (mnth == "1")
                {
                    strBfrYr = (Int32.Parse(yr) - 1).ToString();
                    strBfrMnth = "12";
                }
                else
                {
                    strBfrYr = yr;
                    strBfrMnth = (Int32.Parse(mnth) - 1).ToString();
                }
                if (lang == "mn") strTableVal += "<tr><td colspan=\"2\" style=\"font-weight:bold; color:#E4564F; padding-bottom: 10px;\">1. ЭДИЙН ЗАСГИЙН ҮЗҮҮЛЭЛТ</td></tr>";
                else strTableVal += "<tr><td colspan=\"2\" style=\"font-weight:bold; color:#E4564F; padding-bottom: 10px;\">1. ECONOMIC INDICATORS</td></tr>";
                string qry = "SELECT '2t1s1' as TP, SUM(BFR_D1) as BFR_D1, SUM(BFR_D2) as BFR_D2, SUM(BFR_D3) as BFR_D3, SUM(BFR_D4) as BFR_D4, SUM(CRT_D1) as CRT_D1, SUM(CRT_D2) as CRT_D2, SUM(CRT_D3) as CRT_D3, SUM(CRT_D4) as CRT_D4, 0 as PER_D1, 0 as PER_D2, 0 as PER_D3, 0 as PER_D4 FROM ( SELECT 0 as BFR_D1, 0 as BFR_D2, 0 as BFR_D3, 0 as BFR_D4, D1 as CRT_D1, D2 as CRT_D2, D3 as CRT_D3, D4 as CRT_D4 FROM TBL_EAFKI_MAIN WHERE TP = '2t1s1' AND YR=" + yr + " AND MNTH=" + mnth + " UNION ALL SELECT 0, 0, 0, 0, 0, 0, 0, 0 FROM DUAL ) UNION ALL SELECT '2t1s2' as TP, SUM(BFR_D1) as BFR_D1, SUM(BFR_D2) as BFR_D2, SUM(BFR_D3) as BFR_D3, SUM(BFR_D4) as BFR_D4, SUM(CRT_D1) as CRT_D1, SUM(CRT_D2) as CRT_D2, SUM(CRT_D3) as CRT_D3, SUM(CRT_D4) as CRT_D4, 0 as PER_D1, 0 as PER_D2, 0 as PER_D3, 0 as PER_D4 FROM ( SELECT D1 as BFR_D1, D2 as BFR_D2, D3 as BFR_D3, D4 as BFR_D4, 0 as CRT_D1, 0 as CRT_D2, 0 as CRT_D3, 0 as CRT_D4 FROM TBL_EAFKI_MAIN WHERE TP = '2t1s2' AND YR=" + strBfrYr + " AND MNTH = " + strBfrMnth + " UNION ALL SELECT 0 as BFR_D1, 0 as BFR_D2, 0 as BFR_D3, 0 as BFR_D4, D1 as CRT_D1, D2 as CRT_D2, D3 as CRT_D3, D4 as CRT_D4 FROM TBL_EAFKI_MAIN WHERE TP = '2t1s2' AND YR=" + yr + " AND MNTH = " + mnth + " UNION ALL SELECT 0, 0, 0, 0, 0, 0, 0, 0 FROM DUAL UNION ALL SELECT 0, 0, 0, 0, 0, 0, 0, 0 FROM DUAL ) UNION ALL SELECT '2t1s3' as TP, SUM(BFR_D1) as BFR_D1, SUM(BFR_D2) as BFR_D2, SUM(BFR_D3) as BFR_D3, SUM(BFR_D4) as BFR_D4, SUM(CRT_D1) as CRT_D1, SUM(CRT_D2) as CRT_D2, SUM(CRT_D3) as CRT_D3, SUM(CRT_D4) as CRT_D4, CASE WHEN SUM(BFR_D1)=0 AND SUM(CRT_D1)=0 THEN 0 WHEN SUM(BFR_D1)=0 THEN 100 WHEN SUM(CRT_D1)=0 THEN -100 ELSE ROUND(((SUM(CRT_D1)/SUM(BFR_D1))-1)*100,1) END as PER_D1, CASE WHEN SUM(BFR_D2)=0 AND SUM(CRT_D2)=0 THEN 0 WHEN SUM(BFR_D2)=0 THEN 100 WHEN SUM(CRT_D2)=0 THEN -100 ELSE ROUND(((SUM(CRT_D2)/SUM(BFR_D2))-1)*100,1) END as PER_D2, CASE WHEN SUM(BFR_D3)=0 AND SUM(CRT_D3)=0 THEN 0 WHEN SUM(BFR_D3)=0 THEN 100 WHEN SUM(CRT_D3)=0 THEN -100 ELSE ROUND(((SUM(CRT_D3)/SUM(BFR_D3))-1)*100,1) END as PER_D3, CASE WHEN SUM(BFR_D4)=0 AND SUM(CRT_D4)=0 THEN 0 WHEN SUM(BFR_D4)=0 THEN 100 WHEN SUM(CRT_D4)=0 THEN -100 ELSE ROUND(((SUM(CRT_D4)/SUM(BFR_D4))-1)*100,1) END as PER_D4 FROM ( SELECT D1 as BFR_D1, D2 as BFR_D2, D3 as BFR_D3, D4 as BFR_D4, 0 as CRT_D1, 0 as CRT_D2, 0 as CRT_D3, 0 as CRT_D4 FROM TBL_EAFKI_MAIN WHERE TP = '2t1s3' AND YR=" + strBfrYr + " AND MNTH = " + strBfrMnth + " UNION ALL SELECT 0 as BFR_D1, 0 as BFR_D2, 0 as BFR_D3, 0 as BFR_D4, D1 as CRT_D1, D2 as CRT_D2, D3 as CRT_D3, D4 as CRT_D4 FROM TBL_EAFKI_MAIN WHERE TP = '2t1s3' AND YR=" + yr + " AND MNTH = " + mnth + " UNION ALL SELECT 0, 0, 0, 0, 0, 0, 0, 0 FROM DUAL UNION ALL SELECT 0, 0, 0, 0, 0, 0, 0, 0 FROM DUAL )";
                rdr = myObj.OracleExecuteReader(qry);
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        if (lang == "mn")
                        {
                            if (rdr[0].ToString() == "2t1s1")
                            {
                                strTableVal += "<tr><td colspan=\"2\" style=\"font-weight:bold; padding-left:2em;border-bottom:1px solid #CCC;\">А. ДОТООДЫН НИЙТ БҮТЭЭГДЭХҮҮН<span style=\"font-weight:normal; font-style:italic; float:right;\">Улирлын байдлаар</span></td></tr>";
                                strTableVal += "<tr><td style=\"padding-left:4em; text-align: justify;padding-top: 5px;\">ДНБ /оны эхнээс, тэрбум төгрөг, 2005 оны зэрэгцүүлэх үнээр/</td><td style=\"text-align:right;font-size: 14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[5].ToString())) + "</td></tr>";
                                strTableVal += "<tr><td style=\"padding-left:4em; text-align: justify;padding-top: 5px;\">ДНБ /оны эхнээс, тэрбум төгрөг/</td><td style=\"text-align:right;font-size: 14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[6].ToString())) + "</td></tr>";
                                strTableVal += "<tr><td style=\"padding-left:4em; text-align: justify;padding-top: 5px;\">ДНБ-ний өсөлт /хувиар/</td><td style=\"text-align:right;font-size: 14px;\">" + rdr[7].ToString() + "%</td></tr>";
                                strTableVal += "<tr><td style=\"padding-left:4em; text-align: justify;padding-top: 5px;\">ДНБ-ний зорилтот өсөлт /хувиар/</td><td style=\"text-align:right;font-size: 14px; font-style:italic; color:#E4564F; font-weight:bold;\">" + rdr[8].ToString() + "%</td></tr>";
                                strTableVal += "<tr><td colspan=\"2\" style=\"text-align:right;font-size: 10px; font-style:italic;\">Эх сурвалж: Үндэсний Статистикийн хороо</td></tr>";
                            }
                            else if (rdr[0].ToString() == "2t1s2")
                            {
                                strTableVal += "<tr><td colspan=\"2\" style=\"font-weight:bold; padding-left:2em;border-bottom:1px solid #CCC;padding-top: 5px;\">Б. ИНФЛЯЦИ /хувиар/</td></tr>";
                                strTableVal += "<tr><td colspan=\"2\"><table style=\"font: 11pt arial, sans-serif; width: 100%;\"><tbody><tr><td>&nbsp;</td><td style=\"font-weight:bold;padding-top: 5px;text-align: right;\">" + strBfrYr + "/" + strBfrMnth + "-р сар</td><td style=\"font-weight:bold;text-align: right;\">" + yr + "/" + mnth + "-р сар</td></tr><tr><td style=\"padding-left:4em;padding-top: 5px;\">Сарын</td><td style=\"text-align:right; font-size:14px;\">" + rdr[1].ToString() + "%</td><td style=\"text-align:right; font-size:14px;\">" + rdr[5].ToString() + "%</td></tr><tr><td style=\"padding-left:4em;padding-top: 5px;\">Оны эхнээс</td><td style=\"text-align:right; font-size:14px;\">" + rdr[2].ToString() + "%</td><td style=\"text-align:right; font-size:14px;\">" + rdr[6].ToString() + "%</td></tr><tr><td style=\"padding-left:4em;padding-top: 5px;\">Жилийн</td><td style=\"text-align:right; font-size:14px;\">" + rdr[3].ToString() + "%</td><td style=\"text-align:right; font-size:14px;\">" + rdr[7].ToString() + "%</td></tr><tr><td style=\"padding-left:4em;padding-top: 5px; font-style:italic; color:#E4564F; font-weight:bold;\">Зорилтот түвшин</td><td style=\"text-align:right; font-size:14px; font-style:italic; color:#E4564F; font-weight:bold;\"><" + rdr[4].ToString() + "%</td><td style=\"text-align:right; font-size:14px; font-style:italic; color:#E4564F; font-weight:bold;\"><" + rdr[8].ToString() + "%</td></tr></tbody></table></td></tr>";
                                strTableVal += "<tr><td colspan=\"2\" style=\"text-align:right;font-size: 10px; font-style:italic;\">Эх сурвалж: Үндэсний Статистикийн хороо</td></tr>";
                            }
                            else if (rdr[0].ToString() == "2t1s3")
                            {
                                strTableVal += "<tr><td colspan=\"2\" style=\"font-weight:bold; padding-left:2em;border-bottom:1px solid #CCC;padding-top: 5px;\">В. ГОЛ ТҮҮХИЙ ЭДИЙН ҮНЭ (олон улсын зах зээл дээр)</td></tr>";
                                strTableVal += "<tr><td colspan=\"2\"><table style=\"font: 11pt arial, sans-serif; width: 100%;\"><tbody><tr><td>&nbsp;</td><td style=\"font-weight:bold;padding-top: 5px;text-align: right;\">" + strBfrYr + "/" + strBfrMnth + "-р сар</td><td>&nbsp;</td><td style=\"font-weight:bold;text-align: right;\">" + yr + "/" + mnth + "-р сар</td></tr><tr><td style=\"padding-left:4em;padding-top: 5px;\">Зэс ($/т)</td><td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[1].ToString())) + "</td>";
                                if (Convert.ToDouble(rdr[9].ToString()) > 0) strTableVal += "<td style=\"text-align:right;\">" + rdr[9].ToString() + "% <i class=\"glyphicon glyphicon-arrow-up txt-color-green\"></i></td>";
                                else strTableVal += "<td style=\"text-align:right;\">" + rdr[9].ToString() + "% <i class=\"glyphicon glyphicon-arrow-down txt-color-red\"></i></td>";
                                strTableVal += "<td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[5].ToString())) + "</td></tr><tr><td style=\"padding-left:4em;padding-top: 5px;\">Алт ($/у)</td><td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[2].ToString())) + "</td>";
                                if (Convert.ToDouble(rdr[10].ToString()) > 0) strTableVal += "<td style=\"text-align:right;\">" + rdr[10].ToString() + "% <i class=\"glyphicon glyphicon-arrow-up txt-color-green\"></i></td>";
                                else strTableVal += "<td style=\"text-align:right;\">" + rdr[10].ToString() + "% <i class=\"glyphicon glyphicon-arrow-down txt-color-red\"></i></td>";
                                strTableVal += "<td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[6].ToString())) + "</td></tr><tr><td style=\"padding-left:4em;padding-top: 5px;\">Нүүрс ($/т)</td><td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[3].ToString())) + "</td>";
                                if (Convert.ToDouble(rdr[11].ToString()) > 0) strTableVal += "<td style=\"text-align:right;\">" + rdr[11].ToString() + "% <i class=\"glyphicon glyphicon-arrow-up txt-color-green\"></i></td>";
                                else strTableVal += "<td style=\"text-align:right;\">" + rdr[11].ToString() + "% <i class=\"glyphicon glyphicon-arrow-down txt-color-red\"></i></td>";
                                strTableVal += "<td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[7].ToString())) + "</td></tr></tbody></table></td></tr>";
                                strTableVal += "<tr><td colspan=\"2\" style=\"text-align:right;font-size: 10px; font-style:italic;\">Эх сурвалж: Дэлхийн Банк</td></tr>";
                            }
                        }
                        else
                        {
                            if (rdr[0].ToString() == "2t1s1")
                            {
                                strTableVal += "<tr><td colspan=\"2\" style=\"font-weight:bold; padding-left:2em;border-bottom:1px solid #CCC;\">A. GROSS DOMESTIC PRODUCT<span style=\"font-weight:normal; font-style:italic; float:right;\">Quarterly</span></td></tr>";
                                strTableVal += "<tr><td style=\"padding-left:4em; text-align: justify;padding-top: 5px;\">GDP, bln.MNT, from year start, 2005 nominal</td><td style=\"text-align:right;font-size: 14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[5].ToString())) + "</td></tr>";
                                strTableVal += "<tr><td style=\"padding-left:4em; text-align: justify;padding-top: 5px;\">GDP, bln.MNT, from year start, current</td><td style=\"text-align:right;font-size: 14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[6].ToString())) + "</td></tr>";
                                strTableVal += "<tr><td style=\"padding-left:4em; text-align: justify;padding-top: 5px;\">GDP growth, %</td><td style=\"text-align:right;font-size: 14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[7].ToString())) + "%</td></tr>";
                                strTableVal += "<tr><td style=\"padding-left:4em; text-align: justify;padding-top: 5px;\">Target GDP growth, %</td><td style=\"text-align:right;font-size: 14px; font-style:italic; color:#E4564F; font-weight:bold;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[8].ToString())) + "%</td></tr>";
                                strTableVal += "<tr><td colspan=\"2\" style=\"text-align:right;font-size: 10px; font-style:italic;\">Source: National Statistics Office</td></tr>";
                            }
                            else if (rdr[0].ToString() == "2t1s2")
                            {
                                strTableVal += "<tr><td colspan=\"2\" style=\"font-weight:bold; padding-left:2em;border-bottom:1px solid #CCC;padding-top: 5px;\">B. INFLATION /%/</td></tr>";
                                strTableVal += "<tr><td colspan=\"2\"><table style=\"font: 11pt arial, sans-serif; width: 100%;\"><tbody><tr><td>&nbsp;</td><td style=\"font-weight:bold;padding-top: 5px;text-align: right;\">Average of " + new DateTime(Int32.Parse(strBfrYr), Int32.Parse(strBfrMnth), 1).ToString("MMM", CultureInfo.InvariantCulture) + " " + strBfrYr + "</td><td style=\"font-weight:bold;text-align: right;\">Average of " + new DateTime(Int32.Parse(yr), Int32.Parse(mnth), 1).ToString("MMM", CultureInfo.InvariantCulture) + " " + yr + "</td></tr><tr><td style=\"padding-left:4em;padding-top: 5px;\">Monthly</td><td style=\"text-align:right; font-size:14px;\">" + rdr[1].ToString() + "%</td><td style=\"text-align:right; font-size:14px;\">" + rdr[5].ToString() + "%</td></tr><tr><td style=\"padding-left:4em;padding-top: 5px;\">From year start</td><td style=\"text-align:right; font-size:14px;\">" + rdr[2].ToString() + "%</td><td style=\"text-align:right; font-size:14px;\">" + rdr[6].ToString() + "%</td></tr><tr><td style=\"padding-left:4em;padding-top: 5px;\">Annual</td><td style=\"text-align:right; font-size:14px;\">" + rdr[3].ToString() + "%</td><td style=\"text-align:right; font-size:14px;\">" + rdr[7].ToString() + "%</td></tr><tr><td style=\"padding-left:4em;padding-top: 5px; font-style:italic; color:#E4564F; font-weight:bold;\">Target</td><td style=\"text-align:right; font-size:14px; font-style:italic; color:#E4564F; font-weight:bold;\"><" + rdr[4].ToString() + "%</td><td style=\"text-align:right; font-size:14px; font-style:italic; color:#E4564F; font-weight:bold;\"><" + rdr[8].ToString() + "%</td></tr></tbody></table></td></tr>";
                                strTableVal += "<tr><td colspan=\"2\" style=\"text-align:right;font-size: 10px; font-style:italic;\">Source: National Statistics Office</td></tr>";
                            }
                            else if (rdr[0].ToString() == "2t1s3")
                            {
                                strTableVal += "<tr><td colspan=\"2\" style=\"font-weight:bold; padding-left:2em;border-bottom:1px solid #CCC;padding-top: 5px;\">C. COMMODITY PRICE (Global Market)</td></tr>";
                                strTableVal += "<tr><td colspan=\"2\"><table style=\"font: 11pt arial, sans-serif; width: 100%;\"><tbody><tr><td>&nbsp;</td><td style=\"font-weight:bold;padding-top: 5px;text-align: right;\">Average of " + new DateTime(Int32.Parse(strBfrYr), Int32.Parse(strBfrMnth), 1).ToString("MMM", CultureInfo.InvariantCulture) + " " + strBfrYr + "</td><td>&nbsp;</td><td style=\"font-weight:bold;text-align: right;\">Average of " + new DateTime(Int32.Parse(yr), Int32.Parse(mnth), 1).ToString("MMM", CultureInfo.InvariantCulture) + " " + yr + "</td></tr><tr><td style=\"padding-left:4em;padding-top: 5px;\">Copper ($/t)</td><td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[1].ToString())) + "</td>";
                                if (Convert.ToDouble(rdr[9].ToString()) > 0) strTableVal += "<td style=\"text-align:right;\">" + rdr[9].ToString() + "% <i class=\"glyphicon glyphicon-arrow-up txt-color-green\"></i></td>";
                                else strTableVal += "<td style=\"text-align:right;\">" + rdr[9].ToString() + "% <i class=\"glyphicon glyphicon-arrow-down txt-color-red\"></i></td>";
                                strTableVal += "<td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[5].ToString())) + "</td></tr><tr><td style=\"padding-left:4em;padding-top: 5px;\">Gold ($/o)</td><td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[2].ToString())) + "</td>";
                                if (Convert.ToDouble(rdr[10].ToString()) > 0) strTableVal += "<td style=\"text-align:right;\">" + rdr[10].ToString() + "% <i class=\"glyphicon glyphicon-arrow-up txt-color-green\"></i></td>";
                                else strTableVal += "<td style=\"text-align:right;\">" + rdr[10].ToString() + "% <i class=\"glyphicon glyphicon-arrow-down txt-color-red\"></i></td>";
                                strTableVal += "<td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[6].ToString())) + "</td></tr><tr><td style=\"padding-left:4em;padding-top: 5px;\">Coal ($/t)</td><td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[3].ToString())) + "</td>";
                                if (Convert.ToDouble(rdr[11].ToString()) > 0) strTableVal += "<td style=\"text-align:right;\">" + rdr[11].ToString() + "% <i class=\"glyphicon glyphicon-arrow-up txt-color-green\"></i></td>";
                                else strTableVal += "<td style=\"text-align:right;\">" + rdr[11].ToString() + "% <i class=\"glyphicon glyphicon-arrow-down txt-color-red\"></i></td>";
                                strTableVal += "<td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[7].ToString())) + "</td></tr></tbody></table></td></tr>";
                                strTableVal += "<tr><td colspan=\"2\" style=\"text-align:right;font-size: 10px; font-style:italic;\">Source: World Bank</td></tr>";
                            }
                        }

                    }
                }
                rdr.Close();
                myObj.DBDisconnect();
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string eafkiTab1s2(string yr, string mnth, string lang)
        {
            ModifyDB myObj = new ModifyDB();
             GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "";
                string strBfrYr = "", strBfrMnth = "";
                OracleDataReader rdr;
                if (mnth == "1")
                {
                    strBfrYr = (Int32.Parse(yr) - 1).ToString();
                    strBfrMnth = "12";
                }
                else
                {
                    strBfrYr = yr;
                    strBfrMnth = (Int32.Parse(mnth) - 1).ToString();
                }
                if (lang == "mn") strTableVal += "<tr><td colspan=\"2\" style=\"font-weight:bold; color:#E4564F; padding-bottom: 10px;\">2. МӨНГӨНИЙ БОДЛОГЫН ҮЗҮҮЛЭЛТ</td></tr>";
                else strTableVal += "<tr><td colspan=\"2\" style=\"font-weight:bold; color:#E4564F; padding-bottom: 10px;\">2. MONETARY POLICY INDICATORS</td></tr>";
                string qry = "SELECT '2t2s1' as TP, NVL(b.DESC_MN, a.DESC_MN) as DESC_MN, NVL(b.DESC_EN, a.DESC_EN) as DESC_EN, NVL(b.D1, a.D1) as D1 FROM ( SELECT '-' as DESC_MN, '-' as DESC_EN, 0 as D1, " + mnth + " as MNTH FROM DUAL ) a LEFT JOIN ( SELECT DESC_MN, DESC_EN, D1, MNTH FROM TBL_EAFKI_MAIN WHERE TP = '2t2s1' AND YR=" + yr + " AND MNTH=" + mnth + " ) b ON a.MNTH=b.MNTH UNION ALL SELECT '2t2s2' as TP, NVL(b.DESC_MN, a.DESC_MN) as DESC_MN, NVL(b.DESC_EN, a.DESC_EN) as DESC_EN, NVL(b.D1, a.D1) as D1 FROM ( SELECT '-' as DESC_MN, '-' as DESC_EN, 0 as D1, " + mnth + " as MNTH FROM DUAL ) a LEFT JOIN ( SELECT DESC_MN, DESC_EN, D1, MNTH FROM TBL_EAFKI_MAIN WHERE TP = '2t2s2' AND YR=" + yr + " AND MNTH=" + mnth + " ) b ON a.MNTH=b.MNTH";
                rdr = myObj.OracleExecuteReader(qry);
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        if (lang == "mn")
                        {
                            if (rdr[0].ToString() == "2t2s1")
                            {
                                strTableVal += "<tr><td colspan=\"2\" style=\"font-weight:bold; padding-left:2em;border-bottom:1px solid #CCC;\">А. БОДЛОГЫН ХҮҮ</td></tr><tr><td style=\"padding-left:4em; text-align: justify;padding-top: 5px;\">" + rdr[1].ToString() + "</td><td style=\"text-align:right;font-size: 14px;\">" + rdr[3].ToString() + "%</td></tr><tr><td colspan=\"2\" style=\"text-align:right;font-size: 10px; font-style:italic;\">Эх сурвалж: МонголБанк</td></tr>";
                            }
                            else if (rdr[0].ToString() == "2t2s2")
                            {
                                strTableVal += "<tr><td colspan=\"2\" style=\"font-weight:bold; padding-left:2em;border-bottom:1px solid #CCC;padding-top: 5px;\">Б. ГАДААД ВАЛЮТЫН НӨӨЦ (сая ам.доллар)</td></tr><tr><td style=\"padding-left:4em; text-align: justify;padding-top: 5px;\">" + rdr[1].ToString() + "</td><td style=\"text-align:right;font-size: 14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[3].ToString())) + "</td></tr><tr><td colspan=\"2\" style=\"text-align:right;font-size: 10px; font-style:italic;\">Эх сурвалж: МонголБанк</td></tr>";
                            }
                        }
                        else
                        {
                            if (rdr[0].ToString() == "2t2s1")
                            {
                                strTableVal += "<tr><td colspan=\"2\" style=\"font-weight:bold; padding-left:2em;border-bottom:1px solid #CCC;\">А. POLICY RATE</td></tr><tr><td style=\"padding-left:4em; text-align: justify;padding-top: 5px;\">" + rdr[2].ToString() + "</td><td style=\"text-align:right;font-size: 14px;\">" + rdr[3].ToString() + "%</td></tr><tr><td colspan=\"2\" style=\"text-align:right;font-size: 10px; font-style:italic;\">Source: MongolBank</td></tr>";
                            }
                            else if (rdr[0].ToString() == "2t2s2")
                            {
                                strTableVal += "<tr><td colspan=\"2\" style=\"font-weight:bold; padding-left:2em;border-bottom:1px solid #CCC;padding-top: 5px;\">B. FOREIGN RESERVE (mln.USD)</td></tr><tr><td style=\"padding-left:4em; text-align: justify;padding-top: 5px;\">" + rdr[2].ToString() + "</td><td style=\"text-align:right;font-size: 14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[3].ToString())) + "</td></tr><tr><td colspan=\"2\" style=\"text-align:right;font-size: 10px; font-style:italic;\">Source: MongolBank</td></tr>";
                            }
                        }
                    }
                }
                rdr.Close();
                qry = "SELECT '2t2s3' as TP, SUM(BFR_D1) as BFR_D1, SUM(BFR_D2) as BFR_D2, SUM(BFR_D3) as BFR_D3, SUM(BFR_D4) as BFR_D4, SUM(CRT_D1) as CRT_D1, SUM(CRT_D2) as CRT_D2, SUM(CRT_D3) as CRT_D3, SUM(CRT_D4) as CRT_D4, CASE WHEN SUM(BFR_D1)=0 AND SUM(CRT_D1)=0 THEN 0 WHEN SUM(BFR_D1)=0 THEN 100 WHEN SUM(CRT_D1)=0 THEN -100 ELSE ROUND(((SUM(CRT_D1)/SUM(BFR_D1))-1)*100,1) END as PER_D1, CASE WHEN SUM(BFR_D2)=0 AND SUM(CRT_D2)=0 THEN 0 WHEN SUM(BFR_D2)=0 THEN 100 WHEN SUM(CRT_D2)=0 THEN -100 ELSE ROUND(((SUM(CRT_D2)/SUM(BFR_D2))-1)*100,1) END as PER_D2, CASE WHEN SUM(BFR_D3)=0 AND SUM(CRT_D3)=0 THEN 0 WHEN SUM(BFR_D3)=0 THEN 100 WHEN SUM(CRT_D3)=0 THEN -100 ELSE ROUND(((SUM(CRT_D3)/SUM(BFR_D3))-1)*100,1) END as PER_D3, CASE WHEN SUM(BFR_D4)=0 AND SUM(CRT_D4)=0 THEN 0 WHEN SUM(BFR_D4)=0 THEN 100 WHEN SUM(CRT_D4)=0 THEN -100 ELSE ROUND(((SUM(CRT_D4)/SUM(BFR_D4))-1)*100,1) END as PER_D4 FROM ( SELECT D1 as BFR_D1, D2 as BFR_D2, D3 as BFR_D3, D4 as BFR_D4, 0 as CRT_D1, 0 as CRT_D2, 0 as CRT_D3, 0 as CRT_D4 FROM TBL_EAFKI_MAIN WHERE TP = '2t2s3' AND YR=" + strBfrYr + " AND MNTH = " + strBfrMnth + " UNION ALL SELECT 0 as BFR_D1, 0 as BFR_D2, 0 as BFR_D3, 0 as BFR_D4, D1 as CRT_D1, D2 as CRT_D2, D3 as CRT_D3, D4 as CRT_D4 FROM TBL_EAFKI_MAIN WHERE TP = '2t2s3' AND YR=" + yr + " AND MNTH = " + mnth + " UNION ALL SELECT 0, 0, 0, 0, 0, 0, 0, 0 FROM DUAL UNION ALL SELECT 0, 0, 0, 0, 0, 0, 0, 0 FROM DUAL )";
                rdr = myObj.OracleExecuteReader(qry);
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        if (lang == "mn")
                        {
                            if (rdr[0].ToString() == "2t2s3")
                            {
                                strTableVal += "<tr><td colspan=\"2\" style=\"font-weight:bold; padding-left:2em;border-bottom:1px solid #CCC;padding-top: 5px;\">В. ВАЛЮТЫН ХАНШ</td></tr>";
                                strTableVal += "<tr><td colspan=\"2\"><table style=\"font: 11pt arial, sans-serif; width: 100%;\"><tbody><tr><td>&nbsp;</td><td style=\"font-weight:bold;padding-top: 5px;text-align: right;\">" + strBfrYr + "/" + strBfrMnth + "-р сар</td><td>&nbsp;</td><td style=\"font-weight:bold;text-align: right;\">" + yr + "/" + mnth + "-р сар</td></tr><tr><td style=\"padding-left:4em;padding-top: 5px;\">Ам.доллар</td><td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[1].ToString())) + "</td>";
                                if (Convert.ToDouble(rdr[9].ToString()) > 0) strTableVal += "<td style=\"text-align:right;\">" + rdr[9].ToString() + "% <i class=\"glyphicon glyphicon-arrow-up txt-color-green\"></i></td>";
                                else strTableVal += "<td style=\"text-align:right;\">" + rdr[9].ToString() + "% <i class=\"glyphicon glyphicon-arrow-down txt-color-red\"></i></td>";
                                strTableVal += "<td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[5].ToString())) + "</td></tr><tr><td style=\"padding-left:4em;padding-top: 5px;\">Эвро</td><td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[2].ToString())) + "</td>";
                                if (Convert.ToDouble(rdr[10].ToString()) > 0) strTableVal += "<td style=\"text-align:right;\">" + rdr[10].ToString() + "% <i class=\"glyphicon glyphicon-arrow-up txt-color-green\"></i></td>";
                                else strTableVal += "<td style=\"text-align:right;\">" + rdr[10].ToString() + "% <i class=\"glyphicon glyphicon-arrow-down txt-color-red\"></i></td>";
                                strTableVal += "<td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[6].ToString())) + "</td></tr><tr><td style=\"padding-left:4em;padding-top: 5px;\">Юань</td><td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[3].ToString())) + "</td>";
                                if (Convert.ToDouble(rdr[11].ToString()) > 0) strTableVal += "<td style=\"text-align:right;\">" + rdr[11].ToString() + "% <i class=\"glyphicon glyphicon-arrow-up txt-color-green\"></i></td>";
                                else strTableVal += "<td style=\"text-align:right;\">" + rdr[11].ToString() + "% <i class=\"glyphicon glyphicon-arrow-down txt-color-red\"></i></td>";
                                strTableVal += "<td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[7].ToString())) + "</td></tr><tr><td style=\"padding-left:4em;padding-top: 5px;\">Рубль</td><td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[4].ToString())) + "</td>";
                                if (Convert.ToDouble(rdr[12].ToString()) > 0) strTableVal += "<td style=\"text-align:right;\">" + rdr[12].ToString() + "% <i class=\"glyphicon glyphicon-arrow-up txt-color-green\"></i></td>";
                                else strTableVal += "<td style=\"text-align:right;\">" + rdr[12].ToString() + "% <i class=\"glyphicon glyphicon-arrow-down txt-color-red\"></i></td>";
                                strTableVal += "<td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[8].ToString())) + "</td></tr></tbody></table></td></tr>";
                                strTableVal += "<tr><td colspan=\"2\" style=\"text-align:right;font-size: 10px; font-style:italic;\">Эх сурвалж: МонголБанк</td></tr>";
                            }
                        }
                        else
                        {
                            if (rdr[0].ToString() == "2t2s3")
                            {
                                strTableVal += "<tr><td colspan=\"2\" style=\"font-weight:bold; padding-left:2em;border-bottom:1px solid #CCC;padding-top: 5px;\">C. EXCHANGE RATE</td></tr>";
                                strTableVal += "<tr><td colspan=\"2\"><table style=\"font: 11pt arial, sans-serif; width: 100%;\"><tbody><tr><td>&nbsp;</td><td style=\"font-weight:bold;padding-top: 5px;text-align: right;\">Average of " + new DateTime(Int32.Parse(strBfrYr), Int32.Parse(strBfrMnth), 1).ToString("MMM", CultureInfo.InvariantCulture) + " " + strBfrYr + "</td><td>&nbsp;</td><td style=\"font-weight:bold;text-align: right;\">Average of " + new DateTime(Int32.Parse(yr), Int32.Parse(mnth), 1).ToString("MMM", CultureInfo.InvariantCulture) + " " + yr + "</td></tr><tr><td style=\"padding-left:4em;padding-top: 5px;\">USD</td><td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[1].ToString())) + "</td>";
                                if (Convert.ToDouble(rdr[9].ToString()) > 0) strTableVal += "<td style=\"text-align:right;\">" + rdr[9].ToString() + "% <i class=\"glyphicon glyphicon-arrow-up txt-color-green\"></i></td>";
                                else strTableVal += "<td style=\"text-align:right;\">" + rdr[9].ToString() + "% <i class=\"glyphicon glyphicon-arrow-down txt-color-red\"></i></td>";
                                strTableVal += "<td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[5].ToString())) + "</td></tr><tr><td style=\"padding-left:4em;padding-top: 5px;\">EUR</td><td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[2].ToString())) + "</td>";
                                if (Convert.ToDouble(rdr[10].ToString()) > 0) strTableVal += "<td style=\"text-align:right;\">" + rdr[10].ToString() + "% <i class=\"glyphicon glyphicon-arrow-up txt-color-green\"></i></td>";
                                else strTableVal += "<td style=\"text-align:right;\">" + rdr[10].ToString() + "% <i class=\"glyphicon glyphicon-arrow-down txt-color-red\"></i></td>";
                                strTableVal += "<td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[6].ToString())) + "</td></tr><tr><td style=\"padding-left:4em;padding-top: 5px;\">CNY</td><td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[3].ToString())) + "</td>";
                                if (Convert.ToDouble(rdr[11].ToString()) > 0) strTableVal += "<td style=\"text-align:right;\">" + rdr[11].ToString() + "% <i class=\"glyphicon glyphicon-arrow-up txt-color-green\"></i></td>";
                                else strTableVal += "<td style=\"text-align:right;\">" + rdr[11].ToString() + "% <i class=\"glyphicon glyphicon-arrow-down txt-color-red\"></i></td>";
                                strTableVal += "<td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[7].ToString())) + "</td></tr><tr><td style=\"padding-left:4em;padding-top: 5px;\">RUB</td><td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[4].ToString())) + "</td>";
                                if (Convert.ToDouble(rdr[12].ToString()) > 0) strTableVal += "<td style=\"text-align:right;\">" + rdr[12].ToString() + "% <i class=\"glyphicon glyphicon-arrow-up txt-color-green\"></i></td>";
                                else strTableVal += "<td style=\"text-align:right;\">" + rdr[12].ToString() + "% <i class=\"glyphicon glyphicon-arrow-down txt-color-red\"></i></td>";
                                strTableVal += "<td style=\"text-align:right; font-size:14px;\">" + String.Format("{0:n}", Convert.ToDouble(rdr[8].ToString())) + "</td></tr></tbody></table></td></tr>";
                                strTableVal += "<tr><td colspan=\"2\" style=\"text-align:right;font-size: 10px; font-style:italic;\">Source: МонголBank</td></tr>";
                            }
                        }
                    }
                }
                rdr.Close();
                if (lang == "mn")
                {
                    strTableVal += "<tr><td colspan=\"2\" style=\"font-weight:bold; padding-left:2em;border-bottom:1px solid #CCC;padding-top: 5px;\">Г. ЗЭЭЛЖИХ ЗЭРЭГЛЭЛ</td></tr>";
                    strTableVal += "<tr><td style=\"padding-left:4em; text-align: justify;padding-top: 5px;\">S&P</td><td>B+ (2014.04.29) from BB-</td></tr><tr><td style=\"padding-left:4em; text-align: justify;padding-top: 5px;\">Moody's</td><td>B1 (stable)  (2009)</td></tr><tr><td style=\"padding-left:4em; text-align: justify;padding-top: 5px;\">Fitch</td><td>B+ (neg) (2013.12.13)</td></tr><tr><td colspan=\"2\" style=\"text-align:right;font-size: 10px; font-style:italic; height: 10px; vertical-align: bottom;\">Эх сурвалж: Зэрэглэл тогтоогч ОУБ</td></tr> ";
                }
                else
                {
                    strTableVal += "<tr><td colspan=\"2\" style=\"font-weight:bold; padding-left:2em;border-bottom:1px solid #CCC;padding-top: 5px;\">D. CREDIT RATING</td></tr>";
                    strTableVal += "<tr><td style=\"padding-left:4em; text-align: justify;padding-top: 5px;\">S&P</td><td>B+ (2014.04.29) from BB-</td></tr><tr><td style=\"padding-left:4em; text-align: justify;padding-top: 5px;\">Moody's</td><td>B1 (stable)  (2009)</td></tr><tr><td style=\"padding-left:4em; text-align: justify;padding-top: 5px;\">Fitch</td><td>B+ (neg) (2013.12.13)</td></tr><tr><td colspan=\"2\" style=\"text-align:right;font-size: 10px; font-style:italic; height: 10px; vertical-align: bottom;\">Source: Credit rating companies</td></tr> ";
                }
                myObj.DBDisconnect();
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string eafkiTab1s3Datas(string yr, string mnth, string lang)
        {
            ModifyDB myObj = new ModifyDB();
             GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "";
                string strVal = "";
                string qry = "SELECT ( SELECT ROUND(NVL(SUM(D1),0)/1000000,1) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s2' AND YR=" + yr + " )||'~'||( SELECT ROUND(NVL(SUM(CASE WHEN MNTH<(" + mnth + "+1) THEN D1 ELSE 0 END),0)/1000000,1) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s2' AND YR=" + yr + " )||'~'||( SELECT ROUND(NVL(SUM(D1),0)/1000000,1) as DATA3 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + yr + " AND MNTH=" + mnth + " )||'~'||( SELECT ROUND(NVL(SUM(D2),0)/1000000,1) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s2' AND YR=" + yr + " )||'~'||( SELECT ROUND(NVL(SUM(CASE WHEN MNTH<(" + mnth + "+1) THEN D2 ELSE 0 END),0)/1000000,1) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s2' AND YR=" + yr + " )||'~'||( SELECT ROUND(NVL(SUM(D2),0)/1000000,1) as DATA3 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + yr + " AND MNTH=" + mnth + " )||'~'||( SELECT ROUND(NVL(SUM(D4),0)/1000000,1) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s2' AND YR=" + yr + " AND MNTH=12 )||'~'||( SELECT ROUND(NVL(SUM(D4),0)/1000000,1) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + yr + " AND MNTH=" + mnth + " )||'~'||( SELECT ROUND(NVL(SUM(D3),0)/1000000,1) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s2' AND YR=" + yr + ")||'~'||(SELECT ROUND(NVL(SUM(CASE WHEN MNTH<(" + mnth + "+1) THEN D3 ELSE 0 END),0)/1000000,1) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s2' AND YR=" + yr + ")||'~'||(SELECT ROUND(NVL(SUM(D3),0)/1000000,1) as DATA3 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + yr + " AND MNTH=" + mnth + ")||'~'||(SELECT ROUND(NVL(SUM(D2),0)/1000000000,1) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s3' AND YR=" + yr + " AND MNTH=" + mnth + ")||'~'||(SELECT ROUND(NVL(SUM(D7),0)/1000000000,1) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s3' AND YR=" + yr + " AND MNTH=" + mnth + ")||'~'||(SELECT ROUND(NVL(SUM(D3),0)/1000000000,1) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s3' AND YR=" + yr + " AND MNTH=" + mnth + ")||'~'||(SELECT ROUND(NVL(SUM(D4),0)/1000000000,1) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s3' AND YR=" + yr + " AND MNTH=" + mnth + ")||'~'||(SELECT ROUND(NVL(SUM(D5),0)/1000000000,1) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s3' AND YR=" + yr + " AND MNTH=" + mnth + ")||'~'||(SELECT ROUND(NVL(SUM(D3),0)/CASE WHEN (NVL(SUM(D6),0)+NVL(SUM(D7),0))=0 THEN 1 ELSE (NVL(SUM(D6),0)+NVL(SUM(D7),0)) END,2) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s3' AND YR=" + yr + " AND MNTH=" + mnth + ")||'~'||(SELECT ROUND(NVL(SUM(D1),0),1) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t4s1' AND YR=" + yr + " AND MNTH=" + getMnthToQrtr(mnth) + ")||'~'||(SELECT ROUND(NVL(SUM(D2),0),1) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t4s1' AND YR=" + yr + " AND MNTH=" + getMnthToQrtr(mnth) + ")||'~'||(SELECT ROUND(NVL(SUM(D3),0),1) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t4s1' AND YR=" + yr + " AND MNTH=" + getMnthToQrtr(mnth) + ")||'~'||(SELECT ROUND(NVL(SUM(D4),0),1) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t4s1' AND YR=" + yr + " AND MNTH=" + getMnthToQrtr(mnth) + ")||'~'||( SELECT ROUND(NVL(SUM(D5),0),1) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t4s1' AND YR=" + yr + " AND MNTH=" + getMnthToQrtr(mnth) + ") as DATAS FROM DUAL";
                strVal = myObj.OracleExecuteScalar(qry).ToString();
                if (lang == "mn")
                {
                    strTableVal += "<div style=\"width:31.3%; border-left: none; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Жилийн төлөвлөгөө</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[0])) + "</div></div><div style=\"width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Эхний " + mnth + " сарын төлөвлөгөө</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[1])) + "</div></div><div style=\"width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Гүйцэтгэл</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[2])) + "</div></div>~";
                    strTableVal += "<div style=\"width:31.3%; border-left: none; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Жилийн төлөвлөгөө</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[3])) + "</div></div><div style=\"width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Эхний " + mnth + " сарын төлөвлөгөө</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[4])) + "</div></div><div style=\"width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Гүйцэтгэл</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[5])) + "</div></div>~";
                    strTableVal += "<div style=\"width:47.3%; border-left: none; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Жилийн ашиг/алдагдал (тэрбүм.төг)</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[6])) + "</div></div><div style=\"width:47.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Нийт тэнцэл/эхний " + mnth + " сарын төлөвлөгөө</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[7])) + "</div></div>~";
                    strTableVal += "<div style=\"width:31.3%; border-left: none; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Жилийн төлөвлөгөө</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[8])) + "</div></div><div style=\"width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Эхний " + mnth + " сарын төлөвлөгөө</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[9])) + "</div></div><div style=\"width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Гүйцэтгэл</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[10])) + "</div></div>~";
                    strTableVal += "<div style=\"width:31.3%; border-left: none; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Мөнгөн хөрөнгийн дундаж үлдэгдэл " + mnth + " сар</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[11])) + "</div></div><div style=\"width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Богино хугацаат хадгаламж</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[12])) + "</div></div><div style=\"width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Улсын төсөв</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[13])) + "</div></div>~";
                    strTableVal += "<div style=\"width:31.3%; border-left: none; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Орон нутгийн төсөв</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[14])) + "</div></div><div style=\"width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>НДС</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[15])) + "</div></div><div style=\"width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Төлбөр түргэн гүйцэтгэх чадвар</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[16])) + "</div></div>~";
                    strTableVal += "<tr><td colspan=\"3\" style=\"font-weight:bold; text-align:center; padding-bottom:30px;\">А. ЗАСГИЙН ГАЗРЫН ӨРИЙН БҮТЭЦ (тэрбүм төг, " + yr + " " + mnth.Replace("1", "1").Replace("2", "1").Replace("3", "1").Replace("4", "2").Replace("5", "2").Replace("6", "2").Replace("7", "3").Replace("8", "3").Replace("9", "3").Replace("10", "4").Replace("11", "4").Replace("12", "4") + " улирал)</td></tr><tr><td colspan=\"2\" style=\"font-weight:bold; text-align:center;vertical-align: top;height: 25px;\">Нийт өр</td><td style=\"text-align:right; font-weight:bold; font-size: 14px;vertical-align: top;\">" + String.Format("{0:n}", (Convert.ToDouble(strVal.Split('~')[17]) + Convert.ToDouble(strVal.Split('~')[18]) + Convert.ToDouble(strVal.Split('~')[19]) + Convert.ToDouble(strVal.Split('~')[20]))) + "</td></tr><tr><td>Гадаад зээл</td><td style=\"text-align:right;\">" + Math.Round((Convert.ToDouble(strVal.Split('~')[17]) / (Convert.ToDouble(strVal.Split('~')[17]) + Convert.ToDouble(strVal.Split('~')[18]) + Convert.ToDouble(strVal.Split('~')[19]) + Convert.ToDouble(strVal.Split('~')[20]))) * 100, 1).ToString() + "%</td><td style=\"text-align:right; font-size: 14px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[17])) + "</td></tr><tr><td>Дотоод үнэт цаас</td><td style=\"text-align:right;\">" + Math.Round((Convert.ToDouble(strVal.Split('~')[18]) / (Convert.ToDouble(strVal.Split('~')[17]) + Convert.ToDouble(strVal.Split('~')[18]) + Convert.ToDouble(strVal.Split('~')[19]) + Convert.ToDouble(strVal.Split('~')[20]))) * 100, 1).ToString() + "%</td><td style=\"text-align:right; font-size: 14px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[18])) + "</td></tr><tr><td>Гадаад үнэт цаас</td><td style=\"text-align:right;\">" + Math.Round((Convert.ToDouble(strVal.Split('~')[19]) / (Convert.ToDouble(strVal.Split('~')[17]) + Convert.ToDouble(strVal.Split('~')[18]) + Convert.ToDouble(strVal.Split('~')[19]) + Convert.ToDouble(strVal.Split('~')[20]))) * 100, 1).ToString() + "%</td><td style=\"text-align:right; font-size: 14px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[19])) + "</td></tr><tr><td>Бусад</td><td style=\"text-align:right;\">" + Math.Round((Convert.ToDouble(strVal.Split('~')[20]) / (Convert.ToDouble(strVal.Split('~')[17]) + Convert.ToDouble(strVal.Split('~')[18]) + Convert.ToDouble(strVal.Split('~')[19]) + Convert.ToDouble(strVal.Split('~')[20]))) * 100, 1).ToString() + "%</td><td style=\"text-align:right; font-size: 14px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[20])) + "</td></tr><tr style=\"font-style:italic;\"><td colspan=\"2\">Баталгаа</td><td style=\"text-align:right; font-size: 14px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[21])) + "</td></tr>~";
                }
                else
                {
                    strTableVal += "<div style=\"width:31.3%; border-left: none; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Annual planned (bln.MNT)</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[0])) + "</div></div><div style=\"width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>First " + mnth + " month plan</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[1])) + "</div></div><div style=\"width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Completion</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[2])) + "</div></div>~";
                    strTableVal += "<div style=\"width:31.3%; border-left: none; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Annual planned (bln.MNT)</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[3])) + "</div></div><div style=\"width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>First " + mnth + " month plan</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[4])) + "</div></div><div style=\"width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Completion</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[5])) + "</div></div>~";
                    strTableVal += "<div style=\"width:47.3%; border-left: none; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Annual surplus/deficit (bln.MNT)</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[6])) + "</div></div><div style=\"width:47.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Total balance/first " + mnth + " month plan</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[7])) + "</div></div>~";
                    strTableVal += "<div style=\"width:31.3%; border-left: none; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Annual planned (bln.MNT)</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[8])) + "</div></div><div style=\"width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>First " + mnth + " month plan</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[9])) + "</div></div><div style=\"width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Completion</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[10])) + "</div></div>~";
                    strTableVal += "<div style=\"width:31.3%; border-left: none; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Average cash balance, for month " + mnth + "</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[11])) + "</div></div><div style=\"width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Short-term savings</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[12])) + "</div></div><div style=\"width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Central Government budget</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[13])) + "</div></div>~";
                    strTableVal += "<div style=\"width:31.3%; border-left: none; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Local Government budget</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[14])) + "</div></div><div style=\"width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Social insurance fund</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[15])) + "</div></div><div style=\"width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;\"><div>Liquidity</div><div style=\"font-size: 19px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[16])) + "</div></div>~";
                    strTableVal += "<tr><td colspan=\"3\" style=\"font-weight:bold; text-align:center; padding-bottom:30px;\">A. GOVERNMENT DEBT STRUCTURE (bln.MNT, " + yr + " Quarter " + mnth.Replace("1", "1").Replace("2", "1").Replace("3", "1").Replace("4", "2").Replace("5", "2").Replace("6", "2").Replace("7", "3").Replace("8", "3").Replace("9", "3").Replace("10", "4").Replace("11", "4").Replace("12", "4") + ")</td></tr><tr><td colspan=\"2\" style=\"font-weight:bold; text-align:center;vertical-align: top;height: 25px;\">Total debt</td><td style=\"text-align:right; font-weight:bold; font-size: 14px;vertical-align: top;\">" + String.Format("{0:n}", (Convert.ToDouble(strVal.Split('~')[17]) + Convert.ToDouble(strVal.Split('~')[18]) + Convert.ToDouble(strVal.Split('~')[19]) + Convert.ToDouble(strVal.Split('~')[20]))) + "</td></tr><tr><td>Foreign debt</td><td style=\"text-align:right;\">" + Math.Round((Convert.ToDouble(strVal.Split('~')[17]) / (Convert.ToDouble(strVal.Split('~')[17]) + Convert.ToDouble(strVal.Split('~')[18]) + Convert.ToDouble(strVal.Split('~')[19]) + Convert.ToDouble(strVal.Split('~')[20]))) * 100, 1).ToString() + "%</td><td style=\"text-align:right; font-size: 14px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[17])) + "</td></tr><tr><td>Local bond</td><td style=\"text-align:right;\">" + Math.Round((Convert.ToDouble(strVal.Split('~')[18]) / (Convert.ToDouble(strVal.Split('~')[17]) + Convert.ToDouble(strVal.Split('~')[18]) + Convert.ToDouble(strVal.Split('~')[19]) + Convert.ToDouble(strVal.Split('~')[20]))) * 100, 1).ToString() + "%</td><td style=\"text-align:right; font-size: 14px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[18])) + "</td></tr><tr><td>Foreign bond</td><td style=\"text-align:right;\">" + Math.Round((Convert.ToDouble(strVal.Split('~')[19]) / (Convert.ToDouble(strVal.Split('~')[17]) + Convert.ToDouble(strVal.Split('~')[18]) + Convert.ToDouble(strVal.Split('~')[19]) + Convert.ToDouble(strVal.Split('~')[20]))) * 100, 1).ToString() + "%</td><td style=\"text-align:right; font-size: 14px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[19])) + "</td></tr><tr><td>Other</td><td style=\"text-align:right;\">" + Math.Round((Convert.ToDouble(strVal.Split('~')[20]) / (Convert.ToDouble(strVal.Split('~')[17]) + Convert.ToDouble(strVal.Split('~')[18]) + Convert.ToDouble(strVal.Split('~')[19]) + Convert.ToDouble(strVal.Split('~')[20]))) * 100, 1).ToString() + "%</td><td style=\"text-align:right; font-size: 14px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[20])) + "</td></tr><tr style=\"font-style:italic;\"><td colspan=\"2\">Guarantee</td><td style=\"text-align:right; font-size: 14px;\">" + String.Format("{0:n}", Convert.ToDouble(strVal.Split('~')[21])) + "</td></tr>~";
                }
                myObj.DBDisconnect();
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
        public string eafkiTab1s3Charts(string yr, string mnth, string lang)
        {
            ModifyDB myObj = new ModifyDB();
             
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!checkUserSession()) throw new cs.LMException("SessionDied");
                string strTableVal = "";
                OracleDataReader rdr;
                string strBfrYr1 = "", strBfrYr2 = "", strBfrMnth1 = "", strBfrMnth2 = "";
                string strNextYr1 = "", strNextMnth1 = "";
                string qrtr = "";
                if (mnth == "1") qrtr = "1";
                else if (mnth == "2") qrtr = "1";
                else if (mnth == "3") qrtr = "1";
                else if (mnth == "4") qrtr = "2";
                else if (mnth == "5") qrtr = "2";
                else if (mnth == "6") qrtr = "2";
                else if (mnth == "7") qrtr = "3";
                else if (mnth == "8") qrtr = "3";
                else if (mnth == "9") qrtr = "3";
                else if (mnth == "10") qrtr = "4";
                else if (mnth == "11") qrtr = "4";
                else if (mnth == "12") qrtr = "4";
                if (mnth == "2")
                {
                    strBfrYr1 = (Int32.Parse(yr) - 1).ToString();
                    strBfrYr2 = yr;
                    strBfrMnth1 = "12";
                    strBfrMnth2 = "1";
                    strNextYr1 = yr;
                    strNextMnth1 = (Int32.Parse(mnth) + 1).ToString();
                }
                else if (mnth == "1")
                {
                    strBfrYr1 = (Int32.Parse(yr) - 1).ToString();
                    strBfrYr2 = (Int32.Parse(yr) - 1).ToString();
                    strBfrMnth1 = "11";
                    strBfrMnth2 = "12";
                    strNextYr1 = yr;
                    strNextMnth1 = (Int32.Parse(mnth) + 1).ToString();
                }
                else
                {
                    strBfrYr1 = yr;
                    strBfrYr2 = yr;
                    strBfrMnth1 = (Int32.Parse(mnth) - 2).ToString();
                    strBfrMnth2 = (Int32.Parse(mnth) - 1).ToString();
                    if (mnth == "12")
                    {
                        strNextYr1 = (Int32.Parse(yr) + 1).ToString();
                        strNextMnth1 = "1";
                    }
                    else
                    {
                        strNextYr1 = yr;
                        strNextMnth1 = (Int32.Parse(mnth) + 1).ToString();
                    }
                }
                string qry = "";

                qry = "SELECT YR||'/'||MNTH as DT, SUM(DATA1) as DATA1, SUM(DATA2) as DATA2, ROUND((SUM(DATA2)/CASE WHEN SUM(DATA1)=0 THEN 1 ELSE SUM(DATA1) END)*100,0) as PER FROM ( SELECT " + strBfrYr1 + " as YR, " + strBfrMnth1 + " as MNTH, ROUND(NVL(SUM(CASE WHEN MNTH<(" + strBfrMnth1 + "+1) THEN D1 ELSE 0 END),0)/1000000,1) as DATA1, 0 as DATA2 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s2' AND YR=" + strBfrYr1 + " UNION ALL SELECT " + strBfrYr1 + " as YR, " + strBfrMnth1 + " as MNTH, 0 as DATA1, ROUND(NVL(SUM(D1),0)/1000000,1) as DATA2 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + strBfrYr1 + " AND MNTH=" + strBfrMnth1 + " UNION ALL SELECT " + strBfrYr2 + " as YR, " + strBfrMnth2 + " as MNTH, ROUND(NVL(SUM(CASE WHEN MNTH<(" + strBfrMnth2 + "+1) THEN D1 ELSE 0 END),0)/1000000,1) as DATA1, 0 as DATA2 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s2' AND YR=" + strBfrYr2 + " UNION ALL SELECT " + strBfrYr2 + " as YR, " + strBfrMnth2 + " as MNTH, 0 as DATA1, ROUND(NVL(SUM(D1),0)/1000000,1) as DATA2 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + strBfrYr2 + " AND MNTH=" + strBfrMnth2 + " UNION ALL SELECT " + yr + " as YR, " + mnth + " as MNTH, ROUND(NVL(SUM(CASE WHEN MNTH<(" + mnth + "+1) THEN D1 ELSE 0 END),0)/1000000,1) as DATA1, 0 as DATA2 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s2' AND YR=" + yr + " UNION ALL SELECT " + yr + " as YR, " + mnth + " as MNTH, 0 as DATA1, ROUND(NVL(SUM(D1),0)/1000000,1) as DATA2 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + yr + " AND MNTH=" + mnth + " ) GROUP BY YR, MNTH ORDER BY YR, MNTH";
                if (lang == "mn") strTableVal += "{\"cols\": [{ \"id\": \"\", \"label\": \"Сар\", \"pattern\": \"\", \"type\": \"string\" },{ \"id\": \"\", \"label\": \"Төлөвлөгөө\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"Гүйцэтгэл\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"Хувь\", \"pattern\": \"\", \"type\": \"number\" }],\"rows\": [";
                else strTableVal += "{\"cols\": [{ \"id\": \"\", \"label\": \"Month\", \"pattern\": \"\", \"type\": \"string\" },{ \"id\": \"\", \"label\": \"Plan\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"Completion\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"Percent\", \"pattern\": \"\", \"type\": \"number\" }],\"rows\": [";
                rdr = myObj.OracleExecuteReader(qry);
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        strTableVal += "{ \"c\": [{ \"v\": \"" + rdr[0].ToString() + "\", \"f\": null }, { \"v\": " + rdr[1].ToString() + ", \"f\": null }, { \"v\": \"" + rdr[2].ToString() + "\", \"f\": null }, { \"v\": \"." + rdr[3].ToString() + "\", \"f\": null }] },";
                    }
                }
                strTableVal = strTableVal.Remove(strTableVal.Length - 1);
                strTableVal += "]}~";
                rdr.Close();

                qry = "SELECT YR||'/'||MNTH as DT, SUM(DATA1) as DATA1, SUM(DATA2) as DATA2, ROUND((SUM(DATA2)/CASE WHEN SUM(DATA1)=0 THEN 1 ELSE SUM(DATA1) END)*100,0) as PER FROM ( SELECT " + strBfrYr1 + " as YR, " + strBfrMnth1 + " as MNTH, ROUND(NVL(SUM(CASE WHEN MNTH<(" + strBfrMnth1 + "+1) THEN D2 ELSE 0 END),0)/1000000,1) as DATA1, 0 as DATA2 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s2' AND YR=" + strBfrYr1 + " UNION ALL SELECT " + strBfrYr1 + " as YR, " + strBfrMnth1 + " as MNTH, 0 as DATA1, ROUND(NVL(SUM(D2),0)/1000000,1) as DATA2 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + strBfrYr1 + " AND MNTH=" + strBfrMnth1 + " UNION ALL SELECT " + strBfrYr2 + " as YR, " + strBfrMnth2 + " as MNTH, ROUND(NVL(SUM(CASE WHEN MNTH<(" + strBfrMnth2 + "+1) THEN D2 ELSE 0 END),0)/1000000,1) as DATA1, 0 as DATA2 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s2' AND YR=" + strBfrYr2 + " UNION ALL SELECT " + strBfrYr2 + " as YR, " + strBfrMnth2 + " as MNTH, 0 as DATA1, ROUND(NVL(SUM(D2),0)/1000000,1) as DATA2 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + strBfrYr2 + " AND MNTH=" + strBfrMnth2 + " UNION ALL SELECT " + yr + " as YR, " + mnth + " as MNTH, ROUND(NVL(SUM(CASE WHEN MNTH<(" + mnth + "+1) THEN D2 ELSE 0 END),0)/1000000,1) as DATA1, 0 as DATA2 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s2' AND YR=" + yr + " UNION ALL SELECT " + yr + " as YR, " + mnth + " as MNTH, 0 as DATA1, ROUND(NVL(SUM(D2),0)/1000000,1) as DATA2 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + yr + " AND MNTH=" + mnth + " ) GROUP BY YR, MNTH ORDER BY YR, MNTH";
                if (lang == "mn") strTableVal += "{\"cols\": [{ \"id\": \"\", \"label\": \"Сар\", \"pattern\": \"\", \"type\": \"string\" },{ \"id\": \"\", \"label\": \"Төлөвлөгөө\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"Гүйцэтгэл\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"Хувь\", \"pattern\": \"\", \"type\": \"number\" }],\"rows\": [";
                else strTableVal += "{\"cols\": [{ \"id\": \"\", \"label\": \"Month\", \"pattern\": \"\", \"type\": \"string\" },{ \"id\": \"\", \"label\": \"Plan\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"Completion\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"Percent\", \"pattern\": \"\", \"type\": \"number\" }],\"rows\": [";
                rdr = myObj.OracleExecuteReader(qry);
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        strTableVal += "{ \"c\": [{ \"v\": \"" + rdr[0].ToString() + "\", \"f\": null }, { \"v\": " + rdr[1].ToString() + ", \"f\": null }, { \"v\": \"" + rdr[2].ToString() + "\", \"f\": null }, { \"v\": \"." + rdr[3].ToString() + "\", \"f\": null }] },";
                    }
                }
                strTableVal = strTableVal.Remove(strTableVal.Length - 1);
                strTableVal += "]}~";
                rdr.Close();

                qry = "SELECT YR||'/'||MNTH as DT, SUM(DATA1) as DATA1, SUM(DATA2) as DATA2, SUM(DATA3) as DATA3 FROM (SELECT " + strBfrYr1 + " as YR, " + strBfrMnth1 + " as MNTH, ROUND((NVL((SELECT SUM(D1) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + strBfrYr1 + " AND MNTH=" + strBfrMnth1 + "),0)";
                if (strBfrMnth1 != "1") qry += "-NVL((SELECT SUM(D1) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + strBfrYr1 + " AND MNTH=" + (Int32.Parse(strBfrMnth1) - 1) + "),0)";
                qry += ")/1000000,1) as DATA1, 0 as DATA2, 0 as DATA3 FROM DUAL UNION ALL SELECT " + strBfrYr1 + " as YR, " + strBfrMnth1 + " as MNTH, 0 as DATA1, ROUND((NVL((SELECT SUM(D2) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + strBfrYr1 + " AND MNTH=" + strBfrMnth1 + "),0)";
                if (strBfrMnth1 != "1") qry += "-NVL((SELECT SUM(D2) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + strBfrYr1 + " AND MNTH=" + (Int32.Parse(strBfrMnth1) - 1) + "),0)";
                qry += ")/1000000,1) as DATA2, 0 as DATA3 FROM DUAL UNION ALL SELECT " + strBfrYr1 + " as YR, " + strBfrMnth1 + " as MNTH, 0 as DATA1, 0 as DATA2, ROUND(SUM(D4)/1000000,1) as DATA3 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + strBfrYr1 + " AND MNTH=" + strBfrMnth1 + " UNION ALL SELECT " + strBfrYr2 + " as YR, " + strBfrMnth2 + " as MNTH, ROUND((NVL((SELECT SUM(D1) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + strBfrYr2 + " AND MNTH=" + strBfrMnth2 + "),0)";
                if (strBfrMnth2 != "1") qry += "-NVL((SELECT SUM(D1) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + strBfrYr2 + " AND MNTH=" + (Int32.Parse(strBfrMnth2) - 1) + "),0)";
                qry += ")/1000000,1) as DATA1, 0 as DATA2, 0 as DATA3 FROM DUAL UNION ALL SELECT " + strBfrYr2 + " as YR, " + strBfrMnth2 + " as MNTH, 0 as DATA1, ROUND((NVL((SELECT SUM(D2) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + strBfrYr2 + " AND MNTH=" + strBfrMnth2 + "),0)";
                if (strBfrMnth2 != "1") qry += "-NVL((SELECT SUM(D2) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + strBfrYr2 + " AND MNTH=" + (Int32.Parse(strBfrMnth2) - 1) + "),0)";
                qry += ")/1000000,1) as DATA2, 0 as DATA3 FROM DUAL UNION ALL SELECT " + strBfrYr2 + " as YR, " + strBfrMnth2 + " as MNTH, 0 as DATA1, 0 as DATA2, ROUND(SUM(D4)/1000000,1) as DATA3 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + strBfrYr2 + " AND MNTH=" + strBfrMnth2 + " UNION ALL SELECT " + yr + " as YR, " + mnth + " as MNTH, ROUND((NVL((SELECT SUM(D1) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + yr + " AND MNTH=" + mnth + "),0)";
                if (mnth != "1") qry += "-NVL((SELECT SUM(D1) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + yr + " AND MNTH=" + (Int32.Parse(mnth) - 1) + "),0)";
                qry += ")/1000000,1) as DATA1, 0 as DATA2, 0 as DATA3 FROM DUAL UNION ALL SELECT " + yr + " as YR, " + mnth + " as MNTH, 0 as DATA1, ROUND((NVL((SELECT SUM(D2) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + yr + " AND MNTH=" + mnth + "),0)";
                if (mnth != "1") qry += "-NVL((SELECT SUM(D2) as DATA1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + yr + " AND MNTH=" + (Int32.Parse(mnth) - 1) + "),0)";
                qry += ")/1000000,1) as DATA2, 0 as DATA3 FROM DUAL UNION ALL SELECT " + yr + " as YR, " + mnth + " as MNTH, 0 as DATA1, 0 as DATA2, ROUND(SUM(D4)/1000000,1) as DATA3 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + yr + " AND MNTH=" + mnth + " ) GROUP BY YR, MNTH ORDER BY YR, MNTH";
                if (lang == "mn") strTableVal += "{\"cols\": [{ \"id\": \"\", \"label\": \"Сар\", \"pattern\": \"\", \"type\": \"string\" },{ \"id\": \"\", \"label\": \"Орлого\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"Зарлага\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"Нийт тэнцэл\", \"pattern\": \"\", \"type\": \"number\" }],\"rows\": [";
                else strTableVal += "{\"cols\": [{ \"id\": \"\", \"label\": \"Month\", \"pattern\": \"\", \"type\": \"string\" },{ \"id\": \"\", \"label\": \"Income\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"Expenditure\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"Total balance\", \"pattern\": \"\", \"type\": \"number\" }],\"rows\": [";
                rdr = myObj.OracleExecuteReader(qry);
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        strTableVal += "{ \"c\": [{ \"v\": \"" + rdr[0].ToString() + "\", \"f\": null }, { \"v\": " + rdr[1].ToString() + ", \"f\": null }, { \"v\": \"" + rdr[2].ToString() + "\", \"f\": null }, { \"v\": \"" + rdr[3].ToString() + "\", \"f\": null }] },";
                    }
                }
                strTableVal = strTableVal.Remove(strTableVal.Length - 1);
                strTableVal += "]}~";
                rdr.Close();

                qry = "SELECT YR||'/'||MNTH as DT, SUM(DATA1) as DATA1, SUM(DATA2) as DATA2, ROUND((SUM(DATA2)/CASE WHEN SUM(DATA1)=0 THEN 1 ELSE SUM(DATA1) END)*100,0) as PER FROM ( SELECT " + strBfrYr1 + " as YR, " + strBfrMnth1 + " as MNTH, ROUND(NVL(SUM(CASE WHEN MNTH<(" + strBfrMnth1 + "+1) THEN D3 ELSE 0 END),0)/1000000,1) as DATA1, 0 as DATA2 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s2' AND YR=" + strBfrYr1 + " UNION ALL SELECT " + strBfrYr1 + " as YR, " + strBfrMnth1 + " as MNTH, 0 as DATA1, ROUND(NVL(SUM(D3),0)/1000000,1) as DATA2 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + strBfrYr1 + " AND MNTH=" + strBfrMnth1 + " UNION ALL SELECT " + strBfrYr2 + " as YR, " + strBfrMnth2 + " as MNTH, ROUND(NVL(SUM(CASE WHEN MNTH<(" + strBfrMnth2 + "+1) THEN D3 ELSE 0 END),0)/1000000,1) as DATA1, 0 as DATA2 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s2' AND YR=" + strBfrYr2 + " UNION ALL SELECT " + strBfrYr2 + " as YR, " + strBfrMnth2 + " as MNTH, 0 as DATA1, ROUND(NVL(SUM(D3),0)/1000000,1) as DATA2 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + strBfrYr2 + " AND MNTH=" + strBfrMnth2 + " UNION ALL SELECT " + yr + " as YR, " + mnth + " as MNTH, ROUND(NVL(SUM(CASE WHEN MNTH<(" + mnth + "+1) THEN D3 ELSE 0 END),0)/1000000,1) as DATA1, 0 as DATA2 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s2' AND YR=" + yr + " UNION ALL SELECT " + yr + " as YR, " + mnth + " as MNTH, 0 as DATA1, ROUND(NVL(SUM(D3),0)/1000000,1) as DATA2 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s1' AND YR=" + yr + " AND MNTH=" + mnth + " ) GROUP BY YR, MNTH ORDER BY YR, MNTH";
                if (lang == "mn") strTableVal += "{\"cols\": [{ \"id\": \"\", \"label\": \"Сар\", \"pattern\": \"\", \"type\": \"string\" },{ \"id\": \"\", \"label\": \"Төлөвлөгөө\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"Гүйцэтгэл\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"Хувь\", \"pattern\": \"\", \"type\": \"number\" }],\"rows\": [";
                else strTableVal += "{\"cols\": [{ \"id\": \"\", \"label\": \"Month\", \"pattern\": \"\", \"type\": \"string\" },{ \"id\": \"\", \"label\": \"Plan\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"Completion\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"Percent\", \"pattern\": \"\", \"type\": \"number\" }],\"rows\": [";
                rdr = myObj.OracleExecuteReader(qry);
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        strTableVal += "{ \"c\": [{ \"v\": \"" + rdr[0].ToString() + "\", \"f\": null }, { \"v\": " + rdr[1].ToString() + ", \"f\": null }, { \"v\": \"" + rdr[2].ToString() + "\", \"f\": null }, { \"v\": \"." + rdr[3].ToString() + "\", \"f\": null }] },";
                    }
                }
                strTableVal = strTableVal.Remove(strTableVal.Length - 1);
                strTableVal += "]}~";
                rdr.Close();

                qry = "SELECT YR||'/'||MNTH as DT, D7, D6, D5, D4, D3, D2, D1 FROM ( SELECT " + strBfrYr1 + " as YR, " + strBfrMnth1 + " as MNTH, ROUND(NVL(SUM(D7),0)/1000000000,1) as D7,ROUND(NVL(SUM(D6),0)/1000000000,1) as D6,ROUND(NVL(SUM(D5),0)/1000000000,1) as D5,ROUND(NVL(SUM(D4),0)/1000000000,1) as D4,ROUND(NVL(SUM(D3),0)/1000000000,1) as D3,ROUND(NVL(SUM(D2),0)/1000000000,1) as D2,ROUND(NVL(SUM(D1),0)/1000000000,1) as D1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s3' AND YR=" + strBfrYr1 + " AND MNTH=" + strBfrMnth1 + " UNION ALL SELECT " + strBfrYr2 + " as YR, " + strBfrMnth2 + " as MNTH, ROUND(NVL(SUM(D7),0)/1000000000,1) as D7,ROUND(NVL(SUM(D6),0)/1000000000,1) as D6,ROUND(NVL(SUM(D5),0)/1000000000,1) as D5,ROUND(NVL(SUM(D4),0)/1000000000,1) as D4,ROUND(NVL(SUM(D3),0)/1000000000,1) as D3,ROUND(NVL(SUM(D2),0)/1000000000,1) as D2,ROUND(NVL(SUM(D1),0)/1000000000,1) as D1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s3' AND YR=" + strBfrYr2 + " AND MNTH=" + strBfrMnth2 + " UNION ALL SELECT " + yr + " as YR, " + mnth + " as MNTH, ROUND(NVL(SUM(D7),0)/1000000000,1) as D7,ROUND(NVL(SUM(D6),0)/1000000000,1) as D6,ROUND(NVL(SUM(D5),0)/1000000000,1) as D5,ROUND(NVL(SUM(D4),0)/1000000000,1) as D4,ROUND(NVL(SUM(D3),0)/1000000000,1) as D3,ROUND(NVL(SUM(D2),0)/1000000000,1) as D2,ROUND(NVL(SUM(D1),0)/1000000000,1) as D1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s3' AND YR=" + yr + " AND MNTH=" + mnth + " UNION ALL SELECT " + strNextYr1 + " as YR, " + strNextMnth1 + " as MNTH, ROUND(NVL(SUM(D7),0)/1000000000,1) as D7,ROUND(NVL(SUM(D6),0)/1000000000,1) as D6,ROUND(NVL(SUM(D5),0)/1000000000,1) as D5,ROUND(NVL(SUM(D4),0)/1000000000,1) as D4,ROUND(NVL(SUM(D3),0)/1000000000,1) as D3,ROUND(NVL(SUM(D2),0)/1000000000,1) as D2,ROUND(NVL(SUM(D1),0)/1000000000,1) as D1 FROM TBL_EAFKI_MAIN WHERE TP = '2t3s3' AND YR=" + strNextYr1 + " AND MNTH=" + strNextMnth1 + " ) ORDER BY YR, MNTH";
                if (lang == "mn") strTableVal += "{\"cols\": [{ \"id\": \"\", \"label\": \"Сар\", \"pattern\": \"\", \"type\": \"string\" },{ \"id\": \"\", \"label\": \"Богино хугацаат хадгаламж\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"Валютын данс\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"НДС\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"ОН-ийн ТБ-ын данс\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"Улсын төсвийн данс\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"Мөнгөн хөрөнгийн үлдэгдэл\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"ТСНД-ны үлдэгдэл\", \"pattern\": \"\", \"type\": \"number\" }],\"rows\": [";
                else strTableVal += "{\"cols\": [{ \"id\": \"\", \"label\": \"Сар\", \"pattern\": \"\", \"type\": \"string\" },{ \"id\": \"\", \"label\": \"Богино хугацаат хадгаламж\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"Валютын данс\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"НДС\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"ОН-ийн ТБ-ын данс\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"Улсын төсвийн данс\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"Мөнгөн хөрөнгийн үлдэгдэл\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"ТСНД-ны үлдэгдэл\", \"pattern\": \"\", \"type\": \"number\" }],\"rows\": [";
                rdr = myObj.OracleExecuteReader(qry);
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        strTableVal += "{ \"c\": [{ \"v\": \"" + rdr[0].ToString() + "\", \"f\": null }, { \"v\": " + rdr[1].ToString() + ", \"f\": null }, { \"v\": \"" + rdr[2].ToString() + "\", \"f\": null }, { \"v\": \"" + rdr[3].ToString() + "\", \"f\": null }, { \"v\": \"" + rdr[4].ToString() + "\", \"f\": null }, { \"v\": \"" + rdr[5].ToString() + "\", \"f\": null }, { \"v\": \"" + rdr[6].ToString() + "\", \"f\": null }, { \"v\": \"" + rdr[7].ToString() + "\", \"f\": null }] },";
                    }
                }
                strTableVal = strTableVal.Remove(strTableVal.Length - 1);
                strTableVal += "]}~";
                rdr.Close();

                qry = "SELECT 'SDR '||NVL(ROUND(SUM(D1),2),0)||'%' as DATA1, NVL(ROUND(SUM(D1),2),0) as DATA2 FROM TBL_EAFKI_MAIN WHERE YR=" + yr + " AND MNTH=" + qrtr + " AND TP='2t4s2' UNION ALL SELECT 'JPY '||NVL(ROUND(SUM(D2),2),0)||'%' as DATA1, NVL(ROUND(SUM(D2),2),0) as DATA2 FROM TBL_EAFKI_MAIN WHERE YR=" + yr + " AND MNTH=" + qrtr + " AND TP='2t4s2' UNION ALL SELECT 'USD '||NVL(ROUND(SUM(D3),2),0)||'%' as DATA1, NVL(ROUND(SUM(D3),2),0) as DATA2 FROM TBL_EAFKI_MAIN WHERE YR=" + yr + " AND MNTH=" + qrtr + " AND TP='2t4s2' UNION ALL SELECT 'EUR '||NVL(ROUND(SUM(D4),2),0)||'%' as DATA1, NVL(ROUND(SUM(D4),2),0) as DATA2 FROM TBL_EAFKI_MAIN WHERE YR=" + yr + " AND MNTH=" + qrtr + " AND TP='2t4s2' UNION ALL SELECT 'KRW '||NVL(ROUND(SUM(D5),2),0)||'%' as DATA1, NVL(ROUND(SUM(D5),2),0) as DATA2 FROM TBL_EAFKI_MAIN WHERE YR=" + yr + " AND MNTH=" + qrtr + " AND TP='2t4s2' UNION ALL SELECT 'KWD '||NVL(ROUND(SUM(D6),2),0)||'%' as DATA1, NVL(ROUND(SUM(D6),2),0) as DATA2 FROM TBL_EAFKI_MAIN WHERE YR=" + yr + " AND MNTH=" + qrtr + " AND TP='2t4s2' UNION ALL SELECT 'MNT '||NVL(ROUND(SUM(D7),2),0)||'%' as DATA1, NVL(ROUND(SUM(D7),2),0) as DATA2 FROM TBL_EAFKI_MAIN WHERE YR=" + yr + " AND MNTH=" + qrtr + " AND TP='2t4s2' UNION ALL SELECT 'Other '||NVL(ROUND(SUM(D8),2),0)||'%' as DATA1, NVL(ROUND(SUM(D8),2),0) as DATA2 FROM TBL_EAFKI_MAIN WHERE YR=" + yr + " AND MNTH=" + qrtr + " AND TP='2t4s2'";
                strTableVal += "{\"cols\": [{ \"id\": \"\", \"label\": \"Currency\", \"pattern\": \"\", \"type\": \"string\" },{ \"id\": \"\", \"label\": \"Percent\", \"pattern\": \"\", \"type\": \"number\" }],\"rows\": [";
                rdr = myObj.OracleExecuteReader(qry);
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        strTableVal += "{ \"c\": [{ \"v\": \"" + rdr[0].ToString() + "\", \"f\": null }, { \"v\": " + rdr[1].ToString() + ", \"f\": null }] },";
                    }
                }
                strTableVal = strTableVal.Remove(strTableVal.Length - 1);
                strTableVal += "]}~";
                rdr.Close();

                qry = "SELECT YR||'/'||MNTH as DT, D1, D2, D3 FROM ( SELECT " + strBfrYr1 + " as YR, " + strBfrMnth1 + " as MNTH, ROUND((NVL(SUM(D1),0)+NVL(SUM(D2),0))/1000000,1) as D1,ROUND((NVL(SUM(D3),0)+NVL(SUM(D4),0))/1000000,1) as D2, ROUND((NVL(SUM(D5),0)+NVL(SUM(D6),0))/1000000,1) as D3 FROM TBL_EAFKI_MAIN WHERE TP='2t4s3' AND YR=" + strBfrYr1 + " AND MNTH=" + strBfrMnth1 + " UNION ALL SELECT " + strBfrYr2 + " as YR, " + strBfrMnth2 + " as MNTH, ROUND((NVL(SUM(D1),0)+NVL(SUM(D2),0))/1000000,1) as D1,ROUND((NVL(SUM(D3),0)+NVL(SUM(D4),0))/1000000,1) as D2, ROUND((NVL(SUM(D5),0)+NVL(SUM(D6),0))/1000000,1) as D3 FROM TBL_EAFKI_MAIN WHERE TP='2t4s3' AND YR=" + strBfrYr2 + " AND MNTH=" + strBfrMnth2 + " UNION ALL SELECT " + yr + " as YR, " + mnth + " as MNTH, ROUND((NVL(SUM(D1),0)+NVL(SUM(D2),0))/1000000,1) as D1,ROUND((NVL(SUM(D3),0)+NVL(SUM(D4),0))/1000000,1) as D2, ROUND((NVL(SUM(D5),0)+NVL(SUM(D6),0))/1000000,1) as D3 FROM TBL_EAFKI_MAIN WHERE TP='2t4s3' AND YR=" + yr + " AND MNTH=" + mnth + " UNION ALL SELECT " + strNextYr1 + " as YR, " + strNextMnth1 + " as MNTH, ROUND((NVL(SUM(D1),0)+NVL(SUM(D2),0))/1000000,1) as D1,ROUND((NVL(SUM(D3),0)+NVL(SUM(D4),0))/1000000,1) as D2, ROUND((NVL(SUM(D5),0)+NVL(SUM(D6),0))/1000000,1) as D3 FROM TBL_EAFKI_MAIN WHERE TP='2t4s3' AND YR=" + strNextYr1 + " AND MNTH=" + strNextMnth1 + ") ORDER BY YR, MNTH";
                if (lang == "mn") strTableVal += "{\"cols\": [{ \"id\": \"\", \"label\": \"Сар\", \"pattern\": \"\", \"type\": \"string\" },{ \"id\": \"\", \"label\": \"Гадаад зээлийн төлбөр\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"ЗГ-ын гадаад үнэт цаас\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"ЗГ-ын дотоод үнэт цаас\", \"pattern\": \"\", \"type\": \"number\" }],\"rows\": [";
                else strTableVal += "{\"cols\": [{ \"id\": \"\", \"label\": \"Month\", \"pattern\": \"\", \"type\": \"string\" },{ \"id\": \"\", \"label\": \"Foreign debt\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"foreign government securities\", \"pattern\": \"\", \"type\": \"number\" },{ \"id\": \"\", \"label\": \"domestic government securities\", \"pattern\": \"\", \"type\": \"number\" }],\"rows\": [";
                rdr = myObj.OracleExecuteReader(qry);
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        strTableVal += "{ \"c\": [{ \"v\": \"" + rdr[0].ToString() + "\", \"f\": null }, { \"v\": " + rdr[1].ToString() + ", \"f\": null }, { \"v\": " + rdr[2].ToString() + ", \"f\": null }, { \"v\": " + rdr[3].ToString() + ", \"f\": null }] },";
                    }
                }
                strTableVal = strTableVal.Remove(strTableVal.Length - 1);
                strTableVal += "]}~";
                rdr.Close();

                myObj.DBDisconnect();
                return strTableVal;
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                cs.WriteLogForEx.WriteLog(ex);
                throw ex;
            }
        }
    }
}