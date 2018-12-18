<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="togtoolTab3ImplModal.aspx.cs" Inherits="LMWebApp.pg.togtoolTab3ImplModal" %>
<div class="modal-header">
    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
    <h4 class="modal-title" >Хяналтанд авсан заалтын төлөвөлгөөний биелэлт&nbsp;<span id="pTab3ImplModalHeaderLabel" runat="server"></span></h4>
</div>
<div class="modal-body">
    <div class="row">
        <div class="col-md-12">
            <div id="pTab3ImplModalID" runat="server" class="form-group hide"></div> 
            <div class="form-group" style="margin-bottom:2px;">
                Он: <label id="pTab3ImplModalCurrentYr" runat="server"></label> | <label id="pTab3ImplModalCurrentYrhf" runat="server"></label>
            </div>
            <div class="form-group" style="margin-bottom:2px;">
                <span id="pTab3ModalSpanTogtool"></span>
                <br />
                <b>Хариуцах газар: </b><span id="pTab3ModalSpanHariutssanGazar"></span>
                <br />
                <b>Төлөвлөгөө: </b><span id="pTab3ModalSpanZaalt"></span>
            </div>
            <div class="form-group" style="margin:0px; display:block; overflow:hidden;">
                <div class="col-md-12">   
                    <div style="width:100%; display: block; overflow: hidden; padding-bottom: 5px;">
                        <div style="width:65%; float:left; text-align:justify;" class="font-xs">
                            <div class="alert alert-warning fade in">
				                <i class="fa-fw fa fa-warning"></i>
				                2000 тэмдэгтээс илүү болон хүснэгт, зураг, чартан мэдээллийг хавсралтаар оруулна уу!
			                </div>
                        </div>
                        <div style="width:17%; float:right; text-align:right;">
                            Тэмдэгт: <label id="pTab3ImplModalCharLength" runat="server">0</label>/2000
                        </div>
                        <div style="width:17%; float:right; text-align:right;">
                            <button id="pTab3ImplModalDelete" type="button" class="btn btn-labeled btn-danger" style="font-size: 12px;">
                                <span class="btn-label" style="padding: 3px 7px 3px 5px;">
                                    <i class="fa fa-trash-o"></i>
                                </span>Биелэлт устгах
                            </button>
                        </div>                                
                    </div> 
                    <textarea id="pTab3ImplModalImpl" name="pTab3ImplModalImpl" runat="server" class="form-control" rows="10"></textarea>
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
                    <a id="pTab3ImplModalAttachBtn" runat="server" class="btn btn-link btn-xs" href="javascript:void(0);" style="padding:0px; border:none;">Файл хавсаргаагүй байна...</a>
                </div>
            </div>
            <div class="form-group" style="margin:0; display:block; overflow:hidden;">
                <div class="col-md-2">
                    <a id="pTab3ImplModalAttachDelete" class="btn btn-link btn-xs" href="javascript:void(0);"><i class="fa fa-trash-o"></i> файл устгах</a>
                </div>
                <div class="col-md-10" style="padding-left: 0;">
                    <input id="pTab3ImplModalAttachInput" runat="server" type="file" class="btn btn-default">
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal-footer">
    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
    <button id="pTab3ImplModalImplBtnSave" class="btn btn-success btn-sm" type="button"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах</button>
</div>
<script type="text/javascript">
    $('#pTab3Datatable > tbody  > tr').each(function () {
        if ($(this).attr('data-id') == $('#pTab3ImplModalID').text()) {
            $('#pTab3ModalSpanTogtool').html($(this).find('td:eq(1)').html());
            $('#pTab3ModalSpanHariutssanGazar').html($(this).find('td:eq(3)').html());
            $('#pTab3ModalSpanZaalt').html($(this).find('td:eq(2)').html());
            return false;
        }
    });
    $('#pTab3ImplModalImpl').bind('keypress', function (e) {
        $("#pTab3ImplModalCharLength").text(replaceDisplayToDatabase($.trim($('#pTab3ImplModalImpl').val())).length);
    });
    $("#pTab3ImplModalAttachInput").change(function () {
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
            $('#pTab3ImplModalAttachBtn').html($(this).val().split('\\').pop());
        }
        else alert(errMsg);
    });
    $("#pTab3ImplModalAttachDelete").click(function () {
        if ($('#pTab3ImplModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
            $.SmartMessageBox({
                title: "Анхааруулга!",
                content: "Та устгахдаа итгэлтэй байна уу?",
                buttons: '[Үгүй][Тийм]'
            }, function (ButtonPressed) {
                if (ButtonPressed === "Тийм") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/DeleteFile",
                        data: '{"filename":"~/files/togtool/' + $('#pTab3ImplModalAttachBtn').html() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            $('#pTab3ImplModalAttachBtn').html('Файл хавсаргаагүй байна...');
                            $('#pTab3Datatable > tbody  > tr').each(function () {
                                if ($(this).attr('data-id') == $('#pTab3ImplModalID').text()) {
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
    $("#pTab3ImplModalImplBtnSave").click(function () {
        var valQryIsEval = '', valQryInsUpt = '', data = '';
        if ($.trim($('#pTab3ImplModalImpl').val()) == "") {
            alert("Биелэлт заавал оруулна уу!");
        }
        else {
            if (replaceDisplayToDatabase($.trim($('#pTab3ImplModalImpl').val())).length > 2000) {
                $("#pTab3ImplModalCharLength").text(replaceDisplayToDatabase($.trim($('#pTab3ImplModalImpl').val())).length);
                alert("Биелэлт уртдаа 2000 тэмдэгт авна!");
            }
            else {
                data = replaceDisplayToDatabase($('#pTab3ImplModalImpl').val());

                var filename = 'null', filenameF = '';
                if ($('#pTab3ImplModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
                    filename = '\'ДБШЗаалт<%=Request.QueryString["id"]%>-<%=Request.QueryString["yr"]%>=<%=Request.QueryString["yrhf"]%>.' + $('#pTab3ImplModalAttachInput').val().split('.').pop() + '\'';
                    filenameF = 'ДБШЗаалт<%=Request.QueryString["id"]%>-<%=Request.QueryString["yr"]%>=<%=Request.QueryString["yrhf"]%>.' + $('#pTab3ImplModalAttachInput').val().split('.').pop() + '';
                }

                if ($('#pTab3ImplModalHeaderLabel').html() == 'оруулах') {
                    valQryInsUpt = 'declare vClobVal varchar2(32767) := \'' + data + '\'; begin INSERT INTO TBL_ZAALT_IMPL (ID, ZAALT_ID, YR, YR_HF, FILENAME, IMPL, CREATED_STAFFID, CREATED_DATE) VALUES (TBLLASTID(\'TBL_ZAALT_IMPL\'), <%=Request.QueryString["id"]%>, <%=Request.QueryString["yr"]%>, <%=Request.QueryString["yrhf"]%>, ' + filename + ', vClobVal, ' + $.trim($('#indexUserId').html()) + ', SYSDATE); end;';
                }
                else if ($('#pTab3ImplModalHeaderLabel').html() == 'засах') {
                    valQryInsUpt = 'declare vClobVal varchar2(32767) := \'' + data + '\'; begin UPDATE TBL_ZAALT_IMPL SET IMPL=vClobVal, FILENAME=' + filename + ', MODIFY_STAFFID=' + $.trim($('#indexUserId').html()) + ', MODIFY_DATE=SYSDATE WHERE ZAALT_ID=<%=Request.QueryString["id"]%> AND YR=<%=Request.QueryString["yr"]%> AND YR_HF=<%=Request.QueryString["yrhf"]%>; end;';
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"' + valQryInsUpt + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        if ($('#pTab3ImplModalAttachInput').val() != '') {
                            var uploadfiles = $("#pTab3ImplModalAttachInput").get(0);
                            var uploadedfiles = uploadfiles.files;
                            var fromdata = new FormData();
                            fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                            var choice = {};
                            choice.url = "pg/UploadFile.ashx?folder=togtool&filename=" + filenameF;
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
                        $('#pTab3Datatable > tbody  > tr').each(function () {
                            if ($(this).attr('data-id') == $('#pTab3ImplModalID').text()) {
                                $('td:eq(4)', this).find('a').html('<i class="glyphicon glyphicon-check txt-color-green font-xl"></i>');
                                if (filename != 'null') {
                                    $('td:eq(5)', this).html('<a href="../files/togtool/' + filenameF + '" class="btn btn-link btn-xs" style="padding:0px; border:none;" download="" title="Хавсаргасан файл татах"><i class="fa fa-paperclip fa-lg"></i></a>');
                                }
                                return false;
                            }
                        });
                        $('#pTab3Modal').modal('hide');
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
        }
    });
    $('#pTab3ImplModalDelete').click(function () {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Та устгахдаа итгэлтэй байна уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"DELETE FROM TBL_ZAALT_IMPL WHERE ZAALT_ID=<%=Request.QueryString["id"]%> AND YR=<%=Request.QueryString["yr"]%> AND YR_HF=<%=Request.QueryString["yrhf"]%>"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        $('#pTab3ImplModalHeaderLabel').html('оруулах');
                        $('#pTab3ImplModalCharLength').html('0');
                        $('#pTab3ImplModalImpl').val('');
                        $('#pTab3Datatable > tbody  > tr').each(function () {
                            if ($(this).attr('data-id') == $('#pTab3ImplModalID').text()) {
                                $('td:eq(4)', this).find('a').html('<i class="glyphicon glyphicon-edit txt-color-red font-xl"></i>');
                                $('td:eq(5)', this).html('');
                                return false;
                            }
                        });
                        $('#pTab3Modal').modal('hide');
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
</script>
