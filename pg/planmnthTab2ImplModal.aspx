<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="planmnthTab2ImplModal.aspx.cs" Inherits="LMWebApp.pg.planmnthTab2ImplModal" %>
<div class="modal-header">
    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
    <h4 class="modal-title" >Сарын төлөвлөгөөний биелэлт&nbsp;<span id="planmnthTab2ImplModalHeaderLabel" runat="server"></span></h4>
</div>
<div class="modal-body">
    <div class="row">
        <div class="col-md-12">
            <div id="planmnthTab2ImplModalID" runat="server" class="form-group hide"></div> 
            <div class="form-group" style="margin-bottom:2px;">
                Он: <label id="planmnthTab2ImplModalCurrentYr" runat="server"></label> | <label id="planmnthTab2ImplModalCurrentMnth" runat="server"></label>
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
                            Тэмдэгт: <label id="planmnthTab2ImplModalCharLength" runat="server">0</label>/2000
                        </div>
                        <div style="width:17%; float:right; text-align:right;">
                            <button id="planmnthTab2ImplModalDelete" type="button" class="btn btn-labeled btn-danger" style="font-size: 12px;">
                                <span class="btn-label" style="padding: 3px 7px 3px 5px;">
                                    <i class="fa fa-trash-o"></i>
                                </span>Биелэлт устгах
                            </button>
                        </div>                                
                    </div>
                    <div style="width:100%; display: block; overflow: hidden; padding-bottom: 5px;">
                        <div style="width:100%; float:right; text-align:left;">
                            <button id="planmnthTab2ImplModalImportWeekImpl" class="col-md-1 btn btn-link btn-sm pull-right" style="padding:0 0 0 0; width:75px;"><span class="glyphicon glyphicon-download-alt"></span> татах</button>
                            <button id="planmnthTab2ImplModalShowWeekImpl" class="col-md-1 btn btn-link btn-sm pull-right" style="padding:0 0 0 0; width:75px;" data-toggle="modal" data-target="#planmnthTab2ImplModalWeekImplModal" onclick="planmnthTab2ImplModalWeekImplShow()"><span class="glyphicon glyphicon-eye-open"></span> харах</button>
                            <label class="col-md-8 control-label pull-right" style="text-align:right; padding-top:4px;">Долоо хоногийн биелэлт: </label>
                        </div> 
                    </div>
                    <textarea id="planmnthTab2ImplModalImpl" name="planmnthTab2ImplModalImpl" runat="server" class="form-control" rows="10"></textarea>
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
                    <a id="planmnthTab2ImplModalAttachBtn" runat="server" class="btn btn-link btn-xs" href="javascript:void(0);" style="padding:0px; border:none;">Файл хавсаргаагүй байна...</a>
                </div>
            </div>
            <div class="form-group" style="margin:0; display:block; overflow:hidden;">
                <div class="col-md-2">
                    <a id="planmnthTab2ImplModalAttachDelete" class="btn btn-link btn-xs" href="javascript:void(0);"><i class="fa fa-trash-o"></i> файл устгах</a>
                </div>
                <div class="col-md-10" style="padding-left: 0;">
                    <input id="planmnthTab2ImplModalAttachInput" runat="server" type="file" class="btn btn-default">
                </div>
            </div>
        </div>
    </div>
</div>
<div id="planmnthTab2ImplModalWeekImplModal" class="modal fade in modalSecond" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                <h4 class="modal-title" >Долоо хоногийн тайлан харах</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div id="planmnthTab2ImplModalWeekImplDiv" class="form-group">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal-footer">
    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
    <button id="planmnthTab2ImplModalImplBtnSave" class="btn btn-success btn-sm" type="button"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах</button>
</div>
<script type="text/javascript">
    $('#planmnthTab2ImplModalImplBtnSave').prop('disabled',false);
    $('#planmnthTab2ImplModalImpl').bind('keypress', function (e) {
        $("#planmnthTab2ImplModalCharLength").text(replaceDisplayToDatabase($.trim($('#planmnthTab2ImplModalImpl').val())).length);
    });
    $("#planmnthTab2ImplModalAttachInput").change(function () {
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
            $('#planmnthTab2ImplModalAttachBtn').html($(this).val().split('\\').pop());
        }
        else alert(errMsg);
    });
    $("#planmnthTab2ImplModalAttachDelete").click(function () {
        if ($('#planmnthTab2ImplModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
            $.SmartMessageBox({
                title: "Анхааруулга!",
                content: "Та устгахдаа итгэлтэй байна уу?",
                buttons: '[Үгүй][Тийм]'
            }, function (ButtonPressed) {
                if (ButtonPressed === "Тийм") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/DeleteFile",
                        data: '{"filename":"~/files/plan/' + $('#planmnthTab2ImplModalAttachBtn').html() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            $('#planmnthTab2ImplModalAttachBtn').html('Файл хавсаргаагүй байна...');
                            $('#pTab2Datatable > tbody  > tr').each(function () {
                                if ($(this).attr('data-id') == $('#planmnthTab2ImplModalID').text()) {
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

    $("#planmnthTab2ImplModalImplBtnSave").click(function () {
        var valQryIsEval = '', valQryInsUpt = '', data = '';
        if ($.trim($('#planmnthTab2ImplModalImpl').val()) == "") {
            alert("Биелэлт заавал оруулна уу!");
        }
        else {
            if (replaceDisplayToDatabase($.trim($('#planmnthTab2ImplModalImpl').val())).length > 2000) {
                $("#planmnthTab2ImplModalCharLength").text(replaceDisplayToDatabase($.trim($('#planmnthTab2ImplModalImpl').val())).length);
                alert("Биелэлт уртдаа 2000 тэмдэгт авна!");
            }
            else {
                data = replaceDisplayToDatabase($.trim($('#planmnthTab2ImplModalImpl').val()));
                var filename = 'null', filenameF = '';
                if ($('#planmnthTab2ImplModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
                    if ($('#planmnthTab2ImplModalAttachInput').val() != '') {
                        filename = '\'СарынБиелэлт<%=Request.QueryString["id"]%>.' + $('#planmnthTab2ImplModalAttachInput').val().split('.').pop() + '\'';
                        filenameF = 'СарынБиелэлт<%=Request.QueryString["id"]%>.' + $('#planmnthTab2ImplModalAttachInput').val().split('.').pop() + '';
                    }
                    else {
                        filename = '\'' + $('#planmnthTab2ImplModalAttachBtn').html() + '\'';
                        filenameF = $('#planmnthTab2ImplModalAttachBtn').html();
                    }
                }

                if ($('#planmnthTab2ImplModalHeaderLabel').html() == 'оруулах') {
                    valQryInsUpt = 'declare vClobVal varchar2(32767) := \'' + data + '\'; begin INSERT INTO TBL_PLAN_IMPL (ID, PLAN_ID, YR, YR_HF, QRTR, MNTH, TP, FILE_NAME, IMPL_DATA, MODIFY_STAFFID, MODIFY_DATE) VALUES (TBLLASTID(\'TBL_PLAN_IMPL\'), <%=Request.QueryString["id"]%>, <%=Request.QueryString["yr"]%>, <% if (Int32.Parse(Request.QueryString["mnth"]) < 7) Response.Write("1");
                                                                                                                                                                                                                                                                                                                                else Response.Write("2");%>, <% if (Int32.Parse(Request.QueryString["mnth"]) < 4) Response.Write("1");
                                                                                                                                                                                                                                                                                                                                                                else if (Int32.Parse(Request.QueryString["mnth"]) > 3 && Int32.Parse(Request.QueryString["mnth"]) < 7) Response.Write("2");
                                                                                                                                                                                                                                                                                                                                                                else if (Int32.Parse(Request.QueryString["mnth"]) > 6 && Int32.Parse(Request.QueryString["mnth"]) < 10) Response.Write("3");
                                                                                                                                                                                                                                                                                                                                                                else if (Int32.Parse(Request.QueryString["mnth"]) > 9) Response.Write("4");%>, <%=Request.QueryString["mnth"]%>, \'month\', ' + filename + ', vClobVal, ' + $.trim($('#indexUserId').html()) + ', TO_CHAR(sysdate,\'YYYY-MM-DD\')); end;';
                }
                else if ($('#planmnthTab2ImplModalHeaderLabel').html() == 'засах') {
                    valQryInsUpt = 'declare vClobVal varchar2(32767) := \'' + data + '\'; begin UPDATE TBL_PLAN_IMPL SET IMPL_DATA=vClobVal, FILE_NAME=' + filename + ', MODIFY_STAFFID=' + $.trim($('#indexUserId').html()) + ', MODIFY_DATE=TO_CHAR(sysdate,\'YYYY-MM-DD\') WHERE PLAN_ID=<%=Request.QueryString["id"]%> AND YR=<%=Request.QueryString["yr"]%> AND MNTH=<%=Request.QueryString["mnth"]%> AND TP=\'month\'; end;';
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"' + valQryInsUpt + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        if ($('#planmnthTab2ImplModalAttachInput').val() != '') {
                            var uploadfiles = $("#planmnthTab2ImplModalAttachInput").get(0);
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
                        $('#pTab2Datatable > tbody  > tr').each(function () {
                            if ($(this).attr('data-id') == $('#planmnthTab2ImplModalID').text()) {
                                $('td:eq(4)', this).find('i').attr("class", "glyphicon glyphicon-check txt-color-green font-xl");
                                if (filename != 'null') {
                                    $('td:eq(5)', this).html('<a href="../files/plan/' + filenameF + '" class="btn btn-link btn-xs" style="padding:0px; border:none;" download="" title="Хавсаргасан файл татах"><i class="fa fa-paperclip fa-lg"></i></a>');
                                }
                                return false;
                            }
                        });
                        $('#pTab2Modal').modal('hide');
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
    $('#planmnthTab2ImplModalDelete').click(function () {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Та устгахдаа итгэлтэй байна уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"DELETE FROM TBL_PLAN_IMPL WHERE PLAN_ID=<%=Request.QueryString["id"]%> AND YR=<%=Request.QueryString["yr"]%> AND MNTH=<%=Request.QueryString["mnth"]%> AND TP=\'month\'"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        $('#planmnthTab2ImplModalHeaderLabel').html('оруулах');
                        $('#planmnthTab2ImplModalCharLength').html('0');
                        $('#planmnthTab2ImplModalImpl').val('');
                        //CKEDITOR.instances.planmnthTab2ImplModalImpl.setData("");
                        $('#pTab2Datatable > tbody  > tr').each(function () {
                            if ($(this).attr('data-id') == $('#planmnthTab2ImplModalID').text()) {
                                $('td:eq(4)', this).find('i').attr("class", "glyphicon glyphicon-edit txt-color-red font-xl");
                                return false;
                            }
                        });
                        $('#pTab2Modal').modal('hide');
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

    function planmnthTab2ImplModalWeekImplShow() {
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteDataSet",
            data: '{"qry":"SELECT a.ID, a.ST_ID, SUBSTR(b.LNAME, 0, 1) || \'.\' || SUBSTR(b.FNAME, 1, 1) || LOWER(SUBSTR(b.FNAME, 2)) as STNAMEINIT, a.BEGINDATE, a.ENDDATE, a.NO, a.NAME FROM TBL_IMPLWEEK a INNER JOIN hrdbuser.ST_STAFFS b ON a.ST_ID=b.ID INNER JOIN hrdbuser.ST_STBR c ON b.ID = c.STAFFS_ID AND c.ISACTIVE = 1 LEFT JOIN hrdbuser.STN_POS d ON c.POS_ID = d.ID WHERE a.TP=\'staff\' AND TO_NUMBER(TO_CHAR(TO_DATE(a.BEGINDATE,\'YYYY-MM-DD\'),\'YYYY\'))='+<%=Request.QueryString["yr"]%>+' AND TO_NUMBER(TO_CHAR(TO_DATE(a.BEGINDATE,\'YYYY-MM-DD\'),\'MM\'))='+<%=Request.QueryString["mnth"]%>+' AND a.PLANMNTH_ID='+<%=Request.QueryString["id"]%>+' ORDER BY d.SORT, b.ID, a.BEGINDATE, a.ENDDATE"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<b>'+value.STNAMEINIT+' | '+value.BEGINDATE+' - '+value.ENDDATE+'</b><br>'+value.NAME+'<br><br>';
                });
                $('#planmnthTab2ImplModalWeekImplDiv').html(replaceDatabaseToDisplay(valData));
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $('#planmnthTab2ImplModalImportWeekImpl').click(function () {
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteDataSet",
            data: '{"qry":"SELECT a.ID, a.ST_ID, SUBSTR(b.LNAME, 0, 1) || \'.\' || SUBSTR(b.FNAME, 1, 1) || LOWER(SUBSTR(b.FNAME, 2)) as STNAMEINIT, a.BEGINDATE, a.ENDDATE, a.NO, a.NAME FROM TBL_IMPLWEEK a INNER JOIN hrdbuser.ST_STAFFS b ON a.ST_ID=b.ID INNER JOIN hrdbuser.ST_STBR c ON b.ID = c.STAFFS_ID AND c.ISACTIVE = 1 LEFT JOIN hrdbuser.STN_POS d ON c.POS_ID = d.ID WHERE a.TP=\'staff\' AND TO_NUMBER(TO_CHAR(TO_DATE(a.BEGINDATE,\'YYYY-MM-DD\'),\'YYYY\'))='+<%=Request.QueryString["yr"]%>+' AND TO_NUMBER(TO_CHAR(TO_DATE(a.BEGINDATE,\'YYYY-MM-DD\'),\'MM\'))='+<%=Request.QueryString["mnth"]%>+' AND a.PLANMNTH_ID='+<%=Request.QueryString["id"]%>+' ORDER BY d.SORT, b.ID, a.BEGINDATE, a.ENDDATE"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += ''+value.STNAMEINIT+' | '+value.BEGINDATE+' - '+value.ENDDATE+'\n'+value.NAME+'\n\n';
                });
                $('#planmnthTab2ImplModalImpl').val(replaceDatabaseToDisplay(valData));
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
