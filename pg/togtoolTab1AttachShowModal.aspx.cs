using LMWebApp.cs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMWebApp.pg
{
    public partial class togtoolTab1AttachShowModal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            myPdfFile.Src = "../files/togtool/" + myObj.OracleExecuteScalar("SELECT FILE_NAME FROM TBL_TOGTOOL WHERE ID="+ Request.QueryString["id"]).ToString();
        }
    }
}