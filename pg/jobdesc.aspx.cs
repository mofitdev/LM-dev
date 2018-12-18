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
    public partial class jobdesc : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LM_UserID"] == null) Response.Redirect("~/login");
            else setDatas(); 
        }
        protected void setDatas()
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            DataSet ds = null;
            try 
            {
                string stid = Session["LM_UserID"].ToString();
                string currentYear = "", currentStaffGazarNegj="";
                string tnbdName = "";

                ds = myObjGetTableData.getCurrentInfo();
                currentYear = ds.Tables[0].Rows[0]["YEAR"].ToString();
                ds = myObjGetTableData.getUserInfo(stid);
                if (ds.Tables[0].Rows[0]["HELTESID"].ToString() != ds.Tables[0].Rows[0]["GAZARID"].ToString()) currentStaffGazarNegj = ds.Tables[0].Rows[0]["GAZARNAMEINIT"].ToString() + "-" + ds.Tables[0].Rows[0]["HELTESNAMEINIT"].ToString();
                else currentStaffGazarNegj = ds.Tables[0].Rows[0]["GAZARNAMEINIT"].ToString();
                if (!myObjGetTableData.UserCheckRoles(stid, "1")) {
                    pTab3Li.Style.Add("display","none");
                }
                if ("0" == myObj.OracleExecuteScalar("SELECT COUNT(1) FROM TBL_JOBCAPACITYNUM_STAFFS WHERE ST_ID=" + stid).ToString())
                {
                    jobdescIsJobStaff.InnerHtml = "<div class=\"alert alert-warning fade in\"><i class=\"fa-fw fa fa-warning\"></i><strong>Анхаарна уу!</strong> " + currentStaffGazarNegj + "-ийн " + ds.Tables[0].Rows[0]["POSNAME"].ToString() + " " + ds.Tables[0].Rows[0]["STNAMEINIT"].ToString() + "-д ажлын байр оноож өгөөгүй байна! ТХЭУГ-д хандана уу.</div>";
                    //pMainDiv.Attributes["class"]="hide";

                    pTab1Li.Attributes["class"] = "";
                    pTab2Li.Attributes["class"] = "";
                    pTab3Li.Attributes["class"] = "active";
                    jobdescTab1.Attributes["class"] = "tab-pane";
                    jobdescTab2.Attributes["class"] = "tab-pane";
                    jobdescTab3.Attributes["class"] = "tab-pane active";
                    pTab1Li.Style.Add("display", "none");
                    pTab2Li.Style.Add("display", "none");
                }
                else {
                    pTab1Li.Attributes["class"] = "active";
                    pTab2Li.Attributes["class"] = "";
                    pTab3Li.Attributes["class"] = "";
                    jobdescTab1.Attributes["class"] = "tab-pane active";
                    jobdescTab2.Attributes["class"] = "tab-pane";
                    jobdescTab3.Attributes["class"] = "tab-pane";
                    pTab1Li.Style.Add("display", "");
                    pTab2Li.Style.Add("display", "");


                    jobdescIsJobStaff.Attributes["class"]="hide";

                    tnbdName = myObj.OracleExecuteScalar(@"SELECT SUBSTR(LNAME,0,1)||'.'||SUBSTR(FNAME,1,1)||LOWER(SUBSTR(FNAME,2)) 
FROM hrdbuser.ST_STAFFS a 
INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE = 1 
INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID = c.ID AND c.ACTIVE = 1 
WHERE b.POS_ID=10205").ToString();
                    //dt.Rows.Clear();
                    //dt.Load(myObj.OracleExecuteReader("SELECT ID, NO||'. '||NAME as NAME FROM TBL_LAW_TYPE ORDER BY NO"));
                    //myObj.DBDisconnect();
                    //jobdescTab2D3D4ModalSelectZaaltDesc.DataSource = dt;
                    //jobdescTab2D3D4ModalSelectZaaltDesc.DataTextField = "NAME";
                    //jobdescTab2D3D4ModalSelectZaaltDesc.DataValueField = "ID";
                    //jobdescTab2D3D4ModalSelectZaaltDesc.DataBind();

                    
                }
                jobdescTab1SelectYear.SelectedIndex = jobdescTab1SelectYear.Items.IndexOf(jobdescTab1SelectYear.Items.FindByText(currentYear));
                jobdescTab2SelectYear.SelectedIndex = jobdescTab2SelectYear.Items.IndexOf(jobdescTab2SelectYear.Items.FindByText(currentYear));
                pTab3S2SelectYear.SelectedIndex = pTab3S2SelectYear.Items.IndexOf(pTab3S2SelectYear.Items.FindByText(currentYear));
                pTab3S3SelectYear.SelectedIndex = pTab3S3SelectYear.Items.IndexOf(pTab3S3SelectYear.Items.FindByText(currentYear));
                jobdescTab2LiYear.InnerHtml = currentYear;
                jobdescTab1Lbl12.InnerHtml = tnbdName.ToUpper();
                jobdescTab1Lbl13.InnerHtml = DateTime.Now.ToString("yyyy оны MM дугаар сарын dd-ний өдөр");
                jobdescTab1Lbl14.InnerHtml = DateTime.Now.ToString("yyyy оны MM дугаар сарын dd-ний өдөр");

                pTab3S1AddBtn.Style.Add("display", "none");
                pTab3S2AddBtn.Style.Add("display", "none");
                pTab3S3AddBtn.Style.Add("display", "none");
                ds = myObjGetTableData.getUserInfo(Session["LM_UserID"].ToString());
                for (int i = 0; i < ds.Tables[0].Rows[0]["ROLELISTID"].ToString().Split(',').Length; i++)
                {
                    if (ds.Tables[0].Rows[0]["ROLELISTID"].ToString().Split(',')[i].ToString() == "1" || ds.Tables[0].Rows[0]["ROLELISTID"].ToString().Split(',')[i].ToString() == "34")
                    {
                        pTab3S1AddBtn.Style.Add("display", "block");
                        pTab3S2AddBtn.Style.Add("display", "block");
                        pTab3S3AddBtn.Style.Add("display", "block");
                        break;
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