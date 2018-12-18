<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inputintractive.aspx.cs" Inherits="LMWebApp.pg.inputintractive" %>
<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
    <h1 class="page-title txt-color-blueDark">
    <i class="fa-fw fa fa-home"></i>
    <span>> Интрактив дэлгэцэд мэдээлэл байршуулах</span>
    </h1>
</div>
<section id="widget-grid">
    <div id="inputintractiveIsRole" runat="server" class="row" style="display:none;">
        ТАНЬД ХАНДАХ ЭРХ БАЙХГҮЙ БАЙНА!
    </div>
    <div id="inputintractiveMainDiv" runat="server" class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
            <ul class="nav nav-tabs bordered">
                <li class="active">
                    <a data-toggle="tab" href="#inputintractiveTab1">
                        Сангийн яамны төсвийн сарын гүйцэтгэл
                    </a>
                </li>
                <li>
                    <a data-toggle="tab" href="#inputintractiveTab2">
                        Сангийн яамны төсвийн зарлагын төлөвлөгөө
                    </a>
                </li>
                <li>
                    <a data-toggle="tab" href="#inputintractiveTab3">
                        Сангийн яамны бүтэц
                    </a>
                </li>
            </ul>
            <div id="inputintractiveTabContent" class="tab-content">
                <div id="inputintractiveTab1" class="tab-pane active">
                    <div class="jarviswidget jarviswidget-color-blue" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> 
                                <i class="fa fa-table"></i> 
                            </span>
                            <h2> Сангийн яамны төсвийн сарын гүйцэтгэл </h2>
                            <div class="widget-toolbar"> 
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="inputintractiveTab1SelectYear" name="inputintractiveTab1SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="0">Бүгд</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar"> 
                                Жил:
                            </div>
                            <div class="widget-toolbar"> 
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="inputintractiveTab1SelectMonth" name="inputintractiveTab1SelectMonth" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="0">Бүгд</option><option value="1">1 сар</option><option value="2">2 сар</option><option value="3">3 сар</option><option value="4">4 сар</option><option value="5">5 сар</option><option value="6">6 сар</option><option value="7">7 сар</option><option value="8">8 сар</option><option value="9">9 сар</option><option value="10">10 сар</option><option value="11">11 сар</option><option value="12">12 сар</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar"> 
                                Сар:
                            </div>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div class="Colvis TableTools" style="width:62px; right:120px; top:8px; z-index:5; margin-top:1px;">
                                <button id="inputintractiveTab1AddBtn" class="btn btn-primary btn-xs" type="button" data-target="#inputintractiveTab1Modal" data-toggle="modal" onclick="showAddEditTab1(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
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
                <div id="inputintractiveTab2" class="tab-pane">
                    <div class="jarviswidget jarviswidget-color-blue" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> 
                                <i class="fa fa-table"></i> 
                            </span>
                            <h2> Сангийн яамны төсвийн зарлагын төлөвлөгөө </h2>
                            <div class="widget-toolbar"> 
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="inputintractiveTab2SelectYear" name="inputintractiveTab2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="0">Бүгд</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar"> 
                                Жил:
                            </div>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div class="Colvis TableTools" style="width:62px; right:120px; top:8px; z-index:5; margin-top:1px;">
                                <button id="inputintractiveTab2AddBtn" class="btn btn-primary btn-xs" type="button" data-target="#inputintractiveTab2Modal" data-toggle="modal" onclick="showAddEditTab2(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
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
                <div id="inputintractiveTab3" class="tab-pane">
                    <fieldset>
                        <div class="col-md-12">
                            <div class="form-group" style="margin:0; display:block; overflow:hidden;">
                                <div class="col-md-3" style="padding: 0;">
                                    <div class="col-md-12" style="padding: 0;">
                                        <a id="inputintractiveTab3AttachBtn" class="btn btn-link btn-xs" href="javascript:void(0);" style="padding:0px; border:none;" download>Зураг хавсаргаагүй байна...</a>
                                        <br />
                                        <input id="inputintractiveTab3AttachInput" type="file" class="btn btn-default">
                                    </div>
                                    <div class="col-md-12" style="padding: 10px 0 0 0;">
                                        <div class="col-md-6" style="padding: 0;">
                                            <a id="inputintractiveTab3AttachDelete" class="btn btn-danger btn-xs" href="javascript:void(0);"><i class="fa fa-trash-o"></i> зураг устгах</a>
                                        </div>
                                        <div class="col-md-6 text-right" style="padding: 0;">
                                            <button id="inputintractiveTab3AttachSave" class="btn btn-success btn-xs" type="button"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-9" style="padding:13px;">
                                    <img id="inputintractiveTab3Img" src="../forclient/img/mof_organization_chart.png" style="width:400px;" />
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </article>
    </div>
</section>
<div id="inputintractiveTab1Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="inputintractiveTab1ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Сангийн яамны төсвийн сарын гүйцэтгэл&nbsp;<span id="inputintractiveTab1ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body" style="padding-bottom:0px;">
                    <fieldset>
                        <div class="col-md-12">
                            <div id="tab1ID" class="form-group hide"></div>
                            <div class="form-group" style="margin:0; display:block; overflow:hidden;">
                                <div class="col-sm-3" style="padding:2px;">
                                    <label>Жил</label>
                                    <div class="input-group">
                                        <select id="inputintractiveTab1ModalSelectYear" name="inputintractiveTab1ModalSelectYear" class="form-control">
                                            <option value="">-Сонго-</option>
                                            <option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option>
                                        </select>
                                    </div>                                        
                                </div>
                                <div class="col-sm-3" style="padding:0;">
                                    <label>Сар</label>
                                    <div class="input-group">
                                        <select id="inputintractiveTab1ModalSelectMonth" name="inputintractiveTab1ModalSelectMonth" class="form-control">
                                            <option value="">-Сонго-</option>
                                            <option value="1">1 сар</option>
                                            <option value="2">2 сар</option>
                                            <option value="3">3 сар</option>
                                            <option value="4">4 сар</option>
                                            <option value="5">5 сар</option>
                                            <option value="6">6 сар</option>
                                            <option value="7">7 сар</option>
                                            <option value="8">8 сар</option>
                                            <option value="9">9 сар</option>
                                            <option value="10">10 сар</option>
                                            <option value="11">11 сар</option>
                                            <option value="12">12 сар</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" style="margin:10px 0 0 0; display:block; overflow:hidden; ">
                                <div class="col-md-3" style="font-size:13px;padding:0;">
                                    Хавсралт файл:
                                </div>
                                <div class="col-md-9" style="font-style:italic; padding:0;">
                                    <a id="inputintractiveTab1ModalAttachBtn" class="btn btn-link btn-xs" href="javascript:void(0);" style="padding:0px; border:none;" download="">Файл хавсаргаагүй байна...</a>
                                </div>
                            </div>
                            <div class="form-group" style="margin:0; display:block; overflow:hidden;">
                                <div class="col-md-3" style="padding:0;">
                                    <a id="inputintractiveTab1ModalAttachDelete" class="btn btn-link btn-xs" href="javascript:void(0);"><i class="fa fa-trash-o"></i> файл устгах</a>
                                </div>
                                <div class="col-md-9" style="padding:0;">
                                    <input id="inputintractiveTab1ModalAttachInput" type="file" class="btn btn-default">
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
<div id="inputintractiveTab2Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="inputintractiveTab2ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Сангийн яамны төсвийн зарлагын төлөвлөгөө&nbsp;<span id="inputintractiveTab2ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body" style="padding-bottom:0px;">
                    <fieldset>
                        <div class="col-md-12">
                            <div id="tab2ID" class="form-group hide"></div>
                            <div class="form-group" style="margin:0; display:block; overflow:hidden;">
                                <div class="col-sm-3" style="padding:2px;">
                                    <label>Жил</label>
                                    <div class="input-group">
                                        <select id="inputintractiveTab2ModalSelectYear" name="inputintractiveTab2ModalSelectYear" class="form-control">
                                            <option value="">-Сонго-</option>
                                            <option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option>
                                        </select>
                                    </div>                                        
                                </div>
                            </div>
                            <div class="form-group" style="margin:10px 0 0 0; display:block; overflow:hidden; ">
                                <div class="col-md-3" style="font-size:13px;padding:0;">
                                    Хавсралт файл:
                                </div>
                                <div class="col-md-9" style="font-style:italic; padding:0;">
                                    <a id="inputintractiveTab2ModalAttachBtn" class="btn btn-link btn-xs" href="javascript:void(0);" style="padding:0px; border:none;" download="">Файл хавсаргаагүй байна...</a>
                                </div>
                            </div>
                            <div class="form-group" style="margin:0; display:block; overflow:hidden;">
                                <div class="col-md-3" style="padding:0;">
                                    <a id="inputintractiveTab2ModalAttachDelete" class="btn btn-link btn-xs" href="javascript:void(0);"><i class="fa fa-trash-o"></i> файл устгах</a>
                                </div>
                                <div class="col-md-9" style="padding:0;">
                                    <input id="inputintractiveTab2ModalAttachInput" type="file" class="btn btn-default">
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
        showLoader('loaderTab1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/inputintractive_inputintractiveTab1Datatable",
            data: '{yr:"' + $('#inputintractiveTab1SelectYear option:selected').val() + '", mnth:"' + $('#inputintractiveTab1SelectMonth option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divBindTab1Table").html(msg.d);
                hideLoader('loaderTab1');
                showLoader('loaderTab2');
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/inputintractive_inputintractiveTab2Datatable",
                    data: '{yr:"' + $('#inputintractiveTab2SelectYear option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        $("#divBindTab2Table").html(msg.d);
                        hideLoader('loaderTab2');
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "ws.aspx/WSOracleExecuteScalar",
                            data: '{qry:"SELECT NVL(FILE_NAME,\'none\') FROM TBL_INTRACTIVEDATA WHERE INTRACTIVEDATA_TYPE=3"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                var varMsg = msg.d;
                                var arrMsg = varMsg.split("~");
                                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                                else {
                                    if (arrMsg[1] == 'none') {
                                        $('#inputintractiveTab3AttachBtn').html('Зураг хавсаргаагүй байна...');
                                        $('#inputintractiveTab3AttachInput').val('');
                                        $('#inputintractiveTab3Img').attr('src', '');
                                    }
                                    else {
                                        $('#inputintractiveTab3AttachBtn').html(arrMsg[1]);
                                        $('#inputintractiveTab3AttachBtn').attr('href', '../files/forclient/' + arrMsg[1]);
                                        $('#inputintractiveTab3AttachInput').val('');
                                        $('#inputintractiveTab3Img').attr('src', '../files/forclient/' + arrMsg[1]);
                                    }
                                }
                            },
                            failure: function (response) {
                                alert('FAILURE: ' + response.d);
                            },
                            error: function (xhr, status, error) {
                                var err = eval("(" + xhr.responseText + ")");
                                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                else window.location = '../#pg/error500.aspx';
                            }
                        });
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        var err = eval("(" + xhr.responseText + ")");
                        if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                        else window.location = '../#pg/error500.aspx';
                    }
                });
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
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
    //$(document).ready(function () {
    //    //planmTabsSetFirstControls();
    //    dataBindTab1Datatable();
    //    dataBindTab2Datatable();
    //    dataBindTab3Data();
    //});
    function planmTabsSetFirstControls() {
        showLoader('loaderTab1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/inputintractive_inputintractiveTab1Datatable",
            data: '{yr:"' + $('#inputintractiveTab1SelectYear option:selected').val() + '", mnth:"' + $('#inputintractiveTab1SelectMonth option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divBindTab1Table").html(msg.d);
                hideLoader('loaderTab1');
                showLoader('loaderTab2');
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/inputintractive_inputintractiveTab2Datatable",
                    data: '{yr:"' + $('#inputintractiveTab2SelectYear option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        $("#divBindTab2Table").html(msg.d);
                        hideLoader('loaderTab2');
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        var err = eval("(" + xhr.responseText + ")");
                        if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                        else window.location = '../#pg/error500.aspx';
                    }
                });
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    //таб1
    function dataBindTab1Datatable() {
        showLoader('loaderTab1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/inputintractive_inputintractiveTab1Datatable",
            data: '{yr:"' + $('#inputintractiveTab1SelectYear option:selected').val() + '", mnth:"' + $('#inputintractiveTab1SelectMonth option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divBindTab1Table").html(msg.d);
                hideLoader('loaderTab1');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#inputintractiveTab1SelectYear").change(function () {
        dataBindTab1Datatable();
    });
    $("#inputintractiveTab1SelectMonth").change(function () {
        dataBindTab1Datatable();
    });
    function showAddEditTab1(el, isinsupt) {
        $('#inputintractiveTab1ModalHeaderLabel').text(isinsupt);
        if (isinsupt == 'нэмэх') {
            $('#tab1ID').text("");
            $('#inputintractiveTab1ModalSelectYear').val('');
            $('#inputintractiveTab1ModalSelectMonth').val('');
            $('#inputintractiveTab1ModalAttachBtn').html('Файл хавсаргаагүй байна...');
            $('#inputintractiveTab1ModalAttachInput').val('');
        }
        else {
            $("#tab1ID").text($(el).closest('tr').find('td:eq(0)').text());
            $('#inputintractiveTab1ModalSelectYear').val($(el).closest('tr').find('td:eq(1)').text());
            $('#inputintractiveTab1ModalSelectMonth').val($(el).closest('tr').find('td:eq(2)').text());
            $('#inputintractiveTab1ModalAttachInput').val('');
            $('#inputintractiveTab1ModalAttachBtn').html($(el).closest('tr').find('td:eq(3)').find('a').text());
        }
    }
    function showDeleteTab1(el) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: $(el).closest('tr').find('td:eq(1)').text() + "оны " + $(el).closest('tr').find('td:eq(2)').text() + " сарын төсвийн гүйцэтгэлийг устгах уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/WSOracleExecuteNonQuery",
                    data: '{qry:"DELETE FROM TBL_INTRACTIVEDATA WHERE ID=' + $(el).closest('tr').find('td:eq(0)').text() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                        else {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "ws.aspx/DeleteFile",
                                data: '{filename:"~/forclient/files/' + $(el).closest('tr').find('td:eq(3)').find('a').text() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (msg) {
                                    dataBindTab1Datatable();
                                    $.smallBox({
                                        title: "Сангийн яамны төсвийн сарын гүйцэтгэл",
                                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай устгагдлаа...</i>",
                                        color: "#659265",
                                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                        timeout: 1000
                                    });
                                },
                                failure: function (response) {
                                    alert('FAILURE: ' + response.d);
                                },
                                error: function (xhr, status, error) {
                                    var err = eval("(" + xhr.responseText + ")");
                                    if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                    else window.location = '../#pg/error500.aspx';
                                }
                            });
                        }
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        var err = eval("(" + xhr.responseText + ")");
                        if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                        else window.location = '../#pg/error500.aspx';
                    }
                });
            }
        });
    }
    $("#inputintractiveTab1ModalAttachDelete").click(function () {
        $('#inputintractiveTab1ModalAttachBtn').html('Файл хавсаргаагүй байна...');
        $('#inputintractiveTab1ModalAttachInput').val('');
    });
    $("#inputintractiveTab1ModalAttachInput").change(function () {
        var errMsg = '';
        var uploadfiles = $(this).get(0);
        var uploadedfiles = uploadfiles.files;
        var fromdata = new FormData();
        if (uploadedfiles[0].size > 5242880) {
            errMsg += 'Файлын хэмжээ 5MB -аас ихгүй байна!\n';
            $(this).val('');
        }
        if (errMsg == '') {
            valE = uploadedfiles[0].name.substr((uploadedfiles[0].name.lastIndexOf('.') + 1));
            if (valE != 'pdf') {
                errMsg += 'Файлын төрөл зөвшөөрөгдөөгүй төрөл байна. Зөвхөн .pdf төрөлтэй файл хавсаргана!\n';
                $(this).val('');
            }
            else fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
        }
        if (errMsg == '') {
            $('#inputintractiveTab1ModalAttachBtn').html($(this).val().split('\\').pop());
        }
        else alert(errMsg);
    });
    $('#inputintractiveTab1ModalForm').submit(function (e) {
        if (!$('#inputintractiveTab1ModalSelectYear').valid() || !$('#inputintractiveTab1ModalSelectMonth').valid()) {
            e.preventDefault();
        }
        else {
            if ($('#inputintractiveTab1ModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
                if ($("#inputintractiveTab1ModalHeaderLabel").html() == "нэмэх") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "ws.aspx/WSOracleExecuteScalar",
                        data: '{qry:"SELECT COUNT(1) FROM TBL_INTRACTIVEDATA WHERE INTRACTIVEDATA_TYPE=1 AND YR=' + $('#inputintractiveTab1ModalSelectYear option:selected').val() + ' AND MNTH=' + $('#inputintractiveTab1ModalSelectMonth option:selected').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (msg) {
                            var varMsg = msg.d;
                            var arrMsg = varMsg.split("~");
                            if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                            else {
                                if (arrMsg[1] == '0') {
                                    var filename = '';
                                    if ($('#inputintractiveTab1ModalAttachBtn').html() == 'Файл хавсаргаагүй байна...') filename = "null";
                                    else filename = "ТөсвийнГүйцэтгэлийнМэдээ-" + $('#inputintractiveTab1ModalSelectYear option:selected').val() + "-" + $('#inputintractiveTab1ModalSelectMonth option:selected').val() + ".pdf";
                                    globalAjaxVar = $.ajax({
                                        type: "POST",
                                        url: "ws.aspx/WSOracleExecuteNonQuery",
                                        data: '{qry:"INSERT INTO TBL_INTRACTIVEDATA (ID, INTRACTIVEDATA_TYPE, YR, HFYR, QRTR, MNTH, FILE_NAME) VALUES (TBLLASTID(\'TBL_INTRACTIVEDATA\'), 1, ' + $('#inputintractiveTab1ModalSelectYear option:selected').val() + ', ' + replaceMonthToHalfYear($('#inputintractiveTab1ModalSelectMonth option:selected').val()) + ', ' + replaceMonthToQuarter($('#inputintractiveTab1ModalSelectMonth option:selected').val()) + ', ' + $('#inputintractiveTab1ModalSelectMonth option:selected').val() + ', \'' + filename + '\')"}',
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function (msg) {
                                            if (msg.d == "0") { $('#inputintractiveTab1Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                            else {
                                                if ($("#inputintractiveTab1ModalAttachInput").val() != '') {
                                                    var uploadfiles = $("#inputintractiveTab1ModalAttachInput").get(0);
                                                    var uploadedfiles = uploadfiles.files;
                                                    var fromdata = new FormData();
                                                    fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                                                    var choice = {};
                                                    choice.url = "pg/UploadFile.ashx?folder=forclient&filename=" + filename;
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
                                                        dataBindTab1Datatable();
                                                        $.smallBox({
                                                            title: "Сангийн яамны төсвийн сарын гүйцэтгэл",
                                                            content: "<i class='fa fa-clock-o'></i> <i>Амжилттай батлагдлаа...</i>",
                                                            color: "#659265",
                                                            iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                            timeout: 1000
                                                        });
                                                        $('#inputintractiveTab1Modal').modal('hide');
                                                    };
                                                    choice.error = function (err) { alert('Файл хуулхад алдаа гарлаа: ' + err.statusText); };
                                                    $.ajax(choice);
                                                    event.preventDefault();
                                                }
                                                else {
                                                    dataBindTab1Datatable();
                                                    $.smallBox({
                                                        title: "Сангийн яамны төсвийн сарын гүйцэтгэл",
                                                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай батлагдлаа...</i>",
                                                        color: "#659265",
                                                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                        timeout: 1000
                                                    });
                                                    $('#inputintractiveTab1Modal').modal('hide');
                                                }
                                            }
                                        },
                                        failure: function (response) {
                                            alert('FAILURE: ' + response.d);
                                        },
                                        error: function (xhr, status, error) {
                                            var err = eval("(" + xhr.responseText + ")");
                                            if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                            else window.location = '../#pg/error500.aspx';
                                        }
                                    });
                                }
                                else alert($('#inputintractiveTab1ModalSelectYear option:selected').val() + 'оны ' + $('#inputintractiveTab1ModalSelectMonth option:selected').val() + '-р сард мэдээлэл орсон байна!');
                            }
                        },
                        failure: function (response) {
                            alert('FAILURE: ' + response.d);
                        },
                        error: function (xhr, status, error) {
                            var err = eval("(" + xhr.responseText + ")");
                            if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                            else window.location = '../#pg/error500.aspx';
                        }
                    });
                }
                else {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "ws.aspx/WSOracleExecuteNonQuery",
                        data: '{qry:"UPDATE TBL_INTRACTIVEDATA SET YR=' + $('#inputintractiveTab1ModalSelectYear option:selected').val() + ' , HFYR=' + replaceMonthToHalfYear($('#inputintractiveTab1ModalSelectMonth option:selected').val()) + ' , QRTR= ' + replaceMonthToQuarter($('#inputintractiveTab1ModalSelectMonth option:selected').val()) + ', MNTH= ' + $('#inputintractiveTab1ModalSelectMonth option:selected').val() + ', FILE_NAME=\'' + filename + '\' WHERE ID='+$('#tab1ID').text()+'"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (msg) {
                            if (msg.d == "0") { $('#inputintractiveTab1Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                            else {
                                if ($("#inputintractiveTab1ModalAttachInput").val() != '') {
                                    var uploadfiles = $("#inputintractiveTab1ModalAttachInput").get(0);
                                    var uploadedfiles = uploadfiles.files;
                                    var fromdata = new FormData();
                                    fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                                    var choice = {};
                                    choice.url = "pg/UploadFile.ashx?folder=forclient&filename=" + filename;
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
                                        dataBindTab1Datatable();
                                        $.smallBox({
                                            title: "Сангийн яамны төсвийн сарын гүйцэтгэл",
                                            content: "<i class='fa fa-clock-o'></i> <i>Амжилттай батлагдлаа...</i>",
                                            color: "#659265",
                                            iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                            timeout: 1000
                                        });
                                        $('#inputintractiveTab1Modal').modal('hide');
                                    };
                                    choice.error = function (err) { alert('Файл хуулхад алдаа гарлаа: ' + err.statusText); };
                                    $.ajax(choice);
                                    event.preventDefault();
                                }
                                else {
                                    dataBindTab1Datatable();
                                    $.smallBox({
                                        title: "Сангийн яамны төсвийн сарын гүйцэтгэл",
                                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай батлагдлаа...</i>",
                                        color: "#659265",
                                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                        timeout: 1000
                                    });
                                    $('#inputintractiveTab1Modal').modal('hide');
                                }
                            }
                        },
                        failure: function (response) {
                            alert('FAILURE: ' + response.d);
                        },
                        error: function (xhr, status, error) {
                            var err = eval("(" + xhr.responseText + ")");
                            if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                            else window.location = '../#pg/error500.aspx';
                        }
                    });
                }
            }
            else alert('Хавсралт файл оруулна уу!');
        }
    });

    //таб2
    function dataBindTab2Datatable() {
        showLoader('loaderTab2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/inputintractive_inputintractiveTab2Datatable",
            data: '{yr:"' + $('#inputintractiveTab2SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divBindTab2Table").html(msg.d);
                hideLoader('loaderTab2');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#inputintractiveTab2SelectYear").change(function () {
        dataBindTab2Datatable();
    });
    function showAddEditTab2(el, isinsupt) {
        $('#inputintractiveTab2ModalHeaderLabel').text(isinsupt);
        if (isinsupt == 'нэмэх') {
            $('#tab2ID').text("");
            $('#inputintractiveTab2ModalSelectYear').val('');
            $('#inputintractiveTab2ModalAttachBtn').html('Файл хавсаргаагүй байна...');
            $('#inputintractiveTab2ModalAttachInput').val('');
        }
        else {
            $("#tab2ID").text($(el).closest('tr').find('td:eq(0)').text());
            $('#inputintractiveTab2ModalSelectYear').val($(el).closest('tr').find('td:eq(1)').text());
            $('#inputintractiveTab2ModalAttachBtn').html($(el).closest('tr').find('td:eq(2)').find('a').text());
            $('#inputintractiveTab2ModalAttachInput').val('');
        }
    }
    function showDeleteTab2(el) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: $(el).closest('tr').find('td:eq(1)').text() + "оны зарлагын төлөвлөгөөг устгах уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/WSOracleExecuteNonQuery",
                    data: '{qry:"DELETE FROM TBL_INTRACTIVEDATA WHERE ID=' + $(el).closest('tr').find('td:eq(0)').text() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                        else {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "ws.aspx/DeleteFile",
                                data: '{filename:"~/forclient/files/' + $(el).closest('tr').find('td:eq(2)').find('a').text() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (msg) {
                                    dataBindTab2Datatable();
                                    $.smallBox({
                                        title: "Сангийн яамны төсвийн зарлагын төлөвлөгөө",
                                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай устгагдлаа...</i>",
                                        color: "#659265",
                                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                        timeout: 1000
                                    });
                                },
                                failure: function (response) {
                                    alert('FAILURE: ' + response.d);
                                },
                                error: function (xhr, status, error) {
                                    var err = eval("(" + xhr.responseText + ")");
                                    if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                    else window.location = '../#pg/error500.aspx';
                                }
                            });
                        }
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        var err = eval("(" + xhr.responseText + ")");
                        if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                        else window.location = '../#pg/error500.aspx';
                    }
                });
            }
        });
    }
    $("#inputintractiveTab2ModalAttachDelete").click(function () {
        $('#inputintractiveTab2ModalAttachBtn').html('Файл хавсаргаагүй байна...');
        $('#inputintractiveTab2ModalAttachInput').val('');
    });
    $("#inputintractiveTab2ModalAttachInput").change(function () {
        var errMsg = '';
        var uploadfiles = $(this).get(0);
        var uploadedfiles = uploadfiles.files;
        var fromdata = new FormData();
        if (uploadedfiles[0].size > 5242880) {
            errMsg += 'Файлын хэмжээ 5MB -аас ихгүй байна!\n';
            $(this).val('');
        }
        if (errMsg == '') {
            valE = uploadedfiles[0].name.substr((uploadedfiles[0].name.lastIndexOf('.') + 1));
            if (valE != 'pdf') {
                errMsg += 'Файлын төрөл зөвшөөрөгдөөгүй төрөл байна. Зөвхөн .pdf төрөлтэй файл хавсаргана!\n';
                $(this).val('');
            }
            else fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
        }
        if (errMsg == '') {
            $('#inputintractiveTab2ModalAttachBtn').html($(this).val().split('\\').pop());
        }
        else alert(errMsg);
    });

    //tab3
    function dataBindTab3Data() {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteScalar",
            data: '{qry:"SELECT NVL(FILE_NAME,\'none\') FROM TBL_INTRACTIVEDATA WHERE INTRACTIVEDATA_TYPE=3"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    if (arrMsg[1] == 'none') {
                        $('#inputintractiveTab3AttachBtn').html('Зураг хавсаргаагүй байна...');
                        $('#inputintractiveTab3AttachInput').val('');
                        $('#inputintractiveTab3Img').attr('src', '');
                    }
                    else {
                        $('#inputintractiveTab3AttachBtn').html(arrMsg[1]);
                        $('#inputintractiveTab3AttachInput').val('');
                        $('#inputintractiveTab3Img').attr('src', '../files/forclient/' + arrMsg[1]);
                    }
                }
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#inputintractiveTab3AttachInput").change(function () {
        var errMsg = '';
        var uploadfiles = $(this).get(0);
        var uploadedfiles = uploadfiles.files;
        var fromdata = new FormData();
        if (uploadedfiles[0].size > 5242880) {
            errMsg += 'Файлын хэмжээ 5MB -аас ихгүй байна!\n';
            $(this).val('');
        }
        if (errMsg == '') {
            valE = uploadedfiles[0].name.substr((uploadedfiles[0].name.lastIndexOf('.') + 1));
            if (valE != 'jpeg' && valE != 'jpg' && valE != 'png') {
                errMsg += 'Файлын төрөл зөвшөөрөгдөөгүй төрөл байна. /jpeg, jpg, png/\n';
                $(this).val('');
            }
            else fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
        }
        if (errMsg == '') {
            $('#inputintractiveTab3AttachBtn').html($(this).val().split('\\').pop());
            showImage(this);
        }
        else {
            alert(errMsg);
        }
    });
    function showImage(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#inputintractiveTab3Img').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
    $("#inputintractiveTab3AttachDelete").click(function () {
        if ($('#inputintractiveTab3AttachBtn').html() != 'Зураг хавсаргаагүй байна...') {
            $.SmartMessageBox({
                title: "Анхааруулга!",
                content: "Та зураг устгахдаа итгэлтэй байна уу?",
                buttons: '[Үгүй][Тийм]'
            }, function (ButtonPressed) {
                if (ButtonPressed === "Тийм") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "ws.aspx/WSOracleExecuteNonQuery",
                        data: '{qry:"UPDATE TBL_INTRACTIVEDATA SET FILE_NAME=null WHERE INTRACTIVEDATA_TYPE=3"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (msg) {
                            if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                            else {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/DeleteFile",
                                    data: '{filename:"~/forclient/files/mof_organization_chart.png"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        $('#inputintractiveTab3Img').attr('src', '');
                                        $('#inputintractiveTab3AttachBtn').html('Зураг хавсаргаагүй байна...');
                                        $('#inputintractiveTab3AttachInput').val('');
                                        $.smallBox({
                                            title: "Зураг",
                                            content: "<i class='fa fa-clock-o'></i> <i>Амжилттай устгагдлаа...</i>",
                                            color: "#659265",
                                            iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                            timeout: 1000
                                        });
                                    },
                                    failure: function (response) {
                                        alert('FAILURE: ' + response.d);
                                    },
                                    error: function (xhr, status, error) {
                                        var err = eval("(" + xhr.responseText + ")");
                                        if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                        else window.location = '../#pg/error500.aspx';
                                    }
                                });
                            }
                        },
                        failure: function (response) {
                            alert('FAILURE: ' + response.d);
                        },
                        error: function (xhr, status, error) {
                            var err = eval("(" + xhr.responseText + ")");
                            if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                            else window.location = '../#pg/error500.aspx';
                        }
                    });
                }
            });
        }        
    });
    $("#inputintractiveTab3AttachSave").click(function () {
        if ($('#inputintractiveTab3AttachBtn').html() != 'Зураг хавсаргаагүй байна...') {
            var filename = '';
            if ($('#inputintractiveTab3AttachBtn').html() == 'Зураг хавсаргаагүй байна...') filename = "null";
            else filename = "mof_organization_chart.png";
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteNonQuery",
                data: '{qry:"UPDATE TBL_INTRACTIVEDATA SET FILE_NAME=\'' + filename + '\' WHERE INTRACTIVEDATA_TYPE=3"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                    else {
                        if ($("#inputintractiveTab3AttachInput").val() != '') {
                            var uploadfiles = $("#inputintractiveTab3AttachInput").get(0);
                            var uploadedfiles = uploadfiles.files;
                            var fromdata = new FormData();
                            fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                            var choice = {};
                            choice.url = "pg/UploadFile.ashx?folder=forclient&filename=" + filename;
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
                                $.smallBox({
                                    title: "Зураг",
                                    content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
                                    color: "#659265",
                                    iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                    timeout: 1000
                                });
                                $("#inputintractiveTab3AttachInput").val('');
                            };
                            choice.error = function (err) { alert('Файл хуулхад алдаа гарлаа: ' + err.statusText); };
                            $.ajax(choice);
                            event.preventDefault();
                        }
                        else {
                            $.smallBox({
                                title: "Зураг",
                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
                                color: "#659265",
                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                timeout: 1000
                            });
                        }
                    }
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                    else window.location = '../#pg/error500.aspx';
                }
            });
        }
        else alert('Зураг оруулна уу!');
    });

    loadScript("../js/plugin/bootstrap-wizard/jquery.bootstrap.wizard.min.js", runBootstrapWizard);
    function runBootstrapWizard() {
        var $validatorTab1 = $("#inputintractiveTab1ModalForm").validate({
            rules: {
                inputintractiveTab1ModalSelectYear: {
                    required: true
                },
                inputintractiveTab1ModalSelectMonth: {
                    required: true
                }
            },
            messages: {
                inputintractiveTab1ModalSelectYear: {
                    required: "Жил заавал сонгоно уу"
                },
                inputintractiveTab1ModalSelectMonth: {
                    required: "Сар заавал сонгоно уу"
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
    function replaceMonthToHalfYear(mnth) {
        if (parseInt(mnth) > 0 && parseInt(mnth) < 7) return 1;
        else return 2;
    }
    function replaceMonthToQuarter(mnth) {
        if (parseInt(mnth) > 0 && parseInt(mnth) < 4) return 1;
        if (parseInt(mnth) > 3 && parseInt(mnth) < 7) return 2;
        if (parseInt(mnth) > 6 && parseInt(mnth) < 10) return 3;
        else return 4;
    }

    $('#inputintractiveTab2ModalForm').bootstrapValidator({
        fields: {
            inputintractiveTab2ModalSelectYear: {
                group: '.col-md-3',
                validators: {
                    notEmpty: {
                        message: 'Жил сонгоно уу'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            if ($('#inputintractiveTab2ModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
                var filename = '';
                if ($('#inputintractiveTab2ModalAttachBtn').html() == 'Файл хавсаргаагүй байна...') filename = "null";
                else filename = "ТөсвийнЗарлагынТөлөвлөгөө-" + $('#inputintractiveTab2ModalSelectYear option:selected').val() + ".pdf";
                if ($("#inputintractiveTab2ModalHeaderLabel").html() == "нэмэх") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "ws.aspx/WSOracleExecuteScalar",
                        data: '{qry:"SELECT COUNT(1) FROM TBL_INTRACTIVEDATA WHERE INTRACTIVEDATA_TYPE=2 AND YR=' + $('#inputintractiveTab2ModalSelectYear option:selected').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (msg) {
                            var varMsg = msg.d;
                            var arrMsg = varMsg.split("~");
                            if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                            else {
                                if (arrMsg[1] == '0') {
                                    globalAjaxVar = $.ajax({
                                        type: "POST",
                                        url: "ws.aspx/WSOracleExecuteNonQuery",
                                        data: '{qry:"INSERT INTO TBL_INTRACTIVEDATA (ID, INTRACTIVEDATA_TYPE, YR, FILE_NAME) VALUES (TBLLASTID(\'TBL_INTRACTIVEDATA\'), 2, ' + $('#inputintractiveTab2ModalSelectYear option:selected').val() + ', \'' + filename + '\')"}',
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function (msg) {
                                            if (msg.d == "0") { $('#inputintractiveTab2Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                            else {
                                                if ($("#inputintractiveTab2ModalAttachInput").val() != '') {
                                                    var uploadfiles = $("#inputintractiveTab2ModalAttachInput").get(0);
                                                    var uploadedfiles = uploadfiles.files;
                                                    var fromdata = new FormData();
                                                    fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                                                    var choice = {};
                                                    choice.url = "pg/UploadFile.ashx?folder=forclient&filename=" + filename;
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
                                                        dataBindTab2Datatable();
                                                        $.smallBox({
                                                            title: "Сангийн яамны төсвийн зарлагын төлөвлөгөө",
                                                            content: "<i class='fa fa-clock-o'></i> <i>Амжилттай батлагдлаа...</i>",
                                                            color: "#659265",
                                                            iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                            timeout: 1000
                                                        });
                                                        $('#inputintractiveTab2Modal').modal('hide');
                                                    };
                                                    choice.error = function (err) { alert('Файл хуулхад алдаа гарлаа: ' + err.statusText); };
                                                    $.ajax(choice);
                                                    event.preventDefault();
                                                }
                                                else {
                                                    dataBindTab2Datatable();
                                                    $.smallBox({
                                                        title: "Сангийн яамны төсвийн зарлагын төлөвлөгөө",
                                                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай батлагдлаа...</i>",
                                                        color: "#659265",
                                                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                        timeout: 1000
                                                    });
                                                    $('#inputintractiveTab2Modal').modal('hide');
                                                }
                                            }
                                        },
                                        failure: function (response) {
                                            alert('FAILURE: ' + response.d);
                                        },
                                        error: function (xhr, status, error) {
                                            var err = eval("(" + xhr.responseText + ")");
                                            if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                            else window.location = '../#pg/error500.aspx';
                                        }
                                    });
                                }
                                else alert($('#inputintractiveTab2ModalSelectYear option:selected').val() + 'онд мэдээлэл орсон байна!');
                            }
                        },
                        failure: function (response) {
                            alert('FAILURE: ' + response.d);
                        },
                        error: function (xhr, status, error) {
                            var err = eval("(" + xhr.responseText + ")");
                            if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                            else window.location = '../#pg/error500.aspx';
                        }
                    });
                }
                else {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "ws.aspx/WSOracleExecuteNonQuery",
                        data: '{qry:"UPDATE TBL_INTRACTIVEDATA SET YR=' + $('#inputintractiveTab2ModalSelectYear option:selected').val() + ' , FILE_NAME=\'' + filename + '\' WHERE ID=' + $('#tab2ID').text() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (msg) {
                            if (msg.d == "0") { $('#inputintractiveTab2Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                            else {
                                if ($("#inputintractiveTab2ModalAttachInput").val() != '') {
                                    var uploadfiles = $("#inputintractiveTab2ModalAttachInput").get(0);
                                    var uploadedfiles = uploadfiles.files;
                                    var fromdata = new FormData();
                                    fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                                    var choice = {};
                                    choice.url = "pg/UploadFile.ashx?folder=forclient&filename=" + filename;
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
                                        dataBindTab2Datatable();
                                        $.smallBox({
                                            title: "Сангийн яамны төсвийн зарлагын төлөвлөгөө",
                                            content: "<i class='fa fa-clock-o'></i> <i>Амжилттай батлагдлаа...</i>",
                                            color: "#659265",
                                            iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                            timeout: 1000
                                        });
                                        $('#inputintractiveTab2Modal').modal('hide');
                                    };
                                    choice.error = function (err) { alert('Файл хуулхад алдаа гарлаа: ' + err.statusText); };
                                    $.ajax(choice);
                                    event.preventDefault();
                                }
                                else {
                                    dataBindTab2Datatable();
                                    $.smallBox({
                                        title: "Сангийн яамны төсвийн зарлагын төлөвлөгөө",
                                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай батлагдлаа...</i>",
                                        color: "#659265",
                                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                        timeout: 1000
                                    });
                                    $('#inputintractiveTab2Modal').modal('hide');
                                }
                            }
                        },
                        failure: function (response) {
                            alert('FAILURE: ' + response.d);
                        },
                        error: function (xhr, status, error) {
                            var err = eval("(" + xhr.responseText + ")");
                            if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                            else window.location = '../#pg/error500.aspx';
                        }
                    });
                }
            }
            else alert('Хавсралт файл оруулна уу!');
        }
    });
</script>