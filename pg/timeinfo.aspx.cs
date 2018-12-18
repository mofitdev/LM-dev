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
    public partial class timeinfo : System.Web.UI.Page
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

                timeinfoCurrentYear1.InnerHtml = currentYear;
                timeinfoCurrentYear2.InnerHtml = currentYear;
                timeinfoTab1PlanSelectYear.SelectedIndex = timeinfoTab1PlanSelectYear.Items.IndexOf(timeinfoTab1PlanSelectYear.Items.FindByValue(currentYear));
                timeinfoTab2PlanSelectYear.SelectedIndex = timeinfoTab2PlanSelectYear.Items.IndexOf(timeinfoTab2PlanSelectYear.Items.FindByValue(currentYear));
                timeinfoTab3SelectYear.SelectedIndex = timeinfoTab3SelectYear.Items.IndexOf(timeinfoTab3SelectYear.Items.FindByValue(currentYear));
                timeinfoTab2SelectMonth.SelectedIndex = timeinfoTab2SelectMonth.Items.IndexOf(timeinfoTab2SelectMonth.Items.FindByValue(currentMonth));
                timeinfoTab3SelectMonth.SelectedIndex = timeinfoTab3SelectMonth.Items.IndexOf(timeinfoTab3SelectMonth.Items.FindByValue(currentMonth));
                divtimeinfoTab3Year.InnerHtml = currentYear;
                divtimeinfoTab3Month.InnerHtml = currentMonth;
                arrtitledatas = myObj.OracleExecuteScalar("SELECT NVL(RTRIM(xmlagg (xmlelement (e, TO_CHAR(DT,'DD') || ',') ORDER BY DT).extract('//text()'), ','),'none')||'~'||COUNT(DT) as CNT FROM TBL_TIMEINFO WHERE TO_NUMBER(TO_CHAR(DT, 'YYYY'))=" + currentYear + " AND TO_NUMBER(TO_CHAR(DT, 'MM'))=" + currentMonth).ToString().Split('~');
                divtimeinfoTab3Dates.InnerHtml = arrtitledatas[0].Replace("none", "");
                divtimeinfoTab3Datescnt.InnerHtml = arrtitledatas[1];
                divtimeinfoTab3Type.InnerHtml = "хүснэгтээр";

                //DataTable dt = new DataTable();
                //dt.Load(cs.ModifyDB.OracleExecuteReader("SELECT '0' as BR_ID, CAST('Бүгд' as VARCHAR2(200)) as DOMAIN_ORG FROM DUAL UNION ALL SELECT BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=3 AND BR_ID!=9911"));
                //cs.ModifyDB.DBDisconnect();
                //timeinfoTab2SelectGazar.DataSource = dt;
                //timeinfoTab2SelectGazar.DataTextField = "DOMAIN_ORG";
                //timeinfoTab2SelectGazar.DataValueField = "BR_ID";
                //timeinfoTab2SelectGazar.DataBind();

                //if (!cs.CheckRole.UserCheckRole(userId, "1") && !cs.CheckRole.UserCheckRole(userId, "14"))
                //{
                //    timeinfoTab2SelectGazar.SelectedIndex = timeinfoTab2SelectGazar.Items.IndexOf(timeinfoTab2SelectGazar.Items.FindByValue(userGazarId));
                //    timeinfoTab2SelectGazar.Disabled = true;
                //    if (!cs.CheckRole.UserCheckRole(userId, "3") && !cs.CheckRole.UserCheckRole(userId, "4"))
                //    {
                //        timeinfoTab2SelectHeltes.SelectedIndex = timeinfoTab2SelectHeltes.Items.IndexOf(timeinfoTab2SelectHeltes.Items.FindByValue(userHeltesId));
                //        timeinfoTab2SelectHeltes.Disabled = true;
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