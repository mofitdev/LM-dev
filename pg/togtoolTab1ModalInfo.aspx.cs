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
    public partial class togtoolTab1ModalInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                DataSet ds = myObjGetTableData.getCurrentInfo();
                string strCurrentYr = ds.Tables[0].Rows[0]["YEAR"].ToString();
                ds = myObj.OracleExecuteDataSet("SELECT a.TOGTOOL_ID, a.TOGTOOL_TYPE_NAME, a.AKT_NAME, a.SUCCES_DATE, a.NO, a.HARIUTSSAN_BRNAMELIST, a.RECEIVE_DATE, a.DONE_DATE, a.FILE_NAME, NVL(RTRIM(xmlagg (xmlelement (e, b.NAME || 'lt;br/gt;') ORDER BY b.NAME).extract('//text()'), 'lt;br/gt;'),'none') as ZAALTLIST, a.MODIFIED FROM( SELECT a.TOGTOOL_ID, c.NAME as TOGTOOL_TYPE_NAME, b.AKT_NAME, b.SUCCES_DATE, b.NO, a.HARIUTSSAN_BRNAMELIST, b.RECEIVE_DATE, b.DONE_DATE, b.FILE_NAME, 'Үүсгэсэн: ' || SUBSTR(d.LNAME, 0, 1) || '.' || SUBSTR(d.FNAME, 1, 1) || LOWER(SUBSTR(d.FNAME, 2)) || ' ' || TO_CHAR(b.CREATED_DATE, 'yyyy-mm-dd hh24:mi:ss') || 'lt;br/gt;' || 'Сүүлд засварласан: ' || SUBSTR(NVL(f.LNAME, f.LNAME), 0, 1) || '.' || SUBSTR(NVL(f.FNAME, f.FNAME), 1, 1) || LOWER(SUBSTR(NVL(f.FNAME, f.FNAME), 2)) || ' ' || TO_CHAR(NVL(b.MODIFY_DATE, b.CREATED_DATE), 'yyyy-mm-dd hh24:mi:ss') as MODIFIED FROM( SELECT TOGTOOL_ID, NVL(RTRIM(xmlagg(xmlelement(e, DOMAIN_ORG || ',')).extract('//text()'), ','), 'none') as HARIUTSSAN_BRNAMELIST FROM( SELECT a.TOGTOOL_ID, b.DOMAIN_ORG FROM TBL_TOGTOOL_BR a LEFT JOIN TBL_BRANCH b ON a.BR_ID = b.BR_ID AND b.YR = " + strCurrentYr + " WHERE a.TOGTOOL_ID = " + Request.QueryString["id"] + " GROUP BY a.TOGTOOL_ID, b.DOMAIN_ORG ) GROUP BY TOGTOOL_ID ) a INNER JOIN TBL_TOGTOOL b ON a.TOGTOOL_ID = b.ID INNER JOIN TBL_TOGTOOL_TYPE c ON TO_CHAR(b.TOGTOOL_TYPE_ID) = TO_CHAR(c.ID) LEFT JOIN hrdbuser.ST_STAFFS d ON b.CREATED_STAFFID = d.ID LEFT JOIN hrdbuser.ST_STAFFS f ON b.MODIFY_STAFFID = f.ID ) a LEFT JOIN TBL_ZAALT b ON a.TOGTOOL_ID = b.TOGTOOL_ID GROUP BY a.TOGTOOL_ID, a.TOGTOOL_TYPE_NAME, a.AKT_NAME, a.SUCCES_DATE, a.NO, a.HARIUTSSAN_BRNAMELIST, a.RECEIVE_DATE, a.DONE_DATE, a.FILE_NAME, a.MODIFIED");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    togtoolShowModalType.InnerHtml = ds.Tables[0].Rows[0]["TOGTOOL_TYPE_NAME"].ToString();
                    togtoolShowModalName.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["AKT_NAME"].ToString());
                    togtoolShowModalSuccessDate.InnerHtml = ds.Tables[0].Rows[0]["SUCCES_DATE"].ToString();
                    togtoolShowModalNo.InnerHtml = ds.Tables[0].Rows[0]["NO"].ToString();
                    togtoolShowModalHariutsahGazar.InnerHtml = ds.Tables[0].Rows[0]["HARIUTSSAN_BRNAMELIST"].ToString();
                    togtoolShowModalZaalt.InnerHtml = ds.Tables[0].Rows[0]["ZAALTLIST"].ToString();
                    togtoolShowModalReceiveDate.InnerHtml = ds.Tables[0].Rows[0]["RECEIVE_DATE"].ToString();
                    togtoolShowModalDoneDate.InnerHtml = ds.Tables[0].Rows[0]["DONE_DATE"].ToString();
                    togtoolShowModalAttach.InnerHtml = ds.Tables[0].Rows[0]["FILE_NAME"].ToString();
                    togtoolShowModalAttach.Attributes["href"] = "../files/togtool/" + ds.Tables[0].Rows[0]["FILE_NAME"].ToString();
                    togtoolShowModalModifyDescription.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["MODIFIED"].ToString());
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