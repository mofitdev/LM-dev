using LMWebApp.cs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMWebApp.pg
{
    public partial class lawakt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LM_UserID"] == null) Response.Redirect("~/login");
            else setDatas();
        }
        protected void setDatas()
        {
            string stid = HttpContext.Current.Session["LM_UserID"].ToString();
            ModifyDB myObj = new ModifyDB();
            GetTableData myObjGetTableData = new GetTableData();
            if (!myObjGetTableData.UserCheckRoles(stid, "1,31"))
            {
                pTab1Add.Visible = false;
                pTab2Add.Visible = false;
            }
            else
            {
                pTab1Add.Visible = true;
                pTab2Add.Visible = true;
            }
        }
    }
}