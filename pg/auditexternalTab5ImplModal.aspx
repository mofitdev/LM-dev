<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="auditexternalTab5ImplModal.aspx.cs" Inherits="LMWebApp.pg.auditexternalTab5ImplModal" %>
<div class="modal-header">
    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
    <h4 class="modal-title" >Зөвлөмжийн биелэлт&nbsp;<span id="auditexternalTab5ImplModalHeaderLabel" runat="server"></span></h4>
</div>
<div class="modal-body">
    <div class="row">
        <div class="col-md-12">
            <div id="pTab5ModalID" runat="server" class="form-group hide"></div> 
            <div class="form-group" style="margin-bottom:2px;">
                Он: <label id="pTab5ImplModalCurrentYr" runat="server"></label> | <label id="pTab5ImplModalCurrentQrtr" runat="server"></label>
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
                        Тэмдэгт: <label id="pTab5ImplModalCharLength" runat="server">0</label>/10000
                    </div>
                    <div style="width:17%; float:right; text-align:right;">
                        <button id="pTab5ImplModalDelete" type="button" class="btn btn-labeled btn-danger" style="font-size: 12px;">
                            <span class="btn-label" style="padding: 3px 7px 3px 5px;">
                                <i class="fa fa-trash-o"></i>
                            </span>Биелэлт устгах
                        </button>
                    </div>                                
                </div> 
                <div style="width:100%; display: block; overflow: hidden; padding-bottom: 5px;">
                    <div style="width:100%; float:right; text-align:left;">
                        <button id="pTab5ImplModalImportPrevImpl" class="col-md-1 btn btn-link btn-sm pull-right" style="padding:0 0 0 0; width:75px;"><span class="glyphicon glyphicon-download-alt"></span> татах</button>
                        <button id="pTab5ImplModalShowPrevImpl" class="col-md-1 btn btn-link btn-sm pull-right" style="padding:0 0 0 0; width:75px;" data-toggle="modal" data-target="#pTab5ImplModalPrevImplModal" onclick="pTab5ImplModalPrevImplShow()"><span class="glyphicon glyphicon-eye-open"></span> харах</button>
                        <label class="col-md-8 control-label pull-right" style="text-align:right; padding-top:4px;">Өмнөх улиралын биелэлт: </label>
                    </div> 
                </div>
                <textarea id="pTab5ImplModalImpl" name="pTab5ImplModalImpl" runat="server" class="form-control" rows="12"></textarea>
            </div>
        </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="form-group" style="margin:10px 0 0 0; display:block; overflow:hidden;">
                <div class="col-md-2" style="font-size:13px;">
                    Хавсралт файл:
                </div>
                <div class="col-md-10" style="font-style:italic;padding-left: 0;">
                    <a id="pTab5ImplModalAttachBtn" runat="server" class="btn btn-link btn-xs" href="javascript:void(0);" style="padding:0px; border:none;">Файл хавсаргаагүй байна...</a>
                </div>
            </div>
            <div class="form-group" style="margin:0; display:block; overflow:hidden;">
                <div class="col-md-2">
                    <a id="pTab5ImplModalAttachDelete" class="btn btn-link btn-xs" href="javascript:void(0);"><i class="fa fa-trash-o"></i> файл устгах</a>
                </div>
                <div class="col-md-10" style="padding-left: 0;">
                    <input id="pTab5ImplModalAttachInput" runat="server" type="file" class="btn btn-default">
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal-footer">
    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
    <button id="pTab5ModalImplBtnSave" class="btn btn-success btn-sm" type="button"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах</button>
</div>
<div id="pTab5ImplModalPrevImplModal" class="modal fade in modalSecond" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                <h4 class="modal-title" >Өмнөх улиралын биелэлт харах</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div id="pTab5ImplModalPrevImplDiv" class="form-group">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $('#pTab5ImplModalImpl').bind('keypress', function (e) {
        $("#pTab5ImplModalCharLength").text(replaceDisplayToDatabase($.trim($('#pTab5ImplModalImpl').val())).length);
    });
    $("#pTab5ImplModalAttachInput").change(function () {
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
            if (valE != 'jpeg' && valE != 'jpg' && valE != 'png' && valE != 'gif' && valE != 'pdf' && valE != 'doc' && valE != 'docx' && valE != 'xls' && valE != 'xlsx' && valE != 'xlsm') {
                errMsg += 'Файлын төрөл зөвшөөрөгдөөгүй төрөл байна. /jpeg, jpg, png, gif, pdf, doc, docx, xls, xlsx, xlsm/\n';
                $(this).val('');
            }
            else fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
        }
        if (errMsg == '') {
            $('#pTab5ImplModalAttachBtn').html($(this).val().split('\\').pop());
        }
        else alert(errMsg);
    });
    $("#pTab5ImplModalAttachDelete").click(function () {
        if ($('#pTab5ImplModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
            $.SmartMessageBox({
                title: "Анхааруулга!",
                content: "Та устгахдаа итгэлтэй байна уу?",
                buttons: '[Үгүй][Тийм]'
            }, function (ButtonPressed) {
                if (ButtonPressed === "Тийм") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/DeleteFile",
                        data: '{"filename":"~/files/auditexternal/' + $('#pTab5ImplModalAttachBtn').html() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            $('#pTab5ImplModalAttachBtn').html('Файл хавсаргаагүй байна...');
                            $('#pTab5Datatable > tbody  > tr').each(function () {
                                if ($(this).attr('data-id') == $('#pTab5ModalID').text()) {
                                    $('td:eq(7)', this).html('');
                                    return false;
                                }
                            });
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



    $("#pTab5ModalImplBtnSave").click(function () {
        var valQryIsEval = '', valQryInsUpt = '', data = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_AUDITEXTERNAL_PLAN_IMPL WHERE AUDITEXTERNAL_PLAN_ID=<%=Request.QueryString["id"]%> AND YR=<%=Request.QueryString["yr"]%> AND QRTR=<%=Request.QueryString["qrtr"]%> AND EVAL IS NOT NULL"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') {
                    alert('Үнэлгээ орсон тул мэдээлэлтэй ажиллах боломжгүй байна!');
                }
                else {
                    //data = replaceDisplayToDatabase(CKEDITOR.instances.pTab5ImplModalImpl.getData()).replace(/\r?\n|\r/g, '').replace(/\r?\t|\r/g, '');
                    data = replaceDisplayToDatabase($('#pTab5ImplModalImpl').val());

                    var filename = 'null', filenameF = '';
                    if ($('#pTab5ImplModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
                        filename = '\'ХөАудитБиелэлт<%=Request.QueryString["id"]%>.' + $('#pTab5ImplModalAttachInput').val().split('.').pop() + '\'';
                        filenameF = 'ХөАудитБиелэлт<%=Request.QueryString["id"]%>.' + $('#pTab5ImplModalAttachInput').val().split('.').pop() + '';
                    }

                    if ($('#auditexternalTab5ImplModalHeaderLabel').html() == 'оруулах') {
                        valQryInsUpt = 'declare vClobVal varchar2(32767) := \'' + data + '\'; begin INSERT INTO TBL_AUDITEXTERNAL_PLAN_IMPL (AUDITEXTERNAL_PLAN_ID, YR, QRTR, IMPL, IMPL_CREATED_STAFFID, IMPL_CREATED_DATE, FILENAME) VALUES (<%=Request.QueryString["id"]%>, <%=Request.QueryString["yr"]%>, <%=Request.QueryString["qrtr"]%>, vClobVal, ' + $.trim($('#indexUserId').html()) + ', sysdate, ' + filename + '); end;';
                    }
                    else if ($('#auditexternalTab5ImplModalHeaderLabel').html() == 'засах') {
                        valQryInsUpt = 'declare vClobVal varchar2(32767) := \'' + data + '\'; begin UPDATE TBL_AUDITEXTERNAL_PLAN_IMPL SET IMPL=vClobVal, IMPL_UPDATED_STAFFID=' + $.trim($('#indexUserId').html()) + ', IMPL_UPDATED_DATE=sysdate, FILENAME=' + filename + ' WHERE AUDITEXTERNAL_PLAN_ID=<%=Request.QueryString["id"]%> AND YR=<%=Request.QueryString["yr"]%> AND QRTR=<%=Request.QueryString["qrtr"]%>; end;';
                    }
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                        data: '{"qry":"' + valQryInsUpt + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            if ($('#pTab5ImplModalAttachInput').val() != '') {
                                var uploadfiles = $("#pTab5ImplModalAttachInput").get(0);
                                var uploadedfiles = uploadfiles.files;
                                var fromdata = new FormData();
                                fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                                var choice = {};
                                choice.url = "pg/UploadFile.ashx?folder=auditexternal&filename=" + filenameF;
                                choice.type = "POST";
                                choice.data = fromdata;
                                choice.contentType = false;
                                choice.processData = false;
                                choice.success = function (result) {
                                    if (result != "1") alert('Файл хуулхад алдаа гарлаа');
                                };
                                choice.error = function (err) { alert('Файл хадгалахад алдаа гарлаа: ' + err.statusText); };
                                $.ajax(choice);
                                //event.preventDefault();
                            }

                            $('#auditexternalTab5ImplModalHeaderLabel').html('засах');
                            $('#pTab5Datatable > tbody  > tr').each(function () {
                                if ($(this).attr('data-id') == $('#pTab5ModalID').text()) {
                                    $('td:eq(6)', this).find('a').html('<i class="glyphicon glyphicon-check txt-color-green font-xl"></i>');
                                    if (filename != 'null') {
                                        $('td:eq(7)', this).html('<a href="../files/auditexternal/' + filenameF + '" class="btn btn-link btn-xs" style="padding:0px; border:none;" download="" title="Хавсаргасан файл татах"><i class="fa fa-paperclip fa-lg"></i></a>');
                                    }
                                    return false;
                                }
                            });
                            $('#pTab5ImplModal').modal('hide');
                            smallBox('Биелэлт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
    $('#pTab5ImplModalDelete').click(function () {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_AUDITEXTERNAL_PLAN_IMPL WHERE AUDITEXTERNAL_PLAN_ID=<%=Request.QueryString["id"]%> AND YR=<%=Request.QueryString["yr"]%> AND QRTR=<%=Request.QueryString["qrtr"]%> AND EVAL IS NOT NULL"}',
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
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                            data: '{"qry":"DELETE FROM TBL_AUDITEXTERNAL_PLAN_IMPL WHERE AUDITEXTERNAL_PLAN_ID=<%=Request.QueryString["id"]%> AND YR=<%=Request.QueryString["yr"]%> AND QRTR=<%=Request.QueryString["qrtr"]%>"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function () {
                                $('#auditexternalTab5ImplModalHeaderLabel').html('оруулах');
                                $('#pTab5ImplModalCharLength').html('0');
                                $('#pTab5ImplModalImpl').val('');
                                //CKEDITOR.instances.pTab5ImplModalImpl.setData("");
                                $('#pTab5Datatable > tbody  > tr').each(function () {
                                    if ($(this).attr('data-id') == $('#pTab5ModalID').text()) {
                                        $('td:eq(6)', this).find('a').html('<i class="glyphicon glyphicon-edit txt-color-red font-xl"></i>');
                                        return false;
                                    }
                                });
                                $('#pTab5ImplModal').modal('hide');
                                smallBox('Биелэлт', 'Амжилттай устлаа...', '#659265', 3000);
                            },
                            failure: function (response) {
                                alert('FAILURE: ' + response.d);
                            },
                            error: function (xhr, status, error) {
                                window.location = '../#pg/error500.aspx';
                            }
                        });
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

    function pTab5ImplModalPrevImplShow() {
        var valQrtr = "", valYr="";
        if ($('#pTab5ImplModalCurrentQrtr').html().split('-')[0] == '1')
        {
            valYr=(parseInt($('#pTab5ImplModalCurrentYr').html())-1).toString();
            valQrtr='4';
        }
        else {
            valYr=$('#pTab5ImplModalCurrentYr').html();
            valQrtr=(parseInt($('#pTab5ImplModalCurrentQrtr').html().split('-')[0])-1).toString();
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT IMPL, FILENAME FROM TBL_AUDITEXTERNAL_PLAN_IMPL WHERE AUDITEXTERNAL_PLAN_ID=' + $('#pTab5ModalID').html() + ' AND YR=' + valYr + ' AND QRTR=' + valQrtr + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $('#pTab5ImplModalPrevImplDiv').html(replaceDatabaseToDisplay(data.d));
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $('#pTab5ImplModalImportPrevImpl').click(function () {
        var valQrtr = "", valYr = "";
        if ($('#pTab5ImplModalCurrentQrtr').html().split('-')[0] == '1') {
            valYr = (parseInt($('#pTab5ImplModalCurrentYr').html()) - 1).toString();
            valQrtr = '4';
        }
        else {
            valYr = $('#pTab5ImplModalCurrentYr').html();
            valQrtr = (parseInt($('#pTab5ImplModalCurrentQrtr').html().split('-')[0]) - 1).toString();
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT IMPL, FILENAME FROM TBL_AUDITEXTERNAL_PLAN_IMPL WHERE AUDITEXTERNAL_PLAN_ID=' + $('#pTab5ModalID').html() + ' AND YR=' + valYr + ' AND QRTR=' + valQrtr + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $('#pTab5ImplModalImpl').val(replaceDatabaseToDisplay(data.d));
                $("#pTab5ImplModalCharLength").text(data.d.length);
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
