<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="policyTab4ImplModal.aspx.cs" Inherits="LMWebApp.pg.policyTab4ImplModal" %>
<div class="modal-header">
    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
    <h4 class="modal-title" >Төлөвлөгөөний биелэлт&nbsp;<span id="policyTab4ImplModalHeaderLabel" runat="server"></span></h4>
</div>
<div class="modal-body">
    <div class="row">
        <div class="col-md-12">
            <div id="policyTab4ImplModalID" runat="server" class="form-group hide"></div> 
            <div class="form-group" style="margin-bottom:2px;">
                Он: <label id="policyTab4ImplModalCurrentYr" runat="server"></label> | <label id="policyTab4ImplModalCurrentYrhf" runat="server"></label>
            </div>
            <div class="form-group" style="margin:0px; display:block; overflow:hidden;">
                <div class="col-md-12">   
                    <div style="width:100%; display: block; overflow: hidden; padding-bottom: 5px;">
                        <div style="width:65%; float:left; text-align:justify;" class="font-xs">
                            <div class="alert alert-warning fade in">
				                <i class="fa-fw fa fa-warning"></i>
				                1000 тэмдэгтээс илүү болон хүснэгт, зураг, чартан мэдээллийг хавсралтаар оруулна уу!
			                </div>
                        </div>
                        <div style="width:17%; float:right; text-align:right;">
                            Тэмдэгт: <label id="policyTab4ImplModalCharLength" runat="server">0</label>/2000
                        </div>
                        <div style="width:17%; float:right; text-align:right;">
                            <button id="policyTab4ImplModalDelete" type="button" class="btn btn-labeled btn-danger" style="font-size: 12px;">
                                <span class="btn-label" style="padding: 3px 7px 3px 5px;">
                                    <i class="fa fa-trash-o"></i>
                                </span>Биелэлт устгах
                            </button>
                        </div>                                
                    </div>
                    <div id="policyTab4ImplModalDivPlanyrImplImport" runat="server" style="width:100%; display: block; overflow: hidden; padding-bottom: 5px;">
                        <div style="width:50%; float:right; text-align:right;">
                            <button id="policyTab4ImplModalBtnPlanyrImplImport" type="button" class="btn btn-labeled btn-default" style="font-size: 12px;">
                                <span class="btn-label" style="padding: 3px 7px 3px 5px;">
                                    <i class="fa fa-download"></i>
                                </span>Жилийн төлөвлөгөөний биелэлтээс татах
                            </button>
                        </div>
                    </div>
                    <textarea id="policyTab4ImplModalImpl" name="policyTab4ImplModalImpl" runat="server" class="form-control" rows="10"></textarea>
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
                    <a id="policyTab4ImplModalAttachBtn" runat="server" class="btn btn-link btn-xs" href="javascript:void(0);" style="padding:0px; border:none;">Файл хавсаргаагүй байна...</a>
                </div>
            </div>
            <div class="form-group" style="margin:0; display:block; overflow:hidden;">
                <div class="col-md-2">
                    <a id="policyTab4ImplModalAttachDelete" class="btn btn-link btn-xs" href="javascript:void(0);"><i class="fa fa-trash-o"></i> файл устгах</a>
                </div>
                <div class="col-md-10" style="padding-left: 0;">
                    <input id="policyTab4ImplModalAttachInput" runat="server" type="file" class="btn btn-default">
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal-footer">
    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
    <button id="policyTab4ImplModalImplBtnSave" class="btn btn-success btn-sm" type="button"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах</button>
</div>
<script type="text/javascript">
    $('#policyTab4ImplModalImpl').bind('keypress', function (e) {
        $("#policyTab4ImplModalCharLength").text(replaceDisplayToDatabase($.trim($('#policyTab4ImplModalImpl').val())).length);
    });

    $("#policyTab4ImplModalAttachInput").change(function () {
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
            $('#policyTab4ImplModalAttachBtn').html($(this).val().split('\\').pop());
        }
        else alert(errMsg);
    });
    $("#policyTab4ImplModalAttachDelete").click(function () {
        if ($('#policyTab4ImplModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
            $.SmartMessageBox({
                title: "Анхааруулга!",
                content: "Та устгахдаа итгэлтэй байна уу?",
                buttons: '[Үгүй][Тийм]'
            }, function (ButtonPressed) {
                if (ButtonPressed === "Тийм") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/DeleteFile",
                        data: '{"filename":"~/files/policy/' + $('#policyTab4ImplModalAttachBtn').html() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            $('#policyTab4ImplModalAttachBtn').html('Файл хавсаргаагүй байна...');
                            $('#pTab4Datatable > tbody  > tr').each(function () {
                                if ($(this).attr('data-id') == $('#policyTab4ImplModalID').text()) {
                                    $('td:eq(5)', this).html('');
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

    $("#policyTab4ImplModalImplBtnSave").click(function () {
        var valQryIsEval = '', valQryInsUpt = '', data = '';

        if ($.trim($('#policyTab4ImplModalImpl').val()) == "") {
            alert("Биелэлт заавал оруулна уу!");
        }
        else {
            if (replaceDisplayToDatabase($.trim($('#policyTab4ImplModalImpl').val())).length > 3000) {
                $("#policyTab4ImplModalCharLength").text(replaceDisplayToDatabase($.trim($('#policyTab4ImplModalImpl').val())).length);
                alert("Биелэлт уртдаа 3000 тэмдэгт авна!");
            }
            else {
                data = replaceDisplayToDatabase($('#policyTab4ImplModalImpl').val());

                var filename = 'null', filenameF = '';
                if ($('#policyTab4ImplModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
                    filename = '\'БодлогоБиелэлт<%=Request.QueryString["id"]%>.' + $('#policyTab4ImplModalAttachInput').val().split('.').pop() + '\'';
                    filenameF = 'БодлогоБиелэлт<%=Request.QueryString["id"]%>.' + $('#policyTab4ImplModalAttachInput').val().split('.').pop() + '';
                }

                if ($('#policyTab4ImplModalHeaderLabel').html() == 'оруулах') {
                    valQryInsUpt = 'declare vClobVal varchar2(32767) := \'' + data + '\'; begin INSERT INTO TBL_POLICYPLAN_IMPL (ID, POLICYPLAN_ID, YR, YRHF, FILENAME, IMPL, IMPL_CREATED_STAFFID, IMPL_CREATED_DATE) VALUES (TBLLASTID(\'TBL_POLICYPLAN_IMPL\'), <%=Request.QueryString["id"]%>, <%=Request.QueryString["yr"]%>, <%=Request.QueryString["yrhf"]%>, ' + filename + ', vClobVal, ' + $.trim($('#indexUserId').html()) + ', sysdate); end;';
                }
                else if ($('#policyTab4ImplModalHeaderLabel').html() == 'засах') {
                    valQryInsUpt = 'declare vClobVal varchar2(32767) := \'' + data + '\'; begin UPDATE TBL_POLICYPLAN_IMPL SET IMPL=vClobVal, FILENAME=' + filename + ', IMPL_UPDATED_STAFFID=' + $.trim($('#indexUserId').html()) + ', IMPL_UPDATED_DATE=sysdate WHERE POLICYPLAN_ID=<%=Request.QueryString["id"]%> AND YR=<%=Request.QueryString["yr"]%> AND YRHF=<%=Request.QueryString["yrhf"]%>; end;';
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"' + valQryInsUpt + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        if ($('#policyTab4ImplModalAttachInput').val() != '') {
                            var uploadfiles = $("#policyTab4ImplModalAttachInput").get(0);
                            var uploadedfiles = uploadfiles.files;
                            var fromdata = new FormData();
                            fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                            var choice = {};
                            choice.url = "pg/UploadFile.ashx?folder=policy&filename=" + filenameF;
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
                        $('#pTab4Datatable > tbody  > tr').each(function () {
                            if ($(this).attr('data-id') == $('#policyTab4ImplModalID').text()) {
                                $('td:eq(4)', this).find('i').attr("class", "glyphicon glyphicon-check txt-color-green font-xl");
                                if (filename != 'null') {
                                    $('td:eq(5)', this).html('<a href="../files/policy/' + filenameF + '" class="btn btn-link btn-xs" style="padding:0px; border:none;" download="" title="Хавсаргасан файл татах"><i class="fa fa-paperclip fa-lg"></i></a>');
                                }
                                return false;
                            }
                        });
                        $('#pTab4Modal').modal('hide');
                        smallBox('Сарын төлөвлөгөөний биелэлт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
    $('#policyTab4ImplModalDelete').click(function () {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Та устгахдаа итгэлтэй байна уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"DELETE FROM TBL_POLICYPLAN_IMPL WHERE POLICYPLAN_ID=<%=Request.QueryString["id"]%> AND YR=<%=Request.QueryString["yr"]%> AND YRHF=<%=Request.QueryString["yrhf"]%>"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        $('#policyTab4ImplModalHeaderLabel').html('оруулах');
                        $('#policyTab4ImplModalCharLength').html('0');
                        $('#policyTab4ImplModalImpl').val('');
                        //CKEDITOR.instances.policyTab4ImplModalImpl.setData("");
                        $('#pTab4Datatable > tbody  > tr').each(function () {
                            if ($(this).attr('data-id') == $('#policyTab4ImplModalID').text()) {
                                $('td:eq(4)', this).find('i').attr("class", "glyphicon glyphicon-edit txt-color-red font-xl");
                                return false;
                            }
                        });
                        $('#pTab4Modal').modal('hide');
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
    });

    $("#policyTab4ImplModalBtnPlanyrImplImport").click(function () {
        var valQrtr = '';
        if ('<%=Request.QueryString["yrhf"]%>' == '1') valQrtr = '2';
        else if ('<%=Request.QueryString["yrhf"]%>' == '2') valQrtr = '4';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT IMPL_DATA FROM TBL_PLAN_IMPL WHERE TP=\'quarter\' AND YR=<%=Request.QueryString["yr"]%> AND QRTR=' + valQrtr + ' AND PLAN_ID=(SELECT PLANYR_ID FROM TBL_PLANYR_WORK WHERE WORK_ID=<%=Request.QueryString["id"]%>)"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $('#policyTab4ImplModalImpl').val(replaceDatabaseToDisplay(data.d));
                $("#policyTab4ImplModalCharLength").text(data.d.length);
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
