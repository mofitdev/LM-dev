using LMWebApp.cs;
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMWebApp.pg
{
    public partial class implweek : System.Web.UI.Page
    {
        string userId="", currentYear = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LM_UserID"] == null) Response.Redirect("~/login");
            else setDatas();
        }
        protected void setDatas()
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                ModifyDB myObj = new ModifyDB();
                DataSet ds = myObjGetTableData.getCurrentInfo();
                userId = Session["LM_UserID"].ToString();
                currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
                implweekTab1t1SelectYear.SelectedIndex = implweekTab1t1SelectYear.Items.IndexOf(implweekTab1t1SelectYear.Items.FindByValue(currentYear));
                implweekTab1t2SelectYear.SelectedIndex = implweekTab1t2SelectYear.Items.IndexOf(implweekTab1t2SelectYear.Items.FindByValue(currentYear));
                implweekTab2t1SelectYear.SelectedIndex = implweekTab2t1SelectYear.Items.IndexOf(implweekTab2t1SelectYear.Items.FindByValue(currentYear));
                implweekTab2t2SelectYear.SelectedIndex = implweekTab2t2SelectYear.Items.IndexOf(implweekTab2t2SelectYear.Items.FindByValue(currentYear));
                implweekTab3t1SelectYear.SelectedIndex = implweekTab3t1SelectYear.Items.IndexOf(implweekTab3t1SelectYear.Items.FindByValue(currentYear));
                implweekTab3t2SelectYear.SelectedIndex = implweekTab3t2SelectYear.Items.IndexOf(implweekTab3t2SelectYear.Items.FindByValue(currentYear));
                implweekTab3SelectYear.SelectedIndex = implweekTab3SelectYear.Items.IndexOf(implweekTab3SelectYear.Items.FindByValue(currentYear));
                implweekTab4SelectYear.SelectedIndex = implweekTab4SelectYear.Items.IndexOf(implweekTab4SelectYear.Items.FindByValue(currentYear));
                implweekTab3Leaders.InnerHtml = myObj.OracleExecuteScalar(@"SELECT (
    SELECT SUBSTR(LNAME,0,1)||'.'||SUBSTR(FNAME,1,1)||LOWER(SUBSTR(FNAME,2)) as NAME
    FROM hrdbuser.ST_STAFFS a 
    INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE=1 
    INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID=c.ID AND c.ACTIVE=1 
    WHERE b.POS_ID=10106
  )||'~'||(
    SELECT SUBSTR(LNAME,0,1)||'.'||SUBSTR(FNAME,1,1)||LOWER(SUBSTR(FNAME,2)) as NAME
    FROM hrdbuser.ST_STAFFS a 
    INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE=1 
    INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID=c.ID AND c.ACTIVE=1 
    WHERE b.POS_ID=10109
  )||'~'||(
    SELECT SUBSTR(LNAME,0,1)||'.'||SUBSTR(FNAME,1,1)||LOWER(SUBSTR(FNAME,2)) as NAME
    FROM hrdbuser.ST_STAFFS a 
    INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE=1 
    INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID=c.ID AND c.ACTIVE=1 
    WHERE b.POS_ID=10205
  ) as NAMES 
FROM DUAL").ToString();
                implweekTab3Leaders.InnerHtml = "Сангийн сайд " + implweekTab3Leaders.InnerHtml.Split('~')[0] + ", Сангийн дэд сайд " + implweekTab3Leaders.InnerHtml.Split('~')[1] + ", ТНБД " + implweekTab3Leaders.InnerHtml.Split('~')[2] + " нар танаа";
                implweekTab3Date.InnerHtml = DateTime.Now.ToString("yyyy оны MM дугаар сарын dd-ний өдөр");
                if (!myObjGetTableData.UserCheckRoles(userId, "1,3,4"))
                {
                    implweekTab3t1AttachBtnDiv.Style.Add("display", "none");
                    implweekTab3t1AddBtnDiv.Style.Add("display", "none");
                    implweekTab3t2AddBtnDiv.Style.Add("display", "none");
                    implweekTab3t1ImportBtnDiv.Style.Add("display", "none");
                    implweekTab3t2ImportBtnDiv.Style.Add("display", "none");
                    if (!myObjGetTableData.UserCheckRoles(userId, "5,6"))
                    {
                        implweekTab2t1AttachBtnDiv.Style.Add("display", "none");
                        implweekTab2t1AddBtnDiv.Style.Add("display", "none");
                        implweekTab2t2AddBtnDiv.Style.Add("display", "none");
                        implweekTab2t1ImportBtnDiv.Style.Add("display", "none");
                        implweekTab2t2ImportBtnDiv.Style.Add("display", "none");
                    }
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