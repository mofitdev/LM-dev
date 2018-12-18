using LMWebApp.cs;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMWebApp.pg
{
    public partial class workingtimecalendarjson : System.Web.UI.Page
    {
        //OracleDataReader rdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Clear();
            Response.ContentType = "application/json; charset=utf-8";
            Response.Write(GetAppointCalendar());
            Response.End();
        }
        public string GetAppointCalendar()
        {
            ModifyDB myObj = new ModifyDB();
            StringBuilder JSON = new StringBuilder();
            string year = Request.QueryString["yr"];
            string month = Request.QueryString["mnth"];
            string stid = Request.QueryString["stid"];
            string[] date = new string[3];
            string[] time1 = new string[3];
            string[] time2 = new string[3];
            string strTable = "";
            strTable += "[";
            string qry = @"SELECT a.ST_ID, NVL(b.TP,a.TP) as TP, a.DT, a.MINTM, a.MAXTM, a.ISWORK
FROM (
  SELECT a.ST_ID, NVL(b.TP,0) as TP, a.DT, a.MINTM, a.MAXTM, a.ISWORK 
  FROM ( 
    SELECT a.YEAR, a.MONTH, a.ST_ID, a.DT, NVL(b.TP,0) as TP, NVL(b.MINTM, '00:00:00') as MINTM, NVL(b.MAXTM, '00:00:00') as MAXTM, a.ISWORK
    FROM (   
      SELECT a.YEAR, a.MONTH, a.ST_ID, a.DT, CASE WHEN b.DT IS NULL THEN a.ISWORK ELSE 1 END as ISWORK
      FROM (
        SELECT YEAR, MONTH2 as MONTH, ST_ID, DT, ISWORK 
        FROM ( 
          SELECT a.ST_ID, a.YEAR, a.MONTH as MONTH1, TO_NUMBER(TO_CHAR(b.DT,'mm')) as MONTH2, b.DT, CASE WHEN (MOD(TO_CHAR(b.DT, 'J'), 7) + 1)=6 OR (MOD(TO_CHAR(b.DT, 'J'), 7) + 1)=7 THEN 0 ELSE 1 END as ISWORK 
          FROM ( 
            SELECT a.ID as ST_ID, f.YEAR, MIN(f.MONTH) as MONTH 
            FROM hrdbuser.ST_STAFFS a 
            INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE=1
            INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID=c.ID AND c.ACTIVE=1
            INNER JOIN STN_TRCDLOG f ON a.FINGERID=f.ENO 
            WHERE f.YEAR=" + year + " AND a.ID=" + stid;
            qry += @" GROUP BY a.ID, f.YEAR 
          ) a, ( 
            SELECT DT 
            FROM ( 
              SELECT (TO_DATE('" + year + "-" + month + "-01','yyyy-mm-dd')-1)+ROWNUM DT ";
            qry += @" FROM DUAL 
              CONNECT BY LEVEL<=(LAST_DAY(TO_DATE('" + year + "-" + month + "-01','yyyy-mm-dd'))+1)-TO_DATE('" + year + "-" + month + "-01','yyyy-mm-dd') ";
            qry += @" ) 
            WHERE DT BETWEEN TO_DATE('" + year + "-" + month + "-01','yyyy-mm-dd') AND SYSDATE AND MOD(TO_CHAR(DT, 'J'), 7) + 1 IN (1, 2, 3, 4, 5, 6, 7)";
            qry += @" ) b 
        ) 
        WHERE MONTH1<=MONTH2 
      ) a
      LEFT JOIN (
        SELECT TO_DATE(HOLDATE,'YYYY-MM-DD') as DT FROM hrdbuser.ST_HOLIDAYISWORK WHERE TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE,'YYYY-MM-DD'),'YYYY'))=" + year + " AND TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE,'YYYY-MM-DD'),'MM')) IN (" + month + ")";
            qry += @" ) b ON a.DT=b.DT
    ) a 
    LEFT JOIN ( 
      SELECT a.MONTH, a.INOUT as TP, b.ID as ST_ID, TO_DATE(a.YEAR||'-'||a.MONTH||'-'||a.DAY, 'yyyy-mm-dd') as DT, TO_CHAR(MIN(TO_DATE(a.YEAR||'-'||a.MONTH||'-'||a.DAY||' '||a.HOUR||':'||a.MINUTE||':'||a.SECOND, 'yyyy-mm-dd hh24:mi:ss')),'hh24:mi:ss') as MINTM, TO_CHAR(MAX(TO_DATE(a.YEAR||'-'||a.MONTH||'-'||a.DAY||' '||a.HOUR||':'||a.MINUTE||':'||a.SECOND, 'yyyy-mm-dd hh24:mi:ss')),'hh24:mi:ss') as MAXTM 
      FROM STN_TRCDLOG a 
      INNER JOIN hrdbuser.ST_STAFFS b ON a.ENO=b.FINGERID 
      INNER JOIN hrdbuser.ST_STBR c ON b.ID=c.STAFFS_ID AND c.ISACTIVE=1
      INNER JOIN hrdbuser.STN_MOVE d ON c.MOVE_ID=d.ID AND d.ACTIVE=1
      WHERE a.INOUT=0 AND a.YEAR=" + year + " AND b.ID=" + stid + " AND a.MONTH IN (" + month + ") AND TO_DATE(a.YEAR||'-'||a.MONTH||'-'||a.DAY, 'yyyy-mm-dd') BETWEEN TO_DATE('" + year + "-" + month + "-01','yyyy-mm-dd') AND SYSDATE AND MOD(TO_CHAR(TO_DATE(a.YEAR||'-'||a.MONTH||'-'||a.DAY, 'yyyy-mm-dd'), 'J'), 7) + 1 IN (1, 2, 3, 4, 5, 6, 7) ";
            qry += @" GROUP BY a.MONTH, a.INOUT, b.ID, TO_DATE(a.YEAR||'-'||a.MONTH||'-'||a.DAY, 'yyyy-mm-dd') 
    ) b ON a.ST_ID=b.ST_ID AND a.DT=b.DT 
  ) a 
  LEFT JOIN ( 
    SELECT DT, STAFFS_ID, MAX(TP) as TP
    FROM(
        SELECT b.DT, a.STAFFS_ID, 11 as TP
        FROM hrdbuser.ST_CHULUUDAYF3 a,
        (
        SELECT(TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
        FROM DUAL
        CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd')
        ) b
        WHERE
        b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD')
        UNION ALL
        SELECT b.DT, a.STAFFS_ID, 12 as TP
        FROM hrdbuser.ST_CHULUUDAYT2 a,
        (
        SELECT(TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
        FROM DUAL
        CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd')
        ) b
        WHERE
        a.ISRECEIVED = 1 AND
        b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD')
        UNION ALL
        SELECT b.DT, a.STAFFS_ID, 13 as TP
        FROM hrdbuser.ST_CHULUUSICK a,
        (
        SELECT(TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
        FROM DUAL
        CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd')
        ) b
        WHERE
        b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD')
        UNION ALL
        SELECT b.DT, a.STAFFS_ID, 21 as TP
        FROM hrdbuser.ST_AMRALT a,
        (
        SELECT(TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
        FROM DUAL
        CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd')
        ) b
        WHERE
        a.TZISRECEIVED = 1 AND
        b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD')
        UNION ALL
        SELECT b.DT, a.STAFFS_ID, 31 as TP
        FROM hrdbuser.ST_TOMILOLT_STAFFS a
        INNER JOIN hrdbuser.ST_TOMILOLT c ON a.TOMILOLT_ID = c.ID,
        (
        SELECT(TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
        FROM DUAL
        CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd')
        ) b
        WHERE
        b.DT BETWEEN TO_DATE(c.FROMDATE, 'YYYY-MM-DD') AND TO_DATE(c.TODATE, 'YYYY-MM-DD')
    )
    GROUP BY DT, STAFFS_ID
  ) b ON a.DT=b.DT AND a.ST_ID=b.STAFFS_ID
) a
LEFT JOIN (
  SELECT TO_DATE('" + year + "-'||HOLMONTH||'-'||HOLDAY,'YYYY-MM-DD') as DT, 91 as TP";
            qry += @" FROM hrdbuser.ST_HOLIDAYOFFICIAL
  WHERE HOLMONTH IN (" + month + ")";
            qry += @" UNION ALL
  SELECT TO_DATE(HOLDATE, 'YYYY-MM-DD') as DT, 91 as TP
  FROM hrdbuser.ST_HOLIDAYUNOFFICIAL
  WHERE TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE,'YYYY-MM-DD'),'YYYY'))=" + year + " AND TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE,'YYYY-MM-DD'),'MM')) IN (" + month + ")";
            qry += @" ) b ON a.DT=b.DT
ORDER BY a.DT";
            DataSet ds = myObj.OracleExecuteDataSet(qry);
            if (ds.Tables[0].Rows.Count != 0)
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    Array.Clear(date, 0, date.Length);
                    date = new string[3];
                    date = Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd").Split('-');

                    if (strTable != "[") strTable += ",{";
                    else strTable += "{";

                    if (dr["ISWORK"].ToString() == "0")
                    {
                        strTable += "\"title\":\"Амралтын өдөр\",\"className\":\"bg-color-blueDark\",\"description\":\"Ирсэн: " + dr["MINTM"].ToString().Replace("00:00:00", "--:--:--") + "<br/>Явсан: " + dr["MAXTM"].ToString().Replace("00:00:00", "--:--:--") + "<br/>Хоцорсон: --:--:--<br/>Эрт явсан: --:--:--\",";
                    }
                    else {
                        if (dr["TP"].ToString() == "0")
                        {
                            Array.Clear(time1, 0, time1.Length);
                            time1 = new string[3];
                            time1 = dr["MINTM"].ToString().Split(':');
                            Array.Clear(time2, 0, time2.Length);
                            time2 = new string[3];
                            time2 = dr["MAXTM"].ToString().Split(':');
                            DateTime come = new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), Int32.Parse(time1[0]), Int32.Parse(time1[1]), Int32.Parse(time1[2]));
                            DateTime go = new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), Int32.Parse(time2[0]), Int32.Parse(time2[1]), Int32.Parse(time2[2]));
                            DateTime late = new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), 08, 40, 00);
                            DateTime early = new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), 17, 30, 00);
                            if (dr["MINTM"].ToString() != dr["MAXTM"].ToString())
                            {
                                var lateTimeSpanHour = TimeSpan.FromHours(Convert.ToDouble(come.Subtract(late).Hours));
                                var earlyTimeSpanHour = TimeSpan.FromHours(Convert.ToDouble(early.Subtract(go).Hours));
                                var lateTimeSpanMin = TimeSpan.FromMinutes(Convert.ToDouble(come.Subtract(late).Minutes));
                                var earlyTimeSpanMin = TimeSpan.FromMinutes(Convert.ToDouble(early.Subtract(go).Minutes));
                                var lateTimeSpanSec = TimeSpan.FromSeconds(Convert.ToDouble(come.Subtract(late).Seconds));
                                var earlyTimeSpanSec = TimeSpan.FromSeconds(Convert.ToDouble(early.Subtract(go).Seconds));
                                TimeSpan lateTimeSpan = lateTimeSpanHour + lateTimeSpanMin + lateTimeSpanSec;
                                TimeSpan earlyTimeSpan = earlyTimeSpanHour + earlyTimeSpanMin + earlyTimeSpanSec;

                                if (Convert.ToDouble(come.Subtract(late).Seconds) > 0)
                                {
                                    if (Convert.ToDouble(go.Subtract(early).Seconds) < 0) strTable += "\"title\":\"Хоцорсон\",\"className\":\"bg-color-yellow\",\"description\":\"Ирсэн " + come.ToString("HH:mm:ss") + "<br/>Явсан: " + go.ToString("HH:mm:ss") + "<br/>Хоцорсон: " + lateTimeSpan.ToString() + "<br/>Эрт явсан: " + earlyTimeSpan.ToString() + "\",";
                                    else strTable += "\"title\":\"Хоцорсон\",\"className\":\"bg-color-yellow\",\"description\":\"Ирсэн " + come.ToString("HH:mm:ss") + "<br/>Явсан: " + go.ToString("HH:mm:ss") + "<br/>Хоцорсон: " + lateTimeSpan.ToString() + "<br/>Эрт явсан: --:--:--\",";
                                }
                                else
                                {
                                    if (Convert.ToDouble(go.Subtract(early).Seconds) < 0) strTable += "\"title\":\"Цагтаа ирсэн\",\"className\":\"bg-color-blueLight\",\"description\":\"Ирсэн " + come.ToString("HH:mm:ss") + "<br/>Явсан: " + go.ToString("HH:mm:ss") + "<br/>Хоцорсон: --:--:--<br/>Эрт явсан: " + earlyTimeSpan.ToString() + "\",";
                                    else strTable += "\"title\":\"Цагтаа ирсэн\",\"className\":\"bg-color-blueLight\",\"description\":\"Ирсэн " + come.ToString("HH:mm:ss") + "<br/>Явсан: " + go.ToString("HH:mm:ss") + "<br/>Хоцорсон: --:--:--<br/>Эрт явсан: --:--:--\",";
                                }
                            }
                            else
                            {
                                if(come.ToString("HH:mm:ss").Replace("00:00:00", "--:--:--") == "--:--:--") strTable += "\"title\":\"Тасалсан\",\"className\":\"bg-color-redLight\",\"description\":\"Ирсэн --:--:--<br/>Явсан: --:--:--<br/>Хоцорсон: --:--:--<br/>Эрт явсан: --:--:--\",";
                                else if(come >= new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), 00, 00, 00) && come <= new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), 13, 00, 00)) strTable += "\"title\":\"Тасалсан\",\"className\":\"bg-color-redLight\",\"description\":\"Ирсэн " + come.ToString("HH:mm:ss").Replace("00:00:00", "--:--:--") + "<br/>Явсан: --:--:--<br/>Хоцорсон: --:--:--<br/>Эрт явсан: --:--:--\",";
                                else if (come > new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), 13, 00, 00) && come <= new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), 23, 59, 59)) strTable += "\"title\":\"Тасалсан\",\"className\":\"bg-color-redLight\",\"description\":\"Ирсэн --:--:--<br/>Явсан: " + come.ToString("HH:mm:ss").Replace("00:00:00", "--:--:--") + "<br/>Хоцорсон: --:--:--<br/>Эрт явсан: --:--:--\",";
                            }
                        }
                        else if (dr["TP"].ToString() == "13")
                        {
                            strTable += "\"title\":\"Өвчтэй\",\"className\":\"bg-color-pink\",\"description\":\"Ирсэн --:--:--<br/>Явсан: --:--:--<br/>Хоцорсон: --:--:--<br/>Эрт явсан: --:--:--\",";
                        }
                        else if (dr["TP"].ToString() == "21")
                        {
                            strTable += "\"title\":\"Ээлжийн амралттай\",\"className\":\"bg-color-greenDark\",\"description\":\"Ирсэн --:--:--<br/>Явсан: --:--:--<br/>Хоцорсон: --:--:--<br/>Эрт явсан: --:--:--\",";
                        }
                        else if (dr["TP"].ToString() == "11" || dr["TP"].ToString() == "12")
                        {
                            strTable += "\"title\":\"Чөлөөтэй\",\"className\":\"bg-color-orangeDark\",\"description\":\"Ирсэн --:--:--<br/>Явсан: --:--:--<br/>Хоцорсон: --:--:--<br/>Эрт явсан: --:--:--\",";
                        }
                        else if (dr["TP"].ToString() == "31")
                        {
                            strTable += "\"title\":\"Албан томилолт\",\"className\":\"bg-color-blue\",\"description\":\"Ирсэн --:--:--<br/>Явсан: --:--:--<br/>Хоцорсон: --:--:--<br/>Эрт явсан: --:--:--\",";
                        }
                        else if (dr["TP"].ToString() == "91")
                        {
                            strTable += "\"title\":\"Тэмдэглэлт өдөр\",\"className\":\"bg-color-lighten\",\"description\":\"Тэмдэглэлт өдөр\",";
                        }
                    }
                    strTable += "\"start\":\"" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + " 00:00:00\", \"end\":\"" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + " 00:00:00\"";
                    strTable += "}";
                }
            }
            strTable += "]";
            JSON.Append(strTable);
            return strTable;
        }
    }
}