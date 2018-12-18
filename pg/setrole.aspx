<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="setrole.aspx.cs" Inherits="LMWebApp.pg.setrole" %>
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    <h1 class="page-title txt-color-blueDark">
    <i class="fa-fw fa fa-home"></i>
    <span>> Эрхийн зохицуулалт</span>
    </h1>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                <header>
                    <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                    <h2><span id="brsetTab1LabelYear" runat="server"></span> Хэрэглэгч </h2>
                </header>
                <div>
                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                    <div class="Colvis TableTools" style="width:80px;right:125px; top:0px; z-index:5; margin-top:5px;">
                        <select id="setroleTab1SelectHeltes" name="setroleTab1SelectHeltes" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select>
                    </div>
                    <div class="Colvis TableTools" style="right:210px; top:0px; z-index:5; margin-top:10px;">
                        Хэлтэс:
                    </div>
                    <div class="Colvis TableTools" style="width:80px;right:260px; top:0px; z-index:5; margin-top:5px;">
                        <select id="setroleTab1SelectGazar" name="setroleTab1SelectGazar" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select>
                    </div>
                    <div class="Colvis TableTools" style="right:345px; top:0px; z-index:5; margin-top:10px;">
                        Газар:
                    </div>
                    <div id="loaderTab1" class="search-background">
                        <img width="64" height="" src="img/loading.gif"/>
                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                    </div>
                    <div id="divBindTab1Table" class="widget-body no-padding">
                                
                    </div>
                </div>
            </div>
        </article>
    </div>
</section>
<div id="setroleTab1Modal" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false" style="display:none;z-index:99999;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> × </button>
                <h4 class="modal-title" >Системийн эрх</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div id="tab1ID" class="hide"></div>
                    <div id="setroleTab1ModalInputRoles" runat="server" class="col-md-12">
                    </div>
                </div>                
            </div>
            <div class="modal-footer">
                <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                <button id="brsetTab1ImportModalBtnSave" class="btn btn-success btn-sm" type="button"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    pageSetUp();
    var globalAjaxVar = null;
    var pagefunction = function () {
        planmTab1SetFirstControls();
    }
    var pagedestroy = function () {
        if (globalAjaxVar != null) {
            globalAjaxVar.abort();
            globalAjaxVar = null;
        }
    }
    pagefunction();
    //$(document).ready(function () {
    //    planmTab1SetFirstControls();
    //});
    function planmTab1SetFirstControls() {
        var userId = $('#indexUserId').text();
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr":"' + $('#indexCurrentYear').text() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#setroleTab1SelectGazar").html('<option value="">Бүгд</option>' + valData);
                if (!funcCheckRoles('1')) {
                    $('#setroleTab1SelectGazar').val(userGazarId);
                    $('#setroleTab1SelectGazar').prop('disabled', true);
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                        data: '{"yr":"' + $('#indexCurrentYear').text() + '", "gazar":"' + $("#setroleTab1SelectGazar option:selected").val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            valData = '';
                            $($.parseJSON(data.d)).each(function (index, value) {
                                valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                            });
                            $("#setroleTab1SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                            if (!funcCheckRoles('3,4')) {
                                $('#setroleTab1SelectHeltes').val(userHeltesId);
                                $('#setroleTab1SelectHeltes').prop('disabled', true);
                            }
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
                else {
                    $('#setroleTab1SelectHeltes').prop('disabled', true);
                    dataBindTab1Datatable();
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
    function dataBindTab1Datatable() {
        var valData = '';
        var valIsEdit = '0';
        showLoader('loaderTab1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/SetroleTab1Datatable",
            data: '{"gazar":"' + $('#setroleTab1SelectGazar option:selected').val() + '", "heltes":"' + $('#setroleTab1SelectHeltes option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (funcCheckRoles('1')) {
                    valIsEdit = '1';
                }
                valData = "<table id=\"setroleTab1Datatable\" class=\"table table-striped table-bordered table-hover smart-form\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th>№</th>";
                valData += "<th>Нэр</th>";
                valData += "<th>Овог</th>";
                valData += "<th>Албан тушаал</th>";
                valData += "<th>Газар</th>";
                valData += "<th>Хэлтэс</th>";
                valData += "<th>&nbsp;</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (value.ROLES != "none") valData += "<tr class=\"success\" data-roles=\"" + value.ROLES + "\" data-stid=\"" + value.ST_ID + "\">";
                    else valData += "<tr data-roles=\"" + value.ROLES + "\" data-stid=\"" + value.ST_ID + "\">";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td>" + value.FNAME + "</td>";
                    valData += "<td>" + value.LNAME + "</td>";
                    valData += "<td>" + value.POS_NAME + "</td>";
                    valData += "<td>" + value.GAZARNAME + "</td>";
                    valData += "<td>" + value.HELTESNAME + "</td>";
                    valData += "<td><div class=\"btn-group\">";
                    if (valIsEdit == '1') valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showEditTab1(this);\" data-target=\"#setroleTab1Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                    valData += "</div></td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_setroleTab1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#setroleTab1Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_setroleTab1Datatable) {responsiveHelper_setroleTab1Datatable = new ResponsiveDatatablesHelper($('#setroleTab1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_setroleTab1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_setroleTab1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\", \"orderable\": false },null,null,null,{ \"sWidth\": \"70px\" },{ \"sWidth\": \"70px\" },{ \"sWidth\": \"15px\" }]});";
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
    $("#setroleTab1SelectGazar").change(function () {
        dataBindTab1HeltesList();
    });
    $("#setroleTab1SelectHeltes").change(function () {
        dataBindTab1Datatable();
    });
    function dataBindTab1HeltesList() {
        var valData = '';
        if ($("#setroleTab1SelectGazar option:selected").val() == "") {
            $("#setroleTab1SelectHeltes").html("<option selected value=\"\">Бүгд</option>");
            $("#setroleTab1SelectHeltes").prop("disabled", true);
            dataBindTab1Datatable();
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr":"' + $('#indexCurrentYear').text() + '", "gazar":"' + $("#setroleTab1SelectGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    });
                    $("#setroleTab1SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                    $("#setroleTab1SelectHeltes").prop("disabled", false);
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
    }
    $("#brsetTab1ImportModalBtnSave").click(function () {
        var valCheckedRolesValue = '';
        $('.classCheckedRole').each(function (index) {
            if ($(this).is(':checked')) {
                if (valCheckedRolesValue == '') valCheckedRolesValue += $(this).val();
                else valCheckedRolesValue += ',' + $(this).val();
            }            
        });
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ROLE_USER",
            data: '{"USER_ID":"' + $('#tab1ID').html() + '", "ROLE_ID":"' + valCheckedRolesValue + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function () {
                $('#setroleTab1Datatable > tbody > tr').each(function (index) {
                    if ($(this).attr('data-stid') == $('#tab1ID').html()) {
                        $(this).attr('data-id', valCheckedRolesValue);
                        if (valCheckedRolesValue != '') $(this).addClass('success');
                        else $(this).removeClass('success');
                        return false;
                    }
                });
                $('#setroleTab1Modal').modal('hide');
                smallBox('Эрх', 'Амжилттай хадгалагдлаа', '#659265', 3000);
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    });
    function showEditTab1(el) {
        $('#tab1ID').html($(el).closest('tr').attr('data-stid'));
        $('.classCheckedRole').prop('checked', false);
        $('.classCheckedRole').each(function (index) {
            for (var i = 0; i < $(el).closest('tr').attr('data-roles').split(',').length; i++) {
                if ($(this).val() == $(el).closest('tr').attr('data-roles').split(',')[i]) {
                    $(this).prop('checked',true);
                }   
            }
        });
    }
</script>
