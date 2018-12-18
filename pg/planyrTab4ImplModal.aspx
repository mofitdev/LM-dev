<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="planyrTab4ImplModal.aspx.cs" Inherits="LMWebApp.pg.planyrTab4ImplModal" %>
<div class="modal-header">
    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
    <h4 class="modal-title" >Жилийн төлөвлөгөөний биелэлт&nbsp;<span id="planyrTab4ImplModalHeaderLabel" runat="server"></span></h4>
</div>
<div class="modal-body">
    <div class="row">
        <div class="col-md-12">
            <div id="planyrTab4ImplModalID" runat="server" class="form-group hide"></div> 
            <div class="form-group" style="margin-bottom:2px;">
                Он: <label id="planyrTab4ImplModalCurrentYr" runat="server"></label> | <label id="planyrTab4ImplModalCurrentQrtr" runat="server"></label>
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
                        <div style="width:17%; float:right; text-align:right;">
                            Тэмдэгт: <label id="planyrTab4ImplModalCharLength" runat="server">0</label>/10000
                        </div>
                        <div style="width:17%; float:right; text-align:right;">
                            <button id="planyrTab4ImplModalDelete" type="button" class="btn btn-labeled btn-danger" style="font-size: 12px;">
                                <span class="btn-label" style="padding: 3px 7px 3px 5px;">
                                    <i class="fa fa-trash-o"></i>
                                </span>Биелэлт устгах
                            </button>
                        </div>                               
                    </div> 
                    <div style="width:100%; display: block; overflow: hidden; padding-bottom: 5px;">
                        <div style="width:100%; float:right; text-align:left;">
                            <button id="planyrTab4ImplModalImportPlanmImpl" class="col-md-1 btn btn-link btn-sm pull-right" style="padding:0 0 0 0; width:75px;"><span class="glyphicon glyphicon-download-alt"></span> татах</button>
                            <button id="planyrTab4ImplModalShowPlanmImpl" class="col-md-1 btn btn-link btn-sm pull-right" style="padding:0 0 0 0; width:75px;" data-toggle="modal" data-target="#planyrTab4ImplModalPlanmImplModal" onclick="planyrTab4ImplModalPlanmImplShow()"><span class="glyphicon glyphicon-eye-open"></span> харах</button>
                            <label class="col-md-8 control-label pull-right" style="text-align:right; padding-top:4px;">Сарын биелэлт: </label>
                        </div> 
                    </div>
                    <textarea id="planyrTab4ImplModalImpl" name="planyrTab4ImplModalImpl" runat="server" class="form-control" rows="10"></textarea>
                    <%--<script>
                        CKEDITOR.replace('planyrTab4ImplModalImpl', {
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
                        var editor = CKEDITOR.instances.planyrTab4ImplModalImpl;
                        editor.on('key', function (evt) {
                            $("#planyrTab4ImplModalCharLength").text(replaceDisplayToDatabase($.trim(evt.editor.getData())).length);
                        }, editor.element.$);
                    </script>--%>
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
                    <a id="planyrTab4ImplModalAttachBtn" runat="server" class="btn btn-link btn-xs" href="javascript:void(0);" style="padding:0px; border:none;">Файл хавсаргаагүй байна...</a>
                </div>
            </div>
            <div class="form-group" style="margin:0; display:block; overflow:hidden;">
                <div class="col-md-2">
                    <a id="planyrTab4ImplModalAttachDelete" class="btn btn-link btn-xs" href="javascript:void(0);"><i class="fa fa-trash-o"></i> файл устгах</a>
                </div>
                <div class="col-md-10" style="padding-left: 0;">
                    <input id="planyrTab4ImplModalAttachInput" runat="server" type="file" class="btn btn-default">
                </div>
            </div>
        </div>
    </div>
</div>
<div id="planyrTab4ImplModalPlanmImplModal" class="modal fade in modalSecond" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                <h4 class="modal-title" >Жилийн төлөвлөгөөний тайлан харах</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div id="planyrTab4ImplModalPlanmImplDiv" class="form-group">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal-footer">
    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
    <button id="planyrTab4ImplModalImplBtnSave" class="btn btn-success btn-sm" type="button"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах</button>
</div>
<script type="text/javascript">
    $('#planyrTab4ImplModalImpl').bind('keypress', function (e) {
        $("#planyrTab4ImplModalCharLength").text(replaceDisplayToDatabase($.trim($('#planyrTab4ImplModalImpl').val())).length);
    });
    $("#planyrTab4ImplModalAttachInput").change(function () {
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
            $('#planyrTab4ImplModalAttachBtn').html($(this).val().split('\\').pop());
        }
        else alert(errMsg);
    });
    $("#planyrTab4ImplModalAttachDelete").click(function () {
        if ($('#planyrTab4ImplModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
            $.SmartMessageBox({
                title: "Анхааруулга!",
                content: "Та устгахдаа итгэлтэй байна уу?",
                buttons: '[Үгүй][Тийм]'
            }, function (ButtonPressed) {
                if (ButtonPressed === "Тийм") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/DeleteFile",
                        data: '{"filename":"~/files/plan/' + $('#planyrTab4ImplModalAttachBtn').html() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            $('#planyrTab4ImplModalAttachBtn').html('Файл хавсаргаагүй байна...');
                            $('#pTab4Datatable > tbody  > tr').each(function () {
                                if ($(this).attr('data-id') == $('#planyrTab4ImplModalID').text()) {
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

    $("#planyrTab4ImplModalImplBtnSave").click(function () {
        var valQryIsEval = '', valQryInsUpt = '', data = '';
        if ($.trim($('#planyrTab4ImplModalImpl').val()) == "") {
            alert("Биелэлт заавал оруулна уу!");
        }
        else {
            if (replaceDisplayToDatabase($.trim($('#planyrTab4ImplModalImpl').val())).length > 10000) {
                $("#planyrTab4ImplModalCharLength").text(replaceDisplayToDatabase($.trim($('#planyrTab4ImplModalImpl').val())).length);
                alert("Биелэлт уртдаа 10000 тэмдэгт авна!");
            }
            else {
                data = replaceDisplayToDatabase($.trim($('#planyrTab4ImplModalImpl').val().replace(/\r\n|\r|\n/g, ' ')));

                var filename = 'null', filenameF = '';
                if ($('#planyrTab4ImplModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
                    filename = '\'ЖилийнБиелэлт<%=Request.QueryString["id"]%>.' + $('#planyrTab4ImplModalAttachInput').val().split('.').pop() + '\'';
                    filenameF = 'ЖилийнБиелэлт<%=Request.QueryString["id"]%>.' + $('#planyrTab4ImplModalAttachInput').val().split('.').pop() + '';
                }

                if ($('#planyrTab4ImplModalHeaderLabel').html() == 'оруулах') {
                    valQryInsUpt = 'declare vClobVal varchar2(32767) := \'' + data + '\'; begin INSERT INTO TBL_PLAN_IMPL (ID, PLAN_ID, YR, YR_HF, QRTR, TP, IMPL_DATA, MODIFY_STAFFID, MODIFY_DATE) VALUES (TBLLASTID(\'TBL_PLAN_IMPL\'), <%=Request.QueryString["id"]%>, <%=Request.QueryString["yr"]%>, <% if (Int32.Parse(Request.QueryString["qrtr"]) < 3) Response.Write("1");
                                                                                                                                                                                                                                                                                            else Response.Write("2");%>, <%=Request.QueryString["qrtr"]%>, \'quarter\',  vClobVal, ' + $.trim($('#indexUserId').html()) + ', TO_CHAR(sysdate,\'YYYY-MM-DD\')); end;';
                }
                else if ($('#planyrTab4ImplModalHeaderLabel').html() == 'засах') {
                    valQryInsUpt = 'declare vClobVal varchar2(32767) := \'' + data + '\'; begin UPDATE TBL_PLAN_IMPL SET IMPL_DATA=vClobVal, MODIFY_STAFFID=' + $.trim($('#indexUserId').html()) + ', MODIFY_DATE=TO_CHAR(sysdate,\'YYYY-MM-DD\') WHERE PLAN_ID=<%=Request.QueryString["id"]%> AND YR=<%=Request.QueryString["yr"]%> AND QRTR=<%=Request.QueryString["qrtr"]%> AND TP=\'quarter\'; end;';
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"' + valQryInsUpt + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        if ($('#planyrTab4ImplModalAttachInput').val() != '') {
                            var uploadfiles = $("#planyrTab4ImplModalAttachInput").get(0);
                            var uploadedfiles = uploadfiles.files;
                            var fromdata = new FormData();
                            fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                            var choice = {};
                            choice.url = "pg/UploadFile.ashx?folder=plan&filename=" + filenameF;
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
                            if ($(this).attr('data-id') == $('#planyrTab4ImplModalID').text()) {
                                $('td:eq(4)', this).find('i').attr("class", "glyphicon glyphicon-check txt-color-green font-xl");
                                if (filename != 'null') {
                                    $('td:eq(5)', this).html('<a href="../files/plan/' + filenameF + '" class="btn btn-link btn-xs" style="padding:0px; border:none;" download="" title="Хавсаргасан файл татах"><i class="fa fa-paperclip fa-lg"></i></a>');
                                }
                                return false;
                            }
                        });
                        $('#pTab4Modal').modal('hide');
                        smallBox('Жилийн төлөвлөгөөний биелэлт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
    $('#planyrTab4ImplModalDelete').click(function () {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Та устгахдаа итгэлтэй байна уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"DELETE FROM TBL_PLAN_IMPL WHERE PLAN_ID=<%=Request.QueryString["id"]%> AND YR=<%=Request.QueryString["yr"]%> AND QRTR=<%=Request.QueryString["qrtr"]%> AND TP=\'quarter\'"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        $('#planyrTab4ImplModalHeaderLabel').html('оруулах');
                        $('#planyrTab4ImplModalCharLength').html('0');
                        CKEDITOR.instances.planyrTab4ImplModalImpl.setData("");
                        $('#pTab4Datatable > tbody  > tr').each(function () {
                            if ($(this).attr('data-id') == $('#planyrTab4ImplModalID').text()) {
                                $('td:eq(4)', this).find('i').attr("class", "glyphicon glyphicon-edit txt-color-red font-xl");
                                return false;
                            }
                        });
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
    function planyrTab4ImplModalPlanmImplShow() {
        var qrymonth = "";
        if ($('#pTab4SelectQuarter option:selected').val() == "1") {
            qrymonth = " AND a.MNTH IN (1,2,3)";
        }
        else if ($('#pTab4SelectQuarter option:selected').val() == "2") {
            qrymonth = " AND a.MNTH IN (4,5,6)";
        }
        else if ($('#pTab4SelectQuarter option:selected').val() == "3") {
            qrymonth = " AND a.MNTH IN (7,8,9)";
        }
        else if ($('#pTab4SelectQuarter option:selected').val() == "4") {
            qrymonth = " AND a.MNTH IN (10,11,12)";
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT NVL(RTRIM(xmlagg (xmlelement (e, \'lt;bgt;\'||a.MNTH||\'-р сарын тайлан:lt;/bgt;\'||a.IMPL_DATA || \'lt;br/gt;\') ORDER BY a.MNTH ).extract(\'//text()\'), \'lt;br/gt;\'),\'none\') as IMPL FROM TBL_PLAN_IMPL a INNER JOIN TBL_PLANMNTH b ON a.PLAN_ID=b.ID WHERE a.TP=\'month\' AND b.PLANYR_ID=' + $('#planyrTab4ImplModalID').text() + qrymonth + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $('#planyrTab4ImplModalPlanmImplDiv').html(replaceDatabaseToDisplay(data.d));
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $('#planyrTab4ImplModalImportPlanmImpl').click(function () {
        var qrymonth = "";
        if ($('#pTab4SelectQuarter option:selected').val() == "1") {
            qrymonth = " AND a.MNTH IN (1,2,3)";
        }
        else if ($('#pTab4SelectQuarter option:selected').val() == "2") {
            qrymonth = " AND a.MNTH IN (4,5,6)";
        }
        else if ($('#pTab4SelectQuarter option:selected').val() == "3") {
            qrymonth = " AND a.MNTH IN (7,8,9)";
        }
        else if ($('#pTab4SelectQuarter option:selected').val() == "4") {
            qrymonth = " AND a.MNTH IN (10,11,12)";
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT NVL(RTRIM(xmlagg (xmlelement (e, \'lt;bgt;\'||a.MNTH||\'-р сарын тайлан:lt;/bgt;\'|| a.IMPL_DATA || \'lt;br/gt;\') ORDER BY a.MNTH ).extract(\'//text()\'), \'lt;br/gt;\'),\'none\') as IMPL FROM TBL_PLAN_IMPL a INNER JOIN TBL_PLANMNTH b ON a.PLAN_ID=b.ID WHERE a.TP=\'month\' AND b.PLANYR_ID=' + $('#planyrTab4ImplModalID').text() + qrymonth + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                CKEDITOR.instances.planyrTab4ImplModalImpl.setData(replaceDatabaseToDisplay(data.d));
                $("#planyrTab4ImplModalCharLength").text(data.d.length);
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
