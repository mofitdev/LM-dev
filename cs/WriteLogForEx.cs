using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;

namespace LMWebApp.cs
{
    public class WriteLogForEx
    {
        public static void WriteLog(Exception myex) {
            //if (HttpContext.Current.Session["LM_UserID"] != null)
            //{
            //    using (StreamWriter w = File.AppendText(System.Web.HttpContext.Current.Server.MapPath("~/files/exception/lmexlogs.txt")))
            //    {
            //        w.WriteLine("Алдаа : {0} {1} - {2}", DateTime.Now.ToLongTimeString(), DateTime.Now.ToLongDateString(), cs.ModifyDB.OracleExecuteScalar("SELECT a.DOMAIN_USER||' '||c.DOMAIN_ORG||'-'||b.DOMAIN_ORG||' '||SUBSTR(a.MNAME,0,1)||'.'||SUBSTR(a.LNAME,1,1)||LOWER(SUBSTR(a.LNAME,2))||' /'||d.POS_NAME||'/' FROM ST_STAFFS a INNER JOIN ST_BRANCH b ON a.BR_ID=b.BR_ID INNER JOIN ST_BRANCH c ON b.BR_MAIN_ID1=c.BR_ID INNER JOIN ST_POS d ON a.POS_ID=d.POS_ID WHERE a.ST_ID=" + HttpContext.Current.Session["LM_UserID"]).ToString());
            //        w.Write("  Message:{0}", myex.Message);
            //        w.WriteLine("  StackTrace:{0}", myex.StackTrace);
            //        w.WriteLine("--------------------------------------------------------------------------------");
            //    }
            //}
            //else {
            //    using (StreamWriter w = File.AppendText(System.Web.HttpContext.Current.Server.MapPath("~/files/exception/lmexlogs.txt")))
            //    {
            //        w.WriteLine("Алдаа : Session Died");
            //        w.WriteLine("--------------------------------------------------------------------------------");
            //    }
            //}
        }
    }
}