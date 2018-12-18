using LMWebApp.cs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMWebApp.pg
{
    public partial class myprofile : System.Web.UI.Page
    {
        string datas = "", userId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LM_UserID"] == null) Response.Redirect("~/login");
            else setDatas();    
        }
        protected void setDatas()
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                userId = Session["LM_UserID"].ToString();
                datas = myObj.OracleExecuteScalar("SELECT a.WY_DATE||'~'||SUBSTR(a.MNAME,1,1)||LOWER(SUBSTR(a.MNAME,2))||' '||SUBSTR(a.LNAME,1,1)||LOWER(SUBSTR(a.LNAME,2))||'~'||b.BR_NAME||'~'||c.POS_NAME||'~'||NVL(RTRIM(xmlagg (xmlelement (e, e.ROLE_NAME || ', ') ORDER BY e.ID).extract('//text()'), ', '),'none') as datas FROM ST_STAFFS a INNER JOIN ST_BRANCH b ON a.BR_ID=b.BR_ID INNER JOIN ST_POS c ON a.POS_ID=c.POS_ID INNER JOIN TBL_USER_ROLE d ON a.ST_ID=d.USER_ID INNER JOIN TBL_ROLE e ON d.ROLE_ID=e.ID WHERE a.ST_ID=" + userId + " GROUP BY a.WY_DATE, SUBSTR(a.MNAME,1,1), LOWER(SUBSTR(a.MNAME,2)), SUBSTR(a.LNAME,1,1), LOWER(SUBSTR(a.LNAME,2)), b.BR_NAME, c.POS_NAME").ToString();
                staffJoined.InnerHtml = datas.Split('~')[0];
                staffName.InnerHtml = datas.Split('~')[1];
                staffBranch.InnerHtml = datas.Split('~')[2];
                staffPos.InnerHtml = datas.Split('~')[3];
                staffRoles.InnerHtml = datas.Split('~')[4];
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