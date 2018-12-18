using LMWebApp.cs;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OracleClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace LMWebApp.pg
{
    public partial class planemailsend : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["CMCDBBTConn"].ConnectionString);
            OracleCommand cmd = null;
            OracleDataAdapter adapter = new OracleDataAdapter();
            DataSet ds = null;
            MailMessage mail = new MailMessage();

            string strSubject = "", strBody="", strAhref="";
            string strMyVal = "";

            //7 honogiin tailan tuluvluguu
            if ((int)DateTime.Today.DayOfWeek == 5)
            {
                strSubject = "Долоо хоногийн тайлан, төлөвлөгөө оруулна уу";
                strBody = "Та бүхэн " + DateTime.Today.AddDays(-4).ToString("yyyy.MM.dd") + "-оос " + DateTime.Today.ToString("yyyy.MM.dd") + "-нд хийсэн 7 хоногийн ажлын тайлан болон дараа 7 хоногт хийх ажлын төлөвлөгөөг 16 цагаас өмнө Цахим хяналт-шинжилгээ үнэлгээний системд дараах холбоосоор орж оруулна уу.";
                strAhref = "Долоо хоногийн тайлан, төлөвлөгөө оруулах холбоос: <a href=\"https://lm.mof.gov.mn/#pg/implweek.aspx\">lm.mof.gov.mn »</a>";

                mail.From = new MailAddress("lmonitoring@mof.gov.mn");
                mail.To.Add("all@mof.gov.mn");
                mail.Subject = strSubject;
                mail.Body += "<html xmlns=\"http://www.w3.org/1999/xhtml\"><head><meta name=\"viewport\" content=\"width=device-width\"><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"><title>" + strSubject + "</title><style></style></head><body style=\"font-family: \"Open Sans\",Arial,Helvetica,Sans-Serif!important;\"><table style=\"width: 100%;background-color: #ebebeb;\"><tbody><tr><td style=\"display: block !important;max-width: 600px !important;margin: 0 auto !important;clear: both !important;\"><div style=\"padding: 15px!important;max-width: 600px!important;margin: 0 auto;!importantdisplay: block!important;\"><table><tbody><tr><td align=\"left\" style=\"width: 35px;\"><img src=\"https://lm.mof.gov.mn/img/LM-icon.png\" height=\"30\" width=\"30\"></td><td align=\"left\"><h6 style=\"margin: 0 !important;font-weight: 900;font-size: 14px;text-transform: uppercase;color: #444;\">ЦАХИМ ХЯНАЛТ-ШИНЖИЛГЭЭ, ҮНЭЛГЭЭ</h6></td></tr></tbody></table></div></td></tr></tbody></table><table style=\"width: 100%;\"><tbody><tr><td style=\"display: block !important;max-width: 600px !important;margin: 0 auto !important;clear: both !important;background-color: #FFFFFF;\"><div style=\"padding: 15px;max-width: 600px;margin: 0 auto;display: block;\"><table><tbody><tr><td><h4>" + strSubject + "</h4><p>" + strBody + "</p><p style=\"padding: 15px;background-color: #ecf8ff;margin-bottom: 15px;\">" + strAhref + "</p><table width=\"100%\" style=\"background-color: #ebebeb;\"><tbody><tr><td><table align=\"left\" style=\"width: 300px;float: left;\"><tbody><tr><td><h5>Холбоо барих:</h5><p>Утас: <strong>51 264335</strong><br>Имэйл: <strong><a href=\"emailto:lmonitoring@mof.gov.mn\">lmonitoring@mof.gov.mn</a></strong></p></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></div></td></tr></tbody></table></body></html>";
                mail.IsBodyHtml = true;

                SmtpClient SmtpServer = new SmtpClient();
                SmtpServer.Host = "mail.mof.gov.mn";
                SmtpServer.Port = 25;
                SmtpServer.UseDefaultCredentials = false;
                SmtpServer.Credentials = new System.Net.NetworkCredential("lmonitoring@mof.gov.mn", "m0f@dmin2o14*");
                SmtpServer.EnableSsl = false;
                SmtpServer.Send(mail);
            }

            // sariin tuluvluguu
            if (Convert.ToInt32(DateTime.Today.ToString("MM")) == 12)
            {
                if (DateTime.Today.Day == 25)
                {
                    strSubject = (Convert.ToInt32(DateTime.Today.ToString("yyyy")) + 1).ToString() + " оны 1-р сарын хийх ажлын төлөвлөгөө оруулна уу.";
                    strBody = "Та бүхэн " + (Convert.ToInt32(DateTime.Today.ToString("yyyy")) + 1).ToString() + " оны 1-р сарын хийх ажлын төлөвлөгөөг 28-ны өдрийн 17:30 цагаас өмнө Цахим хяналт-шинжилгээ үнэлгээний системд дараах холбоосоор орж оруулна уу.";
                    strAhref = "Сарын төлөвлөгөө оруулах холбоос: <a href=\"https://lm.mof.gov.mn/#pg/planmnth.aspx\">lm.mof.gov.mn »</a>";
                    mail.From = new MailAddress("lmonitoring@mof.gov.mn");
                    mail.To.Add("all@mof.gov.mn");
                    mail.Subject = strSubject;
                    mail.Body += "<html xmlns=\"http://www.w3.org/1999/xhtml\"><head><meta name=\"viewport\" content=\"width=device-width\"><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"><title>" + strSubject + "</title><style></style></head><body style=\"font-family: \"Open Sans\",Arial,Helvetica,Sans-Serif!important;\"><table style=\"width: 100%;background-color: #ebebeb;\"><tbody><tr><td style=\"display: block !important;max-width: 600px !important;margin: 0 auto !important;clear: both !important;\"><div style=\"padding: 15px!important;max-width: 600px!important;margin: 0 auto;!importantdisplay: block!important;\"><table><tbody><tr><td align=\"left\" style=\"width: 35px;\"><img src=\"https://lm.mof.gov.mn/img/LM-icon.png\" height=\"30\" width=\"30\"></td><td align=\"left\"><h6 style=\"margin: 0 !important;font-weight: 900;font-size: 14px;text-transform: uppercase;color: #444;\">ЦАХИМ ХЯНАЛТ-ШИНЖИЛГЭЭ, ҮНЭЛГЭЭ</h6></td></tr></tbody></table></div></td></tr></tbody></table><table style=\"width: 100%;\"><tbody><tr><td style=\"display: block !important;max-width: 600px !important;margin: 0 auto !important;clear: both !important;background-color: #FFFFFF;\"><div style=\"padding: 15px;max-width: 600px;margin: 0 auto;display: block;\"><table><tbody><tr><td><h4>" + strSubject + "</h4><p>" + strBody + "</p><p style=\"padding: 15px;background-color: #ecf8ff;margin-bottom: 15px;\">" + strAhref + "</p><table width=\"100%\" style=\"background-color: #ebebeb;\"><tbody><tr><td><table align=\"left\" style=\"width: 300px;float: left;\"><tbody><tr><td><h5>Холбоо барих:</h5><p>Утас: <strong>51 264335</strong><br>Имэйл: <strong><a href=\"emailto:lmonitoring@mof.gov.mn\">lmonitoring@mof.gov.mn</a></strong></p></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></div></td></tr></tbody></table></body></html>";
                    mail.IsBodyHtml = true;

                    SmtpClient SmtpServer = new SmtpClient();
                    SmtpServer.Host = "mail.mof.gov.mn";
                    SmtpServer.Port = 25;
                    SmtpServer.UseDefaultCredentials = false;
                    SmtpServer.Credentials = new System.Net.NetworkCredential("lmonitoring@mof.gov.mn", "m0f@dmin2o14*");
                    SmtpServer.EnableSsl = false;
                    SmtpServer.Send(mail);

                }
            }
            else if (Convert.ToInt32(DateTime.Today.ToString("MM")) == 2)
            {
                if (DateTime.Today.Day == 22)
                {
                    strSubject = (Convert.ToInt32(DateTime.Today.ToString("MM")) + 1).ToString() + "-р сарын хийх ажлын төлөвлөгөө оруулна уу.";
                    strBody = "Та бүхэн " + (Convert.ToInt32(DateTime.Today.ToString("MM")) + 1).ToString() + "-р сарын хийх ажлын төлөвлөгөөг 25-ны өдрийн 17:30 цагаас өмнө Цахим хяналт-шинжилгээ үнэлгээний системд дараах холбоосоор орж оруулна уу.";
                    strAhref = "Сарын төлөвлөгөө оруулах холбоос: <a href=\"https://lm.mof.gov.mn/#pg/planmnth.aspx\">lm.mof.gov.mn »</a>";
                    mail.From = new MailAddress("lmonitoring@mof.gov.mn");
                    mail.To.Add("all@mof.gov.mn");
                    mail.Subject = strSubject;
                    mail.Body += "<html xmlns=\"http://www.w3.org/1999/xhtml\"><head><meta name=\"viewport\" content=\"width=device-width\"><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"><title>" + strSubject + "</title><style></style></head><body style=\"font-family: \"Open Sans\",Arial,Helvetica,Sans-Serif!important;\"><table style=\"width: 100%;background-color: #ebebeb;\"><tbody><tr><td style=\"display: block !important;max-width: 600px !important;margin: 0 auto !important;clear: both !important;\"><div style=\"padding: 15px!important;max-width: 600px!important;margin: 0 auto;!importantdisplay: block!important;\"><table><tbody><tr><td align=\"left\" style=\"width: 35px;\"><img src=\"https://lm.mof.gov.mn/img/LM-icon.png\" height=\"30\" width=\"30\"></td><td align=\"left\"><h6 style=\"margin: 0 !important;font-weight: 900;font-size: 14px;text-transform: uppercase;color: #444;\">ЦАХИМ ХЯНАЛТ-ШИНЖИЛГЭЭ, ҮНЭЛГЭЭ</h6></td></tr></tbody></table></div></td></tr></tbody></table><table style=\"width: 100%;\"><tbody><tr><td style=\"display: block !important;max-width: 600px !important;margin: 0 auto !important;clear: both !important;background-color: #FFFFFF;\"><div style=\"padding: 15px;max-width: 600px;margin: 0 auto;display: block;\"><table><tbody><tr><td><h4>" + strSubject + "</h4><p>" + strBody + "</p><p style=\"padding: 15px;background-color: #ecf8ff;margin-bottom: 15px;\">" + strAhref + "</p><table width=\"100%\" style=\"background-color: #ebebeb;\"><tbody><tr><td><table align=\"left\" style=\"width: 300px;float: left;\"><tbody><tr><td><h5>Холбоо барих:</h5><p>Утас: <strong>51 264335</strong><br>Имэйл: <strong><a href=\"emailto:lmonitoring@mof.gov.mn\">lmonitoring@mof.gov.mn</a></strong></p></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></div></td></tr></tbody></table></body></html>";
                    mail.IsBodyHtml = true;

                    SmtpClient SmtpServer = new SmtpClient();
                    SmtpServer.Host = "mail.mof.gov.mn";
                    SmtpServer.Port = 25;
                    SmtpServer.UseDefaultCredentials = false;
                    SmtpServer.Credentials = new System.Net.NetworkCredential("lmonitoring@mof.gov.mn", "m0f@dmin2o14*");
                    SmtpServer.EnableSsl = false;
                    SmtpServer.Send(mail);

                }
            }
            else {
                if (DateTime.Today.Day == 25)
                {
                    strSubject = (Convert.ToInt32(DateTime.Today.ToString("MM")) + 1).ToString() + "-р сарын хийх ажлын төлөвлөгөө оруулна уу.";
                    if (Convert.ToInt32(DateTime.Today.ToString("MM")) == 2) strBody = "Та бүхэн " + (Convert.ToInt32(DateTime.Today.ToString("MM")) + 1).ToString() + "-р сарын хийх ажлын төлөвлөгөөг 28-ны өдрийн 17:30 цагаас өмнө Цахим хяналт-шинжилгээ үнэлгээний системд дараах холбоосоор орж оруулна уу.";
                    strBody = "Та бүхэн " + (Convert.ToInt32(DateTime.Today.ToString("MM")) + 1).ToString() + "-р сарын хийх ажлын төлөвлөгөөг 25-ны өдрийн 17:30 цагаас өмнө Цахим хяналт-шинжилгээ үнэлгээний системд дараах холбоосоор орж оруулна уу.";
                    strAhref = "Сарын төлөвлөгөө оруулах холбоос: <a href=\"https://lm.mof.gov.mn/#pg/planmnth.aspx\">lm.mof.gov.mn »</a>";
                    mail.From = new MailAddress("lmonitoring@mof.gov.mn");
                    mail.To.Add("all@mof.gov.mn");
                    mail.Subject = strSubject;
                    mail.Body += "<html xmlns=\"http://www.w3.org/1999/xhtml\"><head><meta name=\"viewport\" content=\"width=device-width\"><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"><title>" + strSubject + "</title><style></style></head><body style=\"font-family: \"Open Sans\",Arial,Helvetica,Sans-Serif!important;\"><table style=\"width: 100%;background-color: #ebebeb;\"><tbody><tr><td style=\"display: block !important;max-width: 600px !important;margin: 0 auto !important;clear: both !important;\"><div style=\"padding: 15px!important;max-width: 600px!important;margin: 0 auto;!importantdisplay: block!important;\"><table><tbody><tr><td align=\"left\" style=\"width: 35px;\"><img src=\"https://lm.mof.gov.mn/img/LM-icon.png\" height=\"30\" width=\"30\"></td><td align=\"left\"><h6 style=\"margin: 0 !important;font-weight: 900;font-size: 14px;text-transform: uppercase;color: #444;\">ЦАХИМ ХЯНАЛТ-ШИНЖИЛГЭЭ, ҮНЭЛГЭЭ</h6></td></tr></tbody></table></div></td></tr></tbody></table><table style=\"width: 100%;\"><tbody><tr><td style=\"display: block !important;max-width: 600px !important;margin: 0 auto !important;clear: both !important;background-color: #FFFFFF;\"><div style=\"padding: 15px;max-width: 600px;margin: 0 auto;display: block;\"><table><tbody><tr><td><h4>" + strSubject + "</h4><p>" + strBody + "</p><p style=\"padding: 15px;background-color: #ecf8ff;margin-bottom: 15px;\">" + strAhref + "</p><table width=\"100%\" style=\"background-color: #ebebeb;\"><tbody><tr><td><table align=\"left\" style=\"width: 300px;float: left;\"><tbody><tr><td><h5>Холбоо барих:</h5><p>Утас: <strong>51 264335</strong><br>Имэйл: <strong><a href=\"emailto:lmonitoring@mof.gov.mn\">lmonitoring@mof.gov.mn</a></strong></p></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></div></td></tr></tbody></table></body></html>";
                    mail.IsBodyHtml = true;

                    SmtpClient SmtpServer = new SmtpClient();
                    SmtpServer.Host = "mail.mof.gov.mn";
                    SmtpServer.Port = 25;
                    SmtpServer.UseDefaultCredentials = false;
                    SmtpServer.Credentials = new System.Net.NetworkCredential("lmonitoring@mof.gov.mn", "m0f@dmin2o14*");
                    SmtpServer.EnableSsl = false;
                    SmtpServer.Send(mail);
                }
            }

            //сарын биелэлт
            if (DateTime.Today.Day == 1)
            {
                if(Convert.ToInt32(DateTime.Today.ToString("MM")) == 1) strSubject = (Convert.ToInt32(DateTime.Today.ToString("yyyy"))-1).ToString() +" оны 12-р сарын төлөвлөгөөний биелэлт оруулна уу.";
                else strSubject = DateTime.Today.ToString("yyyy") + " оны " + (Convert.ToInt32(DateTime.Today.ToString("MM")) - 1).ToString() + "-р сарын төлөвлөгөөний биелэлт оруулна уу.";
                strBody = "Та бүхэн " + DateTime.Today.ToString("yyyy") + " оны " + (Convert.ToInt32(DateTime.Today.ToString("MM")) - 1).ToString() + "-р сарын төлөвлөгдсөн ажлын биелэлтийг 03-ны өдрийн 17:30 цагаас өмнө Цахим хяналт-шинжилгээ үнэлгээний системд дараах холбоосоор орж оруулна уу.";
                strAhref = "Сарын тайлан оруулах холбоос: <a href=\"https://lm.mof.gov.mn/#pg/planmnth.aspx\">lm.mof.gov.mn »</a>";

                mail.From = new MailAddress("lmonitoring@mof.gov.mn");
                mail.To.Add("all@mof.gov.mn");
                mail.Subject = strSubject;
                mail.Body += "<html xmlns=\"http://www.w3.org/1999/xhtml\"><head><meta name=\"viewport\" content=\"width=device-width\"><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"><title>" + strSubject + "</title><style></style></head><body style=\"font-family: \"Open Sans\",Arial,Helvetica,Sans-Serif!important;\"><table style=\"width: 100%;background-color: #ebebeb;\"><tbody><tr><td style=\"display: block !important;max-width: 600px !important;margin: 0 auto !important;clear: both !important;\"><div style=\"padding: 15px!important;max-width: 600px!important;margin: 0 auto;!importantdisplay: block!important;\"><table><tbody><tr><td align=\"left\" style=\"width: 35px;\"><img src=\"https://lm.mof.gov.mn/img/LM-icon.png\" height=\"30\" width=\"30\"></td><td align=\"left\"><h6 style=\"margin: 0 !important;font-weight: 900;font-size: 14px;text-transform: uppercase;color: #444;\">ЦАХИМ ХЯНАЛТ-ШИНЖИЛГЭЭ, ҮНЭЛГЭЭ</h6></td></tr></tbody></table></div></td></tr></tbody></table><table style=\"width: 100%;\"><tbody><tr><td style=\"display: block !important;max-width: 600px !important;margin: 0 auto !important;clear: both !important;background-color: #FFFFFF;\"><div style=\"padding: 15px;max-width: 600px;margin: 0 auto;display: block;\"><table><tbody><tr><td><h4>" + strSubject + "</h4><p>" + strBody + "</p><p style=\"padding: 15px;background-color: #ecf8ff;margin-bottom: 15px;\">" + strAhref + "</p><table width=\"100%\" style=\"background-color: #ebebeb;\"><tbody><tr><td><table align=\"left\" style=\"width: 300px;float: left;\"><tbody><tr><td><h5>Холбоо барих:</h5><p>Утас: <strong>51 264335</strong><br>Имэйл: <strong><a href=\"emailto:lmonitoring@mof.gov.mn\">lmonitoring@mof.gov.mn</a></strong></p></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></div></td></tr></tbody></table></body></html>";
                mail.IsBodyHtml = true;

                SmtpClient SmtpServer = new SmtpClient();
                SmtpServer.Host = "mail.mof.gov.mn";
                SmtpServer.Port = 25;
                SmtpServer.UseDefaultCredentials = false;
                SmtpServer.Credentials = new System.Net.NetworkCredential("lmonitoring@mof.gov.mn", "m0f@dmin2o14*");
                SmtpServer.EnableSsl = false;
                SmtpServer.Send(mail);
            }

            //жилийн төлөвлөгөө
            if (DateTime.Today.ToString("MM-dd") == "12-15") {
                strSubject = (Convert.ToInt32(DateTime.Today.ToString("yyyy"))+1).ToString() + " оны хийх ажлын төлөвлөгөө оруулна уу.";
                strBody = "Та бүхэн " + (Convert.ToInt32(DateTime.Today.ToString("yyyy")) + 1).ToString() + " оны хийх ажлын төлөвлөгөөг "+ DateTime.Today.ToString("yyyy") + " оны 12-р сарын 25-ны өдрийн 17:30 цагаас өмнө Цахим хяналт-шинжилгээ үнэлгээний системд дараах холбоосоор орж оруулна уу.";
                strAhref = "Жилийн төлөвлөгөө оруулах холбоос: <a href=\"https://lm.mof.gov.mn/#pg/planyr.aspx\">lm.mof.gov.mn »</a>";

                mail.From = new MailAddress("lmonitoring@mof.gov.mn");
                mail.To.Add("all@mof.gov.mn");
                mail.Subject = strSubject;
                mail.Body += "<html xmlns=\"http://www.w3.org/1999/xhtml\"><head><meta name=\"viewport\" content=\"width=device-width\"><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"><title>" + strSubject + "</title><style></style></head><body style=\"font-family: \"Open Sans\",Arial,Helvetica,Sans-Serif!important;\"><table style=\"width: 100%;background-color: #ebebeb;\"><tbody><tr><td style=\"display: block !important;max-width: 600px !important;margin: 0 auto !important;clear: both !important;\"><div style=\"padding: 15px!important;max-width: 600px!important;margin: 0 auto;!importantdisplay: block!important;\"><table><tbody><tr><td align=\"left\" style=\"width: 35px;\"><img src=\"https://lm.mof.gov.mn/img/LM-icon.png\" height=\"30\" width=\"30\"></td><td align=\"left\"><h6 style=\"margin: 0 !important;font-weight: 900;font-size: 14px;text-transform: uppercase;color: #444;\">ЦАХИМ ХЯНАЛТ-ШИНЖИЛГЭЭ, ҮНЭЛГЭЭ</h6></td></tr></tbody></table></div></td></tr></tbody></table><table style=\"width: 100%;\"><tbody><tr><td style=\"display: block !important;max-width: 600px !important;margin: 0 auto !important;clear: both !important;background-color: #FFFFFF;\"><div style=\"padding: 15px;max-width: 600px;margin: 0 auto;display: block;\"><table><tbody><tr><td><h4>" + strSubject + "</h4><p>" + strBody + "</p><p style=\"padding: 15px;background-color: #ecf8ff;margin-bottom: 15px;\">" + strAhref + "</p><table width=\"100%\" style=\"background-color: #ebebeb;\"><tbody><tr><td><table align=\"left\" style=\"width: 300px;float: left;\"><tbody><tr><td><h5>Холбоо барих:</h5><p>Утас: <strong>51 264335</strong><br>Имэйл: <strong><a href=\"emailto:lmonitoring@mof.gov.mn\">lmonitoring@mof.gov.mn</a></strong></p></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></div></td></tr></tbody></table></body></html>";
                mail.IsBodyHtml = true;

                SmtpClient SmtpServer = new SmtpClient();
                SmtpServer.Host = "mail.mof.gov.mn";
                SmtpServer.Port = 25;
                SmtpServer.UseDefaultCredentials = false;
                SmtpServer.Credentials = new System.Net.NetworkCredential("lmonitoring@mof.gov.mn", "m0f@dmin2o14*");
                SmtpServer.EnableSsl = false;
                SmtpServer.Send(mail);
            }

            //jiliin bielelt
            if (DateTime.Today.ToString("MM-dd") == "12-20")
            {
                strSubject = (Convert.ToInt32(DateTime.Today.ToString("yyyy")) + 1).ToString() + " оны төлөвлөгөөний биелэлт оруулна уу.";
                strBody = "Та бүхэн " + DateTime.Today.ToString("yyyy") + " оны төлөвлөгдсөн ажлын биелэлтийг "+ DateTime.Today.ToString("yyyy") + " 12-р сарын 20-ны өдрийн 17:30 цагаас өмнө Цахим хяналт-шинжилгээ үнэлгээний системд дараах холбоосоор орж оруулна уу.";
                strAhref = "Жилийн тайлан оруулах холбоос: <a href=\"https://lm.mof.gov.mn/#pg/planyr.aspx\">lm.mof.gov.mn »</a>";

                mail.From = new MailAddress("lmonitoring@mof.gov.mn");
                mail.To.Add("all@mof.gov.mn");
                mail.Subject = strSubject;
                mail.Body += "<html xmlns=\"http://www.w3.org/1999/xhtml\"><head><meta name=\"viewport\" content=\"width=device-width\"><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"><title>" + strSubject + "</title><style></style></head><body style=\"font-family: \"Open Sans\",Arial,Helvetica,Sans-Serif!important;\"><table style=\"width: 100%;background-color: #ebebeb;\"><tbody><tr><td style=\"display: block !important;max-width: 600px !important;margin: 0 auto !important;clear: both !important;\"><div style=\"padding: 15px!important;max-width: 600px!important;margin: 0 auto;!importantdisplay: block!important;\"><table><tbody><tr><td align=\"left\" style=\"width: 35px;\"><img src=\"https://lm.mof.gov.mn/img/LM-icon.png\" height=\"30\" width=\"30\"></td><td align=\"left\"><h6 style=\"margin: 0 !important;font-weight: 900;font-size: 14px;text-transform: uppercase;color: #444;\">ЦАХИМ ХЯНАЛТ-ШИНЖИЛГЭЭ, ҮНЭЛГЭЭ</h6></td></tr></tbody></table></div></td></tr></tbody></table><table style=\"width: 100%;\"><tbody><tr><td style=\"display: block !important;max-width: 600px !important;margin: 0 auto !important;clear: both !important;background-color: #FFFFFF;\"><div style=\"padding: 15px;max-width: 600px;margin: 0 auto;display: block;\"><table><tbody><tr><td><h4>" + strSubject + "</h4><p>" + strBody + "</p><p style=\"padding: 15px;background-color: #ecf8ff;margin-bottom: 15px;\">" + strAhref + "</p><table width=\"100%\" style=\"background-color: #ebebeb;\"><tbody><tr><td><table align=\"left\" style=\"width: 300px;float: left;\"><tbody><tr><td><h5>Холбоо барих:</h5><p>Утас: <strong>51 264335</strong><br>Имэйл: <strong><a href=\"emailto:lmonitoring@mof.gov.mn\">lmonitoring@mof.gov.mn</a></strong></p></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></div></td></tr></tbody></table></body></html>";
                mail.IsBodyHtml = true;

                SmtpClient SmtpServer = new SmtpClient();
                SmtpServer.Host = "mail.mof.gov.mn";
                SmtpServer.Port = 25;
                SmtpServer.UseDefaultCredentials = false;
                SmtpServer.Credentials = new System.Net.NetworkCredential("lmonitoring@mof.gov.mn", "m0f@dmin2o14*");
                SmtpServer.EnableSsl = false;
                SmtpServer.Send(mail);
            }

            // YAMNII IRTSIIN DUNDAJ
            if (con.State == ConnectionState.Closed) con.Open();
            cmd = new OracleCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "DELETE FROM TBL_QRYRESULTDATAS WHERE KEYVAL IN ('IRTSAVGCOMETM', 'IRTSAVGGOTM', 'IRTSAVGWORKEDTM') AND YR=" + DateTime.Today.ToString("yyyy") + " AND MNTH=" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString();
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

            cmd = new OracleCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = @"INSERT INTO TBL_QRYRESULTDATAS (KEYVAL, YR, MNTH, VAL)
SELECT TP, " + DateTime.Today.ToString("yyyy") + @" as YR, " + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @" as MNTH, TM
FROM (
  SELECT * FROM (
    SELECT 
      TO_CHAR(TRUNC(COMETM/3600),'FM9900') || ':' ||TO_CHAR(TRUNC(MOD(COMETM,3600)/60),'FM00') || ':' ||TO_CHAR(MOD(COMETM,60),'FM00') as IRTSAVGCOMETM
      , TO_CHAR(TRUNC(MAXTM/3600),'FM9900') || ':' ||TO_CHAR(TRUNC(MOD(MAXTM,3600)/60),'FM00') || ':' ||TO_CHAR(MOD(MAXTM,60),'FM00') as IRTSAVGGOTM
      , TO_CHAR(TRUNC((MAXTM-COMETM)/3600),'FM9900') || ':' ||TO_CHAR(TRUNC(MOD((MAXTM-COMETM),3600)/60),'FM00') || ':' ||TO_CHAR(MOD((MAXTM-COMETM),60),'FM00') as IRTSAVGWORKEDTM
    FROM (
      SELECT AVG(TO_NUMBER(TO_CHAR(TO_DATE(a.MINTM,'HH24:MI:SS'),'SSSSS'))) as COMETM, AVG(TO_NUMBER(TO_CHAR(TO_DATE(a.MAXTM,'HH24:MI:SS'),'SSSSS'))) as MAXTM
      FROM (
        SELECT ST_ID, GAZAR_ID, HELTES_ID, TP, DT, MINTM, MAXTM, ISWORK
        FROM( 
          SELECT a.ST_ID, a.GAZAR_ID, a.HELTES_ID, a.TP, a.DT, a.MINTM, a.MAXTM, CASE WHEN b.DT is null THEN a.ISWORK ELSE 0 END as ISWORK
          FROM( 
            SELECT a.ST_ID, a.GAZAR_ID, a.HELTES_ID, NVL(b.TP, 0) as TP, a.DT, a.MINTM, a.MAXTM, a.ISWORK
            FROM( 
              SELECT a.ST_ID, a.GAZAR_ID, a.HELTES_ID, a.DT, NVL(b.TP, 0) as TP, NVL(b.MINTM, '00:00:00') as MINTM, NVL(b.MAXTM, '00:00:00') as MAXTM, a.ISWORK
              FROM(
                SELECT a.STAFFS_ID as ST_ID, a.GAZAR_ID, a.HELTES_ID, a.DT, CASE WHEN b.DT IS NULL THEN a.ISWORK ELSE 1 END as ISWORK
                FROM(              
                  SELECT a.ID, b.STAFFS_ID, c.FATHER_ID as GAZAR_ID, c.ID as HELTES_ID, a.DT, CASE WHEN(MOD(TO_CHAR(a.DT, 'J'), 7) + 1) = 6 OR(MOD(TO_CHAR(a.DT, 'J'), 7) + 1) = 7 THEN 0 ELSE 1 END as ISWORK
                  FROM (              
                    SELECT a.ID, a.BEGINDT, a.ENDDT, b.DT
                    FROM(                
                      SELECT a.ID, 
                          CASE 
                            WHEN TO_DATE(a.DT,'YYYY-MM-DD')>TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01','YYYY-MM-DD') 
                            THEN a.DT 
                            ELSE '" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01' 
                          END as BEGINDT, 
                          CASE 
                            WHEN TO_DATE(CASE WHEN c.ACTIVE=0 THEN TO_CHAR((TO_DATE(NVL(a.ENDDT,a.DT),'YYYY-MM-DD')-1),'YYYY-MM-DD') ELSE NVL(TO_CHAR((TO_DATE(a.ENDDT,'YYYY-MM-DD')-1),'YYYY-MM-DD'), TO_CHAR(SYSDATE,'YYYY-MM-DD')) END,'YYYY-MM-DD')<LAST_DAY(TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01','YYYY-MM-DD')) 
                            THEN CASE WHEN c.ACTIVE=0 THEN TO_CHAR((TO_DATE(NVL(a.ENDDT,a.DT),'YYYY-MM-DD')-1),'YYYY-MM-DD') ELSE NVL(TO_CHAR((TO_DATE(a.ENDDT,'YYYY-MM-DD')-1),'YYYY-MM-DD'), TO_CHAR(SYSDATE,'YYYY-MM-DD')) END ELSE TO_CHAR(LAST_DAY(TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01','YYYY-MM-DD')),'YYYY-MM-DD') END as ENDDT
                        FROM hrdbuser.ST_STBR a
                        INNER JOIN hrdbuser.ST_BRANCH b ON a.BRANCH_ID=b.ID AND b.ISACTIVE=1
                        INNER JOIN hrdbuser.STN_MOVE c ON a.MOVE_ID=c.ID
                        WHERE a.POS_ID!=2020102 AND c.ACTIVE=1
                        AND ((
                            TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01','YYYY-MM-DD') 
                            BETWEEN TO_DATE(a.DT,'YYYY-MM-DD') AND TO_DATE(CASE WHEN c.ACTIVE=0 THEN NVL(a.ENDDT,a.DT) ELSE NVL(a.ENDDT, TO_CHAR(SYSDATE,'YYYY-MM-DD')) END,'YYYY-MM-DD')
                            OR 
                            LAST_DAY(TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01','YYYY-MM-DD')) 
                            BETWEEN TO_DATE(a.DT,'YYYY-MM-DD') AND TO_DATE(CASE WHEN c.ACTIVE=0 THEN NVL(a.ENDDT,a.DT) ELSE NVL(a.ENDDT, TO_CHAR(SYSDATE,'YYYY-MM-DD')) END,'YYYY-MM-DD')
                          ) OR 
                            (
                              TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01','YYYY-MM-DD')<TO_DATE(a.DT,'YYYY-MM-DD') AND LAST_DAY(TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01','YYYY-MM-DD'))>TO_DATE(a.DT,'YYYY-MM-DD')
                            ))                        
                    ) a, (
                      SELECT DT
                      FROM(
                        SELECT(TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
                        FROM DUAL
                        CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'yyyy-mm-dd')
                      )
                      WHERE DT BETWEEN TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'yyyy-mm-dd') AND SYSDATE AND MOD(TO_CHAR(DT, 'J'), 7) + 1 IN(1, 2, 3, 4, 5, 6, 7)
                    ) b                
                  ) a
                  INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.ID
                  INNER JOIN hrdbuser.ST_BRANCH c ON b.BRANCH_ID=c.ID AND c.ISACTIVE=1
                  WHERE a.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD') AND b.POS_ID!=2020102 
                ) a
                LEFT JOIN(
                  SELECT TO_DATE(HOLDATE, 'YYYY-MM-DD') as DT FROM hrdbuser.ST_HOLIDAYISWORK WHERE TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE, 'YYYY-MM-DD'), 'YYYY')) = " + DateTime.Today.ToString("yyyy") + @" AND TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE, 'YYYY-MM-DD'), 'MM')) IN(1,2,3,4,5,6,7,8,9,10,11,12)
                ) b ON a.DT = b.DT
              ) a
              LEFT JOIN(
                SELECT a.MONTH, a.INOUT as TP, b.ID as ST_ID, TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY, 'yyyy-mm-dd') as DT, TO_CHAR(MIN(TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY || ' ' || a.HOUR || ':' || a.MINUTE || ':' || a.SECOND, 'yyyy-mm-dd hh24:mi:ss')), 'hh24:mi:ss') as MINTM, TO_CHAR(MAX(TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY || ' ' || a.HOUR || ':' || a.MINUTE || ':' || a.SECOND, 'yyyy-mm-dd hh24:mi:ss')), 'hh24:mi:ss') as MAXTM
                FROM STN_TRCDLOG a
                INNER JOIN hrdbuser.ST_STAFFS b ON a.ENO = b.FINGERID
                INNER JOIN hrdbuser.ST_STBR c ON b.ID = c.STAFFS_ID AND c.ISACTIVE = 1
                INNER JOIN hrdbuser.STN_MOVE d ON c.MOVE_ID = d.ID AND d.ACTIVE = 1
                INNER JOIN hrdbuser.ST_BRANCH f ON c.BRANCH_ID = f.ID AND f.ISACTIVE = 1
                WHERE a.INOUT = 0 AND a.YEAR = " + DateTime.Today.ToString("yyyy") + @" AND a.MONTH IN(1,2,3,4,5,6,7,8,9,10,11,12) AND TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY, 'yyyy-mm-dd') BETWEEN TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'yyyy-mm-dd') AND SYSDATE AND MOD(TO_CHAR(TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY, 'yyyy-mm-dd'), 'J'), 7) + 1 IN(1, 2, 3, 4, 5, 6, 7)
                GROUP BY a.MONTH, a.INOUT, b.ID, TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY, 'yyyy-mm-dd')
              ) b ON a.ST_ID = b.ST_ID AND a.DT = b.DT
            ) a
            LEFT JOIN(
              SELECT DT, STAFFS_ID, MAX(TP) as TP
              FROM(
                SELECT b.DT, a.STAFFS_ID, 11 as TP
                FROM hrdbuser.ST_CHULUUDAYF3 a,
                (
                  SELECT TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD') + (ROWNUM - 1) DT
                  FROM DUAL
                  CONNECT BY LEVEL <= ADD_MONTHS(TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD'), 1) - TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD')
                ) b
                WHERE
                  b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD')
                UNION ALL
                SELECT b.DT, a.STAFFS_ID, 12 as TP
                FROM hrdbuser.ST_CHULUUDAYT2 a,
                (
                  SELECT TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD') + (ROWNUM - 1) DT
                  FROM DUAL
                  CONNECT BY LEVEL <= ADD_MONTHS(TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD'), 1) - TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD')
                ) b
                WHERE
                  a.ISRECEIVED = 1 AND
                  b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD')
                UNION ALL
                SELECT b.DT, a.STAFFS_ID, 13 as TP
                FROM hrdbuser.ST_CHULUUSICK a,
                (
                  SELECT TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD') + (ROWNUM - 1) DT
                  FROM DUAL
                  CONNECT BY LEVEL <= ADD_MONTHS(TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD'), 1) - TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD')
                ) b
                WHERE
                  b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD')
                UNION ALL
                SELECT b.DT, a.STAFFS_ID, 21 as TP
                FROM hrdbuser.ST_AMRALT a,
                (
                  SELECT TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD') + (ROWNUM - 1) DT
                  FROM DUAL
                  CONNECT BY LEVEL <= ADD_MONTHS(TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD'), 1) - TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD')
                ) b
                WHERE
                  a.TZISRECEIVED = 1 AND
                  b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD')
                UNION ALL
                SELECT b.DT, a.STAFFS_ID, 31 as TP
                FROM hrdbuser.ST_TOMILOLT_STAFFS a
                INNER JOIN hrdbuser.ST_TOMILOLT c ON a.TOMILOLT_ID = c.ID,
                (
                  SELECT TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD') + (ROWNUM - 1) DT
                  FROM DUAL
                  CONNECT BY LEVEL <= ADD_MONTHS(TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD'), 1) - TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD')
                ) b
                WHERE
                  b.DT BETWEEN TO_DATE(c.FROMDATE, 'YYYY-MM-DD') AND TO_DATE(c.TODATE, 'YYYY-MM-DD')
              )
              GROUP BY DT, STAFFS_ID
            ) b ON a.DT = b.DT AND a.ST_ID = b.STAFFS_ID
          ) a
          LEFT JOIN(
            SELECT TO_DATE('" + DateTime.Today.ToString("yyyy") + @"-' || HOLMONTH || '-' || HOLDAY, 'YYYY-MM-DD') as DT
            FROM hrdbuser.ST_HOLIDAYOFFICIAL
            WHERE HOLMONTH IN(1,2,3,4,5,6,7,8,9,10,11,12)
            UNION ALL
            SELECT TO_DATE(HOLDATE, 'YYYY-MM-DD') as DT
            FROM hrdbuser.ST_HOLIDAYUNOFFICIAL
            WHERE TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE, 'YYYY-MM-DD'), 'YYYY')) = " + DateTime.Today.ToString("yyyy") + @" AND TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE, 'YYYY-MM-DD'), 'MM')) IN(1,2,3,4,5,6,7,8,9,10,11,12)
          ) b ON a.DT = b.DT
        )
      ) a
      WHERE a.ISWORK=1 AND a.TP=0 AND a.MINTM != '00:00:00' AND a.MAXTM != '00:00:00'
    )
  )
  UNPIVOT INCLUDE NULLS
      (TM FOR TP IN (IRTSAVGCOMETM, IRTSAVGGOTM, IRTSAVGWORKEDTM))
)";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

            // GAZRIIN IRTSIIN DUNDAJ
            cmd = new OracleCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "DELETE FROM TBL_QRYRESULTDATAS WHERE KEYVAL IN ('IRTSAVGCOMETM_GAZAR', 'IRTSAVGGOTM_GAZAR', 'IRTSAVGWORKEDTM_GAZAR') AND YR=" + DateTime.Today.ToString("yyyy") + " AND MNTH=" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString();
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

            cmd = new OracleCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = @"INSERT INTO TBL_QRYRESULTDATAS (KEYVAL, YR, MNTH, TP, VAL)
SELECT TP, " + DateTime.Today.ToString("yyyy") + @" as YR, " + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @" as MNTH, GAZAR_ID, TM
FROM (
  SELECT * FROM (
    SELECT 
      GAZAR_ID
      , TO_CHAR(TRUNC(COMETM/3600),'FM9900') || ':' ||TO_CHAR(TRUNC(MOD(COMETM,3600)/60),'FM00') || ':' ||TO_CHAR(MOD(COMETM,60),'FM00') as IRTSAVGCOMETM_GAZAR
      , TO_CHAR(TRUNC(MAXTM/3600),'FM9900') || ':' ||TO_CHAR(TRUNC(MOD(MAXTM,3600)/60),'FM00') || ':' ||TO_CHAR(MOD(MAXTM,60),'FM00') as IRTSAVGGOTM_GAZAR
      , TO_CHAR(TRUNC((MAXTM-COMETM)/3600),'FM9900') || ':' ||TO_CHAR(TRUNC(MOD((MAXTM-COMETM),3600)/60),'FM00') || ':' ||TO_CHAR(MOD((MAXTM-COMETM),60),'FM00') as IRTSAVGWORKEDTM_GAZAR
    FROM (
      SELECT a.GAZAR_ID, AVG(TO_NUMBER(TO_CHAR(TO_DATE(a.MINTM,'HH24:MI:SS'),'SSSSS'))) as COMETM, AVG(TO_NUMBER(TO_CHAR(TO_DATE(a.MAXTM,'HH24:MI:SS'),'SSSSS'))) as MAXTM
      FROM (
        SELECT ST_ID, GAZAR_ID, HELTES_ID, TP, DT, MINTM, MAXTM, ISWORK
        FROM( 
          SELECT a.ST_ID, a.GAZAR_ID, a.HELTES_ID, a.TP, a.DT, a.MINTM, a.MAXTM, CASE WHEN b.DT is null THEN a.ISWORK ELSE 0 END as ISWORK
          FROM( 
            SELECT a.ST_ID, a.GAZAR_ID, a.HELTES_ID, NVL(b.TP, 0) as TP, a.DT, a.MINTM, a.MAXTM, a.ISWORK
            FROM( 
              SELECT a.ST_ID, a.GAZAR_ID, a.HELTES_ID, a.DT, NVL(b.TP, 0) as TP, NVL(b.MINTM, '00:00:00') as MINTM, NVL(b.MAXTM, '00:00:00') as MAXTM, a.ISWORK
              FROM(
                SELECT a.STAFFS_ID as ST_ID, a.GAZAR_ID, a.HELTES_ID, a.DT, CASE WHEN b.DT IS NULL THEN a.ISWORK ELSE 1 END as ISWORK
                FROM(              
                  SELECT a.ID, b.STAFFS_ID, c.FATHER_ID as GAZAR_ID, c.ID as HELTES_ID, a.DT, CASE WHEN(MOD(TO_CHAR(a.DT, 'J'), 7) + 1) = 6 OR(MOD(TO_CHAR(a.DT, 'J'), 7) + 1) = 7 THEN 0 ELSE 1 END as ISWORK
                  FROM (              
                    SELECT a.ID, a.BEGINDT, a.ENDDT, b.DT
                    FROM(                
                      SELECT a.ID, 
                          CASE 
                            WHEN TO_DATE(a.DT,'YYYY-MM-DD')>TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01','YYYY-MM-DD') 
                            THEN a.DT 
                            ELSE '" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01' 
                          END as BEGINDT, 
                          CASE 
                            WHEN TO_DATE(CASE WHEN c.ACTIVE=0 THEN TO_CHAR((TO_DATE(NVL(a.ENDDT,a.DT),'YYYY-MM-DD')-1),'YYYY-MM-DD') ELSE NVL(TO_CHAR((TO_DATE(a.ENDDT,'YYYY-MM-DD')-1),'YYYY-MM-DD'), TO_CHAR(SYSDATE,'YYYY-MM-DD')) END,'YYYY-MM-DD')<LAST_DAY(TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01','YYYY-MM-DD')) 
                            THEN CASE WHEN c.ACTIVE=0 THEN TO_CHAR((TO_DATE(NVL(a.ENDDT,a.DT),'YYYY-MM-DD')-1),'YYYY-MM-DD') ELSE NVL(TO_CHAR((TO_DATE(a.ENDDT,'YYYY-MM-DD')-1),'YYYY-MM-DD'), TO_CHAR(SYSDATE,'YYYY-MM-DD')) END ELSE TO_CHAR(LAST_DAY(TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01','YYYY-MM-DD')),'YYYY-MM-DD') END as ENDDT
                        FROM hrdbuser.ST_STBR a
                        INNER JOIN hrdbuser.ST_BRANCH b ON a.BRANCH_ID=b.ID AND b.ISACTIVE=1
                        INNER JOIN hrdbuser.STN_MOVE c ON a.MOVE_ID=c.ID
                        WHERE a.POS_ID!=2020102 AND c.ACTIVE=1
                        AND ((
                            TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01','YYYY-MM-DD') 
                            BETWEEN TO_DATE(a.DT,'YYYY-MM-DD') AND TO_DATE(CASE WHEN c.ACTIVE=0 THEN NVL(a.ENDDT,a.DT) ELSE NVL(a.ENDDT, TO_CHAR(SYSDATE,'YYYY-MM-DD')) END,'YYYY-MM-DD')
                            OR 
                            LAST_DAY(TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01','YYYY-MM-DD')) 
                            BETWEEN TO_DATE(a.DT,'YYYY-MM-DD') AND TO_DATE(CASE WHEN c.ACTIVE=0 THEN NVL(a.ENDDT,a.DT) ELSE NVL(a.ENDDT, TO_CHAR(SYSDATE,'YYYY-MM-DD')) END,'YYYY-MM-DD')
                          ) OR 
                            (
                              TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01','YYYY-MM-DD')<TO_DATE(a.DT,'YYYY-MM-DD') AND LAST_DAY(TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01','YYYY-MM-DD'))>TO_DATE(a.DT,'YYYY-MM-DD')
                            ))                        
                    ) a, (
                      SELECT DT
                      FROM(
                        SELECT(TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'yyyy-mm-dd') - 1) + ROWNUM DT
                        FROM DUAL
                        CONNECT BY LEVEL <= (LAST_DAY(TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'yyyy-mm-dd')) + 1) - TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'yyyy-mm-dd')
                      )
                      WHERE DT BETWEEN TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'yyyy-mm-dd') AND SYSDATE AND MOD(TO_CHAR(DT, 'J'), 7) + 1 IN(1, 2, 3, 4, 5, 6, 7)
                    ) b                
                  ) a
                  INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.ID
                  INNER JOIN hrdbuser.ST_BRANCH c ON b.BRANCH_ID=c.ID AND c.ISACTIVE=1
                  WHERE a.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD') AND b.POS_ID!=2020102 
                ) a
                LEFT JOIN(
                  SELECT TO_DATE(HOLDATE, 'YYYY-MM-DD') as DT FROM hrdbuser.ST_HOLIDAYISWORK WHERE TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE, 'YYYY-MM-DD'), 'YYYY')) = " + DateTime.Today.ToString("yyyy") + @" AND TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE, 'YYYY-MM-DD'), 'MM')) IN(1,2,3,4,5,6,7,8,9,10,11,12)
                ) b ON a.DT = b.DT
              ) a
              LEFT JOIN(
                SELECT a.MONTH, a.INOUT as TP, b.ID as ST_ID, TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY, 'yyyy-mm-dd') as DT, TO_CHAR(MIN(TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY || ' ' || a.HOUR || ':' || a.MINUTE || ':' || a.SECOND, 'yyyy-mm-dd hh24:mi:ss')), 'hh24:mi:ss') as MINTM, TO_CHAR(MAX(TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY || ' ' || a.HOUR || ':' || a.MINUTE || ':' || a.SECOND, 'yyyy-mm-dd hh24:mi:ss')), 'hh24:mi:ss') as MAXTM
                FROM STN_TRCDLOG a
                INNER JOIN hrdbuser.ST_STAFFS b ON a.ENO = b.FINGERID
                INNER JOIN hrdbuser.ST_STBR c ON b.ID = c.STAFFS_ID AND c.ISACTIVE = 1
                INNER JOIN hrdbuser.STN_MOVE d ON c.MOVE_ID = d.ID AND d.ACTIVE = 1
                INNER JOIN hrdbuser.ST_BRANCH f ON c.BRANCH_ID = f.ID AND f.ISACTIVE = 1
                WHERE a.INOUT = 0 AND a.YEAR = " + DateTime.Today.ToString("yyyy") + @" AND a.MONTH IN(1,2,3,4,5,6,7,8,9,10,11,12) AND TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY, 'yyyy-mm-dd') BETWEEN TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'yyyy-mm-dd') AND SYSDATE AND MOD(TO_CHAR(TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY, 'yyyy-mm-dd'), 'J'), 7) + 1 IN(1, 2, 3, 4, 5, 6, 7)
                GROUP BY a.MONTH, a.INOUT, b.ID, TO_DATE(a.YEAR || '-' || a.MONTH || '-' || a.DAY, 'yyyy-mm-dd')
              ) b ON a.ST_ID = b.ST_ID AND a.DT = b.DT
            ) a
            LEFT JOIN(
              SELECT DT, STAFFS_ID, MAX(TP) as TP
              FROM(
                SELECT b.DT, a.STAFFS_ID, 11 as TP
                FROM hrdbuser.ST_CHULUUDAYF3 a,
                (
                  SELECT TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD') + (ROWNUM - 1) DT
                  FROM DUAL
                  CONNECT BY LEVEL <= ADD_MONTHS(TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD'), 1) - TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD')
                ) b
                WHERE
                  b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD')
                UNION ALL
                SELECT b.DT, a.STAFFS_ID, 12 as TP
                FROM hrdbuser.ST_CHULUUDAYT2 a,
                (
                  SELECT TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD') + (ROWNUM - 1) DT
                  FROM DUAL
                  CONNECT BY LEVEL <= ADD_MONTHS(TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD'), 1) - TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD')
                ) b
                WHERE
                  a.ISRECEIVED = 1 AND
                  b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD')
                UNION ALL
                SELECT b.DT, a.STAFFS_ID, 13 as TP
                FROM hrdbuser.ST_CHULUUSICK a,
                (
                  SELECT TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD') + (ROWNUM - 1) DT
                  FROM DUAL
                  CONNECT BY LEVEL <= ADD_MONTHS(TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD'), 1) - TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD')
                ) b
                WHERE
                  b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD')
                UNION ALL
                SELECT b.DT, a.STAFFS_ID, 21 as TP
                FROM hrdbuser.ST_AMRALT a,
                (
                  SELECT TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD') + (ROWNUM - 1) DT
                  FROM DUAL
                  CONNECT BY LEVEL <= ADD_MONTHS(TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD'), 1) - TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD')
                ) b
                WHERE
                  a.TZISRECEIVED = 1 AND
                  b.DT BETWEEN TO_DATE(a.BEGINDT, 'YYYY-MM-DD') AND TO_DATE(a.ENDDT, 'YYYY-MM-DD')
                UNION ALL
                SELECT b.DT, a.STAFFS_ID, 31 as TP
                FROM hrdbuser.ST_TOMILOLT_STAFFS a
                INNER JOIN hrdbuser.ST_TOMILOLT c ON a.TOMILOLT_ID = c.ID,
                (
                  SELECT TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD') + (ROWNUM - 1) DT
                  FROM DUAL
                  CONNECT BY LEVEL <= ADD_MONTHS(TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD'), 1) - TO_DATE('" + DateTime.Today.ToString("yyyy") + "-" + Convert.ToInt32(DateTime.Today.ToString("MM")).ToString() + @"-01', 'YYYY-MM-DD')
                ) b
                WHERE
                  b.DT BETWEEN TO_DATE(c.FROMDATE, 'YYYY-MM-DD') AND TO_DATE(c.TODATE, 'YYYY-MM-DD')
              )
              GROUP BY DT, STAFFS_ID
            ) b ON a.DT = b.DT AND a.ST_ID = b.STAFFS_ID
          ) a
          LEFT JOIN(
            SELECT TO_DATE('" + DateTime.Today.ToString("yyyy") + @"-' || HOLMONTH || '-' || HOLDAY, 'YYYY-MM-DD') as DT
            FROM hrdbuser.ST_HOLIDAYOFFICIAL
            WHERE HOLMONTH IN(1,2,3,4,5,6,7,8,9,10,11,12)
            UNION ALL
            SELECT TO_DATE(HOLDATE, 'YYYY-MM-DD') as DT
            FROM hrdbuser.ST_HOLIDAYUNOFFICIAL
            WHERE TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE, 'YYYY-MM-DD'), 'YYYY')) = " + DateTime.Today.ToString("yyyy") + @" AND TO_NUMBER(TO_CHAR(TO_DATE(HOLDATE, 'YYYY-MM-DD'), 'MM')) IN(1,2,3,4,5,6,7,8,9,10,11,12)
          ) b ON a.DT = b.DT
        )
      ) a
      WHERE a.ISWORK=1 AND a.TP=0 AND a.MINTM != '00:00:00' AND a.MAXTM != '00:00:00'
      GROUP BY a.GAZAR_ID
    )
  )
  UNPIVOT INCLUDE NULLS
      (TM FOR TP IN (IRTSAVGCOMETM_GAZAR, IRTSAVGGOTM_GAZAR, IRTSAVGWORKEDTM_GAZAR))
)";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();



            //CURRENCY
            cmd = new OracleCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "DELETE FROM TBL_QRYRESULTDATAS WHERE KEYVAL LIKE 'CURRENCY_%'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            MB_CurrencyDailyRate.Service1SoapClient currObj = new MB_CurrencyDailyRate.Service1SoapClient();
            MB_CurrencyDailyRate.ArrayOfOfficialdailyrate objResponse = new MB_CurrencyDailyRate.ArrayOfOfficialdailyrate();
            objResponse = currObj.GetDailyRate();
            cmd = new OracleCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = @"INSERT INTO TBL_QRYRESULTDATAS (KEYVAL, DT, VAL)
SELECT 'CURRENCY_USD', '" + objResponse[0].vDate + "', '" + objResponse[0].v01USD + @"' FROM DUAL
UNION ALL
SELECT 'CURRENCY_EUR', '" + objResponse[0].vDate + "', '" + objResponse[0].v02EUR + @"' FROM DUAL
UNION ALL
SELECT 'CURRENCY_CNY', '" + objResponse[0].vDate + "', '" + objResponse[0].v14CNY + @"' FROM DUAL
UNION ALL
SELECT 'CURRENCY_GBP', '" + objResponse[0].vDate + "', '" + objResponse[0].v06GBP + @"' FROM DUAL
UNION ALL
SELECT 'CURRENCY_RUB', '" + objResponse[0].vDate + "', '" + objResponse[0].v12RUB + @"' FROM DUAL
UNION ALL
SELECT 'CURRENCY_JPY', '" + objResponse[0].vDate + "', '" + objResponse[0].v03JPY + @"' FROM DUAL
UNION ALL
SELECT 'CURRENCY_CHF', '" + objResponse[0].vDate + "', '" + objResponse[0].v04CHF + @"' FROM DUAL
UNION ALL
SELECT 'CURRENCY_KZT', '" + objResponse[0].vDate + "', '" + objResponse[0].v13KZT + @"' FROM DUAL
UNION ALL
SELECT 'CURRENCY_KRW', '" + objResponse[0].vDate + "', '" + objResponse[0].v15KRW + @"' FROM DUAL
UNION ALL
SELECT 'CURRENCY_CZK', '" + objResponse[0].vDate + "', '" + objResponse[0].v19CZK + @"' FROM DUAL
";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

            //WEATHER
            strMyVal = "";
            DateTime dtToDay = DateTime.Now;
            string strDate = "", strTemp = "", strPenoId = "", strPenoName = "";
            string strTempDayName = "", strTempDayName1 = "", strTempDayName2 = "", strTempDayName3 = "", strTempDayName4 = "";
            //int isTmrw = 0;
            XmlTextReader xtr = new XmlTextReader("http://tsag-agaar.gov.mn/forecast_xml");
            xtr.WhitespaceHandling = WhitespaceHandling.None;
            xtr.Read();
            while (!xtr.EOF)
            {
                if (xtr.Name == "xml" && !xtr.IsStartElement()) break;
                while (xtr.Name != "city" || !xtr.IsStartElement())
                    xtr.Read();
                if (xtr.ReadElementString("city") == "Улаанбаатар")
                {
                    //today or tomorrow
                    while (xtr.Name != "date" || !xtr.IsStartElement())
                        xtr.Read();
                    strDate = xtr.ReadElementString("date");
                    while (xtr.Name != "temperatureDay" || !xtr.IsStartElement())
                        xtr.Read();
                    strTemp = xtr.ReadElementString("temperatureDay");
                    while (xtr.Name != "phenoIdDay" || !xtr.IsStartElement())
                        xtr.Read();
                    strPenoId = xtr.ReadElementString("phenoIdDay");
                    while (xtr.Name != "phenoDay" || !xtr.IsStartElement())
                        xtr.Read();
                    strPenoName = xtr.ReadElementString("phenoDay");

                    if (dtToDay.ToString("yyyy-MM-dd") == strDate)
                    {
                        strTempDayName = "Өнөөдөр";
                        strTempDayName1 = getDayOfWeekName(dtToDay.AddDays(1));
                        strTempDayName2 = getDayOfWeekName(dtToDay.AddDays(2));
                        strTempDayName3 = getDayOfWeekName(dtToDay.AddDays(3));
                        strTempDayName4 = getDayOfWeekName(dtToDay.AddDays(4));
                    }
                    else
                    {
                        strTempDayName = "Маргааш";
                        strTempDayName1 = getDayOfWeekName(dtToDay.AddDays(2));
                        strTempDayName2 = getDayOfWeekName(dtToDay.AddDays(3));
                        strTempDayName3 = getDayOfWeekName(dtToDay.AddDays(4));
                        strTempDayName4 = getDayOfWeekName(dtToDay.AddDays(5));
                    }
                    strMyVal += "<li>"+ strTempDayName + ":&nbsp;"+ strPenoName + "&nbsp;"+strTemp+ " °C</li>";

                    //today+1
                    while (xtr.Name != "date" || !xtr.IsStartElement())
                        xtr.Read();
                    strDate = xtr.ReadElementString("date");
                    while (xtr.Name != "temperatureDay" || !xtr.IsStartElement())
                        xtr.Read();
                    strTemp = xtr.ReadElementString("temperatureDay");
                    while (xtr.Name != "phenoIdDay" || !xtr.IsStartElement())
                        xtr.Read();
                    strPenoId = xtr.ReadElementString("phenoIdDay");
                    while (xtr.Name != "phenoDay" || !xtr.IsStartElement())
                        xtr.Read();
                    strPenoName = xtr.ReadElementString("phenoDay");
                    strMyVal += "<li>" + strTempDayName1 + ":&nbsp;" + strPenoName + "&nbsp;" + strTemp + " °C</li>";

                    //today+2
                    while (xtr.Name != "date" || !xtr.IsStartElement())
                        xtr.Read();
                    strDate = xtr.ReadElementString("date");
                    while (xtr.Name != "temperatureDay" || !xtr.IsStartElement())
                        xtr.Read();
                    strTemp = xtr.ReadElementString("temperatureDay");
                    while (xtr.Name != "phenoIdDay" || !xtr.IsStartElement())
                        xtr.Read();
                    strPenoId = xtr.ReadElementString("phenoIdDay");
                    while (xtr.Name != "phenoDay" || !xtr.IsStartElement())
                        xtr.Read();
                    strPenoName = xtr.ReadElementString("phenoDay");
                    strMyVal += "<li>" + strTempDayName2 + ":&nbsp;" + strPenoName + "&nbsp;" + strTemp + " °C</li>";

                    //today+3
                    while (xtr.Name != "date" || !xtr.IsStartElement())
                        xtr.Read();
                    strDate = xtr.ReadElementString("date");
                    while (xtr.Name != "temperatureDay" || !xtr.IsStartElement())
                        xtr.Read();
                    strTemp = xtr.ReadElementString("temperatureDay");
                    while (xtr.Name != "phenoIdDay" || !xtr.IsStartElement())
                        xtr.Read();
                    strPenoId = xtr.ReadElementString("phenoIdDay");
                    while (xtr.Name != "phenoDay" || !xtr.IsStartElement())
                        xtr.Read();
                    strPenoName = xtr.ReadElementString("phenoDay");
                    strMyVal += "<li>" + strTempDayName3 + ":&nbsp;" + strPenoName + "&nbsp;" + strTemp + " °C</li>";

                    //today+4
                    while (xtr.Name != "date" || !xtr.IsStartElement())
                        xtr.Read();
                    strDate = xtr.ReadElementString("date");
                    while (xtr.Name != "temperatureDay" || !xtr.IsStartElement())
                        xtr.Read();
                    strTemp = xtr.ReadElementString("temperatureDay");
                    while (xtr.Name != "phenoIdDay" || !xtr.IsStartElement())
                        xtr.Read();
                    strPenoId = xtr.ReadElementString("phenoIdDay");
                    while (xtr.Name != "phenoDay" || !xtr.IsStartElement())
                        xtr.Read();
                    strPenoName = xtr.ReadElementString("phenoDay");
                    strMyVal += "<li>" + strTempDayName4 + ":&nbsp;" + strPenoName + "&nbsp;" + strTemp + " °C</li>";

                    break;
                }
                xtr.Read();
            }
            xtr.Close();
            cmd = new OracleCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "DELETE FROM TBL_QRYRESULTDATAS WHERE KEYVAL = 'WEATHER_UB'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            cmd = new OracleCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO TBL_QRYRESULTDATAS (KEYVAL, VAL) VALUES ('WEATHER_UB','"+ strMyVal + "')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            if (con.State == ConnectionState.Open)
            {
                con.Close();
                con.Dispose();
            }

            //int tdayofweek = (int)DateTime.Today.DayOfWeek;//monday:1
            //int tdayinmonth = DateTime.Today.Day;
            //string tdaydate = DateTime.Today.ToString("MM-dd");

            //string strTday = tdaydate.ToString();
        }

        protected string getDayOfWeekName(DateTime dttm)
        {
            string strName = "";
            switch ((int)dttm.DayOfWeek)
            {
                case 1:
                    strName = "Даваа";
                    break;
                case 2:
                    strName = "Мягмар";
                    break;
                case 3:
                    strName = "Лхагва";
                    break;
                case 4:
                    strName = "Пүрэв";
                    break;
                case 5:
                    strName = "Баасан";
                    break;
                case 6:
                    strName = "Бямба";
                    break;
                case 0:
                    strName = "Ням";
                    break;
            }
            return strName;
        }
    }
}