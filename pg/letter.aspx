<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="letter.aspx.cs" Inherits="LMWebApp.pg.letter" %>
<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
    <h1 class="page-title txt-color-blueDark">
        <i class="fa-fw fa fa-home"></i>
        <span>>АЛБАН БИЧГИЙН ШИЙДВЭРЛЭЛТ </span>
    </h1>
</div>
<section id="widget-grid" class="">
    <div class="row">
        <article class="col-sm-12">
            <ul class="nav nav-tabs bordered">
                <li id="letterTab1Li" runat="server" class="active" onclick="letterDatabindTabs(this)">
                    <a data-toggle="tab" href="#letterTab1">
                        Шийдвэрлэлтийн байдал  
                    </a>
                </li>
                <li id="letterTab2Li" runat="server" onclick="letterDatabindTabs(this)">
                    <a data-toggle="tab" href="#letterTab2">
                        Хугацаа хэтрүүлж хариу өгсөн бичгийн жагсаалт
                    </a>
                </li>
                <li id="letterTab3Li" runat="server" onclick="letterDatabindTabs(this)">
                    <a data-toggle="tab" href="#letterTab3">
                        Хугацаа хэтэрсэн шийдвэрлээгүй бичгийн жагсаалт
                    </a>
                </li>
                <li id="letterTab4Li" runat="server" onclick="letterDatabindTabs(this)">
                    <a data-toggle="tab" href="#letterTab4">
                        <i class="fa fa-fw fa-lg fa-bar-chart-o "></i>
                    ХШҮ-ний товч тайлан
                    </a>
                </li>
            </ul>
            <div id="letterTabContent" class="tab-content">
                <div id="letterTab1" class="tab-pane active">
                    <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                        <div style="width:70%; float:left;">
                            <div style="width:45px; float:left; margin-right:10px; margin-top: 7px;">Хугацаа:</div>
                            <div style="width:245px; float:left; margin-right:10px;">
                                <div class="form-group" style="width: 100%;">
                                    <div class="input-group" style="width: 110px; float:left; margin-right:20px;">
                                        <input type="text" placeholder="Эхлэх" name="divletterTab1t1Start_date" id="divletterTab1t1Start_date" runat="server" class="form-control datepicker" data-dateformat="yyyy-mm-dd" style="padding:1px;" />
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                    </div>
                                    <div class="input-group" style="width: 110px; float: left;">
                                        <input type="text" placeholder="Дуусах" name="divletterTab1t1End_date" id="divletterTab1t1End_date" runat="server" class="form-control datepicker" data-dateformat="yyyy-mm-dd" style="padding:1px;" />
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                    </div>
                                </div>
                            </div>
                            <div style="width:35px; float:left; margin-right:10px; margin-top: 7px;">Газар:</div>
                            <div style="width:80px; float:left; margin-right:10px;">
                                <select id="letterTab1t1SelectBranch" runat="server" class="form-control" style="padding:1px;"></select>
                            </div>
                        </div>
                        <div style="text-align:right; width:30%; float:left;">
                            <img id="letterTab5t1ExportPdf" src="../img/pdf-icon.png" style="cursor: pointer;" title="PDF руу татах" onclick="exportPdf('#divletterTab1t1')" />
                            <img id="letterTab5t1ExportWord" src="../img/word-icon.png" style="cursor: pointer;" title="Word руу татах" onclick="exportWord('#divletterTab1t1', 'Албан бичгийн шийдвэрлэлтийн байдал')" />
                            <img id="letterTab5t1ExportExcel" src="../img/excel-icon.png" style="cursor: pointer;" title="Excel руу татах" onclick="exportExcel('#divletterTab1t1')" />
                            <button id="letterTab5t1ExportPrint" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divletterTab1t1')"><span class="fa fa-print"></span>Хэвлэх </button>
                            <button id="letterTab5t1Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span></button>
                        </div>
                    </div>
                    <div id="divletterTab1t1Table_loader" class="search-background">
                        <img width="64" height="" src="img/loading.gif"/>
                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                    </div>
                    <div id="divletterTab1t1" runat="server" class="reports">
                        <label style="font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px">
                            Шийдвэрлэлтийн байдал
                        </label>
                        <div id="divletterTab1t1Table" runat="server">
                                           
                        </div>
                    </div>
                </div>
                <div id="letterTab2" class="tab-pane fade">
                    <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                        <div style="width:70%; float:left;">
                            <div style="width:45px; float:left; margin-right:10px; margin-top: 7px;">Хугацаа:</div>
                            <div style="width:245px; float:left; margin-right:10px;">
                                <div class="form-group" style="width: 100%;">
                                    <div class="input-group" style="width: 110px; float: left; margin-right: 20px;">
                                        <input type="text" placeholder="Эхлэх" name="divletterTab1t2Start_date" id="divletterTab1t2Start_date" runat="server" class="form-control datepicker" data-dateformat="yyyy-mm-dd" style="padding:1px;" />
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                    </div>
                                    <div class="input-group" style="width: 110px; float: left;">
                                        <input type="text" placeholder="Дуусах" name="divletterTab1t2End_date" id="divletterTab1t2End_date" runat="server" class="form-control datepicker" data-dateformat="yyyy-mm-dd" style="padding:1px;" />
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                    </div>
                                </div>
                            </div>
                            <div style="width:35px; float:left; margin-right:10px; margin-top: 7px;">Газар:</div>
                            <div style="width:80px; float:left; margin-right:10px;">
                                <select id="letterTab1t2SelectBranch" runat="server" class="form-control" style="padding:1px;"></select>
                            </div>
                        </div>
                        <div style="text-align:right; width:30%; float:left;">
                            <img id="letterTab1t2ExportPdf" src="../img/pdf-icon.png" style="cursor: pointer;" title="PDF руу татах" onclick="exportPdf('#divletterTab1t2')" />
                            <img id="letterTab1t2ExportWord" src="../img/word-icon.png" style="cursor: pointer;" title="Word руу татах" onclick="exportWord('#divletterTab1t2','Хугацаа хэтрүүлж хариу өгсөн бичгийн жагсаалт')" />
                            <img id="letterTab1t2ExportExcel" src="../img/excel-icon.png" style="cursor: pointer;" title="Excel руу татах" onclick="exportExcel('#divletterTab1t2')" />
                            <button id="letterTab1t2ExportPrint" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divletterTab1t2')"><span class="fa fa-print"></span>Хэвлэх </button>
                            <button id="letterTab1t2Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span></button>
                        </div>
                    </div>
                    <div id="divletterTab1t2Table_loader" class="search-background">
                        <img width="64" height="" src="img/loading.gif"/>
                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                    </div>
                    <div id="divletterTab1t2" runat="server" class="reports">
                        <label style="font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px">
                            Хугацаа хэтрүүлж хариу өгсөн бичгийн жагсаалт
                        </label>
                        <div id="divletterTab1t2Table" runat="server">
                            
                        </div>
                    </div>
                </div>
                <div id="letterTab3" class="tab-pane fade">
                    <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                        <div style="width:70%; float:left;">
                            <div style="width:45px; float:left; margin-right:10px; margin-top: 7px;">Хугацаа:</div>
                            <div style="width:245px; float:left; margin-right:10px;">
                                <div class="form-group" style="width: 100%;">
                                    <div class="input-group" style="width: 110px; float: left; margin-right: 20px;">
                                        <input type="text" placeholder="Эхлэх" name="divletterTab1t3Start_date" id="divletterTab1t3Start_date" runat="server" class="form-control datepicker" data-dateformat="yyyy-mm-dd" style="padding:1px;" />
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                    </div>
                                    <div class="input-group" style="width: 110px; float: left;">
                                        <input type="text" placeholder="Дуусах" name="divletterTab1t3End_date" id="divletterTab1t3End_date" runat="server" class="form-control datepicker" data-dateformat="yyyy-mm-dd" style="padding:1px;" />
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                    </div>
                                </div>
                            </div>
                            <div style="width:35px; float:left; margin-right:10px; margin-top: 7px;">Газар:</div>
                            <div style="width:80px; float:left; margin-right:10px;">
                                <select id="letterTab1t3SelectBranch" runat="server" class="form-control" style="padding:1px;"></select>
                            </div>
                        </div>
                        <div style="text-align:right; width:30%; float:left;">
                            <img id="letterTab1t3ExportPdf" src="../img/pdf-icon.png" style="cursor: pointer;" title="PDF руу татах" onclick="exportPdf('#divletterTab1t3')" />
                            <img id="letterTab1t3ExportWord" src="../img/word-icon.png" style="cursor: pointer;" title="Word руу татах" onclick="exportWord('#divletterTab1t3', 'Хугацаа хэтэрсэн шийдвэрлээгүй бичгийн жагсаалт')" />
                            <img id="letterTab1t3ExportExcel" src="../img/excel-icon.png" style="cursor: pointer;" title="Excel руу татах" onclick="exportExcel('#divletterTab1t3')" />
                            <button id="letterTab1t3ExportPrint" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divletterTab1t3')"><span class="fa fa-print"></span>Хэвлэх </button>
                            <button id="letterTab1t3Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span></button>
                        </div>
                    </div>
                    <div id="divletterTab1t3Table_loader" class="search-background">
                        <img width="64" height="" src="img/loading.gif"/>
                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                    </div>
                    <div id="divletterTab1t3" runat="server" class="reports">
                        <label style="font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px">
                            Хугацаа хэтэрсэн шийдвэрлээгүй бичгийн жагсаалт
                        </label>
                        <div id="divletterTab1t3Table" runat="server">
                            
                        </div>
                    </div>
                </div>
                <div id="letterTab4" class="tab-pane fade">
                    <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                        <div style="width:70%; float:left;">
                            <div style="width:45px; float:left; margin-right:10px; margin-top: 7px;">Хугацаа:</div>
                            <div style="width:245px; float:left; margin-right:10px;">
                                <div class="form-group" style="width: 100%;">
                                    <div class="input-group" style="width: 110px; float: left; margin-right: 20px;">
                                        <input type="text" placeholder="Эхлэх" name="divletterTab1t4Start_date" id="divletterTab1t4Start_date" runat="server" class="form-control datepicker" data-dateformat="yyyy-mm-dd" style="padding:1px;" />
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                    </div>
                                    <div class="input-group" style="width: 110px; float: left;">
                                        <input type="text" placeholder="Дуусах" name="divletterTab1t4End_date" id="divletterTab1t4End_date" runat="server" class="form-control datepicker" data-dateformat="yyyy-mm-dd" style="padding:1px;" />
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                    </div>
                                </div>
                            </div>
                            <div style="width:35px; float:left; margin-right:10px; margin-top: 7px;">Газар:</div>
                            <div style="width:80px; float:left; margin-right:10px;">
                                <select id="letterTab1t4SelectBranch" runat="server" class="form-control" style="padding:1px;"></select>
                            </div>
                        </div>
                        <div style="text-align:right; width:30%; float:left;">
                            <img id="letterTab1t4ExportPdf" src="../img/pdf-icon.png" style="cursor: pointer;" title="PDF руу татах" onclick="exportPdf('#divletterTab1t4')" />
                            <img id="letterTab1t4ExportWord" src="../img/word-icon.png" style="cursor: pointer;" title="Word руу татах" onclick="exportWord('#divletterTab1t4', 'ХШҮ-ний товч тайлан')" />
                            <img id="letterTab1t4ExportExcel" src="../img/excel-icon.png" style="cursor: pointer;" title="Excel руу татах" onclick="exportExcel('#divletterTab1t4')" />
                            <button id="letterTab1t4ExportPrint" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divletterTab1t4')"><span class="fa fa-print"></span>Хэвлэх </button>
                            <button id="letterTab1t4Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span></button>
                        </div>
                    </div>
                    <div id="divletterTab1t4Table_loader" class="search-background" style="z-index:999999999;">
                        <label>
                            <img width="64" height="" src="img/loading.gif"/>
                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                        </label>
                    </div>
                    <div id="divletterTab1t4" runat="server" class="reports">
                        <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px; display:none;">
                            Тайлант хугацаанд Сангийн яамны газруудад <label id="total_letter"></label> бичиг ирснээс <label id="total_cart"></label> бичигт бүртгэл<br />
                            хяналтын карт  нээсэн бөгөөд <label id="letter_date"></label> байдлаар шийдвэрлээгүй,<br /> 
                            хугацаа хэтэрсэн <label id="total_return"></label>, хугацаа хэтэрч шийдвэрлэсэн <label id="total_return_closed"></label> бичиг байна.
                        </div> 
                        <label style="font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px">
                            Ирсэн бичиг /газруудаар/
                        </label>
                        <div id="divletterTab1t4Table" runat="server">
                            <table style="border: 1px solid #000; border-collapse: collapse; font-family: 'Times New Roman'; font-size: 12px; width: 100%">
                                <tbody>
                                    <tr>
                                        <td rowspan="2" style="border: 1px solid #000; padding: 5px; text-align: center;">
                                            <p><strong>Газрууд</strong></p>
                                            <p>&nbsp;</p>
                                        </td>
                                        <td rowspan="2" style="border: 1px solid #000; padding: 5px; text-align: center;">
                                            <p><strong>Ирсэн</strong> <strong>бичиг</strong></p>
                                        </td>
                                        <td rowspan="2" style="border: 1px solid #000; padding: 5px; text-align: center;">
                                            <p><strong>Карттай</strong> <strong>бичиг</strong></p>
                                        </td>
                                        <td colspan="2" style="border: 1px solid #000; padding: 5px; text-align: center;">
                                            <p><strong>Шийдвэрлэсэн бичиг</strong></p>
                                        </td>
                                        <td rowspan="2" style="border: 1px solid #000; padding: 5px; text-align: center;">
                                            <p><strong>Шийдвэр-лээгүй </strong></p>

                                            <p><strong>хугацаа хэтэрсэн</strong></p>
                                        </td>
                                        <td rowspan="2" style="border: 1px solid #000; padding: 5px; text-align: center;">
                                            <p><strong>Шийдвэр-лэлтийн хувь</strong></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="border: 1px solid #000; padding: 5px; text-align: center;">
                                            <p><strong>Хуга-цаандаа</strong></p>
                                        </td>
                                        <td style="border: 1px solid #000; padding: 5px; text-align: center;">
                                            <p><strong>Хугацаа хэтэрч</strong></p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <br />
                        <label>
                            Хугацаа хэтрүүлж хариу өгсөн бичгийн жагсаалтыг авч үзвэл: 
                        </label>
                        <div id="divletterTab1t5Table" ></div>
                        <br />
                        <label>
                            Хугацаа хэтэрсэн шийдвэрлээгүй бичгийг авч үзвэл: 
                        </label>
                        <div id="divletterTab1t6Table"></div>
                    </div>
                </div>
            </div>
        </article>
    </div>
</section>
<script type="text/javascript">
    var globalAjaxVar = null;
    var pagefunction = function () {
        if ($('#letterTab1Li').attr('class') == 'active') {
            dataBindTab1Datatable();
        }
        else if ($('#letterTab2Li').attr('class') == 'active') {
            dataBindTab2Datatable();
        }
        else if ($('#letterTab3Li').attr('class') == 'active') {
            dataBindTab3Datatable();
        }
        else if ($('#letterTab4Li').attr('class') == 'active') {
            dataBindTab4Datatable();
        }
    }
    var pagedestroy = function () {
        if (globalAjaxVar != null) {
            globalAjaxVar.abort();
            globalAjaxVar = null;
        }
    }
    pagefunction();
    function letterDatabindTabs(el) {
        if ($.trim($(el).attr('id')) == 'letterTab1Li') {
            if ($.trim($('#divletterTab1t1Table').html()) == "") {
                dataBindTab1Datatable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'letterTab2Li') {
            if ($.trim($('#divletterTab1t2Table').html()) == "") {
                dataBindTab2Datatable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'letterTab3Li') {
            if ($.trim($('#divBindTab3Table').html()) == "") {
                dataBindTab3Datatable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'letterTab4Li') {
            if ($.trim($('#divtogtoolTab4t1Datatable').html()) == "") {
                dataBindTab4Datatable();
            }
        }
    }

    //tab1
    function dataBindTab1Datatable() {
        var valData = '';
        var intRowNum = 1, intD1 = 0, intD2 = 0, intD3 = 0, intD4 = 0, intD5 = 0, intD6 = 0, intD7 = 0;
        var today = new Date();
        showLoader('divletterTab1t1Table_loader');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/LetterTab1Datatable1",
            data: '{"startdate":"' + $("#divletterTab1t1Start_date").val() + '", "enddate":"' + $("#divletterTab1t1End_date").val() + '", "gazar":"' + $("#letterTab1t1SelectBranch option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<label style=\"margin:0; float: right;\"><i>Хугацаа: " + $("#divletterTab1t1Start_date").val() + " - " + $("#divletterTab1t1End_date").val() + "</i></label>";
                valData += "<table style=\"border:1px solid #000;-webkit-print-color-adjust:exact; border-collapse:collapse; font-family:Arial; font-size:12px; width:100%\">";
                valData += "<thead style=\"background-color: #C6D9F1;\">";
                valData += "<tr>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle; width:35px;\">№</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Газар</th>";
                valData += "<th colspan=\"2\" style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Оны эхнээс</th>";
                valData += "<th colspan=\"2\" style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Тайлант хугацаанд</th>";
                valData += "</tr>";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Ирсэн</th>";
                valData += "<th style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Карттай</th>";
                valData += "<th style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Ирсэн</th>";
                valData += "<th style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Карттай</th>";
                valData += "</tr>";
                valData += "</thead>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intRowNum + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.BR_NAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D1 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D2 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D3 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D4 + "</td>";
                    valData += "</tr>";
                    intRowNum++;
                    intD1 += parseInt(value.D1);
                    intD2 += parseInt(value.D2);
                    intD3 += parseInt(value.D3);
                    intD4 += parseInt(value.D4);
                });
                valData += "<tfoot style=\"background-color: #C6D9F1;\">";
                valData += "<tr>";
                valData += "<th colspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Нийт</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intD1 + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intD2 + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intD3 + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intD4 + "</th>";
                valData += "</tr>";
                valData += "</tfoot>";
                valData += "</table>";
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/LetterTab1Datatable2",
                    data: '{"startdate":"' + $("#divletterTab1t1Start_date").val() + '", "enddate":"' + $("#divletterTab1t1End_date").val() + '", "gazar":"' + $("#letterTab1t1SelectBranch option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData += "<br>";
                        valData += "<br>";
                        intRowNum = 1; intD1 = 0; intD2 = 0; intD3 = 0; intD4 = 0; intD5 = 0; intD6 = 0; intD7 = 0;
                        valData += "<label style=\"margin:0; float: right;\"><i>Хугацаа: " + $("#divletterTab1t1Start_date").val() + " - " + $("#divletterTab1t1End_date").val() + "</i></label>";
                        valData += "<table style=\"border:1px solid #000;-webkit-print-color-adjust:exact; border-collapse:collapse; font-family:Arial; font-size:12px; width:100%\">";
                        valData += "<thead style=\"background-color: #C6D9F1;\">";
                        valData += "<tr>";
                        valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle; width:35px;\">№</th>";
                        valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Газар</th>";
                        valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">" + $("#divletterTab1t1Start_date").val().toString().replace(/-/g, ".") + "-" + $("#divletterTab1t1End_date").val().toString().replace(/-/g, ".") + "-ны хооронд шийдвэрлэх ёстой</th>";
                        valData += "<th colspan=\"2\" style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">" + $("#divletterTab1t1Start_date").val().toString().replace(/-/g, ".") + "-" + $("#divletterTab1t1End_date").val().toString().replace(/-/g, ".") + "-ны хооронд шийдвэрлэсэн</th>";
                        valData += "<th colspan=\"2\" style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">" + $("#divletterTab1t1End_date").val().toString().replace(/-/g, ".") + "-ны байдлаар шийдвэрлээгүй албан бичиг</th>";
                        valData += "<th colspan=\"2\" style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">" + today.getFullYear() + "." + (today.getMonth() + 1) + "." + today.getDate() + "-ны байдлаар карттай албан бичиг</th>";
                        valData += "</tr>";
                        valData += "<tr>";
                        valData += "<th style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Хугацаандаа</th>";
                        valData += "<th style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Хугацаа хэтэрч шийдвэрлэсэн</th>";
                        valData += "<th style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Хугацаа хэтэрсэн</th>";
                        valData += "<th style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Хугацаандаа</th>";
                        valData += "<th style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Нийт</th>";
                        valData += "<th style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Хугацаа хэтэрсэн</th>";
                        valData += "</tr>";
                        valData += "</thead>";
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<tr>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intRowNum + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.BR_NAME + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + (parseInt(value.D21) + parseInt(value.D22) + parseInt(value.D23)) + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D21 + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D22 + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D23 + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D31 + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D32 + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D33 + "</td>";
                            valData += "</tr>";
                            intRowNum++;
                            intD1 += (parseInt(value.D21) + parseInt(value.D22) + parseInt(value.D23));
                            intD2 += parseInt(value.D21);
                            intD3 += parseInt(value.D22);
                            intD4 += parseInt(value.D23);
                            intD5 += parseInt(value.D31);
                            intD6 += parseInt(value.D32);
                            intD7 += parseInt(value.D33);
                        });
                        valData += "<tfoot style=\"background-color: #C6D9F1;\">";
                        valData += "<tr>";
                        valData += "<th colspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Нийт</th>";
                        valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intD1 + "</th>";
                        valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intD2 + "</th>";
                        valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intD3 + "</th>";
                        valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intD4 + "</th>";
                        valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intD5 + "</th>";
                        valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intD6 + "</th>";
                        valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intD7 + "</th>";
                        valData += "</tr>";
                        valData += "</tfoot>";
                        valData += "</table>";
                        $("#divletterTab1t1Table").html(valData);
                        hideLoader('divletterTab1t1Table_loader');
                    },
                    failure: function (response) {
                        alert(response.d);
                    },
                    error: function (xhr, status, error) {
                        window.location = '../#pg/error500.aspx';
                    }
                });
            },
            failure: function (response) {
                alert(response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#divletterTab1t1Start_date, #divletterTab1t1End_date").change(function () {
        if ($("#divletterTab1t1Start_date").val() != "" && $("#divletterTab1t1End_date").val() != "") {
            dataBindTab1Datatable();
        }
    });
    $("#letterTab1t1SelectBranch").change(function () {
        dataBindTab1Datatable();
    });

    //tab2
    function dataBindTab2Datatable() {
        var valData = '';
        var intRowNum = 1;
        showLoader('divletterTab1t2Table_loader');
        $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/LetterTab2Datatable",
            data: '{"startdate":"' + $("#divletterTab1t2Start_date").val() + '", "enddate":"' + $("#divletterTab1t2End_date").val() + '", "gazar":"' + $("#letterTab1t2SelectBranch option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<label style=\"margin:0; float: right;\"><i>Хугацаа: " + $("#divletterTab1t2Start_date").val() + " - " + $("#divletterTab1t2End_date").val() + "</i></label>";
                intRowNum = 1;
                valData += " <table style=\"border:1px solid #000;-webkit-print-color-adjust:exact; border-collapse:collapse; font-family:Arial; font-size:12px; width:100%\"><thead style=\"background-color: #C6D9F1;font-weight:bold;\"\"><tr><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>№</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Ирсэн бичгийн огноо</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Бичгийн дугаар</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Хаанаас ирүүлсэн</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Товч утга</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Хэнд ирсэн</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Хариу өгөх огноо</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Хариу өгсөн огноо</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Газар</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Хариу өгөх мэргэжилтэн</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Тайлбар</p></td></tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intRowNum + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; width: 80px;\">" + value.REGDATE.toString().substring(0, 10) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.DOCNUM+ "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.ORGNAME + ", " + value.INFROMWHO + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.SHORTDESC + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.MNAME + "." + value.LNAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.RETURNDATE.toString().substring(0, 10) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.CLOSEDDATE.toString().substring(0, 10) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.DOMAIN_ORG + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.MNAME + "." + value.LNAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.CONTROLDIRECTION + "</td>";
                    valData += "</tr>";
                    intRowNum++;
                });
                valData += "</tbody></table>";
                $("#divletterTab1t2Table").html(valData);
                hideLoader('divletterTab1t2Table_loader');
            },
            failure: function (response) {
                alert(response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#divletterTab1t2Start_date, #divletterTab1t2End_date").change(function () {
        if ($("#divletterTab1t2Start_date").val() != "" && $("#divletterTab1t2End_date").val() != "") {
            dataBindTab2Datatable();
        }
    });
    $("#letterTab1t2SelectBranch").change(function () {
        dataBindTab2Datatable();
    });

    //tab3
    function dataBindTab3Datatable() {
        var valData = '';
        var intRowNum = 1;
        showLoader('divletterTab1t3Table_loader');
        $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/LetterTab3Datatable",
            data: '{"startdate":"' + $("#divletterTab1t3Start_date").val() + '", "enddate":"' + $("#divletterTab1t3End_date").val() + '", "gazar":"' + $("#letterTab1t3SelectBranch option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<label style=\"margin:0; float: right;\"><i>Хугацаа: " + $("#divletterTab1t3Start_date").val() + " - " + $("#divletterTab1t3End_date").val() + "</i></label>";
                intRowNum = 1;
                valData += " <table style=\"border:1px solid #000;-webkit-print-color-adjust:exact; border-collapse:collapse; font-family:Arial; font-size:12px; width:100%\"><thead style=\"background-color: #C6D9F1;font-weight:bold;\"\"><tr><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>№</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Ирсэн бичгийн огноо</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Бичгийн дугаар</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Хаанаас ирүүлсэн</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Товч утга</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Хэнд ирсэн</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Хариу өгөх огноо</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Газар</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Хариу өгөх мэргэжилтэн</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Тайлбар</p></td></tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intRowNum + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; width: 80px;\">" + value.REGDATE.toString().substring(0,10) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.DOCNUM + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.ORGNAME + ", " + value.INFROMWHO + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.SHORTDESC + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.MNAME + "." + value.LNAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.RETURNDATE.toString().substring(0, 10) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.DOMAIN_ORG + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.MNAME + "." + value.LNAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.CONTROLDIRECTION + "</td>";
                    valData += "</tr>";
                    intRowNum++;
                });
                valData += "</tbody></table>";
                $("#divletterTab1t3Table").html(valData);
                hideLoader('divletterTab1t3Table_loader');
            },
            failure: function (response) {
                alert(response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#divletterTab1t3Start_date, #divletterTab1t3End_date").change(function () {
        if ($("#divletterTab1t3Start_date").val() != "" && $("#divletterTab1t3End_date").val() != "") {
            dataBindTab3Datatable();
        }
    });
    $("#letterTab1t3SelectBranch").change(function () {
        dataBindTab3Datatable();
    });

    //tab4
    function dataBindTab4Datatable() {
        var valData = '';
        var intRowNum = 1, intD1 = 0, intD2 = 0, intD3 = 0, intD4 = 0, intD5 = 0, intD6 = 0, intD7 = 0;
        var today = new Date();
        var intRowNum = 1;
        showLoader('divletterTab1t4Table_loader');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/LetterTab1Datatable1",
            data: '{"startdate":"' + $("#divletterTab1t4Start_date").val() + '", "enddate":"' + $("#divletterTab1t4End_date").val() + '", "gazar":"' + $("#letterTab1t4SelectBranch option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<label style=\"margin:0; float: right;\"><i>Хугацаа: " + $("#divletterTab1t4Start_date").val() + " - " + $("#divletterTab1t4End_date").val() + "</i></label>";
                valData += "<table style=\"border:1px solid #000;-webkit-print-color-adjust:exact; border-collapse:collapse; font-family:Arial; font-size:12px; width:100%\">";
                valData += "<thead style=\"background-color: #C6D9F1;\">";
                valData += "<tr>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle; width:35px;\">№</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Газар</th>";
                valData += "<th colspan=\"2\" style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Оны эхнээс</th>";
                valData += "<th colspan=\"2\" style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Тайлант хугацаанд</th>";
                valData += "</tr>";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Ирсэн</th>";
                valData += "<th style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Карттай</th>";
                valData += "<th style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Ирсэн</th>";
                valData += "<th style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Карттай</th>";
                valData += "</tr>";
                valData += "</thead>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intRowNum + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.BR_NAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D1 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D2 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D3 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D4 + "</td>";
                    valData += "</tr>";
                    intRowNum++;
                    intD1 += parseInt(value.D1);
                    intD2 += parseInt(value.D2);
                    intD3 += parseInt(value.D3);
                    intD4 += parseInt(value.D4);
                });
                valData += "<tfoot style=\"background-color: #C6D9F1;\">";
                valData += "<tr>";
                valData += "<th colspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Нийт</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intD1 + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intD2 + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intD3 + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intD4 + "</th>";
                valData += "</tr>";
                valData += "</tfoot>";
                valData += "</table>";
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/LetterTab1Datatable2",
                    data: '{"startdate":"' + $("#divletterTab1t4Start_date").val() + '", "enddate":"' + $("#divletterTab1t4End_date").val() + '", "gazar":"' + $("#letterTab1t4SelectBranch option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData += "<br>";
                        valData += "<br>";
                        intRowNum = 1; intD1 = 0; intD2 = 0; intD3 = 0; intD4 = 0; intD5 = 0; intD6 = 0; intD7 = 0;
                        valData += "<label style=\"margin:0; float: right;\"><i>Хугацаа: " + $("#divletterTab1t4Start_date").val() + " - " + $("#divletterTab1t4End_date").val() + "</i></label>";
                        valData += "<table style=\"border:1px solid #000;-webkit-print-color-adjust:exact; border-collapse:collapse; font-family:Arial; font-size:12px; width:100%\">";
                        valData += "<thead style=\"background-color: #C6D9F1;\">";
                        valData += "<tr>";
                        valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle; width:35px;\">№</th>";
                        valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Газар</th>";
                        valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">" + $("#divletterTab1t4Start_date").val() + "-" + $("#divletterTab1t4nd_date").val() + "-ны хооронд шийдвэрлэх ёстой</th>";
                        valData += "<th colspan=\"2\" style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">" + $("#divletterTab1t4Start_date").val() + "-" + $("#divletterTab1t4End_date").val() + "-ны хооронд шийдвэрлэсэн</th>";
                        valData += "<th colspan=\"2\" style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">" + $("#divletterTab1t4End_date").val() + "-ны байдлаар шийдвэрлээгүй албан бичиг</th>";
                        valData += "<th colspan=\"2\" style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">" + today.getFullYear() + "." + (today.getMonth() + 1) + "." + today.getDate() + "-ны байдлаар карттай албан бичиг</th>";
                        valData += "</tr>";
                        valData += "<tr>";
                        valData += "<th style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Хугацаандаа</th>";
                        valData += "<th style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Хугацаа хэтэрч шийдвэрлэсэн</th>";
                        valData += "<th style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Хугацаа хэтэрсэн</th>";
                        valData += "<th style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Хугацаандаа</th>";
                        valData += "<th style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Нийт</th>";
                        valData += "<th style=\"border: 1px solid #000; padding: 5px; text-align: center; vertical-align: middle;\">Хугацаа хэтэрсэн</th>";
                        valData += "</tr>";
                        valData += "</thead>";
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<tr>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intRowNum + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.BR_NAME + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + (parseInt(value.D21) + parseInt(value.D22) + parseInt(value.D23)) + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D21 + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D22 + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D23 + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D31 + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D32 + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D33 + "</td>";
                            valData += "</tr>";
                            intRowNum++;
                            intD1 += (parseInt(value.D21) + parseInt(value.D22) + parseInt(value.D23));
                            intD2 += parseInt(value.D21);
                            intD3 += parseInt(value.D22);
                            intD5 += parseInt(value.D31);
                            intD4 += parseInt(value.D23);
                            intD6 += parseInt(value.D32);
                            intD7 += parseInt(value.D33);
                        });
                        valData += "<tfoot style=\"background-color: #C6D9F1;\">";
                        valData += "<tr>";
                        valData += "<th colspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Нийт</th>";
                        valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intD1 + "</th>";
                        valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intD2 + "</th>";
                        valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intD3 + "</th>";
                        valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intD4 + "</th>";
                        valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intD5 + "</th>";
                        valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intD6 + "</th>";
                        valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intD7 + "</th>";
                        valData += "</tr>";
                        valData += "</tfoot>";
                        valData += "</table>";
                        $("#divletterTab1t4Table").html(valData);
                        $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/LetterTab2Datatable",
                            data: '{"startdate":"' + $("#divletterTab1t4Start_date").val() + '", "enddate":"' + $("#divletterTab1t4End_date").val() + '", "gazar":"' + $("#letterTab1t4SelectBranch option:selected").val() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                intRowNum = 1;
                                valData += " <table style=\"border:1px solid #000;-webkit-print-color-adjust:exact; border-collapse:collapse; font-family:Arial; font-size:12px; width:100%\"><thead style=\"background-color: #C6D9F1;font-weight:bold;\"\"><tr><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>№</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Ирсэн бичгийн огноо</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Бичгийн дугаар</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Хаанаас ирүүлсэн</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Товч утга</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Хэнд ирсэн</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Хариу өгөх огноо</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Хариу өгсөн огноо</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Газар</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Хариу өгөх мэргэжилтэн</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Тайлбар</p></td></tr></thead><tbody>";
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += "<tr>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intRowNum + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; width: 80px;\">" + value.REGDATE.toString().substring(0, 10) + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.DOCNUM + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.ORGNAME + ", " + value.INFROMWHO + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.SHORTDESC + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.MNAME + "." + value.LNAME + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.RETURNDATE.toString().substring(0, 10) + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.CLOSEDDATE.toString().substring(0, 10) + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.DOMAIN_ORG + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.MNAME + "." + value.LNAME + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.CONTROLDIRECTION + "</td>";
                                    valData += "</tr>";
                                    intRowNum++;
                                });
                                valData += "</tbody></table>";
                                $("#divletterTab1t5Table").html(valData);
                                $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/LetterTab3Datatable",
                                    data: '{"startdate":"' + $("#divletterTab1t4Start_date").val() + '", "enddate":"' + $("#divletterTab1t4End_date").val() + '", "gazar":"' + $("#letterTab1t4SelectBranch option:selected").val() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (data) {
                                        valData = '';
                                        intRowNum = 1;
                                        valData += " <table style=\"border:1px solid #000;-webkit-print-color-adjust:exact; border-collapse:collapse; font-family:Arial; font-size:12px; width:100%\"><thead style=\"background-color: #C6D9F1;font-weight:bold;\"\"><tr><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>№</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Ирсэн бичгийн огноо</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Бичгийн дугаар</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Хаанаас ирүүлсэн</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Товч утга</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Хэнд ирсэн</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Хариу өгөх огноо</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Газар</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Хариу өгөх мэргэжилтэн</p></td><td style=\"border: 1px solid #000; padding: 5px; text-align: center;\"><p>Тайлбар</p></td></tr></thead><tbody>";
                                        $($.parseJSON(data.d)).each(function (index, value) {
                                            valData += "<tr>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intRowNum + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; width: 80px;\">" + value.REGDATE.toString().substring(0, 10) + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.DOCNUM + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.ORGNAME + ", " + value.INFROMWHO + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.SHORTDESC + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.MNAME + "." + value.LNAME + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.RETURNDATE.toString().substring(0, 10) + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.DOMAIN_ORG + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.MNAME + "." + value.LNAME + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.CONTROLDIRECTION + "</td>";
                                            valData += "</tr>";
                                            intRowNum++;
                                        });
                                        valData += "</tbody></table>";
                                        $("#divletterTab1t6Table").html(valData);
                                        hideLoader('divletterTab1t4Table_loader');
                                    },
                                    failure: function (response) {
                                        alert(response.d);
                                    },
                                    error: function (xhr, status, error) {
                                        window.location = '../#pg/error500.aspx';
                                    }
                                });
                            },
                            failure: function (response) {
                                alert(response.d);
                            },
                            error: function (xhr, status, error) {
                                window.location = '../#pg/error500.aspx';
                            }
                        });
                    },
                    failure: function (response) {
                        alert(response.d);
                    },
                    error: function (xhr, status, error) {
                        window.location = '../#pg/error500.aspx';
                    }
                });
            },
            failure: function (response) {
                alert(response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#divletterTab1t4Start_date, #divletterTab1t4End_date").change(function () {
        if ($("#divletterTab1t4Start_date").val() != "" && $("#divletterTab1t4End_date").val() != "") {
            dataBindTab4Datatable();
        }
    });
    $("#letterTab1t4SelectBranch").change(function () {
        dataBindTab4Datatable();
    });



    $('.datepicker').datepicker({
        changeMonth: true,
        changeYear: true,
        dateFormat: 'yy-mm-dd',
        prevText: '<i class="fa fa-chevron-left"></i>',
        nextText: '<i class="fa fa-chevron-right"></i>',
        monthNames: ["1-р сар", "2-р сар", "3-р сар", "4-р сар", "5-р сар", "6-р сар", "7-р сар", "8-р сар", "9-р сар", "10-р сар", "11-р сар", "12-р сар"],
        monthNamesShort: ["1-р сар", "2-р сар", "3-р сар", "4-р сар", "5-р сар", "6-р сар", "7-р сар", "8-р сар", "9-р сар", "10-р сар", "11-р сар", "12-р сар"],
        dayNamesMin: ['Ня', 'Да', 'Мя', 'Лх', 'Пү', 'Ба', 'Бя']
    });
</script>
