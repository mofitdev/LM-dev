<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="timeinfo.aspx.cs" Inherits="LMWebApp.pg.timeinfo" %>
<style type="text/css">  
    div.issubmit {
        background: #d6dde7;
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
        background: #ebcccc;
    }
    div.currentMonth {
        background:#ecf3f8;
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
        background: #d6dde7;
        cursor:pointer;
    }
</style>
<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
    <h1 class="page-title txt-color-blueDark">
    <i class="fa-fw fa fa-home"></i>
    <span>> Мэдээллийн цаг</span>
    </h1>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
            <ul class="nav nav-tabs bordered">
                <li class="active">
                    <a data-toggle="tab" href="#timeinfoTab1">
                        Төлөвлөгөө
                    </a>
                </li>
                <li>
                    <a data-toggle="tab" href="#timeinfoTab2">
                        Ирцийн мэдээлэл
                    </a>
                </li>
                <li>
                    <a data-toggle="tab" href="#timeinfoTab3">
                        <i class="fa fa-fw fa-lg fa-file-text "></i>
                        Тайлан
                    </a>
                </li>
            </ul>
            <div id="timeinfoTabContent" class="tab-content">
                <div id="timeinfoTab1" class="tab-pane active">
                    <div style="width:1000px;">
                        <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                            <header>
                                <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                <h2><span id="timeinfoCurrentYear1" runat="server">0000</span> оны мэдээллийн цагийн төлөвлөгөө </h2>
                                <div class="widget-toolbar">
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <select id="timeinfoTab1PlanSelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                    </div> 
                                </div>
                            </header>
                            <div>
                                <div class="widget-body no-padding">
                                    <div id="timeinfoTab1Calendar"  style="width:1000px; background:#fff; border:1px solid #ccc; border-right:none; display:block; overflow:hidden;">
                       	                <div id="loaderTab1" class="search-background">
                                            <img width="64" height="" src="img/loading.gif"/>
                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                        </div>
                                        <div class="monthColumn">
                                            <div class="monthColumnTitle">
                                                сар 1
                                            </div>
                                            <div id="timeinfoTab1CalendarMonth1"></div>
                                        </div>
                                        <div class="monthColumn">
                                            <div class="monthColumnTitle">
                                                сар 2
                                            </div>
                                            <div id="timeinfoTab1CalendarMonth2"></div>
                                        </div>
                                        <div class="monthColumn">
                                            <div class="monthColumnTitle">
                                                сар 3
                                            </div>
                                            <div id="timeinfoTab1CalendarMonth3"></div>
                                        </div>
                                        <div class="monthColumn">
                                            <div class="monthColumnTitle">
                                                сар 4
                                            </div>
                                            <div id="timeinfoTab1CalendarMonth4"></div>
                                        </div>
                                        <div class="monthColumn">
                                            <div class="monthColumnTitle">
                                                сар 5
                                            </div>
                                            <div id="timeinfoTab1CalendarMonth5"></div>
                                        </div>
                                        <div class="monthColumn">
                                            <div class="monthColumnTitle">
                                                сар 6
                                            </div>
                                            <div id="timeinfoTab1CalendarMonth6"></div>
                                        </div>
                                        <div class="monthColumn">
                                            <div class="monthColumnTitle">
                                                сар 7
                                            </div>
                                            <div id="timeinfoTab1CalendarMonth7"></div>
                                        </div>
                                        <div class="monthColumn">
                                            <div class="monthColumnTitle">
                                                сар 8
                                            </div>
                                            <div id="timeinfoTab1CalendarMonth8"></div>
                                        </div>
                                        <div class="monthColumn">
                                            <div class="monthColumnTitle">
                                                сар 9
                                            </div>
                                            <div id="timeinfoTab1CalendarMonth9"></div>
                                        </div>
                                        <div class="monthColumn">
                                            <div class="monthColumnTitle">
                                                сар 10
                                            </div>
                                            <div id="timeinfoTab1CalendarMonth10"></div>
                                        </div>
                                        <div class="monthColumn">
                                            <div class="monthColumnTitle">
                                                сар 11
                                            </div>
                                            <div id="timeinfoTab1CalendarMonth11"></div>
                                        </div>
                                        <div class="monthColumn">
                                            <div class="monthColumnTitle">
                                                сар 12
                                            </div>
                                            <div id="timeinfoTab1CalendarMonth12"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="timeinfoTab2" class="tab-pane fade">
                    <div style="width:70%;">
                        <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                            <header>
                                <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                <h2><span id="timeinfoCurrentYear2" runat="server">0000</span> оны мэдээллийн цагийн ирц </h2>
                                <div class="widget-toolbar">
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <select id="timeinfoTab2PlanSelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                    </div> 
                                </div>
                            </header>
                            <div>
                                <div class="Colvis TableTools" style="width:80px; top:6px; z-index:5; right:85px;">
                                    <select id="timeinfoTab2SelectHeltes" name="timeinfoTab2SelectHeltes" runat="server" class="form-control" style="padding:1px;" disabled><option value="">Бүгд</option></select>
                                </div>
                                <div class="Colvis TableTools" style="right:168px; top:4px; z-index:5; margin-top:7px;">
                                    <label>Хэлтэс: </label>
                                </div>
                                <div class="Colvis TableTools" style="width:80px; top:6px; z-index:5; right:220px;">
                                    <select id="timeinfoTab2SelectGazar" name="timeinfoTab2SelectGazar" runat="server" class="form-control" style="padding:1px;"></select>
                                </div>
                                <div class="Colvis TableTools" style="right:303px; top:4px; z-index:5; margin-top:7px;">
                                    <label>Газар: </label>
                                </div>                                    
                                <div class="Colvis TableTools" style="width:110px; top:6px; z-index:5; right:350px;">
                                    <select id="timeinfoTab2SelectDate" name="timeinfoTab2SelectDate" runat="server" class="form-control" style="padding:1px;"></select>
                                </div>
                                <div class="Colvis TableTools" style="right:462px; top:4px; z-index:5; margin-top:7px;">
                                    <label>Өдөр: </label>
                                </div>                                   
                                <div class="Colvis TableTools" style="width:75px; top:6px; z-index:5; right:505px;">
                                    <select id="timeinfoTab2SelectMonth" name="timeinfoTab2SelectMonth" runat="server" class="form-control" style="padding:1px;"><option value="1">сар 1</option><option value="2">сар 2</option><option value="3">сар 3</option><option value="4">сар 4</option><option value="5">сар 5</option><option value="6">сар 6</option><option value="7">сар 7</option><option value="8">сар 8</option><option value="9">сар 9</option><option value="10">сар 10</option><option value="11">сар 11</option><option value="12">сар 12</option></select>
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
                <div id="timeinfoTab3" class="tab-pane fade">
                    <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                        <div style="width:70%; float:left;">
                            <div style="width:70px; float:left; margin-right:10px;"><select id="timeinfoTab3SelectMonth" name="timeinfoTab3SelectMonth" runat="server" class="form-control" style="padding:1px"><option value="1">1 сар</option><option value="2">2 сар</option><option value="3">3 сар</option><option value="4">4 сар</option><option value="5">5 сар</option><option value="6">6 сар</option><option value="7">7 сар</option><option value="8">8 сар</option><option value="9">9 сар</option><option value="10">10 сар</option><option value="11">11 сар</option><option value="12">12 сар</option></select></div>
                            <div style="width:60px; float:left; margin-right:10px;"><select id="timeinfoTab3SelectYear" name="timeinfoTab3SelectYear" runat="server" class="form-control" style="padding:1px"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option></select></div>
                        </div>
                        <div style="text-align:right; width:30%; float:left;">
                            <img id="timeinfoTab3ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" title="PDF руу татах" onclick="exportPdf('#divtimeinfoTab3')" />
                            <img id="timeinfoTab3ExportWord" src="../img/word-icon.png" style="cursor:pointer;" title="Word руу татах" onclick="exportWord('#divtimeinfoTab3')"/>
                            <img id="timeinfoTab3ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" title="Excel руу татах" onclick="exportExcel('#divtimeinfoTab3')"/>
                            <button id="timeinfoTab3Print" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divtimeinfoTab3')"><span class="fa fa-print"></span> Хэвлэх </button>
                            <button id="timeinfoTab3Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                        </div>
                    </div>
                    <div id="loaderTab3" class="search-background">
                        <label>
                            <img width="64" height="" src="img/loading.gif"/>
                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                        </label>
                    </div> 
                    <div id="divtimeinfoTab3" runat="server" class="reports" style="margin:0 10px 10px 10px;">                        
                        <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Сангийн яамнаас зохиосон байгуулсан арга хэмжээ, мэдээллийн цагийг ТЗУГ хариуцан зохион байгуулж, ирцийн бүртгэлийг хөтөлдөг. Иймд ТЗУГ-аас гарган ирүүлсэн мэдээллийн цагийн ирцийн бүртгэл дээр үндэслэн хяналт-шинжилгээ, үнэлгээ хийв. Тайлант сард  <label id="divtimeinfoTab3Year" runat="server" style="font-weight:bold;">0000</label> оны <label id="divtimeinfoTab3Month" runat="server" style="font-weight:bold;">00</label> дугаар сарын <label id="divtimeinfoTab3Dates" runat="server" style="font-weight:bold;">00,00,00</label> -ны өдрүүдэд <label id="divtimeinfoTab3Datescnt" runat="server" style="font-weight:bold;">0</label> удаагийн мэдээллийн цаг зохион байгуулсан байна. Газруудын мэдээллийн цагийн оролцоог <label id="divtimeinfoTab3Type" runat="server">type</label> үзүүлбэл:
                        </div>
                        <div id="divtimeinfoTab3Datatable" runat="server" style="display:block;"></div> 
                        <div id="divtimeinfoTab3Chart" style="display:block;"></div>    
                        <div style="text-align:left;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Яамны ажилтануудын <label id="divtimeinfoTab3MissPer" runat="server" style="font-weight:bold;">00.0</label> хувь нь өвчтэй, чөлөөтэй, ээлжийн амралттай, сургалттай, албан томилолттой гэх мэт шалтгаантай мэдээллийн цагт оролцоогүй бөгөөд <label id="divtimeinfoTab3TasPer" runat="server" style="font-weight:bold;">00.0</label> хувь нь таслалттай ба нийт оролцох албан хаагчдын <label id="divtimeinfoTab3CamePer" runat="server" style="font-weight:bold;">00.0</label> хувь нь оролцсон байна.
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
        drawTable($("#timeinfoTab1PlanSelectYear option:selected").val());
        timeinfoTab2SetFirstControls();
        dataBindTab3Datatable();
    }
    var pagedestroy = function () {
        if (globalAjaxVar != null) {
            globalAjaxVar.abort();
            globalAjaxVar = null;
        }
    }
    pagefunction();  

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
        if (funcCheckRoles('1,14')) {
            var qry = "";
            if ($(el).find("div:eq(0)").html() == "&nbsp;") {
                $(el).find("div:eq(0)").html("<i class=\"fa fa-check-square\"></i>");
                $(el).addClass("issubmit");
                qry = "INSERT INTO TBL_TIMEINFO VALUES (TO_DATE('" + $("#timeinfoTab1PlanSelectYear option:selected").val() + "-" + $(el).parent().attr("id").replace(/timeinfoTab1CalendarMonth/g, '') + "-" + $(el).find("div:eq(2)").html() + "','YYYY-MM-DD'))";
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"' + qry + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        smallBox('Мэдээллийн цагийн төлөвлөгөө', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                qry = "DELETE FROM TBL_TIMEINFO WHERE DT=TO_DATE('" + $("#timeinfoTab1PlanSelectYear option:selected").val() + "-" + $(el).parent().attr("id").replace(/timeinfoTab1CalendarMonth/g, '') + "-" + $(el).find("div:eq(2)").html() + "','YYYY-MM-DD')";
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                    data: '{"qry":"SELECT COUNT(1) FROM TBL_TIMEINFO_ATTEN WHERE DT=TO_DATE(\'' + $("#timeinfoTab1PlanSelectYear option:selected").val() + "-" + $(el).parent().attr("id").replace(/timeinfoTab1CalendarMonth/g, '') + '-' + $(el).find("div:eq(2)").html() + '\',\'YYYY-MM-DD\')"}',
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
                                    smallBox('Мэдээллийн цагийн төлөвлөгөө', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
        var rVal=0;
        $('#timeinfoTab1CalendarMonth' + m).find('.monthColumnContent').each(function (index) {
            if ($('div:eq(2)', this).html() == d) {
                rVal = parseInt(index);
            }
        });
        return rVal;
    }
    function drawTable(yr) {
        $('#timeinfoTab1CalendarMonth1').html("");
        $('#timeinfoTab1CalendarMonth2').html("");
        $('#timeinfoTab1CalendarMonth3').html("");
        $('#timeinfoTab1CalendarMonth4').html("");
        $('#timeinfoTab1CalendarMonth5').html("");
        $('#timeinfoTab1CalendarMonth6').html("");
        $('#timeinfoTab1CalendarMonth7').html("");
        $('#timeinfoTab1CalendarMonth8').html("");
        $('#timeinfoTab1CalendarMonth9').html("");
        $('#timeinfoTab1CalendarMonth10').html("");
        $('#timeinfoTab1CalendarMonth11').html("");
        $('#timeinfoTab1CalendarMonth12').html("");
        var date = new Date();
        var d = date.getDate();
        var m = date.getMonth();
        var y = date.getFullYear();
        var d0;
        var arrDatas;
        showLoader('loaderTab1');
        for (var i = 1; i < 32; i++) {
            d0 = new Date(parseInt($('#timeinfoTab1PlanSelectYear option:selected').val()), 0, i);
            if (d0.getDay() != 0 && d0.getDay() != 6) $('#timeinfoTab1CalendarMonth1').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("1", "Да").replace("2", "Мя").replace("3", "Лх").replace("4", "Пү").replace("5", "Ба") + "</div></div>");
            else $('#timeinfoTab1CalendarMonth1').append("<div class=\"monthColumnContent weekend\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("6", "Бя").replace("0", "Ня") + "</div></div>");
            d0 = new Date(parseInt($('#timeinfoTab1PlanSelectYear option:selected').val()), 1, i);
            if (d0.getDay() != 0 && d0.getDay() != 6) {
                if (i <= Math.round(((new Date(yr, 2)) - (new Date(yr, 2 - 1))) / 86400000)) $('#timeinfoTab1CalendarMonth2').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("1", "Да").replace("2", "Мя").replace("3", "Лх").replace("4", "Пү").replace("5", "Ба") + "</div></div>");
                else $('#timeinfoTab1CalendarMonth2').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"></div>");
            }
            else $('#timeinfoTab1CalendarMonth2').append("<div class=\"monthColumnContent weekend\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("6", "Бя").replace("0", "Ня") + "</div></div>");
            d0 = new Date(parseInt($('#timeinfoTab1PlanSelectYear option:selected').val()), 2, i);
            if (d0.getDay() != 0 && d0.getDay() != 6) $('#timeinfoTab1CalendarMonth3').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("1", "Да").replace("2", "Мя").replace("3", "Лх").replace("4", "Пү").replace("5", "Ба") + "</div></div>");
            else $('#timeinfoTab1CalendarMonth3').append("<div class=\"monthColumnContent weekend\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("6", "Бя").replace("0", "Ня") + "</div></div>");
            d0 = new Date(parseInt($('#timeinfoTab1PlanSelectYear option:selected').val()), 3, i);
            if (d0.getDay() != 0 && d0.getDay() != 6) {
                if (i < 31) $('#timeinfoTab1CalendarMonth4').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("1", "Да").replace("2", "Мя").replace("3", "Лх").replace("4", "Пү").replace("5", "Ба") + "</div></div>");
                else $('#timeinfoTab1CalendarMonth4').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"></div>");
            }
            else $('#timeinfoTab1CalendarMonth4').append("<div class=\"monthColumnContent weekend\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("6", "Бя").replace("0", "Ня") + "</div></div>");
            d0 = new Date(parseInt($('#timeinfoTab1PlanSelectYear option:selected').val()), 4, i);
            if (d0.getDay() != 0 && d0.getDay() != 6) $('#timeinfoTab1CalendarMonth5').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("1", "Да").replace("2", "Мя").replace("3", "Лх").replace("4", "Пү").replace("5", "Ба") + "</div></div>");
            else $('#timeinfoTab1CalendarMonth5').append("<div class=\"monthColumnContent weekend\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("6", "Бя").replace("0", "Ня") + "</div></div>");
            d0 = new Date(parseInt($('#timeinfoTab1PlanSelectYear option:selected').val()), 5, i);
            if (d0.getDay() != 0 && d0.getDay() != 6) {
                if (i < 31) $('#timeinfoTab1CalendarMonth6').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("1", "Да").replace("2", "Мя").replace("3", "Лх").replace("4", "Пү").replace("5", "Ба") + "</div></div>");
                else $('#timeinfoTab1CalendarMonth6').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"></div>");
            }
            else $('#timeinfoTab1CalendarMonth6').append("<div class=\"monthColumnContent weekend\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("6", "Бя").replace("0", "Ня") + "</div></div>");
            d0 = new Date(parseInt($('#timeinfoTab1PlanSelectYear option:selected').val()), 6, i);
            if (d0.getDay() != 0 && d0.getDay() != 6) $('#timeinfoTab1CalendarMonth7').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("1", "Да").replace("2", "Мя").replace("3", "Лх").replace("4", "Пү").replace("5", "Ба") + "</div></div>");
            else $('#timeinfoTab1CalendarMonth7').append("<div class=\"monthColumnContent weekend\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("6", "Бя").replace("0", "Ня") + "</div></div>");
            d0 = new Date(parseInt($('#timeinfoTab1PlanSelectYear option:selected').val()), 7, i);
            if (d0.getDay() != 0 && d0.getDay() != 6) $('#timeinfoTab1CalendarMonth8').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("1", "Да").replace("2", "Мя").replace("3", "Лх").replace("4", "Пү").replace("5", "Ба") + "</div></div>");
            else $('#timeinfoTab1CalendarMonth8').append("<div class=\"monthColumnContent weekend\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("6", "Бя").replace("0", "Ня") + "</div></div>");
            d0 = new Date(parseInt($('#timeinfoTab1PlanSelectYear option:selected').val()), 8, i);
            if (d0.getDay() != 0 && d0.getDay() != 6) {
                if (i < 31) $('#timeinfoTab1CalendarMonth9').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("1", "Да").replace("2", "Мя").replace("3", "Лх").replace("4", "Пү").replace("5", "Ба") + "</div></div>");
                else $('#timeinfoTab1CalendarMonth9').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"></div>");
            }
            else $('#timeinfoTab1CalendarMonth9').append("<div class=\"monthColumnContent weekend\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("6", "Бя").replace("0", "Ня") + "</div></div>");
            d0 = new Date(parseInt($('#timeinfoTab1PlanSelectYear option:selected').val()), 9, i);
            if (d0.getDay() != 0 && d0.getDay() != 6) $('#timeinfoTab1CalendarMonth10').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("1", "Да").replace("2", "Мя").replace("3", "Лх").replace("4", "Пү").replace("5", "Ба") + "</div></div>");
            else $('#timeinfoTab1CalendarMonth10').append("<div class=\"monthColumnContent weekend\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("6", "Бя").replace("0", "Ня") + "</div></div>");
            d0 = new Date(parseInt($('#timeinfoTab1PlanSelectYear option:selected').val()), 10, i);
            if (d0.getDay() != 0 && d0.getDay() != 6) {
                if (i < 31) $('#timeinfoTab1CalendarMonth11').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("1", "Да").replace("2", "Мя").replace("3", "Лх").replace("4", "Пү").replace("5", "Ба") + "</div></div>");
                else $('#timeinfoTab1CalendarMonth11').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"></div>");
            }
            else $('#timeinfoTab1CalendarMonth11').append("<div class=\"monthColumnContent weekend\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("6", "Бя").replace("0", "Ня") + "</div></div>");
            d0 = new Date(parseInt($('#timeinfoTab1PlanSelectYear option:selected').val()), 11, i);
            if (d0.getDay() != 0 && d0.getDay() != 6) $('#timeinfoTab1CalendarMonth12').append("<div class=\"monthColumnContent\" onmouseover=\"monthColumnContentOnMouseOver(this)\" onmouseout=\"monthColumnContentOnMouseOut(this)\" onclick=\"monthColumnContentOnClick(this)\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("1", "Да").replace("2", "Мя").replace("3", "Лх").replace("4", "Пү").replace("5", "Ба") + "</div></div>");
            else $('#timeinfoTab1CalendarMonth12').append("<div class=\"monthColumnContent weekend\"><div class=\"first\">&nbsp;</div><div class=\"third\"></div><div class=\"second\">" + i + "</div><div class=\"forth\">" + d0.getDay().toString().replace("6", "Бя").replace("0", "Ня") + "</div></div>");
        }
        $('#timeinfoTab1CalendarMonth' + (m + 1)).addClass("currentMonth");
        $('#timeinfoTab1CalendarMonth' + (m + 1)).find('.monthColumnContent').each(function (index) {
            if ($('div:eq(2)', this).html() == d) {
                $(this).addClass("currentDay");
            }
        });
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TimeinfoTab1Calendar",
            data: '{"yr":"' + $("#timeinfoTab1PlanSelectYear option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != "[]") {
                    arrDatas = JSON.parse(data.d);
                    for (var i = 0; i < arrDatas.length; i++) {
                        $("#timeinfoTab1CalendarMonth" + arrDatas[i][0]).find(".monthColumnContent:eq(" + getIndexOf(arrDatas[i][0], arrDatas[i][1]) + ")").addClass("issubmit");
                        $("#timeinfoTab1CalendarMonth" + arrDatas[i][0]).find(".monthColumnContent:eq(" + getIndexOf(arrDatas[i][0], arrDatas[i][1]) + ")").find("div:eq(0)").html("<i class=\"fa fa-check-square\"></i>");
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
    $("#timeinfoTab1PlanSelectYear").change(function () {
        drawTable($(this).val());
        $('#timeinfoCurrentYear1').text($(this).val());
    });

    //tab2
    function timeinfoTab2SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr":"' + $('#timeinfoTab2PlanSelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#timeinfoTab2SelectGazar").html('<option value="">Бүгд</option>' + valData);
                if (!funcCheckRoles('1,14')) {
                    $('#timeinfoTab2SelectGazar').prop('disabled', true);
                    $('#timeinfoTab2SelectGazar').val(userGazarId);
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                        data: '{"yr":"' + $("#timeinfoTab2PlanSelectYear option:selected").val() + '", "gazar":"' + $("#timeinfoTab2SelectGazar option:selected").val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            valData = '';
                            $($.parseJSON(data.d)).each(function (index, value) {
                                valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                            });
                            $("#timeinfoTab2SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                            if (!funcCheckRoles('3,4')) {
                                $('#timeinfoTab2SelectHeltes').prop('disabled', true);
                                $('#timeinfoTab2SelectHeltes').val(userHeltesId);
                            }
                            else {
                                $('#timeinfoTab2SelectHeltes').prop('disabled', false);
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
                    $('#timeinfoTab2SelectGazar').prop('disabled', false);
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
            url: "../ws/ServiceMain.svc/TimeinfoDateListForDDL",
            data: '{"yr":"' + $("#timeinfoTab2PlanSelectYear option:selected").val() + '", "mnth":"' + $("#timeinfoTab2SelectMonth option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.D + '" title="' + value.DT + '">' + value.DT + '</option>';
                });
                $("#timeinfoTab2SelectDate").html(valData);
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
        if ($("#timeinfoTab2SelectGazar option:selected").val() == "") {
            $("#timeinfoTab2SelectHeltes").html("<option selected value=\"\">Бүгд</option>");
            $("#timeinfoTab2SelectHeltes").prop("disabled", true);
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr":"' + $("#timeinfoTab2PlanSelectYear option:selected").val() + '", "gazar":"' + $("#timeinfoTab2SelectGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    });
                    $("#timeinfoTab2SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                    $("#timeinfoTab2SelectHeltes").prop("disabled", false);
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
    $("#timeinfoTab2SelectGazar").change(function () {
        dataBindTab2HeltesList();
        dataBindTab2Datatable();
    });
    $("#timeinfoTab2SelectHeltes").change(function () {
        dataBindTab2Datatable();
    });
    $("#timeinfoTab2SelectMonth").change(function () {
        dataBindTab2DateList();
    });
    $("#timeinfoTab2SelectDate").change(function () {
        dataBindTab2Datatable();
    });
    $("#timeinfoTab2PlanSelectYear").change(function () {
        $("#timeinfoTab2SelectMonth").val(1);
        timeinfoTab2SetFirstControls();
        $("#timeinfoCurrentYear2").text($(this).val());
    });
    function dataBindTab2Datatable() {
        var valData = '';
        if ($("#timeinfoTab2SelectDate option:selected").val() == undefined) {
            valData = '<div style="margin: 65px 0 -50px 0px; text-align: center;"><em>'+$("#timeinfoTab2PlanSelectYear option:selected").val() + ' оны ' + $("#timeinfoTab2SelectMonth option:selected").val() + '-р сард ямар нэгэн мэдээллийн цагийн төлөвлөгөө төлөвлөөгүй байна!</em></div>';
            $("#divBindTab2Table").html(valData);
        }
        else {
            var isDisabled = "";
            var inoutcolor = "";
            showLoader('loaderTab2');
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/TimeinfoTab2Datatable",
                data: '{"yr":"' + $("#timeinfoTab2PlanSelectYear option:selected").val() + '", "mnth":"' + $("#timeinfoTab2SelectMonth option:selected").val() + '", "day":"' + $("#timeinfoTab2SelectDate option:selected").val() + '", "gazar":"' + $("#timeinfoTab2SelectGazar option:selected").val() + '", "heltes":"' + $("#timeinfoTab2SelectHeltes option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    if (!funcCheckRoles('1,14')) {
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

        
    }
    function timeinfoIsAttenCheckbox(el) {
        if ($(el).prop('checked')) {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                data: '{"qry":"DELETE FROM TBL_TIMEINFO_ATTEN WHERE ST_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND DT=TO_DATE(\'' + $("#timeinfoTab2SelectDate option:selected").text() + '\',\'YYYY-MM-DD\')"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                        data: '{"qry":"INSERT INTO TBL_TIMEINFO_ATTEN VALUES (' + $(el).closest('tr').find('td:eq(0)').text() + ', TO_DATE(\'' + $("#timeinfoTab2SelectDate option:selected").text() + '\',\'YYYY-MM-DD\'))"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            smallBox('Мэдээллийн цагийн ирц', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                data: '{"qry":"DELETE FROM TBL_TIMEINFO_ATTEN WHERE ST_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND DT=TO_DATE(\'' + $("#timeinfoTab2SelectDate option:selected").text() + '\',\'YYYY-MM-DD\')"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    smallBox('Мэдээллийн цагийн ирц', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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

    //Tab3
    $("#timeinfoTab3SelectYear").change(function () {
        $("#divtimeinfoTab3Year").text($(this).val());
        timeinfoSetDatas();
        $('#divtimeinfoTab3Chart').css("display", "none");
        $('#divtimeinfoTab3Datatable').css("display", "block");
    });
    $("#timeinfoTab3SelectMonth").change(function () {
        $("#divtimeinfoTab3Month").text($(this).val());
        timeinfoSetDatas();
        $('#divtimeinfoTab3Chart').css("display", "none");
        $('#divtimeinfoTab3Datatable').css("display", "block");
    });
    function timeinfoSetDatas() {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT NVL(RTRIM(xmlagg (xmlelement (e, TO_CHAR(DT,\'DD\') || \',\') ORDER BY DT).extract(\'//text()\'), \',\'),\'none\')||\'~\'||COUNT(DT) as CNT FROM TBL_TIMEINFO WHERE TO_NUMBER(TO_CHAR(DT, \'YYYY\'))=' + $("#timeinfoTab3SelectYear option:selected").val() + ' AND TO_NUMBER(TO_CHAR(DT, \'MM\'))=' + $("#timeinfoTab3SelectMonth option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $('#divtimeinfoTab3Dates').text(data.d.split('~')[1].replace("none", ""));
                $('#divtimeinfoTab3Datescnt').text(data.d.split('~')[2]);
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
        var valData = '';
        showLoader('loaderTab3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TimeinfoTab3Datatable",
            data: '{"yr":"' + $("#timeinfoTab3SelectYear option:selected").val() + '", "mnth":"' + $("#timeinfoTab3SelectMonth option:selected").val() + '", "dates":"' + $('#divtimeinfoTab3Dates').text() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                //valData = '';
                //var arrDatas = new Array($('#divtimeinfoTab3Dates').text().split(',').length * 3);
                //valData += "<table id=\"timeinfoTab3Datatable\" style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\"><thead style=\"background-color:C6D9F1;\"><tr><th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">#</th><th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Газруудын нэр</th>";
                //if ($('#divtimeinfoTab3Dates').text() != "")
                //{
                //    for (var i = 0; i < $('#divtimeinfoTab3Dates').text().split(',').length; i++)
                //    {
                //        valData += "<th colspan=\"3\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Мэдээллийн цаг (" + yr + "-" + mnth + "-" + $('#divtimeinfoTab3Dates').text().split(',')[i] + ")</th>";
                //    }
                //}
                //valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Оролцоот хувь</th><th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Авсан оноо</th></tr>";
                //valData += "<tr>";
                //if ($('#divtimeinfoTab3Dates').text() != "")
                //{
                //    for (var i = 0; i < $('#divtimeinfoTab3Dates').text().split(',').length; i++)
                //    {
                //        valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Ажилтаны тоо</th>";
                //        valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Оролцох ажилтаны тоо</th>";
                //        valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Оролцсон ажилтаны тоо</th>";
                //    }
                //}
                //valData += "</tr>";
                //valData += "</thead><tbody>";
                //if ($('#divtimeinfoTab3Dates').text() != "")
                //{
                //    $($.parseJSON(data.d)).each(function (index, value) {
                //        if (parseFloat(value.PER) >= 0 && parseFloat(value.PER) <= 49) { percolor = "bg-color-red"; }
                //        else if (parseFloat(value.PER) >= 50 && parseFloat(value.PER) <= 79) { percolor = "bg-color-orange"; }
                //        else if (parseFloat(value.PER) >= 80 && parseFloat(value.PER) <= 100) { percolor = "bg-color-greenLight"; }
                //        strTableVal += "<tr>";
                //        strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.ROWNO + "</td>";
                //        strTableVal += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.GAZARNAME + "</td>";

                //        for (var i = 0; i < $('#divtimeinfoTab3Dates').text().split(',').length * 3; i++)
                //        {
                //            strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + dr[i + 5].ToString() + "</td>";
                //            arrDatas[i] += parseInt(dr[i + 5].ToString());
                //        }

                //        strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\"><span class=\"badge " + percolor + "\">" + parseFloat(value.PER).toFixed(1) + "</span></td>";
                //        strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.POINT + "</td>";
                //        strTableVal += "</tr>";
                //        cnt++;
                //    });
                //}
                //valData += "</tbody>";
                //var active = 0, came = 0;
                //if ($('#divtimeinfoTab3Dates').text() != "")
                //{
                //    valData += "<tfoot style=\"background-color:C6D9F1;\">";
                //    valData += "<tr>";
                //    valData += "<td colspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">НИЙТ</td>";
                //    var loopi = 0;
                //    for (var i = 0; i < $('#divtimeinfoTab3Dates').text().split(',').length; i++)
                //    {
                //        valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + arrDatas[i + loopi] + "</td>";
                //        valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + arrDatas[i + 1 + loopi] + "</td>";
                //        active += arrDatas[i + 1 + loopi];
                //        valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + arrDatas[i + 2 + loopi] + "</td>";
                //        came += arrDatas[i + 2 + loopi];
                //        loopi += 2;

                //    }
                //    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + ((parseFloat(came) / parseFloat(active)) * parseFloat(100)).toFixed(2) + "</td>";
                //    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">-</td>";
                //    valData += "</tr>";
                //    valData += "</tfoot>";
                //}
                //valData += "</table>";
                //$("#divtimeinfoTab3Datatable").html(valData);
                $("#divtimeinfoTab3Datatable").html(data.d);
                timeinfoTab3SetDatas1();
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
    function timeinfoTab3SetDatas1() {
        if ($('#divtimeinfoTab3Dates').text() != "") {
            var arrDates = $('#divtimeinfoTab3Dates').text().split(',');
            var loopi = 0;
            var total = 0;
            var activetotal = 0;
            var came = 0;
            for (var i = 1; i <= arrDates.length; i++) {
                total += parseInt($('#timeinfoTab3Datatable > tfoot > tr').find('td:eq(' + (i + loopi) + ')').html());
                activetotal += parseInt($('#timeinfoTab3Datatable > tfoot > tr').find('td:eq(' + (i + 1 + loopi) + ')').html());
                came += parseInt($('#timeinfoTab3Datatable > tfoot > tr').find('td:eq(' + (i + 2 + loopi) + ')').html());
                loopi += 2;
            }
            $('#divtimeinfoTab3MissPer').text((parseFloat(100) - ((parseFloat(activetotal) / parseFloat(total)) * parseFloat(100))).toFixed(2));
            $('#divtimeinfoTab3TasPer').text(100 - ((came / activetotal) * 100).toFixed(2));
            $('#divtimeinfoTab3CamePer').text(((parseFloat(came) / parseFloat(activetotal)) * parseFloat(100)).toFixed(2));
        }
        else {
            $('#divtimeinfoTab3MissPer').text(0);
            $('#divtimeinfoTab3TasPer').text(0);
            $('#divtimeinfoTab3CamePer').text(0);
        }
    }
    $("#timeinfoTab3Refresh").click(function () {
        $('#timeinfoTab3SelectYear').val($('#indexCurrentYear').text());
        $('#timeinfoTab3SelectMonth').val($('#indexCurrentMonth').text());
        $('#divtimeinfoTab3Chart').css("display", "none");
        $('#divtimeinfoTab3Datatable').css("display", "block");
        timeinfoSetDatas();
    });
</script>