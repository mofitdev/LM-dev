<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trainingreq.aspx.cs" Inherits="LMWebApp.pg.trainingreq" %>
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    <h1 class="page-title txt-color-blueDark">
    <i class="fa-fw fa fa-home"></i>
    <span>> Сургалтад нэр дэвшүүлэх зөвшөөрлийн хуудас</span>
    </h1>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
            <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                <header>
                    <span class="widget-icon"> 
                        <i class="fa fa-table"></i> 
                    </span>
                    <h2> Зөвшөөрлийн хуудасын бүртгэл </h2>
                    <div class="widget-toolbar">
                        <div class="btn-group options" style="margin-right:0px !important;">
                            <select id="trainingreqTab1SelectYear" name="trainingreqTab1SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                        </div>
                    </div>
                    <div class="widget-toolbar">
                        <div class="btn-group options" style="margin-right:0px !important;">
                            <button class="btn btn-primary btn-xs" type="button" data-target="#trainingreqTab1Modal" data-toggle="modal" onclick="showAddEditTab1(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                        </div>
                    </div>
                </header>
                <div>
                    <div class="Colvis TableTools" style="right:820px; top:4px; z-index:5; margin-top:7px;">Газар:</div>
                    <div class="Colvis TableTools" style="right:735px; width: 76px; top:4px; z-index:5;">
                        <select id="trainingreqTab1SelectGazar" runat="server" class="form-control" style="padding:1px;"><option value="">- Сонго -</option></select>
                    </div>
                    <div class="Colvis TableTools" style="right:685px; top:4px; z-index:5; margin-top:7px;"><label>Хэлтэс: </label></div>
                    <div class="Colvis TableTools" style="right:605px; width: 76px; top:4px; z-index:5;">
                        <select id="trainingreqTab1SelectHeltes" runat="server" class="form-control" style="padding:1px;" disabled="disabled"><option value="">- Сонго -</option></select>
                    </div>
                    <div class="Colvis TableTools" style="right:540px; top:4px; z-index:5; margin-top:7px;"><label>Ажилтан: </label></div>
                    <div class="Colvis TableTools" style="right:325px; width:210px; top:4px; z-index:5;">
                        <select id="trainingreqTab1SelectStaff" runat="server" class="form-control" style="padding:1px;" disabled="disabled"><option value="">- Сонго -</option></select>
                    </div>
                    <div class="Colvis TableTools" style="right:275px; top:4px; z-index:5; margin-top:7px;"><label>Төрөл:</label></div>
                    <div class="Colvis TableTools" style="right:120px; width:150px; top:4px; z-index:5;">
                        <select id="trainingreqTab1SelectType" runat="server" class="form-control" style="padding:1px;"><option>Туршлага судлах аялал</option></select>
                    </div>
                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                    <div id="loaderTab1" class="search-background">
                        <img width="64" height="" src="img/loading.gif"/>
                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                    </div>
                    <div id="divBindTab1Table" class="widget-body no-padding">
                                
                    </div>
                </div>
            </div>
        </article>
    </div>
</section>
<div id="trainingreqTab1Modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="trainingreqTab1ModalForm">
                <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			        <h4 class="modal-title" >Зөвшөөрлийн хуудас&nbsp;<span id="trainingreqTab1ModalHeaderLabel"></span></h4>
		        </div>
		        <div class="modal-body">
                    <div id="trainingreqTab1ID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row"><div class="col-md-12">Зөвшөөрөл хүсэгт</div></div>
                            <div class="row"><div id="trainingreqTab1ModalDivStaff" runat="server" class="col-md-12"></div></div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-6">
                                    <label class="control-label">*Төрөл</label>
									<select id="trainingreqTab1ModalSelectType" name="trainingreqTab1ModalSelectType" class="form-control" runat="server">
                                        <option value="">- Сонго -</option>
                                    </select>
                                </div>
                            </div>
						</div>
					</fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-12">
                                    <label class="control-label">*Зохион байгуулагч</label>
									<input id="trainingreqTab1ModalInputOrganizer" name="trainingreqTab1ModalInputOrganizer" type="text" class="form-control" placeholder="Зохион байгуулагч" />
                                </div>
                            </div>
						</div>
					</fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-12">
                                    <label class="control-label">*Зардын талаар</label>
									<input id="trainingreqTab1ModalInputBudget" name="trainingreqTab1ModalInputBudget" type="text" class="form-control" placeholder="Зардын талаар" />
                                </div>
                            </div>
						</div>
					</fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-12">
                                    <label class="control-label">*Нэр</label>
									<input id="trainingreqTab1ModalInputTrainingname" name="trainingreqTab1ModalInputTrainingname" type="text" class="form-control" placeholder="Нэр" />
                                </div>
                            </div>
						</div>
					</fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-6">
                                    <label class="control-label">*Зохион байгуулагдах улс</label>
									<input id="trainingreqTab1ModalInputCountry" name="trainingreqTab1ModalInputCountry" type="text" class="form-control" placeholder="Улс" />
                                </div>
								<div class="col-md-6">
                                    <label class="control-label">*Зохион байгуулагдах хот</label>
									<input id="trainingreqTab1ModalInputCity" name="trainingreqTab1ModalInputCity" type="text" class="form-control" placeholder="Хот" />
                                </div>
                            </div>
						</div>
					</fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-6">
                                    <label class="control-label">*Эхлэх хугацаа</label>
									<input id="trainingreqTab1ModalInputBegindate" name="trainingreqTab1ModalInputBegindate" type="text" class="form-control" placeholder="Эхлэх хугацаа" />
                                </div>
								<div class="col-md-6">
                                    <label class="control-label">*Дуусах хугацаа</label>
									<input id="trainingreqTab1ModalInputEnddate" name="trainingreqTab1ModalInputEnddate" type="text" class="form-control" placeholder="Дуусах хугацаа" />
                                </div>
                            </div>
						</div>
					</fieldset>
		        </div>
		        <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Болих</button>
			        <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах</button>
		        </div>
            </form>
        </div>
	</div>
</div>
<div id="trainingreqTab1ModalPrint" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">  
	<div class="modal-dialog modal-lg" style="width:70%;">
        <div style="width:56%; display:block; height: 35px; margin:0 auto;">
            <div class="btn-group pull-right">
                <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#trainingreqTab1ModalPrintContent', 'Анкет')">
                    <i class="fa fa-file-word-o"></i>
                </a>
                <a href="javascript:void(0);" class="btn btn-default printBtn" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#trainingreqTab1ModalPrintContent')">
                    <i class="fa fa-print"></i>
                </a>
            </div>
        </div>
		<div id="trainingreqTab1ModalPrintContent" class="modal-content reports" style="width:56%;margin: 0 auto;">
            <p style="font: 11pt 'Arial'; text-align:center;">Сургалтад нэр дэвшүүлэх зөвшөөрлийн хуудас</p>
            <p style="font: 11pt 'Arial'; text-align:right;">/<span id="trainingreqTab1ModalPrintLabelDate" runat="server"></span>/</p>
            <div id="trainingreqTab1ModalPrintTable3" style="width:100%; border: 2px solid #000; padding:5px;">
                <p style="font: bold 11pt 'Arial'; text-align:center;">СУРГАЛТАД НЭР ДЭВШҮҮЛЭХ ЗӨВШӨӨРЛИЙН ХУУДАС</p>
                <br />
                <p id="trainingreqTab1ModalPrintTable3Data1" style="font: 11pt 'Arial'; text-align:justify;"></p>
                <br />
                <br />
                <table id="trainingreqTab1ModalPrintTable3Table1" style="width: 100%; font:11pt 'Arial';border-collapse:collapse;">
                    <tbody>
                        <tr>
                            <td style="padding: 5px; width: 33%; text-align:center; vertical-align:middle;">ТЗУГ-ЫН ДАРГА</td>
                            <td style="padding: 5px; width: 33%; text-align:center; vertical-align:top;"><img src="../files/gazarsignatures/TZ_SIGNATURE.png" /></td>
                            <td id="trainingreqTab1ModalPrintTable3Table1TzBossName" style="padding: 5px; width: 33%; text-align:center; vertical-align:middle;">Д. ГАНБОЛД</td>
                        </tr>
                    </tbody>
                </table>
            </div>
		</div>  
	</div>  
</div>
<script type="text/javascript">
    pageSetUp();
    var globalAjaxVar = null;
    var pagefunction = function () {
        $('#trainingreqTab1ModalSelectType').html($('#trainingreqTab1ModalSelectType').html().replace('Бүгд', 'Сонго'));
        planmTab1SetFirstControls();
    }
    var pagedestroy = function () {
        if (globalAjaxVar != null) {
            globalAjaxVar.abort();
            globalAjaxVar = null;
        }
    }
    pagefunction();

    //tab1
    function planmTab1SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var userId = $('#indexUserId').text();
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/globalGetGazarListForDDL",
            data: '{yr:"' + $('#trainingreqTab1SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#trainingreqTab1SelectGazar").html('<option value="">Бүгд</option>'+msg.d);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/globalCheckRoles",
                    data: '{stid:"' + userId + '", roles:"1,34"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        if (msg.d != "1") {
                            $('#trainingreqTab1SelectGazar').val(userGazarId);
                            $('#trainingreqTab1SelectGazar').prop('disabled', true);
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "ws.aspx/globalGetHeltesListForDDL",
                                data: '{yr:"' + $("#trainingreqTab1SelectYear option:selected").val() + '", gazar:"' + $("#trainingreqTab1SelectGazar option:selected").val() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (msg) {
                                    $("#trainingreqTab1SelectHeltes").html('<option value="">Бүгд</option>' + msg.d);
                                    globalAjaxVar = $.ajax({
                                        type: "POST",
                                        url: "ws.aspx/globalCheckRoles",
                                        data: '{stid:"' + userId + '", roles:"3"}',
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function (msg) {
                                            if (msg.d != "1") {
                                                $('#trainingreqTab1SelectHeltes').val(userHeltesId);
                                                $('#trainingreqTab1SelectHeltes').prop('disabled', true);
                                                globalAjaxVar = $.ajax({
                                                    type: "POST",
                                                    url: "ws.aspx/globalGetStaffListForDDL",
                                                    data: '{yr:"' + $("#trainingreqTab1SelectYear option:selected").val() + '", gazar:"' + $("#trainingreqTab1SelectGazar option:selected").val() + '", heltes:"' + $("#trainingreqTab1SelectHeltes option:selected").val() + '"}',
                                                    contentType: "application/json; charset=utf-8",
                                                    dataType: "json",
                                                    success: function (msg) {
                                                        $("#trainingreqTab1SelectStaff").html('<option value="">Бүгд</option>' + msg.d);
                                                        globalAjaxVar = $.ajax({
                                                            type: "POST",
                                                            url: "ws.aspx/globalCheckRoles",
                                                            data: '{stid:"' + userId + '", roles:"5"}',
                                                            contentType: "application/json; charset=utf-8",
                                                            dataType: "json",
                                                            success: function (msg) {
                                                                if (msg.d != "1") {
                                                                    $('#trainingreqTab1SelectStaff').val(userId);
                                                                    $('#trainingreqTab1SelectStaff').prop('disabled', true);
                                                                    dataBindTab1Datatable();
                                                                }
                                                                else dataBindTab1Datatable();
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
                                            else dataBindTab1Datatable();
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
                        else dataBindTab1Datatable();
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
    function dataBindTab1Datatable() {
        showLoader('loaderTab1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/trainingreq_trainingreqTab1Datatable",
            data: '{currstid:"' + $('#indexUserId').text() + '", yr:"' + $('#trainingreqTab1SelectYear option:selected').val() + '", gazar:"' + $('#trainingreqTab1SelectGazar option:selected').val() + '", heltes:"' + $('#trainingreqTab1SelectHeltes option:selected').val() + '", stid:"' + $('#trainingreqTab1SelectStaff option:selected').val() + '", tp:"' + $('#trainingreqTab1SelectType option:selected').val() + '"}',
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
                if (err.Message == 'SessionDied') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    function showAddEditTab1(el, isinsupt) {
        $('#trainingreqTab1ModalHeaderLabel').text(isinsupt);
        if (isinsupt == 'нэмэх') {
            $('#trainingreqTab1ID').text('');
            $('#trainingreqTab1ModalSelectType').val('');
            $('#trainingreqTab1ModalInputOrganizer').val('');
            $('#trainingreqTab1ModalInputBudget').val('');
            $('#trainingreqTab1ModalInputTrainingname').val('');
            $('#trainingreqTab1ModalInputCountry').val('');
            $('#trainingreqTab1ModalInputCity').val('');
            $('#trainingreqTab1ModalInputBegindate').val('');
            $('#trainingreqTab1ModalInputEnddate').val('');
        }
        else {
            $('#trainingreqTab1ID').text($(el).closest('tr').find('td:eq(0)').text());
            $('#trainingreqTab1ModalSelectType').val($(el).closest('tr').find('td:eq(16)').text());
            $('#trainingreqTab1ModalInputOrganizer').val($(el).closest('tr').find('td:eq(4)').text());
            $('#trainingreqTab1ModalInputBudget').val($(el).closest('tr').find('td:eq(5)').text());
            $('#trainingreqTab1ModalInputTrainingname').val($(el).closest('tr').find('td:eq(6)').text());
            $('#trainingreqTab1ModalInputCountry').val($(el).closest('tr').find('td:eq(7)').text());
            $('#trainingreqTab1ModalInputCity').val($(el).closest('tr').find('td:eq(8)').text());
            $('#trainingreqTab1ModalInputBegindate').val($(el).closest('tr').find('td:eq(9)').text().split(' - ')[0]);
            $('#trainingreqTab1ModalInputEnddate').val($(el).closest('tr').find('td:eq(9)').text().split(' - ')[1]);

        }
    }
    function showDeleteTab1(el) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Сонгосон мэдээллийг устгах уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteNonQuery",
                data: '{qry:"DELETE FROM TBL_TRAININGREQ WHERE ID=' + $(el).closest('tr').find('td:eq(0)').text() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    dataBindTab1Datatable();
                    smallBox('Зөвшөөрлийн хуудас', 'Амжилттай устгагдлаа', '#659265', 4000);
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    if (err.Message == 'SessionDied') window.location = '../login.aspx';
                    else window.location = '../#pg/error500.aspx';
                }
            });
        });
    }
    function showTab1ModalPrint(el) {
        if ($(el).closest('tr').find('td:eq(2)').html().split(' | ')[0].split('-').length != 1) trainingreqTab1ModalPrintTable3Data1.innerHTML = $(el).closest('tr').find('td:eq(7)').html() + " Улсын " + $(el).closest('tr').find('td:eq(8)').html() + " хотод зохион байгуулагдах ”" + $(el).closest('tr').find('td:eq(6)').html() + "” сэдэвт сургалтад " + $(el).closest('tr').find('td:eq(2)').html().split(' | ')[0].split('-')[0] + "-ын " + $(el).closest('tr').find('td:eq(2)').html().split(' | ')[0].split('-')[1] + "-ийн " + $(el).closest('tr').find('td:eq(2)').html().split(' | ')[1].replace('Хэлтсийн', '').replace('Газрын', '').toLowerCase() + ' ' + $(el).closest('tr').find('td:eq(2)').html().split(' | ')[2] + '-ыг нэр дэвшихийг зөвшөөрөв.';
        else trainingreqTab1ModalPrintTable3Data1.innerHTML = $(el).closest('tr').find('td:eq(7)').html() + " Улсын " + $(el).closest('tr').find('td:eq(8)').html() + " хотод зохион байгуулагдах ”" + $(el).closest('tr').find('td:eq(6)').html() + "” сэдэвт сургалтад " + $(el).closest('tr').find('td:eq(2)').html().split(' | ')[0].split('-')[0] + "-ын " + $(el).closest('tr').find('td:eq(2)').html().split(' | ')[1].replace('Хэлтсийн', '').replace('Газрын', '').toLowerCase() + ' ' + $(el).closest('tr').find('td:eq(2)').html().split(' | ')[2] + '-ыг нэр дэвшүүлэхийг зөвшөөрөв.';
    }
    $("#trainingreqTab1SelectGazar").change(function () {
        if ($("#trainingreqTab1SelectGazar option:selected").val() == "") {
            $("#trainingreqTab1SelectHeltes").html("<option selected value=\"\">- Бүгд -</option>");
            $("#trainingreqTab1SelectHeltes").prop("disabled", true);
            dataBindTab1Datatable();
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/globalGetHeltesListForDDL",
                data: '{yr:"' + $("#trainingreqTab1SelectYear option:selected").val() + '", gazar:"' + $("#trainingreqTab1SelectGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    $("#trainingreqTab1SelectHeltes").html('<option value="">Бүгд</option>' + msg.d);
                    $("#trainingreqTab1SelectHeltes").prop("disabled", false);
                    dataBindTab1Datatable();
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    if (err.Message == 'SessionDied') window.location = '../login.aspx';
                    else window.location = '../#pg/error500.aspx';
                }
            });
        }
    });
    $("#trainingreqTab1SelectHeltes").change(function () {
        if ($("#trainingreqTab1SelectHeltes option:selected").val() == "") {
            $("#trainingreqTab1SelectStaff").html("<option selected value=\"\">- Бүгд -</option>");
            $("#trainingreqTab1SelectStaff").prop("disabled", true);
            dataBindTab1Datatable();
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/globalGetStaffListForDDL",
                data: '{yr:"' + $("#trainingreqTab1SelectYear option:selected").val() + '", gazar:"' + $("#trainingreqTab1SelectGazar option:selected").val() + '", heltes:"' + $("#trainingreqTab1SelectHeltes option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    $("#trainingreqTab1SelectStaff").html('<option selected value="">- Бүгд -</option>' + msg.d);
                    $("#trainingreqTab1SelectStaff").prop("disabled", false);
                    dataBindTab1Datatable();
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    if (err.Message == 'SessionDied') window.location = '../login.aspx';
                    else window.location = '../#pg/error500.aspx';
                }
            });
        }
    });
    $("#trainingreqTab1SelectStaff, #trainingreqTab1SelectType").change(function () {
        dataBindTab1Datatable();
    });
    $("#trainingreqTab1SelectYear").change(function () {
        planmTab1SetFirstControls();
    });
    function trainingreqTab1DatatableSubmitHeltes(el) {
        if ($(el).prop('checked')) {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteNonQuery",
                data: '{qry:"UPDATE TBL_TRAININGREQ SET ISSUBMITHELTES=1, SUBMITHELTES_STID=' + $.trim($('#indexUserId').text()) + ', SUBMITHELTES_DATE=SYSDATE WHERE ID=' + $(el).closest('tr').find('td:eq(0)').text() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    smallBox('Зөвшөөрсөн эсэх', 'Амжилттай хадгалагдлаа', '#659265', 4000);
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    if (err.Message == 'SessionDied') window.location = '../login.aspx';
                    else window.location = '../#pg/error500.aspx';
                }
            });
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteNonQuery",
                data: '{qry:"UPDATE TBL_TRAININGREQ SET ISSUBMITHELTES=0, SUBMITHELTES_STID=' + $.trim($('#indexUserId').text()) + ', SUBMITHELTES_DATE=SYSDATE WHERE ID=' + $(el).closest('tr').find('td:eq(0)').text() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    smallBox('Зөвшөөрсөн эсэх', 'Амжилттай хадгалагдлаа', '#659265', 4000);
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    if (err.Message == 'SessionDied') window.location = '../login.aspx';
                    else window.location = '../#pg/error500.aspx';
                }
            });
        }
    }
    function trainingreqTab1DatatableSubmitGazar(el) {
        if ($(el).prop('checked')) {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteNonQuery",
                data: '{qry:"UPDATE TBL_TRAININGREQ SET ISSUBMITGAZAR=1, SUBMITGAZAR_STID=' + $.trim($('#indexUserId').text()) + ', SUBMITGAZAR_DATE=SYSDATE WHERE ID=' + $(el).closest('tr').find('td:eq(0)').text() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    smallBox('Зөвшөөрсөн эсэх', 'Амжилттай хадгалагдлаа', '#659265', 4000);
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    if (err.Message == 'SessionDied') window.location = '../login.aspx';
                    else window.location = '../#pg/error500.aspx';
                }
            });
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteNonQuery",
                data: '{qry:"UPDATE TBL_TRAININGREQ SET ISSUBMITGAZAR=0, SUBMITGAZAR_STID=' + $.trim($('#indexUserId').text()) + ', SUBMITGAZAR_DATE=SYSDATE WHERE ID=' + $(el).closest('tr').find('td:eq(0)').text() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    smallBox('Зөвшөөрсөн эсэх', 'Амжилттай хадгалагдлаа', '#659265', 4000);
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    if (err.Message == 'SessionDied') window.location = '../login.aspx';
                    else window.location = '../#pg/error500.aspx';
                }
            });
        }
    }
    function trainingreqTab1DatatableSubmitTz(el) {
        if ($(el).prop('checked')) {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteNonQuery",
                data: '{qry:"UPDATE TBL_TRAININGREQ SET ISSUBMITTZ=1, SUBMITTZ_STID=' + $.trim($('#indexUserId').text()) + ', SUBMITTZ_DATE=SYSDATE WHERE ID=' + $(el).closest('tr').find('td:eq(0)').text() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    $(el).closest('tr').find('td:eq(14)').html('<a class="btn btn-default btn-xs" href="javascript:void(0);" data-target="#trainingreqTab1ModalPrint" data-toggle="modal" onclick="showTab1ModalPrint(this);"><i class="fa fa-file-text-o"></i> Хэвлэх</a>');
                    smallBox('Зөвшөөрсөн эсэх', 'Амжилттай хадгалагдлаа', '#659265', 4000);
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    if (err.Message == 'SessionDied') window.location = '../login.aspx';
                    else window.location = '../#pg/error500.aspx';
                }
            });
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteNonQuery",
                data: '{qry:"UPDATE TBL_TRAININGREQ SET ISSUBMITTZ=0, SUBMITTZ_STID=' + $.trim($('#indexUserId').text()) + ', SUBMITTZ_DATE=SYSDATE WHERE ID=' + $(el).closest('tr').find('td:eq(0)').text() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    $(el).closest('tr').find('td:eq(14)').html('');
                    smallBox('Зөвшөөрсөн эсэх', 'Амжилттай хадгалагдлаа', '#659265', 4000);
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    if (err.Message == 'SessionDied') window.location = '../login.aspx';
                    else window.location = '../#pg/error500.aspx';
                }
            });
        }
    }
    $('#trainingreqTab1ModalForm').bootstrapValidator({
        fields: {
            trainingreqTab1ModalSelectType: {
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            trainingreqTab1ModalInputOrganizer: {
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
            trainingreqTab1ModalInputBudget: {
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
            trainingreqTab1ModalInputTrainingname: {
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
            trainingreqTab1ModalInputCountry: {
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
            trainingreqTab1ModalInputCity: {
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
            trainingreqTab1ModalInputBegindate: {
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    date: {
                        format: 'YYYY-MM-DD',
                        message: 'Огноо буруу орсон байна. /Жил-Сар-Өдөр/'
                    }
                }
            },
            trainingreqTab1ModalInputEnddate: {
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    date: {
                        format: 'YYYY-MM-DD',
                        message: 'Огноо буруу орсон байна. /Жил-Сар-Өдөр/'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            if ($('#trainingreqTab1ModalHeaderLabel').text() == 'нэмэх') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/WSOracleExecuteNonQuery",
                    data: '{qry:"INSERT INTO TBL_TRAININGREQ (ID, TRAININGREQTYPE_ID, ST_ID, ORGANIZERNAME, BUDGETNAME, TRAININGNAME, COUNTRYNAME, CITYNAME, BEGINDATE, ENDDATE, CREATED_STAFFID, CREATED_DATE) VALUES (TBLLASTID(\'TBL_TRAININGREQ\'), ' + $('#trainingreqTab1ModalSelectType option:selected').val() + ', ' + $.trim($('#indexUserId').text()) + ', \'' + replaceDisplayToDatabase($.trim($('#trainingreqTab1ModalInputOrganizer').val())) + '\', \'' + replaceDisplayToDatabase($.trim($('#trainingreqTab1ModalInputBudget').val())) + '\', \'' + replaceDisplayToDatabase($.trim($('#trainingreqTab1ModalInputTrainingname').val())) + '\', \'' + replaceDisplayToDatabase($.trim($('#trainingreqTab1ModalInputCountry').val())) + '\', \'' + replaceDisplayToDatabase($.trim($('#trainingreqTab1ModalInputCity').val())) + '\', \'' + replaceDisplayToDatabase($.trim($('#trainingreqTab1ModalInputBegindate').val())) + '\', \'' + replaceDisplayToDatabase($.trim($('#trainingreqTab1ModalInputEnddate').val())) + '\', ' + $.trim($('#indexUserId').text()) + ', sysdate)"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab1Datatable();
                        $('#trainingreqTab1Modal').modal('hide');
                        smallBox('Зөвшөөрлийн хуудас', 'Амжилттай хадгалагдлаа', '#659265', 4000);
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        var err = eval("(" + xhr.responseText + ")");
                        if (err.Message == 'SessionDied') window.location = '../login.aspx';
                        else window.location = '../#pg/error500.aspx';
                    }
                });
            }
            else if ($('#trainingreqTab1ModalHeaderLabel').text() == 'засах') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/WSOracleExecuteNonQuery",
                    data: '{qry:"UPDATE TBL_TRAININGREQ SET TRAININGREQTYPE_ID=' + $('#trainingreqTab1ModalSelectType option:selected').val() + ', ST_ID=' + $.trim($('#indexUserId').text()) + ', ORGANIZERNAME=\'' + replaceDisplayToDatabase($.trim($('#trainingreqTab1ModalInputOrganizer').val())) + '\', BUDGETNAME=\'' + replaceDisplayToDatabase($.trim($('#trainingreqTab1ModalInputBudget').val())) + '\', TRAININGNAME=\'' + replaceDisplayToDatabase($.trim($('#trainingreqTab1ModalInputTrainingname').val())) + '\', COUNTRYNAME=\'' + replaceDisplayToDatabase($.trim($('#trainingreqTab1ModalInputCountry').val())) + '\', CITYNAME=\'' + replaceDisplayToDatabase($.trim($('#trainingreqTab1ModalInputCity').val())) + '\', BEGINDATE=\'' + replaceDisplayToDatabase($.trim($('#trainingreqTab1ModalInputBegindate').val())) + '\', ENDDATE=\'' + replaceDisplayToDatabase($.trim($('#trainingreqTab1ModalInputEnddate').val())) + '\', UPDATED_STAFFID=' + $.trim($('#indexUserId').text()) + ', UPDATED_DATE=SYSDATE WHERE ID=' + $('#trainingreqTab1ID').text() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab1Datatable();
                        $('#trainingreqTab1Modal').modal('hide');
                        smallBox('Зөвшөөрлийн хуудас', 'Амжилттай хадгалагдлаа', '#659265', 4000);
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        var err = eval("(" + xhr.responseText + ")");
                        if (err.Message == 'SessionDied') window.location = '../login.aspx';
                        else window.location = '../#pg/error500.aspx';
                    }
                });
            }
        }
    });

    
    $('#trainingreqTab1ModalInputBegindate, #trainingreqTab1ModalInputEnddate').datepicker({
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