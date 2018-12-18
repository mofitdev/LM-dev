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
    public partial class planmnthTab1ModalInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                string strQry = @"SELECT c.YR||' | '||TO_NUMBER(TO_CHAR(b.STRT_DATE,'mm'))||' сар' as YR, f.NO||'. '||f.NAME as STRAT_NAME, d.NO||'. '||d.NAME as ACTION_NAME, c.NO||'. '||c.NAME as PLANYR_NAME, b.NO||'. '||b.NAME as PLANMNTH_NAME, TO_CHAR(b.STRT_DATE,'YYYY-MM-DD')||' - '||TO_CHAR(b.END_DATE,'YYYY-MM-DD') as DT, a.CNTSTAFF*((b.END_DATE-b.STRT_DATE)-2*FLOOR((b.END_DATE-b.STRT_DATE)/7)-DECODE(SIGN(TO_CHAR(b.END_DATE,'D')-TO_CHAR(b.STRT_DATE,'D')),-1,2,0)+DECODE(TO_CHAR(b.STRT_DATE,'D'),7,1,0)-DECODE(TO_CHAR(b.END_DATE,'D'),7,1,0)+1) as PERSONDAY, g.DOMAIN_ORG as GAZAR, a.HELTESLIST, a.STAFFNAMELIST 
FROM ( 
  SELECT a.PLANMNTH_ID, a.STAFFNAMELIST, a.CNTSTAFF, NVL(RTRIM(xmlagg (xmlelement (e, ' '|| g.DOMAIN_ORG || ',') ORDER BY g.SORT).extract('//text()'), ','),'none') HELTESLIST 
  FROM ( 
    SELECT a.PLANMNTH_ID, NVL(RTRIM(xmlagg (xmlelement (e, ' '||SUBSTR(c.LNAME,0,1)||'.'||SUBSTR(c.FNAME,1,1)||LOWER(SUBSTR(c.FNAME,2)) || ',') ORDER BY f.SORT, b.USER_ID).extract('//text()'), ','),'none') STAFFNAMELIST, COUNT(b.USER_ID) as CNTSTAFF 
    FROM ( 
      SELECT a.ID as PLANMNTH_ID 
      FROM TBL_PLANMNTH a 
      INNER JOIN TBL_PLANYR b ON a.PLANYR_ID=b.ID 
      INNER JOIN TBL_FUNC_ACTION c ON b.FUNC_ACTION_ID=c.ID 
      INNER JOIN TBL_FUNC_ACTION_BR d ON c.ID=d.FUNC_ACTION_ID 
      INNER JOIN TBL_FUNC_STRAT f ON c.FUNC_STRAT_ID=f.ID AND b.YR=f.YR 
      INNER JOIN TBL_PLANMNTH_USER g ON a.ID=g.PLANMNTH_ID 
      WHERE a.ID=" + Request.QueryString["id"] + @" 
      GROUP BY a.ID 
    ) a 
    INNER JOIN TBL_PLANMNTH_USER b ON a.PLANMNTH_ID=b.PLANMNTH_ID 
    LEFT JOIN hrdbuser.ST_STAFFS c ON b.USER_ID=c.ID
    LEFT JOIN hrdbuser.ST_STBR d ON c.ID=d.STAFFS_ID AND d.ISACTIVE=1
    LEFT JOIN hrdbuser.STN_POS f ON d.POS_ID=f.ID 
    GROUP BY a.PLANMNTH_ID 
  ) a 
  INNER JOIN TBL_PLANMNTH b ON a.PLANMNTH_ID=b.ID 
  INNER JOIN TBL_PLANYR c ON b.PLANYR_ID=c.ID 
  INNER JOIN TBL_FUNC_ACTION d ON c.FUNC_ACTION_ID=d.ID 
  INNER JOIN TBL_FUNC_ACTION_BR f ON d.ID=f.FUNC_ACTION_ID 
  INNER JOIN TBL_BRANCH g ON f.BR_ID=g.BR_ID AND g.YR=c.YR 
  GROUP BY a.PLANMNTH_ID, a.STAFFNAMELIST, a.CNTSTAFF 
) a 
INNER JOIN TBL_PLANMNTH b ON a.PLANMNTH_ID=b.ID 
INNER JOIN TBL_PLANYR c ON b.PLANYR_ID=c.ID 
INNER JOIN TBL_FUNC_ACTION d ON c.FUNC_ACTION_ID=d.ID 
INNER JOIN TBL_FUNC_STRAT f ON d.FUNC_STRAT_ID=f.ID 
INNER JOIN TBL_BRANCH g ON f.BR_ID=g.BR_ID AND g.YR=f.YR";
                DataSet ds = myObj.OracleExecuteDataSet(strQry);
                showModalYear.InnerHtml = ds.Tables[0].Rows[0]["YR"].ToString();
                showModalStrat.InnerHtml = ds.Tables[0].Rows[0]["STRAT_NAME"].ToString();
                showModalAction.InnerHtml = ds.Tables[0].Rows[0]["ACTION_NAME"].ToString();
                showModalYearplan.InnerHtml = ds.Tables[0].Rows[0]["PLANYR_NAME"].ToString();
                showModalPlan.InnerHtml = ds.Tables[0].Rows[0]["PLANMNTH_NAME"].ToString();
                showModalDt.InnerHtml = ds.Tables[0].Rows[0]["DT"].ToString();
                showModalDoday.InnerHtml = ds.Tables[0].Rows[0]["PERSONDAY"].ToString();
                showModalGazar.InnerHtml = ds.Tables[0].Rows[0]["GAZAR"].ToString();
                showModalHeltes.InnerHtml = ds.Tables[0].Rows[0]["HELTESLIST"].ToString();
                showModalStafflist.InnerHtml = ds.Tables[0].Rows[0]["STAFFNAMELIST"].ToString();
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