using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMWebApp
{
    public partial class forclient : System.Web.UI.Page
    {
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["CMCDBBTConn"].ConnectionString);
        OracleCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {            
            string strVal="";
            try
            {
                if (con.State == ConnectionState.Closed) con.Open();
                cmd = new OracleCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT YR||'~'||MNTH||'~'||FILE_NAME FROM TBL_INTRACTIVEDATA WHERE INTRACTIVEDATA_TYPE=1 AND YR=(SELECT MAX(YR) FROM TBL_INTRACTIVEDATA WHERE INTRACTIVEDATA_TYPE=1) AND MNTH=(SELECT MAX(MNTH) FROM TBL_INTRACTIVEDATA WHERE INTRACTIVEDATA_TYPE=1 AND YR=(SELECT MAX(YR) FROM TBL_INTRACTIVEDATA WHERE INTRACTIVEDATA_TYPE=1))";
                cmd.Connection = con;
                strVal = cmd.ExecuteScalar().ToString();
                forclientTab1Year.InnerHtml = strVal.Split('~')[0];
                forclientTab1Month.InnerHtml = strVal.Split('~')[1];
                //forclientTab1File.Src = "files/forclient/" + strVal.Split('~')[2];
            }
            catch (NullReferenceException ex)
            {
                forclientTab1Year.InnerHtml = "";
                forclientTab1Month.InnerHtml = "";
                forclientTab1File.Src = "";
            }
            catch (cs.LMException ex)
            {
                cs.WriteLogForEx.WriteLog(ex);
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                Response.Redirect("~/#pg/error500.aspx");
            }
            catch (Exception ex)
            {
                cs.WriteLogForEx.WriteLog(ex);
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                Response.Redirect("~/#pg/error500.aspx");
            }
            finally
            {
                con.Close();
                //con.Dispose();
            }
            try
            {
                if (con.State == ConnectionState.Closed) con.Open();
                cmd = new OracleCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT YR||'~'||FILE_NAME FROM TBL_INTRACTIVEDATA WHERE INTRACTIVEDATA_TYPE=2 AND YR=(SELECT MAX(YR) FROM TBL_INTRACTIVEDATA WHERE INTRACTIVEDATA_TYPE=2)";
                cmd.Connection = con;
                strVal = cmd.ExecuteScalar().ToString();
                forclientTab2Year.InnerHtml = strVal.Split('~')[0];
                forclientTab2File.Src = "files/forclient/" + strVal.Split('~')[1];
            }
            catch (NullReferenceException ex)
            {
                forclientTab2Year.InnerHtml = "";
                forclientTab2File.Src = "";
            }
            catch (cs.LMException ex)
            {
                cs.WriteLogForEx.WriteLog(ex);
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                Response.Redirect("~/#pg/error500.aspx");
            }
            catch (Exception ex)
            {
                cs.WriteLogForEx.WriteLog(ex);
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                Response.Redirect("~/#pg/error500.aspx");
            }
            finally
            {
                con.Close();
                //con.Dispose();
            }
            

            //qry = "SELECT DATE_FORMAT(post_date,'%Y-%m-%d') as dt FROM mof_posts WHERE post_type = 'pendinginvestment' AND post_date=(SELECT MAX(post_date) FROM mof_posts WHERE post_type = 'pendinginvestment')";
            //try {
            //    strsection1content = cs.ModifyDB.MySqlExecuteScalar(qry).ToString();
            //    section1Year.InnerHtml = strsection1content.Split('-')[0];
            //    section1Month.InnerHtml = strsection1content.Split('-')[1];
            //    section1Day.InnerHtml = strsection1content.Split('-')[2];
            //}
            //catch (DbException DbEx)
            //{
            //    throw DbEx;
            //}
            //catch (Exception ex)
            //{
            //    throw ex;
            //}
            //finally
            //{
                
            //}
            //try
            //{
            //    qry = "SELECT post_content FROM mof_posts WHERE post_type = 'pendinginvestment' AND post_date=(SELECT MAX(post_date) FROM mof_posts WHERE post_type = 'pendinginvestment')";
            //    strsection1content = cs.ModifyDB.MySqlExecuteScalar(qry).ToString().Replace("&nbsp;&nbsp;", "");
            //    divsection1Content.InnerHtml = strsection1content;
            //}
            //catch (DbException DbEx)
            //{
            //    throw DbEx;
            //}
            //catch (Exception ex)
            //{
            //    throw ex;
            //}
            //finally
            //{

            //}
            
            
        }
    }
}