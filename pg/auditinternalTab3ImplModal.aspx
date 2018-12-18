<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="auditinternalTab3ImplModal.aspx.cs" Inherits="LMWebApp.pg.auditinternalTab3ImplModal" %>
<div class="modal-header">
    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
    <h4 class="modal-title" >Зөвлөмжийн биелэлт&nbsp;<span id="auditinternalTab3ImplModalHeaderLabel" runat="server"></span></h4>
</div>
<div class="modal-body">
    <div class="row">
        <div class="col-md-12">
            <div id="pTab3ModalID" runat="server" class="form-group hide"></div> 
            <div class="form-group" style="margin-bottom:2px;">
                Он: <label id="pTab3ImplModalCurrentYr" runat="server"></label> | <label id="pTab3ImplModalCurrentQrtr" runat="server"></label>
            </div>
            <div class="form-group" style="margin:0px; display:block; overflow:hidden;">
            <div class="col-md-12">   
                <div style="width:100%; display: block; overflow: hidden; padding-bottom: 5px;">
                    <div style="width:65%; float:left; text-align:justify;" class="font-xs">
                        <div class="alert alert-warning fade in">
				            <i class="fa-fw fa fa-warning"></i>
				            10000 тэмдэгтээс илүү болон хүснэгт, зураг, чартан мэдээллийг хавсралтаар оруулна уу!
			            </div>
                    </div>
                    <div style="width:15%; float:right; text-align:right;">
                        Тэмдэгт: <label id="pTab3ImplModalCharLength" runat="server">0</label>/10000
                    </div>
                    <div style="width:17%; float:right; text-align:right;">
                        <button id="pTab3ImplModalDelete" type="button" class="btn btn-labeled btn-danger" style="font-size: 12px;">
                            <span class="btn-label" style="padding: 3px 7px 3px 5px;">
                                <i class="fa fa-trash-o"></i>
                            </span>Биелэлт устгах
                        </button>
                    </div>                                
                </div> 
                <div style="width:100%; display: block; overflow: hidden; padding-bottom: 5px;">
                    <div style="width:100%; float:right; text-align:left;">
                        <button id="pTab3ImplModalImportPrevImpl" class="col-md-1 btn btn-link btn-sm pull-right" style="padding:0 0 0 0; width:75px;"><span class="glyphicon glyphicon-download-alt"></span> татах</button>
                        <button id="pTab3ImplModalShowPrevImpl" class="col-md-1 btn btn-link btn-sm pull-right" style="padding:0 0 0 0; width:75px;" data-toggle="modal" data-target="#pTab3ImplModalPrevImplModal" onclick="pTab3ImplModalPrevImplShow()"><span class="glyphicon glyphicon-eye-open"></span> харах</button>
                        <label class="col-md-8 control-label pull-right" style="text-align:right; padding-top:4px;">Өмнөх улиралын биелэлт: </label>
                    </div> 
                </div>
                <textarea id="pTab3ImplModalImpl" name="pTab3ImplModalImpl" runat="server"></textarea>
                <script>
                    CKEDITOR.replace('pTab3ImplModalImpl', {
                        toolbar: [
                            { name: 'document', groups: ['mode', 'document', 'doctools'], items: ['Source', '-', 'Preview', 'Print'] },
	                        { name: 'clipboard', groups: ['clipboard', 'undo'], items: ['Cut', 'Copy', 'Paste', '-', 'Undo', 'Redo'] },
	                        { name: 'editing', groups: ['find', 'selection', 'spellchecker'], items: ['Find', 'Replace'] },
	                        { name: 'basicstyles', groups: ['basicstyles', 'cleanup'], items: ['Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript'] },
	                        { name: 'paragraph', groups: ['list', 'indent', 'blocks', 'align', 'bidi'], items: ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'] },
	                            { name: 'insert', items: ['Image', 'Flash', 'Table', 'SpecialChar'] },
	                        { name: 'styles', items: ['Styles', 'Format', 'Font', 'FontSize'] },
	                        { name: 'colors', items: ['TextColor', 'BGColor'] },
	                        { name: 'tools', items: ['Maximize'] }
                        ]
                    });
                    var editor = CKEDITOR.instances.pTab3ImplModalImpl;
                    editor.on('key', function (evt) {
                        $("#pTab3ImplModalCharLength").text(replaceDisplayToDatabase($.trim(evt.editor.getData())).length);
                    }, editor.element.$);
                </script>
            </div>
        </div>
        </div>
    </div>
</div>
<div class="modal-footer">
    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
    <button id="pTab3ModalImplBtnSave" class="btn btn-success btn-sm" type="button"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах</button>
</div>
<div id="pTab3ImplModalPrevImplModal" class="modal fade in modalSecond" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                <h4 class="modal-title" >Өмнөх улиралын биелэлт харах</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div id="pTab3ImplModalPrevImplDiv" class="form-group">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $("#pTab3ModalImplBtnSave").click(function () {
        var valQryIsEval = '', valQryInsUpt = '', data = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_AUDITINTERNAL_PLAN_IMPL WHERE AUDITINTERNAL_PLAN_ID=<%=Request.QueryString["id"]%> AND YR=<%=Request.QueryString["yr"]%> AND QRTR=<%=Request.QueryString["qrtr"]%> AND EVAL IS NOT NULL"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') {
                    alert('Үнэлгээ орсон тул мэдээлэлтэй ажиллах боломжгүй байна!');
                }
                else {
                    data = replaceDisplayToDatabase(CKEDITOR.instances.pTab3ImplModalImpl.getData()).replace(/\r?\n|\r/g, '').replace(/\r?\t|\r/g, '');
                    if ($('#auditinternalTab3ImplModalHeaderLabel').html() == 'оруулах') {
                        valQryInsUpt = 'declare vClobVal varchar2(32767) := \'' + data + '\'; begin INSERT INTO TBL_AUDITINTERNAL_PLAN_IMPL (AUDITINTERNAL_PLAN_ID, YR, QRTR, IMPL, IMPL_CREATED_STAFFID, IMPL_CREATED_DATE) VALUES (<%=Request.QueryString["id"]%>, <%=Request.QueryString["yr"]%>, <%=Request.QueryString["qrtr"]%>, vClobVal, ' + $.trim($('#indexUserId').html()) + ', sysdate); end;';
                    }
                    else if ($('#auditinternalTab3ImplModalHeaderLabel').html() == 'засах') {
                        valQryInsUpt = 'declare vClobVal varchar2(32767) := \'' + data + '\'; begin UPDATE TBL_AUDITINTERNAL_PLAN_IMPL SET IMPL=vClobVal, IMPL_UPDATED_STAFFID=' + $.trim($('#indexUserId').html()) + ', IMPL_UPDATED_DATE=sysdate WHERE AUDITINTERNAL_PLAN_ID=<%=Request.QueryString["id"]%> AND YR=<%=Request.QueryString["yr"]%> AND QRTR=<%=Request.QueryString["qrtr"]%>; end;';
                    }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"' + valQryInsUpt + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        $('#auditinternalTab3ImplModalHeaderLabel').html('засах');
                        $('#pTab3Datatable > tbody  > tr').each(function () {
                            if ($(this).attr('data-id') == $('#pTab3ModalID').text()) {
                                $('td:eq(6)', this).find('a').html('<i class="glyphicon glyphicon-check txt-color-green font-xl"></i>');
                                return false;
                            }
                        });
                        smallBox('Биелэлт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                        $('#pTab3ImplModal').modal('hide');
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        window.location = '../#pg/error500.aspx';
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
    });
$('#pTab3ImplModalDelete').click(function () {
    globalAjaxVar = $.ajax({
        type: "POST",
        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
        data: '{"qry":"SELECT COUNT(1) FROM TBL_AUDITINTERNAL_PLAN_IMPL WHERE AUDITINTERNAL_PLAN_ID=<%=Request.QueryString["id"]%> AND YR=<%=Request.QueryString["yr"]%> AND QRTR=<%=Request.QueryString["qrtr"]%> AND EVAL IS NOT NULL"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') {
                    alert('Үнэлгээ орсон тул мэдээлэлтэй ажиллах боломжгүй байна!');
                }
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Биелэлт устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"DELETE FROM TBL_AUDITINTERNAL_PLAN_IMPL WHERE AUDITINTERNAL_PLAN_ID=<%=Request.QueryString["id"]%> AND YR=<%=Request.QueryString["yr"]%> AND QRTR=<%=Request.QueryString["qrtr"]%>"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    $('#auditinternalTab3ImplModalHeaderLabel').html('оруулах');
                                    $('#pTab3ImplModalCharLength').html('0');
                                    CKEDITOR.instances.pTab3ImplModalImpl.setData("");
                                    $('#pTab3Datatable > tbody  > tr').each(function () {
                                        if ($(this).attr('data-id') == $('#pTab3ModalID').text()) {
                                            $('td:eq(6)', this).find('a').html('<i class="glyphicon glyphicon-edit txt-color-red font-xl"></i>');
                                            return false;
                                        }
                                    });
                                    $('#pTab3ImplModal').modal('hide');
                                    smallBox('Биелэлт', 'Амжилттай устлаа...', '#659265', 3000);
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
});

    function pTab3ImplModalPrevImplShow() {
        var valQrtr = "", valYr = "";
        if ($('#pTab3ImplModalCurrentQrtr').html().split('-')[0] == '1') {
            valYr = (parseInt($('#pTab3ImplModalCurrentYr').html()) - 1).toString();
            valQrtr = '4';
        }
        else {
            valYr = $('#pTab3ImplModalCurrentYr').html();
            valQrtr = (parseInt($('#pTab3ImplModalCurrentQrtr').html().split('-')[0]) - 1).toString();
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT IMPL FROM TBL_AUDITINTERNAL_PLAN_IMPL WHERE AUDITINTERNAL_PLAN_ID=' + $('#pTab3ModalID').html() + ' AND YR=' + valYr + ' AND QRTR=' + valQrtr + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $('#pTab3ImplModalPrevImplDiv').html(replaceDatabaseToDisplay(data.d));
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $('#pTab3ImplModalImportPrevImpl').click(function () {
        var valQrtr = "", valYr = "";
        if ($('#pTab3ImplModalCurrentQrtr').html().split('-')[0] == '1') {
            valYr = (parseInt($('#pTab3ImplModalCurrentYr').html()) - 1).toString();
            valQrtr = '4';
        }
        else {
            valYr = $('#pTab3ImplModalCurrentYr').html();
            valQrtr = (parseInt($('#pTab3ImplModalCurrentQrtr').html().split('-')[0]) - 1).toString();
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT IMPL FROM TBL_AUDITINTERNAL_PLAN_IMPL WHERE AUDITINTERNAL_PLAN_ID=' + $('#pTab3ModalID').html() + ' AND YR=' + valYr + ' AND QRTR=' + valQrtr + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                CKEDITOR.instances.pTab3ImplModalImpl.setData(replaceDatabaseToDisplay(data.d));
                //$('#pTab3ImplModalImpl').val(replaceDatabaseToDisplay(data.d));
                $("#pTab3ImplModalCharLength").text(data.d.length);
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    });
</script>
