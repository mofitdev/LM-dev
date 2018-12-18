<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="indicatortype.aspx.cs" Inherits="LMWebApp.pg.indicatortype" %>
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    <h1 class="page-title txt-color-blueDark" style="margin-bottom:12px;">
        <i class="fa-fw fa fa-home"></i>
        <span id="pageUrlModuleName" runat="server">> ҮЗҮҮЛЭЛТҮҮД</span>
    </h1>
</div>
<div class="row">
    <div class="col-md-3" style="margin-bottom:5px;">
        <a id="pTab1Add" runat="server" href="javascript:void(0);" class="btn btn-primary btn-xs" data-target="#pModal" data-toggle="modal" onclick="showAddEdit(this,'нэмэх')"><i class="fa fa-plus"></i> Үзүүлэлт нэмэх</a>
    </div>
    <div class="col-md-9">
        
    </div>
</div>
<div id="indicatortypeList" runat="server" class="row">
    <div class="col-md-4">
        <%--<div class="bodlogolist well well-sm bg-color-teal txt-color-white text-center font-xs">
            <div class="btn-group pull-right" style="margin-top: -4px; margin-right: 0;">
                <button class="btn bg-color-teal btn-xs" rel="tooltip" data-placement="top" data-original-title="Засах" onclick="showAddEdit(this, 'засах');" data-target="#pModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>
                <button class="btn bg-color-teal btn-xs" rel="tooltip" data-placement="top" data-original-title="Устгах" onclick="showDelete(this);"><i class="fa fa fa fa-trash-o"></i></button>
            </div>
            <a href="../#pg/indicator.aspx?id=5" style="color:#FFF;" class="font-md">Монгол Улсын Эдийн засаг, нийгмийг 2015 онд хөгжүүлэх Үндсэн чиглэл /2015/</a>
        </div>--%>
    </div>	
</div>
<div id="pModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="pModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Үзүүлэлт&nbsp;<span id="pModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pModalID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Нэр</label>
									<input id="pModalInputName" name="pModalInputName" class="form-control" placeholder="Нэр" type="text"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Тайлбар</label>
									<textarea id="pModalInputDescription" name="pModalInputDescription" class="form-control" placeholder="Тайлбар" rows="2"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Идэвхтэй эсэх</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
									<label class="radio radio-inline" style="margin-top:0;">
										<input id="pModalInputIsactive1" name="pModalInputIsactive" type="radio" class="radiobox" value="1">
										<span>Идэвхтэй</span>
									</label>
									<label class="radio radio-inline">
										<input id="pModalInputIsactive0" name="pModalInputIsactive" type="radio" class="radiobox" value="0">
										<span>Идэвхгүй</span>  
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
<script type="text/javascript">
    pageSetUp();
    function showAddEdit(el, isinsupt) {
        $('#pModalHeaderLabel').html(isinsupt);
        $('#pModalInputName').val('');
        $('#pModalInputDescription').val('');
        $('input[name="pModalInputIsactive"]').prop('checked', false);
        if (isinsupt == 'засах') {
            $('#pModalID').text($(el).closest('.indicatorlist').attr('data-id'));
            $('#pModalInputName').val($(el).closest('.indicatorlist').find('a').html().split(' /')[0]);
            $('#pModalInputDescription').val($(el).closest('.indicatorlist').attr('data-description'));
            if ($(el).attr('class').split(' ')[1].split('-')[2] == 'teal') {
                $('#pModalInputIsactive1').prop('checked', true);
            }
            else if ($(el).attr('class').split(' ')[1].split('-')[2] == 'blueLight') {
                $('#pModalInputIsactive0').prop('checked', true);
            }
        }
    }
    function showDelete(el) {
        //globalAjaxVar = $.ajax({
        //    type: "POST",
        //    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
        //    data: '{"qry":"SELECT COUNT(1) FROM TBL_INDICATOR WHERE INDICATORTYPE_ID=' + $(el).closest('.indicatorlist').attr('data-id') + '"}',
        //    contentType: "application/json; charset=utf-8",
        //    dataType: "json",
        //    success: function (data) {
        //        if (data.d != '0') {
        //            alert('Сонгосон бодлогын баримт бичигт хамааралтай бодлого орсон тул устгах боломжгүй байна!');
        //        }
        //        else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон үзүүлэлтийг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"DELETE FROM TBL_INDICATORTYPE WHERE ID=' + $(el).closest('.indicatorlist').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    $('#indicatortypeList').find('.indicatorlist').each(function (index) {
                                        if ($(this).attr('data-id') == $("#pModalID").text()) {
                                            $(this).parent().remove();
                                            smallBox('Сонгосон үзүүлэлт', 'Амжилттай устлаа...', '#659265', 3000);
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
        //        }
        //    },
        //    failure: function (response) {
        //        alert('FAILURE: ' + response.d);
        //    },
        //    error: function (xhr, status, error) {
        //        window.location = '../#pg/error500.aspx';
        //    }
        //});
    }
    function dataBindDataTable() {
        var valData = '';
        showLoader('loaderList');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/IndicatortypeDatatable",
            data: '{}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<div class=\"col-md-4\">";
                    valData += "<div data-id=\"" + value.ID + "\" data-description=\"" + replaceDisplayToDatabase(value.DESCRIPTION) + "\" class=\"indicatorlist well well-sm " + value.ISDISABLED + " txt-color-white text-center font-xs\">";
                    valData += "<div class=\"btn-group pull-right\" style=\"margin-top: -4px; margin-right: 0;\">";
                    valData += "<button class=\"btn " + value.ISDISABLED + " btn-xs\" rel=\"tooltip\" data-placement=\"top\" data-original-title=\"Засах\" onclick=\"showAddEdit(this, 'засах');\" data-target=\"#pModal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                    valData += "<button class=\"btn " + value.ISDISABLED + " btn-xs\" rel=\"tooltip\" data-placement=\"top\" data-original-title=\"Устгах\" onclick=\"showDelete(this);\"><i class=\"fa fa fa fa-trash-o\"></i></button>";
                    valData += "</div>";
                    valData += "<a href=\"../#pg/indicator.aspx?id=" + value.ID + "\" style=\"color:#FFF;\" class=\"font-md\">" + replaceDisplayToDatabase(value.NAME) + "</a>";
                    valData += "</div>";
                    valData += "</div>";
                });
                if (valData == '') "<div class=\"col-md-12\"><em>Мэдээлэл олдсонгүй...</em></div>";
                $("#indicatortypeList").html(valData);
                hideLoader('loaderList');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $('#pModalForm').bootstrapValidator({
        fields: {
            pModalInputName: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    stringLength: {
                        max: 100,
                        message: 'Уртдаа 100 тэмдэгт авна'
                    }
                }
            },
            pModalInputDescription: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    stringLength: {
                        max: 500,
                        message: 'Уртдаа 500 тэмдэгт авна'
                    }
                }
            },
            pModalInputIsactive: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            if ($('#pModalHeaderLabel').text() == 'нэмэх') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"INSERT INTO TBL_INDICATORTYPE (ID, NAME, DESCRIPTION, ISACTIVE, CREATED_STAFFID, CREATED_DATE) VALUES (TBLLASTID(\'TBL_INDICATORTYPE\'), \'' + replaceDisplayToDatabase($.trim($('#pModalInputName').val())) + '\', \'' + replaceDisplayToDatabase($.trim($('#pModalInputDescription').val())) + '\', ' + $('input[name="pModalInputIsactive"]:checked').val() + ', ' + $('#indexUserId').text() + ', sysdate)"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindDataTable();
                        $('#pModal').modal('hide');
                        smallBox('Үзүүлэлт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        window.location = '../#pg/error500.aspx';
                    }
                });
            }
            else if ($('#pModalHeaderLabel').text() == 'засах') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"UPDATE TBL_INDICATORTYPE SET NAME=\'' + replaceDisplayToDatabase($.trim($('#pModalInputName').val())) + '\', DESCRIPTION=\'' + replaceDisplayToDatabase($.trim($('#pModalInputDescription').val())) + '\', ISACTIVE=' + $('input[name="pModalInputIsactive"]:checked').val() + ', UPDATED_STAFFID=' + $('#indexUserId').text() + ', UPDATED_DATE=sysdate WHERE ID=' + $("#pModalID").text() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindDataTable();
                        $('#pModal').modal('hide');
                        smallBox('Үзүүлэлт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
</script>
