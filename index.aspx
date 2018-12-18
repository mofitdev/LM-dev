<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="LMWebApp.index"  %>
<!DOCTYPE html>
<html lang="en-us" class="hidden-menu-mobile-lock smart-style-0">	
    <head>
        <meta charset="utf-8">
        <title>Цахим хяналт-шинжилгээ, үнэлгээ</title>
        <link rel="shortcut icon" href="../img/favicon.ico"/>
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <link rel="stylesheet" type="text/css" media="screen" href="css/bootstrap.min.css">
	    <link rel="stylesheet" type="text/css" media="screen" href="css/font-awesome.min.css">
	    <link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-production-plugins.min.css">
	    <link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-production.min.css">
	    <link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-skins.min.css">
	    <link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-rtl.min.css"> 

	    <link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
	    <link rel="stylesheet" type="text/css" media="screen" href="css/demo.min.css">
        <link rel="stylesheet" type="text/css" media="screen" href="css/webticker.css">

        <link rel="shortcut icon" href="img/favicon/favicon.ico" type="image/x-icon">
	    <link rel="icon" href="img/favicon/favicon.ico" type="image/x-icon">

	    <!-- #GOOGLE FONT -->
	    <link rel="stylesheet" href="css/googlefonts.css">

	    <!-- #APP SCREEN / ICONS -->
	    <!-- Specifying a Webpage Icon for Web Clip 
			    Ref: https://developer.apple.com/library/ios/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html -->
	    <link rel="apple-touch-icon" href="img/splash/sptouch-icon-iphone.png">
	    <link rel="apple-touch-icon" sizes="76x76" href="img/splash/touch-icon-ipad.png">
	    <link rel="apple-touch-icon" sizes="120x120" href="img/splash/touch-icon-iphone-retina.png">
	    <link rel="apple-touch-icon" sizes="152x152" href="img/splash/touch-icon-ipad-retina.png">
		
	    <!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
	    <meta name="apple-mobile-web-app-capable" content="yes">
	    <meta name="apple-mobile-web-app-status-bar-style" content="black">
		
	    <!-- Startup image for web apps -->
	    <link rel="apple-touch-startup-image" href="img/splash/ipad-landscape.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
	    <link rel="apple-touch-startup-image" href="img/splash/ipad-portrait.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
	    <link rel="apple-touch-startup-image" href="img/splash/iphone.png" media="screen and (max-device-width: 320px)">
    </head>
    <body class="fixed-page-footer smart-style-0">
        <header id="header">
            <div id="logo-group">
                <span id="logo">
                    <a href="../">
                        <img src="img/logo.png" alt="Leader Monitoring">
                    </a>
                </span>
            </div>
            <div class="pull-right">
                 <div id="hide-menu" class="btn-header pull-right">
                    <span>
                         <a href="javascript:void(0);" data-action="toggleMenu" rel="tooltip" data-placement="bottom" data-original-title="Меню хураах/нээх">
                             <i class="fa fa-reorder"></i>
                         </a>
                    </span>
                </div>
                <div id="logout" class="btn-header transparent pull-right">
                    <span>
                        <a href="javascript:void(0);" title="Системээс гарах" data-action="userLogout" data-logout-msg="Та системээс гарахдаа итгэлтэй байна уу?" style="cursor:pointer;" rel="tooltip" data-placement="bottom" data-original-title="Системээс гарах">
                            <i class="fa fa-sign-out"></i>
                        </a>
                    </span>
                </div>
                <div id="fullscreen" class="btn-header transparent pull-right">
                    <span> 
                        <a href="javascript:void(0);" onclick="launchFullscreen(document.documentElement);"  rel="tooltip" data-placement="bottom" data-original-title="Бүтэн дэлгэцээр харах">
                            <i class="fa fa-arrows-alt"></i>
                        </a>
                    </span>
                </div>
                <div class="btn-header transparent pull-right margin-right-5 font-sm">
                    <span> 
                        <a href="javascript:void(0);" onclick="launchHRMIS();" rel="tooltip" data-placement="bottom" data-original-title="Хүний нөөцийн удирдлагын мэдээллийн систем рүү шилжих">
                            &nbsp;HRMIS&nbsp;
                        </a>
                    </span>
                </div>
                <div class="btn-header transparent pull-right font-sm">
                    <span> 
                        <a href="../#pg/risk.aspx" rel="tooltip" data-placement="bottom" data-original-title="Эрсдэл">
                            &nbsp;Эрсдэл&nbsp;
                        </a>
                    </span>
                </div>
                 <div class="btn-header transparent pull-right" style="display:inline-block; margin:5px 20px 0 0;">
                    <table class="table info_table">
                         <tbody>
                             <tr style="font-size:13px;">
			                    <th style="width:44px; padding: 0;text-align: center;">
			                        Жил
			                    </th>
			                    <th style="width:77px; padding: 0;text-align: center;">
			                        Хагас жил
			                    </th>
			                    <th style="width:66px; padding: 0;text-align: center;">
			                        Улирал
			                    </th>
			                    <th style="width:42px; padding: 0;text-align: center;">
			                        Сар
			                    </th>
		                    </tr>
		                    <tr style="font-size:13px;">
			                    <td style="width:44px; padding: 0;text-align: center;">
			                        <span id="indexCurrentYear" runat="server"></span>
			                    </td>
			                    <td style="width:77px; padding: 0;text-align: center;">
			                        <span id="indexCurrentYearHalf" runat="server"></span>
			                    </td>
			                    <td style="width:66px; padding: 0;text-align: center;">
			                        <span id="indexCurrentQuarter" runat="server"></span>
			                    </td>
			                    <td style="width:42px; padding: 0;text-align: center;">
			                        <span id="indexCurrentMonth" runat="server"></span>
			                    </td>
		                    </tr>
	                    </tbody>
                    </table>
                </div>
                <div style="display:none;">
                    <span id="indexUserId" runat="server"></span>
                    <span id="indexUserGazarId" runat="server"></span>
                    <span id="indexUserHeltesId" runat="server"></span>
                    <span id="indexUserGazarName" runat="server"></span>
                    <span id="indexUserGazarInitName" runat="server"></span>
                    <span id="indexUserRoleListId" runat="server"></span>
                    <span id="indexUserPosId" runat="server"></span>
                </div>
            </div>
        </header>
        <aside id="left-panel" style="z-index: 500;">
            <div class="login-info">
	            <span>
		            <a href="pg/myprofile.aspx" id="show-shortcut" data-action="toggleShortcut">
                        <img id="indexProfileImage" runat="server" src="http://hr/img/avatars/male.png" class="online" style="height:30px;" />
			            <span id="staffName" runat="server" style="text-transform:uppercase;">
				            Г.Гүндсамба
			            </span>
                        <i class="fa fa-angle-down"></i>
                    </a>					
	            </span>
            </div>
            <nav style="margin-top:10px;">
                <ul>
                    <li class="active" style="margin-bottom: 15px;">
                        <a href="pg/dashboard.aspx" title="Мэдээлэл">
                            <i class="fa fa-lg fa-fw fa-home"></i> 
                            <span class="menu-item-parent">Мэдээлэл</span>
                        </a>
                    </li>
                    <li <%--style="margin-bottom:15px;"--%>>
                        <a href="pg/indicatortype.aspx" <%--style="padding: 10px 10px 10px 20px;"--%>>
                            <span class="menu-item-parent">ГҮЙЦЭТГЭЛИЙН ҮЗҮҮЛЭЛТ /KPI/</span>
                        </a>
                    </li>
                    <li style="margin-bottom:15px;">
                        <a href="pg/indicatortype2.aspx" <%--style="padding: 10px 10px 10px 20px;"--%>>
                            <span class="menu-item-parent">ХАРЬЯА ГАЗРУУДЫН ҮНЭЛГЭЭ</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" style="padding-bottom:0;">
                            <span class="menu-item-parent">Үйл ажиллагааны хэрэгжилт</span>
                        </a>
                        <ul>
                            <li>
                                <a href="pg/planyr.aspx">Жил</a>
                            </li>
                            <li>
                                <a href="pg/planmnth.aspx">Сар</a>
                            </li>
                            <li>
                                <a href="pg/implweek.aspx">Долоо хоног</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="pg/lw.aspx" style="padding-bottom:0;">
                            <span class="menu-item-parent">Хууль тогтоомжийн хэрэгжилт</span>
                        </a>
                    </li>
                    <li style="margin-bottom:15px;">
                        <a href="pg/policytype.aspx" <%--style="padding: 10px 10px 10px 20px;"--%>>
                            <span class="menu-item-parent">Бодлогын баримт бичиг</span>
                        </a>
                    </li>
                    <li>
                        <a href="pg/togtool.aspx" style="padding-bottom:0;">
                            <span class="menu-item-parent">Дээд байгууллагын шийдвэр</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" style="padding-bottom:0;">
                            <span class="menu-item-parent">Удирдлагаас өгсөн үүрэг/даал...</span>
                        </a>
                        <ul>
                            <li>
                                <a href="pg/tushaalsaid.aspx">Сайдын тушаал</a>
                            </li>
                            <li>
                                <a href="pg/tushaaltnbd.aspx">ТНБД-ын тушаал</a>
                            </li>
                        </ul>
                    </li>
                    <li style="margin-bottom: 15px;">
                        <a href="#" <%--style="padding: 10px 10px 10px 20px;"--%>>
                            <span class="menu-item-parent">Аудитын зөвлөмж</span>
                        </a>
                        <ul>
                            <li>
                                <a href="pg/auditexternal.aspx">Хөндлөнгийн аудит</a>
                            </li>
                            <li>
                                <a href="pg/auditinternal.aspx">Дотоод аудит</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" style="padding-bottom:0;">
                            <span class="menu-item-parent">Хамт олны хариуцлага</span>
                        </a>
                        <ul>
                            <li>
                                <a href="pg/workingtime.aspx">Ажлын цаг ашиглалт</a>
                            </li>
                            <li>
                                <a href="pg/letter.aspx">Албан бичгийн шийдвэрлэлт</a>
                            </li>
                            <li>
                                <a href="pg/timeinfo.aspx">Мэдээллийн цагийн ирц</a>
                            </li>
                            <li>
                                <a href="pg/srvclient.aspx">Үйлчлүүлэгчийн үнэлгээ</a>
                            </li>
                            <li>
                                <a href="pg/transparency.aspx">Ил тод, нээлттэй байдал</a>
                            </li>
                            <li>
                                <a href="pg/srv.aspx?t=stafftostaff">Хамт олны үнэлгээ</a>
                            </li>
                        </ul>
                    </li>
                    <li style="margin-bottom:15px;">
                        <a href="#" <%--style="padding: 10px 10px 10px 20px;"--%>>
                            <span class="menu-item-parent">Хувь хүний хариуцлага</span>
                        </a>
                        <ul>
                            <li>
                                <a href="pg/workingtime.aspx?t=staff">Ажлын цаг ашиглалт</a>
                            </li>
                            <li>
                                <a href="pg/letter.aspx">Албан бичгийн шийдвэрлэлт</a>
                            </li>
                            <li>
                                <a href="pg/jobdesc.aspx">Ажлын байрны тодорхойлолт</a>
                            </li>
                            <li>
                                <a href="pg/agreement.aspx">Үр дүнгийн гэрээ</a>
                            </li>
                            <li id="indexMenuHeadLi1" runat="server">
                                <a href="pg/timeqmeet.aspx">Шуурхай хуралдааны ирц</a>
                            </li>
                            <li id="indexMenuHeadLi2" runat="server">
                                <a href="pg/srv.aspx?t=bosstohead">Удирдлагаас өгөх үнэлгээ</a>
                            </li>
                        </ul>
                    </li>
                    <%--<li>
                        <a href="#"><i class="fa fa-lg fa-fw fa-file-text"></i> <span class="menu-item-parent">ХШҮ-ний тайлан</span></a>
                        <ul>
                            <li>
                                <a href="#">Жилийн тайлан</a>
                            </li>
                            <li>
                                <a href="#">Хагас жилийн тайлан</a>
                            </li>
                            <li>
                                <a href="#">Улиралын тайлан</a>
                            </li>
                            <li>
                                <a href="#">Сарын тайлан</a>
                            </li>
                        </ul>
                    </li>--%>
                    <li style="margin-top:40px;">
                        <a href="pg/lawakt.aspx">
                            <img src="http://legalinfo.mn/assets/img/akt-icon.png" alt="" style="margin-right: 6px;">
                            <span class="menu-item-parent">ЭРХ ЗҮЙН АКТ</span>
                        </a>
                    </li>
                    <li>
                        <a href="../document/doc.html" target="_blank" class="text-warning">
                            <i class="fa fa-lg fa-fw fa-book"></i>
                            <span class="menu-item-parent">ГАРЫН АВЛАГА</span>
                        </a>
                    </li>
                    <li style="margin-top:40px; display:none;">
                        <a href="#">
                            <span class="menu-item-parent">Чиг үүргийн шалгуур үзүүлэлт</span>
                        </a>
                        <ul>
                            <li>
                                <a href="pg/funccri.aspx?t=plan">Шалгуур үзүүлэлт</a>
                            </li>
                            <li>
                                <a href="pg/funccri.aspx?t=impl">Гүйцэтгэл</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="pg/eafki.aspx" style="display:none;">
                            <span class="menu-item-parent">Санхүү, эдийн засгийн үндсэн үзүүлэлт</span>
                        </a>
                    </li>
                    <%--<li>
                        <a href="pg/lw.aspx">
                            <span class="menu-item-parent">Чиг үүргийн бүртгэл</span>
                        </a>
                    </li>--%>
                </ul>
            </nav>
            <span class="minifyme" data-action="minifyMenu">
                 <i class="fa fa-arrow-circle-left hit"></i>
            </span>
        </aside>
        <div id="main" role="main">
	        <div id="shortcut">
		        <ul>
			        <li>
				        <a href="#pg/myprofile.aspx" class="jarvismetro-tile big-cubes selected bg-color-pinkDark"> <span class="iconbox"> <i class="fa fa-user fa-4x"></i> <span>Миний хуудас</span> </span> </a>
			        </li>
		        </ul>
	        </div>
            <div style="display:none;" id="ROLE_demo" runat="server"></div>
            <div id="ribbon">
                <ol class="breadcrumb">
                </ol>
            </div>
            <div id="content" >

            </div>
        </div>
        <script src="js/libs/jquery-2.1.1.min.js"></script>
	    <script>
		    if (!window.jQuery) {
		        document.write('<script src="js/libs/jquery-2.1.1.min.js"><\/script>');
		    }
	    </script>
	    <script src="js/libs/jquery-ui-1.10.3.min.js"></script>
	    <script>
		    if (!window.jQuery.ui) {
		        document.write('<script src="js/libs/jquery-ui-1.10.3.min.js"><\/script>');
		    }
	    </script>
        <script type="text/javascript" src="../js/globalfunctions.js"></script>
	    <!-- IMPORTANT: APP CONFIG -->
	    <script src="js/app.config.js"></script>

	    <!-- JS TOUCH : include this plugin for mobile drag / drop touch events-->
	    <script src="js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> 

	    <!-- BOOTSTRAP JS -->
	    <script src="js/bootstrap/bootstrap.min.js"></script>

	    <!-- CUSTOM NOTIFICATION -->
	    <script src="js/notification/SmartNotification.min.js"></script>

	    <!-- JARVIS WIDGETS -->
	    <script src="js/smartwidgets/jarvis.widget.min.js"></script>

	    <!-- EASY PIE CHARTS -->
	    <script src="js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>

	    <!-- SPARKLINES -->
	    <script src="js/plugin/sparkline/jquery.sparkline.min.js"></script>

	    <!-- JQUERY VALIDATE -->
	    <script src="js/plugin/jquery-validate/jquery.validate.min.js"></script>

	    <!-- JQUERY MASKED INPUT -->
	    <script src="js/plugin/masked-input/jquery.maskedinput.min.js"></script>

	    <!-- JQUERY SELECT2 INPUT -->
	    <script src="js/plugin/select2/select2.min.js"></script>

	    <!-- JQUERY UI + Bootstrap Slider -->
	    <script src="js/plugin/bootstrap-slider/bootstrap-slider.min.js"></script>

	    <!-- browser msie issue fix -->
	    <script src="js/plugin/msie-fix/jquery.mb.browser.min.js"></script>

	    <!-- FastClick: For mobile devices: you can disable this in app.js -->
	    <script src="js/plugin/fastclick/fastclick.min.js"></script>

	    <!--[if IE 8]>
		    <h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>
	    <![endif]-->

	    <!-- Demo purpose only -->
	    <script src="js/demo.min.js"></script>

	    <!-- MAIN APP JS FILE -->
	    <script src="js/app.min.js"></script>

	    <!-- ENHANCEMENT PLUGINS : NOT A REQUIREMENT -->
	    <!-- Voice command : plugin -->
	    <script src="js/speech/voicecommand.min.js"></script>

	    <!-- SmartChat UI : plugin -->
	    <script src="js/smart-chat-ui/smart.chat.ui.min.js"></script>
	    <script src="js/smart-chat-ui/smart.chat.manager.min.js"></script>

        <!--jquery datatable-->
        <script type="text/javascript" src="../js/plugin/datatables/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="../js/plugin/datatables/dataTables.colVis.min.js"></script>
        <script type="text/javascript" src="../js/plugin/datatables/dataTables.tableTools.min.js"></script>
        <script type="text/javascript" src="../js/plugin/datatables/dataTables.bootstrap.min.js"></script>
        <script type="text/javascript" src="../js/plugin/datatable-responsive/datatables.responsive.min.js"></script>
        <script type="text/javascript" src="../js/plugin/datatables/jquery.dataTables.rowGrouping.js"></script>

        <!--bootstrap validation-->
        <script type="text/javascript" src="../js/plugin/bootstrapvalidator/bootstrapValidator.min.js"></script>
        <script type="text/javascript" src="../js/plugin/timer/jquery.timer.js"></script>
        <script type="text/javascript" src="../js/plugin/moment/moment.min.js"></script>
        <script type="text/javascript" src="../js/plugin/fullcalendar/jquery.fullcalendar.min.js"></script>
        <script type="text/javascript" src="../js/plugin/webticker/jquery.webticker.js"></script>
        <script type="text/javascript" src="../js/plugin/multidatespicker/jquery-ui.multidatespicker.js"></script>
        <script type="text/javascript" src="js/plugin/ckeditor/ckeditor.js"></script>
        <script type="text/javascript" src="../js/plugin/flot/jquery.flot.cust.min.js"></script>
        <script type="text/javascript" src="../js/plugin/flot/jquery.flot.resize.min.js"></script>
        <script type="text/javascript" src="../js/plugin/flot/jquery.flot.fillbetween.min.js"></script>
        <script type="text/javascript" src="../js/plugin/flot/jquery.flot.orderBar.min.js"></script>
        <script type="text/javascript" src="../js/plugin/flot/jquery.flot.pie.min.js"></script>
        <script type="text/javascript" src="../js/plugin/flot/jquery.flot.time.min.js"></script>
        <script type="text/javascript" src="../js/plugin/flot/jquery.flot.tooltip.min.js"></script>
        <%-- chartjs --%>
        <script type="text/javascript" src="js/plugin/chartjs/chart.min.js"></script>
        <%-- export word --%>
        <script src="js/plugin/htmltoword/FileSaver.js"></script> 
        <script src="js/plugin/htmltoword/jquery.wordexport.js"></script>
        <script type="text/javascript">
            function replaceDisplayToDatabase(val) {
                return val.replace(/&quot;/g, "quot;").replace(/</g, 'lt;').replace(/>/g, 'gt;').replace(/"/g, 'quot;').replace(/'/g, "apos;").replace(/&/g, 'amp;').replace(/\\/g, "bsol;").replace(/\t/g, '').replace(/([^>\r\n]?)(\r\n|\n\r|\r|\n)/g, '');
            }
        </script>
    </body>
</html>