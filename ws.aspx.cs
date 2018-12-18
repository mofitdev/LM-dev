using LMWebApp.cs;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.OleDb;
using System.Data.OracleClient;
using System.DirectoryServices;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Security.Principal;
using System.Text;
using System.Web;
using System.Web.Hosting;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMWebApp
{
    public partial class ws1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LM_IsUser"] == null && Session["LM_UserID"] == null) Response.Redirect("~/login");
        }
        //global all pages


        [WebMethod]
        public static void gotoHRMIS(string stid)
        {
            HttpContext.Current.Session["HRMIS_UserID"] = stid;
        }
        [WebMethod]
        public static void gotoLM(string stid)
        {
            HttpContext.Current.Session["LM_UserID"] = stid;
        }

        //login
        [WebMethod]
        public static string loginCheckUser(string domainuser)
        {
            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["CMCDBBTConn"].ConnectionString);
            OracleCommand cmd;
            try
            {
                if (con.State == ConnectionState.Closed) con.Open();
                cmd = new OracleCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT ST_ID||'~'||SUBSTR(MNAME,1,1)||LOWER(SUBSTR(MNAME,2))||' '||SUBSTR(LNAME,1,1)||LOWER(SUBSTR(LNAME,2))||'~'||DOMAIN_USER FROM ST_STAFFS WHERE DOMAIN_USER = '"+domainuser+"'";
                cmd.Connection = con;
                return cmd.ExecuteScalar().ToString();
            }
            catch (NullReferenceException ex)
            {
                throw new cs.LMException("Ийм домайн хэрэглэгчийн нэр олдсонгүй.", ex);
            }
            catch (Exception ex)
            {
                throw new cs.LMException("Нэвтрэлт амжилтгүй боллоо.", ex);
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }
        [WebMethod]
        public static string loginCheckLogin(string domainuser, string pass, string remember)
        {
            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["CMCDBBTConn"].ConnectionString);
            OracleCommand cmd;
            try
            {
                DirectoryEntry dirEntry = null;
                int countEntry = 0;
                string stid = "";
                dirEntry = new DirectoryEntry("LDAP://mof.local", domainuser, pass, AuthenticationTypes.Secure);
                countEntry = dirEntry.Properties.Count;

                if (con.State == ConnectionState.Closed) con.Open();
                cmd = new OracleCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT ST_ID FROM ST_STAFFS WHERE DOMAIN_USER='" + domainuser + "' AND STATUS=0";
                cmd.Connection = con;
                stid = cmd.ExecuteScalar().ToString();

                cmd = new OracleCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT COUNT(1) FROM TBL_USER_ROLE WHERE USER_ID=" + stid;
                cmd.Connection = con;
                if (cmd.ExecuteScalar().ToString() == "0") throw new cs.LMException("Уг системд эрх аваагүй хэрэглэгч байна");

                if (remember == "1")
                {
                    cmd = new OracleCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "DELETE FROM TBL_USERSESSIONREGISTER WHERE SESSIONID='" + HttpContext.Current.Session.SessionID + "' AND DOMAIN_USER='" + domainuser + "'";
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();

                    cmd = new OracleCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "INSERT INTO TBL_USERSESSIONREGISTER (SESSIONID, DOMAIN_USER, LASTLOGINDATE) VALUES ('" + HttpContext.Current.Session.SessionID + "', '" + domainuser + "', sysdate)";
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                }

                HttpContext.Current.Session["LM_IsUser"] = "YEAS";
                HttpContext.Current.Session["LM_UserDomain"] = domainuser;
                HttpContext.Current.Session["LM_UserID"] = stid;
                return stid;
            }
            catch (DirectoryServicesCOMException ex)
            {
                if (ex.ErrorCode.Equals(-2147023570))
                    throw new cs.LMException("Нэвтрэх нэр эсвэл нууц үг буруу байна");
                else
                    throw new cs.LMException("Домайнтай холбогдож чадсангүй");
            }
            catch (cs.LMException ex) { throw ex; }
            catch (Exception ex)
            {
                throw new cs.LMException("Нэвтрэлт амжилтгүй боллоо.", ex);
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }
        //accountchooser
        [WebMethod]
        public static void accounchooserRemoveUser(string domainuser)
        {
            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["CMCDBBTConn"].ConnectionString);
            OracleCommand cmd;
            try
            {
                if (con.State == ConnectionState.Closed) con.Open();
                cmd = new OracleCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "DELETE FROM TBL_USERSESSIONREGISTER WHERE SESSIONID='" + HttpContext.Current.Session.SessionID + "' AND DOMAIN_USER='" + domainuser + "'";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new cs.LMException("Алдаа гарлаа.", ex);
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }
         [WebMethod]
        public static void WSSessionKill()
        {
            HttpContext.Current.Session["LM_IsUser"] = null;
            HttpContext.Current.Session["LM_UserDomain"] = null;
            HttpContext.Current.Session["LM_UserID"] = null;
        }
        [WebMethod]
        public static void WSOracleExecuteNonQueryForClient(string qry)
        {
            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["CMCDBBTConn"].ConnectionString);
            try
            {
                if (con.State == ConnectionState.Closed) con.Open();

                OracleCommand cmd = new OracleCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = qry;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
            }
            catch (cs.LMException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                throw ex;
            }
            catch (DbException ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                throw ex;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                throw ex;
            }
            finally
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                    con.Dispose();
                }
            }

        }
        [WebMethod]
        public static string WSMySqlExecuteScalarForClient(string qry)
        {
            try
            {
                ModifyDB myObj = new ModifyDB();
                return "1~" + myObj.MySqlExecuteScalar(qry);
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
        
        //*************************funccri*******************
        [WebMethod]
        public static string funccri_funccriTab1Datatable1(string yr, string brid)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                return myObjGetTableData.funccriTab1Datatable(yr, brid);
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
        [WebMethod]
        public static string funccri_funccriTab2Datatable1(string yr, string brid)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                return myObjGetTableData.funccriTab2Datatable(yr, brid);
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
        [WebMethod]
        public static string funccri_funccriTab2SuuriListForDDL(string yr)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                return myObjGetTableData.funccriTab2SuuriListForDDL(yr);
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
        [WebMethod]
        public static string funccri_funccriTab3Datatable1(string yr, string qrtr, string brid)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                return myObjGetTableData.funccriTab3Datatable(yr, qrtr, brid);
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
        [WebMethod]
        public static string funccri_funccriTab4Datatable1(string yr, string qrtr)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                return myObjGetTableData.funccriTab4Datatable(yr, qrtr);
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
        [WebMethod]
        public static string funccri_funccriTab4Column(string yr, string qrtr)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                return myObjGetTableData.funccriTab4Column(yr, qrtr);
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
        //*************************eafki*******************
        [WebMethod]
        public static string eafki_eafkiTab2t1s1(string yr)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                return myObjGetTableData.eafkiTab2t1s1(yr);
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
        [WebMethod]
        public static string eafki_eafkiTab2t1s2(string yr)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                return myObjGetTableData.eafkiTab2t1s2(yr);
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
        [WebMethod]
        public static string eafki_eafkiTab2t1s3(string yr)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                return myObjGetTableData.eafkiTab2t1s3(yr);
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
        [WebMethod]
        public static string eafki_eafkiTab2t2s1(string yr)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                return myObjGetTableData.eafkiTab2t2s1(yr);
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
        [WebMethod]
        public static string eafki_eafkiTab2t2s2(string yr)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                return myObjGetTableData.eafkiTab2t2s2(yr);
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
        [WebMethod]
        public static string eafki_eafkiTab2t2s3(string yr)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                return myObjGetTableData.eafkiTab2t2s3(yr);
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
        [WebMethod]
        public static string eafki_eafkiTab2t3s1(string yr)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                return myObjGetTableData.eafkiTab2t3s1(yr);
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
        [WebMethod]
        public static string eafki_eafkiTab2t3s2(string yr)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                return myObjGetTableData.eafkiTab2t3s2(yr);
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
        [WebMethod]
        public static string eafki_eafkiTab2t3s3(string yr)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                return myObjGetTableData.eafkiTab2t3s3(yr);
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
        [WebMethod]
        public static string eafki_eafkiTab2t4s1(string yr)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                return myObjGetTableData.eafkiTab2t4s1(yr);
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
        [WebMethod]
        public static string eafki_eafkiTab2t4s2(string yr)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                return myObjGetTableData.eafkiTab2t4s2(yr);
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
        [WebMethod]
        public static string eafki_eafkiTab2t4s3(string yr)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                return myObjGetTableData.eafkiTab2t4s3(yr);
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
        [WebMethod]
        public static string eafki_eafkiTab1s1(string yr, string mnth, string lang)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                return myObjGetTableData.eafkiTab1s1(yr, mnth, lang);
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
        [WebMethod]
        public static string eafki_eafkiTab1s2(string yr, string mnth, string lang)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                return myObjGetTableData.eafkiTab1s2(yr, mnth, lang);
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
        [WebMethod]
        public static string eafki_eafkiTab1s3Datas(string yr, string mnth, string lang)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                return myObjGetTableData.eafkiTab1s3Datas(yr, mnth, lang);
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
        [WebMethod]
        public static string eafki_eafkiTab1s3Charts(string yr, string mnth, string lang)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                return myObjGetTableData.eafkiTab1s3Charts(yr, mnth, lang);
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