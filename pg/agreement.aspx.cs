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
    public partial class agreement : System.Web.UI.Page
    {
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
                string currentYear = "", currentYearHalf = "", stid = HttpContext.Current.Session["LM_UserID"].ToString(), userHeltesId = "", userGazarId = "", userPosId="";
                string gereeposname = "";
                DataSet ds = myObjGetTableData.getCurrentInfo();
                currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
                currentYearHalf = ds.Tables[0].Rows[0]["YEARHALF"].ToString();
                ds = myObjGetTableData.getUserInfo(stid);
                userHeltesId = ds.Tables[0].Rows[0]["HELTESID"].ToString();
                userGazarId = ds.Tables[0].Rows[0]["GAZARID"].ToString();
                userPosId = ds.Tables[0].Rows[0]["POSID"].ToString();
                //tab1
                    agreementTab1SelectYear.SelectedIndex = agreementTab1SelectYear.Items.IndexOf(agreementTab1SelectYear.Items.FindByValue(currentYear));
                    if (userPosId == "10205") agreementTab1PrintModalBtn.HRef = "pg/agreementTab1StaffPrintModal.aspx?stid=" + stid + "&yr=" + currentYear;
                    else if (userPosId == "2010201") agreementTab1PrintModalBtn.HRef = "pg/agreementTab1HeadPrintModal.aspx?stid=" + stid + "&yr=" + currentYear;
                    else agreementTab1PrintModalBtn.HRef = "pg/agreementTab1StaffPrintModal.aspx?stid=" + stid + "&yr=" + currentYear;

                agreementTab1t1SelectYear.SelectedIndex = agreementTab1t1SelectYear.Items.IndexOf(agreementTab1t1SelectYear.Items.FindByValue(currentYear));
                agreementTab1t2SelectYear.SelectedIndex = agreementTab1t2SelectYear.Items.IndexOf(agreementTab1t2SelectYear.Items.FindByValue(currentYear));
                agreementTab1t3SelectYear.SelectedIndex = agreementTab1t3SelectYear.Items.IndexOf(agreementTab1t3SelectYear.Items.FindByValue(currentYear));
                agreementTab1PrintModalSelectYear.SelectedIndex = agreementTab1PrintModalSelectYear.Items.IndexOf(agreementTab1PrintModalSelectYear.Items.FindByValue(currentYear));
                
                if (ds.Tables[0].Rows[0]["POSID"].ToString() == "10205") {
                    gereeposname = "Төсвийн шууд захирагч";
                }
                else if (ds.Tables[0].Rows[0]["POSID"].ToString() == "2010201")
                {
                    gereeposname = "Газрын дарга";
                }
                else if (ds.Tables[0].Rows[0]["POSID"].ToString() == "2010301")
                {
                    gereeposname = "Хэлтсийн дарга";
                }
                else if (ds.Tables[0].Rows[0]["POSID"].ToString() == "1043")
                {
                    gereeposname = "Дэд сайдын туслах";
                }
                else if (ds.Tables[0].Rows[0]["POSID"].ToString() == "2040202")
                {
                    gereeposname = "Төрийн нарийн бичгийн даргын туслах";
                }
                else
                {
                    gereeposname = "Мэргэжилтэн";
                }
                agreementTab2t4Lbl1.InnerHtml = gereeposname.Replace("Төсвийн шууд захирагч", "Tөсвийн ерөнхийлөн захирагчийн").Replace("Газрын дарга", "Төсвийн шууд захирагчийн").Replace("Хэлтсийн дарга", "Газрын даргын").Replace("Мэргэжилтэн", "Газрын даргын");
                agreementTab2t4Lbl2.InnerHtml = gereeposname.Replace("Төсвийн шууд захирагч", "шууд захирагчийн").Replace("Газрын дарга", "газрын даргын").Replace("Хэлтсийн дарга", "хэлтсийн даргын").Replace("Мэргэжилтэн", "мэргэжилтэний");
                agreementTab2t4Lbl3.InnerHtml = gereeposname.Replace("Төсвийн шууд захирагч", "шууд захирагчийн").Replace("Газрын дарга", "газрын даргын").Replace("Хэлтсийн дарга", "хэлтсийн даргын").Replace("Мэргэжилтэн", "мэргэжилтэний");
                //tab2
                agreementTab2t1SelectYear.SelectedIndex = agreementTab2t1SelectYear.Items.IndexOf(agreementTab2t1SelectYear.Items.FindByValue(currentYear));
                agreementTab2t1SelectYearHalf.SelectedIndex = agreementTab2t1SelectYearHalf.Items.IndexOf(agreementTab2t1SelectYearHalf.Items.FindByValue(currentYearHalf));
                agreementTab2t2SelectYear.SelectedIndex = agreementTab2t2SelectYear.Items.IndexOf(agreementTab2t2SelectYear.Items.FindByValue(currentYear));
                agreementTab2t2SelectYearHalf.SelectedIndex = agreementTab2t2SelectYearHalf.Items.IndexOf(agreementTab2t2SelectYearHalf.Items.FindByValue(currentYearHalf));
                agreementTab2t3SelectYear.SelectedIndex = agreementTab2t3SelectYear.Items.IndexOf(agreementTab2t3SelectYear.Items.FindByValue(currentYear));
                agreementTab2t3SelectYearHalf.SelectedIndex = agreementTab2t3SelectYearHalf.Items.IndexOf(agreementTab2t3SelectYearHalf.Items.FindByValue(currentYearHalf));
                agreementTab2t4SelectYear.SelectedIndex = agreementTab2t4SelectYear.Items.IndexOf(agreementTab2t4SelectYear.Items.FindByValue(currentYear));
                agreementTab2t4SelectYearHalf.SelectedIndex = agreementTab2t4SelectYearHalf.Items.IndexOf(agreementTab2t4SelectYearHalf.Items.FindByValue(currentYearHalf));

                agreementTab2PrintModalSelectYear.SelectedIndex = agreementTab2PrintModalSelectYear.Items.IndexOf(agreementTab2PrintModalSelectYear.Items.FindByValue(currentYear));
                agreementTab2PrintModalSelectYearHalf.SelectedIndex = agreementTab2PrintModalSelectYearHalf.Items.IndexOf(agreementTab2PrintModalSelectYearHalf.Items.FindByValue(currentYearHalf));
                //tab3
                agreementTab3SelectYear.SelectedIndex = agreementTab3SelectYear.Items.IndexOf(agreementTab3SelectYear.Items.FindByValue(currentYear));
                agreementTab3SelectYearHalf.SelectedIndex = agreementTab3SelectYearHalf.Items.IndexOf(agreementTab3SelectYearHalf.Items.FindByValue(currentYearHalf));

                ds = myObj.OracleExecuteDataSet("SELECT null as BR_ID, CAST('Бүгд' as VARCHAR2(200)) as DOMAIN_ORG FROM DUAL UNION ALL SELECT TO_CHAR(BR_ID) as BR_ID, CAST(DOMAIN_ORG as VARCHAR2(200)) as DOMAIN_ORG FROM TBL_BRANCH WHERE YR=" + currentYear + " AND BR_TYPE1 IN (1,3)");
                agreementTab3SelectBranchGazar.DataSource = ds.Tables[0];
                agreementTab3SelectBranchGazar.DataTextField = "DOMAIN_ORG";
                agreementTab3SelectBranchGazar.DataValueField = "BR_ID";
                agreementTab3SelectBranchGazar.DataBind();
                    agreementTab1SelectBranchGazar.DataSource = ds.Tables[0];
                    agreementTab1SelectBranchGazar.DataTextField = "DOMAIN_ORG";
                    agreementTab1SelectBranchGazar.DataValueField = "BR_ID";
                    agreementTab1SelectBranchGazar.DataBind();
                //    agreementTab4t1SelectBranchGazar.DataSource = ds.Tables[0];
                //agreementTab4t1SelectBranchGazar.DataTextField = "DOMAIN_ORG";
                //agreementTab4t1SelectBranchGazar.DataValueField = "BR_ID";
                //agreementTab4t1SelectBranchGazar.DataBind();
                agreementTab5t1SelectBranchGazar.DataSource = ds.Tables[0];
                agreementTab5t1SelectBranchGazar.DataTextField = "DOMAIN_ORG";
                agreementTab5t1SelectBranchGazar.DataValueField = "BR_ID";
                agreementTab5t1SelectBranchGazar.DataBind();
                agreementTab5t3SelectBranchGazar.DataSource = ds.Tables[0];
                agreementTab5t3SelectBranchGazar.DataTextField = "DOMAIN_ORG";
                agreementTab5t3SelectBranchGazar.DataValueField = "BR_ID";
                agreementTab5t3SelectBranchGazar.DataBind();
                agreementTab3SelectBranchGazar.SelectedIndex = agreementTab3SelectBranchGazar.Items.IndexOf(agreementTab3SelectBranchGazar.Items.FindByValue(userGazarId));
                    agreementTab1SelectBranchGazar.SelectedIndex = agreementTab1SelectBranchGazar.Items.IndexOf(agreementTab1SelectBranchGazar.Items.FindByValue(userGazarId));
                //agreementTab4t1SelectBranchGazar.SelectedIndex = agreementTab4t1SelectBranchGazar.Items.IndexOf(agreementTab4t1SelectBranchGazar.Items.FindByValue(userGazarId));
                if (myObj.OracleExecuteScalar("SELECT COUNT(1) FROM TBL_BRANCH WHERE YR=" + currentYear + " AND BR_TYPE1=2 AND BR_MAIN_ID1=" + userGazarId + "").ToString() != "0")
                {
                    ds = myObj.OracleExecuteDataSet(@"SELECT BR_ID, DOMAIN_ORG, BR_NAME FROM TBL_BRANCH WHERE BR_TYPE1 IN (1,3) AND BR_ID=" + userGazarId + " AND YR=" + currentYear + @"
UNION ALL
SELECT BR_ID, DOMAIN_ORG, BR_NAME FROM TBL_BRANCH WHERE BR_TYPE1 IN (1,2) AND BR_MAIN_ID1=" + userGazarId + " AND YR=" + currentYear);
                }
                else ds = myObj.OracleExecuteDataSet("SELECT BR_ID, DOMAIN_ORG, BR_NAME FROM TBL_BRANCH WHERE BR_TYPE1=3 AND BR_MAIN_ID1=" + userGazarId + " AND YR=" + currentYear);
                agreementTab3SelectBranchHeltes.DataSource = ds.Tables[0];
                agreementTab3SelectBranchHeltes.DataTextField = "DOMAIN_ORG";
                agreementTab3SelectBranchHeltes.DataValueField = "BR_ID";
                agreementTab3SelectBranchHeltes.DataBind();
                agreementTab3SelectBranchHeltes.Disabled = false;
                    agreementTab1SelectBranchHeltes.DataSource = ds.Tables[0];
                    agreementTab1SelectBranchHeltes.DataTextField = "DOMAIN_ORG";
                    agreementTab1SelectBranchHeltes.DataValueField = "BR_ID";
                    agreementTab1SelectBranchHeltes.DataBind();
                    agreementTab1SelectBranchHeltes.Disabled = false;
                agreementTab4t1SelectBranchHeltes.DataSource = ds.Tables[0];
                agreementTab4t1SelectBranchHeltes.DataTextField = "DOMAIN_ORG";
                agreementTab4t1SelectBranchHeltes.DataValueField = "BR_ID";
                agreementTab4t1SelectBranchHeltes.DataBind();
                agreementTab4t1SelectBranchHeltes.Disabled = false;
                if (!myObjGetTableData.UserCheckRoles(stid, "1"))
                {
                    agreementTab3SelectBranchGazar.Disabled = true;
                        agreementTab1SelectBranchGazar.Disabled = true;
                    //agreementTab4t1SelectBranchGazar.Disabled = true;
                    agreementTab4Li.Style.Add("display", "none");
                    if (!myObjGetTableData.UserCheckRoles(stid, "3"))
                    {
                        agreementTab3SelectBranchHeltes.SelectedIndex = agreementTab3SelectBranchHeltes.Items.IndexOf(agreementTab3SelectBranchHeltes.Items.FindByValue(userHeltesId));
                        agreementTab3SelectBranchHeltes.Disabled = true;
                            agreementTab1SelectBranchHeltes.SelectedIndex = agreementTab1SelectBranchHeltes.Items.IndexOf(agreementTab1SelectBranchHeltes.Items.FindByValue(userHeltesId));
                            agreementTab1SelectBranchHeltes.Disabled = true;
                        agreementTab4t1SelectBranchHeltes.Disabled = true;
                        agreementTab4t1SelectBranchHeltes.SelectedIndex = agreementTab4t1SelectBranchHeltes.Items.IndexOf(agreementTab4t1SelectBranchHeltes.Items.FindByValue(userHeltesId));
                        
                        
                    }

                    if ("0" != myObj.OracleExecuteScalar("SELECT COUNT(1) FROM TBL_BRANCH WHERE BR_TYPE1=2 AND BR_MAIN_ID1=" + userGazarId + " AND YR=" + currentYear).ToString())
                    {
                        //ds = myObj.OracleExecuteDataSet("SELECT a.ST_ID, SUBSTR(a.MNAME,0,1)||'.'||SUBSTR(a.LNAME,0,1)||LOWER(SUBSTR(a.LNAME,2))||' | '||b.POS_NAME as ST_NAME FROM ST_STAFFS a INNER JOIN ST_POS b ON a.POS_ID=b.POS_ID INNER JOIN TBL_BRANCH c ON a.BR_ID=c.BR_ID AND c.YR=" + currentYear + " WHERE a.STATUS=0 AND a.BR_ID=" + agreementTab3SelectBranchHeltes.Items[agreementTab3SelectBranchHeltes.SelectedIndex].Value + " ORDER BY b.SORT");
//                        ds = myObj.OracleExecuteDataSet(@"SELECT a.ID as ST_ID, (SUBSTR(a.LNAME, 0, 1) || '.' || SUBSTR(a.FNAME, 0, 1) || LOWER(SUBSTR(a.FNAME, 2))) as ST_NAME 
//FROM hrdbuser.ST_STAFFS a
//INNER JOIN hrdbuser.ST_STBR b ON a.ID = b.STAFFS_ID AND b.ISACTIVE = 1
//INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID = c.ID AND c.ACTIVE = 1
//INNER JOIN hrdbuser.ST_BRANCH d ON b.BRANCH_ID = d.ID AND d.ISACTIVE = 1
//INNER JOIN hrdbuser.STN_POS g ON b.POS_ID = g.ID
//WHERE d.ID = " + agreementTab3SelectBranchHeltes.Items[agreementTab3SelectBranchHeltes.SelectedIndex].Value + @"
//ORDER BY g.SORT, a.ID");
                        ds = myObj.OracleExecuteDataSet(@"SELECT h.ST_ID, SUBSTR(a.LNAME,0,1)||'.'||SUBSTR(a.FNAME,0,1)||LOWER(SUBSTR(a.FNAME,2)) as ST_NAME, d.NAME as POS_NAME, f.ID as BR_ID, CASE WHEN f.ID=f.FATHER_ID THEN f.INITNAME ELSE g.INITNAME||'-'||f.INITNAME END as DOMAIN_ORG 
FROM(
  SELECT ST_ID
  FROM(
    SELECT a.ID as ST_ID
    FROM hrdbuser.ST_STAFFS a
    INNER JOIN hrdbuser.ST_STBR b ON a.ID = b.STAFFS_ID AND b.ISACTIVE = 1
    INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID = c.ID AND c.ACTIVE = 1
    INNER JOIN hrdbuser.ST_BRANCH f ON b.BRANCH_ID = f.ID AND f.ISACTIVE = 1
    WHERE f.FATHER_ID = (SELECT FATHER_ID FROM hrdbuser.ST_BRANCH WHERE ID = " + agreementTab3SelectBranchHeltes.Items[agreementTab3SelectBranchHeltes.SelectedIndex].Value + @" AND ISACTIVE = 1) AND b.POS_ID = 2010201
    UNION ALL
    SELECT a.ID as ST_ID
    FROM hrdbuser.ST_STAFFS a
    INNER JOIN hrdbuser.ST_STBR b ON a.ID = b.STAFFS_ID AND b.ISACTIVE = 1
    INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID = c.ID AND c.ACTIVE = 1
    INNER JOIN hrdbuser.ST_BRANCH f ON b.BRANCH_ID = f.ID AND f.ISACTIVE = 1
    WHERE f.ID = " + agreementTab3SelectBranchHeltes.Items[agreementTab3SelectBranchHeltes.SelectedIndex].Value + @"
  )
  GROUP BY ST_ID
) h
INNER JOIN hrdbuser.ST_STAFFS a ON h.ST_ID = a.ID
INNER JOIN hrdbuser.ST_STBR b ON a.ID = b.STAFFS_ID AND b.ISACTIVE = 1
INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID = c.ID AND c.ACTIVE = 1
LEFT JOIN hrdbuser.STN_POS d ON b.POS_ID = d.ID
INNER JOIN hrdbuser.ST_BRANCH f ON b.BRANCH_ID = f.ID AND f.ISACTIVE = 1
INNER JOIN hrdbuser.ST_BRANCH g ON f.FATHER_ID = g.ID AND g.ISACTIVE = 1
ORDER BY g.SORT, f.SORT, d.SORT");
                    }

                    else {
                        //ds = myObj.OracleExecuteDataSet("SELECT a.ST_ID, SUBSTR(a.MNAME,0,1)||'.'||SUBSTR(a.LNAME,0,1)||LOWER(SUBSTR(a.LNAME,2))||' | '||b.POS_NAME as ST_NAME FROM ST_STAFFS a INNER JOIN ST_POS b ON a.POS_ID=b.POS_ID INNER JOIN TBL_BRANCH c ON a.BR_ID=c.BR_ID AND c.YR=" + currentYear + " WHERE a.STATUS=0 AND c.BR_MAIN_ID1=" + agreementTab3SelectBranchGazar.Items[agreementTab3SelectBranchGazar.SelectedIndex].Value + " ORDER BY b.SORT");
                        ds = myObj.OracleExecuteDataSet(@"SELECT a.ID as ST_ID, (SUBSTR(a.LNAME, 0, 1) || '.' || SUBSTR(a.FNAME, 0, 1) || LOWER(SUBSTR(a.FNAME, 2))) as ST_NAME 
FROM hrdbuser.ST_STAFFS a
INNER JOIN hrdbuser.ST_STBR b ON a.ID = b.STAFFS_ID AND b.ISACTIVE = 1
INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID = c.ID AND c.ACTIVE = 1
INNER JOIN hrdbuser.ST_BRANCH d ON b.BRANCH_ID = d.ID AND d.ISACTIVE = 1
INNER JOIN hrdbuser.STN_POS g ON b.POS_ID = g.ID
WHERE d.FATHER_ID=" + agreementTab3SelectBranchGazar.Items[agreementTab3SelectBranchGazar.SelectedIndex].Value + @"
ORDER BY g.SORT, a.ID");
                    }
                        
                    myObj.DBDisconnect();
                    agreementTab3SelectStaff.DataSource = ds.Tables[0];
                    agreementTab3SelectStaff.DataTextField = "ST_NAME";
                    agreementTab3SelectStaff.DataValueField = "ST_ID";
                    agreementTab3SelectStaff.DataBind();
                    agreementTab3SelectStaff.Disabled = false;
                        agreementTab1SelectStaff.DataSource = ds.Tables[0];
                        agreementTab1SelectStaff.DataTextField = "ST_NAME";
                        agreementTab1SelectStaff.DataValueField = "ST_ID";
                        agreementTab1SelectStaff.DataBind();
                        agreementTab1SelectStaff.Disabled = false;

                    if (!myObjGetTableData.UserCheckRoles(stid, "5"))
                    {
                        agreementTab3SelectStaff.SelectedIndex = agreementTab3SelectStaff.Items.IndexOf(agreementTab3SelectStaff.Items.FindByValue(stid));
                            agreementTab1SelectStaff.SelectedIndex = agreementTab1SelectStaff.Items.IndexOf(agreementTab1SelectStaff.Items.FindByValue(stid));
                    }

                    if (!myObjGetTableData.UserCheckRoles(stid, "3,5"))
                    {
                        agreementTab3Li.Style.Add("display", "none");
                        agreementTab3IsGazarBoss.InnerHtml = "0";
                            agreementTab1IsGazarBoss.InnerHtml = "0";
                        agreementTab4Li.Style.Add("display", "none");
                        agreementTab3SelectStaff.Disabled = true;
                            agreementTab1SelectStaff.Disabled = true;
                    }
                    else
                    {
                        agreementTab3Li.Style.Add("display", "block");
                        agreementTab3IsGazarBoss.InnerHtml = "1";
                        agreementTab4Li.Style.Add("display", "block");
                    }
                }
                else {
                    agreementTab3Li.Style.Add("display", "block");
                    agreementTab3SelectBranchGazar.Disabled = false;
                        agreementTab1SelectBranchGazar.Disabled = false;
                    //agreementTab4t1SelectBranchGazar.Disabled = false;
                    agreementTab4Li.Style.Add("display", "block");
                    agreementTab5Li.Style.Add("display", "block");
                    ds = myObj.OracleExecuteDataSet(@"SELECT a.ID as ST_ID, (SUBSTR(a.LNAME, 0, 1) || '.' || SUBSTR(a.FNAME, 0, 1) || LOWER(SUBSTR(a.FNAME, 2))) as ST_NAME 
FROM hrdbuser.ST_STAFFS a
INNER JOIN hrdbuser.ST_STBR b ON a.ID = b.STAFFS_ID AND b.ISACTIVE = 1
INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID = c.ID AND c.ACTIVE = 1
INNER JOIN hrdbuser.ST_BRANCH d ON b.BRANCH_ID = d.ID AND d.ISACTIVE = 1
INNER JOIN hrdbuser.STN_POS g ON b.POS_ID = g.ID
WHERE d.FATHER_ID=" + agreementTab3SelectBranchGazar.Items[agreementTab3SelectBranchGazar.SelectedIndex].Value + @"
ORDER BY g.SORT, a.ID");
                    //ds = myObj.OracleExecuteDataSet("SELECT a.ST_ID, SUBSTR(a.MNAME,0,1)||'.'||SUBSTR(a.LNAME,0,1)||LOWER(SUBSTR(a.LNAME,2))||' | '||b.POS_NAME as ST_NAME FROM ST_STAFFS a INNER JOIN ST_POS b ON a.POS_ID=b.POS_ID INNER JOIN TBL_BRANCH c ON a.BR_ID=c.BR_ID AND c.YR="+currentYear+" WHERE a.STATUS=0 AND c.BR_MAIN_ID1=" + agreementTab3SelectBranchGazar.Items[agreementTab3SelectBranchGazar.SelectedIndex].Value + " ORDER BY b.SORT");
                    agreementTab3SelectStaff.DataSource = ds.Tables[0];
                    agreementTab3SelectStaff.DataTextField = "ST_NAME";
                    agreementTab3SelectStaff.DataValueField = "ST_ID";
                    agreementTab3SelectStaff.DataBind();
                    agreementTab3SelectStaff.Disabled = false;
                    agreementTab3SelectStaff.SelectedIndex = agreementTab3SelectStaff.Items.IndexOf(agreementTab3SelectStaff.Items.FindByValue(stid));
                        agreementTab1SelectStaff.DataSource = ds.Tables[0];
                        agreementTab1SelectStaff.DataTextField = "ST_NAME";
                        agreementTab1SelectStaff.DataValueField = "ST_ID";
                        agreementTab1SelectStaff.DataBind();
                        agreementTab1SelectStaff.Disabled = false;
                        agreementTab1SelectStaff.SelectedIndex = agreementTab1SelectStaff.Items.IndexOf(agreementTab1SelectStaff.Items.FindByValue(stid));

                    agreementTab3IsGazarBoss.InnerHtml = "1";
                }
                //tab4t1
                agreementTab4t1SelectYear.SelectedIndex = agreementTab4t1SelectYear.Items.IndexOf(agreementTab4t1SelectYear.Items.FindByValue(currentYear));
                agreementTab4t1SelectYearHalf.SelectedIndex = agreementTab4t1SelectYearHalf.Items.IndexOf(agreementTab4t1SelectYearHalf.Items.FindByValue(currentYearHalf));
                //tab4t2
                agreementTab4t2SelectYear.SelectedIndex = agreementTab4t2SelectYear.Items.IndexOf(agreementTab4t2SelectYear.Items.FindByValue(currentYear));
                agreementTab4t2SelectYearHalf.SelectedIndex = agreementTab4t2SelectYearHalf.Items.IndexOf(agreementTab4t2SelectYearHalf.Items.FindByValue(currentYearHalf));
                //tab5
                agreementTab5t1SelectYear.SelectedIndex = agreementTab5t1SelectYear.Items.IndexOf(agreementTab5t1SelectYear.Items.FindByValue(currentYear));
                agreementTab5t1SelectYearHalf.SelectedIndex = agreementTab5t1SelectYearHalf.Items.IndexOf(agreementTab5t1SelectYearHalf.Items.FindByValue(currentYearHalf));
                agreementTab5t2SelectYear.SelectedIndex = agreementTab5t2SelectYear.Items.IndexOf(agreementTab5t2SelectYear.Items.FindByValue(currentYear));
                agreementTab5t2SelectYearHalf.SelectedIndex = agreementTab5t2SelectYearHalf.Items.IndexOf(agreementTab5t2SelectYearHalf.Items.FindByValue(currentYearHalf));
                agreementTab5t3SelectYear.SelectedIndex = agreementTab5t3SelectYear.Items.IndexOf(agreementTab5t3SelectYear.Items.FindByValue(currentYear));


                //tab2 is hide
                if(myObj.OracleExecuteScalar("SELECT COUNT(1) as CNT FROM TBL_AGREEMENTSUBMITST WHERE YR="+currentYear+" AND ST_ID=" + stid).ToString() == "0") {
                    agreementTab2Li.Attributes["data-issubmit"] = "0";
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