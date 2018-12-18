<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lawakt.aspx.cs" Inherits="LMWebApp.pg.lawakt" %>
<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
    <h1 class="page-title txt-color-blueDark">
    <i class="fa-fw fa fa-home"></i>
    <span>> ХШҮ-ТЭЙ ХОЛБООТОЙ ЭРХ ЗҮЙН АКТУУД</span>
    </h1>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
            <ul class="nav nav-tabs bordered">
                <li id="pTab1Li" runat="server" class="active" onclick="pDatabindTabs(this)">
                    <a data-toggle="tab" href="#pTab1">
                        <i class="fa fa-fw fa-lg fa-list-ul"></i>
                        Эрх зүйн актууд
                    </a>
                </li>
                <li id="pTab2Li" runat="server" onclick="pDatabindTabs(this)" class="pull-right">
                    <a data-toggle="tab" href="#pTab2">
                        <i class="fa fa-fw fa-lg fa-wrench"></i>
                        ЭЗА-н төрөл 
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <div id="pTab1" runat="server" class="tab-pane active">
                    <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"><i class="fa fa-list-ul"></i></span>
                            <h2>Эрх зүйн акт</h2>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div class="Colvis TableTools" style="width:150px; right:130px; top:6px; z-index:5;">
                                <select id="pTab1SelectType" name="pTab1SelectType" class="form-control" style="padding:1px;">
                                    <option value="">Бүгд</option>
                                </select>
                            </div>
                            <div class="Colvis TableTools" style="right:285px; top:4px; z-index:5; margin-top:7px;"><label>Төрөл: </label></div>
                            <div class="Colvis TableTools" style="width:90px; right:335px; top:6px; z-index:5;">
                                <select id="pTab1SelectIsActive" name="pTab1SelectIsActive" class="form-control" style="padding:1px;">
                                    <option value="">Бүгд</option>
                                    <option value="1" selected>Хүчинтэй</option>
                                    <option value="0">Хүчингүй</option>
                                </select>
                            </div>
                            <div class="Colvis TableTools" style="right:430px; top:4px; z-index:5; margin-top:4px; line-height:13px; text-align:right;"><label>Хүчинтэй<br />эсэх: </label></div>
                            <div class="Colvis TableTools"  style="right:500px; top:8px; z-index:5;">
                                <button id="pTab1Add" runat="server" class="btn btn btn-primary btn-xs" data-target="#pTab1Modal" data-toggle="modal" onclick="showAddEditTab1(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                            </div>
                            <div class="Colvis TableTools" style="left:240px; top:0px; z-index:5; margin-top:2px;">
                                <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa-pencil"></i></a> Мэдээлэл засварлах<br />
                                <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa fa-trash-o"></i></a> Мэдээлэл устгах
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
                <div id="pTab2" runat="server" class="tab-pane">
                    <div class="jarviswidget col-md-6" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"><i class="fa fa-table"></i></span>
                            <h2>Төрөл</h2>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div class="Colvis TableTools"  style="right:130px; top:8px; z-index:5;">
                                <button id="pTab2Add" runat="server" class="btn btn btn-primary btn-xs" data-target="#pTab2Modal" data-toggle="modal" onclick="showAddEditTab2(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                            </div>
                            <div class="Colvis TableTools" style="left:240px; top:0px; z-index:5; margin-top:2px;">
                                <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa-pencil"></i></a> Мэдээлэл засварлах<br />
                                <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa fa-trash-o"></i></a> Мэдээлэл устгах
                            </div>
                            <div id="loaderTab2" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="divBindTab2Table" class="widget-body no-padding">
                                        
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </article>
    </div>
</section>
<div id="pTab1Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="pTab1ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Эрх зүйн акт&nbsp;<span id="pTab1ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pTab1ModalID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-3">
                                    <label class="control-label">*Батлагдсан огноо</label>
									<input id="pTab1ModalInputSuccessDate" name="pTab1ModalInputSuccessDate" class="form-control" type="text" placeholder="Батлагдсан огноо"/>
                                </div>
                                <div class="col-md-9">
                                    <label class="control-label">*Төрөл</label>
									<select id="pTab1ModalSelectType" name="pTab1ModalSelectType" runat="server" class="form-control" style="padding: 1px;">
								        <option value="">- Сонго -</option>
							        </select>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-3">
                                    <label class="control-label">*Дугаар</label>
									<input id="pTab1ModalInputNo" name="pTab1ModalInputNo" class="form-control" type="text" placeholder="Дугаар"/>
                                </div>
                                <div class="col-md-9">
                                    <label class="control-label">*Нэр</label>
									<textarea id="pTab1ModalInputName" name="pTab1ModalInputName" class="form-control" required="" placeholder="Нэр" rows="2"></textarea>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-3">
                                    <label class="control-label">*Хүчинтэй эсэх</label>
                                    <div class="checkbox">
										<label>
											<input id="pTab1ModalInputIsActive" name="pTab1ModalInputIsActive" runat="server" type="checkbox" class="checkbox style-0" checked="checked">
											<span>Тийм</span>
										</label>
									</div>
                                </div>
                                <div class="col-md-9">
                                    <label class="control-label">Тайлбар</label>
									<textarea id="pTab1ModalInputDescription" name="pTab1ModalInputDescription" class="form-control" required="" placeholder="Тайлбар" rows="2"></textarea>                                    
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="margin:10px 0 0 0; display:block; overflow:hidden;">
                                        <div class="col-md-3" style="font-size:13px;">
                                            *Хавсралт файл:
                                        </div>
                                        <div class="col-md-9" style="font-style:italic;padding-left: 0;">
                                            <a id="pTab1ModalAttachBtn" runat="server" class="btn btn-link btn-xs" href="javascript:void(0);" style="padding:0px; border:none;">Файл хавсаргаагүй байна...</a>
                                        </div>
                                    </div>
                                    <div class="form-group" style="margin:0; display:block; overflow:hidden;">
                                        <div class="col-md-3">
                                            <a id="pTab1ModalAttachDelete" class="btn btn-link btn-xs" href="javascript:void(0);"><i class="fa fa-trash-o"></i> файл устгах</a>
                                        </div>
                                        <div class="col-md-9" style="padding-left: 0;">
                                            <input id="pTab1ModalAttachInput" runat="server" type="file" class="btn btn-default"><small><em>Зөвхөн .PDF өргөтгөлтэй файл оруулна уу.</em></small>
                                        </div>
                                    </div>
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
<div id="pTab2Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="pTab2ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Төрөл&nbsp;<span id="pTab2ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pTab2ModalID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Нэр</label>
									<input id="pTab2ModalInputName" name="pTab2ModalInputName" class="form-control" type="text" placeholder="Нэр"/>
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
<div id="pTabsAttachShowModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            
        </div>
    </div>
</div>
<script type="text/javascript">
    var globalAjaxVar = null;
    var pagefunction = function () {
        var valData = '';
        var valLiId = $('#pTab1Li').closest('ul').find('.active').attr('id');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/LawaktTabTypeListForDDL",
            data: '{}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.ID + '" title="' + replaceDatabaseToDisplay(value.NAME) + '">' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                });
                $("#pTab1SelectType").html('<option value="">- Сонго -</option>' + valData);
                $("#pTab1ModalSelectType").html('<option value="">Бүгд</option>' + valData);
                if (valLiId == 'pTab1Li') {
                    dataBindTab1DataTable();
                }
                else if (valLiId == 'pTab2Li') {
                    dataBindTab2DataTable();
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
    var pagedestroy = function () {
        if (globalAjaxVar != null) {
            globalAjaxVar.abort();
            globalAjaxVar = null;
        }
    }
    pagefunction();
    function pDatabindTabs(el) {
        if ($.trim($(el).attr('id')) == 'pTab1Li') {
            if ($.trim($('#divBindTab1Table').html()) == "") {
                dataBindTab1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab2Li') {
            if ($.trim($('#divBindTab2Table').html()) == "") {
                dataBindTab2DataTable();
            }
        }
    }
    //tab1
    function dataBindTab1DataTable() {
        var valData = '';
        var valIsEdit = '1';
        showLoader('loaderTab1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/LawaktTab1Datatable",
            data: '{"isactive":"' + $("#pTab1SelectIsActive option:selected").val() + '", "tp":"' + $("#pTab1SelectType option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (!funcCheckRoles('1,31')) {
                    valIsEdit = '0';
                }
                valData += "<table id=\"pTab1Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                valData += "<thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Батлагдсан огноо</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Дугаар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Нэр</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Актын төрөл</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хүчинтэй эсэх</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Файл</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Тайлбар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle; font-size: 9px;\">Засварлах</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td class=\"text-center\">" + value.ROWNO + "</td>";
                    valData += "<td class=\"text-center\">" + value.SUCCESSDATE + "</td>";
                    valData += "<td class=\"text-center\">" + value.NO + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td data-id=\"" + value.LAWAKTTYPE_ID + "\">" + replaceDatabaseToDisplay(value.LAWAKTTYPE_NAME) + "</td>";
                    valData += "<td style=\"text-align:center; vertical-align:middle;\">";
                    if (valIsEdit == '1') {
                        valData += "<span class=\"onoffswitch\"><input id=\"onoffCheckbox" + value.ID + "\" name=\"onoffCheckbox" + value.ID + "\" type=\"checkbox\" " + value.ISACTIVE + " class=\"onoffswitch-checkbox\" onclick=\"saveIsClosed(this);\"><label class=\"onoffswitch-label\" for=\"onoffCheckbox" + value.ID + "\"><span class=\"onoffswitch-inner\" data-swchon-text=\"ON\" data-swchoff-text=\"OFF\"></span><span class=\"onoffswitch-switch\"></span></label></span>";
                    }
                    valData += "</td>";
                    valData += "<td>";
                    if (value.FILENAME != "") {
                        valData += "<div class=\"btn-group\">";
                        valData += "<a href=\"../files/lawakt/" + value.FILENAME + "\" class=\"btn btn-default btn-xs\" download title=\"Хавсаргасан файл татах\"><i class=\"fa fa-download\"></i></a>";
                        valData += "<a href=\"../pg/pdfAttachShowModal.aspx?foldername=lawakt&filename=" + value.FILENAME + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTabsAttachShowModal\" data-toggle=\"modal\"><i class=\"fa fa-eye\"></i></a>";
                        valData += "</div>";
                    }
                    valData += "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.DESCRIPTION) + "</td>";
                    valData += "<td>";
                    if (valIsEdit == '1') {
                        valData += "<div class=\"btn-group\">";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab1(this,'засах');\" data-target=\"#pTab1Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab1(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                        valData += "</div>";
                    }
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "<script>";
                valData += "var responsiveHelper_pTab1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab1Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab1Datatable) {responsiveHelper_pTab1Datatable = new ResponsiveDatatablesHelper($('#pTab1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" }, { \"sWidth\": \"75px\" }, { \"sWidth\": \"25px\" }, null, null, { \"sWidth\": \"15px\", \"bSortable\": false },{ \"sWidth\": \"50px\", \"bSortable\": false },null,{ \"sWidth\": \"45px\", \"bSortable\": false }]});";
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
    $("#pTab1SelectIsActive, #pTab1SelectType").change(function () {
        dataBindTab1DataTable();
    });
    $("#pTab1ModalAttachInput").change(function () {
        var errMsg = '';
        var uploadfiles = $(this).get(0);
        var uploadedfiles = uploadfiles.files;
        var fromdata = new FormData();
        if (uploadedfiles[0].size > 52428800) {
            errMsg += 'Файлын хэмжээ 50MB -аас ихгүй байна!\n';
            $(this).val('');
        }
        if (errMsg == '') {
            valE = uploadedfiles[0].name.substr((uploadedfiles[0].name.lastIndexOf('.') + 1));
            if (valE != 'pdf') {
                errMsg += 'Файлын төрөл зөвшөөрөгдөөгүй төрөл байна. /pdf/\n';
                $(this).val('');
            }
            else fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
        }
        if (errMsg == '') {
            $('#pTab1ModalAttachBtn').html($(this).val().split('\\').pop());
        }
        else alert(errMsg);
    });
    $("#pTab1ModalAttachDelete").click(function () {
        if ($('#pTab1ModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
            $.SmartMessageBox({
                title: "Анхааруулга!",
                content: "Та устгахдаа итгэлтэй байна уу?",
                buttons: '[Үгүй][Тийм]'
            }, function (ButtonPressed) {
                if (ButtonPressed === "Тийм") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/DeleteFile",
                        data: '{"filename":"~/files/lawakt/' + $('#pTab1ModalAttachBtn').html() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            $('#pTab1ModalAttachBtn').html('Файл хавсаргаагүй байна...');
                            smallBox('Файл', 'Амжилттай устгагдлаа...', '#659265', 3000);
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
    });
    function showAddEditTab1(el, isinsupt) {
        $('#pTab1ModalHeaderLabel').html(isinsupt);
        $('#pTab1ModalID').html('');
        $('#pTab1ModalInputSuccessDate, #pTab1ModalSelectType, #pTab1ModalInputNo, #pTab1ModalInputName, #pTab1ModalInputDescription, #pTab1ModalAttachInput').val('');
        $('#pTab1ModalInputIsActive').prop('checked', true);
        $('#pTab1ModalAttachBtn').attr('href', 'javascript:void(0);');
        $('#pTab1ModalAttachBtn').html('Файл хавсаргаагүй байна...');
        if (isinsupt == 'засах') {
            $('#pTab1ModalID').html($(el).closest('tr').attr('data-id'));
            $('#pTab1ModalInputSuccessDate').val($(el).closest('tr').find('td:eq(1)').html());
            $('#pTab1ModalSelectType').val($(el).closest('tr').find('td:eq(4)').attr('data-id'));
            $('#pTab1ModalInputNo').val($(el).closest('tr').find('td:eq(2)').html());
            $('#pTab1ModalInputName').val($(el).closest('tr').find('td:eq(3)').html());
            if ($(el).closest('tr').find('td:eq(5)').find(':checkbox').prop('checked')) $('#pTab1ModalInputIsActive').prop('checked', true);
            else $('#pTab1ModalInputIsActive').prop('checked', false);
            $('#pTab1ModalInputDescription').val($(el).closest('tr').find('td:eq(7)').html());
            if ($.trim($(el).closest('tr').find('td:eq(6)').html()) != '') {
                $('#pTab1ModalAttachBtn').html($(el).closest('tr').find('td:eq(6)').find('a').attr('href').split('/').pop());
                $('#pTab1ModalAttachBtn').attr('href', $(el).closest('tr').find('td:eq(6)').find('a').attr('href'));
            }
        }
    }
    function showDeleteTab1(el) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Сонгосон эрх зүйн актыг устгах уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"DELETE FROM TBL_LAWAKT WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab1DataTable();
                        smallBox('Сонгосон эрх зүйн акт', 'Амжилттай устлаа...', '#659265', 3000);
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
    $('#pTab1ModalForm').bootstrapValidator({
        fields: {
            pTab1ModalInputSuccessDate: {
                group: '.col-md-3',
                validators: {
                    notEmpty: {
                        message: 'Огноо оруулна уу'
                    },
                    date: {
                        format: 'YYYY-MM-DD',
                        message: 'Огноо буруу орсон байна. /Жил-Сар-Өдөр/'
                    }
                }
            },
            pTab1ModalSelectType: {
                group: '.col-md-9',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab1ModalInputNo: {
                group: '.col-md-3',
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    stringLength: {
                        max: 5,
                        message: 'Уртдаа 5 тэмдэгт авна'
                    }
                }
            },
            pTab1ModalInputName: {
                group: '.col-md-9',
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    stringLength: {
                        max: 1000,
                        message: 'Уртдаа 1000 тэмдэгт авна'
                    }
                }
            },
            pTab1ModalInputDescription: {
                group: '.col-md-9',
                validators: {
                    stringLength: {
                        max: 1000,
                        message: 'Уртдаа 1000 тэмдэгт авна'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            if ($('#pTab1ModalAttachBtn').html() == 'Файл хавсаргаагүй байна...') {
                alert('Хавсралт файл оруулна уу');
                $('#pTab1ModalForm').find('.modal-footer').find('.btn-success').prop('disabled', false);
            }
            else {
                var filename = 'null';
                var filenameF = '';
                if ($('#pTab1ModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') filename = '\'' + $.trim($('#pTab1ModalAttachBtn').html()) + '\'';
                var valIsActive = 0;
                if ($('#pTab1ModalInputIsActive').prop('checked')) valIsActive = 1;
                if ($("#pTab1ModalHeaderLabel").html() == "нэмэх") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                        data: '{"qry":"SELECT TBLLASTID(\'TBL_LAWAKT\') FROM DUAL"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            if ($('#pTab1ModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
                                filename = '\'ЭЗА-' + data.d + '.' + $('#pTab1ModalAttachInput').val().split('.').pop() + '\'';
                                filenameF = 'ЭЗА-' + data.d + '.' + $('#pTab1ModalAttachInput').val().split('.').pop() + '';
                            }
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"INSERT INTO TBL_LAWAKT (ID, LAWAKTTYPE_ID, SUCCESSDATE, NO, NAME, FILENAME, DESCRIPTION, ISACTIVE, CREATED_STAFFID, CREATED_DATE) VALUES (TBLLASTID(\'TBL_LAWAKT\'), ' + $('#pTab1ModalSelectType option:selected').val() + ', \'' + $.trim($('#pTab1ModalInputSuccessDate').val()) + '\', \'' + $.trim($('#pTab1ModalInputNo').val()) + '\', \'' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputName').val())) + '\', ' + filename + ', \'' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputDescription').val())) + '\', ' + valIsActive + ',' + $('#indexUserId').text() + ', sysdate)"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    if ($('#pTab1ModalAttachInput').val() != '') {
                                        var valMaxId = '';
                                        globalAjaxVar = $.ajax({
                                            type: "POST",
                                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                            data: '{"qry":"SELECT NVL(MAX(ID),1) FROM TBL_LAWAKT"}',
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function (data) {
                                                valMaxId = data.d;
                                                var uploadfiles = $("#pTab1ModalAttachInput").get(0);
                                                var uploadedfiles = uploadfiles.files;
                                                var fromdata = new FormData();
                                                fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                                                var choice = {};
                                                choice.url = "pg/UploadFile.ashx?folder=lawakt&filename=" + filenameF;
                                                choice.type = "POST";
                                                choice.data = fromdata;
                                                choice.contentType = false;
                                                choice.processData = false;
                                                choice.success = function (result) {
                                                    if (result == "1") {

                                                    }
                                                    else {
                                                        alert('Файл хуулхад алдаа гарлаа');
                                                    }

                                                };
                                                choice.error = function (err) { alert('Файл хадгалахад алдаа гарлаа: ' + err.statusText); };
                                                $.ajax(choice);
                                                e.preventDefault();
                                            },
                                            failure: function (response) {
                                                alert('FAILURE: ' + response.d);
                                            },
                                            error: function (xhr, status, error) {
                                                window.location = '../#pg/error500.aspx';
                                            }
                                        });
                                    }                                    
                                    dataBindTab1DataTable();
                                    $('#pTab1Modal').modal('hide');
                                    smallBox('Эрх зүйн акт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                    if ($('#pTab1ModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
                        filename = '\'ЭЗА-' + $("#pTab1ModalID").text() + '.' + $('#pTab1ModalAttachBtn').html().split('.').pop() + '\'';
                        filenameF = 'ЭЗА-' + $("#pTab1ModalID").text() + '.' + $('#pTab1ModalAttachInput').val().split('.').pop() + '';
                    }
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                        data: '{"qry":"UPDATE TBL_LAWAKT SET  LAWAKTTYPE_ID=' + $('#pTab1ModalSelectType option:selected').val() + ', SUCCESSDATE=\'' + $.trim($('#pTab1ModalInputSuccessDate').val()) + '\', NO=\'' + $.trim($('#pTab1ModalInputNo').val()) + '\', NAME=\'' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputName').val())) + '\', FILENAME=' + filename + ', DESCRIPTION=\'' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputDescription').val())) + '\', ISACTIVE=' + valIsActive + ', UPDATED_STAFFID=' + $('#indexUserId').text() + ', UPDATED_DATE=sysdate WHERE ID = ' + $('#pTab1ModalID').html() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            if ($('#pTab1ModalAttachInput').val() != '') {
                                var uploadfiles = $("#pTab1ModalAttachInput").get(0);
                                var uploadedfiles = uploadfiles.files;
                                var fromdata = new FormData();
                                fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                                var choice = {};
                                choice.url = "pg/UploadFile.ashx?folder=lawakt&filename=" + filenameF;
                                choice.type = "POST";
                                choice.data = fromdata;
                                choice.contentType = false;
                                choice.processData = false;
                                choice.success = function (result) {
                                    if (result == "1") {

                                    }
                                    else {
                                        alert('Файл хуулхад алдаа гарлаа');
                                    }
                                };
                                choice.error = function (err) { alert('Файл хадгалахад алдаа гарлаа: ' + err.statusText); };
                                $.ajax(choice);
                                e.preventDefault();
                            }
                            dataBindTab1DataTable();
                            $('#pTab1Modal').modal('hide');
                            smallBox('Эрх зүйн акт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
    });
    function saveIsClosed(el) {
        var valIsSubmit = '0';
        if ($(el).prop('checked')) {
            valIsSubmit = '1';
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
            data: '{"qry":"UPDATE TBL_LAWAKT SET ISACTIVE=' + valIsSubmit + ' WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function () {
                smallBox('Сонгосон эрх зүйн актын төлөв', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    //tab2
    function dataBindTab2DataTable() {
        var valData = '';
        var valIsEdit = '1';
        showLoader('loaderTab2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/LawaktTab2Datatable",
            data: '{}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (!funcCheckRoles('1,31')) {
                    valIsEdit = '0';
                }
                valData += "<table id=\"pTab2Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                valData += "<thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Нэр</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Засварлах</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td>";
                    if (valIsEdit == '1') {
                        valData += "<div class=\"btn-group\">";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab2(this,'засах');\" data-target=\"#pTab2Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab2(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                        valData += "</div>";
                    }
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "<script>";
                valData += "var responsiveHelper_pTab2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab2Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab2Datatable) {responsiveHelper_pTab2Datatable = new ResponsiveDatatablesHelper($('#pTab2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab2Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" }, null,{ \"sWidth\": \"45px\", \"bSortable\": false }]});";
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
    function showAddEditTab2(el, isinsupt) {
        $('#pTab2ModalHeaderLabel').html(isinsupt);
        $('#pTab2ModalID').html('');
        $('#pTab2ModalInputName').val('');
        if (isinsupt == 'засах') {
            $('#pTab2ModalID').html($(el).closest('tr').attr('data-id'));
            $('#pTab2ModalInputName').val($(el).closest('tr').find('td:eq(1)').html());
        }
    }
    function showDeleteTab2(el) {
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_LAWAKT WHERE LAWAKTTYPE_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') {
                    alert('Сонгосон төрөлд хамааралтай хамааралтай эрх зүйн акт орсон тул устгах боломжгүй байна!');
                }
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон төрөлийг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"DELETE FROM TBL_LAWAKTTYPE WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    globalAjaxVar = $.ajax({
                                        type: "POST",
                                        url: "../ws/ServiceMain.svc/LawaktTabTypeListForDDL",
                                        data: '{}',
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function (data) {
                                            valData = '';
                                            $($.parseJSON(data.d)).each(function (index, value) {
                                                valData += '<option value="' + value.ID + '" title="' + replaceDatabaseToDisplay(value.NAME) + '">' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                                            });
                                            $("#pTab1SelectType").html('<option value = "">- Сонго -</option>' + valData);
                                            $("#pTab1ModalSelectType").html('<option value = "">Бүгд</option>' + valData);
                                            dataBindTab2DataTable();
                                            smallBox('Сонгосон төрөл', 'Амжилттай устлаа...', '#659265', 3000);
                                            $("#divBindTab1Table").html('');
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
    $('#pTab2ModalForm').bootstrapValidator({
        fields: {
            pTab2ModalInputName: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    stringLength: {
                        max: 1000,
                        message: 'Уртдаа 1000 тэмдэгт авна'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            var valData = '';
            e.preventDefault();
            if ($("#pTab2ModalHeaderLabel").html() == "нэмэх") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"INSERT INTO TBL_LAWAKTTYPE (ID, NAME, CREATED_STAFFID, CREATED_DATE) VALUES (TBLLASTID(\'TBL_LAWAKTTYPE\'), \'' + replaceDisplayToDatabase($.trim($('#pTab2ModalInputName').val())) + '\', ' + $('#indexUserId').text() + ', sysdate)"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/LawaktTabTypeListForDDL",
                            data: '{}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += '<option value="' + value.ID + '" title="' + replaceDatabaseToDisplay(value.NAME) + '">' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                                });
                                $("#pTab1SelectType").html('<option value = "">- Сонго -</option>' + valData);
                                $("#pTab1ModalSelectType").html('<option value = "">Бүгд</option>' + valData);
                                dataBindTab2DataTable();
                                $('#pTab2Modal').modal('hide');
                                smallBox('Эрх зүйн актын төрөл', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                                $("#divBindTab1Table").html('');
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
                    data: '{"qry":"UPDATE TBL_LAWAKTTYPE SET NAME=\'' + replaceDisplayToDatabase($.trim($('#pTab2ModalInputName').val())) + '\', UPDATED_STAFFID=' + $('#indexUserId').text() + ', UPDATED_DATE=sysdate WHERE ID = ' + $('#pTab2ModalID').html() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/LawaktTabTypeListForDDL",
                            data: '{}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += '<option value="' + value.ID + '" title="' + replaceDatabaseToDisplay(value.NAME) + '">' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                                });
                                $("#pTab1SelectType").html('<option value = "">- Сонго -</option>' + valData);
                                $("#pTab1ModalSelectType").html('<option value = "">Бүгд</option>' + valData);
                                dataBindTab2DataTable();
                                $('#pTab2Modal').modal('hide');
                                smallBox('Эрх зүйн актын төрөл', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                                $("#divBindTab1Table").html('');
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
        }
    });

    $('#pTab1ModalInputSuccessDate').datepicker({
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