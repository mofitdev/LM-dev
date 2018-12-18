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
    public partial class timeqmeet : System.Web.UI.Page
    {
        string currentYear = "", currentMonth = "";
        string userGazarId = "";
        string userHeltesId = "";
        string userId = "";
        string[] arrtitledatas = new string[2];
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
                DataSet ds = myObjGetTableData.getCurrentInfo();
                currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
                currentMonth = ds.Tables[0].Rows[0]["MONTH"].ToString();
                userId = HttpContext.Current.Session["LM_UserID"].ToString();
                ds = myObjGetTableData.getUserInfo(userId);
                userGazarId = ds.Tables[0].Rows[0]["GAZARID"].ToString();
                userHeltesId = ds.Tables[0].Rows[0]["HELTESID"].ToString();

                timeqmeetCurrentYear1.InnerHtml = currentYear;
                timeqmeetCurrentYear2.InnerHtml = currentYear;
                timeqmeetTab1PlanSelectYear.SelectedIndex = timeqmeetTab1PlanSelectYear.Items.IndexOf(timeqmeetTab1PlanSelectYear.Items.FindByValue(currentYear));
                timeqmeetTab2PlanSelectYear.SelectedIndex = timeqmeetTab2PlanSelectYear.Items.IndexOf(timeqmeetTab2PlanSelectYear.Items.FindByValue(currentYear));
                timeqmeetTab3SelectYear.SelectedIndex = timeqmeetTab3SelectYear.Items.IndexOf(timeqmeetTab3SelectYear.Items.FindByValue(currentYear));
                timeqmeetTab2SelectMonth.SelectedIndex = timeqmeetTab2SelectMonth.Items.IndexOf(timeqmeetTab2SelectMonth.Items.FindByValue(currentMonth));
                timeqmeetTab3SelectMonth.SelectedIndex = timeqmeetTab3SelectMonth.Items.IndexOf(timeqmeetTab3SelectMonth.Items.FindByValue(currentMonth));
                divtimeqmeetTab3Year.InnerHtml = currentYear;
                divtimeqmeetTab3Month.InnerHtml = currentMonth;
                arrtitledatas = myObj.OracleExecuteScalar("SELECT NVL(RTRIM(xmlagg (xmlelement (e, TO_CHAR(DT,'DD') || ',') ORDER BY DT).extract('//text()'), ','),'none')||'~'||COUNT(DT) as CNT FROM TBL_timeqmeet WHERE TO_NUMBER(TO_CHAR(DT, 'YYYY'))=" + currentYear + " AND TO_NUMBER(TO_CHAR(DT, 'MM'))=" + currentMonth).ToString().Split('~');
                divtimeqmeetTab3Dates.InnerHtml = arrtitledatas[0].Replace("none", "");
                divtimeqmeetTab3Datescnt.InnerHtml = arrtitledatas[1];
                divtimeqmeetTab3Type.InnerHtml = "хүснэгтээр";

                //DataTable dt = new DataTable();
                //dt.Load(myObj.OracleExecuteReader("SELECT '0' as BR_ID, CAST('Бүгд' as VARCHAR2(200)) as DOMAIN_ORG FROM DUAL UNION ALL SELECT BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=3 AND BR_ID!=9911"));
                //myObj.DBDisconnect();
                //timeqmeetTab2SelectGazar.DataSource = dt;
                //timeqmeetTab2SelectGazar.DataTextField = "DOMAIN_ORG";
                //timeqmeetTab2SelectGazar.DataValueField = "BR_ID";
                //timeqmeetTab2SelectGazar.DataBind();

                //if (!myObjCheckRole.UserCheckRole(userId, "1") && !myObjCheckRole.UserCheckRole(userId, "10"))
                //{
                //    timeqmeetTab2SelectGazar.SelectedIndex = timeqmeetTab2SelectGazar.Items.IndexOf(timeqmeetTab2SelectGazar.Items.FindByValue(userGazarId));
                //    timeqmeetTab2SelectGazar.Disabled = true;
                //    if (!myObjCheckRole.UserCheckRole(userId, "3") && !myObjCheckRole.UserCheckRole(userId, "4"))
                //    {
                //        timeqmeetTab2SelectHeltes.SelectedIndex = timeqmeetTab2SelectHeltes.Items.IndexOf(timeqmeetTab2SelectHeltes.Items.FindByValue(userHeltesId));
                //        timeqmeetTab2SelectHeltes.Disabled = true;
                //    }
                //}
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