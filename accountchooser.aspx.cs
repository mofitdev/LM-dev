using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMWebApp
{
    public partial class accountchooser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OracleDataAdapter adapter = new OracleDataAdapter();
            DataSet ds = null;
            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["CMCDBBTConn"].ConnectionString);
            OracleCommand cmd;
            try
            {
                string strSessionId = Session.SessionID;

                if (con.State == ConnectionState.Closed) con.Open();
                cmd = new OracleCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT b.ST_ID, SUBSTR(b.MNAME,1,1)||LOWER(SUBSTR(b.MNAME,2))||' '||SUBSTR(b.LNAME,1,1)||LOWER(SUBSTR(b.LNAME,2)) as STAFFNAME, a.DOMAIN_USER FROM TBL_USERSESSIONREGISTER a INNER JOIN ST_STAFFS b ON a.DOMAIN_USER=b.DOMAIN_USER WHERE SESSIONID='" + strSessionId + "' ORDER BY LASTLOGINDATE DESC";
                cmd.Connection = con;
                adapter.SelectCommand = cmd;
                ds = new DataSet();
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    accDivAccountList.InnerHtml = "<ol class=\"accounts\">";
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        accDivAccountList.InnerHtml += "<li>";
                        accDivAccountList.InnerHtml += "<button type=\"button\" value=\"" + dr["DOMAIN_USER"].ToString() + "\" class=\"select useraccount\">";
                        accDivAccountList.InnerHtml += "<img class=\"account-image\" alt=\"\" src=\"staffImage.ashx?stid=" + dr["ST_ID"].ToString() + "\"/>";
                        accDivAccountList.InnerHtml += "<span class=\"account-name\">" + dr["STAFFNAME"].ToString() + "</span>";
                        accDivAccountList.InnerHtml += "<span class=\"account-email\">" + dr["DOMAIN_USER"].ToString() + "</span>";
                        accDivAccountList.InnerHtml += "</button>";
                        accDivAccountList.InnerHtml += "</li>";
                    }
                    accDivAccountList.InnerHtml += "</ol>";
                }
                else {

                    Response.Redirect("~/login.aspx?add=1",false);
                }
            }
            catch (NullReferenceException ex)
            {
                Response.Redirect("~/login.aspx?add=1", false);
            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }
    }
}