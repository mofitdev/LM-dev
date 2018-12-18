<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="timeqmeet.aspx.cs" Inherits="LMWebApp.pg.timeqmeet" %>
<style type="text/css">  
    div.issubmit {
        background: #d0dde7;
    }
    div.first {
        text-align:left; float:left; width:20%;
    }
    div.third {
        text-align:center; float:left; width:50%; font-size:10px; text-decoration:underline;
    }
    div.forth {
        position: absolute; margin: 15px 0 0 57px; font-size: 10px; color: #ccc;
    }
    div.second {
        text-align:right; float:right; width:30%;
    }
    div.currentDay {
        background: #ffc;
    }
    div.weekend {
        background: #f2dede;
    }
    div.weekend:hover {
        background: #ebcccc !important;
    }
    div.currentMonth {
        background:#ecf3f8 !important;
    }
    div.monthColumn {
        width:8.3%; float:left;
    }
    div.monthColumnTitle {
        line-height: 1.428571429; padding: 4px; border-right:1px solid #ccc; border-bottom:1px solid #ccc; text-align:center; font-weight:bold; background-color: #eee; background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#f2f2f2), to(#fafafa)); background-image: -webkit-linear-gradient(top, #f2f2f2 0, #fafafa 100%); background-image: -linear-gradient(top, #f2f2f2 0, #fafafa 100%);
    }
    div.monthColumnContent {
        line-height: 1.428571429; padding: 4px; border-bottom:1px solid #ccc; border-right:1px solid #ccc; min-height:35px;
    }
    div.monthColumnContent:hover {
        background: #d0dde7;
        cursor:pointer;
    }
</style>
<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
    <h1 class="page-title txt-color-blueDark">
    <i class="fa-fw fa fa-home"></i>
    <span>> Шуурхай хуралдааны ирц</span>
    </h1>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
            <ul class="nav nav-tabs bordered">
                <li class="active">
                    <a data-toggle="tab" href="#timeqmeetTab1">
                        Төлөвлөгөө
                    </a>
                </li>
                <li>
                    <a data-toggle="tab" href="#timeqmeetTab2">
                        Ирцийн мэдээлэл
                    </a>
                </li>
                <li>
                    <a data-toggle="tab" href="#timeqmeetTab3">
                        <i class="fa fa-fw fa-lg fa-file-text "></i>
                        Тайлан
                    </a>
                </li>
            </ul>
            <div id="timeqmeetTabContent" class="tab-content">
                <div id="timeqmeetTab1" class="tab-pane active">
                    <div style="width:1000px;">
                        <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                            <header>
                                <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                <h2><span id="timeqmeetCurrentYear1" runat="server">0000</span> оны мэдээллийн цагийн төлөвлөгөө </h2>
                                <div class="widget-toolbar">
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <select id="timeqmeetTab1PlanSelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                    </div> 
                                </div>
                            </header>
                            <div>
                                <div class="widget-body no-padding">
                                    <div id="timeqmeetTab1Calendar"  style="width:1000px; background:#fff; border:1px solid #ccc; border-right:none; display:block; overflow:hidden;">
                       	                <div id="loaderTab1" class="search-background">
                                            <img width="64" height="" src="img/loading.gif"/>
                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                        </div>
                                        <div class="monthColumn">
                                            <div class="monthColumnTitle">
                                                сар 1
                                            </div>
                                            <div id="timeqmeetTab1CalendarMonth1"></div>
                                        </div>
                                        <div class="monthColumn">
                                            <div class="monthColumnTitle">
                                                сар 2
                                            </div>
                                            <div id="timeqmeetTab1CalendarMonth2"></div>
                                        </div>
                                        <div class="monthColumn">
                                            <div class="monthColumnTitle">
                                                сар 3
                                            </div>
                                            <div id="timeqmeetTab1CalendarMonth3"></div>
                                        </div>
                                        <div class="monthColumn">
                                            <div class="monthColumnTitle">
                                                сар 4
                                            </div>
                                            <div id="timeqmeetTab1CalendarMonth4"></div>
                                        </div>
                                        <div class="monthColumn">
                                            <div class="monthColumnTitle">
                                                сар 5
                                            </div>
                                            <div id="timeqmeetTab1CalendarMonth5"></div>
                                        </div>
                                        <div class="monthColumn">
                                            <div class="monthColumnTitle">
                                                сар 6
                                            </div>
                                            <div id="timeqmeetTab1CalendarMonth6"></div>
                                        </div>
                                        <div class="monthColumn">
                                            <div class="monthColumnTitle">
                                                сар 7
                                            </div>
                                            <div id="timeqmeetTab1CalendarMonth7"></div>
                                        </div>
                                        <div class="monthColumn">
                                            <div class="monthColumnTitle">
                                                сар 8
                                            </div>
                                            <div id="timeqmeetTab1CalendarMonth8"></div>
                                        </div>
                                        <div class="monthColumn">
                                            <div class="monthColumnTitle">
                                                сар 9
                                            </div>
                                            <div id="timeqmeetTab1CalendarMonth9"></div>
                                        </div>
                                        <div class="monthColumn">
                                            <div class="monthColumnTitle">
                                                сар 10
                                            </div>
                                            <div id="timeqmeetTab1CalendarMonth10"></div>
                                        </div>
                                        <div class="monthColumn">
                                            <div class="monthColumnTitle">
                                                сар 11
                                            </div>
                                            <div id="timeqmeetTab1CalendarMonth11"></div>
                                        </div>
                                        <div class="monthColumn">
                                            <div class="monthColumnTitle">
                                                сар 12
                                            </div>
                                            <div id="timeqmeetTab1CalendarMonth12"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="timeqmeetTab2" class="tab-pane fade">
                    <div style="width:70%;">
                        <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                            <header>
                                <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                <h2><span id="timeqmeetCurrentYear2" runat="server">0000</span> оны мэдээллийн цагийн ирц </h2>
                                <div class="widget-toolbar">
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <select id="timeqmeetTab2PlanSelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                    </div> 
                                </div>
                            </header>
                            <div>
                                <div class="Colvis TableTools" style="width:80px; top:6px; z-index:5; right:85px;">
                                    <select id="timeqmeetTab2SelectHeltes" name="timeqmeetTab2SelectHeltes" runat="server" class="form-control" style="padding:1px;" disabled><option value="0">Бүгд</option></select>
                                </div>
                                <div class="Colvis TableTools" style="right:168px; top:4px; z-index:5; margin-top:7px;">
                                    <label>Хэлтэс: </label>
                                </div>
                                <div class="Colvis TableTools" style="width:80px; top:6px; z-index:5; right:220px;">
                                    <select id="timeqmeetTab2SelectGazar" name="timeqmeetTab2SelectGazar" runat="server" class="form-control" style="padding:1px;"></select>
                                </div>
                                <div class="Colvis TableTools" style="right:303px; top:4px; z-index:5; margin-top:7px;">
                                    <label>Газар: </label>
                                </div>                                    
                                <div class="Colvis TableTools" style="width:110px; top:6px; z-index:5; right:350px;">
                                    <select id="timeqmeetTab2SelectDate" name="timeqmeetTab2SelectDate" runat="server" class="form-control" style="padding:1px;"></select>
                                </div>
                                <div class="Colvis TableTools" style="right:462px; top:4px; z-index:5; margin-top:7px;">
                                    <label>Өдөр: </label>
                                </div>                                   
                                <div class="Colvis TableTools" style="width:75px; top:6px; z-index:5; right:505px;">
                                    <select id="timeqmeetTab2SelectMonth" name="timeqmeetTab2SelectMonth" runat="server" class="form-control" style="padding:1px;"><option value="1">сар 1</option><option value="2">сар 2</option><option value="3">сар 3</option><option value="4">сар 4</option><option value="5">сар 5</option><option value="6">сар 6</option><option value="7">сар 7</option><option value="8">сар 8</option><option value="9">сар 9</option><option value="10">сар 10</option><option value="11">сар 11</option><option value="12">сар 12</option></select>
                                </div>
                                <div class="Colvis TableTools" style="right:583px; top:4px; z-index:5; margin-top:7px;">
                                    <label>Сар: </label>
                                </div>
                                <div id="loaderTab2" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divBindTab2Table" runat="server" class="widget-body no-padding">
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="timeqmeetTab3" class="tab-pane fade">
                    <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                        <div style="width:70%; float:left;">
                            <div style="width:70px; float:left; margin-right:10px;"><select id="timeqmeetTab3SelectMonth" name="timeqmeetTab3SelectMonth" runat="server" class="form-control" style="padding:1px"><option value="1">1 сар</option><option value="2">2 сар</option><option value="3">3 сар</option><option value="4">4 сар</option><option value="5">5 сар</option><option value="6">6 сар</option><option value="7">7 сар</option><option value="8">8 сар</option><option value="9">9 сар</option><option value="10">10 сар</option><option value="11">11 сар</option><option value="12">12 сар</option></select></div>
                            <div style="width:60px; float:left; margin-right:10px;"><select id="timeqmeetTab3SelectYear" name="timeqmeetTab3SelectYear" runat="server" class="form-control" style="padding:1px"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option></select></div>
                        </div>
                        <div style="text-align:right; width:30%; float:left;">
                            <img id="timeqmeetTab3ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" title="PDF руу татах" onclick="exportPdf('#divtimeqmeetTab3')" />
                            <img id="timeqmeetTab3ExportWord" src="../img/word-icon.png" style="cursor:pointer;" title="Word руу татах" onclick="exportWord('#divtimeqmeetTab3')"/>
                            <img id="timeqmeetTab3ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" title="Excel руу татах" onclick="exportExcel('#divtimeqmeetTab3')"/>
                            <button id="timeqmeetTab3Print" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divtimeqmeetTab3')"><span class="fa fa-print"></span> Хэвлэх </button>
                            <button id="timeqmeetTab3Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                        </div>
                    </div>
                    <div id="loaderTab3" class="search-background">
                        <label>
                            <img width="64" height="" src="img/loading.gif"/>
                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                        </label>
                    </div> 
                    <div id="divtimeqmeetTab3" runat="server" class="reports" style="margin:0 10px 10px 10px;">                        
                        <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Тайлант сард  <label id="divtimeqmeetTab3Year" runat="server" style="font-weight:bold;">0000</label> оны <label id="divtimeqmeetTab3Month" runat="server" style="font-weight:bold;">00</label> дугаар сарын <label id="divtimeqmeetTab3Dates" runat="server" style="font-weight:bold;">00,00,00</label> -ны өдрүүдэд <label id="divtimeqmeetTab3Datescnt" runat="server" style="font-weight:bold;">0</label> удаагийн шуурхай хуралдааны цаг зохион байгуулсан байна. Газруудын мэдээллийн цагийн оролцоог <label id="divtimeqmeetTab3Type" runat="server">type</label> үзүүлбэл:
                        </div>
                        <div id="divtimeqmeetTab3Datatable" runat="server" style="display:block;"></div> 
                        <div id="divtimeqmeetTab3Chart" style="display:block;"></div>    
                        <div style="text-align:left;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Яамны ажилтануудын <label id="divtimeqmeetTab3MissPer" runat="server" style="font-weight:bold;">00.0</label> хувь нь өвчтэй, чөлөөтэй, ээлжийн амралттай, сургалттай, албан томилолттой гэх мэт шалтгаантай мэдээллийн цагт оролцоогүй бөгөөд <label id="divtimeqmeetTab3TasPer" runat="server" style="font-weight:bold;">00.0</label> хувь нь таслалттай ба нийт оролцох албан хаагчдын <label id="divtimeqmeetTab3CamePer" runat="server" style="font-weight:bold;">00.0</label> хувь нь оролцсон байна.
                        </div>                          
                    </div>
                </div>
            </div>
        </article>
    </div>
</section>
<script>
    //pageSetUp();
    var globalAjaxVar = null;
    var pagefunction = function () {
        drawTable($("#timeqmeetTab1PlanSelectYear option:selected").val());
        timeqmeetTab2SetFirstControls();
        dataBindTab3Datatable();
    }
    var pagedestroy = function () {
        if (globalAjaxVar != null) {
            globalAjaxVar.abort();
            globalAjaxVar = null;
        }
    }
    pagefunction();
    //$(document).ready(function () {
    //    drawTable($("#timeqmeetTab1PlanSelectYear option:selected").val());
    //    dataBindTab2DateList();
    //    dataBindTab3Datatable();
    //});
    function drawTable(yr) {
        $('#timeqmeetTab1CalendarMonth1').html("");
        $('#timeqmeetTab1CalendarMonth2').html("");
        $('#timeqmeetTab1CalendarMonth3').html("");
        $('#timeqmeetTab1CalendarMonth4').html("");
        $('#timeqmeetTab1CalendarMonth5').html("");
        $('#timeqmeetTab1CalendarMonth6').html("");
        $('#timeqmeetTab1CalendarMonth7').html("");
        $('#timeqmeetTab1CalendarMonth8').html("");
        $('#timeqmeetTab1CalendarMonth9').html("");
        $('#timeqmeetTab1CalendarMonth10').html("");
        $('#timeqmeetTab1CalendarMonth11').html("");
        $('#timeqmeetTab1CalendarMonth12').html("");
        var date = new Date();
        var d = date.getDate();
        var m = date.getMonth();
        var y = date.getFullYear();
        var d0;
        var arrDatas;
        showLoader('loaderTab1');
        for (var i = 1; i < 32; i++) {
            d0 = new Date(parseInt($('#timeqmeetTab1PlanSelectYear option:selected').val()), 0, i);
            if (d0.getDay() != 6 && d0.getDay() != 0) $('#timeqmeetTab1CalendarMonth1').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("1", "Да").replace("2", "Мя").replace("3", "Лх").replace("4", "Пү").replace("5", "Ба") + "</div></div>");
            else $('#timeqmeetTab1CalendarMonth1').append("<div class=\"monthColumnContent weekend\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("6", "Бя").replace("0", "Ня") + "</div></div>");
            d0 = new Date(parseInt($('#timeqmeetTab1PlanSelectYear option:selected').val()), 1, i);
            if (d0.getDay() != 6 && d0.getDay() != 0) {
                if (i <= Math.round(((new Date(yr, 2)) - (new Date(yr, 2 - 1))) / 86400000)) $('#timeqmeetTab1CalendarMonth2').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("1", "Да").replace("2", "Мя").replace("3", "Лх").replace("4", "Пү").replace("5", "Ба") + "</div></div>");
                else $('#timeqmeetTab1CalendarMonth2').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"></div>");
            }
            else $('#timeqmeetTab1CalendarMonth2').append("<div class=\"monthColumnContent weekend\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("6", "Бя").replace("0", "Ня") + "</div></div>");
            d0 = new Date(parseInt($('#timeqmeetTab1PlanSelectYear option:selected').val()), 2, i);
            if (d0.getDay() != 6 && d0.getDay() != 0) $('#timeqmeetTab1CalendarMonth3').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("1", "Да").replace("2", "Мя").replace("3", "Лх").replace("4", "Пү").replace("5", "Ба") + "</div></div>");
            else $('#timeqmeetTab1CalendarMonth3').append("<div class=\"monthColumnContent weekend\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("6", "Бя").replace("0", "Ня") + "</div></div>");
            d0 = new Date(parseInt($('#timeqmeetTab1PlanSelectYear option:selected').val()), 3, i);
            if (d0.getDay() != 6 && d0.getDay() != 0) {
                if (i < 31) $('#timeqmeetTab1CalendarMonth4').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("1", "Да").replace("2", "Мя").replace("3", "Лх").replace("4", "Пү").replace("5", "Ба") + "</div></div>");
                else $('#timeqmeetTab1CalendarMonth4').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"></div>");
            }
            else $('#timeqmeetTab1CalendarMonth4').append("<div class=\"monthColumnContent weekend\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("6", "Бя").replace("0", "Ня") + "</div></div>");
            d0 = new Date(parseInt($('#timeqmeetTab1PlanSelectYear option:selected').val()), 4, i);
            if (d0.getDay() != 6 && d0.getDay() != 0) $('#timeqmeetTab1CalendarMonth5').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("1", "Да").replace("2", "Мя").replace("3", "Лх").replace("4", "Пү").replace("5", "Ба") + "</div></div>");
            else $('#timeqmeetTab1CalendarMonth5').append("<div class=\"monthColumnContent weekend\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("6", "Бя").replace("0", "Ня") + "</div></div>");
            d0 = new Date(parseInt($('#timeqmeetTab1PlanSelectYear option:selected').val()), 5, i);
            if (d0.getDay() != 6 && d0.getDay() != 0) {
                if (i < 31) $('#timeqmeetTab1CalendarMonth6').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("1", "Да").replace("2", "Мя").replace("3", "Лх").replace("4", "Пү").replace("5", "Ба") + "</div></div>");
                else $('#timeqmeetTab1CalendarMonth6').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"></div>");
            }
            else $('#timeqmeetTab1CalendarMonth6').append("<div class=\"monthColumnContent weekend\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("6", "Бя").replace("0", "Ня") + "</div></div>");
            d0 = new Date(parseInt($('#timeqmeetTab1PlanSelectYear option:selected').val()), 6, i);
            if (d0.getDay() != 6 && d0.getDay() != 0) $('#timeqmeetTab1CalendarMonth7').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("1", "Да").replace("2", "Мя").replace("3", "Лх").replace("4", "Пү").replace("5", "Ба") + "</div></div>");
            else $('#timeqmeetTab1CalendarMonth7').append("<div class=\"monthColumnContent weekend\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("6", "Бя").replace("0", "Ня") + "</div></div>");
            d0 = new Date(parseInt($('#timeqmeetTab1PlanSelectYear option:selected').val()), 7, i);
            if (d0.getDay() != 6 && d0.getDay() != 0) $('#timeqmeetTab1CalendarMonth8').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("1", "Да").replace("2", "Мя").replace("3", "Лх").replace("4", "Пү").replace("5", "Ба") + "</div></div>");
            else $('#timeqmeetTab1CalendarMonth8').append("<div class=\"monthColumnContent weekend\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("6", "Бя").replace("0", "Ня") + "</div></div>");
            d0 = new Date(parseInt($('#timeqmeetTab1PlanSelectYear option:selected').val()), 8, i);
            if (d0.getDay() != 6 && d0.getDay() != 0) {
                if (i < 31) $('#timeqmeetTab1CalendarMonth9').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("1", "Да").replace("2", "Мя").replace("3", "Лх").replace("4", "Пү").replace("5", "Ба") + "</div></div>");
                else $('#timeqmeetTab1CalendarMonth9').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"></div>");
            }
            else $('#timeqmeetTab1CalendarMonth9').append("<div class=\"monthColumnContent weekend\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("6", "Бя").replace("0", "Ня") + "</div></div>");
            d0 = new Date(parseInt($('#timeqmeetTab1PlanSelectYear option:selected').val()), 9, i);
            if (d0.getDay() != 6 && d0.getDay() != 0) $('#timeqmeetTab1CalendarMonth10').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("1", "Да").replace("2", "Мя").replace("3", "Лх").replace("4", "Пү").replace("5", "Ба") + "</div></div>");
            else $('#timeqmeetTab1CalendarMonth10').append("<div class=\"monthColumnContent weekend\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("6", "Бя").replace("0", "Ня") + "</div></div>");
            d0 = new Date(parseInt($('#timeqmeetTab1PlanSelectYear option:selected').val()), 10, i);
            if (d0.getDay() != 6 && d0.getDay() != 0) {
                if (i < 31) $('#timeqmeetTab1CalendarMonth11').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("1", "Да").replace("2", "Мя").replace("3", "Лх").replace("4", "Пү").replace("5", "Ба") + "</div></div>");
                else $('#timeqmeetTab1CalendarMonth11').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"></div>");
            }
            else $('#timeqmeetTab1CalendarMonth11').append("<div class=\"monthColumnContent weekend\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("6", "Бя").replace("0", "Ня") + "</div></div>");
            d0 = new Date(parseInt($('#timeqmeetTab1PlanSelectYear option:selected').val()), 11, i);
            if (d0.getDay() != 6 && d0.getDay() != 0) $('#timeqmeetTab1CalendarMonth12').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("1", "Да").replace("2", "Мя").replace("3", "Лх").replace("4", "Пү").replace("5", "Ба") + "</div></div>");
            else $('#timeqmeetTab1CalendarMonth12').append("<div class=\"monthColumnContent weekend\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("6", "Бя").replace("0", "Ня") + "</div></div>");
        }
        $('#timeqmeetTab1CalendarMonth' + (m + 1)).addClass("currentMonth");
        $('#timeqmeetTab1CalendarMonth' + (m + 1)).find('.monthColumnContent').each(function (index) {
            if ($('div:eq(2)', this).html() == d) {
                $(this).addClass("currentDay");
            }
        });
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TimeqmeetTab1Calendar",
            data: '{"yr":"' + $("#timeqmeetTab1PlanSelectYear option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != "[]") {
                    arrDatas = JSON.parse(data.d);
                    for (var i = 0; i < arrDatas.length; i++) {
                        $("#timeqmeetTab1CalendarMonth" + arrDatas[i][0]).find(".monthColumnContent:eq(" + getIndexOf(arrDatas[i][0], arrDatas[i][1]) + ")").addClass("issubmit");
                        $("#timeqmeetTab1CalendarMonth" + arrDatas[i][0]).find(".monthColumnContent:eq(" + getIndexOf(arrDatas[i][0], arrDatas[i][1]) + ")").find("div:eq(0)").html("<i class=\"fa fa-check-square\"></i>");
                    }
                }
                hideLoader('loaderTab1');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function monthColumnContentOnMouseOver(el) {
        if ($(el).find("div:eq(0)").html() == "&nbsp;") {
            $(el).find("div:eq(1)").html("сонгох");
            $(el).find("div:eq(1)").css("color", "darkgreen");
        }
        else {
            $(el).find("div:eq(1)").html("болих");
            $(el).find("div:eq(1)").css("color", "darkred");
        }
    }
    function monthColumnContentOnMouseOut(el) {
        $(el).find("div:eq(1)").html("");
    }
    function monthColumnContentOnClick(el) {
        if (funcCheckRoles('1,10')) {
            var qry = "";
            if ($(el).find("div:eq(0)").html() == "&nbsp;") {
                $(el).find("div:eq(0)").html("<i class=\"fa fa-check-square\"></i>");
                $(el).addClass("issubmit");
                qry = "INSERT INTO TBL_TIMEQMEET VALUES (TO_DATE('" + $("#timeqmeetTab1PlanSelectYear option:selected").val() + "-" + $(el).parent().attr("id").replace(/timeqmeetTab1CalendarMonth/g, '') + "-" + $(el).find("div:eq(2)").html() + "','YYYY-MM-DD'))";
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"' + qry + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        smallBox('Шуурхай хуралдааны ирцийн төлөвлөгөө', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        window.location = '../#pg/error500.aspx';
                    }
                });
            }
            else {
                qry = "DELETE FROM TBL_TIMEQMEET WHERE DT=TO_DATE('" + $("#timeqmeetTab1PlanSelectYear option:selected").val() + "-" + $(el).parent().attr("id").replace(/timeqmeetTab1CalendarMonth/g, '') + "-" + $(el).find("div:eq(2)").html() + "','YYYY-MM-DD')";
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                    data: '{"qry":"SELECT COUNT(1) FROM TBL_TIMEQMEET_ATTEN WHERE DT=TO_DATE(\'' + $("#timeqmeetTab1PlanSelectYear option:selected").val() + "-" + $(el).parent().attr("id").replace(/timeqmeetTab1CalendarMonth/g, '') + '-' + $(el).find("div:eq(2)").html() + '\',\'YYYY-MM-DD\')"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        if (data.d == "0") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"' + qry + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    $(el).find("div:eq(0)").html("&nbsp;");
                                    $(el).removeClass("issubmit");
                                    smallBox('Шуурхай хуралдааны ирцийн төлөвлөгөө', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                                },
                                failure: function (response) {
                                    alert('FAILURE: ' + response.d);
                                },
                                error: function (xhr, status, error) {
                                    window.location = '../#pg/error500.aspx';
                                }
                            });
                        }
                        else {
                            alert('Энэ өдөр ирц орсон тул устгах боломжгүй байна!');
                        }
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        window.location = '../#pg/error500.aspx';
                    }
                });
            }
        }
        else alert('Танд төлөвлөх эрх байхгүй байна!');
    }
    function getIndexOf(m, d) {
        var rVal = 0;
        $('#timeqmeetTab1CalendarMonth' + m).find('.monthColumnContent').each(function (index) {
            if ($('div:eq(2)', this).html() == d) {
                rVal = parseInt(index);
            }
        });
        return rVal;
    }
    $("#timeqmeetTab1PlanSelectYear").change(function () {
        drawTable($(this).val());
        $('#timeqmeetCurrentYear1').text($(this).val());
    });

    //tab2
    function timeqmeetTab2SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr":"' + $('#timeqmeetTab2PlanSelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#timeqmeetTab2SelectGazar").html('<option value="">Бүгд</option>' + valData);
                if (!funcCheckRoles('1,14')) {
                    $('#timeqmeetTab2SelectGazar').prop('disabled', true);
                    $('#timeqmeetTab2SelectGazar').val(userGazarId);
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                        data: '{"yr":"' + $("#timeqmeetTab2PlanSelectYear option:selected").val() + '", "gazar":"' + $("#timeqmeetTab2SelectGazar option:selected").val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            valData = '';
                            $($.parseJSON(data.d)).each(function (index, value) {
                                valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                            });
                            $("#timeqmeetTab2SelectHeltes").html('<option value="">Бүгд</option>' + data.d);
                            if (!funcCheckRoles('1,14')) {
                                $('#timeqmeetTab2SelectHeltes').prop('disabled', true);
                                $('#timeqmeetTab2SelectHeltes').val(userHeltesId);
                            }
                            else {
                                $('#timeqmeetTab2SelectHeltes').prop('disabled', false);
                            }
                            dataBindTab2DateList();
                        },
                        failure: function (response) {
                            alert('FAILURE: ' + response.d);
                        },
                        error: function (xhr, status, error) {
                            window.location = '../#pg/error500.aspx';
                        }
                    });
                }
                else {
                    $('#timeqmeetTab2SelectGazar').prop('disabled', false);
                    dataBindTab2DateList()
                }
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab2DateList() {
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TimeqmeetDateListForDDL",
            data: '{"yr":"' + $("#timeqmeetTab2PlanSelectYear option:selected").val() + '", "mnth":"' + $("#timeqmeetTab2SelectMonth option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.D + '" title="' + value.DT + '">' + value.DT + '</option>';
                });
                $("#timeqmeetTab2SelectDate").html(valData);
                dataBindTab2Datatable();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab2HeltesList() {
        var valData = '';
        if ($("#timeqmeetTab2SelectGazar option:selected").val() == "") {
            $("#timeqmeetTab2SelectHeltes").html("<option selected value=\"\">Бүгд</option>");
            $("#timeqmeetTab2SelectHeltes").prop("disabled", true);
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr":"' + $("#timeqmeetTab2PlanSelectYear option:selected").val() + '", "gazar":"' + $("#timeqmeetTab2SelectGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    });
                    $("#timeqmeetTab2SelectHeltes").html(valData);
                    $("#timeqmeetTab2SelectHeltes").prop("disabled", false);
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
        }
    }
    $("#timeqmeetTab2SelectGazar").change(function () {
        dataBindTab2HeltesList();
        dataBindTab2Datatable();
    });
    $("#timeqmeetTab2SelectHeltes").change(function () {
        dataBindTab2Datatable();
    });
    $("#timeqmeetTab2SelectMonth").change(function () {
        dataBindTab2DateList();
    });
    $("#timeqmeetTab2SelectDate").change(function () {
        dataBindTab2Datatable();
    });
    $("#timeqmeetTab2PlanSelectYear").change(function () {
        $("#timeqmeetTab2SelectMonth").val(1);
        timeqmeetTab2SetFirstControls();
        $("#timeqmeetCurrentYear2").text($(this).val());
    });
    function dataBindTab2Datatable() {
        var valData = '';
        var isDisabled = "";
        var inoutcolor = "";
        showLoader('loaderTab2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TimeqmeetTab2Datatable",
            data: '{"yr":"' + $("#timeqmeetTab2PlanSelectYear option:selected").val() + '", "mnth":"' + $("#timeqmeetTab2SelectMonth option:selected").val() + '", "day":"' + $("#timeqmeetTab2SelectDate option:selected").val() + '", "gazar":"' + $("#timeqmeetTab2SelectGazar option:selected").val() + '", "heltes":"' + $("#timeqmeetTab2SelectHeltes option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (funcCheckRoles('1,14')) {
                    isDisabled = " disabled=\"disabled\"";
                }
                valData += "<table id=\"timeinfoTab2Datatable\" class=\"table table-striped table-bordered table-hover smart-form\" width=\"100%\">";
                valData += "<thead>";
                valData += "<tr>";
                valData += "<th class=\"hide\"></th>";
                valData += "<th>#</th>";
                valData += "<th>Сар</th>";
                valData += "<th>Өдөр</th>";
                valData += "<th>Нэгж</th>";
                valData += "<th>Албан тушаал</th>";
                valData += "<th>Нэр</th>";
                valData += "<th>Төрөл</th>";
                valData += "<th>Ирц</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                if ($("#timeinfoTab2SelectDate option:selected").val() != "") {
                    $($.parseJSON(data.d)).each(function (index, value) {
                        if (value.TP == "13") { inoutcolor = " color:#ac5287;"; }
                        else if (value.TP == "21") { inoutcolor = " color:#496949;"; }
                        else if (value.TP == "11" || value.TP == "12") { inoutcolor = " color:#a57225;"; }
                        else if (value.TP == "31") { inoutcolor = " color:#57889c;"; }
                        valData += "<tr>";
                        valData += "<td class=\"hide\">" + value.ST_ID + "</td>";
                        valData += "<td>" + value.ROWNO + "</td>";
                        valData += "<td>" + value.MNTH + "</td>";
                        valData += "<td>" + value.DT + "</td>";
                        valData += "<td>" + value.NEGJ + "</td>";
                        valData += "<td>" + value.POSNAME + "</td>";
                        valData += "<td>" + value.STAFFNAME + "</td>";
                        valData += "<td style=\"font-style:italic;" + inoutcolor + "\">";
                        if (value.TPNAME == "")
                            valData += "Идэвхтэй";
                        else
                            valData += value.TPNAME;
                        valData += "</td>";
                        if (value.TP == "") {
                            if (value.ISCAME == "0") valData += "<td><label class=\"checkbox\"><input" + isDisabled + " type=\"checkbox\" name=\"checkbox\" onclick=\"timeinfoIsAttenCheckbox(this)\"/><i></i></label></td>";
                            else valData += "<td><label class=\"checkbox\"><input" + isDisabled + " checked=\"checked\" type=\"checkbox\" name=\"checkbox\" onclick=\"timeinfoIsAttenCheckbox(this)\"/><i></i></label></td>";
                        }
                        else valData += "<td></td>";
                        valData += "</tr>";
                    });
                }
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_timeinfoTab2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#timeinfoTab2Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_timeinfoTab2Datatable) {responsiveHelper_timeinfoTab2Datatable = new ResponsiveDatatablesHelper($('#timeinfoTab2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_timeinfoTab2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_timeinfoTab2Datatable.respond();}});";
                valData += "<\/script>";
                $("#divBindTab2Table").html(valData);
                hideLoader('loaderTab2');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function timeqmeetIsAttenCheckbox(el) {
        if ($(el).prop('checked')) {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                data: '{"qry":"DELETE FROM TBL_TIMEQMEET_ATTEN WHERE ST_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND DT=TO_DATE(\'' + $("#timeqmeetTab2SelectDate option:selected").text() + '\',\'YYYY-MM-DD\')"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                        data: '{"qry":"INSERT INTO TBL_TIMEQMEET_ATTEN VALUES (' + $(el).closest('tr').find('td:eq(0)').text() + ', TO_DATE(\'' + $("#timeqmeetTab2SelectDate option:selected").text() + '\',\'YYYY-MM-DD\'))"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            smallBox('Шуурхай хуралдааны ирц', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                        },
                        failure: function (response) {
                            alert('FAILURE: ' + response.d);
                        },
                        error: function (xhr, status, error) {
                            window.location = '../#pg/error500.aspx';
                        }
                    });
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });            
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                data: '{"qry":"DELETE FROM TBL_TIMEQMEET_ATTEN WHERE ST_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND DT=TO_DATE(\'' + $("#timeqmeetTab2SelectDate option:selected").text() + '\',\'YYYY-MM-DD\')"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    smallBox('Шуурхай хуралдааны ирц', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
        }
    }

    //tab3
    $("#timeqmeetTab3SelectYear").change(function () {
        $("#divtimeqmeetTab3Year").text($(this).val());
        timeqmeetSetDatas();
        $('#divtimeqmeetTab3Chart').css("display", "none");
        $('#divtimeqmeetTab3Datatable').css("display", "block");
    });
    $("#timeqmeetTab3SelectMonth").change(function () {
        $("#divtimeqmeetTab3Month").text($(this).val());
        timeqmeetSetDatas();
        $('#divtimeqmeetTab3Chart').css("display", "none");
        $('#divtimeqmeetTab3Datatable').css("display", "block");
    });
    function timeqmeetSetDatas() {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT NVL(RTRIM(xmlagg (xmlelement (e, TO_CHAR(DT,\'DD\') || \',\') ORDER BY DT).extract(\'//text()\'), \',\'),\'none\')||\'~\'||COUNT(DT) as CNT FROM TBL_TIMEQMEET WHERE TO_NUMBER(TO_CHAR(DT, \'YYYY\'))=' + $("#timeqmeetTab3SelectYear option:selected").val() + ' AND TO_NUMBER(TO_CHAR(DT, \'MM\'))=' + $("#timeqmeetTab3SelectMonth option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $('#divtimeqmeetTab3Dates').text(data.d.split('~')[0].replace("none", ""));
                $('#divtimeqmeetTab3Datescnt').text(data.d.split('~')[1]);
                dataBindTab3Datatable();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab3Datatable() {
        showLoader('loaderTab3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TimeqmeetTab3Datatable",
            data: '{"yr":"' + $("#timeqmeetTab3SelectYear option:selected").val() + '", "mnth":"' + $("#timeqmeetTab3SelectMonth option:selected").val() + '", "dates":"' + $('#divtimeqmeetTab3Dates').text() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $("#divtimeqmeetTab3Datatable").html(data.d);
                timeqmeetTab3SetDatas1();
                hideLoader('loaderTab3');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function timeqmeetTab3SetDatas1() {
        if ($('#divtimeqmeetTab3Dates').text() != "") {
            var arrDates = $('#divtimeqmeetTab3Dates').text().split(',');
            var loopi = 0;
            var total = 0;
            var activetotal = 0;
            var came = 0;
            for (var i = 1; i <= arrDates.length; i++) {
                total += parseInt($('#timeqmeetTab3Datatable > tfoot > tr').find('td:eq(' + (i + loopi) + ')').html());
                activetotal += parseInt($('#timeqmeetTab3Datatable > tfoot > tr').find('td:eq(' + (i + 1 + loopi) + ')').html());
                came += parseInt($('#timeqmeetTab3Datatable > tfoot > tr').find('td:eq(' + (i + 2 + loopi) + ')').html());
                loopi += 2;
            }
            $('#divtimeqmeetTab3MissPer').text((parseFloat(100) - ((parseFloat(activetotal) / parseFloat(total)) * parseFloat(100))).toFixed(2));
            $('#divtimeqmeetTab3TasPer').text(100 - ((came / activetotal) * 100).toFixed(2));
            $('#divtimeqmeetTab3CamePer').text(((parseFloat(came) / parseFloat(activetotal)) * parseFloat(100)).toFixed(2));
        }
        else {
            $('#divtimeqmeetTab3MissPer').text(0);
            $('#divtimeqmeetTab3TasPer').text(0);
            $('#divtimeqmeetTab3CamePer').text(0);
        }
    }
    $("#timeqmeetTab3Refresh").click(function () {
        $('#timeqmeetTab3SelectYear').val($('#indexCurrentYear').text());
        $('#timeqmeetTab3SelectMonth').val($('#indexCurrentMonth').text());
        $('#divtimeqmeetTab3Chart').css("display", "none");
        $('#divtimeqmeetTab3Datatable').css("display", "block");
        timeqmeetSetDatas();
    });
</script>