﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LMWebApp.pg
{
    /// <summary>
    /// Summary description for NaoAuditUploadFile
    /// </summary>
    public class NaoAuditUploadFile : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            if (context.Request.Files.Count > 0)
            {
                HttpFileCollection SelectedFiles = context.Request.Files;
                for (int i = 0; i < SelectedFiles.Count; i++)
                {
                    HttpPostedFile PostedFile = SelectedFiles[i];
                    string FileName = context.Server.MapPath("~/files/naoaudit/" + PostedFile.FileName);
                    PostedFile.SaveAs(FileName);
                }
            }

            else
            {
                context.Response.ContentType = "text/plain";
                context.Response.Write("Please Select Files");
            }

            context.Response.ContentType = "text/plain";
            context.Response.Write("1");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}