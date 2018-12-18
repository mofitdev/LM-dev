using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMWebApp.pg
{
    public partial class auditinternalTabsAttachShowModal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            myPdfFile.Src = "../files/auditinternal/" + Request.QueryString["filename"];
        }
    }
}