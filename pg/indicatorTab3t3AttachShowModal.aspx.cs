﻿using LMWebApp.cs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMWebApp.pg
{
    public partial class indicatorTab3t3AttachShowModal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModifyDB myObj = new ModifyDB();
            myPdfFile.Src = "../files/indicator/"+myObj.OracleExecuteScalar("SELECT FILENAME FROM TBL_INDICATORPDFATTACH WHERE ID="+Request.QueryString["id"]).ToString();
        }
    }
}