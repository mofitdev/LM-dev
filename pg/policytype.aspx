<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="policytype.aspx.cs" Inherits="LMWebApp.pg.policytype" %>
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    <h1 class="page-title txt-color-blueDark" style="margin-bottom:12px;">
        <i class="fa-fw fa fa-home"></i>
        <span id="pageUrlModuleName" runat="server">> БОДЛОГЫН БАРИМТ БИЧГҮҮД</span>
    </h1>
</div>
<div class="row">
    <div class="col-md-3" style="margin-bottom:5px;">
        <a id="pTab1Add" runat="server" href="javascript:void(0);" class="btn btn-primary btn-xs" data-target="#pModal" data-toggle="modal" onclick="showAddEdit(this,'нэмэх')"><i class="fa fa-plus"></i> Бодлогын баримт бичиг нэмэх</a>
    </div>
    <div class="col-md-9">
        
    </div>
</div>
<div class="row">
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
		<div class="well well-sm">
            <div id="loaderList" class="search-background">
                <img width="64" height="" src="img/loading.gif"/>
                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
            </div>
			<div id="policytypeList" runat="server" class="smart-timeline">                <ul class="smart-timeline-list">                    <li>
						<div class="smart-timeline-icon">
							<i class="fa fa-file-text"></i>
						</div>
						<div class="smart-timeline-time">
							<small>2015</small>
						</div>
						<div class="smart-timeline-content">
							<p>
								<a href="javascript:void(0);" class="btn btn-xs btn-primary"><i class="fa fa-file"></i> Үндэсний хөгжлийн цогц бодлого</a>
								<a href="javascript:void(0);" class="btn btn-xs btn-primary"><i class="fa fa-file"></i> Засгийн газрын үйл ажиллагааны хөтөлбөр</a>
								<a href="javascript:void(0);" class="btn btn-xs btn-primary"><i class="fa fa-file"></i> Үндсэн чиглэл</a>
							</p>					
						</div>
					</li>                    <li>
						<div class="smart-timeline-icon bg-color-blueLight">
							<i class="fa fa-file-text"></i>
						</div>
						<div class="smart-timeline-time">
							<small>2014</small>
						</div>
						<div class="smart-timeline-content">
							<p>
								<a href="javascript:void(0);" class="btn btn-xs btn-primary disabled"><i class="fa fa-file"></i> Үндсэн чиглэл /2014/</a>
							</p>					
						</div>
					</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div id="pModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="pModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Бодлогын баримт бичиг&nbsp;<span id="pModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pModalID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Нэр</label>
									<textarea id="pModalInputName" name="pModalInputName" class="form-control" placeholder="Нэр" rows="2"></textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label class="control-label">*Эхлэх он</label>
                                    <select id="pModalSelectYearbegin" runat="server" class="form-control"><option value="">- Сонго -</option><option>2000</option><option>2001</option><option>2002</option><option>2003</option><option>2004</option><option>2005</option><option>2006</option><option>2007</option><option>2008</option><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option><option>2022</option><option>2023</option><option>2024</option><option>2025</option><option>2026</option><option>2027</option><option>2028</option><option>2029</option><option>2030</option><option>2031</option><option>2032</option><option>2033</option><option>2034</option><option>2035</option><option>2036</option><option>2037</option><option>2038</option><option>2039</option><option>2040</option></select>
                                </div>
                                <div class="col-md-6">
                                    <label class="control-label">*Дуусах он</label>
                                    <select id="pModalSelectYearend" runat="server" class="form-control"><option value="">- Сонго -</option><option>2000</option><option>2001</option><option>2002</option><option>2003</option><option>2004</option><option>2005</option><option>2006</option><option>2007</option><option>2008</option><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option><option>2022</option><option>2023</option><option>2024</option><option>2025</option><option>2026</option><option>2027</option><option>2028</option><option>2029</option><option>2030</option><option>2031</option><option>2032</option><option>2033</option><option>2034</option><option>2035</option><option>2036</option><option>2037</option><option>2038</option><option>2039</option><option>2040</option></select>
                                </div>
                            </div>
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
        $('#pModalSelectYearbegin').val('');
        $('#pModalSelectYearend').val('');
        $('input[name="pModalInputIsactive"]').prop('checked', false);
        if (isinsupt == 'засах') {
            $('#pModalID').text($(el).closest('.bodlogolist').attr('data-id'));
            $('#pModalInputName').val($(el).closest('.bodlogolist').find('a').html().split(' /')[0]);
            $('#pModalSelectYearbegin').val($(el).closest('.bodlogolist').attr('data-beginyr'));
            $('#pModalSelectYearend').val($(el).closest('.bodlogolist').attr('data-endyr'));
            if ($(el).attr('class').split(' ')[1].split('-')[2] == 'green') {
                $('#pModalInputIsactive1').prop('checked', true);
            }
            else if ($(el).attr('class').split(' ')[1].split('-')[2] == 'blueLight') {
                $('#pModalInputIsactive0').prop('checked', true);
            }
        }
    }
    function showDelete(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_POLICYBODLOGO WHERE POLICYTYPE_ID=' + $(el).closest('.bodlogolist').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') {
                    alert('Сонгосон бодлогын баримт бичигт хамааралтай бодлого орсон тул устгах боломжгүй байна!');
                }
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон бодлогын баримт бичиг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"DELETE FROM TBL_POLICYTYPE WHERE ID=' + $(el).closest('.bodlogolist').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    $('#policytypeList').find('.bodlogolist').each(function (index) {
                                        if ($(this).attr('data-id') == $("#pModalID").text()) {
                                            $(this).remove();
                                            smallBox('Сонгосон бодлогын баримт бичиг', 'Амжилттай устлаа...', '#659265', 3000);
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
                }
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindDataTable() {
        var valData = '';
        var strYr = "";
        showLoader('loaderList');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PolicytypeDatatable",
            data: '{}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (strYr != value.YR) {
                        if (strYr != "") valData += "</div></div></li>";
                        valData += "<li><div class=\"smart-timeline-icon \"" + value.ISDISABLED1 + "><i class=\"fa fa-file-text\"></i></div><div class=\"smart-timeline-time\"><small>" + value.YR + "</small></div><div class=\"smart-timeline-content\"><div style=\"display:inline-block; min-height:60px; width:100%;\">";
                    }
                    valData += "<div data-id=\"" + value.ID + "\" data-beginyr=\"" + value.BEGINYR + "\" data-endyr=\"" + value.ENDYR + "\" class=\"bodlogolist well well-sm " + value.ISDISABLED3 + " txt-color-white text-center font-xs\" style=\"width: 30%; padding: 4px 0px; margin: 0 5px 0 0; float: left; height:60px; margin-top: 5px;\"><div class=\"btn-group pull-right\" style=\"margin-top: -4px; margin-right: 0;\"><button class=\"btn " + value.ISDISABLED3 + " btn-xs\" rel=\"tooltip\" data-placement=\"top\" data-original-title=\"Засах\" onclick=\"showAddEdit(this, 'засах');\" data-target=\"#pModal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn " + value.ISDISABLED3 + " btn-xs\" rel=\"tooltip\" data-placement=\"top\" data-original-title=\"Устгах\" onclick=\"showDelete(this);\"><i class=\"fa fa fa fa-trash-o\"></i></button></div><a href=\"../#pg/policy.aspx?id=" + value.ID + "\" style=\"color:#FFF;\" class=\"font-md\">" + value.NAME + " /" + value.YRNAME + "/</a></div>";
                    strYr = value.YR;
                });
                if (valData == '') "<div class=\"col-md-12\"><i>Мэдээлэл олдсонгүй...</i></div>";
                else {
                    valData = "<ul class=\"smart-timeline-list\">" + valData + "</div></div></li></ul>";
                }
                $("#policytypeList").html(valData);
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
            pModalInputIsactive: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pModalSelectYearbegin: {
                group: '.col-md-6',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pModalSelectYearend: {
                group: '.col-md-6',
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
                    data: '{"qry":"INSERT INTO TBL_POLICYTYPE (ID, NAME, ISACTIVE, BEGINYR, ENDYR, CREATED_STAFFID, CREATED_DATE) VALUES (TBLLASTID(\'TBL_POLICYTYPE\'), \'' + replaceDisplayToDatabase($.trim($('#pModalInputName').val())) + '\', ' + $('input[name="pModalInputIsactive"]:checked').val() + ', ' + $('#pModalSelectYearbegin option:selected').val() + ', ' + $('#pModalSelectYearend option:selected').val() + ',' + $('#indexUserId').text() + ', sysdate)"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                            data: '{"qry":"SELECT MAX(ID) FROM TBL_POLICYTYPE"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                dataBindDataTable();
                                $('#pModal').modal('hide');
                                smallBox('Бодлогын баримт бичиг', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                            },
                            failure: function (response) {
                                alert('FAILURE: ' + response.d);
                            },
                            error: function (xhr, status, error) {
                                window.location = '../#pg/error500.aspx';
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
            else if ($('#pModalHeaderLabel').text() == 'засах') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"UPDATE TBL_POLICYTYPE SET NAME=\'' + replaceDisplayToDatabase($.trim($('#pModalInputName').val())) + '\', ISACTIVE=' + $('input[name="pModalInputIsactive"]:checked').val() + ', BEGINYR=' + $('#pModalSelectYearbegin option:selected').val() + ', ENDYR=' + $('#pModalSelectYearend option:selected').val() + ', UPDATED_STAFFID=' + $('#indexUserId').text() + ', UPDATED_DATE=sysdate WHERE ID=' + $("#pModalID").text() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindDataTable();
                        $('#pModal').modal('hide');
                        smallBox('Бодлогын баримт бичиг', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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

    $('.bodlogolist').hover(function () {
        //$(this).toggleClass('animated pulse');
    });
</script>