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
    public partial class lwTab3ModalInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                string qry = "SELECT f.NAME as LAWTYPENAME, d.NAME as LAWNAME, c.NO, c.NAME, a.NEGJLISTNAME, c.PERSONDAY, CASE WHEN c.ISJOBDESC=1 THEN '&#x2714;' ELSE null END as ISJOBDESC, CASE WHEN c.ISPLANYR=1 THEN '&#x2714;' ELSE null END as ISPLANYR, c.DESCRIPTION FROM ( SELECT a.LAWZAALT_ID, NVL(RTRIM(xmlagg (xmlelement (e, c.BR_ID || ',')).extract('//text()'), ','),'none') as NEGJLISTID, NVL(RTRIM(xmlagg (xmlelement (e, ' '||CASE WHEN c.BR_ID=c.BR_MAIN_ID1 THEN c.DOMAIN_ORG ELSE d.DOMAIN_ORG||'-'||c.DOMAIN_ORG END || ',')).extract('//text()'), ','),'none') as NEGJLISTNAME FROM ( SELECT a.ID as LAWZAALT_ID FROM TBL_LAWZAALT a LEFT JOIN TBL_LAWZAALT_BR b ON a.ID=b.LAWZAALT_ID LEFT JOIN TBL_BRANCH c ON b.BR_ID=c.BR_ID AND c.YR=" + Request.QueryString["yr"] + " INNER JOIN TBL_LAW d ON a.LAW_ID=d.ID WHERE a.ID=" + Request.QueryString["id"] + " GROUP BY a.ID ) a LEFT JOIN TBL_LAWZAALT_BR b ON a.LAWZAALT_ID=b.LAWZAALT_ID LEFT JOIN TBL_BRANCH c ON b.BR_ID=c.BR_ID AND c.YR=" + Request.QueryString["yr"] + " LEFT JOIN TBL_BRANCH d ON c.BR_MAIN_ID1=d.BR_ID AND d.YR=" + Request.QueryString["yr"] + " GROUP BY a.LAWZAALT_ID ) a INNER JOIN TBL_LAWZAALT c ON a.LAWZAALT_ID=c.ID INNER JOIN TBL_LAW d ON c.LAW_ID=d.ID INNER JOIN TBL_LAW_TYPE f ON d.LAW_TYPE_ID=f.ID";
                DataSet ds = myObj.OracleExecuteDataSet(qry);
                showModalType.InnerHtml = ds.Tables[0].Rows[0]["LAWTYPENAME"].ToString();
                showModalLaw.InnerHtml = ds.Tables[0].Rows[0]["LAWNAME"].ToString();
                showModalNo.InnerHtml = ds.Tables[0].Rows[0]["NO"].ToString();
                showModalName.InnerHtml = ds.Tables[0].Rows[0]["NAME"].ToString();
                showModalBranch.InnerHtml = ds.Tables[0].Rows[0]["NEGJLISTNAME"].ToString();
                showModalPersonday.InnerHtml = ds.Tables[0].Rows[0]["PERSONDAY"].ToString();
                showModalIsjobdesc.InnerHtml = ds.Tables[0].Rows[0]["ISJOBDESC"].ToString();
                showModalIsplanyr.InnerHtml = ds.Tables[0].Rows[0]["ISPLANYR"].ToString();
                showModalDescription.InnerHtml = ds.Tables[0].Rows[0]["DESCRIPTION"].ToString();
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