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
    public partial class eafki : System.Web.UI.Page
    {
        string currentYear = "", currentMonth = "";
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
                DataSet ds = myObjGetTableData.getCurrentInfo();
                currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
                currentMonth = ds.Tables[0].Rows[0]["MONTH"].ToString();
                //tab1
                eafkiTab1SelectYear.SelectedIndex = eafkiTab1SelectYear.Items.IndexOf(eafkiTab1SelectYear.Items.FindByValue(currentYear));
                eafkiTab1SelectMonth.SelectedIndex = eafkiTab1SelectMonth.Items.IndexOf(eafkiTab1SelectMonth.Items.FindByValue(currentMonth));
                eafkiTab1SelectLanguage.SelectedIndex = eafkiTab1SelectLanguage.Items.IndexOf(eafkiTab1SelectLanguage.Items.FindByValue("mn"));
                eafkiTab1HeadYearAndMonth.InnerHtml = currentYear + " оны " + currentMonth + "-р сар";
                eafkiTab1s1Table.InnerHtml = myObjGetTableData.eafkiTab1s1(currentYear, currentMonth, "mn");
                eafkiTab1s2Table.InnerHtml = myObjGetTableData.eafkiTab1s2(currentYear, currentMonth, "mn");
                eafkiTab1s3n1.InnerHtml = myObjGetTableData.eafkiTab1s3Datas(currentYear, currentMonth, "mn").Split('~')[0];
                eafkiTab1s3n2.InnerHtml = myObjGetTableData.eafkiTab1s3Datas(currentYear, currentMonth, "mn").Split('~')[1];
                eafkiTab1s3n3.InnerHtml = myObjGetTableData.eafkiTab1s3Datas(currentYear, currentMonth, "mn").Split('~')[2];
                eafkiTab1s3n5.InnerHtml = myObjGetTableData.eafkiTab1s3Datas(currentYear, currentMonth, "mn").Split('~')[3];
                eafkiTab1s3n6h1.InnerHtml = myObjGetTableData.eafkiTab1s3Datas(currentYear, currentMonth, "mn").Split('~')[4];
                eafkiTab1s3n6h2.InnerHtml = myObjGetTableData.eafkiTab1s3Datas(currentYear, currentMonth, "mn").Split('~')[5];
                eafkiTab1s4n1.InnerHtml = myObjGetTableData.eafkiTab1s3Datas(currentYear, currentMonth, "mn").Split('~')[6];
                //tab2t1
                eafkiTab2t1s1Year.InnerText = currentYear;
                eafkiTab2t1s2Year.InnerText = currentYear;
                eafkiTab2t1s3Year.InnerText = currentYear;
                eafkiTab2t1s1SelectYear.SelectedIndex = eafkiTab2t1s1SelectYear.Items.IndexOf(eafkiTab2t1s1SelectYear.Items.FindByValue(currentYear));
                eafkiTab2t1s2SelectYear.SelectedIndex = eafkiTab2t1s2SelectYear.Items.IndexOf(eafkiTab2t1s2SelectYear.Items.FindByValue(currentYear));
                eafkiTab2t1s3SelectYear.SelectedIndex = eafkiTab2t1s3SelectYear.Items.IndexOf(eafkiTab2t1s3SelectYear.Items.FindByValue(currentYear));
                divBindTab2t1s1Table.InnerHtml = myObjGetTableData.eafkiTab2t1s1(currentYear);
                divBindTab2t1s2Table.InnerHtml = myObjGetTableData.eafkiTab2t1s2(currentYear);
                divBindTab2t1s3Table.InnerHtml = myObjGetTableData.eafkiTab2t1s3(currentYear);
                //tab2t2
                eafkiTab2t2s1Year.InnerText = currentYear;
                eafkiTab2t2s2Year.InnerText = currentYear;
                eafkiTab2t2s3Year.InnerText = currentYear;
                eafkiTab2t2s1SelectYear.SelectedIndex = eafkiTab2t2s1SelectYear.Items.IndexOf(eafkiTab2t2s1SelectYear.Items.FindByValue(currentYear));
                eafkiTab2t2s2SelectYear.SelectedIndex = eafkiTab2t2s2SelectYear.Items.IndexOf(eafkiTab2t2s2SelectYear.Items.FindByValue(currentYear));
                eafkiTab2t2s3SelectYear.SelectedIndex = eafkiTab2t2s3SelectYear.Items.IndexOf(eafkiTab2t2s3SelectYear.Items.FindByValue(currentYear));
                divBindTab2t2s1Table.InnerHtml = myObjGetTableData.eafkiTab2t2s1(currentYear);
                divBindTab2t2s2Table.InnerHtml = myObjGetTableData.eafkiTab2t2s2(currentYear);
                divBindTab2t2s3Table.InnerHtml = myObjGetTableData.eafkiTab2t2s3(currentYear);
                //tab2t3
                eafkiTab2t3s1Year.InnerText = currentYear;
                eafkiTab2t3s2Year.InnerText = currentYear;
                eafkiTab2t3s3Year.InnerText = currentYear;
                eafkiTab2t3s1SelectYear.SelectedIndex = eafkiTab2t3s1SelectYear.Items.IndexOf(eafkiTab2t3s1SelectYear.Items.FindByValue(currentYear));
                eafkiTab2t3s2SelectYear.SelectedIndex = eafkiTab2t3s2SelectYear.Items.IndexOf(eafkiTab2t3s2SelectYear.Items.FindByValue(currentYear));
                eafkiTab2t3s3SelectYear.SelectedIndex = eafkiTab2t3s3SelectYear.Items.IndexOf(eafkiTab2t3s3SelectYear.Items.FindByValue(currentYear));
                divBindTab2t3s1Table.InnerHtml = myObjGetTableData.eafkiTab2t3s1(currentYear);
                divBindTab2t3s2Table.InnerHtml = myObjGetTableData.eafkiTab2t3s2(currentYear);
                divBindTab2t3s3Table.InnerHtml = myObjGetTableData.eafkiTab2t3s3(currentYear);
                //tab2t4
                eafkiTab2t4s1Year.InnerText = currentYear;
                eafkiTab2t4s2Year.InnerText = currentYear;
                eafkiTab2t4s3Year.InnerText = currentYear;
                eafkiTab2t4s1SelectYear.SelectedIndex = eafkiTab2t4s1SelectYear.Items.IndexOf(eafkiTab2t4s1SelectYear.Items.FindByValue(currentYear));
                eafkiTab2t4s2SelectYear.SelectedIndex = eafkiTab2t4s2SelectYear.Items.IndexOf(eafkiTab2t4s2SelectYear.Items.FindByValue(currentYear));
                eafkiTab2t4s3SelectYear.SelectedIndex = eafkiTab2t4s3SelectYear.Items.IndexOf(eafkiTab2t4s3SelectYear.Items.FindByValue(currentYear));
                divBindTab2t4s1Table.InnerHtml = myObjGetTableData.eafkiTab2t4s1(currentYear);
                divBindTab2t4s2Table.InnerHtml = myObjGetTableData.eafkiTab2t4s2(currentYear);
                divBindTab2t4s3Table.InnerHtml = myObjGetTableData.eafkiTab2t4s3(currentYear);
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
    }
}