using LMWebApp.cs;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OracleClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMWebApp
{
    public partial class login : System.Web.UI.Page
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
                if (Request.QueryString["dmn"] != null)
                {
                    if (Request.QueryString["dmn"] == "add") {
                        loginDivSignup.Attributes.Remove("class");
                        loginDivSignin.Attributes.Add("class", "hide");
                        loginDivCreateaccount.Attributes.Add("class", "card-mask hide");
                    }
                    else {
                        if (con.State == ConnectionState.Closed) con.Open();
                        cmd = new OracleCommand();
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "SELECT b.ST_ID, SUBSTR(b.MNAME,1,1)||LOWER(SUBSTR(b.MNAME,2))||' '||SUBSTR(b.LNAME,1,1)||LOWER(SUBSTR(b.LNAME,2)) as STAFFNAME, a.DOMAIN_USER FROM TBL_USERSESSIONREGISTER a INNER JOIN ST_STAFFS b ON a.DOMAIN_USER=b.DOMAIN_USER WHERE a.SESSIONID='" + strSessionId + "' AND b.DOMAIN_USER='" + Request.QueryString["dmn"] + "'";
                        cmd.Connection = con;
                        adapter.SelectCommand = cmd;
                        ds = new DataSet();
                        adapter.Fill(ds);
                        if (ds.Tables[0].Rows.Count != 0)
                        {
                            loginDivSignup.Attributes.Add("class", "hide");
                            loginDivSignin.Attributes.Remove("class");
                            loginDivCreateaccount.Attributes.Add("class", "card-mask");

                            loginUserImage.Src = "staffImage.ashx?stid=" + ds.Tables[0].Rows[0]["ST_ID"].ToString();
                            loginUserSigninFullname.InnerHtml = ds.Tables[0].Rows[0]["STAFFNAME"].ToString();
                            loginSigninDomainname.InnerHtml = ds.Tables[0].Rows[0]["DOMAIN_USER"].ToString();

                            loginUserSigninBack.Attributes.Add("class", "back-arrow shift-form hide");

                            loginInputSignupUsername.Value = Request.QueryString["dmn"];
                        }
                        else
                        {
                            loginDivSignup.Attributes.Remove("class");
                            loginDivSignin.Attributes.Add("class", "hide");
                            loginDivCreateaccount.Attributes.Add("class", "card-mask hide");
                        }
                    }
                }
                else
                {
                    if (con.State == ConnectionState.Closed) con.Open();
                    cmd = new OracleCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "SELECT b.ST_ID, SUBSTR(b.MNAME,1,1)||LOWER(SUBSTR(b.MNAME,2))||' '||SUBSTR(b.LNAME,1,1)||LOWER(SUBSTR(b.LNAME,2)) as STAFFNAME, a.DOMAIN_USER FROM TBL_USERSESSIONREGISTER a INNER JOIN ST_STAFFS b ON a.DOMAIN_USER=b.DOMAIN_USER WHERE SESSIONID='" + strSessionId + "' AND LASTLOGINDATE=(SELECT MAX(LASTLOGINDATE) FROM TBL_USERSESSIONREGISTER WHERE SESSIONID='" + strSessionId + "')";
                    cmd.Connection = con;
                    adapter.SelectCommand = cmd;
                    ds = new DataSet();
                    adapter.Fill(ds);
                    if (ds.Tables[0].Rows.Count != 0)
                    {
                        loginDivSignup.Attributes.Add("class", "hide");
                        loginDivSignin.Attributes.Remove("class");
                        loginDivCreateaccount.Attributes.Add("class", "card-mask");

                        loginUserImage.Src = "staffImage.ashx?stid=" + ds.Tables[0].Rows[0]["ST_ID"].ToString();
                        loginUserSigninFullname.InnerHtml = ds.Tables[0].Rows[0]["STAFFNAME"].ToString();
                        loginSigninDomainname.InnerHtml = ds.Tables[0].Rows[0]["DOMAIN_USER"].ToString();

                        loginUserSigninBack.Attributes.Add("class", "back-arrow shift-form hide");

                        loginInputSignupUsername.Value = ds.Tables[0].Rows[0]["DOMAIN_USER"].ToString();
                    }
                    else
                    {
                        loginDivSignup.Attributes.Remove("class");
                        loginDivSignin.Attributes.Add("class", "hide");
                        loginDivCreateaccount.Attributes.Add("class", "card-mask hide");
                    }
                }
                //if (Request.QueryString["add"] != null || Request.QueryString["dmn"] != null)
                //{
                //    loginDivSignup.Attributes.Remove("class");
                //    loginDivSignin.Attributes.Add("class", "hide");
                //    loginDivCreateaccount.Attributes.Add("class", "card-mask hide");
                //}
                //else {
                //    if (Request.QueryString["dmn"] != null)
                //    {
                //        if (con.State == ConnectionState.Closed) con.Open();
                //        cmd = new OracleCommand();
                //        cmd.CommandType = CommandType.Text;
                //        cmd.CommandText = "SELECT b.ST_ID, SUBSTR(b.MNAME,1,1)||LOWER(SUBSTR(b.MNAME,2))||' '||SUBSTR(b.LNAME,1,1)||LOWER(SUBSTR(b.LNAME,2)) as STAFFNAME, a.DOMAIN_USER FROM TBL_USERSESSIONREGISTER a INNER JOIN ST_STAFFS b ON a.DOMAIN_USER=b.DOMAIN_USER WHERE a.SESSIONID='" + strSessionId + "' AND b.DOMAIN_USER='" + Request.QueryString["dmn"] + "'";
                //        cmd.Connection = con;
                //        adapter.SelectCommand = cmd;
                //        ds = new DataSet();
                //        adapter.Fill(ds);
                //        if (ds.Tables[0].Rows.Count != 0)
                //        {
                //            loginDivSignup.Attributes.Add("class", "hide");
                //            loginDivSignin.Attributes.Remove("class");
                //            loginDivCreateaccount.Attributes.Add("class", "card-mask");

                //            loginUserImage.Src = "staffImage.ashx?stid=" + ds.Tables[0].Rows[0]["ST_ID"].ToString();
                //            loginUserSigninFullname.InnerHtml = ds.Tables[0].Rows[0]["STAFFNAME"].ToString();
                //            loginSigninDomainname.InnerHtml = ds.Tables[0].Rows[0]["DOMAIN_USER"].ToString();

                //            loginUserSigninBack.Attributes.Add("class", "back-arrow shift-form hide");
                //        }
                //        else
                //        {
                //            loginDivSignup.Attributes.Remove("class");
                //            loginDivSignin.Attributes.Add("class", "hide");
                //            loginDivCreateaccount.Attributes.Add("class", "card-mask hide");
                //        }
                //    }
                //    else
                //    {
                //        string aa = "SELECT b.ST_ID, SUBSTR(b.MNAME,1,1)||LOWER(SUBSTR(b.MNAME,2))||' '||SUBSTR(b.LNAME,1,1)||LOWER(SUBSTR(b.LNAME,2)) as STAFFNAME, a.DOMAIN_USER FROM TBL_USERSESSIONREGISTER a INNER JOIN ST_STAFFS b ON a.DOMAIN_USER=b.DOMAIN_USER WHERE SESSIONID='" + strSessionId + "' AND LASTLOGINDATE=(SELECT MAX(LASTLOGINDATE) FROM TBL_USERSESSIONREGISTER WHERE SESSIONID='" + strSessionId + "')";
                //        if (con.State == ConnectionState.Closed) con.Open();
                //        cmd = new OracleCommand();
                //        cmd.CommandType = CommandType.Text;
                //        cmd.CommandText = "SELECT b.ST_ID, SUBSTR(b.MNAME,1,1)||LOWER(SUBSTR(b.MNAME,2))||' '||SUBSTR(b.LNAME,1,1)||LOWER(SUBSTR(b.LNAME,2)) as STAFFNAME, a.DOMAIN_USER FROM TBL_USERSESSIONREGISTER a INNER JOIN ST_STAFFS b ON a.DOMAIN_USER=b.DOMAIN_USER WHERE SESSIONID='" + strSessionId + "' AND LASTLOGINDATE=(SELECT MAX(LASTLOGINDATE) FROM TBL_USERSESSIONREGISTER WHERE SESSIONID='" + strSessionId + "')";
                //        cmd.Connection = con;
                //        adapter.SelectCommand = cmd;
                //        ds = new DataSet();
                //        adapter.Fill(ds);
                //        if (ds.Tables[0].Rows.Count != 0)
                //        {
                //            loginDivSignup.Attributes.Add("class", "hide");
                //            loginDivSignin.Attributes.Remove("class");
                //            loginDivCreateaccount.Attributes.Add("class", "card-mask");

                //            loginUserImage.Src = "staffImage.ashx?stid=" + ds.Tables[0].Rows[0]["ST_ID"].ToString();
                //            loginUserSigninFullname.InnerHtml = ds.Tables[0].Rows[0]["STAFFNAME"].ToString();
                //            loginSigninDomainname.InnerHtml = ds.Tables[0].Rows[0]["DOMAIN_USER"].ToString();

                //            loginUserSigninBack.Attributes.Add("class", "back-arrow shift-form hide");
                //        }
                //        else
                //        {
                //            loginDivSignup.Attributes.Remove("class");
                //            loginDivSignin.Attributes.Add("class", "hide");
                //            loginDivCreateaccount.Attributes.Add("class", "card-mask hide");
                //        }
                //    }
                //}
            }
            catch (NullReferenceException ex)
            {
                loginDivSignup.Attributes.Remove("class");
                loginDivSignin.Attributes.Add("class", "hide");
                loginDivCreateaccount.Attributes.Add("class", "card-mask hide");
            }
            catch(Exception ex){
            
            }
            finally{
                con.Close();
                con.Dispose();
            }
        }
    }
}