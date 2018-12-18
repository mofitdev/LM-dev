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
    public partial class agreementTab3t1ImplShowModal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                agreementTab3t1ImplShowModalMyImplDiv.InnerHtml = "";
                DataSet ds = myObj.OracleExecuteDataSet("SELECT a.ID, a.PLANYR_ID, d.NO as STRAT_NO, c.NO as ACTION_NO, b.NO as PLANYR_NO, b.NAME as PLANYR_NAME, b.CRITERIA, b.CNT, b.QUALITY, a.MNTHLIST, a.IMPL, a.IMPL1, a.IMPL2, a.IMPL3, a.IMPL4, a.IMPL5, a.ISSPECIAL, CASE WHEN a.ISSPECIAL=0 THEN ROUND(NVL(a.PER,0)*0.3,0) ELSE ROUND(NVL(a.PER,0)*0.4,0) END as PER, NVL2(a.PER1,1,0) as ISPER1, NVL(a.PER1,0) as PER1 FROM ( SELECT a.ID, a.PLANYR_ID, a.ISSPECIAL, a.IMPL, a.IMPL1, a.IMPL2, a.IMPL3, a.IMPL4, a.IMPL5, ROUND(NVL(AVG(b.EVAL),0),1) as PER, a.PER1, NVL(RTRIM(xmlagg (xmlelement (e, b.INTERVAL || ',') ORDER BY b.INTERVAL).extract('//text()'), ','),'-') MNTHLIST FROM ( SELECT a.ID, a.PLANYR_ID, a.ISSPECIAL, b.IMPL, b.IMPL1, b.IMPL2, b.IMPL3, b.IMPL4, b.IMPL5, b.PER1 FROM TBL_AGREEMENT_MAIN a LEFT JOIN TBL_AGREEMENT_MAIN_IMPL b ON a.ID=b.AGREEMENT_MAIN_ID AND b.YRHF=" + Request.QueryString["yrhf"] + " WHERE a.ID=" + Request.QueryString["id"] + " ) a LEFT JOIN TBL_PLANYR_EVAL b ON a.PLANYR_ID=b.PLANYR_ID AND b.TP='month' GROUP BY a.ID, a.PLANYR_ID, a.ISSPECIAL, a.IMPL, a.IMPL1, a.IMPL2, a.IMPL3, a.IMPL4, a.IMPL5, a.PER1 ) a INNER JOIN TBL_PLANYR b ON a.PLANYR_ID=b.ID INNER JOIN TBL_FUNC_ACTION c ON b.FUNC_ACTION_ID=c.ID INNER JOIN TBL_FUNC_STRAT d ON c.FUNC_STRAT_ID=d.ID ORDER BY a.ISSPECIAL, d.NO, c.NO, b.NO");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    agreementTab3t1ImplShowModalMyImplDiv.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["IMPL"].ToString() + ds.Tables[0].Rows[0]["IMPL1"].ToString() + ds.Tables[0].Rows[0]["IMPL2"].ToString() + ds.Tables[0].Rows[0]["IMPL3"].ToString() + ds.Tables[0].Rows[0]["IMPL4"].ToString() + ds.Tables[0].Rows[0]["IMPL5"].ToString());
                }
            }
            catch (cs.LMException ex)
            {
                myObjGetTableData.exeptionMethod(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                myObjGetTableData.exeptionMethod(ex);
                throw ex;
            }
        }
    }
}