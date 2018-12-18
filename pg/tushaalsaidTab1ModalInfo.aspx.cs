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
    public partial class tushaalsaidTab1ModalInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            try {
                DataSet ds = myObjGetTableData.getCurrentInfo();
                string strCurrentYr = ds.Tables[0].Rows[0]["YEAR"].ToString();
                ds = myObj.OracleExecuteDataSet("SELECT a.TUSHAAL_ID, a.TUSHAAL_TYPE_NAME, a.TUSHAAL_NAME, a.SUCCESS_DATE, a.TUSHAAL_NUMBER, a.BOLOVSRUULSAN_BRNAMELIST, a.BOLOVSRUULSAN_STNAMELIST, a.HARIUTSSAN_BRNAMELIST, a.HARIUTSSAN_STNAMELIST, a.FILE_URL, NVL(RTRIM(xmlagg (xmlelement (e, b.NAME || 'lt;br/gt;') ORDER BY b.NAME).extract('//text()'), 'lt;br/gt;'),'none'), a.MODIFIED FROM ( SELECT a.TUSHAAL_ID, c.NAME as TUSHAAL_TYPE_NAME, b.TUSHAAL_NAME, b.SUCCESS_DATE, b.TUSHAAL_NUMBER, b.TUSHAAL_DESCRIPTION, a.BOLOVSRUULSAN_BRNAMELIST, a.HARIUTSSAN_BRNAMELIST, a.BOLOVSRUULSAN_STNAMELIST, a.HARIUTSSAN_STNAMELIST, b.FILE_URL, 'Үүсгэсэн: '||SUBSTR(d.LNAME,0,1)||'.'||SUBSTR(d.FNAME,1,1)||LOWER(SUBSTR(d.FNAME,2))||' '||TO_CHAR(b.INSERT_DATE,'yyyy-mm-dd hh24:mi:ss')||'lt;br/gt;'||'Сүүлд засварласан: '||SUBSTR(NVL(f.LNAME,f.LNAME),0,1)||'.'||SUBSTR(NVL(f.FNAME,f.FNAME),1,1)||LOWER(SUBSTR(NVL(f.FNAME,f.FNAME),2))||' '||TO_CHAR(NVL(b.UPDATE_DATE,b.INSERT_DATE),'yyyy-mm-dd hh24:mi:ss') as MODIFIED FROM ( SELECT TUSHAAL_ID, BOLOVSRUULSAN_BRNAMELIST, HARIUTSSAN_BRNAMELIST, BOLOVSRUULSAN_STNAMELIST, NVL(RTRIM(xmlagg (xmlelement (e, ST_NAME || ',')).extract('//text()'), ','),'none') as HARIUTSSAN_STNAMELIST FROM ( SELECT a.TUSHAAL_ID, a.BOLOVSRUULSAN_BRNAMELIST, a.HARIUTSSAN_BRNAMELIST, a.BOLOVSRUULSAN_STNAMELIST, SUBSTR(c.LNAME,0,1)||'.'||SUBSTR(c.FNAME,1,1)||LOWER(SUBSTR(c.FNAME,2)) as ST_NAME FROM ( SELECT TUSHAAL_ID, BOLOVSRUULSAN_BRNAMELIST, HARIUTSSAN_BRNAMELIST, NVL(RTRIM(xmlagg (xmlelement (e, ST_NAME || ',')).extract('//text()'), ','),'none') as BOLOVSRUULSAN_STNAMELIST FROM ( SELECT a.TUSHAAL_ID, a.BOLOVSRUULSAN_BRNAMELIST, a.HARIUTSSAN_BRNAMELIST, SUBSTR(c.LNAME,0,1)||'.'||SUBSTR(c.FNAME,1,1)||LOWER(SUBSTR(c.FNAME,2)) as ST_NAME FROM ( SELECT TUSHAAL_ID, BOLOVSRUULSAN_BRNAMELIST, NVL(RTRIM(xmlagg (xmlelement (e, DOMAIN_ORG || ',')).extract('//text()'), ','),'none') as HARIUTSSAN_BRNAMELIST FROM ( SELECT a.TUSHAAL_ID, a.BOLOVSRUULSAN_BRNAMELIST, c.DOMAIN_ORG FROM ( SELECT TUSHAAL_ID, NVL(RTRIM(xmlagg (xmlelement (e, DOMAIN_ORG || ',')).extract('//text()'), ','),'none') as BOLOVSRUULSAN_BRNAMELIST FROM ( SELECT a.TUSHAAL_ID, b.DOMAIN_ORG FROM TBL_TUSHAAL_BR a LEFT JOIN TBL_BRANCH b ON a.BR_ID=b.BR_ID AND b.YR=" + strCurrentYr + " WHERE a.TUSHAAL_ID=" + Request.QueryString["id"] + " AND a.BR_TYPE=2 GROUP BY a.TUSHAAL_ID, b.DOMAIN_ORG ) GROUP BY TUSHAAL_ID ) a LEFT JOIN TBL_TUSHAAL_BR b ON a.TUSHAAL_ID=b.TUSHAAL_ID AND b.BR_TYPE=1 LEFT JOIN TBL_BRANCH c ON b.BR_ID=c.BR_ID AND c.YR=" + strCurrentYr + " GROUP BY a.TUSHAAL_ID, a.BOLOVSRUULSAN_BRNAMELIST, c.DOMAIN_ORG ) GROUP BY TUSHAAL_ID, BOLOVSRUULSAN_BRNAMELIST ) a LEFT JOIN TBL_TUSHAAL_USERS b ON a.TUSHAAL_ID=b.TUSHAAL_ID AND b.USER_TYPE=2 LEFT JOIN hrdbuser.ST_STAFFS c ON b.ST_ID=c.ID GROUP BY a.TUSHAAL_ID, a.BOLOVSRUULSAN_BRNAMELIST, a.HARIUTSSAN_BRNAMELIST, SUBSTR(c.LNAME,0,1)||'.'||SUBSTR(c.FNAME,1,1)||LOWER(SUBSTR(c.FNAME,2)) ) GROUP BY TUSHAAL_ID, BOLOVSRUULSAN_BRNAMELIST, HARIUTSSAN_BRNAMELIST ) a LEFT JOIN TBL_TUSHAAL_USERS b ON a.TUSHAAL_ID=b.TUSHAAL_ID AND b.USER_TYPE=1 LEFT JOIN hrdbuser.ST_STAFFS c ON b.ST_ID=c.ID GROUP BY a.TUSHAAL_ID, a.BOLOVSRUULSAN_BRNAMELIST, a.HARIUTSSAN_BRNAMELIST, a.BOLOVSRUULSAN_STNAMELIST, SUBSTR(c.LNAME,0,1)||'.'||SUBSTR(c.FNAME,1,1)||LOWER(SUBSTR(c.FNAME,2)) ) GROUP BY TUSHAAL_ID, BOLOVSRUULSAN_BRNAMELIST, HARIUTSSAN_BRNAMELIST, BOLOVSRUULSAN_STNAMELIST ) a INNER JOIN TBL_TUSHAAL b ON a.TUSHAAL_ID=b.ID INNER JOIN TBL_TUSHAAL_TYPE c ON TO_CHAR(b.TUSHAAL_TYPE_ID)=TO_CHAR(c.ID) INNER JOIN hrdbuser.ST_STAFFS d ON b.INSERT_USER=d.ID LEFT JOIN hrdbuser.ST_STAFFS f ON b.UPDATE_USER=f.ID ) a LEFT JOIN TBL_TUSHAAL_ZAALT b ON a.TUSHAAL_ID=b.TUSHAAL_ID  GROUP BY a.TUSHAAL_ID, a.TUSHAAL_TYPE_NAME, a.TUSHAAL_NAME, a.SUCCESS_DATE, a.TUSHAAL_NUMBER, a.BOLOVSRUULSAN_BRNAMELIST, a.BOLOVSRUULSAN_STNAMELIST, a.HARIUTSSAN_BRNAMELIST, a.HARIUTSSAN_STNAMELIST, a.FILE_URL, a.MODIFIED ");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    tushaalsaidShowModalType.InnerHtml = ds.Tables[0].Rows[0][1].ToString();
                    tushaalsaidShowModalTushaalName.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0][2].ToString());
                    tushaalsaidShowModalSuccessDate.InnerHtml = ds.Tables[0].Rows[0][3].ToString();
                    tushaalsaidShowModalNo.InnerHtml = ds.Tables[0].Rows[0][4].ToString();
                    tushaalsaidShowModalBolovsruulsanGazar.InnerHtml = ds.Tables[0].Rows[0][5].ToString();
                    tushaalsaidShowModalBolovsruulsanStaff.InnerHtml = ds.Tables[0].Rows[0][6].ToString();
                    tushaalsaidShowModalHariutsahGazar.InnerHtml = ds.Tables[0].Rows[0][7].ToString();
                    tushaalsaidShowModalHariutsahStaff.InnerHtml = ds.Tables[0].Rows[0][8].ToString();
                    tushaalsaidShowModalZaalt.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0][10].ToString());
                    tushaalsaidShowModalAttach.InnerHtml = ds.Tables[0].Rows[0][9].ToString();
                    tushaalsaidShowModalAttach.Attributes["href"] = "../files/tushaal/" + ds.Tables[0].Rows[0][9].ToString();
                    tushaalsaidShowModalModifyDescription.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0][11].ToString());
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