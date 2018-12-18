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
    public partial class planmnthTab1LoadPrintModal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string yr = Request.QueryString["yr"];
            string mnth = Request.QueryString["mnth"];
            string strGazar = "", strHeltes = "";
            if (Request.QueryString["gazar"] != null) strGazar = Request.QueryString["gazar"];
            if (Request.QueryString["heltes"] != null) strHeltes = Request.QueryString["heltes"];
            divMainTable.InnerHtml = planmnthTab1LoadPrintModalDatatable(yr, mnth, strGazar, strHeltes);
        }
        public string planmnthTab1LoadPrintModalDatatable(string yr, string mnth, string gazar, string heltes)
        {
            string strTableVal = "";
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                if (gazar != "") gazar = " AND f.BR_MAIN_ID1=" + gazar;
                if (heltes != "") heltes = " AND f.BR_ID=" + heltes;

                strTableVal += "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\"><thead>";
                strTableVal += "<tr>";
                strTableVal += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">#</th>";
                strTableVal += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Нэгж</th>";
                strTableVal += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Нэр</th>";
                strTableVal += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Албан тушаал</th>";
                strTableVal += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">А/Х тоо</th>";
                strTableVal += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хүн өдөр</th>";
                strTableVal += "</tr>";
                strTableVal += "</thead><tbody>";
                string sql = @"SELECT ROWNUM as ROWNO, a.* 
FROM(
  SELECT
    CASE WHEN c.BR_ID = c.BR_MAIN_ID1 THEN c.DOMAIN_ORG ELSE d.DOMAIN_ORG || '-' || c.DOMAIN_ORG END as NEGJ,
    SUBSTR(b.LNAME, 0, 1) || '.' || SUBSTR(b.FNAME, 1, 1) || LOWER(SUBSTR(b.FNAME, 2)) as ST_NAME,
    f.NAME as POS_NAME,
    a.PLANMNTH_CNT,
    a.DODAY
  FROM(
    SELECT a.USER_ID as ST_ID, SUM(a.DODAY) as DODAY, SUM(a.PLANMNTH_CNT) as PLANMNTH_CNT
    FROM(
      SELECT a.USER_ID, SUM(a.DODAY) as DODAY, COUNT(a.PLANMNTH_ID) as PLANMNTH_CNT
      FROM(
        SELECT a.ID as PLANMNTH_ID, b.USER_ID, a.END_DATE - a.STRT_DATE as DODAY
        FROM TBL_PLANMNTH a
        INNER JOIN TBL_PLANMNTH_USER b ON a.ID = b.PLANMNTH_ID
        INNER JOIN hrdbuser.ST_STAFFS c ON b.USER_ID = c.ID
        INNER JOIN hrdbuser.ST_STBR d ON c.ID = d.STAFFS_ID AND d.ISACTIVE = 1
        INNER JOIN TBL_BRANCH f ON d.BRANCH_ID = f.BR_ID AND f.YR = " + yr + @"
        INNER JOIN TBL_PLANYR g ON a.PLANYR_ID = g.ID
        WHERE g.YR = " + yr + " AND EXTRACT(month FROM a.STRT_DATE) = " + mnth + gazar + heltes + @"
      ) a
      GROUP BY a.USER_ID
      UNION ALL
      SELECT c.ID as USER_ID, 0 as DODAY, 0 as PLANMNTH_CNT
      FROM hrdbuser.ST_STAFFS c
      INNER JOIN hrdbuser.ST_STBR d ON c.ID = d.STAFFS_ID AND d.ISACTIVE = 1
      INNER JOIN TBL_BRANCH f ON d.BRANCH_ID = f.BR_ID AND f.YR = " + yr + @"
      WHERE 1 = 1" + gazar + heltes + @"
    ) a
    GROUP BY a.USER_ID
  ) a
  INNER JOIN hrdbuser.ST_STAFFS b ON a.ST_ID = b.ID
  INNER JOIN hrdbuser.ST_STBR g ON b.ID = g.STAFFS_ID AND g.ISACTIVE = 1
  INNER JOIN TBL_BRANCH c ON g.BRANCH_ID = c.BR_ID AND c.YR = " + yr + @"
  INNER JOIN TBL_BRANCH d ON c.BR_MAIN_ID1 = d.BR_ID AND d.YR = " + yr + @"
  INNER JOIN hrdbuser.STN_POS f ON g.POS_ID = f.ID
  ORDER BY a.DODAY DESC, f.SORT
) a";
                DataSet ds = myObj.OracleExecuteDataSet(sql);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        strTableVal += "<tr>";
                        strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + dr["ROWNO"].ToString() + "</td>";
                        strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + dr["NEGJ"].ToString() + "</td>";
                        strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + dr["ST_NAME"].ToString() + "</td>";
                        strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + dr["POS_NAME"].ToString() + "</td>";
                        strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + dr["PLANMNTH_CNT"].ToString() + "</td>";
                        strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + dr["DODAY"].ToString() + "</td>";
                        strTableVal += "</tr>";
                    }
                }
                strTableVal += "</tbody></table>";
            }
            catch (cs.LMException ex)
            {
                myObjGetTableData.exeptionMethod(ex);
                Response.Redirect("~/#pg/error500.aspx");
            }
            catch (Exception ex)
            {
                myObjGetTableData.exeptionMethod(ex);
                Response.Redirect("~/#pg/error500.aspx");
            }
            return strTableVal;
        }
    }
}