using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using LMWebApp.cs;

namespace LMWebApp.pg
{
    public partial class togtool : System.Web.UI.Page
    {
        string currentYear = "", currentYearHalf = "", userId = "", userGazarId="";
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
                if (Request.QueryString["t"] != null)
                {
                    if (Request.QueryString["t"] == "plan")
                    {
                        pTab1Li.Style.Add("display", "block");
                        //pTab2Li.Style.Add("display", "block");
                        pTab3Li.Style.Add("display", "none");
                        pTab4Li.Style.Add("display", "none");
                        pTab1Li.Attributes["class"] = "active";
                        //pTab2Li.Attributes["class"] = "";
                        pTab3Li.Attributes["class"] = "";
                        pTab4Li.Attributes["class"] = "";

                        pTab1.Attributes["class"] = "tab-pane active";
                        //pTab2.Attributes["class"] = "tab-pane";
                        pTab3.Attributes["class"] = "tab-pane";
                        pTab4.Attributes["class"] = "tab-pane";
                    }
                    else if (Request.QueryString["t"] == "impl")
                    {
                        pTab1Li.Style.Add("display", "none");
                        //pTab2Li.Style.Add("display", "none");
                        pTab3Li.Style.Add("display", "block");
                        pTab4Li.Style.Add("display", "block");
                        pTab1Li.Attributes["class"] = "";
                        //pTab2Li.Attributes["class"] = "";
                        pTab3Li.Attributes["class"] = "active";
                        pTab4Li.Attributes["class"] = "";

                        pTab1.Attributes["class"] = "tab-pane";
                        //pTab2.Attributes["class"] = "tab-pane";
                        pTab3.Attributes["class"] = "tab-pane active";
                        pTab4.Attributes["class"] = "tab-pane";
                    }
                    else
                    {
                        pTab1Li.Style.Add("display", "block");
                        //pTab2Li.Style.Add("display", "block");
                        pTab3Li.Style.Add("display", "block");
                        pTab4Li.Style.Add("display", "block");
                        pTab1Li.Attributes["class"] = "active";
                        //pTab2Li.Attributes["class"] = "";
                        pTab3Li.Attributes["class"] = "";
                        pTab4Li.Attributes["class"] = "";

                        pTab1.Attributes["class"] = "tab-pane active";
                        //pTab2.Attributes["class"] = "tab-pane";
                        pTab3.Attributes["class"] = "tab-pane";
                        pTab4.Attributes["class"] = "tab-pane";
                    }
                }
                else
                {
                    pTab1Li.Style.Add("display", "block");
                    //pTab2Li.Style.Add("display", "block");
                    pTab3Li.Style.Add("display", "block");
                    pTab4Li.Style.Add("display", "block");
                    pTab1Li.Attributes["class"] = "active";
                    //pTab2Li.Attributes["class"] = "";
                    pTab3Li.Attributes["class"] = "";
                    pTab4Li.Attributes["class"] = "";

                    pTab1.Attributes["class"] = "tab-pane active";
                    //pTab2.Attributes["class"] = "tab-pane";
                    pTab3.Attributes["class"] = "tab-pane";
                    pTab4.Attributes["class"] = "tab-pane";
                }

                DataSet ds = myObjGetTableData.getCurrentInfo();

                currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
                currentYearHalf = ds.Tables[0].Rows[0]["YEARHALF"].ToString();
                userId = Session["LM_UserID"].ToString();
                ds = myObjGetTableData.getUserInfo(userId);
                userGazarId = ds.Tables[0].Rows[0]["GAZARID"].ToString();
                //pTab1Year.InnerHtml = currentYear;
                //pTab2Year.InnerHtml = currentYear;
                //pTab3Year.InnerHtml = currentYear;
                divpTab4t1Year.InnerHtml = currentYear;
                divpTab4t2Year.InnerHtml = currentYear;
                divpTab4t3Year.InnerHtml = currentYear;
                divpTab4t4Year.InnerHtml = currentYear;
                divpTab4t5Year.InnerHtml = currentYear;
                pTab1SelectYear.SelectedIndex = pTab1SelectYear.Items.IndexOf(pTab1SelectYear.Items.FindByValue(currentYear));
                pTab2SelectYear.SelectedIndex = pTab2SelectYear.Items.IndexOf(pTab2SelectYear.Items.FindByValue(currentYear));
                pTab3SelectYear.SelectedIndex = pTab3SelectYear.Items.IndexOf(pTab3SelectYear.Items.FindByValue(currentYear));
                pTab3SelectYearHalf.SelectedIndex = pTab3SelectYearHalf.Items.IndexOf(pTab3SelectYearHalf.Items.FindByValue(currentYearHalf));
                pTab4t1SelectYear.SelectedIndex = pTab4t1SelectYear.Items.IndexOf(pTab4t1SelectYear.Items.FindByValue(currentYear));
                pTab4t1SelectYear2.SelectedIndex = pTab4t1SelectYear2.Items.IndexOf(pTab4t1SelectYear2.Items.FindByValue(currentYear));
                pTab4t1SelectYearHalf.SelectedIndex = pTab4t1SelectYearHalf.Items.IndexOf(pTab4t1SelectYearHalf.Items.FindByValue(currentYearHalf));
                pTab4t2SelectYear.SelectedIndex = pTab4t2SelectYear.Items.IndexOf(pTab4t2SelectYear.Items.FindByValue(currentYear));
                pTab4t2SelectYear2.SelectedIndex = pTab4t2SelectYear2.Items.IndexOf(pTab4t2SelectYear2.Items.FindByValue(currentYear));
                pTab4t2SelectYearHalf.SelectedIndex = pTab4t2SelectYearHalf.Items.IndexOf(pTab4t2SelectYearHalf.Items.FindByValue(currentYearHalf));
                pTab4t3SelectYear.SelectedIndex = pTab4t3SelectYear.Items.IndexOf(pTab4t3SelectYear.Items.FindByValue(currentYear));
                pTab4t3SelectYear2.SelectedIndex = pTab4t3SelectYear2.Items.IndexOf(pTab4t3SelectYear2.Items.FindByValue(currentYear));
                pTab4t3SelectYearHalf.SelectedIndex = pTab4t3SelectYearHalf.Items.IndexOf(pTab4t3SelectYearHalf.Items.FindByValue(currentYearHalf));
                pTab4t4SelectYear.SelectedIndex = pTab4t4SelectYear.Items.IndexOf(pTab4t4SelectYear.Items.FindByValue(currentYear));
                pTab4t4SelectYear2.SelectedIndex = pTab4t4SelectYear2.Items.IndexOf(pTab4t4SelectYear2.Items.FindByValue(currentYear));
                pTab4t4SelectYearHalf.SelectedIndex = pTab4t4SelectYearHalf.Items.IndexOf(pTab4t4SelectYearHalf.Items.FindByValue(currentYearHalf));
                pTab4t5SelectYear.SelectedIndex = pTab4t5SelectYear.Items.IndexOf(pTab4t5SelectYear.Items.FindByValue(currentYear));
                pTab4t5SelectYear2.SelectedIndex = pTab4t5SelectYear2.Items.IndexOf(pTab4t5SelectYear2.Items.FindByValue(currentYear));
                pTab4t5SelectYearHalf.SelectedIndex = pTab4t5SelectYearHalf.Items.IndexOf(pTab4t5SelectYearHalf.Items.FindByValue(currentYearHalf));
                pTab5SelectYear.SelectedIndex = pTab5SelectYear.Items.IndexOf(pTab5SelectYear.Items.FindByValue(currentYear));
                pTab5SelectYearHalf.SelectedIndex = pTab5SelectYearHalf.Items.IndexOf(pTab5SelectYearHalf.Items.FindByValue(currentYearHalf));

                //pTab3YearHalf.InnerHtml = currentYearHalf.Replace("1", "эхний хагас").Replace("2", "сүүлийн хагас");
                divpTab4t1YearHalf.InnerHtml = currentYearHalf.Replace("1", "эхний хагас").Replace("2", "сүүлийн хагас");
                divpTab4t2YearHalf.InnerHtml = currentYearHalf.Replace("1", "эхний хагас").Replace("2", "сүүлийн хагас");
                divpTab4t3YearHalf.InnerHtml = currentYearHalf.Replace("1", "эхний хагас").Replace("2", "сүүлийн хагас");
                divpTab4t4YearHalf.InnerHtml = currentYearHalf.Replace("1", "эхний хагас").Replace("2", "сүүлийн хагас");
                divpTab4t5YearHalf.InnerHtml = currentYearHalf.Replace("1", "эхний хагас").Replace("2", "сүүлийн хагас");
                
                if (!myObjGetTableData.UserCheckRoles(userId, "1,15"))
                {
                    pTab1AddBtnDiv.Style.Add("display", "none");
                    pTab2AddBtnDiv.Style.Add("display", "none");
                    pTab1t3AddBtn.Style.Add("display", "none");
                }

                if (Request.QueryString["id"] != null)
                {
                    string strShowVals = myObj.OracleExecuteScalar("SELECT a.TOGTOOL_ID||'~'||a.TOGTOOL_TYPE_NAME||'~'||a.AKT_NAME||'~'||a.SUCCES_DATE||'~'||a.NO||'~'||a.GAZARNAMELIST||'~'||NVL(RTRIM(xmlagg (xmlelement (e, b.NAME || 'lt;br/gt;') ORDER BY b.NAME).extract('//text()'), 'lt;br/gt;'),'none')||'~'||a.RECEIVE_DATE||'~'||a.DONE_DATE||'~'||a.FILE_NAME||'~'||a.MODIFIED as DATAS FROM ( SELECT a.ID as TOGTOOL_ID,b.NAME as TOGTOOL_TYPE_NAME, a.AKT_NAME, a.SUCCES_DATE, a.NO, NVL(RTRIM(xmlagg (xmlelement (e, d.DOMAIN_ORG || ',') ORDER BY d.SORT).extract('//text()'), ','),'none') as GAZARNAMELIST, a.RECEIVE_DATE, a.DONE_DATE, a.FILE_NAME, 'Үүсгэсэн: '||SUBSTR(f.MNAME,0,1)||'.'||SUBSTR(f.LNAME,1,1)||LOWER(SUBSTR(f.LNAME,2))||' '||TO_CHAR(a.CREATED_DATE,'yyyy-mm-dd hh24:mi:ss')||'lt;br/gt;'||'Сүүлд засварласан: '||SUBSTR(NVL(g.MNAME,f.MNAME),0,1)||'.'||SUBSTR(NVL(g.LNAME,f.LNAME),1,1)||LOWER(SUBSTR(NVL(g.LNAME,f.LNAME),2))||' '||TO_CHAR(NVL(a.MODIFY_DATE,a.CREATED_DATE),'yyyy-mm-dd hh24:mi:ss') as modified FROM TBL_TOGTOOL a INNER JOIN TBL_TOGTOOL_TYPE b ON a.TOGTOOL_TYPE_ID=b.ID INNER JOIN TBL_TOGTOOL_BR c ON a.ID=c.TOGTOOL_ID INNER JOIN ST_BRANCH d ON c.BR_ID=d.BR_ID INNER JOIN ST_STAFFS f ON a.CREATED_STAFFID=f.ST_ID LEFT JOIN ST_STAFFS g ON a.MODIFY_STAFFID=g.ST_ID WHERE a.ID=" + Request.QueryString["id"] + " GROUP BY a.ID, b.NAME, a.AKT_NAME, a.SUCCES_DATE, a.NO, a.RECEIVE_DATE, a.DONE_DATE, a.FILE_NAME, 'Үүсгэсэн: '||SUBSTR(f.MNAME,0,1)||'.'||SUBSTR(f.LNAME,1,1)||LOWER(SUBSTR(f.LNAME,2))||' '||TO_CHAR(a.CREATED_DATE,'yyyy-mm-dd hh24:mi:ss')||'lt;br/gt;'||'Сүүлд засварласан: '||SUBSTR(NVL(g.MNAME,f.MNAME),0,1)||'.'||SUBSTR(NVL(g.LNAME,f.LNAME),1,1)||LOWER(SUBSTR(NVL(g.LNAME,f.LNAME),2))||' '||TO_CHAR(NVL(a.MODIFY_DATE,a.CREATED_DATE),'yyyy-mm-dd hh24:mi:ss') ) a LEFT JOIN TBL_ZAALT b ON a.TOGTOOL_ID=b.TOGTOOL_ID GROUP BY a.TOGTOOL_ID, a.TOGTOOL_TYPE_NAME, a.AKT_NAME, a.SUCCES_DATE, a.NO, a.GAZARNAMELIST, a.RECEIVE_DATE, a.DONE_DATE, a.FILE_NAME, a.MODIFIED").ToString();
                    togtoolShowModalType.InnerHtml = strShowVals.Split('~')[1];
                    togtoolShowModalAktName.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(strShowVals.Split('~')[2]);
                    togtoolShowModalSuccessDate.InnerHtml = strShowVals.Split('~')[3];
                    togtoolShowModalNo.InnerHtml = strShowVals.Split('~')[4];
                    togtoolShowModalGazar.InnerHtml = strShowVals.Split('~')[5];
                    togtoolShowModalZaalt.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(strShowVals.Split('~')[6]);
                    togtoolShowModalReceivedDate.InnerHtml = strShowVals.Split('~')[7];
                    togtoolShowModalDoneDate.InnerHtml = strShowVals.Split('~')[8];
                    togtoolShowModalAttach.InnerHtml = strShowVals.Split('~')[9];
                    togtoolShowModalAttach.Attributes["href"] = "../files/togtool/" + strShowVals.Split('~')[9];
                    togtoolShowModalModifyDescription.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(strShowVals.Split('~')[10]);
                    togtoolShowModalIsShow.InnerHtml = "true";
                }
                else
                {
                    togtoolShowModalIsShow.InnerHtml = "false";
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