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
    public partial class tushaalsaidTab2ModalInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            try {
                DataSet ds = myObjGetTableData.getCurrentInfo();
                string strCurrentYr = ds.Tables[0].Rows[0]["YEAR"].ToString();
                ds = myObj.OracleExecuteDataSet("SELECT c.TUSHAAL_TYPE_ID, b.TUSHAAL_ID, d.NAME as TUSHAAL_TYPE_NAME, c.TUSHAAL_NAME, c.SUCCESS_DATE, c.TUSHAAL_NUMBER, a.BOLOVSRUULSAN_BRNAMELIST, a.HARIUTSSAN_BRNAMELIST, b.ID as ZAALT_ID, b.NAME as ZAALT_NAME, b.ENDDATE , 'Үүсгэсэн: ' || SUBSTR(f.LNAME, 0, 1) || '.' || SUBSTR(f.FNAME, 1, 1) || LOWER(SUBSTR(f.FNAME, 2)) || ' ' || TO_CHAR(b.CREATED_DATE, 'yyyy-mm-dd hh24:mi:ss') || 'lt;br/gt;' || 'Сүүлд засварласан: ' || SUBSTR(NVL(g.LNAME, f.LNAME), 0, 1) || '.' || SUBSTR(NVL(g.FNAME, f.FNAME), 1, 1) || LOWER(SUBSTR(NVL(g.FNAME, f.FNAME), 2)) || ' ' || TO_CHAR(NVL(b.MODIFY_DATE, b.CREATED_DATE), 'yyyy-mm-dd hh24:mi:ss') as MODIFIED FROM( SELECT TUSHAAL_ZAALT_ID, BOLOVSRUULSAN_BRNAMELIST, NVL(RTRIM(xmlagg(xmlelement(e, DOMAIN_ORG || ',')).extract('//text()'), ','), 'none') as HARIUTSSAN_BRNAMELIST FROM ( SELECT a.TUSHAAL_ZAALT_ID, a.BOLOVSRUULSAN_BRNAMELIST, b.BR_ID, c.DOMAIN_ORG FROM( SELECT TUSHAAL_ZAALT_ID, NVL(RTRIM(xmlagg(xmlelement(e, DOMAIN_ORG || ',')).extract('//text()'), ','), 'none') as BOLOVSRUULSAN_BRNAMELIST FROM( SELECT a.TUSHAAL_ZAALT_ID, b.BR_ID, c.DOMAIN_ORG FROM( SELECT a.ID as TUSHAAL_ZAALT_ID FROM TBL_TUSHAAL_ZAALT a INNER JOIN TBL_TUSHAAL b ON a.TUSHAAL_ID = b.ID LEFT JOIN TBL_TUSHAAL_ZAALT_BR c ON a.ID = c.TUSHAAL_ZAALT_ID WHERE a.ID = " + Request.QueryString["id"] + " ) a LEFT JOIN TBL_TUSHAAL_ZAALT_BR b ON a.TUSHAAL_ZAALT_ID = b.TUSHAAL_ZAALT_ID AND b.BR_TYPE = 2 LEFT JOIN TBL_BRANCH c ON b.BR_ID = c.BR_ID AND c.YR = " + strCurrentYr + " GROUP BY a.TUSHAAL_ZAALT_ID, b.BR_ID, c.DOMAIN_ORG ) GROUP BY TUSHAAL_ZAALT_ID ) a LEFT JOIN TBL_TUSHAAL_ZAALT_BR b ON a.TUSHAAL_ZAALT_ID = b.TUSHAAL_ZAALT_ID AND b.BR_TYPE = 1 LEFT JOIN TBL_BRANCH c ON b.BR_ID = c.BR_ID AND c.YR = " + strCurrentYr + " GROUP BY a.TUSHAAL_ZAALT_ID, a.BOLOVSRUULSAN_BRNAMELIST, b.BR_ID, c.DOMAIN_ORG ) GROUP BY TUSHAAL_ZAALT_ID, BOLOVSRUULSAN_BRNAMELIST ) a INNER JOIN TBL_TUSHAAL_ZAALT b ON a.TUSHAAL_ZAALT_ID = b.ID INNER JOIN TBL_TUSHAAL c ON b.TUSHAAL_ID = c.ID INNER JOIN TBL_TUSHAAL_TYPE d ON TO_CHAR(c.TUSHAAL_TYPE_ID) = TO_CHAR(d.ID) INNER JOIN hrdbuser.ST_STAFFS f ON b.CREATED_STAFFID = f.ID LEFT JOIN hrdbuser.ST_STAFFS g ON b.MODIFY_STAFFID = g.ID ORDER BY c.SUCCESS_DATE DESC");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    tushaalsaidShowModalType.InnerHtml = ds.Tables[0].Rows[0]["TUSHAAL_TYPE_NAME"].ToString();
                    tushaalsaidShowModalSuccessDate.InnerHtml = ds.Tables[0].Rows[0]["SUCCESS_DATE"].ToString();
                    tushaalsaidShowModalTushaalNo.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["TUSHAAL_NUMBER"].ToString());
                    tushaalsaidShowModalTushaalName.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["TUSHAAL_NAME"].ToString());
                    tushaalsaidShowModalZaaltName.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["ZAALT_NAME"].ToString());
                    tushaalsaidShowModalEnddate.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["ENDDATE"].ToString());
                    tushaalsaidShowModalBolovsruulsanGazar.InnerHtml = ds.Tables[0].Rows[0]["BOLOVSRUULSAN_BRNAMELIST"].ToString();
                    tushaalsaidShowModalHariutsahGazar.InnerHtml = ds.Tables[0].Rows[0]["HARIUTSSAN_BRNAMELIST"].ToString();
                    tushaalsaidShowModalModifyDescription.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["MODIFIED"].ToString());
                }
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