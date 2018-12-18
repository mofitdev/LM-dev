using LMWebApp.cs;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OracleClient;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMWebApp
{

    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            string stid = "";
            if (Session["LM_UserID"] == null) Response.Redirect("~/login");
            else
            {
                try
                {
                    DataSet ds = myObjGetTableData.getCurrentInfo();
                    stid = Session["LM_UserID"].ToString();
                    indexCurrentYear.InnerHtml = ds.Tables[0].Rows[0]["YEAR"].ToString();
                    indexCurrentYearHalf.InnerHtml = ds.Tables[0].Rows[0]["YEARHALF"].ToString();
                    indexCurrentQuarter.InnerHtml = ds.Tables[0].Rows[0]["QUARTER"].ToString();
                    indexCurrentMonth.InnerHtml = ds.Tables[0].Rows[0]["MONTH"].ToString();
                    ds = myObjGetTableData.getUserInfo(stid);
                    indexUserId.InnerHtml = stid;
                    indexUserGazarId.InnerHtml = ds.Tables[0].Rows[0]["GAZARID"].ToString();
                    indexUserHeltesId.InnerHtml = ds.Tables[0].Rows[0]["HELTESID"].ToString();
                    indexUserGazarName.InnerHtml = ds.Tables[0].Rows[0]["GAZARNAME"].ToString();
                    indexUserGazarInitName.InnerHtml = ds.Tables[0].Rows[0]["GAZARNAMEINIT"].ToString();
                    indexUserRoleListId.InnerHtml = ds.Tables[0].Rows[0]["ROLELISTID"].ToString();
                    indexUserPosId.InnerHtml = ds.Tables[0].Rows[0]["POSID"].ToString();
                    staffName.InnerHtml = ds.Tables[0].Rows[0]["STNAMEINIT"].ToString();
                    if (!myObjGetTableData.UserCheckRoles(stid, "1"))
                    {
                        if (ds.Tables[0].Rows[0]["POSID"].ToString() != "10106" && ds.Tables[0].Rows[0]["POSID"].ToString() != "10109" && ds.Tables[0].Rows[0]["POSID"].ToString() != "10205" && ds.Tables[0].Rows[0]["POSID"].ToString() != "2010201" && ds.Tables[0].Rows[0]["POSID"].ToString() != "2010301")
                        {
                            indexMenuHeadLi1.Style.Add("display", "none");
                            indexMenuHeadLi2.Style.Add("display", "none");
                        }
                        else {
                            indexMenuHeadLi1.Style.Add("display", "block");
                            indexMenuHeadLi2.Style.Add("display", "block");
                        }
                    }
                    else {
                        indexMenuHeadLi1.Style.Add("display", "block");
                        indexMenuHeadLi2.Style.Add("display", "block");
                    }
                    ds = myObj.OracleExecuteDataSet("SELECT a.IMAGE FROM hrdbuser.ST_STAFFS a INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE=1 INNER JOIN hrdbuser.ST_BRANCH c ON b.BRANCH_ID=c.ID INNER JOIN hrdbuser.ST_BRANCH d ON c.FATHER_ID=d.ID INNER JOIN hrdbuser.STN_POS f ON b.POS_ID=f.ID LEFT JOIN hrdbuser.STN_CITY g ON a.ADDRCITY_ID=g.ID LEFT JOIN hrdbuser.STN_DIST h ON a.ADDRDIST_ID=h.ID INNER JOIN hrdbuser.STN_MOVE i ON b.MOVE_ID=i.ID INNER JOIN hrdbuser.STN_MOVETYPE j ON i.MOVETYPE_ID=j.ID WHERE a.ID=" + stid);
                    if(ds.Tables[0].Rows[0]["IMAGE"].ToString() != "") indexProfileImage.Src = "http://hr/files/staffs/" + ds.Tables[0].Rows[0]["IMAGE"].ToString();
                }
                catch (cs.LMException ex)
                {
                    myObjGetTableData.exeptionMethod(ex);
                    throw ex;
                }
                catch (Exception ex)
                {
                    myObjGetTableData.exeptionMethod(ex);
                    throw ex;
                }
            }
        }

    }

}