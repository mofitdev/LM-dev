<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="srvclient.aspx.cs" Inherits="LMWebApp.pg.srvclient" %>
<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
    <h1 class="page-title txt-color-blueDark">
    <i class="fa-fw fa fa-home"></i>
    <span>> Үйлчлүүлэгчийн үнэлгээ</span>
    </h1>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
            <ul class="nav nav-tabs bordered">
                <li class="active">
                    <a data-toggle="tab" href="#srvclientTab1">
                        Тайлан
                    </a>
                </li>
            </ul>
            <div id="srvclientTabContent" class="tab-content">
                <div id="srvclientTab1" class="tab-pane active">
                    <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                        <div style="width:70%; float:left;">
                            <div style="width:60px; float:left; margin-right:10px;"><select id="srvclientTab1SelectYear" name="srvclientTab1SelectYear" runat="server" class="form-control" style="padding:1px"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select></div>
                            <div style="width:90px; float:left; margin-right:10px;"><select id="srvclientTab1SelectMonth" name="srvclientTab1SelectMonth" runat="server" class="form-control" style="padding:1px"><option value="1">1-р сар</option><option value="2">2-р сар</option><option value="3">3-р сар</option><option value="4">4-р сар</option><option value="5">5-р сар</option><option value="6">6-р сар</option><option value="7">7-р сар</option><option value="8">8-р сар</option><option value="9">9-р сар</option><option value="10">10-р сар</option><option value="11">11-р сар</option><option value="12">12-р сар</option></select></div>
                            <div style="width:10px; float:left; margin-right:10px;padding-top: 7px;">-</div>
                            <div style="width:90px; float:left; margin-right:10px;"><select id="srvclientTab1SelectMonth2" name="srvclientTab1SelectMonth2" runat="server" class="form-control" style="padding:1px"><option value="1">1-р сар</option><option value="2">2-р сар</option><option value="3">3-р сар</option><option value="4">4-р сар</option><option value="5">5-р сар</option><option value="6">6-р сар</option><option value="7">7-р сар</option><option value="8">8-р сар</option><option value="9">9-р сар</option><option value="10">10-р сар</option><option value="11">11-р сар</option><option value="12">12-р сар</option></select></div>
                        </div>
                        <div style="text-align:right; width:30%; float:left;">
                            <div class="btn-group pull-right">
                                <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divsrvclientTab1', 'Үйлчлүүлэгчийн үнэлгээ')">
                                    <i class="fa fa-file-word-o"></i>
                                </a>
                                <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divsrvclientTab1')">
                                    <i class="fa fa-print"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div id="loaderTab1" class="search-background">
                        <label>
                            <img width="64" height="" src="img/loading.gif"/>
                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                        </label>
                    </div>
                    <div id="divsrvclientTab1" runat="server" class="reports" style="margin:0 10px 10px 10px;">                        
                        <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                            <label id="divsrvclientTab1Year" runat="server" style="font-weight:bold;">0000</label> оны <label id="divsrvclientTab1Month" runat="server" style="font-weight:bold;">00</label> сарын газруудад өгсөн үйлчлүүлэгчийн үнэлгээ  
                        </div>
                        <div id="divsrvclientTab1Datatable" runat="server" style="display:block;"></div>                         
                    </div>
                </div>
            </div>
        </article>
    </div>
</section>
<script>
    pageSetUp();
    var globalAjaxVar = null;
    var pagefunction = function () {
        dataBindTab1Datatable();
    }
    var pagedestroy = function () {
        if (globalAjaxVar != null) {
            globalAjaxVar.abort();
            globalAjaxVar = null;
        }
    }
    pagefunction();
    //$(document).ready(function () {
    //    dataBindTab1Datatable();
    //});
    function dataBindTab1Datatable() {
        var valData = '';
        showLoader('loaderTab1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/SrvclientTab1Datatable",
            data: '{"yr":"' + $("#srvclientTab1SelectYear option:selected").val() + '", "mnth":"' + $("#srvclientTab1SelectMonth option:selected").val() + '", "mnth2":"' + $("#srvclientTab1SelectMonth2 option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                var valCount=0;
                var valC1=0, valC2=0, valC3=0, valC4=0, valC5=0, valPer=0;
                valData = '';
                valData += "<table id=\"srvclientTab1Datatable\" style=\"border:1px solid #000; border-collapse:collapse; font-family:'Times New Roman'; font-size:12px; width:100%\">";
                valData += "<thead>";
                valData += "<tr style=\"background-color:lightgray;\">";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Газрын нэр</th>";
                valData += "<th colspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хэрэгцээ, зорилгоо хангасан эсэх</th>";
                valData += "<th colspan=\"3\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хэрэглэгчийн сэтгэл ханамжийн байдал</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хувь</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Оноо</th>";
                valData += "</tr>";
                valData += "<tr style=\"background-color:lightgray;\">";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Тийм</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Үгүй</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хангалуун</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Дунд зэрэг</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хангалуун бус</th>";
                valData += "</tr>";
                valData += "</thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.BR_NAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.TP1SRV1 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.TP1SRV0 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.TP2SRV1 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.TP2SRV2 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.TP2SRV3 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\"><span class=\"badge " + value.PERCOLOR + "\">" + value.PER + " %</span></td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.PNT + "</td>";
                    valData += "</tr>";
                    valC1 += parseInt(value.TP1SRV1);
                    valC2 += parseInt(value.TP1SRV0);
                    valC3 += parseInt(value.TP2SRV1);
                    valC4 += parseInt(value.TP2SRV2);
                    valC5 += parseInt(value.TP2SRV3);
                    valCount++;
                    valPer += parseFloat(value.PER);
                });
                valData += "</tbody>";
                valData += "<tfoot>";
                valData += "<tr style=\"background-color:lightgray;\">";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">НИЙТ ДҮН</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + valC1 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + valC2 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + valC3 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + valC4 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + valC5 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + (valPer / valCount).toFixed(1).toString().replace("NaN", "-") + " %</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">&nbsp;</td>";
                valData += "</tr>";
                valData += "</tfoot>";
                valData += "</table>";
                $('#divsrvclientTab1Year').text($('#srvclientTab1SelectYear option:selected').val());
                if ($('#srvclientTab1SelectMonth option:selected').val() == $('#srvclientTab1SelectMonth2 option:selected').val()) $('#divsrvclientTab1Month').text($('#srvclientTab1SelectMonth option:selected').val());
                else $('#divsrvclientTab1Month').text($('#srvclientTab1SelectMonth option:selected').val() + '-' + $('#srvclientTab1SelectMonth2 option:selected').val());
                $("#divsrvclientTab1Datatable").html(valData);
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
    $("#srvclientTab1SelectYear").change(function () {
        dataBindTab1Datatable();
    });
    $("#srvclientTab1SelectMonth, #srvclientTab1SelectMonth2").change(function () {
        if (parseInt($('#srvclientTab1SelectMonth option:selected').val()) > parseInt($('#srvclientTab1SelectMonth2 option:selected').val())) {
            alert('Эхлэх сар дуусах сараас бага буюу тэнцүү байна');
            $('#srvclientTab1SelectMonth').val($('#srvclientTab1SelectMonth2 option:selected').val());
        }
        else dataBindTab1Datatable();
    });
</script>