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
    public partial class srv : System.Web.UI.Page
    {
        string currentYear = "", currentHalfYear="", currentQrtr = "", userGazarId = "", userHeltesId = "", userId = "", userPosId="";
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
                currentQrtr = ds.Tables[0].Rows[0]["QUARTER"].ToString();
                currentHalfYear = ds.Tables[0].Rows[0]["YEARHALF"].ToString();
                userId = Session["LM_UserID"].ToString();
                ds = myObjGetTableData.getUserInfo(userId);
                userGazarId = ds.Tables[0].Rows[0]["GAZARID"].ToString();
                userHeltesId = ds.Tables[0].Rows[0]["HELTESID"].ToString();
                userPosId = ds.Tables[0].Rows[0]["POSID"].ToString();
                DataTable dt = new DataTable();

                if (Request.QueryString["t"] != null)
                {
                    if (Request.QueryString["t"] == "bosstohead")
                    {
                        //tab1
                        srvBossToHeadTitle.Style.Add("display", "block");
                        srvBossToHeadTitle.Attributes["class"] = "active";
                        //srvTab1.Style.Add("display", "block");
                        srvTab1.Attributes["class"] = "tab-pane active";
                        srvHeadToSubHeadTitle.Style.Add("display", "block");
                        srvHeadToSubHeadTitle.Attributes["class"] = "";
                        //srvTab2.Style.Add("display", "");
                        srvTab2.Attributes["class"] = "tab-pane";
                        srvStaffToStaffTitle.Style.Add("display", "none");
                        srvStaffToStaffTitle.Attributes["class"] = "";
                        //srvTab3.Style.Add("display", "none");
                        srvTab3.Attributes["class"] = "tab-pane";
                        srvStaffToHeadTitle.Style.Add("display", "none");
                        srvStaffToHeadTitle.Attributes["class"] = "";
                        //srvTab4.Style.Add("display", "none");
                        srvTab4.Attributes["class"] = "tab-pane";

                        srvTab3Content.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                        srvTab4Content.InnerHtml = "Таньд хандах эрх байхгүй байна!";

                        //tab1
                        srvTab1t2SelectYear.SelectedIndex = srvTab1t2SelectYear.Items.IndexOf(srvTab1t2SelectYear.Items.FindByValue(currentYear));
                        srvTab1t2SelectHalfYear.SelectedIndex = srvTab1t2SelectHalfYear.Items.IndexOf(srvTab1t2SelectHalfYear.Items.FindByValue(currentHalfYear));
                        srvTab1t3SelectYear.SelectedIndex = srvTab1t3SelectYear.Items.IndexOf(srvTab1t3SelectYear.Items.FindByValue(currentYear));
                        srvTab1t3SelectHalfYear.SelectedIndex = srvTab1t3SelectHalfYear.Items.IndexOf(srvTab1t3SelectHalfYear.Items.FindByValue(currentHalfYear));

                        if (!myObjGetTableData.UserCheckRoles(userId, "1")) srvTab1t1.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                        if (!myObjGetTableData.UserCheckRoles(userId, "1,2"))
                        {
                            srvTab1t2.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                            if (!myObjGetTableData.UserCheckRoles(userId, "1,3"))
                            {
                                if (srvTab1t1.InnerHtml == "Таньд хандах эрх байхгүй байна!")
                                {
                                    srvTab1t2.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                                    srvTab1t3.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                                }
                            }
                        }

                        //tab2
                        srvTab2t2SelectYear.SelectedIndex = srvTab2t2SelectYear.Items.IndexOf(srvTab2t2SelectYear.Items.FindByValue(currentYear));
                        srvTab2t2SelectHalfYear.SelectedIndex = srvTab2t2SelectHalfYear.Items.IndexOf(srvTab2t2SelectHalfYear.Items.FindByValue(currentHalfYear));
                        srvTab2t3SelectYear.SelectedIndex = srvTab2t3SelectYear.Items.IndexOf(srvTab2t3SelectYear.Items.FindByValue(currentYear));
                        srvTab2t3SelectHalfYear.SelectedIndex = srvTab2t3SelectHalfYear.Items.IndexOf(srvTab2t3SelectHalfYear.Items.FindByValue(currentHalfYear));

                        if (!myObjGetTableData.UserCheckRoles(userId, "1")) srvTab2t1.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                        if (!myObjGetTableData.UserCheckRoles(userId, "1,3"))
                        {
                            srvTab2t2.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                            if (!myObjGetTableData.UserCheckRoles(userId, "1,5"))
                            {
                                if (srvTab2t1.InnerHtml == "Таньд хандах эрх байхгүй байна!")
                                {
                                    srvTab2t2.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                                    srvTab2t3.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                                }
                            }
                        }                        
                    }
                    else if (Request.QueryString["t"] == "headtosubhead")
                    {
                        srvBossToHeadTitle.Style.Add("display", "none");
                        srvBossToHeadTitle.Attributes["class"] = "";
                        //srvTab1.Style.Add("display", "none");
                        srvTab1.Attributes["class"] = "tab-pane";
                        srvHeadToSubHeadTitle.Style.Add("display", "block");
                        srvHeadToSubHeadTitle.Attributes["class"] = "active";
                        //srvTab2.Style.Add("display", "block");
                        srvTab2.Attributes["class"] = "tab-pane active";
                        srvStaffToStaffTitle.Style.Add("display", "none");
                        srvStaffToStaffTitle.Attributes["class"] = "";
                        //srvTab3.Style.Add("display", "none");
                        srvTab3.Attributes["class"] = "tab-pane";
                        srvStaffToHeadTitle.Style.Add("display", "none");
                        srvStaffToHeadTitle.Attributes["class"] = "";
                        //srvTab4.Style.Add("display", "none");
                        srvTab4.Attributes["class"] = "tab-pane";

                        srvTab1Content.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                        srvTab3Content.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                        srvTab4Content.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                        
                        srvTab2t2SelectYear.SelectedIndex = srvTab2t2SelectYear.Items.IndexOf(srvTab2t2SelectYear.Items.FindByValue(currentYear));
                        srvTab2t2SelectHalfYear.SelectedIndex = srvTab2t2SelectHalfYear.Items.IndexOf(srvTab2t2SelectHalfYear.Items.FindByValue(currentHalfYear));
                         srvTab2t3SelectYear.SelectedIndex = srvTab2t3SelectYear.Items.IndexOf(srvTab2t3SelectYear.Items.FindByValue(currentYear));
                        srvTab2t3SelectHalfYear.SelectedIndex = srvTab2t3SelectHalfYear.Items.IndexOf(srvTab2t3SelectHalfYear.Items.FindByValue(currentHalfYear));

                        if (!myObjGetTableData.UserCheckRoles(userId, "1") ) srvTab2t1.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                        if (!myObjGetTableData.UserCheckRoles(userId, "3") )
                        {
                            srvTab2t2.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                            if (!myObjGetTableData.UserCheckRoles(userId, "5") )
                            {
                                if (srvTab2t1.InnerHtml == "Таньд хандах эрх байхгүй байна!")
                                {
                                    srvTab2t2.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                                    srvTab2t3.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                                }
                            }
                        }
                    }
                    else if (Request.QueryString["t"] == "stafftostaff")
                    {
                        srvBossToHeadTitle.Style.Add("display", "none");
                        srvBossToHeadTitle.Attributes["class"] = "";
                        //srvTab1.Style.Add("display", "none");
                        srvTab1.Attributes["class"] = "tab-pane";
                        srvHeadToSubHeadTitle.Style.Add("display", "none");
                        srvHeadToSubHeadTitle.Attributes["class"] = "";
                        //srvTab2.Style.Add("display", "none");
                        srvTab2.Attributes["class"] = "tab-pane";
                        srvStaffToStaffTitle.Style.Add("display", "block");
                        srvStaffToStaffTitle.Attributes["class"] = "active";
                        //srvTab3.Style.Add("display", "block");
                        srvTab3.Attributes["class"] = "tab-pane active";
                        srvStaffToHeadTitle.Style.Add("display", "none");
                        srvStaffToHeadTitle.Attributes["class"] = "";
                        //srvTab4.Style.Add("display", "none");
                        srvTab4.Attributes["class"] = "tab-pane";

                        srvTab1Content.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                        srvTab2Content.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                        srvTab4Content.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                        //bind tab3
                        srvTab3t2SelectYear.SelectedIndex = srvTab3t2SelectYear.Items.IndexOf(srvTab3t2SelectYear.Items.FindByValue(currentYear));
                        srvTab3t2SelectHalfYear.SelectedIndex = srvTab3t2SelectHalfYear.Items.IndexOf(srvTab3t2SelectHalfYear.Items.FindByValue(currentHalfYear));
                        
                        srvTab3t3SelectYear.SelectedIndex = srvTab3t3SelectYear.Items.IndexOf(srvTab3t3SelectYear.Items.FindByValue(currentYear));
                        srvTab3t3SelectHalfYear.SelectedIndex = srvTab3t3SelectHalfYear.Items.IndexOf(srvTab3t3SelectHalfYear.Items.FindByValue(currentHalfYear));
                        srvTab3t4SelectYear.SelectedIndex = srvTab3t4SelectYear.Items.IndexOf(srvTab3t4SelectYear.Items.FindByValue(currentYear));
                        srvTab3t4SelectHalfYear.SelectedIndex = srvTab3t4SelectHalfYear.Items.IndexOf(srvTab3t4SelectHalfYear.Items.FindByValue(currentHalfYear));

                        if (!myObjGetTableData.UserCheckRoles(userId, "1") ) srvTab3t1.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                        if (!myObjGetTableData.UserCheckRoles(userId, "1,3,5")) pTab3t4Li.Style.Add("display", "none");
                    }
                    else if (Request.QueryString["t"] == "stafftohead")
                    {
                        srvBossToHeadTitle.Style.Add("display", "none");
                        srvBossToHeadTitle.Attributes["class"] = "";
                        //srvTab1.Style.Add("display", "none");
                        srvTab1.Attributes["class"] = "tab-pane";
                        srvHeadToSubHeadTitle.Style.Add("display", "none");
                        srvHeadToSubHeadTitle.Attributes["class"] = "";
                        //srvTab2.Style.Add("display", "none");
                        srvTab2.Attributes["class"] = "tab-pane";
                        srvStaffToStaffTitle.Style.Add("display", "none");
                        srvStaffToStaffTitle.Attributes["class"] = "";
                        //srvTab3.Style.Add("display", "none");
                        srvTab3.Attributes["class"] = "tab-pane";
                        srvStaffToHeadTitle.Style.Add("display", "block");
                        srvStaffToHeadTitle.Attributes["class"] = "active";
                        //srvTab4.Style.Add("display", "block");
                        srvTab4.Attributes["class"] = "tab-pane active";

                        srvTab1Content.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                        srvTab2Content.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                        srvTab3Content.InnerHtml = "Таньд хандах эрх байхгүй байна!";

                        //bind tab4
                        srvTab4t2CurrentYear.InnerHtml = currentYear;
                        srvTab4t2CurrentHalfYear.InnerHtml = currentHalfYear.Replace("1", "эхний").Replace("2", "сүүлийн");
                        srvTab4t2SelectYear.SelectedIndex = srvTab4t2SelectYear.Items.IndexOf(srvTab4t2SelectYear.Items.FindByValue(currentYear));
                        srvTab4t2SelectHalfYear.SelectedIndex = srvTab4t2SelectHalfYear.Items.IndexOf(srvTab4t2SelectHalfYear.Items.FindByValue(currentHalfYear));
                        dt.Rows.Clear();
                        dt.Load(myObj.OracleExecuteReader("SELECT BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=3 AND BR_ID!=9911"));
                        myObj.DBDisconnect();
                        srvTab4t2SelectGazar.DataSource = dt;
                        srvTab4t2SelectGazar.DataTextField = "DOMAIN_ORG";
                        srvTab4t2SelectGazar.DataValueField = "BR_ID";
                        srvTab4t2SelectGazar.DataBind();
                        srvTab4t3SelectGazar.DataSource = dt;
                        srvTab4t3SelectGazar.DataTextField = "DOMAIN_ORG";
                        srvTab4t3SelectGazar.DataValueField = "BR_ID";
                        srvTab4t3SelectGazar.DataBind();
                        srvTab4t2SelectGazar.SelectedIndex = srvTab4t2SelectGazar.Items.IndexOf(srvTab4t2SelectGazar.Items.FindByValue(userGazarId));
                        srvTab4t3SelectGazar.SelectedIndex = srvTab4t3SelectGazar.Items.IndexOf(srvTab4t3SelectGazar.Items.FindByValue(userGazarId));

                        divsrvTab4t3Year.InnerHtml = currentYear;
                        divsrvTab4t3HalfYear.InnerHtml = currentHalfYear.Replace("1", "эхний").Replace("2", "сүүлийн");
                        srvTab4t3SelectYear.SelectedIndex = srvTab4t3SelectYear.Items.IndexOf(srvTab4t3SelectYear.Items.FindByValue(currentYear));
                        srvTab4t3SelectHalfYear.SelectedIndex = srvTab4t3SelectHalfYear.Items.IndexOf(srvTab4t3SelectHalfYear.Items.FindByValue(currentHalfYear));

                        if (!myObjGetTableData.UserCheckRoles(userId, "1") ) srvTab4t1.InnerHtml = "Таньд хандах эрх байхгүй байна!";

                        srvTab4t2SelectGazar.SelectedIndex = srvTab4t2SelectGazar.Items.IndexOf(srvTab4t2SelectGazar.Items.FindByValue(userGazarId));
                        srvTab4t2SelectGazar.Disabled = true;
                        srvTab4t3SelectGazar.SelectedIndex = srvTab4t3SelectGazar.Items.IndexOf(srvTab4t3SelectGazar.Items.FindByValue(userGazarId));
                        srvTab4t3SelectGazar.Disabled = true;

                        if (myObj.OracleExecuteScalar("SELECT COUNT(1) FROM ST_BRANCH WHERE BR_TYPE1=2 AND BR_MAIN_ID1=" + userGazarId).ToString() == "0")
                        {
                            dt.Rows.Clear();
                            dt.Load(myObj.OracleExecuteReader("SELECT TO_NUMBER(0) as BR_ID, 'Бүгд' as DOMAIN_ORG FROM DUAL UNION ALL SELECT TO_NUMBER(BR_ID) as BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=3 AND BR_MAIN_ID1=" + userGazarId));
                            myObj.DBDisconnect();
                            srvTab4t3SelectHeltes.DataSource = dt;
                            srvTab4t3SelectHeltes.DataTextField = "DOMAIN_ORG";
                            srvTab4t3SelectHeltes.DataValueField = "BR_ID";
                            srvTab4t3SelectHeltes.DataBind();
                        }
                        else
                        {
                            dt.Rows.Clear();
                            dt.Load(myObj.OracleExecuteReader("SELECT TO_NUMBER(0) as BR_ID, 'Бүгд' as DOMAIN_ORG FROM DUAL UNION ALL SELECT TO_NUMBER(BR_ID) as BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=2 AND BR_MAIN_ID1=" + userGazarId));
                            myObj.DBDisconnect();
                            srvTab4t3SelectHeltes.DataSource = dt;
                            srvTab4t3SelectHeltes.DataTextField = "DOMAIN_ORG";
                            srvTab4t3SelectHeltes.DataValueField = "BR_ID";
                            srvTab4t3SelectHeltes.DataBind();
                        }

                        if (!myObjGetTableData.UserCheckRoles(userId, "1,3") )
                        {
                            srvTab4t3SelectHeltes.SelectedIndex = srvTab4t3SelectHeltes.Items.IndexOf(srvTab4t3SelectHeltes.Items.FindByValue(userHeltesId));
                            srvTab4t3SelectHeltes.Disabled = true;

                            if (!myObjGetTableData.UserCheckRoles(userId, "1,5") )
                            {
                                if (srvTab4t1.InnerHtml == "Таньд хандах эрх байхгүй байна!") srvTab4t3.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                            }
                        }

                        if (myObjGetTableData.UserCheckRoles(userId, "1"))
                        {
                            srvTab4t3SelectGazar.Disabled = false;
                            srvTab4t3SelectHeltes.Disabled = false;
                        }
                    }
                    else
                    {
                        srvBossToHeadTitle.Style.Add("display", "");
                        srvBossToHeadTitle.Attributes["class"] = "active";
                        //srvTab1.Style.Add("display", "");
                        srvTab1.Attributes["class"] = "tab-pane active";
                        srvHeadToSubHeadTitle.Style.Add("display", "");
                        srvHeadToSubHeadTitle.Attributes["class"] = "";
                        //srvTab2.Style.Add("display", "");
                        srvTab2.Attributes["class"] = "tab-pane";
                        srvStaffToStaffTitle.Style.Add("display", "");
                        srvStaffToStaffTitle.Attributes["class"] = "";
                        //srvTab3.Style.Add("display", "");
                        srvTab3.Attributes["class"] = "tab-pane";
                        srvStaffToHeadTitle.Style.Add("display", "");
                        srvStaffToHeadTitle.Attributes["class"] = "";
                        //srvTab4.Style.Add("display", "");
                        srvTab4.Attributes["class"] = "tab-pane";

                        //bind tab1
                        srvTab1t2SelectYear.SelectedIndex = srvTab1t2SelectYear.Items.IndexOf(srvTab1t2SelectYear.Items.FindByValue(currentYear));
                        srvTab1t2SelectHalfYear.SelectedIndex = srvTab1t2SelectHalfYear.Items.IndexOf(srvTab1t2SelectHalfYear.Items.FindByValue(currentHalfYear));
                        srvTab1t3SelectYear.SelectedIndex = srvTab1t3SelectYear.Items.IndexOf(srvTab1t3SelectYear.Items.FindByValue(currentYear));
                        srvTab1t3SelectHalfYear.SelectedIndex = srvTab1t3SelectHalfYear.Items.IndexOf(srvTab1t3SelectHalfYear.Items.FindByValue(currentHalfYear));

                        if (!myObjGetTableData.UserCheckRoles(userId, "1")) srvTab1t1.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                        if (!myObjGetTableData.UserCheckRoles(userId, "2"))
                        {
                            srvTab1t2.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                            if (!myObjGetTableData.UserCheckRoles(userId, "3"))
                            {
                                if (srvTab1t1.InnerHtml == "Таньд хандах эрх байхгүй байна!")
                                {
                                    srvTab1t2.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                                    srvTab1t3.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                                }
                            }
                        }

                        //bind tab2
                        srvTab2t2SelectYear.SelectedIndex = srvTab2t2SelectYear.Items.IndexOf(srvTab2t2SelectYear.Items.FindByValue(currentYear));
                        srvTab2t2SelectHalfYear.SelectedIndex = srvTab2t2SelectHalfYear.Items.IndexOf(srvTab2t2SelectHalfYear.Items.FindByValue(currentHalfYear));
                        srvTab2t3SelectYear.SelectedIndex = srvTab2t3SelectYear.Items.IndexOf(srvTab2t3SelectYear.Items.FindByValue(currentYear));
                        srvTab2t3SelectHalfYear.SelectedIndex = srvTab2t3SelectHalfYear.Items.IndexOf(srvTab2t3SelectHalfYear.Items.FindByValue(currentHalfYear));

                        if (!myObjGetTableData.UserCheckRoles(userId, "1")) srvTab2t1.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                        if (!myObjGetTableData.UserCheckRoles(userId, "3"))
                        {
                            srvTab2t2.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                            if (!myObjGetTableData.UserCheckRoles(userId, "5"))
                            {
                                if (srvTab2t1.InnerHtml == "Таньд хандах эрх байхгүй байна!")
                                {
                                    srvTab2t2.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                                    srvTab2t3.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                                }
                            }
                        }

                        //bind tab3
                        srvTab3t2SelectYear.SelectedIndex = srvTab3t2SelectYear.Items.IndexOf(srvTab3t2SelectYear.Items.FindByValue(currentYear));
                        srvTab3t2SelectHalfYear.SelectedIndex = srvTab3t2SelectHalfYear.Items.IndexOf(srvTab3t2SelectHalfYear.Items.FindByValue(currentHalfYear));
                        
                        srvTab3t3SelectYear.SelectedIndex = srvTab3t3SelectYear.Items.IndexOf(srvTab3t3SelectYear.Items.FindByValue(currentYear));
                        srvTab3t3SelectHalfYear.SelectedIndex = srvTab3t3SelectHalfYear.Items.IndexOf(srvTab3t3SelectHalfYear.Items.FindByValue(currentHalfYear));

                        if (!myObjGetTableData.UserCheckRoles(userId, "1")) srvTab3t1.InnerHtml = "Таньд хандах эрх байхгүй байна!";

                        //bind tab4
                        srvTab4t2CurrentYear.InnerHtml = currentYear;
                        srvTab4t2CurrentHalfYear.InnerHtml = currentHalfYear.Replace("1", "эхний").Replace("2", "сүүлийн");
                        srvTab4t2SelectYear.SelectedIndex = srvTab4t2SelectYear.Items.IndexOf(srvTab4t2SelectYear.Items.FindByValue(currentYear));
                        srvTab4t2SelectHalfYear.SelectedIndex = srvTab4t2SelectHalfYear.Items.IndexOf(srvTab4t2SelectHalfYear.Items.FindByValue(currentHalfYear));
                        dt.Rows.Clear();
                        dt.Load(myObj.OracleExecuteReader("SELECT BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=3 AND BR_ID!=9911"));
                        myObj.DBDisconnect();
                        srvTab4t2SelectGazar.DataSource = dt;
                        srvTab4t2SelectGazar.DataTextField = "DOMAIN_ORG";
                        srvTab4t2SelectGazar.DataValueField = "BR_ID";
                        srvTab4t2SelectGazar.DataBind();
                        srvTab4t3SelectGazar.DataSource = dt;
                        srvTab4t3SelectGazar.DataTextField = "DOMAIN_ORG";
                        srvTab4t3SelectGazar.DataValueField = "BR_ID";
                        srvTab4t3SelectGazar.DataBind();
                        srvTab4t2SelectGazar.SelectedIndex = srvTab4t2SelectGazar.Items.IndexOf(srvTab4t2SelectGazar.Items.FindByValue(userGazarId));
                        srvTab4t3SelectGazar.SelectedIndex = srvTab4t3SelectGazar.Items.IndexOf(srvTab4t3SelectGazar.Items.FindByValue(userGazarId));

                        divsrvTab4t3Year.InnerHtml = currentYear;
                        divsrvTab4t3HalfYear.InnerHtml = currentHalfYear.Replace("1", "эхний").Replace("2", "сүүлийн");
                        srvTab4t3SelectYear.SelectedIndex = srvTab4t3SelectYear.Items.IndexOf(srvTab4t3SelectYear.Items.FindByValue(currentYear));
                        srvTab4t3SelectHalfYear.SelectedIndex = srvTab4t3SelectHalfYear.Items.IndexOf(srvTab4t3SelectHalfYear.Items.FindByValue(currentHalfYear));

                        if (!myObjGetTableData.UserCheckRoles(userId, "1") ) srvTab4t1.InnerHtml = "Таньд хандах эрх байхгүй байна!";

                        srvTab4t2SelectGazar.SelectedIndex = srvTab4t2SelectGazar.Items.IndexOf(srvTab4t2SelectGazar.Items.FindByValue(userGazarId));
                        srvTab4t2SelectGazar.Disabled = true;
                        srvTab4t3SelectGazar.SelectedIndex = srvTab4t3SelectGazar.Items.IndexOf(srvTab4t3SelectGazar.Items.FindByValue(userGazarId));
                        srvTab4t3SelectGazar.Disabled = true;

                        if (myObj.OracleExecuteScalar("SELECT COUNT(1) FROM ST_BRANCH WHERE BR_TYPE1=2 AND BR_MAIN_ID1=" + userGazarId).ToString() == "0")
                        {
                            dt.Rows.Clear();
                            dt.Load(myObj.OracleExecuteReader("SELECT TO_NUMBER(0) as BR_ID, 'Бүгд' as DOMAIN_ORG FROM DUAL UNION ALL SELECT TO_NUMBER(BR_ID) as BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=3 AND BR_MAIN_ID1=" + userGazarId));
                            myObj.DBDisconnect();
                            srvTab4t3SelectHeltes.DataSource = dt;
                            srvTab4t3SelectHeltes.DataTextField = "DOMAIN_ORG";
                            srvTab4t3SelectHeltes.DataValueField = "BR_ID";
                            srvTab4t3SelectHeltes.DataBind();
                        }
                        else
                        {
                            dt.Rows.Clear();
                            dt.Load(myObj.OracleExecuteReader("SELECT TO_NUMBER(0) as BR_ID, 'Бүгд' as DOMAIN_ORG FROM DUAL UNION ALL SELECT TO_NUMBER(BR_ID) as BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=2 AND BR_MAIN_ID1=" + userGazarId));
                            myObj.DBDisconnect();
                            srvTab4t3SelectHeltes.DataSource = dt;
                            srvTab4t3SelectHeltes.DataTextField = "DOMAIN_ORG";
                            srvTab4t3SelectHeltes.DataValueField = "BR_ID";
                            srvTab4t3SelectHeltes.DataBind();
                        }

                        if (!myObjGetTableData.UserCheckRoles(userId, "1,3") )
                        {
                            srvTab4t3SelectHeltes.SelectedIndex = srvTab4t3SelectHeltes.Items.IndexOf(srvTab4t3SelectHeltes.Items.FindByValue(userHeltesId));
                            srvTab4t3SelectHeltes.Disabled = true;

                            if (!myObjGetTableData.UserCheckRoles(userId, "1,5") )
                            {
                                if (srvTab4t1.InnerHtml == "Таньд хандах эрх байхгүй байна!") srvTab4t3.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                            }
                        }
                    }
                }
                else
                {
                    srvBossToHeadTitle.Style.Add("display", "");
                    srvBossToHeadTitle.Attributes["class"] = "active";
                    //srvTab1.Style.Add("display", "");
                    srvTab1.Attributes["class"] = "tab-pane active";
                    srvHeadToSubHeadTitle.Style.Add("display", "");
                    srvHeadToSubHeadTitle.Attributes["class"] = "";
                    //srvTab2.Style.Add("display", "");
                    srvTab2.Attributes["class"] = "tab-pane";
                    srvStaffToStaffTitle.Style.Add("display", "");
                    srvStaffToStaffTitle.Attributes["class"] = "";
                    //srvTab3.Style.Add("display", "");
                    srvTab3.Attributes["class"] = "tab-pane";
                    srvStaffToHeadTitle.Style.Add("display", "");
                    srvStaffToHeadTitle.Attributes["class"] = "";
                    //srvTab4.Style.Add("display", "");
                    srvTab4.Attributes["class"] = "tab-pane";

                    //bind tab1
                    srvTab1t2CurrentYear.InnerHtml = currentYear;
                    srvTab1t2CurrentHalfYear.InnerHtml = currentHalfYear.Replace("1", "эхний").Replace("2", "сүүлийн");
                    srvTab1t2SelectYear.SelectedIndex = srvTab1t2SelectYear.Items.IndexOf(srvTab1t2SelectYear.Items.FindByValue(currentYear));
                    srvTab1t2SelectHalfYear.SelectedIndex = srvTab1t2SelectHalfYear.Items.IndexOf(srvTab1t2SelectHalfYear.Items.FindByValue(currentHalfYear));
                    
                    dt.Rows.Clear();
                    dt.Load(myObj.OracleExecuteReader("SELECT TO_NUMBER(0) as BR_ID, 'Бүгд' as DOMAIN_ORG FROM DUAL UNION ALL SELECT TO_NUMBER(BR_ID) as BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=3 AND BR_ID!=9911"));
                    myObj.DBDisconnect();
                    srvTab1t3SelectGazar.DataSource = dt;
                    srvTab1t3SelectGazar.DataTextField = "DOMAIN_ORG";
                    srvTab1t3SelectGazar.DataValueField = "BR_ID";
                    srvTab1t3SelectGazar.DataBind();

                    divsrvTab1t3Year.InnerHtml = currentYear;
                    divsrvTab1t3HalfYear.InnerHtml = currentHalfYear.Replace("1", "эхний").Replace("2", "сүүлийн");
                    srvTab1t3SelectYear.SelectedIndex = srvTab1t3SelectYear.Items.IndexOf(srvTab1t3SelectYear.Items.FindByValue(currentYear));
                    srvTab1t3SelectHalfYear.SelectedIndex = srvTab1t3SelectHalfYear.Items.IndexOf(srvTab1t3SelectHalfYear.Items.FindByValue(currentHalfYear));

                    if (!myObjGetTableData.UserCheckRoles(userId, "1") ) srvTab1t1.InnerHtml = "Таньд хандах эрх байхгүй байна!";

                    if (!myObjGetTableData.UserCheckRoles(userId, "1,2") )
                    {

                        srvTab1t3SelectGazar.SelectedIndex = srvTab1t3SelectGazar.Items.IndexOf(srvTab1t3SelectGazar.Items.FindByValue(userGazarId));
                        srvTab1t3SelectGazar.Disabled = true;
                        srvTab1t2.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                        if (!myObjGetTableData.UserCheckRoles(userId, "1,3") )
                        {
                            if (srvTab1t1.InnerHtml == "Таньд хандах эрх байхгүй байна!")
                            {
                                srvTab1t2.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                                srvTab1t3.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                            }
                        }
                    }

                    //bind tab2
                    srvTab2t2CurrentYear.InnerHtml = currentYear;
                    srvTab2t2CurrentHalfYear.InnerHtml = currentHalfYear.Replace("1", "эхний").Replace("2", "сүүлийн");
                    srvTab2t2SelectYear.SelectedIndex = srvTab2t2SelectYear.Items.IndexOf(srvTab2t2SelectYear.Items.FindByValue(currentYear));
                    srvTab2t2SelectHalfYear.SelectedIndex = srvTab2t2SelectHalfYear.Items.IndexOf(srvTab2t2SelectHalfYear.Items.FindByValue(currentHalfYear));
                    dt.Rows.Clear();
                    dt.Load(myObj.OracleExecuteReader("SELECT BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=3 AND BR_ID!=9911"));
                    myObj.DBDisconnect();
                    srvTab2t2SelectGazar.DataSource = dt;
                    srvTab2t2SelectGazar.DataTextField = "DOMAIN_ORG";
                    srvTab2t2SelectGazar.DataValueField = "BR_ID";
                    srvTab2t2SelectGazar.DataBind();
                    srvTab2t3SelectGazar.DataSource = dt;
                    srvTab2t3SelectGazar.DataTextField = "DOMAIN_ORG";
                    srvTab2t3SelectGazar.DataValueField = "BR_ID";
                    srvTab2t3SelectGazar.DataBind();
                    srvTab2t2SelectGazar.SelectedIndex = srvTab2t2SelectGazar.Items.IndexOf(srvTab2t2SelectGazar.Items.FindByValue(userGazarId));
                    srvTab2t3SelectGazar.SelectedIndex = srvTab2t3SelectGazar.Items.IndexOf(srvTab2t3SelectGazar.Items.FindByValue(userGazarId));

                    if (myObj.OracleExecuteScalar("SELECT COUNT(1) FROM ST_BRANCH WHERE BR_TYPE1=2 AND BR_MAIN_ID1=" + srvTab2t3SelectGazar.Items[srvTab2t3SelectGazar.SelectedIndex].Value).ToString() == "0")
                    {
                        dt.Rows.Clear();
                        dt.Load(myObj.OracleExecuteReader("SELECT TO_NUMBER(0) as BR_ID, 'Бүгд' as DOMAIN_ORG FROM DUAL UNION ALL SELECT TO_NUMBER(BR_ID) as BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=3 AND BR_MAIN_ID1=" + srvTab2t3SelectGazar.Items[srvTab2t3SelectGazar.SelectedIndex].Value));
                        myObj.DBDisconnect();
                        srvTab2t3SelectHeltes.DataSource = dt;
                        srvTab2t3SelectHeltes.DataTextField = "DOMAIN_ORG";
                        srvTab2t3SelectHeltes.DataValueField = "BR_ID";
                        srvTab2t3SelectHeltes.DataBind();
                    }
                    else
                    {
                        dt.Rows.Clear();
                        dt.Load(myObj.OracleExecuteReader("SELECT TO_NUMBER(0) as BR_ID, 'Бүгд' as DOMAIN_ORG FROM DUAL UNION ALL SELECT TO_NUMBER(BR_ID) as BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=2 AND BR_MAIN_ID1=" + srvTab2t3SelectGazar.Items[srvTab2t3SelectGazar.SelectedIndex].Value));
                        myObj.DBDisconnect();
                        srvTab2t3SelectHeltes.DataSource = dt;
                        srvTab2t3SelectHeltes.DataTextField = "DOMAIN_ORG";
                        srvTab2t3SelectHeltes.DataValueField = "BR_ID";
                        srvTab2t3SelectHeltes.DataBind();
                    }

                    divsrvTab2t3Year.InnerHtml = currentYear;
                    divsrvTab2t3HalfYear.InnerHtml = currentHalfYear.Replace("1", "эхний").Replace("2", "сүүлийн");
                    srvTab2t3SelectYear.SelectedIndex = srvTab2t3SelectYear.Items.IndexOf(srvTab2t3SelectYear.Items.FindByValue(currentYear));
                    srvTab2t3SelectHalfYear.SelectedIndex = srvTab2t3SelectHalfYear.Items.IndexOf(srvTab2t3SelectHalfYear.Items.FindByValue(currentHalfYear));

                    if (!myObjGetTableData.UserCheckRoles(userId, "1") ) srvTab2t1.InnerHtml = "Таньд хандах эрх байхгүй байна!";

                    if (!myObjGetTableData.UserCheckRoles(userId, "1,3") )
                    {
                        srvTab2t3SelectHeltes.SelectedIndex = srvTab2t3SelectHeltes.Items.IndexOf(srvTab2t3SelectHeltes.Items.FindByValue(userHeltesId));
                        srvTab2t3SelectHeltes.Disabled = true;
                        srvTab2t2.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                        if (!myObjGetTableData.UserCheckRoles(userId, "1,5") )
                        {
                            if (srvTab2t1.InnerHtml == "Таньд хандах эрх байхгүй байна!")
                            {
                                srvTab2t2.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                                srvTab2t3.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                            }
                        }
                    }
                    //bind tab3
                    srvTab3t2CurrentYear.InnerHtml = currentYear;
                    srvTab3t2CurrentHalfYear.InnerHtml = currentHalfYear.Replace("1", "эхний").Replace("2", "сүүлийн");
                    srvTab3t2SelectYear.SelectedIndex = srvTab3t2SelectYear.Items.IndexOf(srvTab3t2SelectYear.Items.FindByValue(currentYear));
                    srvTab3t2SelectHalfYear.SelectedIndex = srvTab3t2SelectHalfYear.Items.IndexOf(srvTab3t2SelectHalfYear.Items.FindByValue(currentHalfYear));
                    dt.Rows.Clear();
                    dt.Load(myObj.OracleExecuteReader("SELECT TO_NUMBER(0) as BR_ID, 'Бүгд' as DOMAIN_ORG FROM DUAL UNION ALL SELECT TO_NUMBER(BR_ID) as BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=3 AND BR_ID!=9911"));
                    myObj.DBDisconnect();
                    srvTab3t2SelectGazar.DataSource = dt;
                    srvTab3t2SelectGazar.DataTextField = "DOMAIN_ORG";
                    srvTab3t2SelectGazar.DataValueField = "BR_ID";
                    srvTab3t2SelectGazar.DataBind();
                    srvTab3t3SelectGazar.DataSource = dt;
                    srvTab3t3SelectGazar.DataTextField = "DOMAIN_ORG";
                    srvTab3t3SelectGazar.DataValueField = "BR_ID";
                    srvTab3t3SelectGazar.DataBind();


                    divsrvTab3t3Year.InnerHtml = currentYear;
                    divsrvTab3t3HalfYear.InnerHtml = currentHalfYear.Replace("1", "эхний").Replace("2", "сүүлийн");
                    srvTab3t3SelectYear.SelectedIndex = srvTab3t3SelectYear.Items.IndexOf(srvTab3t3SelectYear.Items.FindByValue(currentYear));
                    srvTab3t3SelectHalfYear.SelectedIndex = srvTab3t3SelectHalfYear.Items.IndexOf(srvTab3t3SelectHalfYear.Items.FindByValue(currentHalfYear));

                    if (!myObjGetTableData.UserCheckRoles(userId, "1") ) srvTab3t1.InnerHtml = "Таньд хандах эрх байхгүй байна!";

                    srvTab3t2SelectGazar.SelectedIndex = srvTab3t2SelectGazar.Items.IndexOf(srvTab3t2SelectGazar.Items.FindByValue(userGazarId));
                    srvTab3t2SelectGazar.Disabled = true;
                    srvTab3t3SelectGazar.SelectedIndex = srvTab3t3SelectGazar.Items.IndexOf(srvTab3t3SelectGazar.Items.FindByValue(userGazarId));
                    srvTab3t3SelectGazar.Disabled = true;

                    if (myObj.OracleExecuteScalar("SELECT COUNT(1) FROM ST_BRANCH WHERE BR_TYPE1=2 AND BR_MAIN_ID1=" + userGazarId).ToString() == "0")
                    {
                        dt.Rows.Clear();
                        dt.Load(myObj.OracleExecuteReader("SELECT TO_NUMBER(0) as BR_ID, 'Бүгд' as DOMAIN_ORG FROM DUAL UNION ALL SELECT TO_NUMBER(BR_ID) as BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=3 AND BR_MAIN_ID1=" + userGazarId));
                        myObj.DBDisconnect();
                        srvTab3t2SelectHeltes.DataSource = dt;
                        srvTab3t2SelectHeltes.DataTextField = "DOMAIN_ORG";
                        srvTab3t2SelectHeltes.DataValueField = "BR_ID";
                        srvTab3t2SelectHeltes.DataBind();
                        srvTab3t3SelectHeltes.DataSource = dt;
                        srvTab3t3SelectHeltes.DataTextField = "DOMAIN_ORG";
                        srvTab3t3SelectHeltes.DataValueField = "BR_ID";
                        srvTab3t3SelectHeltes.DataBind();
                    }
                    else
                    {
                        dt.Rows.Clear();
                        dt.Load(myObj.OracleExecuteReader("SELECT TO_NUMBER(0) as BR_ID, 'Бүгд' as DOMAIN_ORG FROM DUAL UNION ALL SELECT TO_NUMBER(BR_ID) as BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=2 AND BR_MAIN_ID1=" + userGazarId));
                        myObj.DBDisconnect();
                        srvTab3t2SelectHeltes.DataSource = dt;
                        srvTab3t2SelectHeltes.DataTextField = "DOMAIN_ORG";
                        srvTab3t2SelectHeltes.DataValueField = "BR_ID";
                        srvTab3t2SelectHeltes.DataBind();
                        srvTab3t3SelectHeltes.DataSource = dt;
                        srvTab3t3SelectHeltes.DataTextField = "DOMAIN_ORG";
                        srvTab3t3SelectHeltes.DataValueField = "BR_ID";
                        srvTab3t3SelectHeltes.DataBind();
                    }

                    if (!myObjGetTableData.UserCheckRoles(userId, "1,3") )
                    {
                        srvTab3t2SelectHeltes.SelectedIndex = srvTab3t2SelectHeltes.Items.IndexOf(srvTab3t2SelectHeltes.Items.FindByValue(userHeltesId));
                        srvTab3t2SelectHeltes.Disabled = true;
                        srvTab3t3SelectHeltes.SelectedIndex = srvTab3t3SelectHeltes.Items.IndexOf(srvTab3t3SelectHeltes.Items.FindByValue(userHeltesId));
                        srvTab3t3SelectHeltes.Disabled = true;
                        dt.Rows.Clear();
                        dt.Load(myObj.OracleExecuteReader("SELECT TO_NUMBER(0) as ST_ID, TO_CHAR('Бүгд') as ST_NAME FROM DUAL UNION ALL SELECT TO_NUMBER(ST_ID) as ST_ID, TO_CHAR(SUBSTR(MNAME,0,1)||'.'||SUBSTR(LNAME,1,1)||LOWER(SUBSTR(LNAME,2))) as ST_NAME FROM ST_STAFFS WHERE STATUS=0 AND POS_ID!=2010301 AND POS_ID!=2010201 AND BR_ID=" + srvTab3t3SelectHeltes.Items[srvTab3t3SelectHeltes.SelectedIndex].Value));
                        myObj.DBDisconnect();
                        srvTab3t3SelectStaff.DataSource = dt;
                        srvTab3t3SelectStaff.DataTextField = "ST_NAME";
                        srvTab3t3SelectStaff.DataValueField = "ST_ID";
                        srvTab3t3SelectStaff.DataBind();

                        if (!myObjGetTableData.UserCheckRoles(userId, "1,5") )
                        {
                            srvTab3t3SelectStaff.SelectedIndex = srvTab3t3SelectStaff.Items.IndexOf(srvTab3t3SelectStaff.Items.FindByValue(userId));
                            srvTab3t3SelectStaff.Disabled = true;
                        }
                    }
                    //bind tab4
                    srvTab4t2CurrentYear.InnerHtml = currentYear;
                    srvTab4t2CurrentHalfYear.InnerHtml = currentHalfYear.Replace("1", "эхний").Replace("2", "сүүлийн");
                    srvTab4t2SelectYear.SelectedIndex = srvTab4t2SelectYear.Items.IndexOf(srvTab4t2SelectYear.Items.FindByValue(currentYear));
                    srvTab4t2SelectHalfYear.SelectedIndex = srvTab4t2SelectHalfYear.Items.IndexOf(srvTab4t2SelectHalfYear.Items.FindByValue(currentHalfYear));
                    dt.Rows.Clear();
                    dt.Load(myObj.OracleExecuteReader("SELECT BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=3 AND BR_ID!=9911"));
                    myObj.DBDisconnect();
                    srvTab4t2SelectGazar.DataSource = dt;
                    srvTab4t2SelectGazar.DataTextField = "DOMAIN_ORG";
                    srvTab4t2SelectGazar.DataValueField = "BR_ID";
                    srvTab4t2SelectGazar.DataBind();
                    srvTab4t3SelectGazar.DataSource = dt;
                    srvTab4t3SelectGazar.DataTextField = "DOMAIN_ORG";
                    srvTab4t3SelectGazar.DataValueField = "BR_ID";
                    srvTab4t3SelectGazar.DataBind();
                    srvTab4t2SelectGazar.SelectedIndex = srvTab4t2SelectGazar.Items.IndexOf(srvTab4t2SelectGazar.Items.FindByValue(userGazarId));
                    srvTab4t3SelectGazar.SelectedIndex = srvTab4t3SelectGazar.Items.IndexOf(srvTab4t3SelectGazar.Items.FindByValue(userGazarId));

                    divsrvTab4t3Year.InnerHtml = currentYear;
                    divsrvTab4t3HalfYear.InnerHtml = currentHalfYear.Replace("1", "эхний").Replace("2", "сүүлийн");
                    srvTab4t3SelectYear.SelectedIndex = srvTab4t3SelectYear.Items.IndexOf(srvTab4t3SelectYear.Items.FindByValue(currentYear));
                    srvTab4t3SelectHalfYear.SelectedIndex = srvTab4t3SelectHalfYear.Items.IndexOf(srvTab4t3SelectHalfYear.Items.FindByValue(currentHalfYear));

                    if (!myObjGetTableData.UserCheckRoles(userId, "1") ) srvTab4t1.InnerHtml = "Таньд хандах эрх байхгүй байна!";

                    srvTab4t2SelectGazar.SelectedIndex = srvTab4t2SelectGazar.Items.IndexOf(srvTab4t2SelectGazar.Items.FindByValue(userGazarId));
                    srvTab4t2SelectGazar.Disabled = true;
                    srvTab4t3SelectGazar.SelectedIndex = srvTab4t3SelectGazar.Items.IndexOf(srvTab4t3SelectGazar.Items.FindByValue(userGazarId));
                    srvTab4t3SelectGazar.Disabled = true;

                    if (myObj.OracleExecuteScalar("SELECT COUNT(1) FROM ST_BRANCH WHERE BR_TYPE1=2 AND BR_MAIN_ID1=" + userGazarId).ToString() == "0")
                    {
                        dt.Rows.Clear();
                        dt.Load(myObj.OracleExecuteReader("SELECT TO_NUMBER(0) as BR_ID, 'Бүгд' as DOMAIN_ORG FROM DUAL UNION ALL SELECT TO_NUMBER(BR_ID) as BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=3 AND BR_MAIN_ID1=" + userGazarId));
                        myObj.DBDisconnect();
                        srvTab4t3SelectHeltes.DataSource = dt;
                        srvTab4t3SelectHeltes.DataTextField = "DOMAIN_ORG";
                        srvTab4t3SelectHeltes.DataValueField = "BR_ID";
                        srvTab4t3SelectHeltes.DataBind();
                    }
                    else
                    {
                        dt.Rows.Clear();
                        dt.Load(myObj.OracleExecuteReader("SELECT TO_NUMBER(0) as BR_ID, 'Бүгд' as DOMAIN_ORG FROM DUAL UNION ALL SELECT TO_NUMBER(BR_ID) as BR_ID, DOMAIN_ORG FROM ST_BRANCH WHERE BR_TYPE1=2 AND BR_MAIN_ID1=" + userGazarId));
                        myObj.DBDisconnect();
                        srvTab4t3SelectHeltes.DataSource = dt;
                        srvTab4t3SelectHeltes.DataTextField = "DOMAIN_ORG";
                        srvTab4t3SelectHeltes.DataValueField = "BR_ID";
                        srvTab4t3SelectHeltes.DataBind();
                    }

                    if (!myObjGetTableData.UserCheckRoles(userId, "1,3") )
                    {
                        srvTab4t3SelectHeltes.SelectedIndex = srvTab4t3SelectHeltes.Items.IndexOf(srvTab4t3SelectHeltes.Items.FindByValue(userHeltesId));
                        srvTab4t3SelectHeltes.Disabled = true;

                        if (!myObjGetTableData.UserCheckRoles(userId, "1,5") )
                        {
                            if (srvTab4t1.InnerHtml == "Таньд хандах эрх байхгүй байна!") srvTab4t3.InnerHtml = "Таньд хандах эрх байхгүй байна!";
                        }
                    }
                    if (!myObjGetTableData.UserCheckRoles(userId, "1")) {
                        pTab5Li.Style.Add("display", "none");
                    }
                }
                srvTab5t1Year.SelectedIndex = srvTab5t1Year.Items.IndexOf(srvTab5t1Year.Items.FindByValue(currentYear));
                srvTab5t2Year.SelectedIndex = srvTab5t2Year.Items.IndexOf(srvTab5t2Year.Items.FindByValue(currentYear));
                srvTab5t3Year.SelectedIndex = srvTab5t3Year.Items.IndexOf(srvTab5t3Year.Items.FindByValue(currentYear));
                srvTab5t4Year.SelectedIndex = srvTab5t4Year.Items.IndexOf(srvTab5t4Year.Items.FindByValue(currentYear));
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