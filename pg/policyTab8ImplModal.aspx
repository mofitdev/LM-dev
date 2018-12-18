<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="policyTab8ImplModal.aspx.cs" Inherits="LMWebApp.pg.policyTab8ImplModal" %>
<form id="polictyTab8ModalForm">
    <div class="modal-header">
        <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
        <h4 class="modal-title" >Төлөвлөгөөний нэгдсэн биелэлт&nbsp;<span id="policytab8ImplModalHeaderLabel" runat="server"></span></h4>
    </div>
    <div class="modal-body">
        <div class="form-group">
            <div class="row">
                <div class="col-md-12">
                    <div id="policyTab8PlanYrhf" runat="server" class="form-group hide"></div> 
                    <div id="policyTab8SelectedYrhf" runat="server" class="form-group hide"></div> 
                    <div id="policyTab8ModalDivSelect2Yrhf">
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="row">
                <div class="col-md-3">
                    <label class="control-label">*Эхлэх он</label>
                    <select id="policyTab8SelectYearbegin" runat="server" class="form-control"><option value="">- Сонго -</option><option>2000</option><option>2001</option><option>2002</option><option>2003</option><option>2004</option><option>2005</option><option>2006</option><option>2007</option><option>2008</option><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option><option>2022</option><option>2023</option><option>2024</option><option>2025</option><option>2026</option><option>2027</option><option>2028</option><option>2029</option><option>2030</option><option>2031</option><option>2032</option><option>2033</option><option>2034</option><option>2035</option><option>2036</option><option>2037</option><option>2038</option><option>2039</option><option>2040</option></select>
                </div>
                <div class="col-md-3">
                    <label class="control-label">*Эхлэх хагас жил</label>
                    <select id="policyTab8SelectYearhalfbegin" runat="server" class="form-control"><option value="">- Сонго -</option><option value="1">Эхний хагас жил</option><option value="2">Сүүлийн хагас жил</option></select>
                </div>
                <div class="col-md-3">
                    <label class="control-label">*Дуусах он</label>
                    <select id="policyTab8SelectYearend" runat="server" class="form-control"><option value="">- Сонго -</option><option>2000</option><option>2001</option><option>2002</option><option>2003</option><option>2004</option><option>2005</option><option>2006</option><option>2007</option><option>2008</option><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option><option>2022</option><option>2023</option><option>2024</option><option>2025</option><option>2026</option><option>2027</option><option>2028</option><option>2029</option><option>2030</option><option>2031</option><option>2032</option><option>2033</option><option>2034</option><option>2035</option><option>2036</option><option>2037</option><option>2038</option><option>2039</option><option>2040</option></select>
                </div>
                <div class="col-md-3">
                    <label class="control-label">*Дуусах хагас жил</label>
                    <select id="policyTab8SelectYearhalfend" runat="server" class="form-control"><option value="">- Сонго -</option><option value="1">Эхний хагас жил</option><option value="2">Сүүлийн хагас жил</option></select>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div id="policytab8ImplModalID" runat="server" class="form-group hide"></div> 
                <div class="form-group" style="margin:0px; display:block; overflow:hidden;">
                    <div class="col-md-12">   
                        <div style="width:100%; display: block; overflow: hidden; padding-bottom: 5px;">
                            <div style="width:65%; float:left; text-align:justify;" class="font-xs">
                                <a id="policytab8ImplImportModal" class="btn btn-labeled btn-warning" style="font-size: 12px;" href="../pg/policyTab8ImplImportModal.aspx?id=<%=Request.QueryString["id"] %>" data-target="#pTab8ImplImportModal" data-toggle="modal">
                                    <span class="btn-label" style="padding: 3px 7px 3px 5px;">
                                        <i class="fa fa-download"></i>
                                    </span>Биелэлт татах
                                </a>
                            </div>
                            <div style="width:17%; float:right; text-align:right;">
                                Тэмдэгт: <label id="policytab8ImplModalCharLength" runat="server">0</label>/12000
                            </div>
                            <div style="width:17%; float:right; text-align:right;">
                                <button id="policytab8ImplModalDelete" type="button" class="btn btn-labeled btn-danger" style="font-size: 12px;">
                                    <span class="btn-label" style="padding: 3px 7px 3px 5px;">
                                        <i class="fa fa-trash-o"></i>
                                    </span>Биелэлт устгах
                                </button>
                            </div>                                
                        </div> 
                        <textarea id="policytab8ImplModalImpl" name="policytab8ImplModalImpl" runat="server" class="form-control" rows="10"></textarea>
                        <script>
                            CKEDITOR.replace('policytab8ImplModalImpl', {
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
                            var editor = CKEDITOR.instances.policytab8ImplModalImpl;
                            editor.on('key', function (evt) {
                                $("#policytab8ImplModalCharLength").text(replaceDisplayToDatabase($.trim(evt.editor.getData())).length);
                            }, editor.element.$);
                        </script>
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
                        <a id="policytab8ImplModalAttachBtn" runat="server" class="btn btn-link btn-xs" href="javascript:void(0);" style="padding:0px; border:none;">Файл хавсаргаагүй байна...</a>
                    </div>
                </div>
                <div class="form-group" style="margin:0; display:block; overflow:hidden;">
                    <div class="col-md-2">
                        <a id="policytab8ImplModalAttachDelete" class="btn btn-link btn-xs" href="javascript:void(0);"><i class="fa fa-trash-o"></i> файл устгах</a>
                    </div>
                    <div class="col-md-10" style="padding-left: 0;">
                        <input id="policytab8ImplModalAttachInput" runat="server" type="file" class="btn btn-default">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
        <button class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах</button>
    </div>
</form>
<div id="pTab8ImplImportModal" class="modal fade in modalSecond" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            
        </div>
    </div>
</div>
<script type="text/javascript">
    $("#policytab8ImplModalAttachInput").change(function () {
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
            $('#policytab8ImplModalAttachBtn').html($(this).val().split('\\').pop());
        }
        else alert(errMsg);
    });
    $("#policytab8ImplModalAttachDelete").click(function () {
        if ($('#policytab8ImplModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
            $.SmartMessageBox({
                title: "Анхааруулга!",
                content: "Та устгахдаа итгэлтэй байна уу?",
                buttons: '[Үгүй][Тийм]'
            }, function (ButtonPressed) {
                if (ButtonPressed === "Тийм") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/DeleteFile",
                        data: '{"filename":"~/files/policy/' + $('#policytab8ImplModalAttachBtn').html() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            $('#policytab8ImplModalAttachBtn').html('Файл хавсаргаагүй байна...');
                            $('#pTab8Datatable > tbody  > tr').each(function () {
                                if ($(this).attr('data-id') == $('#policytab8ImplModalID').text()) {
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
    $('#policytab8ImplModalDelete').click(function () {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Та устгахдаа итгэлтэй байна уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"DELETE FROM TBL_POLICYPLAN_IMPLNEGDSEN WHERE POLICYPLAN_ID=<%=Request.QueryString["id"]%>"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        $('#policytab8ImplModalHeaderLabel').html('оруулах');
                        $('#policytab8ImplModalCharLength').html('0');
                        CKEDITOR.instances.policytab8ImplModalImpl.setData("");
                        $('#pTab8Datatable > tbody  > tr').each(function () {
                            if ($(this).attr('data-id') == $('#policytab8ImplModalID').text()) {
                                $('td:eq(6)', this).find('i').attr("class", "glyphicon glyphicon-edit txt-color-red font-xl");
                                return false;
                            }
                        });
                        $('#pTab8Modal').modal('hide');
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
    $('#polictyTab8ModalForm').bootstrapValidator({
        fields: {
            policyTab8SelectYearbegin: {
                group: '.col-md-3',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            policyTab8SelectYearhalfbegin: {
                group: '.col-md-3',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            policyTab8SelectYearend: {
                group: '.col-md-3',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            policyTab8SelectYearhalfend: {
                group: '.col-md-3',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            var valQryInsUpt = '';
            if ($.trim(CKEDITOR.instances.policytab8ImplModalImpl.getData()) == "") {
                alert("Биелэлт заавал оруулна уу!");
            }
            else {
                if (replaceDisplayToDatabase($.trim(CKEDITOR.instances.policytab8ImplModalImpl.getData())).length > 12000) {
                    $("#policytab8ImplModalCharLength").text(replaceDisplayToDatabase($.trim(CKEDITOR.instances.policytab8ImplModalImpl.getData())).length);
                    alert("Биелэлт уртдаа 12000 тэмдэгт авна!");
                }
                else {
                    data = replaceDisplayToDatabase(CKEDITOR.instances.policytab8ImplModalImpl.getData()).replace(/\r?\n|\r/g, '').replace(/\r?\t|\r/g, '');

                    var filename = 'null', filenameF = '';
                    if ($('#policytab8ImplModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
                        filename = '\'БодлогоНэгдсэнБиелэлт<%=Request.QueryString["id"]%>.' + $('#policytab8ImplModalAttachInput').val().split('.').pop() + '\'';
                        filenameF = 'БодлогоНэгдсэнБиелэлт<%=Request.QueryString["id"]%>.' + $('#policytab8ImplModalAttachInput').val().split('.').pop() + '';
                    }

                    if ($('#policytab8ImplModalHeaderLabel').html() == 'оруулах') {
                        valQryInsUpt = 'declare vClobVal varchar2(32767) := \'' + data + '\'; begin INSERT INTO TBL_POLICYPLAN_IMPLNEGDSEN (ID, POLICYPLAN_ID, BEGINYR, BEGINYRHF, ENDYR, ENDYRHF, FILENAME, IMPL, IMPL_CREATED_STAFFID, IMPL_CREATED_DATE) VALUES (TBLLASTID(\'TBL_POLICYPLAN_IMPLNEGDSEN\'), <%=Request.QueryString["id"]%>, ' + $('#policyTab8SelectYearbegin option:selected').val() + ', ' + $('#policyTab8SelectYearhalfbegin option:selected').val() + ', ' + $('#policyTab8SelectYearend option:selected').val() + ', ' + $('#policyTab8SelectYearhalfend option:selected').val() + ', ' + filename + ', vClobVal, ' + $.trim($('#indexUserId').html()) + ', sysdate); end;';
                    }
                    else if ($('#policytab8ImplModalHeaderLabel').html() == 'засах') {
                        valQryInsUpt = 'declare vClobVal varchar2(32767) := \'' + data + '\'; begin UPDATE TBL_POLICYPLAN_IMPLNEGDSEN SET IMPL=vClobVal, BEGINYR=' + $('#policyTab8SelectYearbegin option:selected').val() + ', BEGINYRHF=' + $('#policyTab8SelectYearhalfbegin option:selected').val() + ', ENDYR=' + $('#policyTab8SelectYearend option:selected').val() + ', ENDYRHF=' + $('#policyTab8SelectYearhalfend option:selected').val() + ', FILENAME=' + filename + ', IMPL_UPDATED_STAFFID=' + $.trim($('#indexUserId').html()) + ', IMPL_UPDATED_DATE=sysdate WHERE POLICYPLAN_ID=<%=Request.QueryString["id"]%>; end;';
                    }
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                        data: '{"qry":"' + valQryInsUpt + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            if ($('#policytab8ImplModalAttachInput').val() != '') {
                                var uploadfiles = $("#policytab8ImplModalAttachInput").get(0);
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
                            $('#pTab8Datatable > tbody  > tr').each(function () {
                                if ($(this).attr('data-id') == $('#policytab8ImplModalID').text()) {
                                    $('td:eq(6)', this).find('i').attr("class", "glyphicon glyphicon-check txt-color-green font-xl");
                                    if (filename != 'none') {
                                        $('td:eq(7)', this).html('<a href="../files/policy/' + filenameF + '" class="btn btn-link btn-xs" style="padding:0px; border:none;" download="" title="Хавсаргасан файл татах"><i class="fa fa-paperclip fa-lg"></i></a>');
                                    }
                                    return false;
                                }
                            });
                            $('#pTab8Modal').modal('hide');
                            smallBox('Нэгдсэн биелэлт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
</script>

