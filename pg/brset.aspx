<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="brset.aspx.cs" Inherits="LMWebApp.pg.brset" %>
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    <h1 class="page-title txt-color-blueDark">
    <i class="fa-fw fa fa-home"></i>
    <span>> Хүний нөөцийн систем-ээс газар, хэлтэс болон бусад мэдээллийг архивлаж хадгалах</span>
    </h1>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
            <ul class="nav nav-tabs bordered">
                <li class="active">
                    <a data-toggle="tab" href="#brsetTab1">
                        Газар нэгж
                    </a>
                </li>
            </ul>
            <div id="brsetTabContent" class="tab-content">
                <div id="brsetTab1" class="tab-pane active">
                    <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                            <h2><span id="brsetTab1LabelYear" runat="server"></span> оноор архивлагдсан газар нэгж </h2>
                            <div id="brsetTab1BtnImport" class="widget-toolbar">
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <button class="btn btn-warning btn-xs" type="button" data-target="#brsetTab1ImportModal" data-toggle="modal" onclick="brsetTab1ModalAddFunction()"><i class="fa fa-plus"></i> HR-н баазаас татах</button>
                                </div> 
                            </div>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div class="Colvis TableTools" style="right:125px; top:4px; z-index:5; width:65px;"><select id="brsetTab1SelectYear" runat="server" class="form-control" style="padding:1px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select></div>
                            <div id="loaderTab1" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="divBindTab1Table" class="widget-body no-padding">
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </article>
    </div>
</section>
<div id="brsetTab1ImportModal" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false" style="display:none;z-index:99999;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> × </button>
                <h4 class="modal-title" >Хүний нөөцийн системийн баазаас татах</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group" style="display:block; overflow:hidden;">
                            <div style="display:block; overflow:hidden; float:left; width:10%">
                                Татах он: <label id="brsetTab1ImportModalLabelYear"></label>
                            </div>
                            <div style="display:block; overflow:hidden; float:left; width:90%">
                                <div class="alert alert-block alert-warning" style="margin: 0px;">
				                    <h4 class="alert-heading">Анхаарна уу!</h4>
				                    Тухайн татах гэж байгаа онд газар нэгж орсон бол устгаж байгаад шинэ мэдээлэл татах тул сайн шалгаж байж мэдээллээ татна уу!<br />Системд хэрэглэж байгаа бүх модул оны шалгуураар энэ мэдээллээс хэрэглэж байгаа тул сайтар шалгаж оруулна уу! Хэрэв буруу оруулвал дата өнчирөх асуудал үүснэ!
			                    </div>
                            </div>
                        </div>
                        <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                            <header>
                                <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                <h2>Хүний нөөцийн системийн бааз дээрх газар нэгжийн мэдээлэл</h2>
                            </header>
                            <div>
                                <div class="widget-body no-padding">
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div class="widget-body-toolbar">

						            </div>
                                    <div>
                                        <div id="loaderTabImportModal" class="search-background">
                                            <img width="64" height="" src="img/loading.gif"/>
                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                        </div>
                                        <div id="divBindTab1ImportModalTable" class="smart-form"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
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
        dataBindTab1Datatable();
    }
    var pagedestroy = function () {
        if (globalAjaxVar != null) {
            globalAjaxVar.abort();
            globalAjaxVar = null;
        }
    }
    pagefunction();
    function brsetTab1ModalAddFunction() {
        $('#brsetTab1ImportModalLabelYear').text($('#brsetTab1SelectYear option:selected').val());
        dataBindTab1ImportModalDatatable();
    }
    function dataBindTab1ImportModalDatatable() {
        var valData = '';
        showLoader('loaderTabImportModal');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/BrsetTab1ImportModalDatatable",
            data: '{}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData = "<table id=\"brsetTab1ImportModalDatatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">BR_ID</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">BR_NAME</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">BR_TYPE1</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">BR_MAIN_ID1</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">SORT</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">DOMAIN_ORG</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td>" + value.ID + "</td>";
                    valData += "<td>" + value.NAME + "</td>";
                    valData += "<td>" + value.BRANCH_TYPE_ID + "</td>";
                    valData += "<td>" + value.FATHER_ID + "</td>";
                    valData += "<td>" + value.SORT + "</td>";
                    valData += "<td>" + value.INITNAME + "</td>";
                    valData += "<td><label class=\"checkbox\"><input checked=\"checked\" type=\"checkbox\" name=\"checkbox\"/><i></i></label></td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_brsetTab1ImportModalDatatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#brsetTab1ImportModalDatatable').dataTable({aaSorting: [[1, 'desc']],\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_brsetTab1ImportModalDatatable) {responsiveHelper_brsetTab1ImportModalDatatable = new ResponsiveDatatablesHelper($('#brsetTab1ImportModalDatatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_brsetTab1ImportModalDatatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_brsetTab1ImportModalDatatable.respond();}});";
                valData += "<\/script>";
                $('#divBindTab1ImportModalTable').html(valData);
                hideLoader('loaderTabImportModal');
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
        showLoader('loaderTab1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/BrsetTab1Datatable",
            data: '{"yr":"' + $('#brsetTab1SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData = "<table id=\"brsetTab1Datatable\" class=\"table table-striped table-bordered table-hover smart-form\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th>BR_ID</th>";
                valData += "<th>BR_NAME</th>";
                valData += "<th>BR_TYPE1</th>";
                valData += "<th>BR_MAIN_ID1</th>";
                valData += "<th>SORT</th>";
                valData += "<th>DOMAIN_ORG</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td>" + value.BR_ID + "</td>";
                    valData += "<td>" + value.BR_NAME + "</td>";
                    valData += "<td>" + value.BR_TYPE1 + "</td>";
                    valData += "<td>" + value.BR_MAIN_ID1 + "</td>";
                    valData += "<td>" + value.SORT + "</td>";
                    valData += "<td>" + value.DOMAIN_ORG + "</td>";
                    valData += "</tr>";
                });
                 valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_brsetTab1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#brsetTab1Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_brsetTab1Datatable) {responsiveHelper_brsetTab1Datatable = new ResponsiveDatatablesHelper($('#brsetTab1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_brsetTab1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_brsetTab1Datatable.respond();}});";
                valData += "<\/script>";
                $('#divBindTab1Table').html(valData);
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
    $("#brsetTab1SelectYear").change(function () {
        //if ($('#indexCurrentYear').text() == $(this).val()) $('#brsetTab1BtnImport').css('display', 'block');
        //else $('#brsetTab1BtnImport').css('display', 'none');
        dataBindTab1Datatable();
    });
    $("#brsetTab1ImportModalBtnSave").click(function () {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Тухайн татах гэж байгаа онд газар нэгж орсон бол устгаж байгаад шинэ мэдээлэл татах тул сайн шалгаж байж мэдээллээ татна уу!<br />Системд хэрэглэж байгаа бүх модул оны шалгуураар энэ мэдээллээс хэрэглэж байгаа тул сайтар шалгаж оруулна уу! Хэрэв буруу оруулвал дата өнчирөх асуудал үүснэ!",
            buttons: '[Хадгалах][Болих]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Хадгалах") {
                var valBrIds = '';
                $('#brsetTab1ImportModalDatatable > tbody  > tr').each(function () {
                    if ($('td:eq(6)', this).find(':checkbox').is(':checked')) {
                        if (valBrIds == '') valBrIds += $('td:eq(0)', this).html();
                        else valBrIds += ','+$('td:eq(0)', this).html();
                    }
                });
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"DELETE FROM TBL_BRANCH WHERE YR=' + $('#brsetTab1SelectYear option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                            data: '{"qry":"INSERT INTO TBL_BRANCH (BR_ID, BR_NAME, BR_TYPE1, BR_MAIN_ID1, SORT, DOMAIN_ORG, YR) SELECT ID, NAME, BRANCH_TYPE_ID, FATHER_ID, SORT, INITNAME, ' + $('#brsetTab1SelectYear option:selected').val() + ' FROM hrdbuser.ST_BRANCH WHERE ID IN (' + valBrIds + ')"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function () {
                                dataBindTab1Datatable();
                                $('#brsetTab1ImportModal').modal('hide');
                                smallBox('Газар нэгж', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
        });
    });
</script>