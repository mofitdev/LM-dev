using LMWebApp.cs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMWebApp.pg
{
    public partial class inputintractive : System.Web.UI.Page
    {
        string userId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LM_UserID"] == null) Response.Redirect("~/login.aspx");
            else setDatas();
        }
        protected void setDatas()
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                userId = HttpContext.Current.Session["LM_UserID"].ToString();
                if (!myObjGetTableData.UserCheckRoles(userId, "1,31"))
                {
                    inputintractiveIsRole.Style.Add("display", "block");
                    inputintractiveMainDiv.Style.Add("display", "none");
                }
            }
            catch (cs.LMException ex)
            {
                Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                Response.Redirect("../pg/error500.aspx");
            }
            catch (Exception ex)
            {
                Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                Response.Redirect("../pg/error500.aspx");
            }
        }
    }
}