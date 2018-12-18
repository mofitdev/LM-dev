using LMWebApp.cs;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.SessionState;

namespace LMWebApp
{
    /// <summary>
    /// Summary description for staffImage
    /// </summary>
    public class staffImage : IHttpHandler, IRequiresSessionState 
    {

        public void ProcessRequest(HttpContext context)
        {
            string stid;
            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["CMCDBBTConn"].ConnectionString);
            OracleCommand cmd;
            
            //ModifyDB myObj = new ModifyDB();
            if (context.Request.QueryString["stid"] != null && context.Request.QueryString["stid"] != "")
            {
                stid = context.Request.QueryString["stid"].ToString();
                if (con.State == ConnectionState.Closed) con.Open();
                cmd = new OracleCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT COUNT(1) FROM ST_PICTURE WHERE ST_ID=" + stid;
                cmd.Connection = con;


                if (cmd.ExecuteScalar().ToString() != "0")
                {
                    cmd = new OracleCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "SELECT PHOTO FROM ST_PICTURE WHERE ST_ID=" + stid;
                    cmd.Connection = con;
                    OracleDataReader img = cmd.ExecuteReader();
                    try
                    {
                        img.Read();
                        context.Response.BinaryWrite((byte[])img[img.GetOrdinal("PHOTO")]);
                        img.Close();
                    }
                    catch
                    {

                    }
                    finally
                    {
                        con.Close();
                        con.Dispose();
                    }
                }
                else {
                    context.Response.ContentType = "image/png";
                    context.Response.WriteFile("~/img/form/login/loginnopic.png");
                }                
            }
            else {
                context.Response.ContentType = "image/png";
                context.Response.WriteFile("~/img/form/login/loginnopic.png");
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}