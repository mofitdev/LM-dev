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
    public partial class planyrTab3LoadPrintModal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                string yr = Request.QueryString["yr"];
                string strGazar = "", strHeltes = "";
                string strTableVal = "";
                if (Request.QueryString["gazar"] != null) strGazar = Request.QueryString["gazar"];
                if (Request.QueryString["heltes"] != null) strHeltes = Request.QueryString["heltes"];
                if (strGazar != "") strGazar = " AND g.FATHER_ID=" + strGazar;
                if (strHeltes != "") strHeltes = " AND g.ID=" + strHeltes;
                strTableVal += "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\"><thead>";
                strTableVal += "<tr>";
                strTableVal += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">#</th>";
                strTableVal += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">А/Х тоо</th>";
                strTableVal += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Нэр</th>";
                strTableVal += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Албан тушаал</th>";
                strTableVal += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хүн өдөр</th>";
                strTableVal += "</tr>";
                strTableVal += "</thead><tbody>";
                DataSet ds = myObj.OracleExecuteDataSet(@"SELECT ROWNUM as ROWNO, a.* 
FROM ( 
  SELECT a.ST_ID, a.ST_NAME, a.POS_NAME, SUM(a.DODAY) as DODAY, a.POSSORT, SUM(a.PLANYR_CNT) as PLANYR_CNT 
  FROM ( 
    SELECT a.ST_ID, a.ST_NAME, a.POS_NAME, SUM(a.DODAY) as DODAY, a.POSSORT, COUNT(a.PLANYR_ID) as PLANYR_CNT 
    FROM ( 
      SELECT a.ID as PLANYR_ID, b.ST_ID, SUBSTR(c.LNAME,0,1)||'.'||SUBSTR(c.FNAME,1,1)||LOWER(SUBSTR(c.FNAME,2)) as ST_NAME, f.NAME as POS_NAME, a.DODAY, f.SORT as POSSORT 
      FROM TBL_PLANYR a 
      INNER JOIN TBL_PLANYR_USER b ON a.ID=b.PLANYR_ID 
      INNER JOIN hrdbuser.ST_STAFFS c ON b.ST_ID=c.ID
      INNER JOIN hrdbuser.ST_STBR d ON c.ID=d.STAFFS_ID AND d.ISACTIVE=1
      INNER JOIN hrdbuser.STN_POS f ON d.POS_ID=f.ID 
      INNER JOIN hrdbuser.ST_BRANCH g ON d.BRANCH_ID=g.ID AND g.ISACTIVE=1
      WHERE a.YR=" + yr + strGazar + strHeltes + @" 
    ) a
    GROUP BY a.ST_ID, a.ST_NAME, a.POS_NAME, a.POSSORT
    UNION ALL
    SELECT c.ID as ST_ID, SUBSTR(c.LNAME, 0, 1) || '.' || SUBSTR(c.FNAME, 1, 1) || LOWER(SUBSTR(c.FNAME, 2)) as ST_NAME, f.NAME as POS_NAME, 0 as DODAY, f.SORT as POSSORT, 0 as PLANMNTH_ID
    FROM hrdbuser.ST_STAFFS c
    INNER JOIN hrdbuser.ST_STBR d ON c.ID = d.STAFFS_ID AND d.ISACTIVE = 1
    INNER JOIN hrdbuser.STN_POS f ON d.POS_ID = f.ID
    INNER JOIN hrdbuser.ST_BRANCH g ON d.BRANCH_ID = g.ID AND g.ISACTIVE = 1
    INNER JOIN hrdbuser.STN_MOVE h ON d.MOVE_ID = h.ID AND h.ACTIVE = 1
    WHERE 1 = 1" + strGazar + strHeltes + @"
  ) a
  GROUP BY a.ST_ID, a.ST_NAME, a.POS_NAME, a.POSSORT
  ORDER BY SUM(a.DODAY)DESC, a.POSSORT, a.ST_ID
) a");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        strTableVal += "<tr>";
                        strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + dr["ROWNO"].ToString() + "</td>";
                        strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + dr["POSSORT"].ToString() + "</td>";
                        strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + dr["ST_NAME"].ToString() + "</td>";
                        strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + dr["POS_NAME"].ToString() + "</td>";
                        strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + dr["DODAY"].ToString() + "</td>";
                        strTableVal += "</tr>";
                    }
                }
                strTableVal += "</tbody></table>";
                divMainTable.InnerHtml = strTableVal;
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
        }
    }
}