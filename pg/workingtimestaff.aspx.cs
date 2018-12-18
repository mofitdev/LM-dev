using LMWebApp.cs;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMWebApp.pg
{
    public partial class workingtimestaff : System.Web.UI.Page
    {
        //OracleDataReader rdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            //            ModifyDB myObj = new ModifyDB();
            //            string year = Request.QueryString["yr"];
            //            string month = Request.QueryString["mnth"];
            //            string month2 = Request.QueryString["mnth2"];
            //            string stid = Request.QueryString["stid"];
            //            string strMonthList = "";
            //            for (int i = Int32.Parse(month); i <= Int32.Parse(month2); i++)
            //            {
            //                if (strMonthList == "") strMonthList += i.ToString();
            //                else strMonthList += "," + i.ToString();
            //            }
            //            string[] date = new string[3];
            //            string[] time1 = new string[3];
            //            string[] time2 = new string[3];
            //            string strTable = "";
            //            string strQry = @"SELECT a.ST_ID, a.TP, a.DT, a.MINTM, a.MAXTM, CASE WHEN b.DT is null THEN a.ISWORK ELSE 0 END as ISWORK
            //        FROM(
            //          SELECT a.ST_ID, NVL(b.TP, 0) as TP, a.DT, a.MINTM, a.MAXTM, a.ISWORK
            //          FROM(
            //            SELECT a.ST_ID, a.DT, NVL(b.TP, 0) as TP, NVL(b.MINTM, '00:00:00') as MINTM, NVL(b.MAXTM, '00:00:00') as MAXTM, a.ISWORK
            //            FROM(
            //              SELECT a.STAFFS_ID as ST_ID, a.DT, CASE WHEN b.DT IS NULL THEN a.ISWORK ELSE 1 END as ISWORK
            //              FROM ( 
            //                SELECT a.ID, b.STAFFS_ID, c.FATHER_ID as GAZAR_ID, c.ID as HELTES_ID, a.DT, CASE WHEN(MOD(TO_CHAR(a.DT, 'J'), 7) + 1) = 6 OR(MOD(TO_CHAR(a.DT, 'J'), 7) + 1) = 7 THEN 0 ELSE 1 END as ISWORK
            //                FROM (
            //                  SELECT a.ID, a.BEGINDT, a.ENDDT, b.DT
            //                  FROM (
            //                    SELECT a.ID, 
            //                      CASE 
            //                        WHEN TO_DATE(a.DT,'YYYY-MM-DD')>TO_DATE('"+year+"-"+month+@"-01','YYYY-MM-DD') 
            //                        THEN a.DT 
            //                        ELSE '"+year+"-"+month+@"-01' 
            //                      END as BEGINDT, 
            //                      CASE 
            //                        --WHEN TO_DATE(CASE WHEN c.ACTIVE=0 THEN NVL(a.ENDDT,a.DT) ELSE NVL(a.ENDDT, TO_CHAR(SYSDATE,'YYYY-MM-DD')) END,'YYYY-MM-DD')<LAST_DAY(TO_DATE('"+year+"-"+month2+@"-01','YYYY-MM-DD')) 
            //                        --THEN CASE WHEN c.ACTIVE=0 THEN NVL(a.ENDDT,a.DT) ELSE NVL(a.ENDDT, TO_CHAR(SYSDATE,'YYYY-MM-DD')) END ELSE TO_CHAR(LAST_DAY(TO_DATE('"+year+"-"+month2+@"-01','YYYY-MM-DD')),'YYYY-MM-DD') END as ENDDT
            //                        WHEN TO_DATE(CASE WHEN c.ACTIVE=0 THEN TO_CHAR((TO_DATE(NVL(a.ENDDT,a.DT),'YYYY-MM-DD')-1),'YYYY-MM-DD') ELSE NVL(TO_CHAR((TO_DATE(a.ENDDT,'YYYY-MM-DD')-1),'YYYY-MM-DD'), TO_CHAR(SYSDATE,'YYYY-MM-DD')) END,'YYYY-MM-DD')<LAST_DAY(TO_DATE('"+year+"-"+month2+@"-01','YYYY-MM-DD')) 
            //                        THEN CASE WHEN c.ACTIVE=0 THEN TO_CHAR((TO_DATE(NVL(a.ENDDT,a.DT),'YYYY-MM-DD')-1),'YYYY-MM-DD') ELSE NVL(TO_CHAR((TO_DATE(a.ENDDT,'YYYY-MM-DD')-1),'YYYY-MM-DD'), TO_CHAR(SYSDATE,'YYYY-MM-DD')) END ELSE TO_CHAR(LAST_DAY(TO_DATE('"+year+"-"+month2+ @"-01','YYYY-MM-DD')),'YYYY-MM-DD') END as ENDDT
            //                    FROM hrdbuser.ST_STBR a
            //                    INNER JOIN hrdbuser.ST_BRANCH b ON a.BRANCH_ID=b.ID AND b.ISACTIVE=1
            //                    INNER JOIN hrdbuser.STN_MOVE c ON a.MOVE_ID=c.ID
            //                    WHERE a.POS_ID!=2020102 AND c.ACTIVE=1 AND a.STAFFS_ID=" + stid + @"
            //                    AND ((
            //                        TO_DATE('" + year + "-" + month + @"-01','YYYY-MM-DD') 
            //                        BETWEEN TO_DATE(a.DT,'YYYY-MM-DD') AND TO_DATE(CASE WHEN c.ACTIVE=0 THEN NVL(a.ENDDT,a.DT) ELSE NVL(a.ENDDT, TO_CHAR(SYSDATE,'YYYY-MM-DD')) END,'YYYY-MM-DD')
            //                        OR 
            //                        LAST_DAY(TO_DATE('" + year + "-" + month2 + @"-01','YYYY-MM-DD')) 
            //                        BETWEEN TO_DATE(a.DT,'YYYY-MM-DD') AND TO_DATE(CASE WHEN c.ACTIVE=0 THEN NVL(a.ENDDT,a.DT) ELSE NVL(a.ENDDT, TO_CHAR(SYSDATE,'YYYY-MM-DD')) END,'YYYY-MM-DD')
            //                      ) OR 
            //                        (
            //                          TO_DATE('" + year + "-" + month + @"-01','YYYY-MM-DD')<TO_DATE(a.DT,'YYYY-MM-DD') AND LAST_DAY(TO_DATE('" + year + "-" + month2 + @"-01','YYYY-MM-DD'))>TO_DATE(a.DT,'YYYY-MM-DD')
            //                        ))
            //                  ) a, (
            //                    SELECT DT
            //                    FROM(
            //                      SELECT(TO_DATE('" + year+"-"+month+@"-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
            //                      FROM DUAL
            //                      CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('"+year+"-"+month2+@"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('"+year+"-"+month+@"-01', 'yyyy-mm-dd')
            //                    )
            //                    WHERE DT BETWEEN TO_DATE('"+year+"-"+month+ @"-01', 'yyyy-mm-dd') AND SYSDATE AND MOD(TO_CHAR(DT, 'J'), 7) + 1 IN(1, 2, 3, 4, 5, 6, 7)
            //                  ) b
            //                ) a
            //                INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.ID
            //                INNER JOIN hrdbuser.ST_BRANCH c ON b.BRANCH_ID=c.ID AND c.ISACTIVE=1
            //                WHERE a.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD') AND b.POS_ID!=2020102
            //              ) a
            //              LEFT JOIN(
            //                SELECT TO_DATE(HOLDATE, 'YYYY-MM-DD') as DT FROM hrdbuser.ST_HOLIDAYISWORK WHERE TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE, 'YYYY-MM-DD'), 'YYYY')) = " + year + @" AND TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE, 'YYYY-MM-DD'), 'MM')) IN(" + strMonthList + @")
            //              ) b ON a.DT = b.DT  
            //            ) a
            //            LEFT JOIN(
            //              SELECT a.MONTH, a.INOUT as TP, b.ID as ST_ID, TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY, 'yyyy-mm-dd') as DT, TO_CHAR(MIN(TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY || ' ' || a.HOUR || ':' || a.MINUTE || ':' || a.SECOND, 'yyyy-mm-dd hh24:mi:ss')), 'hh24:mi:ss') as MINTM, TO_CHAR(MAX(TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY || ' ' || a.HOUR || ':' || a.MINUTE || ':' || a.SECOND, 'yyyy-mm-dd hh24:mi:ss')), 'hh24:mi:ss') as MAXTM
            //              FROM STN_TRCDLOG a
            //              INNER JOIN hrdbuser.ST_STAFFS b ON a.ENO = b.FINGERID
            //              INNER JOIN hrdbuser.ST_STBR c ON b.ID = c.STAFFS_ID
            //              INNER JOIN hrdbuser.STN_MOVE d ON c.MOVE_ID = d.ID
            //              INNER JOIN hrdbuser.ST_BRANCH f ON c.BRANCH_ID = f.ID AND f.ISACTIVE = 1
            //              WHERE c.POS_ID!=2020102 AND a.INOUT = 0 AND a.YEAR = " + year + @" AND a.MONTH IN(" + strMonthList + @") AND TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY, 'yyyy-mm-dd') BETWEEN TO_DATE('" + year+"-"+month+ @"-01', 'yyyy-mm-dd') AND SYSDATE AND MOD(TO_CHAR(TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY, 'yyyy-mm-dd'), 'J'), 7) + 1 IN(1, 2, 3, 4, 5, 6, 7)
            //              GROUP BY a.MONTH, a.INOUT, b.ID, TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY, 'yyyy-mm-dd')
            //            ) b ON a.ST_ID = b.ST_ID AND a.DT = b.DT  
            //          ) a
            //          LEFT JOIN(
            //            SELECT DT, STAFFS_ID, MAX(TP) as TP
            //            FROM(
            //              SELECT b.DT, a.STAFFS_ID, 11 as TP
            //              FROM hrdbuser.ST_CHULUUDAYF3 a,
            //              (
            //                SELECT(TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
            //                FROM DUAL
            //                CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('" + year + "-" + month2 + @"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd')
            //              ) b
            //              WHERE
            //                b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD')
            //              UNION ALL
            //              SELECT b.DT, a.STAFFS_ID, 12 as TP
            //              FROM hrdbuser.ST_CHULUUDAYT2 a,
            //              (
            //                SELECT(TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
            //                FROM DUAL
            //                CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('" + year + "-" + month2 + @"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd')
            //              ) b
            //              WHERE
            //                a.ISRECEIVED = 1 AND
            //                b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD')
            //              UNION ALL
            //              SELECT b.DT, a.STAFFS_ID, 13 as TP
            //              FROM hrdbuser.ST_CHULUUSICK a,
            //              (
            //                SELECT(TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
            //                FROM DUAL
            //                CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('" + year + "-" + month2 + @"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd')
            //              ) b
            //              WHERE
            //                b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD')
            //              UNION ALL
            //              SELECT b.DT, a.STAFFS_ID, 21 as TP
            //              FROM hrdbuser.ST_AMRALT a,
            //              (
            //                SELECT(TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
            //                FROM DUAL
            //                CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('" + year + "-" + month2 + @"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd')
            //              ) b
            //              WHERE
            //                a.TZISRECEIVED = 1 AND
            //                b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD')
            //              UNION ALL
            //              SELECT b.DT, a.STAFFS_ID, 31 as TP
            //              FROM hrdbuser.ST_TOMILOLT_STAFFS a
            //              INNER JOIN hrdbuser.ST_TOMILOLT c ON a.TOMILOLT_ID = c.ID,
            //              (
            //                SELECT(TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
            //                FROM DUAL
            //                CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('" + year + "-" + month2 + @"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd')
            //              ) b
            //              WHERE
            //                b.DT BETWEEN TO_DATE(c.FROMDATE, 'YYYY-MM-DD') AND TO_DATE(c.TODATE, 'YYYY-MM-DD')
            //            )
            //            GROUP BY DT, STAFFS_ID
            //          ) b ON a.DT = b.DT AND a.ST_ID = b.STAFFS_ID
            //        ) a
            //        LEFT JOIN(
            //          SELECT TO_DATE('" + year + @"-' || HOLMONTH || '-' || HOLDAY, 'YYYY-MM-DD') as DT
            //          FROM hrdbuser.ST_HOLIDAYOFFICIAL
            //          WHERE HOLMONTH IN(" + strMonthList + @")
            //          UNION ALL
            //          SELECT TO_DATE(HOLDATE, 'YYYY-MM-DD') as DT
            //          FROM hrdbuser.ST_HOLIDAYUNOFFICIAL
            //          WHERE TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE, 'YYYY-MM-DD'), 'YYYY')) = " + year + @" AND TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE, 'YYYY-MM-DD'), 'MM')) IN(" + strMonthList + @")
            //        ) b ON a.DT = b.DT
            //        GROUP BY a.ST_ID, a.TP, a.DT, a.MINTM, a.MAXTM, CASE WHEN b.DT is null THEN a.ISWORK ELSE 0 END
            //ORDER BY a.DT";
            //            DataSet ds = myObj.OracleExecuteDataSet(strQry);
            //            if (ds.Tables[0].Rows.Count != 0)
            //            {
            //                foreach (DataRow dr in ds.Tables[0].Rows)
            //                {
            //                    Array.Clear(date, 0, date.Length);
            //                    date = new string[3];
            //                    date = Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd").Split('-');

            //                    if (dr["ISWORK"].ToString() == "0")
            //                    {
            //                        strTable += "<tr>";
            //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</td>";
            //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\"><span class=\"label bg-color-blueDark\">Амралтын өдөр</span></td>";
            //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + dr["MINTM"].ToString().Replace("00:00:00", "--:--:--") + "</td>";
            //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + dr["MAXTM"].ToString().Replace("00:00:00", "--:--:--") + "</td>";
            //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                        strTable += "</tr>";
            //                    }
            //                    else {
            //                        if (dr["TP"].ToString() == "0")
            //                        {
            //                            Array.Clear(time1, 0, time1.Length);
            //                            time1 = new string[3];
            //                            time1 = dr["MINTM"].ToString().Split(':');
            //                            Array.Clear(time2, 0, time2.Length);
            //                            time2 = new string[3];
            //                            time2 = dr["MAXTM"].ToString().Split(':');
            //                            DateTime come = new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), Int32.Parse(time1[0]), Int32.Parse(time1[1]), Int32.Parse(time1[2]));
            //                            DateTime go = new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), Int32.Parse(time2[0]), Int32.Parse(time2[1]), Int32.Parse(time2[2]));
            //                            DateTime late = new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), 08, 40, 00);
            //                            DateTime early = new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), 17, 30, 00);
            //                            if (dr["MINTM"].ToString() != dr["MAXTM"].ToString())
            //                            {
            //                                var lateTimeSpanHour = TimeSpan.FromHours(Convert.ToDouble(come.Subtract(late).Hours));
            //                                var earlyTimeSpanHour = TimeSpan.FromHours(Convert.ToDouble(early.Subtract(go).Hours));
            //                                var lateTimeSpanMin = TimeSpan.FromMinutes(Convert.ToDouble(come.Subtract(late).Minutes));
            //                                var earlyTimeSpanMin = TimeSpan.FromMinutes(Convert.ToDouble(early.Subtract(go).Minutes));
            //                                var lateTimeSpanSec = TimeSpan.FromSeconds(Convert.ToDouble(come.Subtract(late).Seconds));
            //                                var earlyTimeSpanSec = TimeSpan.FromSeconds(Convert.ToDouble(early.Subtract(go).Seconds));
            //                                TimeSpan lateTimeSpan = lateTimeSpanHour + lateTimeSpanMin + lateTimeSpanSec;
            //                                TimeSpan earlyTimeSpan = earlyTimeSpanHour + earlyTimeSpanMin + earlyTimeSpanSec;

            //                                if (Convert.ToDouble(come.Subtract(late).Seconds) > 0)
            //                                {
            //                                    if (Convert.ToDouble(go.Subtract(early).Seconds) < 0)
            //                                    {
            //                                        strTable += "<tr>";
            //                                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</td>";
            //                                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\"><span class=\"label bg-color-yellow\">Хоцорсон</span></td>";
            //                                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + come.ToString("HH:mm:ss") + "</td>";
            //                                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + go.ToString("HH:mm:ss") + "</td>";
            //                                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + lateTimeSpan.ToString() + "</td>";
            //                                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + earlyTimeSpan.ToString() + "</td>";
            //                                        strTable += "</tr>";
            //                                    }
            //                                    else
            //                                    {
            //                                        strTable += "<tr>";
            //                                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</td>";
            //                                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\"><span class=\"label bg-color-yellow\">Хоцорсон</span></td>";
            //                                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + come.ToString("HH:mm:ss") + "</td>";
            //                                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + go.ToString("HH:mm:ss") + "</td>";
            //                                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + lateTimeSpan.ToString() + "</td>";
            //                                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                                        strTable += "</tr>";
            //                                    }
            //                                }
            //                                else
            //                                {
            //                                    if (Convert.ToDouble(go.Subtract(early).Seconds) < 0)
            //                                    {
            //                                        strTable += "<tr>";
            //                                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</td>";
            //                                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\"><span class=\"label bg-color-blueLight\">Цагтаа ирсэн</span></td>";
            //                                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + come.ToString("HH:mm:ss") + "</td>";
            //                                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + go.ToString("HH:mm:ss") + "</td>";
            //                                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + earlyTimeSpan.ToString() + "</td>";
            //                                        strTable += "</tr>";
            //                                    }
            //                                    else
            //                                    {
            //                                        strTable += "<tr>";
            //                                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</td>";
            //                                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\"><span class=\"label bg-color-blueLight\">Цагтаа ирсэн</span></td>";
            //                                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + come.ToString("HH:mm:ss") + "</td>";
            //                                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + go.ToString("HH:mm:ss") + "</td>";
            //                                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                                        strTable += "</tr>";
            //                                    }
            //                                }
            //                            }
            //                            else
            //                            {
            //                                strTable += "<tr>";
            //                                strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</td>";
            //                                strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\"><span class=\"label bg-color-redLight\">Тасалсан</span></td>";
            //                                if (come.ToString("HH:mm:ss").Replace("00:00:00", "--:--:--") == "--:--:--") strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td><td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                                else if (come >= new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), 00, 00, 00) && come <= new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), 13, 00, 00)) strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + come.ToString("HH:mm:ss").Replace("00:00:00", "--:--:--") + "</td><td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                                else if (come > new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), 13, 00, 00) && come <= new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), 23, 59, 59)) strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td><td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + come.ToString("HH:mm:ss").Replace("00:00:00", "--:--:--") + "</td>";
            //                                strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                                strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                                strTable += "</tr>";
            //                            }
            //                        }
            //                        else if (dr["TP"].ToString() == "13")
            //                        {
            //                            strTable += "<tr>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\"><span class=\"label bg-color-pink\">Өвчтэй</span></td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                            strTable += "</tr>";
            //                        }
            //                        else if (dr["TP"].ToString() == "21")
            //                        {
            //                            strTable += "<tr>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\"><span class=\"label bg-color-greenDark\">Ээлжийн амралттай</span></td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                            strTable += "</tr>";
            //                        }
            //                        else if (dr["TP"].ToString() == "11" || dr["TP"].ToString() == "12")
            //                        {
            //                            strTable += "<tr>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\"><span class=\"label bg-color-orangeDark\">Чөлөөтэй</span></td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                            strTable += "</tr>";
            //                        }
            //                        else if (dr["TP"].ToString() == "31")
            //                        {
            //                            strTable += "<tr>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\"><span class=\"label bg-color-blue\">Албан томилолт</span></td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                            strTable += "</tr>";
            //                        }
            //                        else if (dr["TP"].ToString() == "91")
            //                        {
            //                            strTable += "<tr>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\"><span class=\"label bg-color-lighten\">Тэмдэглэлт өдөр</span></td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
            //                            strTable += "</tr>";
            //                        }
            //                    }
            //                }
            //            }
            //            divworkingtimeTab3StaffDatatableTbody.InnerHtml = strTable;



    //        ModifyDB myObj = new ModifyDB();
    //        string year = Request.QueryString["yr"];
    //        string month = Request.QueryString["mnth"];
    //        string month2 = Request.QueryString["mnth2"];
    //        string stid = Request.QueryString["stid"];
    //        string strMonthList = "";
    //        for (int i = Int32.Parse(month); i <= Int32.Parse(month2); i++)
    //        {
    //            if (strMonthList == "") strMonthList += i.ToString();
    //            else strMonthList += "," + i.ToString();
    //        }
    //        string[] date = new string[3];
    //        string[] time1 = new string[3];
    //        string[] time2 = new string[3];
    //        string strTable = "";
    //        string strQry = @"SELECT  a.ST_ID, b.NEGJ, b.POSNAME, b.STNAME, a.TP, a.DT, a.MINTM, a.MAXTM, a.ISWORK
    //FROM (
    //  SELECT a.ST_ID, a.TP, a.DT, a.MINTM, a.MAXTM, CASE WHEN b.DT is null THEN a.ISWORK ELSE 0 END as ISWORK
    //    FROM(
    //      SELECT a.ST_ID, NVL(b.TP, 0) as TP, a.DT, a.MINTM, a.MAXTM, a.ISWORK
    //      FROM(
    //        SELECT a.ST_ID, a.DT, NVL(b.TP, 0) as TP, NVL(b.MINTM, '00:00:00') as MINTM, NVL(b.MAXTM, '00:00:00') as MAXTM, a.ISWORK
    //        FROM(
    //          SELECT a.STAFFS_ID as ST_ID, a.DT, CASE WHEN b.DT IS NULL THEN a.ISWORK ELSE 1 END as ISWORK
    //          FROM ( 
    //            SELECT a.ID, b.STAFFS_ID, c.FATHER_ID as GAZAR_ID, c.ID as HELTES_ID, a.DT, CASE WHEN(MOD(TO_CHAR(a.DT, 'J'), 7) + 1) = 6 OR(MOD(TO_CHAR(a.DT, 'J'), 7) + 1) = 7 THEN 0 ELSE 1 END as ISWORK
    //            FROM (
    //              SELECT a.ID, a.STAFFS_ID, a.BEGINDT, a.ENDDT, b.DT
    //              FROM (
    //                SELECT a.ID, a.STAFFS_ID, 
    //                  CASE 
    //                    WHEN TO_DATE(a.DT,'YYYY-MM-DD')>TO_DATE('" + year + "-" + month + @"-01','YYYY-MM-DD') 
    //                    THEN a.DT 
    //                    ELSE '" + year + "-" + month + @"-01' 
    //                  END as BEGINDT, 
    //                  CASE 
    //                    --WHEN TO_DATE(CASE WHEN c.ACTIVE=0 THEN NVL(a.ENDDT,a.DT) ELSE NVL(a.ENDDT, TO_CHAR(SYSDATE,'YYYY-MM-DD')) END,'YYYY-MM-DD')<LAST_DAY(TO_DATE('" + year + "-" + month2 + @"-01','YYYY-MM-DD')) 
    //                    --THEN CASE WHEN c.ACTIVE=0 THEN NVL(a.ENDDT,a.DT) ELSE NVL(a.ENDDT, TO_CHAR(SYSDATE,'YYYY-MM-DD')) END ELSE TO_CHAR(LAST_DAY(TO_DATE('" + year + "-" + month2 + @"-01','YYYY-MM-DD')),'YYYY-MM-DD') END as ENDDT
    //                    WHEN TO_DATE(CASE WHEN c.ACTIVE=0 THEN TO_CHAR((TO_DATE(NVL(a.ENDDT,a.DT),'YYYY-MM-DD')-1),'YYYY-MM-DD') ELSE NVL(TO_CHAR((TO_DATE(a.ENDDT,'YYYY-MM-DD')-1),'YYYY-MM-DD'), TO_CHAR(SYSDATE,'YYYY-MM-DD')) END,'YYYY-MM-DD')<LAST_DAY(TO_DATE('" + year + "-" + month2 + @"-01','YYYY-MM-DD')) 
    //                    THEN CASE WHEN c.ACTIVE=0 THEN TO_CHAR((TO_DATE(NVL(a.ENDDT,a.DT),'YYYY-MM-DD')-1),'YYYY-MM-DD') ELSE NVL(TO_CHAR((TO_DATE(a.ENDDT,'YYYY-MM-DD')-1),'YYYY-MM-DD'), TO_CHAR(SYSDATE,'YYYY-MM-DD')) END ELSE TO_CHAR(LAST_DAY(TO_DATE('" + year + "-" + month2 + @"-01','YYYY-MM-DD')),'YYYY-MM-DD') END as ENDDT
    //                FROM hrdbuser.ST_STBR a
    //                INNER JOIN hrdbuser.ST_BRANCH b ON a.BRANCH_ID=b.ID AND b.ISACTIVE=1
    //                INNER JOIN hrdbuser.STN_MOVE c ON a.MOVE_ID=c.ID
    //                WHERE a.POS_ID!=2020102 AND c.ACTIVE=1
    //                AND ((
    //                    TO_DATE('" + year + "-" + month + @"-01','YYYY-MM-DD') 
    //                    BETWEEN TO_DATE(a.DT,'YYYY-MM-DD') AND TO_DATE(CASE WHEN c.ACTIVE=0 THEN NVL(a.ENDDT,a.DT) ELSE NVL(a.ENDDT, TO_CHAR(SYSDATE,'YYYY-MM-DD')) END,'YYYY-MM-DD')
    //                    OR 
    //                    LAST_DAY(TO_DATE('" + year + "-" + month2 + @"-01','YYYY-MM-DD')) 
    //                    BETWEEN TO_DATE(a.DT,'YYYY-MM-DD') AND TO_DATE(CASE WHEN c.ACTIVE=0 THEN NVL(a.ENDDT,a.DT) ELSE NVL(a.ENDDT, TO_CHAR(SYSDATE,'YYYY-MM-DD')) END,'YYYY-MM-DD')
    //                  ) OR 
    //                    (
    //                      TO_DATE('" + year + "-" + month + @"-01','YYYY-MM-DD')<TO_DATE(a.DT,'YYYY-MM-DD') AND LAST_DAY(TO_DATE('" + year + "-" + month2 + @"-01','YYYY-MM-DD'))>TO_DATE(a.DT,'YYYY-MM-DD')
    //                    ))
    //              ) a, (
    //                SELECT DT
    //                FROM(
    //                  SELECT(TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
    //                  FROM DUAL
    //                  CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('" + year + "-" + month2 + @"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd')
    //                )
    //                WHERE DT BETWEEN TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd') AND SYSDATE AND MOD(TO_CHAR(DT, 'J'), 7) + 1 IN(1, 2, 3, 4, 5, 6, 7)
    //              ) b
    //            ) a
    //            INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.ID
    //            INNER JOIN hrdbuser.ST_BRANCH c ON b.BRANCH_ID=c.ID AND c.ISACTIVE=1
    //            WHERE a.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD') AND b.POS_ID!=2020102
    //          ) a
    //          LEFT JOIN(
    //            SELECT TO_DATE(HOLDATE, 'YYYY-MM-DD') as DT FROM hrdbuser.ST_HOLIDAYISWORK WHERE TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE, 'YYYY-MM-DD'), 'YYYY')) = " + year + @" AND TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE, 'YYYY-MM-DD'), 'MM')) IN(" + strMonthList + @")
    //          ) b ON a.DT = b.DT  
    //        ) a
    //        LEFT JOIN(
    //          SELECT a.MONTH, a.INOUT as TP, b.ID as ST_ID, TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY, 'yyyy-mm-dd') as DT, TO_CHAR(MIN(TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY || ' ' || a.HOUR || ':' || a.MINUTE || ':' || a.SECOND, 'yyyy-mm-dd hh24:mi:ss')), 'hh24:mi:ss') as MINTM, TO_CHAR(MAX(TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY || ' ' || a.HOUR || ':' || a.MINUTE || ':' || a.SECOND, 'yyyy-mm-dd hh24:mi:ss')), 'hh24:mi:ss') as MAXTM
    //          FROM STN_TRCDLOG a
    //          INNER JOIN hrdbuser.ST_STAFFS b ON a.ENO = b.FINGERID
    //          INNER JOIN hrdbuser.ST_STBR c ON b.ID = c.STAFFS_ID
    //          INNER JOIN hrdbuser.STN_MOVE d ON c.MOVE_ID = d.ID
    //          INNER JOIN hrdbuser.ST_BRANCH f ON c.BRANCH_ID = f.ID AND f.ISACTIVE = 1
    //          WHERE c.POS_ID!=2020102 AND a.INOUT = 0 AND a.YEAR = " + year + @" AND a.MONTH IN(" + strMonthList + @") AND TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY, 'yyyy-mm-dd') BETWEEN TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd') AND SYSDATE AND MOD(TO_CHAR(TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY, 'yyyy-mm-dd'), 'J'), 7) + 1 IN(1, 2, 3, 4, 5, 6, 7)
    //          GROUP BY a.MONTH, a.INOUT, b.ID, TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY, 'yyyy-mm-dd')
    //        ) b ON a.ST_ID = b.ST_ID AND a.DT = b.DT  
    //      ) a
    //      LEFT JOIN(
    //        SELECT DT, STAFFS_ID, MAX(TP) as TP
    //        FROM(
    //          SELECT b.DT, a.STAFFS_ID, 11 as TP
    //          FROM hrdbuser.ST_CHULUUDAYF3 a,
    //          (
    //            SELECT(TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
    //            FROM DUAL
    //            CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('" + year + "-" + month2 + @"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd')
    //          ) b
    //          WHERE
    //            b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD')
    //          UNION ALL
    //          SELECT b.DT, a.STAFFS_ID, 12 as TP
    //          FROM hrdbuser.ST_CHULUUDAYT2 a,
    //          (
    //            SELECT(TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
    //            FROM DUAL
    //            CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('" + year + "-" + month2 + @"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd')
    //          ) b
    //          WHERE
    //            a.ISRECEIVED = 1 AND
    //            b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD')
    //          UNION ALL
    //          SELECT b.DT, a.STAFFS_ID, 13 as TP
    //          FROM hrdbuser.ST_CHULUUSICK a,
    //          (
    //            SELECT(TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
    //            FROM DUAL
    //            CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('" + year + "-" + month2 + @"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd')
    //          ) b
    //          WHERE
    //            b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD')
    //          UNION ALL
    //          SELECT b.DT, a.STAFFS_ID, 21 as TP
    //          FROM hrdbuser.ST_AMRALT a,
    //          (
    //            SELECT(TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
    //            FROM DUAL
    //            CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('" + year + "-" + month2 + @"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd')
    //          ) b
    //          WHERE
    //            a.TZISRECEIVED = 1 AND
    //            b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD')
    //          UNION ALL
    //          SELECT b.DT, a.STAFFS_ID, 31 as TP
    //          FROM hrdbuser.ST_TOMILOLT_STAFFS a
    //          INNER JOIN hrdbuser.ST_TOMILOLT c ON a.TOMILOLT_ID = c.ID,
    //          (
    //            SELECT(TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
    //            FROM DUAL
    //            CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('" + year + "-" + month2 + @"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('" + year + "-" + month + @"-01', 'yyyy-mm-dd')
    //          ) b
    //          WHERE
    //            b.DT BETWEEN TO_DATE(c.FROMDATE, 'YYYY-MM-DD') AND TO_DATE(c.TODATE, 'YYYY-MM-DD')
    //        )
    //        GROUP BY DT, STAFFS_ID
    //      ) b ON a.DT = b.DT AND a.ST_ID = b.STAFFS_ID
    //    ) a
    //    LEFT JOIN(
    //      SELECT TO_DATE('" + year + @"-' || HOLMONTH || '-' || HOLDAY, 'YYYY-MM-DD') as DT
    //      FROM hrdbuser.ST_HOLIDAYOFFICIAL
    //      WHERE HOLMONTH IN(" + strMonthList + @")
    //      UNION ALL
    //      SELECT TO_DATE(HOLDATE, 'YYYY-MM-DD') as DT
    //      FROM hrdbuser.ST_HOLIDAYUNOFFICIAL
    //      WHERE TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE, 'YYYY-MM-DD'), 'YYYY')) = " + year + @" AND TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE, 'YYYY-MM-DD'), 'MM')) IN(" + strMonthList + @")
    //    ) b ON a.DT = b.DT
    //    GROUP BY a.ST_ID, a.TP, a.DT, a.MINTM, a.MAXTM, CASE WHEN b.DT is null THEN a.ISWORK ELSE 0 END
    //  ORDER BY a.DT
    //) a
    //LEFT JOIN (
    //  SELECT 
    //    a.ID, 
    //    CASE WHEN d.ID=d.FATHER_ID THEN d.INITNAME ELSE f.INITNAME||'-'||d.INITNAME END as NEGJ, 
    //    g.NAME as POSNAME, 
    //    SUBSTR(a.LNAME, 0, 1) || '.' || SUBSTR(a.FNAME, 1, 1) || LOWER(SUBSTR(a.FNAME, 2)) as STNAME, 
    //    d.SORT as NEGJSORT,
    //    g.SORT as POSSORT
    //  FROM hrdbuser.ST_STAFFS a 
    //  INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE=1 
    //  INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID=c.ID AND c.ACTIVE=1 
    //  INNER JOIN hrdbuser.ST_BRANCH d ON b.BRANCH_ID=d.ID 
    //  INNER JOIN hrdbuser.ST_BRANCH f ON d.FATHER_ID=f.ID 
    //  INNER JOIN hrdbuser.STN_POS g ON b.POS_ID=g.ID 
    //) b ON a.ST_ID=b.ID
    //ORDER BY b.NEGJSORT, b.POSSORT";
    //        DataSet ds = myObj.OracleExecuteDataSet(strQry);
    //        if (ds.Tables[0].Rows.Count != 0)
    //        {
    //            foreach (DataRow dr in ds.Tables[0].Rows)
    //            {
    //                Array.Clear(date, 0, date.Length);
    //                date = new string[3];
    //                date = Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd").Split('-');

    //                if (dr["ISWORK"].ToString() == "0")
    //                {
    //                    strTable += "<tr>";
    //                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["NEGJ"].ToString() + "</td>";
    //                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["POSNAME"].ToString() + "</td>";
    //                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["STNAME"].ToString() + "</td>";
    //                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</td>";
    //                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\"><span class=\"label bg-color-blueDark\">Амралтын өдөр</span></td>";
    //                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + dr["MINTM"].ToString().Replace("00:00:00", "--:--:--") + "</td>";
    //                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + dr["MAXTM"].ToString().Replace("00:00:00", "--:--:--") + "</td>";
    //                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                    strTable += "</tr>";
    //                }
    //                else {
    //                    if (dr["TP"].ToString() == "0")
    //                    {
    //                        Array.Clear(time1, 0, time1.Length);
    //                        time1 = new string[3];
    //                        time1 = dr["MINTM"].ToString().Split(':');
    //                        Array.Clear(time2, 0, time2.Length);
    //                        time2 = new string[3];
    //                        time2 = dr["MAXTM"].ToString().Split(':');
    //                        DateTime come = new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), Int32.Parse(time1[0]), Int32.Parse(time1[1]), Int32.Parse(time1[2]));
    //                        DateTime go = new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), Int32.Parse(time2[0]), Int32.Parse(time2[1]), Int32.Parse(time2[2]));
    //                        DateTime late = new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), 08, 40, 00);
    //                        DateTime early = new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), 17, 30, 00);
    //                        if (dr["MINTM"].ToString() != dr["MAXTM"].ToString())
    //                        {
    //                            var lateTimeSpanHour = TimeSpan.FromHours(Convert.ToDouble(come.Subtract(late).Hours));
    //                            var earlyTimeSpanHour = TimeSpan.FromHours(Convert.ToDouble(early.Subtract(go).Hours));
    //                            var lateTimeSpanMin = TimeSpan.FromMinutes(Convert.ToDouble(come.Subtract(late).Minutes));
    //                            var earlyTimeSpanMin = TimeSpan.FromMinutes(Convert.ToDouble(early.Subtract(go).Minutes));
    //                            var lateTimeSpanSec = TimeSpan.FromSeconds(Convert.ToDouble(come.Subtract(late).Seconds));
    //                            var earlyTimeSpanSec = TimeSpan.FromSeconds(Convert.ToDouble(early.Subtract(go).Seconds));
    //                            TimeSpan lateTimeSpan = lateTimeSpanHour + lateTimeSpanMin + lateTimeSpanSec;
    //                            TimeSpan earlyTimeSpan = earlyTimeSpanHour + earlyTimeSpanMin + earlyTimeSpanSec;

    //                            if (Convert.ToDouble(come.Subtract(late).Seconds) > 0)
    //                            {
    //                                if (Convert.ToDouble(go.Subtract(early).Seconds) < 0)
    //                                {
    //                                    strTable += "<tr>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["NEGJ"].ToString() + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["POSNAME"].ToString() + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["STNAME"].ToString() + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\"><span class=\"label bg-color-yellow\">Хоцорсон</span></td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + come.ToString("HH:mm:ss") + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + go.ToString("HH:mm:ss") + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + lateTimeSpan.ToString() + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + earlyTimeSpan.ToString() + "</td>";
    //                                    strTable += "</tr>";
    //                                }
    //                                else
    //                                {
    //                                    strTable += "<tr>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["NEGJ"].ToString() + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["POSNAME"].ToString() + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["STNAME"].ToString() + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\"><span class=\"label bg-color-yellow\">Хоцорсон</span></td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + come.ToString("HH:mm:ss") + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + go.ToString("HH:mm:ss") + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + lateTimeSpan.ToString() + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                                    strTable += "</tr>";
    //                                }
    //                            }
    //                            else
    //                            {
    //                                if (Convert.ToDouble(go.Subtract(early).Seconds) < 0)
    //                                {
    //                                    strTable += "<tr>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["NEGJ"].ToString() + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["POSNAME"].ToString() + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["STNAME"].ToString() + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\"><span class=\"label bg-color-blueLight\">Цагтаа ирсэн</span></td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + come.ToString("HH:mm:ss") + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + go.ToString("HH:mm:ss") + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + earlyTimeSpan.ToString() + "</td>";
    //                                    strTable += "</tr>";
    //                                }
    //                                else
    //                                {
    //                                    strTable += "<tr>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["NEGJ"].ToString() + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["POSNAME"].ToString() + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["STNAME"].ToString() + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\"><span class=\"label bg-color-blueLight\">Цагтаа ирсэн</span></td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + come.ToString("HH:mm:ss") + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + go.ToString("HH:mm:ss") + "</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                                    strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                                    strTable += "</tr>";
    //                                }
    //                            }
    //                        }
    //                        else
    //                        {
    //                            strTable += "<tr>";
    //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["NEGJ"].ToString() + "</td>";
    //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["POSNAME"].ToString() + "</td>";
    //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["STNAME"].ToString() + "</td>";
    //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</td>";
    //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\"><span class=\"label bg-color-redLight\">Тасалсан</span></td>";
    //                            if (come.ToString("HH:mm:ss").Replace("00:00:00", "--:--:--") == "--:--:--") strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td><td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                            else if (come >= new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), 00, 00, 00) && come <= new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), 13, 00, 00)) strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + come.ToString("HH:mm:ss").Replace("00:00:00", "--:--:--") + "</td><td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                            else if (come > new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), 13, 00, 00) && come <= new DateTime(Int32.Parse(date[0]), Int32.Parse(date[1]), Int32.Parse(date[2]), 23, 59, 59)) strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td><td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">" + come.ToString("HH:mm:ss").Replace("00:00:00", "--:--:--") + "</td>";
    //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                            strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                            strTable += "</tr>";
    //                        }
    //                    }
    //                    else if (dr["TP"].ToString() == "13")
    //                    {
    //                        strTable += "<tr>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["NEGJ"].ToString() + "</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["POSNAME"].ToString() + "</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["STNAME"].ToString() + "</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\"><span class=\"label bg-color-pink\">Өвчтэй</span></td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                        strTable += "</tr>";
    //                    }
    //                    else if (dr["TP"].ToString() == "21")
    //                    {
    //                        strTable += "<tr>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["NEGJ"].ToString() + "</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["POSNAME"].ToString() + "</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["STNAME"].ToString() + "</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\"><span class=\"label bg-color-greenDark\">Ээлжийн амралттай</span></td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                        strTable += "</tr>";
    //                    }
    //                    else if (dr["TP"].ToString() == "11" || dr["TP"].ToString() == "12")
    //                    {
    //                        strTable += "<tr>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["NEGJ"].ToString() + "</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["POSNAME"].ToString() + "</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["STNAME"].ToString() + "</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\"><span class=\"label bg-color-orangeDark\">Чөлөөтэй</span></td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                        strTable += "</tr>";
    //                    }
    //                    else if (dr["TP"].ToString() == "31")
    //                    {
    //                        strTable += "<tr>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["NEGJ"].ToString() + "</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["POSNAME"].ToString() + "</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["STNAME"].ToString() + "</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\"><span class=\"label bg-color-blue\">Албан томилолт</span></td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                        strTable += "</tr>";
    //                    }
    //                    else if (dr["TP"].ToString() == "91")
    //                    {
    //                        strTable += "<tr>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["NEGJ"].ToString() + "</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["POSNAME"].ToString() + "</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + dr["STNAME"].ToString() + "</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\">" + Convert.ToDateTime(dr["DT"]).ToString("yyyy-MM-dd") + "</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:center;\"><span class=\"label bg-color-lighten\">Тэмдэглэлт өдөр</span></td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                        strTable += "<td style=\"border: 1px solid #DDD; padding:5px; text-align:right;\">--:--:--</td>";
    //                        strTable += "</tr>";
    //                    }
    //                }
    //            }
    //        }
    //        divworkingtimeTab3StaffDatatableTbody.InnerHtml = strTable;
        }
    }
}