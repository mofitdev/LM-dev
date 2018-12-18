<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mofnews.aspx.cs" Inherits="LMWebApp.pg.mofnews" %>
<style type="text/css">
#mofnewsTab1Datatable > tbody > tr > td:hover {
     background: #d6dde7;
        cursor:pointer;
}
#mofnewsTab1Datatable > tbody > tr > td {
     text-align:center;
}
#mofnewsTab1Datatable > thead > tr > th {
     text-align:center;
}
</style> 
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
    <h1 class="page-title txt-color-blueDark">
    <i class="fa-fw fa fa-home"></i>
    <span>> Үйл ажиллагааний ил тод нээлттэй байдал</span>
    </h1>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
            <ul class="nav nav-tabs bordered">
                <li id="pTab1Li" runat="server" onclick="pDatabindTabs(this)" class="active">
                    <a data-toggle="tab" href="#mofnewsTab1">
                        Төлөвлөгөө
                    </a>
                </li>
                <li id="pTab2Li" onclick="pDatabindTabs(this)" runat="server">
                    <a data-toggle="tab" href="#mofnewsTab2">
                        Байршуулсан мэдээлэл
                    </a>
                </li>
                <li id="pTab3Li" onclick="pDatabindTabs(this)" runat="server">
                    <a data-toggle="tab" href="#mofnewsTab3">
                        <i class="fa fa-fw fa-lg fa-file-text "></i>
                        Тайлан
                    </a>
                </li>
            </ul>
            <div id="mofnewsTabContent" class="tab-content">
                <div id="mofnewsTab1" class="tab-pane active">
                    <div style="width:100%;">
                        <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                            <header>
                                <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                <h2><span id="mofnewsCurrentYear1" runat="server">0000</span> оны үйл ажиллагааны ил тод нээлттэй байдлын төлөвлөгөө </h2>
                                <div class="widget-toolbar">
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <select id="mofnewsTab1PlanSelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                    </div> 
                                </div>
                            </header>
                            <div>
                                <div class="widget-body no-padding">
                                    <div id="loaderTab1" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div id="mofnewsTab1DatatableDiv" style="padding-top:20px;">
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div id="mofnewsTab2" class="tab-pane fade">
                    <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                        <div style="width:50%; float:left;">
                            <div style="width:70px; float:left; margin-right:10px;"><select id="mofnewsTab2SelectMonth" name="mofnewsTab2SelectMonth" runat="server" class="form-control" style="padding:1px"><option value="1">1 сар</option><option value="2">2 сар</option><option value="3">3 сар</option><option value="4">4 сар</option><option value="5">5 сар</option><option value="6">6 сар</option><option value="7">7 сар</option><option value="8">8 сар</option><option value="9">9 сар</option><option value="10">10 сар</option><option value="11">11 сар</option><option value="12">12 сар</option></select></div>
                            <div style="width:60px; float:left; margin-right:10px;"><select id="mofnewsTab2SelectYear" name="mofnewsTab2SelectYear" runat="server" class="form-control" style="padding:1px"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option></select></div>
                            <div style="width:30px; float:left; margin-right:10px; padding-top:7px;">Газар:</div>
                            <div style="width:70px; float:left; margin-right:10px;"><select id="mofnewsTab2SelectGazar" name="mofnewsTab2SelectGazar" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option><option value="12">ТХЭУГ</option><option value="13">ТБТГ</option><option value="14">ТЗУГ</option><option value="15">ТСГ</option><option value="16">СБГ</option><option value="17">ХХААГ</option><option value="18">НБББГ</option><option value="18">НБББГ</option><option value="39">ТХОГ</option><option value="40">ЭЗБГ</option><option value="41">ХСӨУГ</option><option value="43">ТӨУБТХГ</option></select></div>
                        </div>
                        <div style="text-align:right; width:50%; float:left;">
                            <img id="mofnewsTab2ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" title="PDF руу татах" onclick="exportPdf('#divmofnewsTab2')" />
                            <img id="mofnewsTab2ExportWord" src="../img/word-icon.png" style="cursor:pointer;" title="Word руу татах" onclick="exportWord('#divmofnewsTab2')"/>
                            <img id="tmofnewsTab2ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" title="Excel руу татах" onclick="exportExcel('#divmofnewsTab2')"/>
                            <button id="mofnewsTab2Print" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divmofnewsTab2')"><span class="fa fa-print"></span> Хэвлэх </button>
                            <button id="mofnewsTab2Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                        </div>
                    </div>
                    <div id="loaderTab2" class="search-background">
                        <label>
                            <img width="64" height="" src="img/loading.gif"/>
                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                        </label>
                    </div> 
                    <div id="divmofnewsTab2" runat="server" class="reports" style="margin:0 10px 10px 10px;">
                        <div id="divmofnewsTab2Datatable" runat="server"></div>                
                    </div>
                </div>
                <div id="mofnewsTab3" class="tab-pane fade">
                    <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                        <div style="width:50%; float:left;">
                            <div style="width:70px; float:left; margin-right:10px;"><select id="mofnewsTab3SelectMonth" name="mofnewsTab3SelectMonth" runat="server" class="form-control" style="padding:1px"><option value="1">1 сар</option><option value="2">2 сар</option><option value="3">3 сар</option><option value="4">4 сар</option><option value="5">5 сар</option><option value="6">6 сар</option><option value="7">7 сар</option><option value="8">8 сар</option><option value="9">9 сар</option><option value="10">10 сар</option><option value="11">11 сар</option><option value="12">12 сар</option></select></div>
                            <div style="width:60px; float:left; margin-right:10px;"><select id="mofnewsTab3SelectYear" name="mofnewsTab3SelectYear" runat="server" class="form-control" style="padding:1px"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option></select></div>
                        </div>
                        <div style="text-align:right; width:50%; float:left;">
                            <img id="mofnewsTab3ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" title="PDF руу татах" onclick="exportPdf('#divmofnewsTab3')" />
                            <img id="mofnewsTab3ExportWord" src="../img/word-icon.png" style="cursor:pointer;" title="Word руу татах" onclick="exportWord('#divmofnewsTab3')"/>
                            <img id="tmofnewsTab3ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" title="Excel руу татах" onclick="exportExcel('#divmofnewsTab3')"/>
                            <button id="mofnewsTab3Print" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divmofnewsTab3')"><span class="fa fa-print"></span> Хэвлэх </button>
                            <button id="mofnewsTab3Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                        </div>
                    </div>
                    <div id="loaderTab3" class="search-background">
                        <label>
                            <img width="64" height="" src="img/loading.gif"/>
                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                        </label>
                    </div> 
                    <div id="divmofnewsTab3" runat="server" class="reports" style="margin:0 10px 10px 10px;">                        
                        <div style="text-align:left;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"Сангийн яамны цахим хуудсанд мэдээлэл байршуулах" -ийг Төрийн нарийн бичгийн даргын тушаалаар баталсан. Тайлант хугацаанд Сангийн яамны цахим хуудсанд яамны газрууд <label id="divmofnewsTab3Data1" runat="server" style="font-weight:bold;">0</label> мэдээлэл оруулахаас <label id="divmofnewsTab3Data2" runat="server" style="font-weight:bold;">0</label> мэдээлэл оруулж, биелэлт <label id="divmofnewsTab3Data3" runat="server" style="font-weight:bold;">00.0</label> хувьтай байна.
                        </div>
                        <div id="divmofnewsTab3Datatable" runat="server" style="display:block;"></div> 
                        <div id="divmofnewsTab3Chart" style="display:none;"></div>                      
                    </div>
                </div>
            </div>
        </article>
    </div>
</section>
<script type="text/javascript">
    //pageSetUp();
    var globalAjaxVar = null;
    var pagefunction = function () {
        var valLiId = $('#pTab1Li').closest('ul').find('.active').attr('id');
        if (valLiId == 'pTab1Li') {
            dataBindTab1Datatable();
        }
        else if (valLiId == 'pTab2Li') {
            dataBindTab2Datatable();
        }
        else if (valLiId == 'pTab3Li') {
            dataBindTab3Datatable();
        }
    }
    var pagedestroy = function () {
        if (globalAjaxVar != null) {
            globalAjaxVar.abort();
            globalAjaxVar = null;
        }
    }
    pagefunction();
    function pDatabindTabs(el) {
        if ($.trim($(el).attr('id')) == 'pTab1Li') {
            if ($.trim($('#mofnewsTab1DatatableDiv').html()) == "") {
                dataBindTab1Datatable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab2Li') {
            if ($.trim($('#mofnewsTab2DatatableDiv').html()) == "") {
                dataBindTab2Datatable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab3Li') {
            if ($.trim($('#mofnewsTab3DatatableDiv').html()) == "") {
                dataBindTab3Datatable();
            }
        }
    }
    
    function dataBindTab1Datatable() {
        var valData = '';
        showLoader('loaderTab1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/MofnewsTab1Datatable",
            data: '{"yr":"' + $("#mofnewsTab1PlanSelectYear option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table id=\"mofnewsTab1Datatable\" class=\"table table-striped table-bordered dataTable\" aria-describedby=\"dt_basic_info\"><thead><tr><th class=\"hide\"></th><th>Газрын нэр</th><th>сар 1</th><th>сар 2</th><th>сар 3</th><th>сар 4</th><th>сар 5</th><th>сар 6</th><th>сар 7</th><th>сар 8</th><th>сар 9</th><th>сар 10</th><th>сар 11</th><th>сар 12</th><tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td class=\"hide\">" + value.parent_id + "</td>";
                    valData += "<td style=\"text-align:left;\">" + value.group_name + "</td>";
                    valData += "<td onclick=\"demoClick(this)\">" + value.MNTH1 + "</td>";
                    valData += "<td onclick=\"demoClick(this)\">" + value.MNTH2 + "</td>";
                    valData += "<td onclick=\"demoClick(this)\">" + value.MNTH3 + "</td>";
                    valData += "<td onclick=\"demoClick(this)\">" + value.MNTH4 + "</td>";
                    valData += "<td onclick=\"demoClick(this)\">" + value.MNTH5 + "</td>";
                    valData += "<td onclick=\"demoClick(this)\">" + value.MNTH6 + "</td>";
                    valData += "<td onclick=\"demoClick(this)\">" + value.MNTH7 + "</td>";
                    valData += "<td onclick=\"demoClick(this)\">" + value.MNTH8 + "</td>";
                    valData += "<td onclick=\"demoClick(this)\">" + value.MNTH9 + "</td>";
                    valData += "<td onclick=\"demoClick(this)\">" + value.MNTH10 + "</td>";
                    valData += "<td onclick=\"demoClick(this)\">" + value.MNTH11 + "</td>";
                    valData += "<td onclick=\"demoClick(this)\">" + value.MNTH12 + "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                $("#mofnewsTab1DatatableDiv").html(valData);
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
    function dataBindTab2Datatable() {
        var valData = '';
        showLoader('loaderTab2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/MofnewsTab2Datatable",
            data: '{"yr":"' + $("#mofnewsTab2SelectYear option:selected").val() + '", "mnth":"' + $("#mofnewsTab2SelectMonth option:selected").val() + '", "gazar":"' + $('#mofnewsTab2SelectGazar option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table id=\"mofnewsTab2Datatable\" style=\"border:1px solid #000; border-collapse:collapse; font-family:'Times New Roman'; font-size:12px; width:100%\"><thead><tr style=\"background-color:lightgray;\"><th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Мэдээлэл байрлуулсан газар</th><th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Мэдээний агуулга</th><th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Мэдээ тавьсан огноо</th><tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.init_name + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.post_title + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.post_date + "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                $("#divmofnewsTab2Datatable").html(valData);
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
    function dataBindTab3Datatable() {
        var valData = '';
        var percolor = "";
        var plancnt = 0, cnt = 0, i = 0;
        var per = 0;
        showLoader('loaderTab3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/MofnewsTab3Datatable",
            data: '{"yr":"' + $("#mofnewsTab3SelectYear option:selected").val() + '", "mnth":"' + $("#mofnewsTab3SelectMonth option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table id=\"mofnewsTab3Datatable\" style=\"border:1px solid #000; border-collapse:collapse; font-family:'Times New Roman'; font-size:12px; width:100%\"><thead><tr style=\"background-color:lightgray;\"><th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Газрын нэр</th><th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Байршуулах мэдээ</th><th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Байршуулсан мэдээ</th><th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хувь</th><th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Оноо</th></tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (parseFloat(value.PER) >= 0 && parseFloat(value.PER) <= 49) { percolor = "bg-color-red"; }
                    else if (parseFloat(value.PER) >= 50 && parseFloat(value.PER) <= 79) { percolor = "bg-color-orange"; }
                    else if (parseFloat(value.PER) >= 80 && parseFloat(value.PER) <= 100) { percolor = "bg-color-greenLight"; }
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.group_name + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.PLANCNT + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.CNT + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\"><span class=\"badge " + percolor + "\">" + parseFloat(value.PER).toFixed(1) + "</span></td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.POINT + "</td>";
                    valData += "</tr>";

                    plancnt += parseInt(value.PLANCNT);
                    cnt += parseInt(value.CNT);
                    per += parseFloat(value.PER);
                    i++;
                });
                valData += "</tbody>";
                valData += "<tfoot>";
                valData += "<tr style=\"background-color:lightgray;\">";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">НИЙТ ДҮН</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + plancnt + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + cnt + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + (per / i).toFixed(1) + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">-</td>";
                valData += "</tr>";
                valData += "</tfoot>";
                valData += "</table>";
                $("#divmofnewsTab3Datatable").html(valData);
                $('#divmofnewsTab3Data1').text($('#mofnewsTab3Datatable tfoot tr').find('td:eq(1)').html());
                $('#divmofnewsTab3Data2').text($('#mofnewsTab3Datatable tfoot tr').find('td:eq(2)').html());
                $('#divmofnewsTab3Data3').text($('#mofnewsTab3Datatable tfoot tr').find('td:eq(3)').html());
                $('#divmofnewsTab3Chart').css("display", "none");
                $('#divmofnewsTab3Datatable').css("display", "block");
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
    function demoClick(el) {
        var trindex = $(el).closest('tr').index();
        var tdindex = $(el).index();
        //alert($(this).closest('tr').index());
        //alert($(this).index());
        $(el).css("padding", "3px 0 0 0");
        //$(el).html('<input class="mofnewsTab1DatatableText" type="text" value="' + $(el).text() + '" maxlength="3" style=\"width:40px; text-align:right; padding:2px;\" onblur="demoBlur(this)" onkeydown="javascript:return demoKeyDown(this, event)" onkeypress="javascript:return false;"/>');
        $(el).html('<input class="mofnewsTab1DatatableText" type="text" value="' + $(el).text() + '" maxlength="3" style=\"width:40px; text-align:right; padding:2px;\" onblur="demoBlur(this, \'' + $(el).text() + '\')"/>');
        $('#mofnewsTab1Datatable tbody tr:eq(' + trindex + ')').find('td:eq(' + tdindex + ')').find(':text').focus();
        $('#mofnewsTab1Datatable tbody tr:eq(' + trindex + ')').find('td:eq(' + tdindex + ')').find(':text').select();
    }
    function demoBlur(el, oldval) {
        if (funcCheckRoles('1,16')) {
            var value = 0;
            var mnth = parseInt($(el).parent().index()) - 1;
            var gazarid = $(el).closest('tr').find('td:eq(0)').text();
            $(el).parent().removeAttr("style");
            if ($.trim($(el).val()) == "") {
                value = 0;
                $(el).parent().html(0);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/mofnews_MOFPOSTSPLAN_INSUPT",
                    data: '{"P_YR":"' + $('#mofnewsTab1PlanSelectYear option:selected').val() + '", "P_MNTH":"' + mnth + '", "P_GROUP_ID":"' + gazarid + '", "P_CNT":"' + value + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        smallBox('Төлөвлөгөө', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                value = parseInt($(el).val())
                $(el).parent().html($(el).val());

                if (!$.isNumeric($(el).val())) { alert('Зөвхөн тоо оруулна уу!'); $(el).parent().html(0); }
                else {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/mofnews_MOFPOSTSPLAN_INSUPT",
                        data: '{"P_YR":"' + $('#mofnewsTab1PlanSelectYear option:selected').val() + '", "P_MNTH":"' + mnth + '", "P_GROUP_ID":"' + gazarid + '", "P_CNT":"' + value + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            smallBox('Төлөвлөгөө', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
        }
        else { $(el).parent().html(oldval); $(el).parent().removeAttr("style"); alert('Танд төлөвлөх эрх байхгүй байна!'); }       
    }
    $("#mofnewsTab1PlanSelectYear").change(function () {
        $('#mofnewsCurrentYear1').text($(this).val());
        dataBindTab1Datatable();
    });
    $("#mofnewsTab2SelectYear").change(function () {
        dataBindTab2Datatable();
    });
    $("#mofnewsTab2SelectMonth").change(function () {
        dataBindTab2Datatable();
    });
    $("#mofnewsTab2SelectGazar").change(function () {
        dataBindTab2Datatable();
    });
    $("#mofnewsTab2Refresh").click(function () {
        $('#mofnewsTab2SelectYear').val($('#indexCurrentYear').text());
        $('#mofnewsTab2SelectMonth').val($('#indexCurrentMonth').text());
        $('#mofnewsTab2SelectGazar').val(0);
        dataBindTab2Datatable();
    });
    $("#mofnewsTab3Datatable").click(function () {
        $('#divmofnewsTab3Chart').css("display", "none");
        $('#divmofnewsTab3Datatable').css("display", "block");
    });
    $("#mofnewsTab3SelectYear").change(function () {
        dataBindTab3Datatable();
    });
    $("#mofnewsTab3SelectMonth").change(function () {
        dataBindTab3Datatable();
    });
    $("#mofnewsTab3Refresh").click(function () {
        $('#mofnewsTab3SelectYear').val($('#indexCurrentYear').text());
        $('#mofnewsTab3SelectMonth').val($('#indexCurrentMonth').text());
        dataBindTab3Datatable();
    });
</script>