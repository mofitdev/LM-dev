<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="risk.aspx.cs" Inherits="LMWebApp.pg.risk" %>
<div class="row">
	<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
		<h1 class="page-title txt-color-blueDark">
            <i class="fa-fw fa fa-home"></i>
            <span>> Эрсдэлийн бүртгэл</span>
        </h1>
	</div>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
            <ul class="nav nav-tabs bordered">
                <li class="active">
                    <a data-toggle="tab" href="#riskTab1">                        
                        Эрсдэлийн бүртгэл
                    </a>
                </li>
                <li>
                    <a data-toggle="tab" href="#riskTab2">
                        Тайлан
                    </a>
                </li>
            </ul>
            <div id="planmTabContent" class="tab-content">
                <div id="riskTab1" class="tab-pane active">
                    <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                            <h2> Эрсдлийн бүртгэл </h2>
                            <div class="widget-toolbar">
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <button class="btn btn-primary btn-xs" type="button" data-target="#riskTab1Modal" data-toggle="modal" onclick="showAddEditTab1(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                </div> 
                            </div>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div class="Colvis TableTools" style="width:130px;right:120px; top:0px; z-index:5; margin-top:5px;">
                                <select id="riskTab1SelectClass" name="riskTab1SelectClass" runat="server" class="form-control" style="padding:1px"><option value="0">Бүгд</option></select>
                            </div>
                            <div class="Colvis TableTools" style="right:255px; top:0px; z-index:5; margin-top:10px;">
                                Ангилал:
                            </div>
                            <div class="Colvis TableTools" style="width:80px;right:315px; top:0px; z-index:5; margin-top:5px;">
                                <select id="riskTab1SelectGazar" name="riskTab1SelectGazar" runat="server" class="form-control" style="padding:1px"><option value="0">Бүгд</option></select>
                            </div>
                            <div class="Colvis TableTools" style="right:400px; top:0px; z-index:5; margin-top:10px;">
                                Газар:
                            </div>
                            <div class="Colvis TableTools" style="width: 80px; right:450px; top:0px; z-index:5; margin-top:5px;">
                                <input id="riskTab1SelectEnddate" runat="server" name="riskTab1SelectEnddate" type="text" placeholder="Дуусах огноо" class="datepickerUpdate form-control" style="padding:1px">
							</div>
                            <div class="Colvis TableTools" style="width: 5px; right:535px; top:0px; z-index:5; margin-top:12px;">
                                -
                            </div>
                            <div class="Colvis TableTools" style="width: 80px; right:545px; top:0px; z-index:5; margin-top:5px;">
                                <input id="riskTab1SelectStartdate" runat="server" name="riskTab1SelectStartdate" type="text" placeholder="Эхлэх огноо" class="datepickerUpdate form-control" style="padding:1px">
							</div>
                            <div id="loaderTab1" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="divBindTab1Table" class="widget-body no-padding">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div id="riskTab2" class="tab-pane">

                </div>
            </div>
        </article>
    </div>
</section>
<div id="riskTab1Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="riskTab1ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Эрсдлийн бүртгэл&nbsp;<span id="riskTab1ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body smart-form">
                    <fieldset style="padding: 0px 14px 5px;">
                        <div class="col-md-6" style="margin-right:10px;">
                            <div id="riskID" class="form-group hide"></div>
                            <div class="form-group">
                                <label>Бүртгэсэн огноо</label>
                                <div class="btn-group btn-group-sm btn-group-justified" data-toggle="buttons">
                                    <label class="input"> 
                                        <i class="icon-append fa fa-calendar"></i>
										<input id="riskTab1ModalInputSuccesDate" name="riskTab1ModalInputSuccesDate" type="text" placeholder="Бүртгэсэн огноо" class="datepickerUpdate">
									</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Ангилал</label>
                                <label class="select">
                                    <select id="riskTab1ModalSelectClass" name="riskTab1ModalSelectClass" style="width:100%" runat="server">
                                        <option value="0">- Ангилал сонго -</option>
                                    </select>
                                    <i></i>
                                </label>
                            </div>
                            <div class="form-group">
                                <label>Газар</label>
                                <div id="riskTab1ModalDivSelectGazar">

                                </div>
                            </div>
                            <div class="form-group">
                                <label>Дугаар</label>
                                <label class="input">
                                    <input id="riskTab1ModalInputNo" name="riskTab1ModalInputNo" maxlength="3" type="text" placeholder="Дугаар">
                                </label>                                
                            </div>
                            <div class="form-group">
                                <label>Эрсдлийн үзэгдэл</label>
                                <label class="textarea">
                                     <textarea id="riskTab1ModalInputName" name="riskTab1ModalInputName" placeholder="Эрдлийн үзэгдэл" rows="6" maxlength="1000"></textarea>
                                </label>                               
                            </div>
                            <div class="form-group" style="display: block; overflow: hidden;">
                                <div class="col-sm-4">
                                    <label>Магадлал</label>
                                    <label class="select">
                                        <select id="riskTab1ModalSelectProbability" name="riskTab1ModalSelectProbability" style="width:100%" runat="server">
                                            <option value="0">- Магадлал сонго -</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select>
                                        <i></i>
                                    </label>
                                </div>
                                <div class="col-sm-4" style="margin-left: 10px;">
                                    <label>Нөлөөлөл</label>
                                    <label class="select">
                                        <select id="riskTab1ModalSelectImpact" name="riskTab1ModalSelectImpact" class="form-control" style="width:100%" runat="server">
                                            <option value="0">- Нөлөөлөл сонго -</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select>
                                        <i></i>
                                    </label>
                                </div>
                                <div class="col-sm-2" style="margin: 0 -10px 0 0; text-align:center;">
                                    <label>Нийлбэр</label>
                                    <div id="riskTab1ModalDivSum" style="font-size:14px;">0</div>
                                </div>
                                <div class="col-sm-2" style="margin: 0 -10px 0 0; text-align:center;">
                                    <label>Үнэлгээ</label>    
                                    <div id="riskTab1ModalDivRate" style="font-size:14px;">-</div>                                
                                </div>                             
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4">
                                    <label>Эрсдлийн хэлбэр</label>
                                    <label class="select">
                                        <select id="riskTab1ModalSelectStatus" name="riskTab1ModalSelectStatus" style="width:100%" runat="server">
                                            <option value="0">- Хэлбэр сонго -</option>
                                            <option value="1">Идэвхтэй</option>
                                            <option value="2">Шилжсэн</option>
                                        </select>
                                        <i></i>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="margin-right:-10px;">
                            <div class="form-group">
                                <label>Холбогдох хууль, журам, стратеги ба төлөвлөгөө</label>
                                <label class="textarea">
                                     <textarea id="riskTab1ModalInputDesc1" name="riskTab1ModalInputDesc1" placeholder="" rows="4" maxlength="1000"></textarea>
                                </label>                               
                            </div>
                            <div class="form-group">
                                <label>Эрсдэл үүсэх шалгуур, эрсдэлийн шалтгаан</label>
                                <label class="textarea">
                                     <textarea id="riskTab1ModalInputDesc2" name="riskTab1ModalInputDesc2" placeholder="" rows="4" maxlength="1000"></textarea>
                                </label>                               
                            </div>
                            <div class="form-group">
                                <label>Нөлөөлөл, үр дагавар</label>
                                <label class="textarea">
                                     <textarea id="riskTab1ModalInputDesc3" name="riskTab1ModalInputDesc3" placeholder="" rows="4" maxlength="1000"></textarea>
                                </label>                               
                            </div>
                            <div class="form-group">
                                <label>Тайлбар</label>
                                <label class="textarea">
                                     <textarea id="riskTab1ModalInputDesc4" name="riskTab1ModalInputDesc4" placeholder="" rows="4" maxlength="1000"></textarea>
                                </label>                               
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label>Хавсралт файл</label>
                                <div id="riskAttachmentTableDiv">
                                    <table id="riskAttachmentTable" border="0" cellpadding="0" cellspacing="0" style="font-size:14px;">
                                        <tbody>
                                            
                                        </tbody>
                                    </table>
                                </div>
                                <div id="riskAttachmentInputDiv">
                                    <label for="file" class="input input-file">
									    <div class="button state-success">
                                            <input id="riskAttachmentInput" type="file" onchange="riskAttachmentAddFile(this)" class="valid"/>
                                            Файл сонгох
									    </div>
                                        <input id="riskAttachmentInputDump" type="text" placeholder="Include some files" readonly="">
								    </label>
                                </div>
                            </div>  
                        </div>
                    </fieldset>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                    <button class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    pageSetUp();
    var globalAjaxVar = null;
    var pagefunction = function () {
        dataBindGazarList('');
        riskTab1SetFirstControls();
        $('#riskTab1SelectClass').html($('#riskTab1SelectClass').html().replace(/- Ангилал сонго -/g, 'Бүгд'));
    }
    var pagedestroy = function () {
        if (globalAjaxVar != null) {
            globalAjaxVar.abort();
            globalAjaxVar = null;
        }
    }
    pagefunction();
    //$(document).ready(function () {
    //    dataBindGazarList('');
    //    riskTab1SetFirstControls();
    //    //dataBindTab1Datatable();
    //    $('#riskTab1SelectClass').html($('#riskTab1SelectClass').html().replace(/- Ангилал сонго -/g, 'Бүгд'));
    //});
    //tab1
    function riskTab1SetFirstControls() {
        var userGazarId = '';
        userGazarId = $('#indexUserGazarId').html();
        var valData = ''
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr":"' + $('#riskTab1SelectStartdate').val().split('-')[0] + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#riskTab1SelectGazar").html('<option value="">Бүгд</option>' + valData);
                //$('#riskTab1SelectGazar').val(userGazarId);
                dataBindTab1Datatable();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab1Datatable() {
        var valData = '';
        var straddedit = "1";
        showLoader('loaderTab1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/RiskTab1Datatable",
            data: '{"startdate":"' + $("#riskTab1SelectStartdate").val() + '", "enddate":"' + $("#riskTab1SelectEnddate").val() + '", "gazarid":"' + $("#riskTab1SelectGazar option:selected").val() + '", "classid":"' + $("#riskTab1SelectClass option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData = "<table id=\"riskTab1Datatable\" class=\"table table-striped table-bordered table-hover smart-form\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th class=\"hide\"></th>";
                valData += "<th>#</th>";
                valData += "<th>Бүртгэсэн<br/>огноо</th>";
                valData += "<th class=\"hide\">Ангилал код</th>";
                valData += "<th>Ангилал</th>";
                valData += "<th class=\"hide\">Газар код</th>";
                valData += "<th>Газар</th>";
                valData += "<th>Дугаар</th>";
                valData += "<th>Эрсдэлийн үзэгдэл</th>";
                valData += "<th>М</th>";
                valData += "<th>Н</th>";
                valData += "<th>Нийлбэр,<br/>Үнэлгээ</th>";
                valData += "<th class=\"hide\">Хэлбэр код</th>";
                valData += "<th>Хэлбэр</th>";
                valData += "<th>Холбогдох хууль, журам,<br/>стратеги ба төлөвлөгөө</th>";
                valData += "<th>Эрсдэл үүсэх шалгуур,<br/>эрсдэлийн шалтгаан</th>";
                valData += "<th>Нөлөөлөл,<br/>үр дагавар</th>";
                valData += "<th>Тайлбар</th>";
                valData += "<th>&nbsp;</th>";
                valData += "<th>&nbsp;</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td class=\"hide\">" + value.RISK_ID + "</td>";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td>" + value.CONFIRM_DT + "</td>";
                    valData += "<td class=\"hide\">" + value.RISK_CLASS_NO + "</td>";
                    valData += "<td>" + value.RISK_CLASS_NAME + "</td>";
                    valData += "<td class=\"hide\">" + value.BRLISTID + "</td>";
                    valData += "<td>" + value.BRLISTNAME + "</td>";
                    valData += "<td>" + value.RISK_NO + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.RISK_NAME) + "</td>";
                    valData += "<td>" + value.PROBABILITY + "</td>";
                    valData += "<td>" + value.IMPACT + "</td>";
                    if (value.RATE == "Бага") valData += "<td><span class=\"label bg-color-red pull-right\" style=\"color: #fff; padding: 0 5px;\">" + value.NIILBER + " | " + value.RATE + "<span></td>";
                    else if (value.RATE == "Дунд") valData += "<td><span class=\"label bg-color-orange pull-right\" style=\"color: #fff; padding: 0 5px;\">" + value.NIILBER + " | " + value.RATE + "<span></td>";
                    else if (value.RATE == "Их") valData += "<td><span class=\"label bg-color-green pull-right\" style=\"color: #fff; padding: 0 5px;\">" + value.NIILBER + " | " + value.RATE + "<span></td>";
                    valData += "<td class=\"hide\">" + value.STATUS_ID + "</td>";
                    valData += "<td>" + value.STATUS_NAME + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.DESC1) + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.DESC2) + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.DESC3) + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.DESC4) + "</td>";
                    if (value.ISFILE == "1") valData += "<td><a href=\"../files/risk/" + value.FILE_NAME + "\" class=\"btn btn-link btn-xs\" style=\"padding:0px; border:none;\" download title=\"Хавсаргасан файл татах\"><i class=\"fa fa-paperclip fa-lg\"></i></a></td>";
                    else valData += "<td>&nbsp;</td>";
                    valData += "<td>";
                    if (straddedit == "1") valData += "<a style=\"cursor:pointer; margin-right:8px;\" onclick=\"showAddEditTab1(this,'засах');\" data-target=\"#riskTab1Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></a><a style=\"cursor:pointer;\" onclick=\"showDeleteTab1(this);\"><i class=\"fa fa-trash-o\"></i></a>";
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_riskTab1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#riskTab1Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_riskTab1Datatable) {responsiveHelper_riskTab1Datatable = new ResponsiveDatatablesHelper($('#riskTab1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_riskTab1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_riskTab1Datatable.respond();}});";
                valData += "<\/script>";
                $("#divBindTab1Table").html(valData);
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
    function dataBindGazarList(selectedList) {
        var valData = '';
        var valYear = $('#riskTab1ModalInputSuccesDate').val().split('-')[0];
        if ($.trim($('#riskTab1ModalInputSuccesDate').val()) == '') valYear = $('#indexCurrentYear').text();
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForSelect2",
            data: '{"yr":"' + valYear + '", "selectedList":"' + selectedList + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<option" + value.ISSELECTED + " value=\"" + value.BR_ID + "\">" + value.DOMAIN_ORG + "</option>";
                });
                $("#riskTab1ModalDivSelectGazar").html("<select id=\"riskTab1ModalSelectGazar\" name=\"riskTab1ModalSelectGazar\" multiple=\"multiple\" style=\"width:100%\">" + valData + "</select><script>$(\"#riskTab1ModalSelectGazar\").select2();<\/script>");
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#riskTab1ModalSelectProbability").change(function () {
        var varNum=(parseInt($('#riskTab1ModalSelectProbability option:selected').val()) * parseInt($('#riskTab1ModalSelectImpact option:selected').val()));
        $('#riskTab1ModalDivSum').text(varNum);
        if (varNum < 9) $('#riskTab1ModalDivRate').text('Бага');
        else if (varNum > 8 && varNum < 18) $('#riskTab1ModalDivRate').text('Дунд');
        else if (varNum > 17) $('#riskTab1ModalDivRate').text('Их');        
    });
    $("#riskTab1ModalSelectImpact").change(function () {
        var varNum = (parseInt($('#riskTab1ModalSelectProbability option:selected').val()) * parseInt($('#riskTab1ModalSelectImpact option:selected').val()));
        $('#riskTab1ModalDivSum').text(varNum);
        if (varNum < 9) $('#riskTab1ModalDivRate').text('Бага');
        else if (varNum > 8 && varNum < 18) $('#riskTab1ModalDivRate').text('Дунд');
        else if (varNum > 17) $('#riskTab1ModalDivRate').text('Их');
    });
    $("#riskTab1SelectGazar").change(function () {
        dataBindTab1Datatable();
    });
    $("#riskTab1SelectClass").change(function () {
        dataBindTab1Datatable();
    });
    function showAddEditTab1(el, isinsupt) {
        $('#riskTab1ModalHeaderLabel').text(isinsupt);
        if (isinsupt == 'нэмэх') {
            $('#riskID').text("");
            $('#riskTab1ModalInputSuccesDate').val("");
            $('#riskTab1ModalSelectClass').val(0);
            dataBindGazarList("");
            $('#riskTab1ModalInputNo').val("");
            $('#riskTab1ModalInputName').val("");
            $('#riskTab1ModalSelectProbability').val(0);
            $('#riskTab1ModalSelectImpact').val(0);
            $('#riskTab1ModalDivSum').text('0');
            $('#riskTab1ModalDivRate').text('-');
            $('#riskTab1ModalSelectStatus').val(0);
            $('#riskTab1ModalInputDesc1').val("");
            $('#riskTab1ModalInputDesc2').val("");
            $('#riskTab1ModalInputDesc3').val("");
            $('#riskTab1ModalInputDesc4').val("");
            $('#riskAttachmentTable').find('tbody').html("");
            $('#riskAttachmentInputDump').val("");
            $('#riskAttachmentTableDiv').css("display", "none");
            $('#riskAttachmentInputDiv').css("display", "block");
        }
        else {
            $('#riskID').text($(el).closest('tr').find('td:eq(0)').html());
            $('#riskTab1ModalInputSuccesDate').val($(el).closest('tr').find('td:eq(2)').html());
            $('#riskTab1ModalSelectClass').val($(el).closest('tr').find('td:eq(3)').html());
            dataBindGazarList($(el).closest('tr').find('td:eq(5)').html());
            $('#riskTab1ModalInputNo').val($(el).closest('tr').find('td:eq(7)').html());
            $('#riskTab1ModalInputName').val($(el).closest('tr').find('td:eq(8)').html());
            $('#riskTab1ModalSelectProbability').val($(el).closest('tr').find('td:eq(9)').html());
            $('#riskTab1ModalSelectImpact').val($(el).closest('tr').find('td:eq(10)').html());
            var varNum = (parseInt($(el).closest('tr').find('td:eq(9)').html()) + parseInt($(el).closest('tr').find('td:eq(10)').html()));
            $('#riskTab1ModalDivSum').text(varNum);
            if (varNum < 9) $('#riskTab1ModalDivRate').text('Бага');
            else if (varNum > 8 && varNum < 18) $('#riskTab1ModalDivRate').text('Дунд');
            else if (varNum > 17) $('#riskTab1ModalDivRate').text('Их');
            $('#riskTab1ModalSelectStatus').val($(el).closest('tr').find('td:eq(12)').html());
            $('#riskTab1ModalInputDesc1').val($(el).closest('tr').find('td:eq(14)').html());
            $('#riskTab1ModalInputDesc2').val($(el).closest('tr').find('td:eq(15)').html());
            $('#riskTab1ModalInputDesc3').val($(el).closest('tr').find('td:eq(16)').html());
            $('#riskTab1ModalInputDesc4').val($(el).closest('tr').find('td:eq(17)').html());
            if ($(el).closest('tr').find('td:eq(18) a').length != 0) {
                $('#riskAttachmentTable').find('tbody').html("<tr><td><a class=\"btn btn-link btn-xs\" href=\"" + $(el).closest('tr').find('td:eq(18)').find('a').attr('href') + "\" style=\"padding:0px; border:none;\" download>" + $(el).closest('tr').find('td:eq(18)').find('a').attr('href').split('/').pop() + "</a></td><td style=\"padding-left:10px\"><a href=\"javascript:void(0);\" class=\"btn btn-link btn-xs\" onclick=\"riskAttachmentRemoveRow(this)\"><i class=\"fa fa-trash-o\"></i> устгах</a></td></tr>");
                $('#riskAttachmentInput').val("");
                $('#riskAttachmentTableDiv').css("display", "block");
                $('#riskAttachmentInputDiv').css("display", "none");
            }
            else {
                $('#riskAttachmentTable').find('tbody').html("");
                $('#riskAttachmentInput').val("");
                $('#riskAttachmentTableDiv').css("display", "none");
                $('#riskAttachmentInputDiv').css("display", "block");
            }
        }
    }
    function showDeleteTab1(el) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Сонгосон эрсдэлийг устгах уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/RISK_DELETE",
                    data: '{"P_ID": "' + $(el).closest('tr').find('td:eq(0)').text() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab1Datatable();
                        smallBox('Сонгосон эрсдэл', 'Амжилттай устлаа...', '#659265', 3000);
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        window.location = '../#pg/error500.aspx';
                    }
                });
            }
        });
    }
    function riskAttachmentAddFile(el) {
        var errMsg = '';
        var valE = '';
        var uploadfiles = $(el).get(0);
        var uploadedfiles = uploadfiles.files;
        var fromdata = new FormData();
        for (var i = 0; i < uploadedfiles.length; i++) {
            if (uploadedfiles[i].size > 52428800) errMsg += 'Файлын хэмжээ 50MB -аас ихгүй байна!\n';
            if (errMsg == '') {
                valE = uploadedfiles[i].name.substr((uploadedfiles[i].name.lastIndexOf('.') + 1));
                if (valE != 'jpeg' && valE != 'jpg' && valE != 'png' && valE != 'gif' && valE != 'pdf' && valE != 'doc' && valE != 'docx' && valE != 'xls' && valE != 'xlsx' && valE != 'xlsm') {
                    errMsg += 'Файлын төрөл зөвшөөрөгдөөгүй төрөл байна. /jpeg, jpg, png, gif, pdf, doc, docx, xls, xlsx, xlsm/\n';
                }
                else fromdata.append(uploadedfiles[i].name, uploadedfiles[i]);
            }

        }
        if (errMsg == "") {
            var choice = {};
            choice.url = "pg/RiskUploadFile.ashx";
            choice.type = "POST";
            choice.data = fromdata;
            choice.contentType = false;
            choice.processData = false;
            choice.success = function (result) {
                if (result == "1") {
                    $('#riskAttachmentTable').find('tbody').html("<tr><td><a class=\"btn btn-link btn-xs\" href=\"../files/risk/" + $(el).val().split('\\').pop() + "\" style=\"padding:0px; border:none;\" download>" + $(el).val().split('\\').pop() + "</a></td><td style=\"padding-left:10px\"><a href=\"javascript:void(0);\" class=\"btn btn-link btn-xs\" onclick=\"riskAttachmentRemoveRow(this)\"><i class=\"fa fa-trash-o\"></i> устгах</a></td></tr>");
                    $('#riskAttachmentTableDiv').css("display", "block");
                    $('#riskAttachmentInputDiv').css("display", "none");
                    $.smallBox({
                        title: "Сонгосон файл",
                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хуулагдлаа...</i>",
                        color: "#659265",
                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                        timeout: 1000
                    });
                    $('#riskAttachmentInputDump').val(el.value);
                }
                else {
                    alert('errrrr');
                    alert(result);
                }
            };
            choice.error = function (err) { alert('err:' + err.statusText); };
            $.ajax(choice);
            event.preventDefault();
        }
        else alert(errMsg);
    }
    function riskAttachmentRemoveRow(el) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Та устгахдаа итгэлтэй байна уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/DeleteFile",
                    data: '{"filename":"~/files/risk/' + $(el).closest('tr').find('td:eq(0)').find('a').html() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        $(el).closest('tr').remove();
                        $.smallBox({
                            title: "Сонгосон файл",
                            content: "<i class='fa fa-clock-o'></i> <i>Амжилттай устгагдлаа...</i>",
                            color: "#659265",
                            iconSmall: "fa fa-check fa-2x fadeInRight animated",
                            timeout: 1000
                        });
                        if ($('#riskAttachmentTable tr').length == 0) {
                            $('#riskAttachmentInput').val("");
                            $('#riskAttachmentInputDump').val("");
                            $('#riskAttachmentTableDiv').css("display", "none");
                            $('#riskAttachmentInputDiv').css("display", "block");
                        }
                        else {
                            $('#riskAttachmentTableDiv').css("display", "block");
                            $('#riskAttachmentInputDiv').css("display", "none");
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
        });
    }
    $('#riskTab1ModalForm').submit(function (e) {
        if (!$('#riskTab1ModalInputSuccesDate').valid() || !$('#riskTab1ModalSelectClass').valid() || !$('#riskTab1ModalSelectGazar').valid() || !$('#riskTab1ModalInputNo').valid() || !$('#riskTab1ModalInputName').valid() || !$('#riskTab1ModalSelectProbability').valid() || !$('#riskTab1ModalSelectImpact').valid() || !$('#riskTab1ModalSelectStatus').valid() || !$('#riskTab1ModalInputDesc1').valid() || !$('#riskTab1ModalInputDesc2').valid() || !$('#riskTab1ModalInputDesc3').valid() || !$('#riskTab1ModalInputDesc4').valid()) {
            e.preventDefault();
        }
        else {
            var isUpdate = "";
            if ($("#riskTab1ModalHeaderLabel").html() == "засах") isUpdate = " AND ID!=" + $("#riskID").text();
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"SELECT COUNT(NO) FROM TBL_RISK WHERE NO=' + $.trim($('#riskTab1ModalInputNo').val()) + isUpdate + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    if (data.d == "0") {
                        var filename = "none";
                        if ($('#riskAttachmentTable tr').length != 0) filename = $('#riskAttachmentTable').find('tr').find('td').find('a').html();
                        if ($("#riskTab1ModalHeaderLabel").html() == "нэмэх") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/RISK_INSERT",
                                data: '{"P_CONFIRM_DT":"' + $.trim($('#riskTab1ModalInputSuccesDate').val()) + '", "P_RISK_CLASS_ID":"' + $('#riskTab1ModalSelectClass option:selected').val() + '", "P_NO":"' + $.trim($('#riskTab1ModalInputNo').val()) + '", "P_NAME":"' + replaceDisplayToDatabase($.trim($('#riskTab1ModalInputName').val())) + '", "P_PROBABILITY":"' + $('#riskTab1ModalSelectProbability option:selected').val() + '", "P_IMPACT":"' + $('#riskTab1ModalSelectImpact option:selected').val() + '", "P_STATUS":"' + $('#riskTab1ModalSelectStatus option:selected').val() + '", "P_DESC1":"' + replaceDisplayToDatabase($.trim($('#riskTab1ModalInputDesc1').val())) + '", "P_DESC2":"' + replaceDisplayToDatabase($.trim($('#riskTab1ModalInputDesc2').val())) + '", "P_DESC3":"' + replaceDisplayToDatabase($.trim($('#riskTab1ModalInputDesc3').val())) + '", "P_DESC4":"' + replaceDisplayToDatabase($.trim($('#riskTab1ModalInputDesc4').val())) + '", "P_FILE_NAME":"' + filename + '", "P_BRLIST":"' + $('#riskTab1ModalSelectGazar').val() + '", "P_STAFFID":"' + '<%= Session["LM_UserID"] %>' + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab1Datatable();
                                    $('#riskTab1Modal').modal('hide');
                                    smallBox('Эрсдэл', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                                url: "../ws/ServiceMain.svcRISK_UPDATE",
                                data: '{"P_ID":"' + $('#riskID').text() + '", "P_CONFIRM_DT":"' + $.trim($('#riskTab1ModalInputSuccesDate').val()) + '", "P_RISK_CLASS_ID":"' + $('#riskTab1ModalSelectClass option:selected').val() + '", "P_NO":"' + $.trim($('#riskTab1ModalInputNo').val()) + '", "P_NAME":"' + replaceDisplayToDatabase($.trim($('#riskTab1ModalInputName').val())) + '", "P_PROBABILITY":"' + $('#riskTab1ModalSelectProbability option:selected').val() + '", "P_IMPACT":"' + $('#riskTab1ModalSelectImpact option:selected').val() + '", "P_STATUS":"' + $('#riskTab1ModalSelectStatus option:selected').val() + '", "P_DESC1":"' + replaceDisplayToDatabase($.trim($('#riskTab1ModalInputDesc1').val())) + '", "P_DESC2":"' + replaceDisplayToDatabase($.trim($('#riskTab1ModalInputDesc2').val())) + '", "P_DESC3":"' + replaceDisplayToDatabase($.trim($('#riskTab1ModalInputDesc3').val())) + '", "P_DESC4":"' + replaceDisplayToDatabase($.trim($('#riskTab1ModalInputDesc4').val())) + '", "P_FILE_NAME":"' + filename + '", "P_BRLIST":"' + $('#riskTab1ModalSelectGazar').val() + '", "P_STAFFID":"' + '<%= Session["LM_UserID"] %>' + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab1Datatable();
                                    $('#riskTab1Modal').modal('hide');
                                    smallBox('Эрсдэл', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                    else alert("\"" + $("#riskTab1ModalInputNo").val() + "\" дугаартай эрсдэл орсон байна!");
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });            
         }
    });
    loadScript("js/plugin/bootstrap-wizard/jquery.bootstrap.wizard.min.js", runBootstrapWizard);
    function runBootstrapWizard() {
        var $validatorTab1Modal = $("#riskTab1ModalForm").validate({
            rules: {
                riskTab1ModalInputSuccesDate: {
                    required: true,
                    date: true
                },
                riskTab1ModalSelectClass: {
                    required: true,
                    min: 1
                },
                riskTab1ModalSelectGazar: {
                    required: true
                },
                riskTab1ModalInputNo: {
                    required: true,
                    number: true,
                    maxlength: 3
                },
                riskTab1ModalInputName: {
                    required: true,
                    maxlength: 1000
                },
                riskTab1ModalSelectProbability: {
                    required: true,
                    min: 1
                },
                riskTab1ModalSelectImpact: {
                    required: true,
                    min: 1
                },
                riskTab1ModalSelectStatus: {
                    required: true,
                    min: 1
                },
                riskTab1ModalInputDesc1: {
                    required: true,
                    maxlength: 1000
                },
                riskTab1ModalInputDesc2: {
                    required: true,
                    maxlength: 1000
                },
                riskTab1ModalInputDesc3: {
                    required: true,
                    maxlength: 1000
                },
                riskTab1ModalInputDesc4: {
                    required: true,
                    maxlength: 1000
                }
            },
            messages: {
                riskTab1ModalInputSuccesDate: {
                    required: "Бүртгэсэн огноо заавал оруулна уу",
                    date: "Бүртгэсэн огноо заавал оруулна уу"
                },
                riskTab1ModalSelectClass: {
                    required: "Ангилал заавал сонгоно уу",
                    min: "Ангилал заавал сонгоно уу"
                },
                riskTab1ModalSelectGazar: {
                    required: "Газар заавал сонгоно уу"
                },
                riskTab1ModalInputNo: {
                    required: "Дугаар заавал оруулна уу",
                    number: "Дугаар зөвхөн тоо орно",
                    maxlength: "Дугаар уртдаа 3 тэмдэгт авна"
                },
                riskTab1ModalInputName: {
                    required: "Эрдлийн үзэгдэл заавал оруулна уу",
                    maxlength: "Эрдлийн үзэгдэл уртдаа 1000 тэмдэгт авна"
                },
                riskTab1ModalSelectProbability: {
                    required: "Магадлал заавал сонгоно уу",
                    min: "Магадлал заавал сонгоно уу"
                },
                riskTab1ModalSelectImpact: {
                    required: "Нөлөөлөл заавал сонгоно уу",
                    min: "Нөлөөлөл заавал сонгоно уу"
                },
                riskTab1ModalSelectStatus: {
                    required: "Хэлбэр заавал сонгоно уу",
                    min: "Хэлбэр заавал сонгоно уу"
                },
                riskTab1ModalInputDesc1: {
                    required: "Холбогдох хууль, журам, стратеги ба төлөвлөгөө заавал оруулна уу",
                    maxlength: "Холбогдох хууль, журам, стратеги ба төлөвлөгөө уртдаа 1000 тэмдэгт авна"
                },
                riskTab1ModalInputDesc2: {
                    required: "Эрсдэл үүсэх шалгуур, эрсдэлийн шалтгаан заавал оруулна уу",
                    maxlength: "Эрсдэл үүсэх шалгуур, эрсдэлийн шалтгаан уртдаа 1000 тэмдэгт авна"
                },
                riskTab1ModalInputDesc3: {
                    required: "Нөлөөлөл, үр дагавар заавал оруулна уу",
                    maxlength: "Нөлөөлөл, үр дагавар уртдаа 1000 тэмдэгт авна"
                },
                riskTab1ModalInputDesc4: {
                    required: "Тайлбар заавал оруулна уу",
                    maxlength: "Тайлбар уртдаа 1000 тэмдэгт авна"
                }
            },
            submitHandler: function (form) {
                return false;
            },
            highlight: function (element) {
                $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
            },
            unhighlight: function (element) {
                $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
            },
            errorElement: 'span',
            errorClass: 'help-block',
            errorPlacement: function (error, element) {
                if (element.parent('.input-group').length) {
                    error.insertAfter(element.parent());
                } else {
                    error.insertAfter(element);
                }
            }
        });
    }
    function dateChanged(ev) {
        var strtDate;
        var endDate;
        if ($(this).attr('id') == "riskTab1SelectStartdate") {
            if ($.trim($('#riskTab1SelectEnddate').val()) == "") alert("Дуусах огноо оруулна уу!");
            else {
                strtDate = new Date($('#riskTab1SelectStartdate').val().split('-')[0], $('#riskTab1SelectStartdate').val().split('-')[1], $('#riskTab1SelectStartdate').val().split('-')[2]);
                endDate = new Date($('#riskTab1SelectEnddate').val().split('-')[0], $('#riskTab1SelectEnddate').val().split('-')[1], $('#riskTab1SelectEnddate').val().split('-')[2]);
                if (strtDate > endDate) alert('Эхлэх огноо дуусах огнооноос бага байна!');
                else {
                    riskTab1SetFirstControls();
                    //dataBindTab1Datatable();
                    $('#divplanmTab6t4StrtDate').text($(this).val());
                }
            }
        }
        else if ($(this).attr('id') == "riskTab1SelectEnddate") {
            if ($.trim($('#riskTab1SelectStartdate').val()) == "") alert("Эхлэх огноо оруулна уу!");
            else {
                strtDate = new Date($('#riskTab1SelectStartdate').val().split('-')[0], $('#riskTab1SelectStartdate').val().split('-')[1], $('#riskTab1SelectStartdate').val().split('-')[2]);
                endDate = new Date($('#riskTab1SelectEnddate').val().split('-')[0], $('#riskTab1SelectEnddate').val().split('-')[1], $('#riskTab1SelectEnddate').val().split('-')[2]);
                if (strtDate > endDate) alert('Дуусах огноо эхлэх огнооноос их байна!');
                else { dataBindTab1Datatable(); $('#divplanmTab6t4EndDate').text($(this).val()); }
            }
        }
    }
    function dateChanged1(ev) {
        dataBindGazarList("");
    }
    var d = new Date();
    var month = d.getMonth();
    var day = d.getDate();
    $('#riskTab1SelectStartdate').datepicker({
        changeMonth: false,
        changeYear: false,
        dateFormat: 'yy-mm-dd',
        prevText: '<i class="fa fa-chevron-left"></i>',
        nextText: '<i class="fa fa-chevron-right"></i>',
        defaultDate: new Date($('#indexCurrentYear').text(), 1, 1)
    }).change(dateChanged).on('changeDate', dateChanged);
    $('#riskTab1SelectEnddate').datepicker({
        changeMonth: false,
        changeYear: false,
        dateFormat: 'yy-mm-dd',
        prevText: '<i class="fa fa-chevron-left"></i>',
        nextText: '<i class="fa fa-chevron-right"></i>',
        defaultDate: new Date($('#indexCurrentYear').text(), 11, 1)
    }).change(dateChanged).on('changeDate', dateChanged);
    $('#riskTab1ModalInputSuccesDate').datepicker({
        changeMonth: false,
        changeYear: false,
        dateFormat: 'yy-mm-dd',
        prevText: '<i class="fa fa-chevron-left"></i>',
        nextText: '<i class="fa fa-chevron-right"></i>',
        defaultDate: new Date($('#indexCurrentYear').text(), month, day)
    }).change(dateChanged1).on('changeDate', dateChanged1);
</script>