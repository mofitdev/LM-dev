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
    public partial class tushaaltnbd : System.Web.UI.Page
    {
        string currentYear = "", currentQuarter = "", userId = "";
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
                        pTab5Li.Attributes["class"] = "";

                        pTab1.Attributes["class"] = "tab-pane active";
                        //pTab2.Attributes["class"] = "tab-pane";
                        pTab3.Attributes["class"] = "tab-pane";
                        pTab4.Attributes["class"] = "tab-pane";
                        pTab5.Attributes["class"] = "tab-pane";
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
                        pTab5Li.Attributes["class"] = "";

                        pTab1.Attributes["class"] = "tab-pane";
                        //pTab2.Attributes["class"] = "tab-pane";
                        pTab3.Attributes["class"] = "tab-pane active";
                        pTab4.Attributes["class"] = "tab-pane";
                        pTab5.Attributes["class"] = "tab-pane";
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
                        pTab5Li.Attributes["class"] = "";

                        pTab1.Attributes["class"] = "tab-pane active";
                        //pTab2.Attributes["class"] = "tab-pane";
                        pTab3.Attributes["class"] = "tab-pane";
                        pTab4.Attributes["class"] = "tab-pane";
                        pTab5.Attributes["class"] = "tab-pane";
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
                    pTab5Li.Attributes["class"] = "";

                    pTab1.Attributes["class"] = "tab-pane active";
                    //pTab2.Attributes["class"] = "tab-pane";
                    pTab3.Attributes["class"] = "tab-pane";
                    pTab4.Attributes["class"] = "tab-pane";
                    pTab5.Attributes["class"] = "tab-pane";
                }

                DataSet ds = myObjGetTableData.getCurrentInfo();
                currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
                currentQuarter = ds.Tables[0].Rows[0]["QUARTER"].ToString();
                userId = Session["LM_UserID"].ToString();
                pTab1SelectYear.SelectedIndex = pTab1SelectYear.Items.IndexOf(pTab1SelectYear.Items.FindByValue(currentYear));
                pTab2SelectYear.SelectedIndex = pTab2SelectYear.Items.IndexOf(pTab2SelectYear.Items.FindByValue(currentYear));
                pTab3SelectYear.SelectedIndex = pTab3SelectYear.Items.IndexOf(pTab3SelectYear.Items.FindByValue(currentYear));
                pTab4t1SelectYear.SelectedIndex = pTab4t1SelectYear.Items.IndexOf(pTab4t1SelectYear.Items.FindByValue(currentYear));
                pTab5SelectYear.SelectedIndex = pTab5SelectYear.Items.IndexOf(pTab5SelectYear.Items.FindByValue(currentYear));
                pTab3SelectQuarter.SelectedIndex = pTab3SelectQuarter.Items.IndexOf(pTab3SelectQuarter.Items.FindByValue(currentQuarter));
                pTab4t1SelectQuarter.SelectedIndex = pTab4t1SelectQuarter.Items.IndexOf(pTab4t1SelectQuarter.Items.FindByValue(currentQuarter));
                pTab5SelectQuarter.SelectedIndex = pTab5SelectQuarter.Items.IndexOf(pTab5SelectQuarter.Items.FindByValue(currentQuarter));
                if (!myObjGetTableData.UserCheckRoles(userId, "1,27"))
                {
                    pTab1AddBtnDiv.Style.Add("display", "none");
                    pTab2AddBtnDiv.Style.Add("display", "none");
                }
                if (Request.QueryString["id"] != null)
                {
                    try
                    {
                        string strShowVals = myObj.OracleExecuteScalar("SELECT a.TUSHAAL_ID||'~'||a.TUSHAAL_TYPE_NAME||'~'||a.TUSHAAL_NAME||'~'||a.SUCCESS_DATE||'~'||a.TUSHAAL_NUMBER||'~'||a.BOLOVSRUULSAN_BRNAMELIST||'~'||a.BOLOVSRUULSAN_STNAMELIST||'~'||a.HARIUTSSAN_BRNAMELIST||'~'||a.HARIUTSSAN_STNAMELIST||'~'||a.FILE_URL||'~'||NVL(RTRIM(xmlagg (xmlelement (e, b.NAME || 'lt;br/gt;') ORDER BY b.NAME).extract('//text()'), 'lt;br/gt;'),'none')||'~'||a.MODIFIED FROM ( SELECT a.TUSHAAL_ID, c.NAME as TUSHAAL_TYPE_NAME, b.TUSHAAL_NAME, b.SUCCESS_DATE, b.TUSHAAL_NUMBER, b.TUSHAAL_DESCRIPTION, a.BOLOVSRUULSAN_BRNAMELIST, a.HARIUTSSAN_BRNAMELIST, a.BOLOVSRUULSAN_STNAMELIST, a.HARIUTSSAN_STNAMELIST, b.FILE_URL, 'Үүсгэсэн: '||SUBSTR(d.MNAME,0,1)||'.'||SUBSTR(d.LNAME,1,1)||LOWER(SUBSTR(d.LNAME,2))||' '||TO_CHAR(b.INSERT_DATE,'yyyy-mm-dd hh24:mi:ss')||'lt;br/gt;'||'Сүүлд засварласан: '||SUBSTR(NVL(f.MNAME,f.MNAME),0,1)||'.'||SUBSTR(NVL(f.LNAME,f.LNAME),1,1)||LOWER(SUBSTR(NVL(f.LNAME,f.LNAME),2))||' '||TO_CHAR(NVL(b.UPDATE_DATE,b.INSERT_DATE),'yyyy-mm-dd hh24:mi:ss') as MODIFIED FROM ( SELECT TUSHAAL_ID, BOLOVSRUULSAN_BRNAMELIST, HARIUTSSAN_BRNAMELIST, BOLOVSRUULSAN_STNAMELIST, NVL(RTRIM(xmlagg (xmlelement (e, ST_NAME || ',')).extract('//text()'), ','),'none') as HARIUTSSAN_STNAMELIST FROM ( SELECT a.TUSHAAL_ID, a.BOLOVSRUULSAN_BRNAMELIST, a.HARIUTSSAN_BRNAMELIST, a.BOLOVSRUULSAN_STNAMELIST, SUBSTR(c.MNAME,0,1)||'.'||SUBSTR(c.LNAME,1,1)||LOWER(SUBSTR(c.LNAME,2)) as ST_NAME FROM ( SELECT TUSHAAL_ID, BOLOVSRUULSAN_BRNAMELIST, HARIUTSSAN_BRNAMELIST, NVL(RTRIM(xmlagg (xmlelement (e, ST_NAME || ',')).extract('//text()'), ','),'none') as BOLOVSRUULSAN_STNAMELIST FROM ( SELECT a.TUSHAAL_ID, a.BOLOVSRUULSAN_BRNAMELIST, a.HARIUTSSAN_BRNAMELIST, SUBSTR(c.MNAME,0,1)||'.'||SUBSTR(c.LNAME,1,1)||LOWER(SUBSTR(c.LNAME,2)) as ST_NAME FROM ( SELECT TUSHAAL_ID, BOLOVSRUULSAN_BRNAMELIST, NVL(RTRIM(xmlagg (xmlelement (e, DOMAIN_ORG || ',')).extract('//text()'), ','),'none') as HARIUTSSAN_BRNAMELIST FROM ( SELECT a.TUSHAAL_ID, a.BOLOVSRUULSAN_BRNAMELIST, c.DOMAIN_ORG FROM ( SELECT TUSHAAL_ID, NVL(RTRIM(xmlagg (xmlelement (e, DOMAIN_ORG || ',')).extract('//text()'), ','),'none') as BOLOVSRUULSAN_BRNAMELIST FROM ( SELECT a.TUSHAAL_ID, b.DOMAIN_ORG FROM TBL_TUSHAAL_BR a LEFT JOIN ST_BRANCH b ON a.BR_ID=b.BR_ID AND WHERE a.TUSHAAL_ID=" + Request.QueryString["id"] + " AND a.BR_TYPE=2 GROUP BY a.TUSHAAL_ID, b.DOMAIN_ORG ) GROUP BY TUSHAAL_ID ) a LEFT JOIN TBL_TUSHAAL_BR b ON a.TUSHAAL_ID=b.TUSHAAL_ID AND b.BR_TYPE=1 LEFT JOIN ST_BRANCH c ON b.BR_ID=c.BR_ID GROUP BY a.TUSHAAL_ID, a.BOLOVSRUULSAN_BRNAMELIST, c.DOMAIN_ORG ) GROUP BY TUSHAAL_ID, BOLOVSRUULSAN_BRNAMELIST ) a LEFT JOIN TBL_TUSHAAL_USERS b ON a.TUSHAAL_ID=b.TUSHAAL_ID AND b.USER_TYPE=2 LEFT JOIN ST_STAFFS c ON b.ST_ID=c.ST_ID GROUP BY a.TUSHAAL_ID, a.BOLOVSRUULSAN_BRNAMELIST, a.HARIUTSSAN_BRNAMELIST, SUBSTR(c.MNAME,0,1)||'.'||SUBSTR(c.LNAME,1,1)||LOWER(SUBSTR(c.LNAME,2)) ) GROUP BY TUSHAAL_ID, BOLOVSRUULSAN_BRNAMELIST, HARIUTSSAN_BRNAMELIST ) a LEFT JOIN TBL_TUSHAAL_USERS b ON a.TUSHAAL_ID=b.TUSHAAL_ID AND b.USER_TYPE=1 LEFT JOIN ST_STAFFS c ON b.ST_ID=c.ST_ID GROUP BY a.TUSHAAL_ID, a.BOLOVSRUULSAN_BRNAMELIST, a.HARIUTSSAN_BRNAMELIST, a.BOLOVSRUULSAN_STNAMELIST, SUBSTR(c.MNAME,0,1)||'.'||SUBSTR(c.LNAME,1,1)||LOWER(SUBSTR(c.LNAME,2)) ) GROUP BY TUSHAAL_ID, BOLOVSRUULSAN_BRNAMELIST, HARIUTSSAN_BRNAMELIST, BOLOVSRUULSAN_STNAMELIST ) a INNER JOIN TBL_TUSHAAL b ON a.TUSHAAL_ID=b.ID INNER JOIN TBL_TUSHAAL_TYPE c ON TO_CHAR(b.TUSHAAL_TYPE_ID)=TO_CHAR(c.ID) INNER JOIN ST_STAFFS d ON b.INSERT_USER=d.ST_ID LEFT JOIN ST_STAFFS f ON b.UPDATE_USER=f.ST_ID ) a LEFT JOIN TBL_TUSHAAL_ZAALT b ON a.TUSHAAL_ID=b.TUSHAAL_ID  GROUP BY a.TUSHAAL_ID, a.TUSHAAL_TYPE_NAME, a.TUSHAAL_NAME, a.SUCCESS_DATE, a.TUSHAAL_NUMBER, a.BOLOVSRUULSAN_BRNAMELIST, a.BOLOVSRUULSAN_STNAMELIST, a.HARIUTSSAN_BRNAMELIST, a.HARIUTSSAN_STNAMELIST, a.FILE_URL, a.MODIFIED ").ToString();
                        tushaaltnbdShowModalType.InnerHtml = strShowVals.Split('~')[1];
                        tushaaltnbdShowModalTushaalName.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(strShowVals.Split('~')[2]);
                        tushaaltnbdShowModalSuccessDate.InnerHtml = strShowVals.Split('~')[3];
                        tushaaltnbdShowModalNo.InnerHtml = strShowVals.Split('~')[4];
                        tushaaltnbdShowModalBolovsruulsanGazar.InnerHtml = strShowVals.Split('~')[5];
                        tushaaltnbdShowModalBolovsruulsanStaff.InnerHtml = strShowVals.Split('~')[6];
                        tushaaltnbdShowModalHariutsahGazar.InnerHtml = strShowVals.Split('~')[7];
                        tushaaltnbdShowModalHariutsahStaff.InnerHtml = strShowVals.Split('~')[8];
                        tushaaltnbdShowModalZaalt.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(strShowVals.Split('~')[10]);
                        tushaaltnbdShowModalAttach.InnerHtml = strShowVals.Split('~')[9];
                        tushaaltnbdShowModalAttach.Attributes["href"] = "../files/tushaal/" + strShowVals.Split('~')[9];
                        tushaaltnbdShowModalModifyDescription.InnerHtml = myObjGetTableData.getReplaceDatabaseToDisplay(strShowVals.Split('~')[11]);
                        tushaaltnbdShowModalIsShow.InnerHtml = "true";
                    }
                    catch (NullReferenceException ex) {
                        tushaaltnbdShowModalIsShow.InnerHtml = "false";
                    }
                    catch (cs.LMException ex)
                    {
                        HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                        cs.WriteLogForEx.WriteLog(ex);
                        Response.Redirect("~/#pg/error500.aspx");
                    }
                    catch (Exception ex)
                    {
                        HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                        cs.WriteLogForEx.WriteLog(ex);
                        Response.Redirect("~/#pg/error500.aspx");
                    }
                }
                else
                {
                    tushaaltnbdShowModalIsShow.InnerHtml = "false";
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