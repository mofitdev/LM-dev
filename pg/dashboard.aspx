 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="LMWebApp.pg.dashboard" %>
<script type="text/javascript">
    jQuery(function () {
        jQuery("#webticker").webTicker({ startEmpty: false, duplicate: true, speed: 40, startEmpty: false, hoverpause: false });
        jQuery("#webticker2").webTicker({ startEmpty: false, duplicate: true, speed: 50, startEmpty: false, hoverpause: false });
    });
</script>
<style>
    .dashboardSection2Tab3DescTable > tr > td {
        padding: 1px 10px !important;
    }
    .dataTables_info {
        padding:0px;
     }
    .paging_bootstrap_full {
        padding: 0 10px 0 0;
    }
    .fc-header-title {
    margin: -18px 0 0 0;
    }
    .col2t2Table td {
        padding:4px 5px !important;
    }
    .col2t3Table td {
        padding:4px 8px !important;
        font-size:12px;
    }
    .col3Sec4ListDate {
        color: #bfbfbf;
        display: block;
        line-height: 12px;
        font-size: 10px;
        font-weight: 400;
    }
</style>
<div class="row">
    <div class="col-xs-12 col-sm-7 col-md-7 col-lg-3">
        <h1 class="page-title txt-color-blueDark">
            <i class="fa fa-fw fa-home"></i>
            Мэдээлэл
        </h1>
    </div>
    <div class="col-xs-12 col-sm-5 col-md-5 col-lg-9">
        
    </div>
</div>
<div class="row hide">
    <article class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
        <div style="height:auto; border-bottom:1px solid #c7c7c7;">Ханшийн мэдээ /mongolbank.mn/ Огноо: <span id="dashboardCurrencyDate" runat="server"></span></div>        
        <ul id="webticker" runat="server" >
                   
        </ul>        
    </article>
    <article class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
        <div style="height:auto; border-bottom:1px solid #c7c7c7;">Цаг агаар /tsag-agaar.gov.mn/</div>        
        <ul id="webticker2" runat="server" >
                   
        </ul>        
    </article>
</div>
<div class="row">
    <div class="col-md-4">
        <div class="row">
            <div class="col-md-12">
                <div class="well well-sm" style="height: 330px;">
                    <div class="row">
                        <div class="col-sm-4 profile-pic">
					        <img src="http://hr/img/avatars/male.png" id="dashboardSection1Image" runat="server">
                            <div id="dashboardSection1DivStafftype" runat="server" style="padding: 5px 0 0 5px;"></div>
                            <div style="margin-top: 10px;">
                                <a href="javascript:void(0);" id="dashboardSection1btnStaffAnket" runat="server" class="btn btn-primary btn-xs"> <i class="fa fa-files-o"></i> Миний анкет </a>
                            </div>
				        </div>
                        <div class="col-sm-8">
						    <h1 id="dashboardSection1H1Names" runat="server" style="text-transform:uppercase;">
                                            
						    </h1>
						    <ul class="list-unstyled">
							    <li>
								    <p class="text-muted">
									    <i class="fa fa-phone"></i>&nbsp;&nbsp;<span id="dashboardSection1SpanTels" runat="server" class="txt-color-darken">-</span>
								    </p>
							    </li>
							    <li>
								    <p class="text-muted">
									    <i class="fa fa-envelope"></i>&nbsp;&nbsp;<a id="dashboardSection1SpanEmail" runat="server" href="#">-</a>
								    </p>
							    </li>
							    <li>
								    <p class="text-muted">
									    <i class="fa fa-home"></i>&nbsp;&nbsp;<span id="dashboardSection1SpanAddress" runat="server" class="txt-color-darken">-</span>
								    </p>
							    </li>
						    </ul>
                            <br />
                            <p class="font-md"><i>Нийт ажилласан</i></p>
                            <p id="dashboardSection1PWorkedTime" runat="server"></p>
					    </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="well well-sm text-center" style="background-color:#d6dde7; color:#305d8c;">
                    <div class="row">
                        <div class="col-xs-12"><strong>ХУВЬ ХҮНИЙ АЛБАН БИЧГИЙН ШИЙДВЭРЛЭЛТ /<span id="letterStaffName" runat="server"></span>/</strong></div>
                    </div>
                    <div class="row">
                        <div class="col-xs-5">
                            <div class="row">
                                <div class="col-xs-12 text-left font-xs">
                                    <i><span id="letterDate" runat="server">yyyy-MM-dd</span></i>
                                    <hr style="margin: 1px 0;  border-top: 1px solid #305d8c;"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-5">
                                    <i class="fa fa-file-text fa-3x" style="margin-left: 12px; margin-top: 9px;"></i>
                                </div>
                                <div class="col-xs-7 text-left">
                                    <p id="letterKartCount" runat="server" class="no-margin" style="font-size:2em;">0</p>
                                    <p class="no-margin">Карттай бичиг</p>
                                </div>
                            </div>
                        </div>                        
                        <div class="col-xs-7">
                            <div class="row">
                                <div class="col-xs-12 text-right font-xs">
                                    <i>Оны эхнээс</i>
                                    <hr style="margin: 1px 0; border-top: 1px solid #305d8c;"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12">
                                    <ul style="list-style: none; display:block;" class="no-padding">
                                        <li style="display: list-item; height:24px;">
                                            <span class="pull-left font-sm">Ирсэн карттай бичиг</span>
                                            <span id="letterTotalKartCount" runat="server" class="pull-right font-md">0</span>
                                        </li>
                                        <li style="display: list-item; height:24px;">
                                            <span class="pull-left font-sm">Хугацаандаа шийдвэрлэсэн</span>
                                            <span id="letterTotalClosedKartCount" runat="server" class="pull-right font-md">0</span>
                                        </li>
                                        <li style="display: list-item; height:24px;">
                                            <span class="pull-left font-sm">Хоцорч шийдвэрлэсэн</span>
                                            <span id="letterTotalLateKartCount" runat="server" class="pull-right font-md">0</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">            
            <div class="col-md-12">
               <div class="jarviswidget jarviswidget-color-blueLight" data-widget-editbutton="false">
                    <header>
                        <h2><strong>Сүүлийн 5 хоногийн цаг ашиглалт</strong></h2>
                        <div class="widget-toolbar">
                            [<a href="../#pg/workingtime.aspx" class="btn btn-sm btn-link" style="padding-top: 3px !important;">Дэлгэрэнгүй</a>]
                        </div>
                    </header>
                    <div id="dashboardWorkingTimeDiv" runat="server">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="well well-sm">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <strong><span id="dashboardCol1Sec4SpanMnth" runat="server">0</span>-Р САРЫН<br />ТАНЫ ТӨЛӨВЛӨГӨӨТ АЖИЛ</strong>
                        </div>
                    </div>
                    <hr style="margin: 6px 0;  border-top: 1px solid #ddd;"/>
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <span id="dashboardCol1Sec4SpanPlanMnthCnt" runat="server" class="font-xl">0</span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <span class="font-sm">ширхэг</span>
                        </div>
                    </div>
				</div>
            </div>
            <div class="col-md-6">
                <div class="well well-sm">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <strong><span id="dashboardCol1Sec5SpanYr" runat="server">0</span> ОНЫ<br />ТАНЫ ТӨЛӨВЛӨГӨӨТ АЖИЛ</strong>
                        </div>
                    </div>
                    <hr style="margin: 6px 0;  border-top: 1px solid #ddd;"/>
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <span id="dashboardCol1Sec5SpanPlanYrCnt" runat="server" class="font-xl">0</span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <span class="font-sm">ширхэг</span>
                        </div>
                    </div>
				</div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="row">
            <div class="col-md-12">
                <div class="well well-sm">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <strong>ГАЗРУУДЫН САРЫН ТӨЛӨВЛӨГӨӨНИЙ ҮНЭЛГЭЭ</strong>
                        </div>
                    </div>
                    <hr style="margin: 6px 0;  border-top: 1px solid #ddd;"/>
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-striped no-margin font-sm col2t2Table">
                                <thead>
                                    <tr>
                                        <th class="text-center">Газар</th>
                                        <th class="text-center">1</th>
                                        <th class="text-center">2</th>
                                        <th class="text-center">3</th>
                                        <th class="text-center">4</th>
                                        <th class="text-center">5</th>
                                        <th class="text-center">6</th>
                                        <th class="text-center">7</th>
                                        <th class="text-center">8</th>
                                        <th class="text-center">9</th>
                                        <th class="text-center">10</th>
                                        <th class="text-center">11</th>
                                        <th class="text-center">12</th>
                                    </tr>
                                </thead>
                                <tbody id="dashboardCol2Sec1Tbody" runat="server">
                                </tbody>
                            </table>
                        </div>
                    </div>                    
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="well well-sm text-center" style="background-color:#d6dde7; color:#305d8c;">
                    <div class="row">
                        <div class="col-xs-12"><strong>ХАМТ ОЛНЫ АЛБАН БИЧГИЙН ШИЙДВЭРЛЭЛТ /<span id="dashboardtCol2Sec2SpanInitname" runat="server"></span>/</strong></div>
                    </div>
                    <div class="row">
                        <div class="col-xs-5">
                            <div class="row">
                                <div class="col-xs-12 text-left font-xs">
                                    <i><span id="dashboardtCol2Sec2SpanDate" runat="server"></span></i>
                                    <hr style="margin: 1px 0; border-top: 1px solid #305d8c;"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-5">
                                    <i class="fa fa-file-text fa-3x" style="margin-left: 12px; margin-top: 9px;"></i>
                                </div>
                                <div class="col-xs-7 text-left">
                                    <p id="dashboardtCol2Sec2KartCount" runat="server" class="no-margin" style="font-size:2em;">0</p>
                                    <p class="no-margin">Карттай бичиг</p>
                                </div>
                            </div>
                        </div>                        
                        <div class="col-xs-7">
                            <div class="row">
                                <div class="col-xs-12 text-right font-xs">
                                    <i>Оны эхнээс</i>
                                    <hr style="margin: 1px 0; border-top: 1px solid #305d8c;"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12">
                                    <ul style="list-style: none; display:block;" class="no-padding">
                                        <li style="display: list-item; height:24px;">
                                            <span class="pull-left font-sm">Ирсэн карттай бичиг</span>
                                            <span id="dashboardtCol2Sec2TotalKartCount" runat="server" class="pull-right font-md">0</span>
                                        </li>
                                        <li style="display: list-item; height:24px;">
                                            <span class="pull-left font-sm">Хугацаандаа шийдвэрлэсэн</span>
                                            <span id="dashboardtCol2Sec2TotalClosedKartCount" runat="server" class="pull-right font-md">0</span>
                                        </li>
                                        <li style="display: list-item; height:24px;">
                                            <span class="pull-left font-sm">Хоцорч шийдвэрлэсэн</span>
                                            <span id="dashboardtCol2Sec2TotalLateKartCount" runat="server" class="pull-right font-md">0</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="well well-sm">
                    <div class="row">
                        <div class="col-md-12 text-center margin-bottom-10">
                            <strong>ЦАГ АШИГЛАЛТЫН МЭДЭЭЛЭЛ /ДУНДАЖ/</strong>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-striped no-margin">
                                <thead>
                                    <tr>
                                        <th rowspan="2" class="text-center">Сар</th>
                                        <th colspan="2" class="text-center">Ирсэн цаг</th>
                                        <th colspan="2" class="text-center">Явсан цаг</th>
                                        <th colspan="2" class="text-center">Ажилласан цаг</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width:30%;">Яам</th>
                                        <th class="text-center" style="width:30%;"><span id="dashboardCol2Sec3Table1GazarInitname1" runat="server"></span></th>
                                        <th class="text-center" style="width:30%;">Яам</th>
                                        <th class="text-center" style="width:30%;"><span id="dashboardCol2Sec3Table1GazarInitname2" runat="server"></span></th>
                                        <th class="text-center" style="width:30%;">Яам</th>
                                        <th class="text-center" style="width:30%;"><span id="dashboardCol2Sec3Table1GazarInitname3" runat="server"></span></th>
                                    </tr>
                                </thead>
                                <tbody id="dashboardCol2Sec3Table1Tbody" runat="server">

                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="well well-sm">
                                <canvas id="dashboardCol2Sec4Canvas" runat="server" height="120" data-come-value-yam="" data-come-value-gazar="" data-come-value-me="" data-go-value-yam="" data-go-value-gazar="" data-go-value-me="" data-worked-value-yam="" data-worked-value-gazar="" data-worked-value-me="" data-mnth=""></canvas>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="well well-sm">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <strong><span id="dashboardtCol3Sec3SpanHeltesInitName1" runat="server"></span>-Н ЖИЛИЙН ТӨЛӨВЛӨГӨӨНИЙ ГҮЙЦЭТГЭЛ</strong>
                        </div>
                    </div>
                    <hr style="margin: 6px 0;  border-top: 1px solid #ddd;"/>
                    <div class="row">
                        <div class="col-md-12">
                            <canvas id="dashboardCol3Sec3Canvas" runat="server" height="120" data-value=""></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="row">
            <div class="col-md-6">
                <div class="well well-sm">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <strong><span id="dashboardCol3Sec1SpanMnth" runat="server">0</span>-Р САРЫН<br />ЯАМНЫ ТӨЛӨВЛӨГӨӨ</strong>
                        </div>
                    </div>
                    <hr style="margin: 6px 0;  border-top: 1px solid #ddd;"/>
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <span id="dashboardCol3Sec1SpanPlanMnthCnt" runat="server" class="font-xl">0</span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <span class="font-sm">ширхэг</span>
                        </div>
                    </div>
				</div>
            </div>
            <div class="col-md-6">
                <div class="well well-sm">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <strong><span id="dashboardCol3Sec2SpanMnth" runat="server">0</span>-Р САРЫН<br /><span id="dashboardtCol3Sec2SpanHeltesInitName1" runat="server"></span>-Н ТӨЛӨВЛӨГӨӨ</strong>
                        </div>
                    </div>
                    <hr style="margin: 6px 0;  border-top: 1px solid #ddd;"/>
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <span id="dashboardCol3Sec2SpanPlanMnthCnt" runat="server" class="font-xl">0</span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <span class="font-sm">ширхэг</span>
                        </div>
                    </div>
				</div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-12">
                        <strong>СҮҮЛД НЭМЭГДСЭН</strong>
                    </div>
                </div>
                <hr style="margin: 6px 0;  border-top: 1px solid #ddd;"/>
                <div class="panel-group smart-accordion-default" id="dashboardCol3Sec4Accordion">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title"><a data-toggle="collapse" data-parent="#dashboardCol3Sec4Accordion" href="#collapseOne"> <i class="fa fa-lg fa-angle-down pull-right"></i> <i class="fa fa-lg fa-angle-up pull-right"></i> Дээд байгууллагын шийдвэр </a></h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body no-padding">
								<table class="table table-condensed">
									<tbody id="dashboardCol3Sec4Collapse1Tbody" runat="server">
										
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title"><a data-toggle="collapse" data-parent="#dashboardCol3Sec4Accordion" href="#collapseTwo" class="collapsed"> <i class="fa fa-lg fa-angle-down pull-right"></i> <i class="fa fa-lg fa-angle-up pull-right"></i> Сайдын тушаал </a></h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse">
							<div class="panel-body no-padding">
								<table class="table table-condensed">
									<tbody id="dashboardCol3Sec4Collapse2Tbody" runat="server">
										
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title"><a data-toggle="collapse" data-parent="#dashboardCol3Sec4Accordion" href="#collapseThree" class="collapsed"> <i class="fa fa-lg fa-angle-down pull-right"></i> <i class="fa fa-lg fa-angle-up pull-right"></i> ТНБД-н тушаал </a></h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse">
							<div class="panel-body no-padding">
								<table class="table table-condensed">
									<tbody id="dashboardCol3Sec4Collapse3Tbody" runat="server">
										
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title"><a data-toggle="collapse" data-parent="#dashboardCol3Sec4Accordion" href="#collapseFour" class="collapsed"> <i class="fa fa-lg fa-angle-down pull-right"></i> <i class="fa fa-lg fa-angle-up pull-right"></i> Хөндлөнгийн аудитын зөвлөмж </a></h4>
						</div>
						<div id="collapseFour" class="panel-collapse collapse">
							<div class="panel-body no-padding">
								<table class="table table-condensed">
									<tbody id="dashboardCol3Sec4Collapse4Tbody" runat="server">
										
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title"><a data-toggle="collapse" data-parent="#dashboardCol3Sec4Accordion" href="#collapseFive" class="collapsed"> <i class="fa fa-lg fa-angle-down pull-right"></i> <i class="fa fa-lg fa-angle-up pull-right"></i> Дотоод аудитын зөвлөмж </a></h4>
						</div>
						<div id="collapseFive" class="panel-collapse collapse">
							<div class="panel-body no-padding">
								<table class="table table-condensed">
									<tbody id="dashboardCol3Sec4Collapse5Tbody" runat="server">
										
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>

            </div>
        </div>

    </div>
</div>
<section id="widget-grid" class="hide">
    <!-- row -->
    <div class="row">
        <div class="jarviswidget" id="wid-id-0" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-colorbutton="false" data-widget-deletebutton="false">
            <header>
                <span class="widget-icon"> <i class="fa fa-bar-chart-o"></i> </span>
                <h2>Газрын нийт оноо /үзүүлэлтээр/ </h2>
                <ul class="nav nav-tabs pull-right in" id="myTab">
					<li id="dashboardSection2Tab1Head" class="active">
						<a data-toggle="tab" href="#s11"><i class="glyphicon glyphicon-stats txt-color-darken" style="padding:0px;"></i> <span class="hidden-mobile hidden-tablet">Графикаар</span></a>
					</li>
					<li id="dashboardSection2Tab2Head">
						<a data-toggle="tab" href="#s22"><i class="fa fa-table txt-color-darken" style="padding:0px;"></i> <span class="hidden-mobile hidden-tablet">Хүснэгтээр</span></a>
					</li>
					<li id="dashboardSection2Tab3Head">
						<a data-toggle="tab" href="#s33"><i class="fa fa-table txt-color-darken" style="padding:0px;"></i> <span class="hidden-mobile hidden-tablet">Хүснэгтээр /дэлгэрэнгүй/</span></a>
					</li>
				</ul>
                <div class="widget-toolbar">
                    <div class="btn-group options" style="margin-right:0px !important;">
                        <select id="dashboardSection2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                    </div> 
                </div>
                <div class="widget-toolbar">
                    <div class="btn-group options" style="margin-right:0px !important;">
                        <select id="dashboardSection2SelectMonth" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">1 сар</option><option value="2">2 сар</option><option value="3">3 сар</option><option value="4">4 сар</option><option value="5">5 сар</option><option value="6">6 сар</option><option value="7">7 сар</option><option value="8">8 сар</option><option value="9">9 сар</option><option value="10">10 сар</option><option value="11">11 сар</option><option value="12">12 сар</option></select>
                    </div> 
                </div>
            </header>
            <div class="no-padding" style="padding-top:0px;">
                <div class="jarviswidget-editbox">
					test
				</div>
                <div class="widget-body">
                    <div id="myTabContent" class="tab-content">
                        <div id="loaderTotalGazar" class="search-background" style="z-index:999999999;">
                            <label>
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </label>
                        </div>
                        <div class="tab-pane fade active in" id="s11" style="padding:0 10px 0 10px;">
                            <div class="widget-body-toolbar bg-color-white smart-form" id="rev-toggles" style="padding:0px 10px; margin: 0px -13px 0px;">
                                <div class="inline-group">
                                    <select name="dashboardSection2SelectType" id="dashboardSection2SelectType" class="form-control" style="padding:0 0; height:26px;">
	                                    <option value="1">Нийт үзүүлэлтээр</option>
	                                    <option value="2">Сарын төлөвлөгөөний биелэлт</option>
	                                    <option value="3">Жилийн төлөвлөгөөний биелэлт</option>
	                                    <option value="4">Чиг үүргийн шалгуур үзүүлэлтийн биелэлт</option>
	                                    <option value="5">Сайд, ТНБД-ын тушаалын биелэлт</option>
	                                    <option value="6">Удирдлагаас өгсөн үүрэг даалгаварын биелэлт</option>
	                                    <option value="7">Үйл ажиллагааны ил тод нээлттэй байдал</option>
	                                    <option value="8">Дотоод аудитын зөвлөмжийн биелэлт</option>
	                                    <option value="9">Ажлын цаг ашиглалт</option>
	                                    <option value="10">Албан бичгийн шийдвэрлэлт</option>
	                                    <option value="11">Мэдээллийн цагийн оролцоо</option>
	                                    <option value="12">Үйлчлүүлэгчийн үнэлгээ</option>
                                    </select>
                                </div>
                                <div id="dashboardSection2Description" class="inline-group" style="margin-left: 25px;">
                                    <div class="btn-group">
							            <button class="btn dropdown-toggle btn-xs btn-primary" data-toggle="dropdown">
								            <i class="fa fa-reorder"></i> ТОХИРГОО | ТАЙЛБАР <i class="fa fa-caret-down"></i>
							            </button>
							            <ul class="dropdown-menu pull-right  js-status-update edit_style" style="min-width:370px; background-color:#fff;">
								            <li>
                                                <div style="height:25px;">
                                                    <span style="float: left; width:12px; padding: 6px 5px 0 0; color:#0088CC;"><i class="fa fa-circle-o"></i></span>
                                                    <span style="float:left; width:350px">
                                                        <label for="gra-0" class="checkbox">
                                                            <input type="checkbox" name="gra-0" id="gra-0" checked="checked">
                                                            <i></i> Нийт оноо
                                                        </label>
                                                    </span>
                                                </div>									   
								            </li>
								            <li>
                                                <div style="height:25px;">
                                                    <span style="float: left; width:12px; padding: 6px 5px 0 0; color:#a90329;"><i class="fa fa-circle-o"></i></span>
                                                    <span style="float:left; width:350px">
									                        <label for="gra-1" class="checkbox">
                                                            <input type="checkbox" name="gra-1" id="gra-1" checked="checked">
                                                            <i></i> Сарын төлөвлөгөөний биелэлт
                                                        </label>
                                                    </span>	
                                                </div>
								            </li>
								            <li>
                                                <div style="height:25px;">
                                                    <span style="float: left; width:12px; padding: 6px 5px 0 0; color:#71843f;"><i class="fa fa-circle-o"></i></span>
                                                    <span style="float:left; width:350px">
									                        <label for="gra-2" class="checkbox">
                                                            <input type="checkbox" name="gra-2" id="gra-2" checked="checked">
                                                            <i></i> Жилийн төлөвлөгөөний биелэлт
                                                        </label>
                                                    </span>	
                                                </div>
								            </li>
								            <li>
                                                <div style="height:25px;">
                                                    <span style="float: left; width:12px; padding: 6px 5px 0 0; color:#ac5287;"><i class="fa fa-circle-o"></i></span>
                                                    <span style="float:left; width:350px">
									                        <label for="gra-3" class="checkbox">
                                                            <input type="checkbox" name="gra-3" id="gra-3" checked="checked">
                                                            <i></i> Чиг үүргийн шалгуур үзүүлэлтийн биелэлт
                                                        </label>
                                                    </span>	
                                                </div>
								            </li>
								            <li>
                                                <div style="height:25px;">
                                                    <span style="float: left; width:12px; padding: 6px 5px 0 0; color:#57889c;"><i class="fa fa-circle-o"></i></span>
                                                    <span style="float:left; width:350px">
									                        <label for="gra-4" class="checkbox">
                                                            <input type="checkbox" name="gra-4" id="gra-4" checked="checked">
                                                            <i></i> Сайд, ТНБД-ын тушаалын биелэлт
                                                        </label>
                                                    </span>	
                                                </div>
								            </li>
								            <li>
                                                <div style="height:25px;">
                                                    <span style="float: left; width:12px; padding: 6px 5px 0 0; color:#92a2a8;"><i class="fa fa-circle-o"></i></span>
                                                    <span style="float:left; width:350px">
									                        <label for="gra-5" class="checkbox">
                                                            <input type="checkbox" name="gra-5" id="gra-5" checked="checked">
                                                            <i></i> Удирдлагаас өгсөн үүрэг даалгаварын биелэлт
                                                        </label>
                                                    </span>	
                                                </div>
								            </li>
								            <li>
                                                <div style="height:25px;">
                                                    <span style="float: left; width:12px; padding: 6px 5px 0 0; color:#4c4f53;"><i class="fa fa-circle-o"></i></span>
                                                    <span style="float:left; width:350px">
									                        <label for="gra-6" class="checkbox">
                                                            <input type="checkbox" name="gra-6" id="gra-6" checked="checked">
                                                            <i></i> Үйл ажиллагааны ил тод нээлттэй байдал
                                                        </label>
                                                    </span>	
                                                </div>
								            </li>
								            <li>
                                                <div style="height:25px;">
                                                    <span style="float: left; width:12px; padding: 6px 5px 0 0; color:#568a89;"><i class="fa fa-circle-o"></i></span>
                                                    <span style="float:left; width:350px">
									                        <label for="gra-7" class="checkbox">
                                                            <input type="checkbox" name="gra-7" id="gra-7" checked="checked">
                                                            <i></i> Дотоод аудитын зөвлөмжийн биелэлт
                                                        </label>
                                                    </span>	
                                                </div>
								            </li>
								            <li>
                                                <div style="height:25px;">
                                                    <span style="float: left; width:12px; padding: 6px 5px 0 0; color:#c79121;"><i class="fa fa-circle-o"></i></span>
                                                    <span style="float:left; width:350px">
									                        <label for="gra-8" class="checkbox">
                                                            <input type="checkbox" name="gra-8" id="gra-8" checked="checked">
                                                            <i></i> Ажлын цаг ашиглалт
                                                        </label>
                                                    </span>	
                                                </div>
								            </li>
								            <li>
                                                <div style="height:25px;">
                                                    <span style="float: left; width:12px; padding: 6px 5px 0 0; color:#a65858;"><i class="fa fa-circle-o"></i></span>
                                                    <span style="float:left; width:350px">
									                        <label for="gra-9" class="checkbox">
                                                            <input type="checkbox" name="gra-9" id="gra-9" checked="checked">
                                                            <i></i> Албан бичгийн шийдвэрлэлт
                                                        </label>
                                                    </span>	
                                                </div>
								            </li>
								            <li>
                                                <div style="height:25px;">
                                                    <span style="float: left; width:12px; padding: 6px 5px 0 0; color:#6e587a;"><i class="fa fa-circle-o"></i></span>
                                                    <span style="float:left; width:350px">
									                        <label for="gra-10" class="checkbox">
                                                            <input type="checkbox" name="gra-10" id="gra-10" checked="checked">
                                                            <i></i> Мэдээллийн цагийн оролцоо
                                                        </label>
                                                    </span>	
                                                </div>
								            </li>
								            <li>
                                                <div style="height:25px;">
                                                    <span style="float: left; width:12px; padding: 6px 5px 0 0; color:yellow;"><i class="fa fa-circle-o"></i></span>
                                                    <span style="float:left; width:350px">
									                        <label for="gra-11" class="checkbox">
                                                            <input type="checkbox" name="gra-11" id="gra-11" checked="checked">
                                                            <i></i> Үйлчлүүлэгчийн үнэлгээ
                                                        </label>
                                                    </span>	
                                                </div>
								            </li>
							            </ul>
						            </div>                          
                                </div>
                            </div>
                            <div class="padding-10">
                                <div id="dashboardSection2DivType" style="font-style:italic">Нийт үзүүлэлтээр</div>
                                <div id="flotcontainer" class="chart-large has-legend-unique" style="margin-top:0px !important; display:block;"></div>
                                <div id="flotcontainer2" class="chart-large has-legend-unique" style="margin-top:0px !important; display:none; width:50%;"></div>
                                <div id="flotcontainer3" class="chart-large has-legend-unique" style="margin-top:0px !important; display:none; width:50%;"></div>
                                <div id="flotcontainer4" class="chart-large has-legend-unique" style="margin-top:0px !important; display:none; width:50%;"></div>
                                <div id="flotcontainer5" class="chart-large has-legend-unique" style="margin-top:0px !important; display:none; width:50%;"></div>
                                <div id="flotcontainer6" class="chart-large has-legend-unique" style="margin-top:0px !important; display:none; width:50%;"></div>
                                <div id="flotcontainer7" class="chart-large has-legend-unique" style="margin-top:0px !important; display:none; width:50%;"></div>
                                <div id="flotcontainer8" class="chart-large has-legend-unique" style="margin-top:0px !important; display:none; width:50%;"></div>
                                <div id="flotcontainer9" class="chart-large has-legend-unique" style="margin-top:0px !important; display:none; width:50%;"></div>
                                <div id="flotcontainer10" class="chart-large has-legend-unique" style="margin-top:0px !important; display:none; width:50%;"></div>
                                <div id="flotcontainer11" class="chart-large has-legend-unique" style="margin-top:0px !important; display:none; width:50%;"></div>
                                <div id="flotcontainer12" class="chart-large has-legend-unique" style="margin-top:0px !important; display:none; width:50%;"></div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="s22" style="padding:0 10px 0 10px;">
                            <div class="widget-body-toolbar bg-color-white smart-form" style="padding:0px 10px; margin: 0px -13px 0px;">
                            </div>
                            <div class="padding-10">
                                <div id="flotcontainer1">
                                    
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="s33" style="padding:0 10px 0 10px;">
                            <div class="widget-body-toolbar bg-color-white smart-form" style="padding:0px 10px; margin: 0px -13px 0px;">
                            </div>
                            <div class="padding-10">
                                <div id="flotcontainer1Desc">
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>                    
            </div>
        </div>
    </div>
</section>

<script src="../js/plugin/skycons/skycons.js" type="text/javascript"></script> 
<%-- google chart --%>
<script type="text/javascript" src="https://www.google.com/jsapi?autoload={'modules':[{'name':'visualization','version':'1.1','packages':['corechart']}]}"></script>
<%--<script type="text/javascript" src="https://www.google.com/jsapi"></script>--%>
<script type="text/javascript">
    //hr profile irts
    

    pageSetUp();
    var globalAjaxVar = null;
    var pagefunction = function () {
        if (getUrlVars()["t"] == 'f') {
            $.smallBox({
                title: $('#staffName').text(),
                content: 'Системд тавтай морил...',
                color: '#3276b1',
                icon: "fa fa-user fadeInRight animated",
                timeout: 5000
            });
        }

        // bind col3 section3 heltes jiliin tuluvluguu guitsetgel
        // BAR CHART
		var barOptions = {
			//Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
			scaleBeginAtZero : true,
			//Boolean - Whether grid lines are shown across the chart
			scaleShowGridLines : true,
			//String - Colour of the grid lines
			scaleGridLineColor : "rgba(0,0,0,.05)",
			//Number - Width of the grid lines
			scaleGridLineWidth : 1,
			//Boolean - If there is a stroke on each bar
			barShowStroke : true,
			//Number - Pixel width of the bar stroke
			barStrokeWidth : 1,
			//Number - Spacing between each of the X value sets
			barValueSpacing : 5,
			//Number - Spacing between data sets within X values
			barDatasetSpacing : 1,
			//Boolean - Re-draw chart on page resize
		    responsive: true
		}
		var barData = {
		    labels: ["1-р сар", "2-р сар", "3-р сар", "4-р сар", "5-р сар", "6-р сар", "7-р сар", "8-р сар", "9-р сар", "10-р сар", "11-р сар", "12-р сар"],
		        datasets: [
			    {
			        label: "My Second dataset",
			        fillColor: "rgba(151,187,205,0.5)",
			        strokeColor: "rgba(151,187,205,0.8)",
			        highlightFill: "rgba(151,187,205,0.75)",
			        highlightStroke: "rgba(151,187,205,1)",
			        //data: [28, 48, 40, 19, 86, 27, 90, 0, 0, 0, 0, 0]
			        data: JSON.parse("[" + $('#dashboardCol3Sec3Canvas').attr('data-value') + "]")
			    }
			]
		};
		// render chart
		var ctx = document.getElementById("dashboardCol3Sec3Canvas").getContext("2d");
		myNewChart_2 = new Chart(ctx).Bar(barData, barOptions);

        //bind line chart
        // LINE CHART
			// ref: http://www.chartjs.org/docs/#line-chart-introduction
		    var lineOptions = {
			    ///Boolean - Whether grid lines are shown across the chart
			    scaleShowGridLines : true,
			    //String - Colour of the grid lines
			    scaleGridLineColor : "rgba(0,0,0,.05)",
			    //Number - Width of the grid lines
			    scaleGridLineWidth : 1,
			    //Boolean - Whether the line is curved between points
			    bezierCurve : true,
			    //Number - Tension of the bezier curve between points
			    bezierCurveTension : 0.4,
			    //Boolean - Whether to show a dot for each point
			    pointDot : true,
			    //Number - Radius of each point dot in pixels
			    pointDotRadius : 4,
			    //Number - Pixel width of point dot stroke
			    pointDotStrokeWidth : 1,
			    //Number - amount extra to add to the radius to cater for hit detection outside the drawn point
			    pointHitDetectionRadius : 20,
			    //Boolean - Whether to show a stroke for datasets
			    datasetStroke : true,
			    //Number - Pixel width of dataset stroke
			    datasetStrokeWidth : 2,
			    //Boolean - Whether to fill the dataset with a colour
			    datasetFill : true,
			    //Boolean - Re-draw chart on page resize
		        responsive: true,
		        //String - A legend template
		        scaleLabel: function (label) {
		            var sec_num = parseInt(label.value.toString(), 10); // don't forget the second param
		            var hours = Math.floor(sec_num / 3600);
		            var minutes = Math.floor((sec_num - (hours * 3600)) / 60);
		            var seconds = sec_num - (hours * 3600) - (minutes * 60);

		            if (hours < 10) { hours = "0" + hours; }
		            if (minutes < 10) { minutes = "0" + minutes; }
		            if (seconds < 10) { seconds = "0" + seconds; }
		            //return hours + ':' + minutes + ':' + seconds;
		            return hours + ':' + minutes;
		        }
			};

		    var lineData = {
		        labels: JSON.parse("[" + $('#dashboardCol2Sec4Canvas').attr('data-mnth') + "]"),
		        datasets: [
			        {
			            label: "Ирсэн цаг яамны дундаж",
			            fillColor: "rgba(255,255,255,0)",
			            strokeColor: "rgba(151,187,205,1)",
			            pointColor: "rgba(151,187,205,1)",
			            pointStrokeColor: "#fff",
			            pointHighlightFill: "#fff",
			            pointHighlightStroke: "rgba(151,187,205,0.8)",
			            data: JSON.parse("[" + $('#dashboardCol2Sec4Canvas').attr('data-come-value-yam') + "]")
			        },
			        {
			            label: "Ирсэн цаг газрын дундаж",
			            fillColor: "rgba(255,255,255,0)",
			            strokeColor: "rgba(220,220,220,1)",
			            pointColor: "rgba(220,220,220,1)",
			            pointStrokeColor: "#fff",
			            pointHighlightFill: "#fff",
			            pointHighlightStroke: "rgba(220,220,220,0.8)",
			            data: JSON.parse("[" + $('#dashboardCol2Sec4Canvas').attr('data-come-value-gazar') + "]")
			        },
			        //{
			        //    label: "Ирсэн цаг ажилтан дундаж",
			        //    fillColor: "rgba(255,255,255,0)",
			        //    strokeColor: "rgba(247,70,74,1)",
			        //    pointColor: "rgba(247,70,74,1)",
			        //    pointStrokeColor: "#fff",
			        //    pointHighlightFill: "#fff",
			        //    pointHighlightStroke: "rgba(247,70,74,0.8)",
			        //    data: JSON.parse("[" + $('#dashboardCol2Sec4Canvas').attr('data-come-value-me') + "]")
			        //},
			        {
			            label: "Явсан цаг яамны дундаж",
			            fillColor: "rgba(255,255,255,0)",
			            strokeColor: "rgba(70,191,189,1)",
			            pointColor: "rgba(70,191,189,1)",
			            pointStrokeColor: "#fff",
			            pointHighlightFill: "#fff",
			            pointHighlightStroke: "rgba(70,191,189,0.8)",
			            data: JSON.parse("[" + $('#dashboardCol2Sec4Canvas').attr('data-go-value-yam') + "]")
			        },
			        {
			            label: "Явсан цаг газрын дундаж",
			            fillColor: "rgba(255,255,255,0)",
			            strokeColor: "rgba(253,180,92,1)",
			            pointColor: "rgba(253,180,92,1)",
			            pointStrokeColor: "#fff",
			            pointHighlightFill: "#fff",
			            pointHighlightStroke: "rgba(253,180,92,0.8)",
			            data: JSON.parse("[" + $('#dashboardCol2Sec4Canvas').attr('data-go-value-gazar') + "]")
			        }
                    //,
			        //{
			        //    label: "Явсан цаг ажилтан дундаж",
			        //    fillColor: "rgba(255,255,255,0)",
			        //    strokeColor: "rgba(148,159,177,1)",
			        //    pointColor: "rgba(148,159,177,1)",
			        //    pointStrokeColor: "#fff",
			        //    pointHighlightFill: "#fff",
			        //    pointHighlightStroke: "rgba(148,159,177,0.8)",
			        //    data: JSON.parse("[" + $('#dashboardCol2Sec4Canvas').attr('data-go-value-me') + "]")
			        //}
			    ]
		    };

		    // render chart
		    var ctx = document.getElementById("dashboardCol2Sec4Canvas").getContext("2d");
		    myNewChart_1 = new Chart(ctx).Line(lineData, lineOptions);

		    // END LINE CHART

    };
    var pagedestroy = function () {
        if (globalAjaxVar != null) {
            globalAjaxVar.abort();
            globalAjaxVar = null;
        }
    }
    pagefunction();
    String.prototype.toHHMMSS = function () {
        var sec_num = parseInt(this, 10); // don't forget the second param
        var hours = Math.floor(sec_num / 3600);
        var minutes = Math.floor((sec_num - (hours * 3600)) / 60);
        var seconds = sec_num - (hours * 3600) - (minutes * 60);

        if (hours < 10) { hours = "0" + hours; }
        if (minutes < 10) { minutes = "0" + minutes; }
        if (seconds < 10) { seconds = "0" + seconds; }
        return hours + ':' + minutes + ':' + seconds;
    }

    $("#dashboardSection2SelectType").change(function () {
        $('#dashboardSection2DivType').text($('#dashboardSection2SelectType option:selected').text());
        if ($('#dashboardSection2SelectType option:selected').val() == 1) {
            $('#dashboardSection2Description').css('display', 'block');
            $('#flotcontainer').css('display', 'block');
            for (var i = 2; i <= 12; i++) $('#flotcontainer'+i).css('display', 'none');
        }
        else if ($('#dashboardSection2SelectType option:selected').val() == 2) {
            $('#dashboardSection2Description').css('display', 'none');
            $('#flotcontainer').css('display', 'none');
            for (var i = 2; i <= 12; i++)
                if (i == $('#dashboardSection2SelectType option:selected').val()) $('#flotcontainer' + i).css('display', 'block');
                else $('#flotcontainer' + i).css('display', 'none');
        }
        else if ($('#dashboardSection2SelectType option:selected').val() == 3) {
            $('#dashboardSection2Description').css('display', 'none');
            $('#flotcontainer').css('display', 'none');
            for (var i = 2; i <= 12; i++)
                if (i == $('#dashboardSection2SelectType option:selected').val()) $('#flotcontainer' + i).css('display', 'block');
                else $('#flotcontainer' + i).css('display', 'none');
        }
        else if ($('#dashboardSection2SelectType option:selected').val() == 4) {
            $('#dashboardSection2Description').css('display', 'none');
            $('#flotcontainer').css('display', 'none');
            for (var i = 2; i <= 12; i++)
                if (i == $('#dashboardSection2SelectType option:selected').val()) $('#flotcontainer' + i).css('display', 'block');
                else $('#flotcontainer' + i).css('display', 'none');
        }
        else if ($('#dashboardSection2SelectType option:selected').val() == 5) {
            $('#dashboardSection2Description').css('display', 'none');
            $('#flotcontainer').css('display', 'none');
            for (var i = 2; i <= 12; i++)
                if (i == $('#dashboardSection2SelectType option:selected').val()) $('#flotcontainer' + i).css('display', 'block');
                else $('#flotcontainer' + i).css('display', 'none');
        }
        else if ($('#dashboardSection2SelectType option:selected').val() == 6) {
            $('#dashboardSection2Description').css('display', 'none');
            $('#flotcontainer').css('display', 'none');
            for (var i = 2; i <= 12; i++)
                if (i == $('#dashboardSection2SelectType option:selected').val()) $('#flotcontainer' + i).css('display', 'block');
                else $('#flotcontainer' + i).css('display', 'none');
        }
        else if ($('#dashboardSection2SelectType option:selected').val() == 7) {
            $('#dashboardSection2Description').css('display', 'none');
            $('#flotcontainer').css('display', 'none');
            for (var i = 2; i <= 12; i++)
                if (i == $('#dashboardSection2SelectType option:selected').val()) $('#flotcontainer' + i).css('display', 'block');
                else $('#flotcontainer' + i).css('display', 'none');
        }
        else if ($('#dashboardSection2SelectType option:selected').val() == 8) {
            $('#dashboardSection2Description').css('display', 'none');
            $('#flotcontainer').css('display', 'none');
            for (var i = 2; i <= 12; i++)
                if (i == $('#dashboardSection2SelectType option:selected').val()) $('#flotcontainer' + i).css('display', 'block');
                else $('#flotcontainer' + i).css('display', 'none');
        }
        else if ($('#dashboardSection2SelectType option:selected').val() == 9) {
            $('#dashboardSection2Description').css('display', 'none');
            $('#flotcontainer').css('display', 'none');
            for (var i = 2; i <= 12; i++)
                if (i == $('#dashboardSection2SelectType option:selected').val()) $('#flotcontainer' + i).css('display', 'block');
                else $('#flotcontainer' + i).css('display', 'none');
        }
        else if ($('#dashboardSection2SelectType option:selected').val() == 10) {
            $('#dashboardSection2Description').css('display', 'none');
            $('#flotcontainer').css('display', 'none');
            for (var i = 2; i <= 12; i++)
                if (i == $('#dashboardSection2SelectType option:selected').val()) $('#flotcontainer' + i).css('display', 'block');
                else $('#flotcontainer' + i).css('display', 'none');
        }
        else if ($('#dashboardSection2SelectType option:selected').val() == 11) {
            $('#dashboardSection2Description').css('display', 'none');
            $('#flotcontainer').css('display', 'none');
            for (var i = 2; i <= 12; i++)
                if (i == $('#dashboardSection2SelectType option:selected').val()) $('#flotcontainer' + i).css('display', 'block');
                else $('#flotcontainer' + i).css('display', 'none');
        }
        else if ($('#dashboardSection2SelectType option:selected').val() == 12) {
            $('#dashboardSection2Description').css('display', 'none');
            $('#flotcontainer').css('display', 'none');
            for (var i = 2; i <= 12; i++)
                if (i == $('#dashboardSection2SelectType option:selected').val()) $('#flotcontainer' + i).css('display', 'block');
                else $('#flotcontainer' + i).css('display', 'none');
        }
    });
    function call1() {
        loadScript("js/plugin/morris/raphael.2.1.0.min.js", loadMorrisEngine);
        $('.legend').css('display','none');
    }
    function loadMorrisEngine() {
        loadScript("js/plugin/morris/morris.min.js", runMorrisCharts);
    }
    function runMorrisCharts() {
        showLoader('loaderTotalGazar');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/dashboard_dashboardGazarTotalPlanm",
            data: '{yr:"' + $('#dashboardSection2SelectYear option:selected').val() + '", mnth:"' + $('#dashboardSection2SelectMonth option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $(function () {
                    $('#flotcontainer1').html(msg.d.split('~')[13]);
                    var c0 = $.parseJSON(msg.d.split('~')[12]);
                    var c1 = $.parseJSON(msg.d.split('~')[1]);
                    var c2 = $.parseJSON(msg.d.split('~')[2]);
                    var c3 = $.parseJSON(msg.d.split('~')[3]);
                    var c4 = $.parseJSON(msg.d.split('~')[4]);
                    var c5 = $.parseJSON(msg.d.split('~')[5]);
                    var c6 = $.parseJSON(msg.d.split('~')[6]);
                    var c7 = $.parseJSON(msg.d.split('~')[7]);
                    var c8 = $.parseJSON(msg.d.split('~')[8]);
                    var c9 = $.parseJSON(msg.d.split('~')[9]);
                    var c10 = $.parseJSON(msg.d.split('~')[10]);
                    var c11 = $.parseJSON(msg.d.split('~')[11]);
                    toggles = $("#rev-toggles"),
                    target = $("#flotcontainer");

                    var data = [{
                        label: "Нийт оноо",
                        data: c0,
                        color: '#0088CC',
                        bars: {
                            show: true,
                            align: "center",
                            barWidth: 38,
                            order: 2
                        }
                    },
                    {
                        label: "Сарын төлөвлөгөөний биелэлт",
                        data: c1,
                        color: '#a90329',
                        lines: {
                            show: true,
                            lineWidth: 2
                        },
                        points: {
                            show: true
                        }
                    },
                    {
                        label: "Жилийн төлөвлөгөөний биелэлт",
                        data: c2,
                        color: '#71843f',
                        lines: {
                            show: true,
                            lineWidth: 2
                        },
                        points: {
                            show: true
                        }
                    },
                    {
                        label: "Чиг үүргийн шалгуур үзүүлэлтийн биелэлт",
                        data: c3,
                        color: '#ac5287',
                        lines: {
                            show: true,
                            lineWidth: 2
                        },
                        points: {
                            show: true
                        }
                    },
                    {
                        label: "Сайд, ТНБД-ын тушаалын биелэлт",
                        data: c4,
                        color: '#57889c',
                        lines: {
                            show: true,
                            lineWidth: 2
                        },
                        points: {
                            show: true
                        }
                    },
                    {
                        label: "Удирдлагаас өгсөн үүрэг, даалгаварын биелэлт",
                        data: c5,
                        color: '#92a2a8',
                        lines: {
                            show: true,
                            lineWidth: 2
                        },
                        points: {
                            show: true
                        }
                    },
                    {
                        label: "Үйл ажиллагааны ил тод нээлттэй байдал",
                        data: c6,
                        color: '#4c4f53',
                        lines: {
                            show: true,
                            lineWidth: 2
                        },
                        points: {
                            show: true
                        }
                    },
                    {
                        label: "Дотоод аудитын зөвлөмжийн биелэлт",
                        data: c7,
                        color: '#568a89',
                        lines: {
                            show: true,
                            lineWidth: 2
                        },
                        points: {
                            show: true
                        }
                    },
                    {
                        label: "Ажлын цаг ашиглалт",
                        data: c8,
                        color: '#c79121',
                        lines: {
                            show: true,
                            lineWidth: 2
                        },
                        points: {
                            show: true
                        }
                    },
                    {
                        label: "Албан бичгийн шийдвэрлэлт",
                        data: c9,
                        color: '#a65858',
                        lines: {
                            show: true,
                            lineWidth: 2
                        },
                        points: {
                            show: true
                        }
                    },
                    {
                        label: "Мэдээллийн цагийн оролцоо",
                        data: c10,
                        color: '#6e587a',
                        lines: {
                            show: true,
                            lineWidth: 2
                        },
                        points: {
                            show: true
                        }
                    },
                    {
                        label: "Үйлчлүүлэгчийн үнэлгээ",
                        data: c11,
                        color: 'yellow',
                        lines: {
                            show: true,
                            lineWidth: 2
                        },
                        points: {
                            show: true
                        }
                    }];

                    var options = {
                        graph_only: true,
                        series: {
                            labels: {
                                show: true
                            }
                        },
                        grid: {
                            hoverable: true,
                            clickable: true,
                            stacked: true
                        },
                        tooltip: true,
                        hoverTip: true,
                        tooltipOpts: {
                            content: "%s: %y",
                            defaultTheme: false
                        },
                        legend: {
                            show: true
                        },
                        xaxis: {
                            mode: "data",
                            ticks: $.parseJSON(msg.d.split('~')[0])
                        },
                        yaxes: {
                            tickFormatter: function (val, axis) {
                                return "$" + val;
                            },
                            max: 880,
                            min: 0
                        }

                    };
                    plot2 = null;
                    function plotNow() {
                        var d = [];
                        toggles.find(':checkbox').each(function () {
                            if ($(this).is(':checked')) {
                                d.push(data[$(this).attr("name").substr(4, 1)]);
                            }
                        });
                        if (d.length > 0) {
                            if (plot2) {
                                plot2.setData(d);
                                plot2.draw();
                            } else {
                                plot2 = $.plot(target, d, options);
                            }
                        }

                    }
                    toggles.find(':checkbox').on('change', function () {
                        plotNow();
                    });
                    plotNow();
                    $('#dashboardSection2Tab1Head').addClass('active');
                    $('#dashboardSection2Tab2Head').removeClass('active');
                    $('#dashboardSection2Tab3Head').removeClass('active');
                    $('#s1').removeClass('fade');
                    $('#s1').addClass('active');
                    $('#s2').removeClass('active');
                    $('#s3').removeClass('active');
                    $('#dashboardSection2SelectType').val(1);
                    $('#dashboardSection2DivType').text($('#dashboardSection2SelectType option:selected').text());
                    $('#dashboardSection2Description').css('display', 'block');
                    $('#flotcontainer').css('display', 'block');
                    for (var i = 2; i <= 12; i++) $('#flotcontainer' + i).css('display', 'none');
                    hideLoader('loaderTotalGazar');
                    //setOrders()
                });
                //Sariin tuluvluguunii biyelelt
                $(function () {
                    var data1 = $.parseJSON(msg.d.split('~')[1]);
                    var ds = new Array();
                    ds.push({
                        data: data1,
                        bars: {
                            show: true,
                            barWidth: 20,
                            order: 1,
                        }
                    });
                    //Display graph
                    $.plot($("#flotcontainer2"), ds, {
                        colors: ["#a90329", "#7e9d3a", "#666", "#BBB"],
                        graph_only: true,
                        series: {
                            labels: {
                                show: true
                            }
                        },
                        grid: {
                            hoverable: true,
                            clickable: true,
                            stacked: true
                        },
                        tooltip: true,
                        hoverTip: true,
                        tooltipOpts: {
                            content: "%y",
                            defaultTheme: false
                        },
                        legend: {
                            show: true
                        },
                        xaxis: {
                            mode: "data",
                            ticks: $.parseJSON(msg.d.split('~')[0])
                        },
                        yaxes: {
                            tickFormatter: function (val, axis) {
                                return "$" + val;
                            },
                            max: 880,
                            min: 0
                        }

                    });
                });
                //Jiliin tuluvluguunii biyelelt bar chart
                $(function () {
                    var data1 = $.parseJSON(msg.d.split('~')[2]);
                    var ds = new Array();
                    ds.push({
                        data: data1,
                        bars: {
                            show: true,
                            barWidth: 20,
                            order: 1,
                        }
                    });
                    //Display graph
                    $.plot($("#flotcontainer3"), ds, {
                        colors: ["#71843f", "#7e9d3a", "#666", "#BBB"],
                        graph_only: true,
                        series: {
                            labels: {
                                show: true
                            }
                        },
                        grid: {
                            hoverable: true,
                            clickable: true,
                            stacked: true
                        },
                        tooltip: true,
                        hoverTip: true,
                        tooltipOpts: {
                            content: "%y",
                            defaultTheme: false
                        },
                        legend: {
                            show: true
                        },
                        xaxis: {
                            mode: "data",
                            ticks: $.parseJSON(msg.d.split('~')[0])
                        },
                        yaxes: {
                            tickFormatter: function (val, axis) {
                                return "$" + val;
                            },
                            max: 880,
                            min: 0
                        }

                    });
                });
                //Чиг үүргийн шалгуур үзүүлэлтийн биелэлт bar chart
                $(function () {
                    var data1 = $.parseJSON(msg.d.split('~')[3]);
                    var ds = new Array();
                    ds.push({
                        data: data1,
                        bars: {
                            show: true,
                            barWidth: 20,
                            order: 1,
                        }
                    });
                    //Display graph
                    $.plot($("#flotcontainer4"), ds, {
                        colors: ["#ac5287", "#7e9d3a", "#666", "#BBB"],
                        graph_only: true,
                        series: {
                            labels: {
                                show: true
                            }
                        },
                        grid: {
                            hoverable: true,
                            clickable: true,
                            stacked: true
                        },
                        tooltip: true,
                        hoverTip: true,
                        tooltipOpts: {
                            content: "%y",
                            defaultTheme: false
                        },
                        legend: {
                            show: true
                        },
                        xaxis: {
                            mode: "data",
                            ticks: $.parseJSON(msg.d.split('~')[0])
                        },
                        yaxes: {
                            tickFormatter: function (val, axis) {
                                return "$" + val;
                            },
                            max: 880,
                            min: 0
                        }

                    });
                });
                //Сайд, ТНБД-ын тушаалын биелэлт bar chart
                $(function () {
                    var data1 = $.parseJSON(msg.d.split('~')[4]);
                    var ds = new Array();
                    ds.push({
                        data: data1,
                        bars: {
                            show: true,
                            barWidth: 20,
                            order: 1,
                        }
                    });
                    //Display graph
                    $.plot($("#flotcontainer5"), ds, {
                        colors: ["#57889c", "#7e9d3a", "#666", "#BBB"],
                        graph_only: true,
                        series: {
                            labels: {
                                show: true
                            }
                        },
                        grid: {
                            hoverable: true,
                            clickable: true,
                            stacked: true
                        },
                        tooltip: true,
                        hoverTip: true,
                        tooltipOpts: {
                            content: "%y",
                            defaultTheme: false
                        },
                        legend: {
                            show: true
                        },
                        xaxis: {
                            mode: "data",
                            ticks: $.parseJSON(msg.d.split('~')[0])
                        },
                        yaxes: {
                            tickFormatter: function (val, axis) {
                                return "$" + val;
                            },
                            max: 880,
                            min: 0
                        }

                    });
                });
                //Удирдлагаас өгсөн үүрэг даалгаварын биелэлт bar chart
                $(function () {
                    var data1 = $.parseJSON(msg.d.split('~')[5]);
                    var ds = new Array();
                    ds.push({
                        data: data1,
                        bars: {
                            show: true,
                            barWidth: 20,
                            order: 1,
                        }
                    });
                    //Display graph
                    $.plot($("#flotcontainer6"), ds, {
                        colors: ["#92a2a8", "#7e9d3a", "#666", "#BBB"],
                        graph_only: true,
                        series: {
                            labels: {
                                show: true
                            }
                        },
                        grid: {
                            hoverable: true,
                            clickable: true,
                            stacked: true
                        },
                        tooltip: true,
                        hoverTip: true,
                        tooltipOpts: {
                            content: "%y",
                            defaultTheme: false
                        },
                        legend: {
                            show: true
                        },
                        xaxis: {
                            mode: "data",
                            ticks: $.parseJSON(msg.d.split('~')[0])
                        },
                        yaxes: {
                            tickFormatter: function (val, axis) {
                                return "$" + val;
                            },
                            max: 880,
                            min: 0
                        }

                    });
                });
                //Үйл ажиллагааны ил тод нээлттэй байдал bar chart
                $(function () {
                    var data1 = $.parseJSON(msg.d.split('~')[6]);
                    var ds = new Array();
                    ds.push({
                        data: data1,
                        bars: {
                            show: true,
                            barWidth: 20,
                            order: 1,
                        }
                    });
                    //Display graph
                    $.plot($("#flotcontainer7"), ds, {
                        colors: ["#4c4f53", "#7e9d3a", "#666", "#BBB"],
                        graph_only: true,
                        series: {
                            labels: {
                                show: true
                            }
                        },
                        grid: {
                            hoverable: true,
                            clickable: true,
                            stacked: true
                        },
                        tooltip: true,
                        hoverTip: true,
                        tooltipOpts: {
                            content: "%y",
                            defaultTheme: false
                        },
                        legend: {
                            show: true
                        },
                        xaxis: {
                            mode: "data",
                            ticks: $.parseJSON(msg.d.split('~')[0])
                        },
                        yaxes: {
                            tickFormatter: function (val, axis) {
                                return "$" + val;
                            },
                            max: 880,
                            min: 0
                        }

                    });
                });
                //Дотоод аудитын зөвлөмжийн биелэлт bar chart
                $(function () {
                    var data1 = $.parseJSON(msg.d.split('~')[7]);
                    var ds = new Array();
                    ds.push({
                        data: data1,
                        bars: {
                            show: true,
                            barWidth: 20,
                            order: 1,
                        }
                    });
                    //Display graph
                    $.plot($("#flotcontainer8"), ds, {
                        colors: ["#568a89", "#7e9d3a", "#666", "#BBB"],
                        graph_only: true,
                        series: {
                            labels: {
                                show: true
                            }
                        },
                        grid: {
                            hoverable: true,
                            clickable: true,
                            stacked: true
                        },
                        tooltip: true,
                        hoverTip: true,
                        tooltipOpts: {
                            content: "%y",
                            defaultTheme: false
                        },
                        legend: {
                            show: true
                        },
                        xaxis: {
                            mode: "data",
                            ticks: $.parseJSON(msg.d.split('~')[0])
                        },
                        yaxes: {
                            tickFormatter: function (val, axis) {
                                return "$" + val;
                            },
                            max: 880,
                            min: 0
                        }

                    });
                });
                //Ажлын цаг ашиглалт bar chart
                $(function () {
                    var data1 = $.parseJSON(msg.d.split('~')[8]);
                    var ds = new Array();
                    ds.push({
                        data: data1,
                        bars: {
                            show: true,
                            barWidth: 20,
                            order: 1,
                        }
                    });
                    //Display graph
                    $.plot($("#flotcontainer9"), ds, {
                        colors: ["#c79121", "#7e9d3a", "#666", "#BBB"],
                        graph_only: true,
                        series: {
                            labels: {
                                show: true
                            }
                        },
                        grid: {
                            hoverable: true,
                            clickable: true,
                            stacked: true
                        },
                        tooltip: true,
                        hoverTip: true,
                        tooltipOpts: {
                            content: "%y",
                            defaultTheme: false
                        },
                        legend: {
                            show: true
                        },
                        xaxis: {
                            mode: "data",
                            ticks: $.parseJSON(msg.d.split('~')[0])
                        },
                        yaxes: {
                            tickFormatter: function (val, axis) {
                                return "$" + val;
                            },
                            max: 880,
                            min: 0
                        }

                    });
                });
                //Албан бичгийн шийдвэрлэлт bar chart
                $(function () {
                    var data1 = $.parseJSON(msg.d.split('~')[9]);
                    var ds = new Array();
                    ds.push({
                        data: data1,
                        bars: {
                            show: true,
                            barWidth: 20,
                            order: 1,
                        }
                    });
                    //Display graph
                    $.plot($("#flotcontainer10"), ds, {
                        colors: ["#a65858", "#7e9d3a", "#666", "#BBB"],
                        graph_only: true,
                        series: {
                            labels: {
                                show: true
                            }
                        },
                        grid: {
                            hoverable: true,
                            clickable: true,
                            stacked: true
                        },
                        tooltip: true,
                        hoverTip: true,
                        tooltipOpts: {
                            content: "%y",
                            defaultTheme: false
                        },
                        legend: {
                            show: true
                        },
                        xaxis: {
                            mode: "data",
                            ticks: $.parseJSON(msg.d.split('~')[0])
                        },
                        yaxes: {
                            tickFormatter: function (val, axis) {
                                return "$" + val;
                            },
                            max: 880,
                            min: 0
                        }

                    });
                });
                //Мэдээллийн цагийн оролцоо bar chart
                $(function () {
                    var data1 = $.parseJSON(msg.d.split('~')[10]);
                    var ds = new Array();
                    ds.push({
                        data: data1,
                        bars: {
                            show: true,
                            barWidth: 20,
                            order: 1,
                        }
                    });
                    //Display graph
                    $.plot($("#flotcontainer11"), ds, {
                        colors: ["#6e587a", "#7e9d3a", "#666", "#BBB"],
                        graph_only: true,
                        series: {
                            labels: {
                                show: true
                            }
                        },
                        grid: {
                            hoverable: true,
                            clickable: true,
                            stacked: true
                        },
                        tooltip: true,
                        hoverTip: true,
                        tooltipOpts: {
                            content: "%y",
                            defaultTheme: false
                        },
                        legend: {
                            show: true
                        },
                        xaxis: {
                            mode: "data",
                            ticks: $.parseJSON(msg.d.split('~')[0])
                        },
                        yaxes: {
                            tickFormatter: function (val, axis) {
                                return "$" + val;
                            },
                            max: 880,
                            min: 0
                        }

                    });
                });
                //Үйлчлүүлэгчийн үнэлгээ bar chart
                $(function () {
                    var data1 = $.parseJSON(msg.d.split('~')[11]);
                    var ds = new Array();
                    ds.push({
                        data: data1,
                        bars: {
                            show: true,
                            barWidth: 20,
                            order: 1,
                        }
                    });
                    //Display graph
                    $.plot($("#flotcontainer12"), ds, {
                        colors: ["yellow", "#7e9d3a", "#666", "#BBB"],
                        graph_only: true,
                        series: {
                            labels: {
                                show: true
                            }
                        },
                        grid: {
                            hoverable: true,
                            clickable: true,
                            stacked: true
                        },
                        tooltip: true,
                        hoverTip: true,
                        tooltipOpts: {
                            content: "%y",
                            defaultTheme: false
                        },
                        legend: {
                            show: true
                        },
                        xaxis: {
                            mode: "data",
                            ticks: $.parseJSON(msg.d.split('~')[0])
                        },
                        yaxes: {
                            tickFormatter: function (val, axis) {
                                return "$" + val;
                            },
                            max: 880,
                            min: 0
                        }

                    });
                });
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login';
                else window.location = '../#pg/error500.aspx';
            }
        });        
    }
    function dataBindSection2Tab3() {
        showLoader('loaderTotalGazar');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/dashboard_dashboardGazarTotalPlanmDescription",
            data: '{yr:"' + $('#dashboardSection2SelectYear option:selected').val() + '", mnth:"' + $('#dashboardSection2SelectMonth option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $('#flotcontainer1Desc').html(msg.d);
                hideLoader('loaderTotalGazar');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }    
    $("#dashboardSection2Tab3Head").click(function () {
        if ($.trim($('#flotcontainer1Desc'))!='') dataBindSection2Tab3();
    });
    $("#dashboardSection2SelectYear").change(function () {
        call1();
    });
    $("#dashboardSection2SelectMonth").change(function () {
        call1();
    });




</script>