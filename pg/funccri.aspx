<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="funccri.aspx.cs" Inherits="LMWebApp.pg.funccri" %>
<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
    <h1 class="page-title txt-color-blueDark">
    <i class="fa-fw fa fa-home"></i>
    <span>> Чиг үүргийн шалгуур үзүүлэлт</span>
    </h1>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
            <ul class="nav nav-tabs bordered">
                <li id="funccriTab1Li" runat="server" class="active">
                    <a data-toggle="tab" href="#funccriTab1">
                        Суурь үзүүлэлт
                    </a>
                </li>
                <li id="funccriTab2Li" runat="server">
                    <a data-toggle="tab" href="#funccriTab2">
                        Гүйцэтгэлийн үзүүлэлт
                    </a>
                </li>
                <li id="funccriTab3Li" runat="server">
                    <a data-toggle="tab" href="#funccriTab3">
                        <i class="fa fa-fw fa-lg fa-bar-chart-o "></i>
                        Биелэлт | Үнэлгээ
                    </a>
                </li>
                <li id="funccriTab4Li" runat="server">
                    <a data-toggle="tab" href="#funccriTab4">
                        <i class="fa fa-fw fa-lg fa-file-text "></i>
                        Тайлан
                    </a>
                </li>
            </ul>
            <div id="funccriTabContent" class="tab-content">
                <div id="funccriTab1" runat="server" class="tab-pane active">
                    <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                            <h2><span id="funccriCurrentYear1" runat="server">0000</span> оны Суурь үзүүлэлт </h2>
                            <div class="widget-toolbar">
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="funcriTab1SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div> 
                            </div>
                        </header>
                        <div>
                             <div class="Colvis TableTools"  style="right:270px; top:5px; z-index:5;">
                                <button id="funccriTab1Add" runat="server" class="ColVis_Button TableTools_Button ColVis_MasterButton btn btn btn-primary btn-sm" data-target="#funccriTab1Modal" data-toggle="modal"><i class="fa fa-plus"></i> Нэмэх</button>
                            </div>
                            <div class="Colvis TableTools" style="right: 125px;top: 5px;z-index: 5;width: 85px;"><select id="funccriTab1SelectGazar" name="funccriTab1SelectGazar" runat="server" class="form-control" style="padding:0 0; height:32px;"><option value="0">Бүгд</option></select></div>
                            <div class="Colvis TableTools" style="right:220px; top:5px; z-index:5; margin-top:7px;"><label>Газар: </label></div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div id="loaderTab1" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="funccriTab1DatatableDiv" class="widget-body no-padding">
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div id="funccriTab2" runat="server" class="tab-pane">
                    <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                            <h2><span id="funccriCurrentYear2" runat="server">0000</span> оны Гүйцэтгэлийн үзүүлэлт</h2>
                            <div class="widget-toolbar">
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="funcriTab2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div> 
                            </div>
                        </header>
                        <div>
                            <div class="Colvis TableTools"  style="right:270px; top:5px; z-index:5;">
                                <button id="funccriTab2Add" runat="server" class="ColVis_Button TableTools_Button ColVis_MasterButton btn btn btn-primary btn-sm" data-target="#funccriTab2Modal" data-toggle="modal"><i class="fa fa-plus"></i> Нэмэх</button>
                            </div>
                            <div class="Colvis TableTools" style="right: 125px;top: 5px;z-index: 5;width: 85px;"><select id="funccriTab2SelectGazar" name="funccriTab2SelectGazar" runat="server" class="form-control" style="padding:0 0; height:32px;"><option value="0">Бүгд</option></select></div>
                            <div class="Colvis TableTools" style="right:220px; top:5px; z-index:5; margin-top:7px;"><label>Газар: </label></div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div id="loaderTab2" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="funccriTab2DatatableDiv" class="widget-body no-padding">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div id="funccriTab3" runat="server" class="tab-pane">
                    <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                            <h2><span id="funccriCurrentYear3" runat="server">0000</span> оны <span id="funccriCurrentQuarter3" runat="server">00</span> улиралын Гүйцэтгэлийн үзүүлэлтийн биелэлт, үнэлгээ</h2>
                            <div class="widget-toolbar">
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="funcriTab3SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="funcriTab3SelectQuarter" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">Улирал 1</option><option value="2">Улирал 2</option><option value="3">Улирал 3</option><option value="4">Улирал 4</option></select>
                                </div> 
                            </div>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right: 125px;top: 5px;z-index: 5;width: 85px;"><select id="funccriTab3SelectGazar" name="funccriTab3SelectGazar" runat="server" class="form-control" style="padding:0 0; height:32px;"><option value="0">Бүгд</option></select></div>
                            <div class="Colvis TableTools" style="right:220px; top:5px; z-index:5; margin-top:7px;"><label>Газар: </label></div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div id="loaderTab3" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="funccriTab3DatatableDiv" class="widget-body no-padding">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div id="funccriTab4" runat="server" class="tab-pane">
                    <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                        <div style="width:50%; float:left;">
                            <div style="width:95px; float:left; margin-right:10px;"><select id="funccriTab4SelectQuarter" name="funccriTab4SelectQuarter" runat="server" class="form-control" style="padding:1px"><option value="1">Улирал 1</option><option value="2">Улирал 2</option><option value="3">Улирал 3</option><option value="4">Улирал 4</option></select></div>
                            <div style="width:60px; float:left; margin-right:10px;"><select id="funccriTab4SelectYear" name="funccriTab4SelectYear" runat="server" class="form-control" style="padding:1px"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option></select></div>
                        </div>
                        <div style="text-align:right; width:50%; float:left;">
                            <div class="btn-group" style="position:absolute; right:245px;">                                
                                <button class="btn dropdown-toggle btn-sm btn-primary" data-toggle="dropdown"><span class="fa fa-bar-chart-o"></span> Графикаар харах <i class="fa fa-caret-down"></i></button>
                                <ul class="dropdown-menu js-status-update pull-right" style="padding:10px; width:130px; z-index:10; position:absolute;">
                                    <li>
                                        <a id="funccriTab4Datatable" style="cursor:pointer;">Хүснэгтээр</a>
                                    </li>
                                    <li>
                                        <a id="funccriTab4ChartColumn" style="cursor:pointer;">Баганан график</a>
                                    </li>
                                </ul>
                            </div> 
                            <img id="funccriTab4ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" title="PDF руу татах" onclick="exportPdf('#divfunccriTab4')" />
                            <img id="funccriTab4ExportWord" src="../img/word-icon.png" style="cursor:pointer;" title="Word руу татах" onclick="exportWord('#divfunccriTab4')"/>
                            <img id="funccriTab4ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" title="Excel руу татах" onclick="exportExcel('#divfunccriTab4')"/>
                            <button id="funccriTab4Print" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divfunccriTab4')"><span class="fa fa-print"></span> Хэвлэх </button>
                            <button id="funccriTab4Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                        </div>
                    </div>
                    <div id="loaderTab4" class="search-background">
                        <label>
                            <img width="64" height="" src="img/loading.gif"/>
                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                        </label>
                    </div> 
                    <div id="divfunccriTab4" runat="server" class="reports" style="margin:0 10px 10px 10px;">                        
                        <div style="text-align:left;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Батлагдсан журамд заасний дагуу газруудын чиг үүргийн шалгуур үзүүлэлтийн биелэлтэд үнэлгээ хийхэд <label id="divfunccriTab4Data1" runat="server" style="font-weight:bold;">0</label> хувьтай байна. Биелэлтийн үнэлгээг үзүүлбэл:
                        </div>
                        <div id="divfunccriTab4Datatable" runat="server" style="display:block;"></div> 
                        <div id="divfunccriTab4Chart" style="display:none;"></div>                      
                    </div>
                </div>
            </div>
        </article>
    </div>
</section>
<div id="funccriTab1Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="funccriTab1ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Суурь үзүүлэлт&nbsp;<span id="funccriTab1ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div id="funccriID" class="form-group hide"></div>
                            <div class="form-group" style="display:block; overflow:hidden;">
                                Он: <label id="funccriTab1ModalLabelYear"></label>
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label class="col-md-2 control-label">Газар</label>
                                <div class="col-md-10">
                                    <select id="funccriTab1ModalSelectGazar" runat="server" name="funccriTab1ModalSelectGazar" class="form-control">
                                    </select>
                                </div>
                            </div> 
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label class="col-md-2 control-label">Дугаар</label>
                                <div class="col-md-10">
                                    <input id="funccriTab1ModalNo" name="funccriTab1ModalNo" class="form-control" type="text" required="" placeholder="Дугаар" value="" maxlength="100"/>
                                </div>
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label class="col-md-2 control-label">Суурь үзүүлэлт</label>
                                <div class="col-md-10">
                                    <textarea id="funccriTab1ModalName" name="funccriTab1ModalName" class="form-control" required="" placeholder="Суурь үзүүлэлт" rows="3"></textarea>
                                </div>
                            </div>                              
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                    <button id="funccriTab1Save" class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
                </div>
            </form>
        </div>
    </div>
</div>
<div id="funccriTab2Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="funccriTab2ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Гүйцэтгэлийн үзүүлэлт&nbsp;<span id="funccriTab2ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div id="funccriGuitsetgelID" class="form-group hide"></div>
                            <div class="form-group" style="display:block; overflow:hidden;">
                                Он: <label id="funccriTab2ModalLabelYear"></label>
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label class="col-md-2 control-label">Суурь үзүүлэлт</label>
                                <div class="col-md-10">
                                    <select id="funccriTab2ModalSelectSuuri" runat="server" name="funccriTab2ModalSelectSuuri" class="form-control">
                                    </select>
                                </div>
                            </div> 
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label class="col-md-2 control-label">Дугаар</label>
                                <div class="col-md-10">
                                    <input id="funccriTab2ModalNo" name="funccriTab2ModalNo" class="form-control" type="text" required="" placeholder="Дугаар" value="" maxlength="100"/>
                                </div>
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label class="col-md-2 control-label">Гүйцэтгэлийн үзүүлэлт</label>
                                <div class="col-md-10">
                                    <textarea id="funccriTab2ModalName" name="funccriTab2ModalName" class="form-control" required="" placeholder="Гүйцэтгэлийн үзүүлэлт" rows="3"></textarea>
                                </div>
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label class="col-md-2 control-label">Тайлбар</label>
                                <div class="col-md-10">
                                    <textarea id="funccriTab2ModalPossibleDeviationDescription" name="funccriTab2ModalPossibleDeviationDescription" class="form-control" required="" placeholder="Тайлбар" rows="3"></textarea>
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                    <button id="funccriTab2Save" class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
                </div>
            </form>
        </div>
    </div>
</div>
<div id="funccriTab3ImplModal" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false" style="display:none;z-index:99999;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> × </button>
                <h4 class="modal-title" >Биелэлт&nbsp;<span id="funccriTab3ImplModalHeaderLabel"></span></h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div id="funccriTab3ImplID" class="form-group hide"></div> 
                        <div class="form-group" style="margin-bottom:5px;">
                            Он: <label id="funccriTab3ImplModalYr"></label>&nbsp;|&nbsp;<label id="funccriTab3ImplModalQrtr"></label>
                        </div> 
                        <div class="form-group" style="margin-bottom:5px;">
                            Газар: <label id="funccriTab3ImplModalGazar"></label>
                        </div>
                        <div class="form-group" style="margin-bottom:5px;">
                            Суурь үзүүлэлт: <label id="funccriTab3ImplModalSuuri"></label>
                        </div>
                        <div class="form-group" style="height:20px;">
                            <label class="col-md-2 control-label">Биелэлт</label>
                        </div>
                        <div class="form-group" style="margin:0px; display:block; overflow:hidden;">
                            <div class="col-md-12"> 
                                <div style="width:100%; display: block; overflow: hidden; padding-bottom: 5px;">
                                    <div style="width:15%; float:right; text-align:right;">
                                        Тэмдэгт: <label id="funccriTab3ImplModalCharLength">0</label>/12000
                                    </div>
                                    <div style="width:17%; float:right; text-align:right;">
                                        <button id="funccriTab3ImplDelete" type="button" class="btn btn-labeled btn-danger" style="font-size: 12px; margin-top: -5px;">
                                            <span class="btn-label" style="padding: 3px 7px 3px 5px; width: 21px; height: 21px;">
                                                <i class="fa fa-trash-o"></i>
                                            </span>Биелэлт устгах
                                        </button>
                                    </div>                                    
                                    <div style="width:24%; float:right; text-align:right;">
                                        <button id="funccriTab3ImplDownload" type="button" class="btn btn-labeled btn-warning" style="font-size: 12px; margin-top: -3px;">
                                            <span class="btn-label" style="padding: 3px 7px 3px 5px; width: 21px; height: 21px;">
                                                <i class="glyphicon glyphicon-download-alt"></i>
                                            </span>Өмнөх улиралаас татах
                                        </button>
                                    </div>  
                                </div>
                                <textarea id="funccriTab3ImplModalImpl" name="funccriTab3ImplModalImpl"></textarea>
                                <script>
                                    CKEDITOR.replace('funccriTab3ImplModalImpl', {
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

                                    var editor = CKEDITOR.instances.funccriTab3ImplModalImpl;
                                    editor.on('key', function (evt) {
                                        $("#funccriTab3ImplModalCharLength").text(replaceDisplayToDatabase($.trim(evt.editor.getData())).length);
                                    }, editor.element.$);
                                </script>
                            </div>
                        </div>
                    </div>
                </div>               
            </div>
            <div class="modal-footer">
                <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                <button id="funccriTab3ImplSave" class="btn btn-success btn-sm" type="button"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
            </div>
        </div>
    </div>
</div>
<script>
    //pageSetUp();
    var globalAjaxVar = null;
    var pagefunction = function () {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/globalGetGazarListForDDL",
            data: '{yr:"' + $('#funcriTab1SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#funccriTab1SelectGazar").html('<option value="0">Бүгд</option>'+msg.d);
                showLoader('loaderTab1');
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/funccri_funccriTab1Datatable1",
                    data: '{yr:"' + $('#funcriTab1SelectYear option:selected').val() + '",brid:"' + $('#funccriTab1SelectGazar option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        $("#funccriTab1DatatableDiv").html(msg.d);
                        hideLoader('loaderTab1');
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "ws.aspx/globalGetGazarListForDDL",
                            data: '{yr:"' + $('#funcriTab2SelectYear option:selected').val() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                $("#funccriTab2SelectGazar").html('<option value="0">Бүгд</option>' + msg.d);
                                showLoader('loaderTab2');
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/funccri_funccriTab2Datatable1",
                                    data: '{yr:"' + $('#funcriTab2SelectYear option:selected').val() + '",brid:"' + $('#funccriTab2SelectGazar option:selected').val() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        $("#funccriTab2DatatableDiv").html(msg.d);
                                        hideLoader('loaderTab2');
                                        globalAjaxVar = $.ajax({
                                            type: "POST",
                                            url: "ws.aspx/globalGetGazarListForDDL",
                                            data: '{yr:"' + $('#funcriTab3SelectYear option:selected').val() + '"}',
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function (msg) {
                                                $("#funccriTab3SelectGazar").html('<option value="0">Бүгд</option>' + msg.d);
                                                showLoader('loaderTab3');
                                                globalAjaxVar = $.ajax({
                                                    type: "POST",
                                                    url: "ws.aspx/funccri_funccriTab3Datatable1",
                                                    data: '{yr:"' + $('#funcriTab3SelectYear option:selected').val() + '", qrtr:"' + $('#funcriTab3SelectQuarter option:selected').val() + '",brid:"' + $('#funccriTab3SelectGazar option:selected').val() + '"}',
                                                    contentType: "application/json; charset=utf-8",
                                                    dataType: "json",
                                                    success: function (msg) {
                                                        $("#funccriTab3DatatableDiv").html(replaceDatabaseToDisplay(msg.d));
                                                        hideLoader('loaderTab3');
                                                        showLoader('loaderTab4');
                                                        globalAjaxVar = $.ajax({
                                                            type: "POST",
                                                            url: "ws.aspx/funccri_funccriTab4Datatable1",
                                                            data: '{yr:"' + $('#funccriTab4SelectYear option:selected').val() + '",qrtr:"' + $('#funccriTab4SelectQuarter option:selected').val() + '"}',
                                                            contentType: "application/json; charset=utf-8",
                                                            dataType: "json",
                                                            success: function (msg) {
                                                                $("#divfunccriTab4Datatable").html(msg.d);
                                                                $('#divfunccriTab4Data1').text($('#funccriTab4Datatable tfoot tr').find('td:eq(1)').html());
                                                                $('#divfunccriTab4Chart').css("display", "none");
                                                                $('#divfunccriTab4Datatable').css("display", "block");
                                                                hideLoader('loaderTab4');
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
    var pagedestroy = function () {
        if (globalAjaxVar != null) {
            globalAjaxVar.abort();
            globalAjaxVar = null;
        }
    }
    pagefunction();
    //$(document).ready(function () {
    //    funccriTab1SetFirstControls();
    //    funccriTab2SetFirstControls();
    //    funccriTab3SetFirstControls();
    //    //dataBindTab1Datatable();
    //    //dataBindTab2Datatable();
    //    //dataBindTab2SuuriList();
    //    //dataBindTab3Datatable();
    //    dataBindTab4Datatable();
    //});
    //tab1
    function funccriTab1SetFirstControls() {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/globalGetGazarListForDDL",
            data: '{yr:"' + $('#funcriTab1SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#funccriTab1SelectGazar").html('<option value="0">Бүгд</option>' + msg.d);
                dataBindTab1Datatable();
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
            url: "ws.aspx/funccri_funccriTab1Datatable1",
            data: '{yr:"' + $('#funcriTab1SelectYear option:selected').val() + '",brid:"' + $('#funccriTab1SelectGazar option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#funccriTab1DatatableDiv").html(msg.d);
                hideLoader('loaderTab1');
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
    $("#funccriTab1Add").click(function () {
        $('#funccriTab1ModalHeaderLabel').text('нэмэх');
        $('#funccriTab1ModalLabelYear').text($('#funcriTab1SelectYear').val());
        $('#funccriTab1ModalNo').val('');
        $('#funccriTab1ModalName').val('');
        $('#funccriID').text('');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/globalGetGazarListForDDL",
            data: '{yr:"' + $('#funcriTab1SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#funccriTab1ModalSelectGazar").html('<option value="0">- Газар сонго -</option>' + msg.d);
                $('#funccriTab1ModalSelectGazar').val(0);
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
    });
    function showEditFunccriTab1Modal(el) {
        $('#funccriTab1ModalHeaderLabel').text('засах');
        $('#funccriTab1ModalLabelYear').text($('#funcriTab1SelectYear').val());
        $('#funccriID').text($(el).closest('tr').find('td:eq(0)').html());
        //$('#funccriTab1ModalSelectGazar').val($(el).closest('tr').find('td:eq(3)').html());
        $('#funccriTab1ModalNo').val($(el).closest('tr').find('td:eq(1)').html().split(' ')[0].split('.')[0]);
        $('#funccriTab1ModalName').val($(el).closest('tr').find('td:eq(1)').html().substr($(el).closest('tr').find('td:eq(1)').html().indexOf(" ") + 1));
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/globalGetGazarListForDDL",
            data: '{yr:"' + $('#funcriTab1SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#funccriTab1ModalSelectGazar").html('<option value="0">- Газар сонго -</option>' + msg.d);
                $('#funccriTab1ModalSelectGazar').val($(el).closest('tr').find('td:eq(3)').html());
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
    $("#funcriTab1SelectYear").change(function () {
        $('#funccriCurrentYear1').text($(this).val());
        funccriTab1SetFirstControls();
        //dataBindTab1Datatable();
    });
    $("#funccriTab1SelectGazar").change(function () {
        dataBindTab1Datatable();
    });    
    function showDeleteFunccriTab1Modal(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteScalar",
            data: '{qry:"SELECT COUNT(ID) FROM TBL_FUNCCRI_GUITSETGEL WHERE FUNCCRI_SUURI_ID=' + $(el).closest('tr').find('td:eq(0)').html() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    if (arrMsg[1] != "0") {
                        alert("Энэ суурь үзүүлэлтэд хамааралтай гүйцэтгэлийн үзүүлэлт орсон тул устгах боломжгүй байна!");
                    }
                    else {
                        $.SmartMessageBox({
                            title: "Анхааруулга!",
                            content: "\"" + $(el).closest('tr').find('td:eq(3)').html() + "\" Суурь үзүүлэлтийг устгах уу?",
                            buttons: '[Үгүй][Тийм]'
                        }, function (ButtonPressed) {
                            if (ButtonPressed === "Тийм") {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"DELETE FROM TBL_FUNCCRI_SUURI WHERE ID=' + $(el).closest('tr').find('td:eq(0)').html() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") window.location = "../#pg/error500.aspx";
                                        else {
                                            $.smallBox({
                                                title: "Сонгосон суурь үзүүлэлт",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай устлаа...</i>",
                                                color: "#659265",
                                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                timeout: 1000
                                            });
                                        }
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
                        });
                    }
                }
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
    $('#funccriTab1ModalForm').submit(function (e) {
        if (!$('#funccriTab1ModalSelectGazar').valid() || !$('#funccriTab1ModalNo').valid() || !$('#funccriTab1ModalName').valid()) {
            e.preventDefault();
        }
        else {
            if ($("#funccriTab1ModalHeaderLabel").html() == "нэмэх") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/WSOracleExecuteScalar",
                    data: '{qry:"SELECT COUNT(1) FROM TBL_FUNCCRI_SUURI WHERE YR=(SELECT YR FROM TBL_SYSSET WHERE ACTIVE=1) AND NO=' + $.trim($('#funccriTab1ModalNo').val()) + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        var varMsg = msg.d;
                        var arrMsg = varMsg.split("~");
                        if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                        else {
                            if (arrMsg[1] != "0") {
                                alert($('#indexCurrentYear').text() + " онд " + $.trim($('#funccriTab1ModalNo').val())+" дугаартай суурь үзүүлэлт орсон байна!");
                            }
                            else {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"INSERT INTO TBL_FUNCCRI_SUURI (ID, YR, BR_ID, NO, NAME, CREATED_STAFFID, CREATED_DATE) VALUES (TBLLASTID(\'TBL_FUNCCRI_SUURI\'), (SELECT YR FROM TBL_SYSSET WHERE ACTIVE=1), ' + $('#funccriTab1ModalSelectGazar option:selected').val() + ', ' + $.trim($('#funccriTab1ModalNo').val()) + ', \'' + $.trim($('#funccriTab1ModalName').val()) + '\', ' + '<%= Session["LM_UserID"] %>' + ', sysdate)"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindTab1Datatable();
                                            //dataBindTab2SuuriList();
                                            $('#funccriTab1Modal').modal('hide');
                                            $.smallBox({
                                                title: "Суурь үзүүлэлт",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
                                                color: "#659265",
                                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                timeout: 1000
                                            });
                                        }
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
                        }
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
            else {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/WSOracleExecuteScalar",
                    data: '{qry:"SELECT COUNT(1) FROM TBL_FUNCCRI_SUURI WHERE YR=(SELECT YR FROM TBL_SYSSET WHERE ACTIVE=1) AND ID!=' + $('#funccriID').text() + ' AND NO=' + $.trim($('#funccriTab1ModalNo').val()) + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        var varMsg = msg.d;
                        var arrMsg = varMsg.split("~");
                        if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                        else {
                            if (arrMsg[1] != "0") {
                                alert($('#indexCurrentYear').text() + " онд " + $.trim($('#funccriTab1ModalNo').val())+" дугаартай суурь үзүүлэлт орсон байна!");
                            }
                            else {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"UPDATE TBL_FUNCCRI_SUURI SET BR_ID=' + $('#funccriTab1ModalSelectGazar option:selected').val() + ', NO=' + $.trim($('#funccriTab1ModalNo').val()) + ', NAME=\'' + $.trim($('#funccriTab1ModalName').val()) + '\', MODIFY_STAFFID=' + '<%= Session["LM_UserID"] %>' + ', MODIFY_DATE=sysdate WHERE ID=' + $('#funccriID').text() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindTab1Datatable();
                                            //dataBindTab2SuuriList();
                                            $('#funccriTab1Modal').modal('hide');
                                            $.smallBox({
                                                title: "Суурь үзүүлэлт",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай засварлагдлаа...</i>",
                                                color: "#659265",
                                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                timeout: 1000
                                            });
                                        }
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
                        }
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
        }
    });
    //tab2
    function funccriTab2SetFirstControls() {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/globalGetGazarListForDDL",
            data: '{yr:"' + $('#funcriTab2SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#funccriTab2SelectGazar").html('<option value="0">- Газар сонго -</option>' + msg.d);
                dataBindTab2Datatable();
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
    function dataBindTab2Datatable() {
        showLoader('loaderTab2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/funccri_funccriTab2Datatable1",
            data: '{yr:"' + $('#funcriTab2SelectYear option:selected').val() + '",brid:"' + $('#funccriTab2SelectGazar option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#funccriTab2DatatableDiv").html(msg.d);
                hideLoader('loaderTab2');
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
    function dataBindTab2SuuriList() {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/funccri_funccriTab2SuuriListForDDL",
            data: '{yr:"' + $('#funcriTab2SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#funccriTab2ModalSelectSuuri").html(msg.d);
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
    $("#funcriTab2SelectYear").change(function () {
        $('#funccriCurrentYear2').text($(this).val());
        funccriTab2SetFirstControls();
        //dataBindTab2Datatable();
    });
    $("#funccriTab2SelectGazar").change(function () {
        dataBindTab2Datatable();
    });
    function showEditFunccriTab2Modal(el) {
        $('#funccriTab2ModalHeaderLabel').text('засах');
        $('#funccriTab2ModalLabelYear').text($('#funcriTab2SelectYear').val());        
        $('#funccriGuitsetgelID').text($(el).closest('tr').find('td:eq(0)').html());
        //$('#funccriTab2ModalSelectSuuri').val($(el).closest('tr').find('td:eq(1)').html());
        $('#funccriTab2ModalNo').val($(el).closest('tr').find('td:eq(2)').html().split(' ')[0].split('.')[0]);
        $('#funccriTab2ModalName').val($(el).closest('tr').find('td:eq(2)').html().substr($(el).closest('tr').find('td:eq(2)').html().indexOf(" ") + 1));
        $('#funccriTab2ModalPossibleDeviationDescription').val($(el).closest('tr').find('td:eq(3)').html());
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/funccri_funccriTab2SuuriListForDDL",
            data: '{yr:"' + $('#funcriTab2SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#funccriTab2ModalSelectSuuri").html(msg.d);
                $('#funccriTab2ModalSelectSuuri').val($(el).closest('tr').find('td:eq(1)').html());
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
    function showDeleteFunccriTab2Modal(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteScalar",
            data: '{qry:"SELECT COUNT(ID) FROM TBL_FUNCCRI_GUITSETGEL_IMPL WHERE FUNCCRI_GUITSETGEL_ID=' + $(el).closest('tr').find('td:eq(0)').html() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    if (arrMsg[1] != "0") {
                        alert("Энэ гүйцэтгэлийн үзүүлэлтэд хамааралтай биелэлт орсон тул устгах боломжгүй байна!");
                    }
                    else {
                        $.SmartMessageBox({
                            title: "Анхааруулга!",
                            content: "\"" + $(el).closest('tr').find('td:eq(2)').html() + "\" Гүйцэтгэлийн үзүүлэлтийг устгах уу?",
                            buttons: '[Үгүй][Тийм]'
                        }, function (ButtonPressed) {
                            if (ButtonPressed === "Тийм") {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"DELETE FROM TBL_FUNCCRI_GUITSETGEL WHERE ID=' + $(el).closest('tr').find('td:eq(0)').html() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") window.location = "../#pg/error500.aspx";
                                        else {
                                            $.smallBox({
                                                title: "Сонгосон гүйцэтгэлийн үзүүлэлт",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай устлаа...</i>",
                                                color: "#659265",
                                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                timeout: 1000
                                            });
                                        }
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
                        });
                    }
                }
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
    $("#funccriTab2Add").click(function () {
        $('#funccriTab2ModalHeaderLabel').text('нэмэх');
        $('#funccriTab2ModalLabelYear').text($('#funcriTab2SelectYear').val());
        dataBindTab2SuuriList();
        $('#funccriGuitsetgelID').text('');
        $('#funccriTab2ModalSelectSuuri').val(0);
        $('#funccriTab2ModalNo').val('');
        $('#funccriTab2ModalName').val('');
        $('#funccriTab2ModalPossibleDeviationDescription').val('');
    });
    $('#funccriTab2ModalForm').submit(function (e) {
        if (!$('#funccriTab2ModalSelectSuuri').valid() || !$('#funccriTab2ModalNo').valid() || !$('#funccriTab2ModalName').valid()) {
            e.preventDefault();
        }
        else {
            var desc = "";
            if ($.trim($('#funccriTab2ModalPossibleDeviationDescription').val()) == '') desc = 'null';
            else desc = '\'' + $.trim($('#funccriTab2ModalPossibleDeviationDescription').val()) + '\'';
            if ($("#funccriTab2ModalHeaderLabel").html() == "нэмэх") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/WSOracleExecuteScalar",
                    data: '{qry:"SELECT COUNT(1) FROM TBL_FUNCCRI_GUITSETGEL WHERE FUNCCRI_SUURI_ID=' + $('#funccriTab2ModalSelectSuuri option:selected').val() + ' AND NO=' + $.trim($('#funccriTab2ModalNo').val()) + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        var varMsg = msg.d;
                        var arrMsg = varMsg.split("~");
                        if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                        else {
                            if (arrMsg[1] != "0") {
                                alert("\"" + $('#funccriTab2ModalSelectSuuri option:selected').text() + "\" суурь үзүүлэлтийн хүрээнд " + $.trim($('#funccriTab2ModalNo').val()) + " дугаартай гүйцэтгэлийн үзүүлэлт орсон байна!");
                            }
                            else {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"INSERT INTO TBL_FUNCCRI_GUITSETGEL (ID, FUNCCRI_SUURI_ID, NO, NAME, DESCRIPTION, CREATED_STAFFID, CREATED_DATE) VALUES (TBLLASTID(\'TBL_FUNCCRI_GUITSETGEL\'), ' + $('#funccriTab2ModalSelectSuuri option:selected').val() + ', ' + $.trim($('#funccriTab2ModalNo').val()) + ', \'' + $.trim($('#funccriTab2ModalName').val()) + '\', ' + desc + ', ' + '<%= Session["LM_UserID"] %>' + ', sysdate)"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindTab2Datatable();
                                            $('#funccriTab2Modal').modal('hide');
                                            $.smallBox({
                                                title: "Гүйцэтгэлийн үзүүлэлт",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
                                                color: "#659265",
                                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                timeout: 1000
                                            });
                                        }
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
                        }
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
            else {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/WSOracleExecuteScalar",
                    data: '{qry:"SELECT COUNT(1) FROM TBL_FUNCCRI_GUITSETGEL WHERE ID!=' + $('#funccriGuitsetgelID').text() + ' AND FUNCCRI_SUURI_ID=' + $('#funccriTab2ModalSelectSuuri option:selected').val() + ' AND NO=' + $.trim($('#funccriTab2ModalNo').val()) + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        var varMsg = msg.d;
                        var arrMsg = varMsg.split("~");
                        if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                        else {
                            if (arrMsg[1] != "0") {
                                alert("\"" + $('#funccriTab2ModalSelectSuuri option:selected').text() + "\" суурь үзүүлэлтийн хүрээнд " + $.trim($('#funccriTab2ModalNo').val()) + " дугаартай гүйцэтгэлийн үзүүлэлт орсон байна!");
                            }
                            else {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"UPDATE TBL_FUNCCRI_GUITSETGEL SET FUNCCRI_SUURI_ID=' + $('#funccriTab2ModalSelectSuuri option:selected').val() + ', NO=' + $.trim($('#funccriTab2ModalNo').val()) + ', NAME=\'' + $.trim($('#funccriTab2ModalName').val()) + '\', DESCRIPTION='+desc+', MODIFY_STAFFID=' + '<%= Session["LM_UserID"] %>' + ', MODIFY_DATE=sysdate WHERE ID=' + $('#funccriGuitsetgelID').text() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindTab2Datatable();
                                            $('#funccriTab2Modal').modal('hide');
                                            $.smallBox({
                                                title: "Гүйцэтгэлийн үзүүлэлт",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай засварлагдлаа...</i>",
                                                color: "#659265",
                                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                timeout: 1000
                                            });
                                        }
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
                        }
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
        }
    });
    //tab3
    function funccriTab3SetFirstControls() {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/globalGetGazarListForDDL",
            data: '{yr:"' + $('#funcriTab3SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#funccriTab3SelectGazar").html('<option value="0">- Газар сонго -</option>' + msg.d);
                dataBindTab3Datatable();
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
    function dataBindTab3Datatable() {
        showLoader('loaderTab3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/funccri_funccriTab3Datatable1",
            data: '{yr:"' + $('#funcriTab3SelectYear option:selected').val() + '", qrtr:"' + $('#funcriTab3SelectQuarter option:selected').val() + '",brid:"' + $('#funccriTab3SelectGazar option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#funccriTab3DatatableDiv").html(replaceDatabaseToDisplay(msg.d));
                hideLoader('loaderTab3');
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
    $("#funcriTab3SelectYear").change(function () {
        $('#funccriCurrentYear3').text($(this).val());
        funccriTab3SetFirstControls();
        //dataBindTab3Datatable();
    });
    $("#funcriTab3SelectQuarter").change(function () {
        $('#funccriCurrentQuarter3').text($(this).val());
        dataBindTab3Datatable();
    });
    $("#funccriTab3SelectGazar").change(function () {
        dataBindTab3Datatable();
    });
    $(document).on('focus', '.eg-txta-eval-desc', function () {
        $(this).attr("rows", "4");
        $(this).parent().parent().css("height", "100px");
        $(this).css("height", "100px");
        $(this).css("z-index", "1");
    });
    $(document).on('blur', '.eg-txta-eval-desc', function () {
        $(this).attr("rows", "1");
        $(this).parent().parent().css("height", "25px");
        $(this).css("height", "25px");
        $(this).css("z-index", "");
    });
    function funccriTab3ImplEdit(el) {
        $('#funccriTab3ImplModalHeaderLabel').text($(el).attr('title').split(' ')[1]);
        $('#funccriTab3ImplID').text($(el).closest('tr').find('td:eq(0)').text());
        $('#funccriTab3ImplModalGazar').text($('#group-id-funccriTab3Datatable_' + $(el).closest('tr').attr("data-group")).find('td').html());
        $('#funccriTab3ImplModalYr').text($('#funcriTab3SelectYear option:selected').val());
        $('#funccriTab3ImplModalQrtr').text($('#funcriTab3SelectQuarter option:selected').text());
        $('#funccriTab3ImplModalSuuri').text($(el).closest('tr').find('td:eq(1)').text());
        if ($('#funcriTab3SelectQuarter option:selected').val() > 1) { $('#funccriTab3ImplDownload').css('display', 'block'); }
        else { $('#funccriTab3ImplDownload').css('display', 'none'); }
        if ($(el).attr('title').split(' ')[1] == "оруулах") {
            CKEDITOR.instances.funccriTab3ImplModalImpl.setData("");
            $('#funccriTab3ImplModalCharLength').text("0");
        }
        else {
            var myimpl = '';
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteScalar",
                data: '{qry:"SELECT IMPL FROM TBL_FUNCCRI_SUURI_IMPL WHERE FUNCCRI_SUURI_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND QRTR=' + $('#funcriTab3SelectQuarter option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    var varMsg = msg.d;
                    var arrMsg = varMsg.split("~");
                    if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                    else {
                        myimpl += arrMsg[1];
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "ws.aspx/WSOracleExecuteScalar",
                            data: '{qry:"SELECT IMPL1 FROM TBL_FUNCCRI_SUURI_IMPL WHERE FUNCCRI_SUURI_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND QRTR=' + $('#funcriTab3SelectQuarter option:selected').val() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                var varMsg = msg.d;
                                var arrMsg = varMsg.split("~");
                                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                                else {
                                    myimpl += arrMsg[1];
                                    globalAjaxVar = $.ajax({
                                        type: "POST",
                                        url: "ws.aspx/WSOracleExecuteScalar",
                                        data: '{qry:"SELECT IMPL2 FROM TBL_FUNCCRI_SUURI_IMPL WHERE FUNCCRI_SUURI_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND QRTR=' + $('#funcriTab3SelectQuarter option:selected').val() + '"}',
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function (msg) {
                                            var varMsg = msg.d;
                                            var arrMsg = varMsg.split("~");
                                            if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                                            else {
                                                myimpl += arrMsg[1];
                                                globalAjaxVar = $.ajax({
                                                    type: "POST",
                                                    url: "ws.aspx/WSOracleExecuteScalar",
                                                    data: '{qry:"SELECT IMPL3 FROM TBL_FUNCCRI_SUURI_IMPL WHERE FUNCCRI_SUURI_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND QRTR=' + $('#funcriTab3SelectQuarter option:selected').val() + '"}',
                                                    contentType: "application/json; charset=utf-8",
                                                    dataType: "json",
                                                    success: function (msg) {
                                                        var varMsg = msg.d;
                                                        var arrMsg = varMsg.split("~");
                                                        if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                                                        else {
                                                            myimpl += arrMsg[1];
                                                            globalAjaxVar = $.ajax({
                                                                type: "POST",
                                                                url: "ws.aspx/WSOracleExecuteScalar",
                                                                data: '{qry:"SELECT IMPL4 FROM TBL_FUNCCRI_SUURI_IMPL WHERE FUNCCRI_SUURI_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND QRTR=' + $('#funcriTab3SelectQuarter option:selected').val() + '"}',
                                                                contentType: "application/json; charset=utf-8",
                                                                dataType: "json",
                                                                success: function (msg) {
                                                                    var varMsg = msg.d;
                                                                    var arrMsg = varMsg.split("~");
                                                                    if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                                                                    else {
                                                                        myimpl += arrMsg[1];
                                                                        globalAjaxVar = $.ajax({
                                                                            type: "POST",
                                                                            url: "ws.aspx/WSOracleExecuteScalar",
                                                                            data: '{qry:"SELECT IMPL5 FROM TBL_FUNCCRI_SUURI_IMPL WHERE FUNCCRI_SUURI_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND QRTR=' + $('#funcriTab3SelectQuarter option:selected').val() + '"}',
                                                                            contentType: "application/json; charset=utf-8",
                                                                            dataType: "json",
                                                                            success: function (msg) {
                                                                                var varMsg = msg.d;
                                                                                var arrMsg = varMsg.split("~");
                                                                                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                                                                                else {
                                                                                    myimpl += arrMsg[1];
                                                                                    CKEDITOR.instances.funccriTab3ImplModalImpl.setData(replaceDatabaseToDisplay(myimpl));
                                                                                    $("#funccriTab3ImplModalCharLength").text(myimpl.length);
                                                                                }
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
    }
    $("#funccriTab3ImplSave").click(function () {
        if ($.trim(CKEDITOR.instances.funccriTab3ImplModalImpl.getData()) == "") {
            alert("Биелэлт заавал оруулна уу!");
        }
        else {
            if (replaceDisplayToDatabase($.trim(CKEDITOR.instances.funccriTab3ImplModalImpl.getData())).length > 12000) {
                $("#funccriTab3ImplModalCharLength").text(replaceDisplayToDatabase($.trim(CKEDITOR.instances.funccriTab3ImplModalImpl.getData())).length);
                alert("Биелэлт уртдаа 12000 тэмдэгт авна!");
            }
            else {
                var impl = "", impl1 = "", impl2 = "", impl3 = "", impl4 = "", impl5 = "";
                impl = replaceDisplayToDatabase($.trim(CKEDITOR.instances.funccriTab3ImplModalImpl.getData())).substr(0, 2000);
                impl1 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.funccriTab3ImplModalImpl.getData())).substr(2000, 2000);
                impl2 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.funccriTab3ImplModalImpl.getData())).substr(4000, 2000);
                impl3 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.funccriTab3ImplModalImpl.getData())).substr(6000, 2000);
                impl4 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.funccriTab3ImplModalImpl.getData())).substr(8000, 2000);
                impl5 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.funccriTab3ImplModalImpl.getData())).substr(10000, 2000);
                if (impl.length == 0) impl = "none";
                if (impl1.length == 0) impl1 = "none";
                if (impl2.length == 0) impl2 = "none";
                if (impl3.length == 0) impl3 = "none";
                if (impl4.length == 0) impl4 = "none";
                if (impl5.length == 0) impl5 = "none";
                if ($("#funccriTab3ImplModalHeaderLabel").html() == "оруулах") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "ws.aspx/WSOracleExecuteNonQuery",
                        data: '{qry:"INSERT INTO TBL_FUNCCRI_SUURI_IMPL (ID, FUNCCRI_SUURI_ID, QRTR, IMPL, IMPL1, IMPL2, IMPL3, IMPL4, IMPL5, IMPL_CREATED_STAFFID, IMPL_CREATED_DATE) VALUES (TBLLASTID(\'TBL_FUNCCRI_SUURI_IMPL\'), ' + $('#funccriTab3ImplID').text() + ', ' + $('#funcriTab3SelectQuarter option:selected').val() + ', REPLACE(\'' + impl + '\',\'none\',null), REPLACE(\'' + impl1 + '\',\'none\',null), REPLACE(\'' + impl2 + '\',\'none\',null), REPLACE(\'' + impl3 + '\',\'none\',null), REPLACE(\'' + impl4 + '\',\'none\',null), REPLACE(\'' + impl5 + '\',\'none\',null), ' + '<%= Session["LM_UserID"] %>' + ', sysdate)"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (msg) {
                            if (msg.d == "0") { $('#funccriTab3ImplModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                            else {
                                $('#funccriTab3Datatable > tbody  > tr').each(function () {
                                    if ($('td:eq(0)', this).html() == $('#funccriTab3ImplID').text()) {
                                        $('td:eq(2)', this).html($.trim(CKEDITOR.instances.funccriTab3ImplModalImpl.getData()));
                                        $('td:eq(3)', this).find('img').attr("src", "../img/green-circle.png");
                                        $('td:eq(3)', this).find('img').attr("alt", "Биелэлт засах");
                                        return false;
                                    }
                                });
                                $('#funccriTab3ImplModal').modal('hide');
                                $.smallBox({
                                    title: "Биелэлт",
                                    content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
                                    color: "#659265",
                                    iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                    timeout: 1000
                                });
                            }
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
                else {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "ws.aspx/WSOracleExecuteNonQuery",
                        data: '{qry:"UPDATE TBL_FUNCCRI_SUURI_IMPL SET IMPL=REPLACE(\'' + impl + '\',\'none\',null), IMPL1=REPLACE(\'' + impl1 + '\',\'none\',null), IMPL2=REPLACE(\'' + impl2 + '\',\'none\',null), IMPL3=REPLACE(\'' + impl3 + '\',\'none\',null), IMPL4=REPLACE(\'' + impl4 + '\',\'none\',null), IMPL5=REPLACE(\'' + impl5 + '\',\'none\',null), IMPL_MODIFY_STAFFID=' + '<%= Session["LM_UserID"] %>' + ', IMPL_MODIFY_DATE=sysdate WHERE QRTR=' + $('#funcriTab3SelectQuarter option:selected').val() + ' AND FUNCCRI_SUURI_ID=' + $("#funccriTab3ImplID").text() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (msg) {
                            if (msg.d == "0") { $('#funccriTab3ImplModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                            else {
                                $('#funccriTab3Datatable > tbody  > tr').each(function () {
                                    if ($('td:eq(0)', this).html() == $('#funccriTab3ImplID').text()) {
                                        $('td:eq(2)', this).html($.trim(CKEDITOR.instances.funccriTab3ImplModalImpl.getData()));
                                        return false;
                                    }
                                });
                                $('#funccriTab3ImplModal').modal('hide');
                                $.smallBox({
                                    title: "Биелэлт",
                                    content: "<i class='fa fa-clock-o'></i> <i>Амжилттай засагдлаа...</i>",
                                    color: "#659265",
                                    iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                    timeout: 1000
                                });
                            }
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
            }
        }
    });
    $('#funccriTab3ImplDelete').click(function () {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Та биелэлт устгахдаа итгэлтэй байна уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/WSOracleExecuteNonQuery",
                    data: '{qry:"DELETE FROM TBL_FUNCCRI_SUURI_IMPL WHERE FUNCCRI_SUURI_ID=' + $("#funccriTab3ImplID").text() + ' AND QRTR=' + $('#funcriTab3SelectQuarter option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        if (msg.d == "0") window.location = "../#pg/error500.aspx";
                        else {
                            CKEDITOR.instances.funccriTab3ImplModalImpl.setData("");
                            $("#funccriTab3ImplModalCharLength").text("0");
                            $('#funccriTab3Datatable > tbody  > tr').each(function () {
                                if ($('td:eq(0)', this).html() == $('#funccriTab3ImplID').text()) {
                                    $('td:eq(2)', this).html('');
                                    $('td:eq(3)', this).find('img').attr("src", "../img/red-circle.png");
                                    $('td:eq(3)', this).find('img').attr("alt", "Биелэлт оруулах");
                                    return false;
                                }
                            });
                            $('#funccriTab3ImplModal').modal('hide');
                            $.smallBox({
                                title: "Биелэлт",
                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай устлаа...</i>",
                                color: "#659265",
                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                timeout: 1000
                            });
                        }
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
        });
    });
    function saveEval(me) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteScalar",
            data: '{qry:"SELECT COUNT(ID) FROM TBL_FUNCCRI_SUURI_IMPL WHERE FUNCCRI_SUURI_ID=' + $(me).closest('tr').find('td:eq(0)').html() + ' AND QRTR=' + $('#funcriTab3SelectQuarter option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    if (arrMsg[1] == "0") {
                        $(me).val('none');
                        alert('Биелэлт ороогүй тул үнэлэх боломжгүй байна!');
                    }
                    else {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "ws.aspx/WSOracleExecuteNonQuery",
                            data: '{qry:"UPDATE TBL_FUNCCRI_SUURI_IMPL SET EVAL=' + $(me).val().replace('none', 'null') + ', EVAL_MODIFY_STAFFID=' + '<%= Session["LM_UserID"] %>' + ', EVAL_MODIFY_DATE=sysdate WHERE FUNCCRI_SUURI_ID=' + $(me).closest('tr').find('td:eq(0)').html() + ' AND QRTR=' + $('#funcriTab3SelectQuarter option:selected').val() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                                else {
                                    $.smallBox({
                                        title: "Үнэлгээ",
                                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
                                        color: "#659265",
                                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                        timeout: 1000
                                    });
                                    if ($(me).val() == "none") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-blueLight form-control'); $(me).css('border', 'none'); }
                                    else if ($(me).val() == "0" || $(me).val() == "10" || $(me).val() == "30") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-red form-control'); $(me).css('border', 'none'); }
                                    else if ($(me).val() == "50" || $(me).val() == "70") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-orange form-control'); $(me).css('border', 'none'); }
                                    else if ($(me).val() == "80" || $(me).val() == "90" || $(me).val() == "100") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-greenLight form-control'); $(me).css('border', 'none'); }
                                }
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
                }
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
    function saveEvalDesc(el) {
        var val = $.trim($(el).parent().find('textarea').val());
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteScalar",
            data: '{qry:"SELECT COUNT(ID) FROM TBL_FUNCCRI_SUURI_IMPL WHERE FUNCCRI_SUURI_ID=' + $(el).closest('tr').find('td:eq(0)').html() + ' AND QRTR=' + $('#funcriTab3SelectQuarter option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    if (arrMsg[1] == "0") {
                        alert('Биелэлт болон үнэлгээ ороогүй тул тайлбар оруулах боломжгүй байна!');
                    }
                    else {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "ws.aspx/WSOracleExecuteNonQuery",
                            data: '{qry:"UPDATE TBL_FUNCCRI_SUURI_IMPL SET EVAL_DESCRIPTION=\'' + val + '\' WHERE FUNCCRI_SUURI_ID=' + $(el).closest('tr').find('td:eq(0)').html() + ' AND QRTR=' + $('#funcriTab3SelectQuarter option:selected').val() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                                else {
                                    $.smallBox({
                                        title: "Үнэлгээний тайлбар",
                                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
                                        color: "#659265",
                                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                        timeout: 1000
                                    });
                                }
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
                }
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
    $('#funccriTab3ImplDownload').click(function () {
        var impl = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteScalar",
            data: '{qry:"SELECT IMPL FROM TBL_FUNCCRI_SUURI_IMPL WHERE QRTR=' + (parseInt($('#funcriTab3SelectQuarter option:selected').val()) - 1) + ' AND FUNCCRI_SUURI_ID=' + $('#funccriTab3ImplID').text() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    impl += arrMsg[1];
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "ws.aspx/WSOracleExecuteScalar",
                        data: '{qry:"SELECT IMPL1 FROM TBL_FUNCCRI_SUURI_IMPL WHERE QRTR=' + (parseInt($('#funcriTab3SelectQuarter option:selected').val()) - 1) + ' AND FUNCCRI_SUURI_ID=' + $('#funccriTab3ImplID').text() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (msg) {
                            var varMsg = msg.d;
                            var arrMsg = varMsg.split("~");
                            if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                            else {
                                impl += arrMsg[1];
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteScalar",
                                    data: '{qry:"SELECT IMPL2 FROM TBL_FUNCCRI_SUURI_IMPL WHERE QRTR=' + (parseInt($('#funcriTab3SelectQuarter option:selected').val()) - 1) + ' AND FUNCCRI_SUURI_ID=' + $('#funccriTab3ImplID').text() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        var varMsg = msg.d;
                                        var arrMsg = varMsg.split("~");
                                        if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                                        else {
                                            impl += arrMsg[1];
                                            globalAjaxVar = $.ajax({
                                                type: "POST",
                                                url: "ws.aspx/WSOracleExecuteScalar",
                                                data: '{qry:"SELECT IMPL3 FROM TBL_FUNCCRI_SUURI_IMPL WHERE QRTR=' + (parseInt($('#funcriTab3SelectQuarter option:selected').val()) - 1) + ' AND FUNCCRI_SUURI_ID=' + $('#funccriTab3ImplID').text() + '"}',
                                                contentType: "application/json; charset=utf-8",
                                                dataType: "json",
                                                success: function (msg) {
                                                    var varMsg = msg.d;
                                                    var arrMsg = varMsg.split("~");
                                                    if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                                                    else {
                                                        impl += arrMsg[1];
                                                        globalAjaxVar = $.ajax({
                                                            type: "POST",
                                                            url: "ws.aspx/WSOracleExecuteScalar",
                                                            data: '{qry:"SELECT IMPL4 FROM TBL_FUNCCRI_SUURI_IMPL WHERE QRTR=' + (parseInt($('#funcriTab3SelectQuarter option:selected').val()) - 1) + ' AND FUNCCRI_SUURI_ID=' + $('#funccriTab3ImplID').text() + '"}',
                                                            contentType: "application/json; charset=utf-8",
                                                            dataType: "json",
                                                            success: function (msg) {
                                                                var varMsg = msg.d;
                                                                var arrMsg = varMsg.split("~");
                                                                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                                                                else {
                                                                    impl += arrMsg[1];
                                                                    globalAjaxVar = $.ajax({
                                                                        type: "POST",
                                                                        url: "ws.aspx/WSOracleExecuteScalar",
                                                                        data: '{qry:"SELECT IMPL5 FROM TBL_FUNCCRI_SUURI_IMPL WHERE QRTR=' + (parseInt($('#funcriTab3SelectQuarter option:selected').val()) - 1) + ' AND FUNCCRI_SUURI_ID=' + $('#funccriTab3ImplID').text() + '"}',
                                                                        contentType: "application/json; charset=utf-8",
                                                                        dataType: "json",
                                                                        success: function (msg) {
                                                                            var varMsg = msg.d;
                                                                            var arrMsg = varMsg.split("~");
                                                                            if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                                                                            else {
                                                                                impl += arrMsg[1];
                                                                                CKEDITOR.instances.funccriTab3ImplModalImpl.setData(replaceDatabaseToDisplay(impl));
                                                                                $('#funccriTab3ImplModalCharLength').text(impl.length);
                                                                            }
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
    });
    //tab4
    function dataBindTab4Datatable() {
        showLoader('loaderTab4');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/funccri_funccriTab4Datatable1",
            data: '{yr:"' + $('#funccriTab4SelectYear option:selected').val() + '",qrtr:"' + $('#funccriTab4SelectQuarter option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divfunccriTab4Datatable").html(msg.d);
                $('#divfunccriTab4Data1').text($('#funccriTab4Datatable tfoot tr').find('td:eq(1)').html());
                $('#divfunccriTab4Chart').css("display", "none");
                $('#divfunccriTab4Datatable').css("display", "block");
                hideLoader('loaderTab4');
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
    $("#funccriTab4SelectYear").change(function () {
        dataBindTab4Datatable();
    });
    $("#funccriTab4SelectQuarter").change(function () {
        dataBindTab4Datatable();
    });
    $("#funccriTab4Refresh").click(function () {
        dataBindTab4Datatable();
    });
    $("#funccriTab4Datatable").click(function () {
        $('#divfunccriTab4Chart').css("display", "none");
        $('#divfunccriTab4Datatable').css("display", "block");
    });
    $("#funccriTab4ChartColumn").click(function () {
        drawChart('column');
        $('#divfunccriTab4Chart').css("display", "block");
        $('#divfunccriTab4Datatable').css("display", "none");
    });
    //google.load("visualization", "1", { 'callback': '', packages: ["corechart"] });
    function drawChart(type) {
        if (type == "column") {
            //showLoader('loaderTab4');
            //globalAjaxVar = $.ajax({
            //    type: "POST",
            //    url: "ws.aspx/funccri_funccriTab4Column",
            //    data: '{yr:"' + $("#funccriTab4SelectYear option:selected").val() + '", qrtr:"' + $("#funccriTab4SelectQuarter option:selected").val() + '"}',
            //    contentType: "application/json; charset=utf-8",
            //    dataType: "json",
            //    success: function (msg) {
            //        var jsonData = $.parseJSON(msg.d);
            //        var options = {
            //            title: 'Газруудын чиг үүргийн шалгуур үзүүлэлтийн биелэлт',
            //            hAxis: { title: 'Газар', titleTextStyle: { color: 'red' } },
            //            vAxis: { title: 'Хувь', titleTextStyle: { color: 'red' } },
            //            width: 1000, height: 400, bar: { groupWidth: "95%" }, legend: { position: "none" }
            //        };
            //        var data = new google.visualization.DataTable(jsonData);
            //        var chart = new google.visualization.ColumnChart(document.getElementById('divfunccriTab4Chart'));
            //        chart.draw(data, options);
            //        hideLoader('loaderTab4');
            //    },
            //    failure: function (response) {
            //        alert('FAILURE: ' + response.d);
            //    },
            //    error: function (xhr, status, error) {
            //        var err = eval("(" + xhr.responseText + ")");
            //        if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
            //        else window.location = '../#pg/error500.aspx';
            //    }
            //});
        }
    }


    loadScript("js/plugin/bootstrap-wizard/jquery.bootstrap.wizard.min.js", runBootstrapWizard);
    function runBootstrapWizard() {
        var $validatorTab1 = $("#funccriTab1ModalForm").validate({
            rules: {
                funccriTab1ModalSelectGazar: {
                    required: true,
                    min: 1
                },
                funccriTab1ModalNo: {
                    required: true,
                    maxlength: 3
                },
                funccriTab1ModalName: {
                    required: true,
                    maxlength: 1000
                },
            },
            messages: {
                funccriTab1ModalSelectGazar: {
                    required: "Газар заавал сонгоно уу",
                    min: "Газар төрөл заавал сонгоно уу"
                },
                funccriTab1ModalNo: {
                    required: "Дугаар заавал оруулна уу",
                    maxlength: "Дугаар уртдаа 3 тэмдэгт авна"
                },
                funccriTab1ModalName: {
                    required: "Суурь үзүүлэлт заавал оруулна уу",
                    maxlength: "Суурь үзүүлэлт уртдаа 1000 тэмдэгт авна"
                }
            },
            submitHandler: function (form) {
                return false;
            },
            highlight: function (element) {
                $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
            },
            unhighlight: function (element) {
                $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
            },
            errorElement: 'span',
            errorClass: 'help-block',
            errorPlacement: function (error, element) {
                if (element.parent('.input-group').length) {
                    error.insertAfter(element.parent());
                } else {
                    error.insertAfter(element);
                }
            }
        });
        var $validatorTab2 = $("#funccriTab2ModalForm").validate({
            rules: {
                funccriTab2ModalSelectSuuri: {
                    required: true,
                    min: 1
                },
                funccriTab2ModalNo: {
                    required: true,
                    maxlength: 3
                },
                funccriTab2ModalName: {
                    required: true,
                    maxlength: 1000
                },
                funccriTab2ModalPossibleDeviationDescription: {
                    required: false
                }
            },
            messages: {
                funccriTab2ModalSelectSuuri: {
                    required: "Суурь үзүүлэлт заавал сонгоно уу",
                    min: "Суурь үзүүлэлт заавал сонгоно уу"
                },
                funccriTab2ModalNo: {
                    required: "Дугаар заавал оруулна уу",
                    maxlength: "Дугаар уртдаа 3 тэмдэгт авна"
                },
                funccriTab2ModalName: {
                    required: "Гүйцэтгэлийн үзүүлэлт заавал оруулна уу",
                    maxlength: "Гүйцэтгэлийн үзүүлэлт уртдаа 1000 тэмдэгт авна"
                }
            },
            submitHandler: function (form) {
                return false;
            },
            highlight: function (element) {
                $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
            },
            unhighlight: function (element) {
                $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
            },
            errorElement: 'span',
            errorClass: 'help-block',
            errorPlacement: function (error, element) {
                if (element.parent('.input-group').length) {
                    error.insertAfter(element.parent());
                } else {
                    error.insertAfter(element);
                }
            }
        });
    }
</script>