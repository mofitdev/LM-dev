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
    public partial class planmnthExternalauditTab2ModalInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                DataSet ds = myObjGetTableData.getCurrentInfo();
                string strCurrentYr = ds.Tables[0].Rows[0]["YEAR"].ToString();
                ds = myObj.OracleExecuteDataSet(@"SELECT 
      a.ID, 
      c.NO as AUDITEXTERNAL_REPORT_NO, 
      c.NAME as AUDITEXTERNAL_REPORT_NAME, 
      d.NO as AUDITEXTERNAL_TYPE_NO, 
      d.NAME as AUDITEXTERNAL_TYPE_NAME, 
      b.NO, 
      b.NAME, 
      b.DT, 
      a.BRLISTNAME, 
      CASE WHEN b.SUCCESSDATE is null THEN 'Байнга' ELSE b.SUCCESSDATE END as SUCCESSDATE, 
      'Үүсгэсэн: ' || SUBSTR(f.LNAME, 0, 1) || '.' || SUBSTR(f.FNAME, 1, 1) || LOWER(SUBSTR(f.FNAME, 2)) || ' ' || TO_CHAR(b.CREATED_DATE, 'yyyy-mm-dd hh24:mi:ss') || 'lt;br/gt;' || 'Сүүлд засварласан: ' || SUBSTR(NVL(g.LNAME, f.LNAME), 0, 1) || '.' || SUBSTR(NVL(g.FNAME, f.FNAME), 1, 1) || LOWER(SUBSTR(NVL(g.FNAME, f.FNAME), 2)) || ' ' || TO_CHAR(NVL(b.UPDATED_DATE, b.CREATED_DATE), 'yyyy-mm-dd hh24:mi:ss') as MODIFIED
    FROM (
      SELECT a.ID, NVL(RTRIM(xmlagg(xmlelement(e, b.DOMAIN_ORG || ',') ORDER BY b.SORT).extract('//text()'), ','), 'none') as BRLISTNAME
      FROM(
        SELECT ID, BR_ID
        FROM(
          SELECT a.ID, b.BR_ID
          FROM TBL_AUDITEXTERNAL_RECOMMEND a
          INNER JOIN TBL_AUDITEXTERNAL_REC_BR b ON a.ID = b.AUDITEXTERNAL_RECOMMEND_ID
          INNER JOIN TBL_AUDITEXTERNAL_REPORT c ON a.AUDITEXTERNAL_REPORT_ID = c.ID
          WHERE a.ID=" + Request.QueryString["id"] + @"
          GROUP BY a.ID, b.BR_ID
          UNION ALL
          SELECT a.ID, b.BR_ID
          FROM TBL_AUDITEXTERNAL_RECOMMEND a
          INNER JOIN TBL_AUDITEXTERNAL_REC_BR2 b ON a.ID = b.AUDITEXTERNAL_RECOMMEND_ID
          INNER JOIN TBL_AUDITEXTERNAL_REPORT c ON a.AUDITEXTERNAL_REPORT_ID = c.ID
          WHERE a.ID=" + Request.QueryString["id"] + @"
          GROUP BY a.ID, b.BR_ID
        )
        GROUP BY ID, BR_ID
      ) a
      LEFT JOIN TBL_BRANCH b ON a.BR_ID = b.BR_ID AND b.YR IN(SELECT YR FROM TBL_SYSSET WHERE ACTIVE = 1)
      GROUP BY a.ID
    ) a
    INNER JOIN TBL_AUDITEXTERNAL_RECOMMEND b ON a.ID = b.ID
    INNER JOIN TBL_AUDITEXTERNAL_REPORT c ON b.AUDITEXTERNAL_REPORT_ID = c.ID
    INNER JOIN TBL_AUDITEXTERNAL_TYPE d ON b.AUDITEXTERNAL_TYPE_ID = d.ID
    INNER JOIN hrdbuser.ST_STAFFS f ON b.CREATED_STAFFID = f.ID 
    LEFT JOIN hrdbuser.ST_STAFFS g ON b.UPDATED_STAFFID = g.ID
    ORDER BY c.NO, d.NO, b.NO");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    externalAuditShowModalReportNo.InnerHtml = ds.Tables[0].Rows[0]["AUDITEXTERNAL_REPORT_NO"].ToString();
                    externalAuditShowModalReportName.InnerHtml = ds.Tables[0].Rows[0]["AUDITEXTERNAL_REPORT_NAME"].ToString();
                    externalAuditShowModalTypeName.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["AUDITEXTERNAL_TYPE_NAME"].ToString());
                    externalAuditShowModalNo.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["NO"].ToString());
                    externalAuditShowModalName.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["NAME"].ToString());
                    externalAuditShowModalDt.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["DT"].ToString());
                    externalAuditShowModalHariutsahGazar.InnerHtml = ds.Tables[0].Rows[0]["BRLISTNAME"].ToString();
                    externalAuditShowModalSuccessDate.InnerHtml = ds.Tables[0].Rows[0]["SUCCESSDATE"].ToString();
                    externalAuditShowModalModifyDescription.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(ds.Tables[0].Rows[0]["MODIFIED"].ToString());
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