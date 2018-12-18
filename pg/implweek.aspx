<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="implweek.aspx.cs" Inherits="LMWebApp.pg.implweek" %>
<style>
    .dt-toolbar {
        height:42px;
    }
</style>
<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
    <h1 class="page-title txt-color-blueDark">
    <i class="fa-fw fa fa-home"></i>
    <span>> Долоо хоногийн тайлан, төлөвлөгөө</span>
    </h1>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
            <ul class="nav nav-tabs bordered">
                <li id="implweekTab1Li" class="active" onclick="implweekDatabindTabs(this)">
                    <a data-toggle="tab" href="#implweekTab1">
                        Мэргэжилтний
                    </a>
                </li>
                <li id="implweekTab2Li" onclick="implweekDatabindTabs(this)">
                    <a data-toggle="tab" href="#implweekTab2">
                        Хэлтсийн
                    </a>
                </li>
                <li id="implweekTab3Li" onclick="implweekDatabindTabs(this)">
                    <a data-toggle="tab" href="#implweekTab3">
                        Газрын долоо хоногийн тайлан төлөвлөгөө
                    </a>
                </li>
                <li id="implweekTab4Li" onclick="implweekDatabindTabs(this)">
                    <a data-toggle="tab" href="#implweekTab4">
                        Хамрагдсан байдал
                    </a>
                </li>
            </ul>
            <div id="implweekTabContent" class="tab-content">
                <div id="implweekTab1" class="tab-pane active">
                    <article class="col-xs-12 col-sm-6 col-md-6 col-lg-6" style="padding:0 10px 0 0;">
                        <div class="jarviswidget jarviswidget-color-blue" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                            <header>
                                <span class="widget-icon"> 
                                    <i class="fa fa-table"></i> 
                                </span>
                                <h2> Мэргэжилтний долоо хоногийн тайлан </h2>
                                <div class="widget-toolbar"> 
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <select id="implweekTab1SelectImplWeek" name="implweekTab1SelectImplWeek" runat="server" class="form-control" style="padding:0 0; height:26px;"></select>
                                    </div> 
                                </div>
                                <div class="widget-toolbar">
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <select id="implweekTab1t1SelectYear" name="implweekTab1t1SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                    </div>
                                </div>
                                <div class="widget-toolbar">
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <button id="implweekTab1t1AddBtn" class="btn btn-primary btn-xs" type="button" data-target="#implweekImplModal" data-toggle="modal" onclick="showAddEditTab1t1(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
                                </div>
                                <div class="widget-toolbar">
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <button id="implweekTab1t1AttachBtn" class="btn btn-primary btn-xs" type="button" data-target="#implweekImplAttachModal" data-toggle="modal" onclick="showAttachTab1t1(this)"><i class="fa fa-paperclip"></i> Файл хавсаргах</button>
                                    </div>
                                </div>
                            </header>
                            <div>
                                <div class="Colvis TableTools" style="right:535px; top:4px; z-index:5; margin-top:7px;">Газар:</div>
                                <div class="Colvis TableTools" style="right:450px; top:4px; z-index:5;">
                                    <select id="implweekTab1t1SelectGazar" runat="server" class="form-control" style="padding:1px;"><option>ХХААБГ</option></select>
                                </div>
                                <div class="Colvis TableTools" style="right:400px; top:4px; z-index:5; margin-top:7px;"><label>Хэлтэс: </label></div>
                                <div class="Colvis TableTools" style="right:325px; top:4px; z-index:5;">
                                    <select id="implweekTab1t1SelectHeltes" runat="server" class="form-control" style="padding:1px;"><option>ХХААБГ</option></select>
                                </div>
                                <div class="Colvis TableTools" style="right:260px; top:4px; z-index:5; margin-top:7px;"><label>Ажилтан: </label></div>
                                <div class="Colvis TableTools" style="right:7px; top:4px; z-index:5;">
                                    <select id="implweekTab1t1SelectStaff" runat="server" class="form-control" style="padding:1px;"><option>Төслийн зөвлөх Г.Гүндсамба</option></select>
                                </div>
                                <div class="Colvis TableTools" style="left:0; top:10px; z-index:5;">
                                    <a id="implweekTab1t1AttachDownloadBtn" class="btn btn-link btn-xs" href="javascript:void(0);" style="font-size:12px;" download><i class="fa fa-paperclip"></i> Файл хавсаргаагүй байна</a>
                                </div>
                                <div id="loaderTab1t1" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divBindTab1t1Table" class="widget-body no-padding"></div>
                            </div>
                        </div>
                    </article>
                    <article class="col-xs-12 col-sm-6 col-md-6 col-lg-6" style="padding:0 0 0 10px;">
                        <div class="jarviswidget jarviswidget-color-blue" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                            <header>
                                <span class="widget-icon"> 
                                    <i class="fa fa-table"></i> 
                                </span>
                                <h2> Мэргэжилтний дараа долоо хоногийн төлөвлөгөө </h2>
                                <div class="widget-toolbar"> 
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <select id="implweekTab1SelectPlanWeek" name="implweekTab1SelectPlanWeek" runat="server" class="form-control" style="padding:0 0; height:26px;"></select>
                                    </div> 
                                </div>
                                <div class="widget-toolbar">
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <select id="implweekTab1t2SelectYear" name="implweekTab1t2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                    </div>
                                </div>
                                <div class="widget-toolbar">
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <button id="implweekTab1t2AddBtn" class="btn btn-primary btn-xs" type="button" data-target="#implweekPlanModal" data-toggle="modal" onclick="showAddEditTab1t2(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
                                </div>
                            </header>
                            <div>
                                <div class="Colvis TableTools" style="right:535px; top:4px; z-index:5; margin-top:7px;">Газар:</div>
                                <div class="Colvis TableTools" style="right:450px; top:4px; z-index:5;">
                                    <select id="implweekTab1t2SelectGazar" runat="server" class="form-control" style="padding:1px;"><option>ХХААБГ</option></select>
                                </div>
                                <div class="Colvis TableTools" style="right:400px; top:4px; z-index:5; margin-top:7px;"><label>Хэлтэс: </label></div>
                                <div class="Colvis TableTools" style="right:325px; top:4px; z-index:5;">
                                    <select id="implweekTab1t2SelectHeltes" runat="server" class="form-control" style="padding:1px;"><option>ХХААБГ</option></select>
                                </div>
                                <div class="Colvis TableTools" style="right:260px; top:4px; z-index:5; margin-top:7px;"><label>Ажилтан: </label></div>
                                <div class="Colvis TableTools" style="right:7px; top:4px; z-index:5;">
                                    <select id="implweekTab1t2SelectStaff" runat="server" class="form-control" style="padding:1px;"><option>Төслийн зөвлөх Г.Гүндсамба</option></select>
                                </div>
                                <div id="loaderTab1t2" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divBindTab1t2Table" class="widget-body no-padding"></div>
                            </div>
                        </div>
                    </article>
                </div>
                <div id="implweekTab2" class="tab-pane">
                    <article class="col-xs-12 col-sm-6 col-md-6 col-lg-6" style="padding:0 10px 0 0;">
                        <div class="jarviswidget jarviswidget-color-blue" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                            <header>
                                <span class="widget-icon"> 
                                    <i class="fa fa-table"></i> 
                                </span>
                                <h2> Хэлтсийн долоо хоногийн тайлан </h2>
                                <div class="widget-toolbar"> 
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <select id="implweekTab2SelectImplWeek" name="implweekTab2SelectImplWeek" runat="server" class="form-control" style="padding:0 0; height:26px;"></select>
                                    </div> 
                                </div>
                                <div class="widget-toolbar">
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <select id="implweekTab2t1SelectYear" name="implweekTab2t1SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                    </div>
                                </div>
                                <div id="implweekTab2t1AddBtnDiv" runat="server" class="widget-toolbar">
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <button id="implweekTab2t1AddBtn" class="btn btn-primary btn-xs" type="button" data-target="#implweekImplModal" data-toggle="modal" onclick="showAddEditTab2t1(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
                                </div>
                                <div id="implweekTab2t1AttachBtnDiv" runat="server" class="widget-toolbar">
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <button id="implweekTab2t1AttachBtn" class="btn btn-primary btn-xs" type="button" data-target="#implweekImplAttachModal" data-toggle="modal" onclick="showAttachTab2t1(this)"><i class="fa fa-paperclip"></i> Файл хавсаргах</button>
                                    </div>
                                </div>
                            </header>
                            <div>
                                <div id="implweekTab2t1ImportBtnDiv" runat="server" class="Colvis TableTools" style="right:265px; top:9px; z-index:5;">
                                    <button id="implweekTab2t1ImportBtn" class="btn btn-primary btn-xs" type="button" data-target="#implweekImplImportModal" data-toggle="modal" onclick="showImportTab2t1(this)"><i class="fa fa-download"></i> Мэргэжилтнээс татах</button>
                                </div>
                                <div class="Colvis TableTools" style="right:220px; top:4px; z-index:5; margin-top:7px;">Газар:</div>
                                <div class="Colvis TableTools" style="right:140px; top:4px; z-index:5;">
                                    <select id="implweekTab2t1SelectGazar" runat="server" class="form-control" style="padding:1px;"><option>ХХААБГ</option></select>
                                </div>
                                <div class="Colvis TableTools" style="right:90px; top:4px; z-index:5; margin-top:7px;"><label>Хэлтэс: </label></div>
                                <div class="Colvis TableTools" style="right:7px; top:4px; z-index:5;">
                                    <select id="implweekTab2t1SelectHeltes" runat="server" class="form-control" style="padding:1px;"><option>ХХААБГ</option></select>
                                </div>
                                <div class="Colvis TableTools" style="left:0; top:10px; z-index:5;">
                                    <a id="implweekTab2t1AttachDownloadBtn" class="btn btn-link btn-xs" href="javascript:void(0);" style="font-size:12px;" download><i class="fa fa-paperclip"></i> Файл хавсаргаагүй байна</a>
                                </div>
                                <div id="loaderTab2t1" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divBindTab2t1Table" class="widget-body no-padding"></div>
                            </div>
                        </div>
                    </article>
                    <article class="col-xs-12 col-sm-6 col-md-6 col-lg-6" style="padding:0 0 0 10px;">
                        <div class="jarviswidget jarviswidget-color-blue" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                            <header>
                                <span class="widget-icon"> 
                                    <i class="fa fa-table"></i> 
                                </span>
                                <h2> Хэлтсийн дараа долоо хоногийн төлөвлөгөө </h2>
                                <div class="widget-toolbar"> 
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <select id="implweekTab2SelectPlanWeek" name="implweekTab2SelectPlanWeek" runat="server" class="form-control" style="padding:0 0; height:26px;"></select>
                                    </div> 
                                </div>
                                <div class="widget-toolbar">
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <select id="implweekTab2t2SelectYear" name="implweekTab2t2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                    </div>
                                </div>
                                <div id="implweekTab2t2AddBtnDiv" runat="server" class="widget-toolbar">
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <button id="implweekTab2t2AddBtn" class="btn btn-primary btn-xs" type="button" data-target="#implweekPlanModal" data-toggle="modal" onclick="showAddEditTab2t2(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
                                </div>
                            </header>
                            <div>
                                <div id="implweekTab2t2ImportBtnDiv" runat="server" class="Colvis TableTools" style="right:265px; top:9px; z-index:5;">
                                    <button id="implweekTab2t2ImportBtn" class="btn btn-primary btn-xs" type="button" data-target="#implweekPlanImportModal" data-toggle="modal" onclick="showImportTab2t2(this)"><i class="fa fa-download"></i> Мэргэжилтнээс татах</button>
                                </div>
                                <div class="Colvis TableTools" style="right:220px; top:4px; z-index:5; margin-top:7px;">Газар:</div>
                                <div class="Colvis TableTools" style="right:140px; top:4px; z-index:5;">
                                    <select id="implweekTab2t2SelectGazar" runat="server" class="form-control" style="padding:1px;"><option>ХХААБГ</option></select>
                                </div>
                                <div class="Colvis TableTools" style="right:90px; top:4px; z-index:5; margin-top:7px;"><label>Хэлтэс: </label></div>
                                <div class="Colvis TableTools" style="right:7px; top:4px; z-index:5;">
                                    <select id="implweekTab2t2SelectHeltes" runat="server" class="form-control" style="padding:1px;"><option>ХХААБГ</option></select>
                                </div>
                                <div id="loaderTab2t2" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divBindTab2t2Table" class="widget-body no-padding"></div>
                            </div>
                        </div>
                    </article>
                </div>
                <div id="implweekTab3" class="tab-pane">
                    <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="padding:0 10px 0 0;">
                        <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                            <div style="width:50%; float:left;">
                                <div style="width:62px; float: left; margin-right: 10px;">
                                    <select id="implweekTab3SelectYear" name="implweekTab3SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div>
                                <div style="width:175px; float: left; margin-right: 10px;">
                                    <select id="implweekTab3SelectPlanWeekReport" name="implweekTab3SelectPlanWeekReport" runat="server" class="form-control" style="padding:0 0; height:26px;"></select>
                                </div>
                                <div style="width:75px; float: left; margin-right: 10px;">
                                    <select id="implweekTab3SelectGazar" name="implweekTab3SelectGazar" runat="server" class="form-control" style="padding:0 0; height:26px;"></select>
                                </div>
                            </div>
                            <div style="text-align:right; width:50%; float:left;">
                                <div class="btn-group pull-right">
                                    <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divimplweekTab3', 'Газрын долоо хоногийн тайлан төлөвлөгөө')">
                                        <i class="fa fa-file-word-o"></i>
                                    </a>
                                    <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divimplweekTab3')">
                                        <i class="fa fa-print"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div id="loaderTab3" class="search-background">
                            <label>
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                            </label>
                        </div>
                        <div id="divimplweekTab3" runat="server" class="reports" style="margin-right:10px;">
                            <hr style="border-color:#DDD; margin:0;"/>
                            <hr style="border-color:#DDD; margin:2px 0 0 0;"/>
                            <p style="text-align:center; margin:10px 0; text-transform: uppercase;"><strong>ДОЛОО ХОНОГИЙН ТАЙЛАН</strong></p>
                            <hr style="border-color:#DDD; margin:0;"/>
                            <table style="width:100%;">
                                <tbody>
                                    <tr>
                                        <td style="padding:5px;">ХЭНД:</td>
                                        <td style="padding:5px;"><span id="implweekTab3Leaders" runat="server"></span></td>
                                    </tr>
                                    <tr>
                                        <td style="padding:5px;">АГУУЛГА:</td>
                                        <td style="padding:5px;"><span id="implweekTab3Gazarname"></span> 7 хоногийн тайлан</td>
                                    </tr>
                                    <tr>
                                        <td style="padding:5px;">ОГНОО:</td>
                                        <td style="padding:5px;"><span id="implweekTab3Date" runat="server"></span></td>
                                    </tr>
                                </tbody>
                            </table>
                            <hr style="border-color:#DDD; margin:0;"/>
                            <hr style="border-color:#DDD; margin:2px 0 5px 0;"/>
                            <div id="implweekTab3ReportDiv">
                                
                            </div>
                        </div>
                    </article>
                    <article class="col-xs-12 col-sm-6 col-md-6 col-lg-6 hide" style="padding:0 10px 0 0;">
                        <div class="jarviswidget jarviswidget-color-blue" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                            <header>
                                <span class="widget-icon"> 
                                    <i class="fa fa-table"></i> 
                                </span>
                                <h2> Газрын долоо хоногийн тайлан </h2>
                                <div class="widget-toolbar"> 
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <select id="implweekTab3SelectImplWeek" name="implweekTab3SelectImplWeek" runat="server" class="form-control" style="padding:0 0; height:26px;"></select>
                                    </div> 
                                </div>
                                <div class="widget-toolbar">
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <select id="implweekTab3t1SelectYear" name="implweekTab3t1SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                    </div>
                                </div>
                                <div id="implweekTab3t1AddBtnDiv" runat="server" class="widget-toolbar">
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <button id="implweekTab3t1AddBtn" class="btn btn-primary btn-xs" type="button" data-target="#implweekImplModal" data-toggle="modal" onclick="showAddEditTab3t1(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
                                </div>
                                <div id="implweekTab3t1AttachBtnDiv" runat="server" class="widget-toolbar">
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <button id="implweekTab3t1AttachBtn" class="btn btn-primary btn-xs" type="button" data-target="#implweekImplAttachModal" data-toggle="modal" onclick="showAttachTab3t1(this)"><i class="fa fa-paperclip"></i> Файл хавсаргах</button>
                                    </div>
                                </div>
                            </header>
                            <div>
                                <div id="implweekTab3t1ImportBtnDiv" runat="server" class="Colvis TableTools" style="right:130px; top:9px; z-index:5;">
                                    <button id="implweekTab3t1ImportBtn" class="btn btn-primary btn-xs" type="button" data-target="#implweekImplImportModal" data-toggle="modal" onclick="showImportTab3t1(this)"><i class="fa fa-download"></i> Хэлтсээс татах</button>
                                </div>
                                <div class="Colvis TableTools" style="right:85px; top:4px; z-index:5; margin-top:7px;">Газар:</div>
                                <div class="Colvis TableTools" style="right:7px; top:4px; z-index:5;">
                                    <select id="implweekTab3t1SelectGazar" runat="server" class="form-control" style="padding:1px;"><option>ХХААБГ</option></select>
                                </div>
                                <div class="Colvis TableTools" style="left:0; top:10px; z-index:5;">
                                    <a id="implweekTab3t1AttachDownloadBtn" class="btn btn-link btn-xs" href="javascript:void(0);" style="font-size:12px;" download><i class="fa fa-paperclip"></i> Файл хавсаргаагүй байна</a>
                                </div>
                                <div id="loaderTab3t1" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divBindTab3t1Table" class="widget-body no-padding"></div>
                            </div>
                        </div>
                    </article>
                    <article class="col-xs-12 col-sm-6 col-md-6 col-lg-6 hide" style="padding:0 0 0 10px;">
                        <div class="jarviswidget jarviswidget-color-blue" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                            <header>
                                <span class="widget-icon"> 
                                    <i class="fa fa-table"></i> 
                                </span>
                                <h2> Газрын дараа долоо хоногийн төлөвлөгөө </h2>
                                <div class="widget-toolbar"> 
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <select id="implweekTab3SelectPlanWeek" name="implweekTab3SelectPlanWeek" runat="server" class="form-control" style="padding:0 0; height:26px;"></select>
                                    </div> 
                                </div>
                                <div class="widget-toolbar">
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <select id="implweekTab3t2SelectYear" name="implweekTab3t2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                    </div>
                                </div>
                                <div id="implweekTab3t2AddBtnDiv" runat="server" class="widget-toolbar">
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <button id="implweekTab3t2AddBtn" class="btn btn-primary btn-xs" type="button" data-target="#implweekPlanModal" data-toggle="modal" onclick="showAddEditTab3t2(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
                                </div>
                            </header>
                            <div>
                                <div id="implweekTab3t2ImportBtnDiv" runat="server" class="Colvis TableTools" style="right:130px; top:9px; z-index:5;">
                                    <button id="implweekTab3t2ImportBtn" class="btn btn-primary btn-xs" type="button" data-target="#implweekPlanImportModal" data-toggle="modal" onclick="showImportTab3t2(this)"><i class="fa fa-download"></i> Хэлтсээс татах</button>
                                </div>
                                <div class="Colvis TableTools" style="right:85px; top:4px; z-index:5; margin-top:7px;">Газар:</div>
                                <div class="Colvis TableTools" style="right:7px; top:4px; z-index:5;">
                                    <select id="implweekTab3t2SelectGazar" runat="server" class="form-control" style="padding:1px;"><option>ХХААБГ</option></select>
                                </div>
                                <div id="loaderTab3t2" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divBindTab3t2Table" class="widget-body no-padding"></div>
                            </div>
                        </div>
                    </article>
                </div>
                <div id="implweekTab4" class="tab-pane">
                    <div style="display: block; overflow: hidden;">
                        <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                            <div style="width:70%; float:left;">
                                <div style="width:60px; float:left; margin-right:10px;">
                                    <select id="implweekTab4SelectYear" runat="server" class="form-control" style="padding:1px">
                                        <option>2014</option>
                                        <option>2015</option>
                                        <option>2016</option>
                                        <option>2017</option>
                                        <option>2018</option>
                                        <option>2019</option>
                                        <option>2020</option>
                                        <option>2021</option>
                                    </select>
                                </div>
                                <div style="width:175px; float:left; margin-right:10px;">
                                    <select id="implweekTab4SelectPlanWeekReport" runat="server" class="form-control" style="padding:1px">
                                    </select>
                                </div>
                                <div style="width:35px; float:left; margin-right:10px; padding-top:8px;">Газар: </div>
                                <div style="width:80px; float:left; margin-right:10px;">
                                    <select id="implweekTab4SelectGazar" runat="server" class="form-control" style="padding:1px">
                                    </select>
                                </div>
                                <div style="width:35px; float:left; margin-right:10px; padding-top:8px;">Хэлтэс: </div>
                                <div style="width:80px; float:left; margin-right:10px;">
                                    <select id="implweekTab4SelectHeltes" runat="server" class="form-control" style="padding:1px" disabled>
                                    </select>
                                </div>
                            </div>
                            <div style="text-align:right; width:30%; float:left;">
                                <div class="btn-group pull-right">
                                    <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divimplweekTab4', 'Долоо хоногийн тайлан төлөвлөгөө - Хамрагдсан байдал')">
                                        <i class="fa fa-file-word-o"></i>
                                    </a>
                                    <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divimplweekTab4')">
                                        <i class="fa fa-print"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div id="loaderTab4" class="search-background">
                            <img width="64" height="" src="img/loading.gif"/>
                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                        </div>
                        <div id="divimplweekTab4" class="reports" style="margin:0 10px 10px 10px;">
                            <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                ХАМРАГДСАН БАЙДАЛ
                            </div>
                            <div id="divBindTab4Table"></div>
                        </div>
                    </div>
                </div>
            </div>
        </article>
    </div>
</section>
<div id="implweekImplModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="implweekImplModalForm">
                <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			        <h4 class="modal-title"><span id="implweekImplModalHeaderLabelType"></span>&nbsp;<span id="implweekImplModalHeaderLabelIsInsUpd"></span></h4>
		        </div>
		        <div class="modal-body">
                    <div id="implweekImplID" class="hide"></div>
                    <fieldset>
						<div class="row">
							<div id="implweekImplModalDesc" class="col-md-12" style="padding: 0 0 10px 13px;">

                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-2">
                                    <label class="control-label">*Дугаар</label>
									<input id="implweekImplModalInputNo" name="implweekImplModalInputNo" type="text" class="form-control" placeholder="Дугаар" />
                                </div>
								<div class="col-md-10">
                                    <label class="control-label">*Нэр</label>
                                    <textarea id="implweekImplModalInputName" name="implweekImplModalInputName" class="form-control" placeholder="Нэр" rows="3"></textarea>
                                </div>
                            </div>
						</div>
					</fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Холбогдох сарын төлөвлөгөө /<span id="implweekImplModalSpanMonth">0</span>-р сар/</label>
                                    <select id="implweekImplModalSelectPlanMnth" name="implweekImplModalSelectPlanMnth" class="form-control"><option value="">- Сонго -</option></select>
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
<div id="implweekPlanModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="implweekPlanModalForm">
                <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			        <h4 class="modal-title"><span id="implweekPlanModalHeaderLabelType"></span>&nbsp;<span id="implweekPlanModalHeaderLabelIsInsUpd"></span></h4>
		        </div>
		        <div class="modal-body">
                    <div id="implweekPlanID" class="hide"></div>
                    <fieldset>
						<div class="row">
							<div id="implweekPlanModalDesc" class="col-md-12" style="padding: 0 0 10px 13px;">

                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-12">
                                    <label class="control-label">*Дугаар</label>
									<input id="implweekPlanModalInputNo" name="implweekPlanModalInputNo" type="text" class="form-control" placeholder="Дугаар" />
                                </div>
                            </div>
						</div>
					</fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-12">
                                    <label class="control-label">*Нэр</label>
                                    <textarea id="implweekPlanModalInputName" name="implweekPlanModalInputName" class="form-control" placeholder="Нэр" rows="3"></textarea>
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
<div id="implweekImplAttachModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
			    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			    <h4 class="modal-title"><span id="implweekImplAttachModalHeaderLabelType"></span></h4>
		    </div>
		    <div class="modal-body">
                <fieldset>
					<div class="form-group">
                        <div class="row">
                            <div class="col-md-3" style="font-size:13px;">
                                Хавсралт файл:
                            </div>
                            <div class="col-md-9" style="font-style:italic;padding-left: 0;">
                                <a id="implweekImplModalAttachBtn" class="btn btn-link btn-xs" href="javascript:void(0);" style="padding:0px; border:none; font-size:12px;" download>Файл хавсаргаагүй байна...</a>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-3">
                                <a id="implweekImplModalAttachDelete" class="btn btn-link btn-xs" href="javascript:void(0);"><i class="fa fa-trash-o"></i> файл устгах</a>
                            </div>
                            <div class="col-md-9" style="padding-left: 0;">
                                <input id="implweekImplModalAttachInput" type="file" class="btn btn-default">
                            </div>
                        </div>
                    </div>
                </fieldset>
		    </div>
		    <div class="modal-footer">
			    <button type="button" class="btn btn-default" data-dismiss="modal">Болих</button>
			    <button id="implweekImplModalSave" type="button" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах</button>
		    </div>
        </div>
	</div>
</div>
<div id="implweekImplImportModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="jarviswidget no-margin" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                <header>
                    <span class="widget-icon"> 
                        <i class="fa fa-table"></i> 
                    </span>
                    <h2 id="implweekImplImportModalHeaderLabelType"></h2>
                </header>
                <div>
                    <div id="loaderTab2t1Import" class="search-background">
                        <img width="64" height="" src="img/loading.gif"/>
                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                    </div>
                    <div id="implweekImplImportModalDatatableDiv" class="widget-body no-padding"></div>
                </div>
            </div>
		    <div class="modal-footer">
			    <button type="button" class="btn btn-default" data-dismiss="modal">Болих</button>
			    <button id="implweekImplImportModalSave" type="button" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах</button>
		    </div>
        </div>
    </div>
</div>
<div id="implweekPlanImportModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="jarviswidget no-margin" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                <header>
                    <span class="widget-icon"> 
                        <i class="fa fa-table"></i> 
                    </span>
                    <h2 id="implweekPlanImportModalHeaderLabelType"></h2>
                </header>
                <div>
                    <div id="loaderTab2t2Import" class="search-background">
                        <img width="64" height="" src="img/loading.gif"/>
                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                    </div>
                    <div id="implweekPlanImportModalDatatableDiv" class="widget-body no-padding"></div>
                </div>
            </div>
		    <div class="modal-footer">
			    <button type="button" class="btn btn-default" data-dismiss="modal">Болих</button>
			    <button id="implweekPlanImportModalSave" type="button" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах</button>
		    </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    //pageSetUp();
    var globalAjaxVar = null;
    var pagefunction = function () {
        if ($('#implweekTab1Li').attr('class') == 'active') {
            implweekTab1SetFirstControls();
        }
        else if ($('#implweekTab2Li').attr('class') == 'active') {
            implweekTab2SetFirstControls();
        }
        else if ($('#implweekTab3Li').attr('class') == 'active') {
            implweekTab3SetFirstControls();
        }
        else if ($('#implweekTab4Li').attr('class') == 'active') {
            implweekTab4SetFirstControls();
        }
    }
    var pagedestroy = function () {
        if (globalAjaxVar != null) {
            globalAjaxVar.abort();
            globalAjaxVar = null;
        }
    }
    pagefunction();
    //$(document).ready(function () {
    //    if ($('#implweekTab1Li').attr('class') == 'active') {
    //        implweekTab1SetFirstControls();
    //    }
    //    else if ($('#implweekTab2Li').attr('class') == 'active') {
    //        implweekTab2SetFirstControls();
    //    }
    //    else if ($('#implweekTab3Li').attr('class') == 'active') {
    //        implweekTab3SetFirstControls();
    //    }
    //});
    function implweekDatabindTabs(el) {
        if ($.trim($(el).attr('id')) == 'implweekTab1Li') {
            if ($.trim($('#divBindTab1t1Table').html()) == "") {
                implweekTab1SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'implweekTab2Li') {
            if ($.trim($('#divBindTab2t1Table').html()) == "") {
                implweekTab2SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'implweekTab3Li') {
            if ($.trim($('#divBindTab3t1Table').html()) == "") {
                implweekTab3SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'implweekTab4Li') {
            if ($.trim($('#divBindTab4Table').html()) == "") {
                implweekTab4SetFirstControls();
            }
        }
    }
    //tab1
    function implweekTab1SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var userId = $('#indexUserId').text();
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ImplweekGetList",
            data: '{"yr":"' + $('#implweekTab1t1SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $('#implweekTab1SelectImplWeek').html(data.d);
                $('#implweekTab1SelectPlanWeek').html(data.d);
                //$('#implweekTab1SelectPlanWeek').val($('#implweekTab1SelectPlanWeek option:selected').next().val());
                $('#implweekTab1SelectPlanWeek').val($('#implweekTab1SelectPlanWeek option:selected').val());
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetGazarListForDDL",
                    data: '{"yr":"' + $('#implweekTab1t1SelectYear option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        });
                        $("#implweekTab1t1SelectGazar").html(valData);
                        $("#implweekTab1t2SelectGazar").html(valData);
                        $('#implweekTab1t1SelectGazar').val(userGazarId);
                        $('#implweekTab1t2SelectGazar').val(userGazarId);
                        $('#implweekTab1t1SelectGazar').prop('disabled', true);
                        $('#implweekTab1t2SelectGazar').prop('disabled', true);
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                            data: '{"yr":"' + $("#implweekTab1t1SelectYear option:selected").val() + '", "gazar":"' + $("#implweekTab1t1SelectGazar option:selected").val() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                                });
                                $("#implweekTab1t1SelectHeltes").html(valData);
                                $("#implweekTab1t2SelectHeltes").html(valData);
                                $('#implweekTab1t1SelectHeltes').val(userHeltesId);
                                $('#implweekTab1t2SelectHeltes').val(userHeltesId);
                                if (!funcCheckRoles('3,4')) {
                                    $('#implweekTab1t1SelectHeltes').prop('disabled', true);
                                    $('#implweekTab1t2SelectHeltes').prop('disabled', true);
                                }
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/GetStaffListForDDL",
                                    data: '{"yr":"' + $('#implweekTab1t1SelectYear option:selected').val() + '", "gazar":"' + $("#implweekTab1t1SelectGazar option:selected").val() + '", "heltes":"' + $("#implweekTab1t1SelectHeltes option:selected").val() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (data) {
                                        valData = '';
                                        valOptGroup = '';
                                        $($.parseJSON(data.d)).each(function (index, value) {
                                            if (value.BR_ID != valOptGroup) {
                                                if (valOptGroup != '') valData += '</optgroup>';
                                                valData += '<optgroup label="' + value.DOMAIN_ORG + '">';
                                            }
                                            valData += '<option value="' + value.ST_ID + '" title="' + value.ST_NAME + ' | ' + value.POS_NAME + '">' + value.ST_NAME + '</option>';
                                            valOptGroup = value.BR_ID;
                                        });
                                        $("#implweekTab1t1SelectStaff").html(valData);
                                        $("#implweekTab1t2SelectStaff").html(valData);
                                        $("#implweekTab1t1SelectStaff").val(userId);
                                        $("#implweekTab1t2SelectStaff").val(userId);
                                        if (!funcCheckRoles('3,4,5,6')) {
                                            $('#implweekTab1t1SelectStaff').prop('disabled', true);
                                            $('#implweekTab1t2SelectStaff').prop('disabled', true);
                                        }
                                        showLoader('loaderTab1t1');
                                        globalAjaxVar = $.ajax({
                                            type: "POST",
                                            url: "../ws/ServiceMain.svc/ImplweekImplDatatable",
                                            data: '{"tp":"staff", "gazarid":"' + $('#implweekTab1t1SelectGazar option:selected').val() + '", "heltesid":"' + $('#implweekTab1t1SelectHeltes option:selected').val() + '", "stid":"' + $('#implweekTab1t1SelectStaff option:selected').val() + '", "begindate":"' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[1] + '"}',
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function (data) {
                                                valData = '';
                                                valData += '<table id="implweekTab1t1Datatable" class="table table-striped table-bordered table-hover" width="100%"><thead>';
                                                valData += '<tr>';
                                                valData += '<th class="text-center" style="vertical-align:middle;">№</th>';
                                                valData += '<th class="text-center" style="vertical-align:middle;">Нэр</th>';
                                                valData += '<th class="text-center" style="vertical-align:middle;">Засварлах</th>';
                                                valData += '</tr>';
                                                valData += '</thead><tbody>';
                                                $($.parseJSON(data.d)).each(function (index, value) {
                                                    valData += '<tr data-id="' + value.ID + '" data-planmnth_id="'+value.PLANMNTH_ID+'">';
                                                    valData += '<td>' + value.NO + '</td>';
                                                    valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                                                    valData += '<td>';
                                                    valData += '<div class="btn-group">';
                                                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditTab1t1(this,\'засах\');" data-target="#implweekImplModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                                                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab1t1(this);"><i class="fa fa-trash-o"></i></button>';
                                                    valData += '</div>';
                                                    valData += '</td>';
                                                    valData += '</tr>';
                                                });
                                                valData += '</tbody>';
                                                valData += '</table>';
                                                valData += '<script>';
                                                valData += "var responsiveHelper_implweekTab1t1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#implweekTab1t1Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_implweekTab1t1Datatable) {responsiveHelper_implweekTab1t1Datatable = new ResponsiveDatatablesHelper($('#implweekTab1t1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_implweekTab1t1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_implweekTab1t1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"45px\" }]});";
                                                valData += '<\/script>';
                                                $("#divBindTab1t1Table").html(valData);
                                                globalAjaxVar = $.ajax({
                                                    type: "POST",
                                                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                    data: '{"qry":"SELECT COUNT(1) FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'staff\' AND ST_ID=' + $('#implweekTab1t1SelectStaff option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[1] + '\'"}',
                                                    contentType: "application/json; charset=utf-8",
                                                    dataType: "json",
                                                    success: function (data) {
                                                        if ($.trim(data.d) == '0') {
                                                            $('#implweekTab1t1AttachDownloadBtn').attr('href', 'javascript:void(0);');
                                                            $('#implweekTab1t1AttachDownloadBtn').html('<i class="fa fa-paperclip"></i> Файл хавсаргаагүй байна');
                                                            hideLoader('loaderTab1t1');
                                                        }
                                                        else {
                                                            globalAjaxVar = $.ajax({
                                                                type: "POST",
                                                                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                data: '{"qry":"SELECT FILENAME FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'staff\' AND ST_ID=' + $('#implweekTab1t1SelectStaff option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[1] + '\'"}',
                                                                contentType: "application/json; charset=utf-8",
                                                                dataType: "json",
                                                                success: function (data) {
                                                                    $('#implweekTab1t1AttachDownloadBtn').attr('href', '../files/implweek/' + data.d);
                                                                    $('#implweekTab1t1AttachDownloadBtn').html('<i class="fa fa-paperclip"></i> Хавсаргасан файл татах');
                                                                    hideLoader('loaderTab1t1');
                                                                },
                                                                failure: function (response) {
                                                                    alert('FAILURE: ' + response.d);
                                                                },
                                                                error: function (xhr, status, error) {
                                                                    window.location = '../#pg/error500.aspx';
                                                                }
                                                            });
                                                        }
                                                        showLoader('loaderTab1t2');
                                                        globalAjaxVar = $.ajax({
                                                            type: "POST",
                                                            url: "../ws/ServiceMain.svc/ImplweekPlanDatatable",
                                                            data: '{"tp":"staff", "gazarid":"' + $('#implweekTab1t2SelectGazar option:selected').val() + '", "heltesid":"' + $('#implweekTab1t2SelectHeltes option:selected').val() + '", "stid":"' + $('#implweekTab1t2SelectStaff option:selected').val() + '", "begindate":"' + $('#implweekTab1SelectPlanWeek option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab1SelectPlanWeek option:selected').val().split(' - ')[1] + '"}',
                                                            contentType: "application/json; charset=utf-8",
                                                            dataType: "json",
                                                            success: function (data) {
                                                                valData = '';
                                                                valData += '<table id="implweekTab1t2Datatable" class="table table-striped table-bordered table-hover" width="100%"><thead>';
                                                                valData += '<tr>';
                                                                valData += '<th class="text-center" style="vertical-align:middle;">№</th>';
                                                                valData += '<th class="text-center" style="vertical-align:middle;">Нэр</th>';
                                                                valData += '<th class="text-center" style="vertical-align:middle;">Засварлах</th>';
                                                                valData += '</tr>';
                                                                valData += '</thead><tbody>';
                                                                $($.parseJSON(data.d)).each(function (index, value) {
                                                                    valData += '<tr data-id="' + value.ID + '">';
                                                                    valData += '<td>' + value.NO + '</td>';
                                                                    valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                                                                    valData += '<td>';
                                                                    valData += '<div class="btn-group">';
                                                                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditTab1t2(this,\'засах\');" data-target="#implweekPlanModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                                                                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab1t2(this);"><i class="fa fa-trash-o"></i></button>';
                                                                    valData += '</div>';
                                                                    valData += '</td>';
                                                                    valData += '</tr>';
                                                                });
                                                                valData += '</tbody>';
                                                                valData += '</table>';
                                                                valData += '<script>';
                                                                valData += "var responsiveHelper_implweekTab1t2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#implweekTab1t2Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_implweekTab1t2Datatable) {responsiveHelper_implweekTab1t2Datatable = new ResponsiveDatatablesHelper($('#implweekTab1t2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_implweekTab1t2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_implweekTab1t2Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"45px\" }]});";
                                                                valData += '<\/script>';
                                                                $("#divBindTab1t2Table").html(valData);
                                                                hideLoader('loaderTab1t2');
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
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    //tab1t1
    function implweekTab1t1DataBind() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var userId = $('#indexUserId').text();
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ImplweekGetList",
            data: '{"yr":"' + $('#implweekTab1t1SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $('#implweekTab1SelectImplWeek').html(data.d);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetGazarListForDDL",
                    data: '{"yr":"' + $('#implweekTab1t1SelectYear option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        });
                        $("#implweekTab1t1SelectGazar").html(valData);
                        $('#implweekTab1t1SelectGazar').val(userGazarId);
                        $('#implweekTab1t1SelectGazar').prop('disabled', true);
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                            data: '{"yr":"' + $("#implweekTab1t1SelectYear option:selected").val() + '", "gazar":"' + $("#implweekTab1t1SelectGazar option:selected").val() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                                });
                                $("#implweekTab1t1SelectHeltes").html(valData);
                                if (!funcCheckRoles('3,4')) {
                                    $('#implweekTab1t1SelectHeltes').val(userHeltesId);
                                    $('#implweekTab1t1SelectHeltes').prop('disabled', true);
                                }
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/GetStaffListForDDL",
                                    data: '{"yr":"' + $('#implweekTab1t1SelectYear option:selected').val() + '", "gazar":"' + $("#implweekTab1t1SelectGazar option:selected").val() + '", "heltes":"' + $("#implweekTab1t1SelectHeltes option:selected").val() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (data) {
                                        valData = '';
                                        valOptGroup = '';
                                        $($.parseJSON(data.d)).each(function (index, value) {
                                            if (value.BR_ID != valOptGroup) {
                                                if (valOptGroup != '') valData += '</optgroup>';
                                                valData += '<optgroup label="' + value.DOMAIN_ORG + '">';
                                            }
                                            valData += '<option value="' + value.ST_ID + '" title="' + value.ST_NAME + ' | ' + value.POS_NAME + '">' + value.ST_NAME + '</option>';
                                            valOptGroup = value.BR_ID;
                                        });
                                        $("#implweekTab1t1SelectStaff").html(valData);
                                        if (!funcCheckRoles('5,6')) {
                                            $("#implweekTab1t1SelectStaff").val(userId);
                                            $('#implweekTab1t1SelectStaff').prop('disabled', true);
                                        }
                                        showLoader('loaderTab1t1');
                                        globalAjaxVar = $.ajax({
                                            type: "POST",
                                            url: "../ws/ServiceMain.svc/ImplweekImplDatatable",
                                            data: '{"tp":"staff", "gazarid":"' + $('#implweekTab1t1SelectGazar option:selected').val() + '", "heltesid":"' + $('#implweekTab1t1SelectHeltes option:selected').val() + '", "stid":"' + $('#implweekTab1t1SelectStaff option:selected').val() + '", "begindate":"' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[1] + '"}',
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function (data) {
                                                valData = '';
                                                valData += '<table id="implweekTab1t1Datatable" class="table table-striped table-bordered table-hover" width="100%"><thead>';
                                                valData += '<tr>';
                                                valData += '<th class="text-center" style="vertical-align:middle;">№</th>';
                                                valData += '<th class="text-center" style="vertical-align:middle;">Нэр</th>';
                                                valData += '<th class="text-center" style="vertical-align:middle;">Засварлах</th>';
                                                valData += '</tr>';
                                                valData += '</thead><tbody>';
                                                $($.parseJSON(data.d)).each(function (index, value) {
                                                    valData += '<tr data-id="' + value.ID + '" data-planmnth_id="' + value.PLANMNTH_ID + '">';
                                                    valData += '<td>' + value.NO + '</td>';
                                                    valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                                                    valData += '<td>';
                                                    valData += '<div class="btn-group">';
                                                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditTab1t1(this,\'засах\');" data-target="#implweekImplModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                                                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab1t1(this);"><i class="fa fa-trash-o"></i></button>';
                                                    valData += '</div>';
                                                    valData += '</td>';
                                                    valData += '</tr>';
                                                });
                                                valData += '</tbody>';
                                                valData += '</table>';
                                                valData += '<script>';
                                                valData += "var responsiveHelper_implweekTab1t1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#implweekTab1t1Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_implweekTab1t1Datatable) {responsiveHelper_implweekTab1t1Datatable = new ResponsiveDatatablesHelper($('#implweekTab1t1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_implweekTab1t1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_implweekTab1t1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"45px\" }]});";
                                                valData += '<\/script>';
                                                $("#divBindTab1t1Table").html(valData);
                                                globalAjaxVar = $.ajax({
                                                    type: "POST",
                                                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                    data: '{"qry":"SELECT COUNT(1) FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'staff\' AND ST_ID=' + $('#implweekTab1t1SelectStaff option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[1] + '\'"}',
                                                    contentType: "application/json; charset=utf-8",
                                                    dataType: "json",
                                                    success: function (data) {
                                                        if (data.d == '0') {
                                                            $('#implweekTab1t1AttachDownloadBtn').attr('href', 'javascript:void(0);');
                                                            $('#implweekTab1t1AttachDownloadBtn').html('<i class="fa fa-paperclip"></i> Файл хавсаргаагүй байна');
                                                            hideLoader('loaderTab1t1');
                                                        }
                                                        else {
                                                            globalAjaxVar = $.ajax({
                                                                type: "POST",
                                                                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                data: '{"qry":"SELECT FILENAME FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'staff\' AND ST_ID=' + $('#implweekTab1t1SelectStaff option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[1] + '\'"}',
                                                                contentType: "application/json; charset=utf-8",
                                                                dataType: "json",
                                                                success: function (data) {
                                                                    $('#implweekTab1t1AttachDownloadBtn').attr('href', '../files/implweek/' + data.d);
                                                                    $('#implweekTab1t1AttachDownloadBtn').html('<i class="fa fa-paperclip"></i> Хавсаргасан файл татах');
                                                                    hideLoader('loaderTab1t1');
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
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function implweekTab1t1TableBind() {
        showLoader('loaderTab1t1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ImplweekImplDatatable",
            data: '{"tp":"staff", "gazarid":"' + $('#implweekTab1t1SelectGazar option:selected').val() + '", "heltesid":"' + $('#implweekTab1t1SelectHeltes option:selected').val() + '", "stid":"' + $('#implweekTab1t1SelectStaff option:selected').val() + '", "begindate":"' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[1] + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += '<table id="implweekTab1t1Datatable" class="table table-striped table-bordered table-hover" width="100%"><thead>';
                valData += '<tr>';
                valData += '<th class="text-center" style="vertical-align:middle;">№</th>';
                valData += '<th class="text-center" style="vertical-align:middle;">Нэр</th>';
                valData += '<th class="text-center" style="vertical-align:middle;">Засварлах</th>';
                valData += '</tr>';
                valData += '</thead><tbody>';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<tr data-id="' + value.ID + '" data-planmnth_id="' + value.PLANMNTH_ID + '">';
                    valData += '<td>' + value.NO + '</td>';
                    valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                    valData += '<td>';
                    valData += '<div class="btn-group">';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditTab1t1(this,\'засах\');" data-target="#implweekImplModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab1t1(this);"><i class="fa fa-trash-o"></i></button>';
                    valData += '</div>';
                    valData += '</td>';
                    valData += '</tr>';
                });
                valData += '</tbody>';
                valData += '</table>';
                valData += '<script>';
                valData += "var responsiveHelper_implweekTab1t1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#implweekTab1t1Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_implweekTab1t1Datatable) {responsiveHelper_implweekTab1t1Datatable = new ResponsiveDatatablesHelper($('#implweekTab1t1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_implweekTab1t1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_implweekTab1t1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"45px\" }]});";
                valData += '<\/script>';
                $("#divBindTab1t1Table").html(valData);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                    data: '{"qry":"SELECT COUNT(1) FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'staff\' AND ST_ID=' + $('#implweekTab1t1SelectStaff option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[1] + '\'"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        if (data.d == '0') {
                            $('#implweekTab1t1AttachDownloadBtn').attr('href', 'javascript:void(0);');
                            $('#implweekTab1t1AttachDownloadBtn').html('<i class="fa fa-paperclip"></i> Файл хавсаргаагүй байна');
                            hideLoader('loaderTab1t1');
                        }
                        else {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                data: '{"qry":"SELECT FILENAME FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'staff\' AND ST_ID=' + $('#implweekTab1t1SelectStaff option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[1] + '\'"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    $('#implweekTab1t1AttachDownloadBtn').attr('href', '../files/implweek/' + data.d);
                                    $('#implweekTab1t1AttachDownloadBtn').html('<i class="fa fa-paperclip"></i> Хавсаргасан файл татах');
                                    hideLoader('loaderTab1t1');
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
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#implweekTab1t1SelectGazar").change(function () {
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
            data: '{"yr":"' + $("#implweekTab1t1SelectYear option:selected").val() + '", "gazar":"' + $("#implweekTab1t1SelectGazar option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#implweekTab1t1SelectHeltes").html(valData);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetStaffListForDDL",
                    data: '{"yr":"' + $('#implweekTab1t1SelectYear option:selected').val() + '", "gazar":"' + $("#implweekTab1t1SelectGazar option:selected").val() + '", "heltes":"' + $("#implweekTab1t1SelectHeltes option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valOptGroup = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            if (value.BR_ID != valOptGroup) {
                                if (valOptGroup != '') valData += '</optgroup>';
                                valData += '<optgroup label="' + value.DOMAIN_ORG + '">';
                            }
                            valData += '<option value="' + value.ST_ID + '" title="' + value.ST_NAME + ' | ' + value.POS_NAME + '">' + value.ST_NAME + '</option>';
                            valOptGroup = value.BR_ID;
                        });
                        $("#implweekTab1t1SelectStaff").html(valData);
                        $("#implweekTab1t1SelectStaff").prop('disabled', false);
                        implweekTab1t1TableBind();
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
    });
    $("#implweekTab1t1SelectHeltes").change(function () {
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetStaffListForDDL",
            data: '{"yr":"' + $('#implweekTab1t1SelectYear option:selected').val() + '", "gazar":"' + $("#implweekTab1t1SelectGazar option:selected").val() + '", "heltes":"' + $("#implweekTab1t1SelectHeltes option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valOptGroup = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (value.BR_ID != valOptGroup) {
                        if (valOptGroup != '') valData += '</optgroup>';
                        valData += '<optgroup label="' + value.DOMAIN_ORG + '">';
                    }
                    valData += '<option value="' + value.ST_ID + '" title="' + value.ST_NAME + ' | ' + value.POS_NAME + '">' + value.ST_NAME + '</option>';
                    valOptGroup = value.BR_ID;
                });
                $("#implweekTab1t1SelectStaff").html(valData);
                $("#implweekTab1t1SelectStaff").prop('disabled',false);
                implweekTab1t1TableBind();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    });
    $("#implweekTab1t1SelectStaff").change(function () {
        implweekTab1t1TableBind();
    });
    $("#implweekTab1t1SelectYear").change(function () {
        implweekTab1t1DataBind();
    });
    $("#implweekTab1SelectImplWeek").change(function () {
        implweekTab1t1TableBind();
    });
    function showAddEditTab1t1(el, isinsupt) {
        $('#implweekImplModalHeaderLabelType').text('Мэргэжилтний долоо хоногийн тайлан');
        $('#implweekImplModalHeaderLabelIsInsUpd').text(isinsupt);
        $('#implweekImplModalDesc').html('<strong>'+$('#implweekTab1SelectImplWeek option:selected').text()+'</strong>');
        $('#implweekImplModalDesc').append('<br/>');
        $('#implweekImplModalDesc').append($('#implweekTab1t1SelectGazar option:selected').text() + ' - ' + $('#implweekTab1t1SelectHeltes option:selected').text() + ' /' + $('#implweekTab1t1SelectStaff option:selected').text() + '/');
        $('#implweekImplModalSpanMonth').html(parseInt($('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[0].split('-')[1]));
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ImplweekPlanmnthList",
            data: '{"yr":"' + parseInt($('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[0].split('-')[0]) + '", "mnth":"' + parseInt($('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[0].split('-')[1]) + '", "gazar":"' + $("#implweekTab1t1SelectGazar option:selected").val() + '", "heltes":"' + $("#implweekTab1t1SelectHeltes option:selected").val() + '", "stid":"' + $("#implweekTab1t1SelectStaff option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.ID + '">' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                });
                $("#implweekImplModalSelectPlanMnth").html('<option value="">- Сонго -</option>'+valData);
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
        if (isinsupt == 'нэмэх') {
            $('#implweekImplID').text('');
            $('#implweekImplModalInputNo, #implweekImplModalInputName, #implweekImplModalSelectPlanMnth').val('');
        }
        else {
            $("#implweekImplID").text($(el).closest('tr').attr('data-id'));
            $('#implweekImplModalInputNo').val($(el).closest('tr').find('td:eq(0)').text());
            $('#implweekImplModalInputName').val($(el).closest('tr').find('td:eq(1)').text());
            $("#implweekImplModalSelectPlanMnth").val($(el).closest('tr').attr('data-planmnth_id'));
        }
    }
    function showDeleteTab1t1(el) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Сонгосон Мэргэжилтний долоо хоногийн тайланг устгах уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"DELETE FROM TBL_IMPLWEEK WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        implweekTab1t1TableBind();
                        smallBox('Мэргэжилтний долоо хоногийн тайлан', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
    function showAttachTab1t1(el) {
        $('#implweekImplAttachModalHeaderLabelType').text('Мэргэжилтний долоо хоногийн тайлангийн хавсралт')
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'staff\' AND ST_ID=' + $('#implweekTab1t1SelectStaff option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[1] + '\'"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == '0') {
                    $('#implweekImplModalAttachBtn').attr('href', 'javascript:void(0);');
                    $('#implweekImplModalAttachBtn').html('Файл хавсаргаагүй байна...');
                    $('#implweekImplModalAttachInput').val('');
                }
                else {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                        data: '{"qry":"SELECT FILENAME FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'staff\' AND ST_ID=' + $('#implweekTab1t1SelectStaff option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[1] + '\'"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            $('#implweekImplModalAttachBtn').attr('href', '../files/implweek/' + data.d);
                            $('#implweekImplModalAttachBtn').html(data.d);
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
    }
        
    //tab1t2
    function implweekTab1t2DataBind() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var userId = $('#indexUserId').text();
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ImplweekGetList",
            data: '{"yr":"' + $('#implweekTab1t2SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $('#implweekTab1SelectPlanWeek').html(data.d);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetGazarListForDDL",
                    data: '{"yr":"' + $('#implweekTab1t2SelectYear option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        });
                        $("#implweekTab1t2SelectGazar").html(valData);
                        $('#implweekTab1t2SelectGazar').val(userGazarId);
                        $('#implweekTab1t2SelectGazar').prop('disabled', true);
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                            data: '{"yr":"' + $("#implweekTab1t1SelectYear option:selected").val() + '", "gazar":"' + $("#implweekTab1t1SelectGazar option:selected").val() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                                });
                                $("#implweekTab1t2SelectHeltes").html(valData);
                                if (!funcCheckRoles('3,4')) {
                                    $('#implweekTab1t2SelectHeltes').val(userHeltesId);
                                    $('#implweekTab1t2SelectHeltes').prop('disabled', true);
                                }
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/GetStaffListForDDL",
                                    data: '{"yr":"' + $('#implweekTab1t1SelectYear option:selected').val() + '", "gazar":"' + $("#implweekTab1t1SelectGazar option:selected").val() + '", "heltes":"' + $("#implweekTab1t1SelectHeltes option:selected").val() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (data) {
                                        valData = '';
                                        valOptGroup = '';
                                        $($.parseJSON(data.d)).each(function (index, value) {
                                            if (value.BR_ID != valOptGroup) {
                                                if (valOptGroup != '') valData += '</optgroup>';
                                                valData += '<optgroup label="' + value.DOMAIN_ORG + '">';
                                            }
                                            valData += '<option value="' + value.ST_ID + '" title="' + value.ST_NAME + ' | ' + value.POS_NAME + '">' + value.ST_NAME + '</option>';
                                            valOptGroup = value.BR_ID;
                                        });
                                        $("#implweekTab1t2SelectStaff").html(valData);
                                        if (!funcCheckRoles('5,6')) {
                                            $("#implweekTab1t2SelectStaff").val(userId);
                                            $('#implweekTab1t2SelectStaff').prop('disabled', true);
                                        }
                                        globalAjaxVar = $.ajax({
                                            type: "POST",
                                            url: "../ws/ServiceMain.svc/ImplweekPlanDatatable",
                                            data: '{"tp":"staff", "gazarid":"' + $('#implweekTab1t2SelectGazar option:selected').val() + '", "heltesid":"' + $('#implweekTab1t2SelectHeltes option:selected').val() + '", "stid":"' + $('#implweekTab1t2SelectStaff option:selected').val() + '", "begindate":"' + $('#implweekTab1SelectPlanWeek option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab1SelectPlanWeek option:selected').val().split(' - ')[1] + '"}',
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function (data) {
                                                valData = '';
                                                valData += '<table id="implweekTab1t2Datatable" class="table table-striped table-bordered table-hover" width="100%"><thead>';
                                                valData += '<tr>';
                                                valData += '<th class="text-center" style="vertical-align:middle;">№</th>';
                                                valData += '<th class="text-center" style="vertical-align:middle;">Нэр</th>';
                                                valData += '<th class="text-center" style="vertical-align:middle;">Засварлах</th>';
                                                valData += '</tr>';
                                                valData += '</thead><tbody>';
                                                $($.parseJSON(data.d)).each(function (index, value) {
                                                    valData += '<tr data-id="' + value.ID + '">';
                                                    valData += '<td>' + value.NO + '</td>';
                                                    valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                                                    valData += '<td>';
                                                    valData += '<div class="btn-group">';
                                                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditTab1t2(this,\'засах\');" data-target="#implweekPlanModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                                                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab1t2(this);"><i class="fa fa-trash-o"></i></button>';
                                                    valData += '</div>';
                                                    valData += '</td>';
                                                    valData += '</tr>';
                                                });
                                                valData += '</tbody>';
                                                valData += '</table>';
                                                valData += '<script>';
                                                valData += "var responsiveHelper_implweekTab1t2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#implweekTab1t2Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_implweekTab1t2Datatable) {responsiveHelper_implweekTab1t2Datatable = new ResponsiveDatatablesHelper($('#implweekTab1t2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_implweekTab1t2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_implweekTab1t2Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"45px\" }]});";
                                                valData += '<\/script>';
                                                $("#divBindTab1t2Table").html(valData);
                                                hideLoader('loaderTab1t2');
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
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function implweekTab1t2TableBind() {
        showLoader('loaderTab1t2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ImplweekPlanDatatable",
            data: '{"tp":"staff", "gazarid":"' + $('#implweekTab1t2SelectGazar option:selected').val() + '", "heltesid":"' + $('#implweekTab1t2SelectHeltes option:selected').val() + '", "stid":"' + $('#implweekTab1t2SelectStaff option:selected').val() + '", "begindate":"' + $('#implweekTab1SelectPlanWeek option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab1SelectPlanWeek option:selected').val().split(' - ')[1] + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += '<table id="implweekTab1t2Datatable" class="table table-striped table-bordered table-hover" width="100%"><thead>';
                valData += '<tr>';
                valData += '<th class="text-center" style="vertical-align:middle;">№</th>';
                valData += '<th class="text-center" style="vertical-align:middle;">Нэр</th>';
                valData += '<th class="text-center" style="vertical-align:middle;">Засварлах</th>';
                valData += '</tr>';
                valData += '</thead><tbody>';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<tr data-id="' + value.ID + '">';
                    valData += '<td>' + value.NO + '</td>';
                    valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                    valData += '<td>';
                    valData += '<div class="btn-group">';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditTab1t2(this,\'засах\');" data-target="#implweekPlanModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab1t2(this);"><i class="fa fa-trash-o"></i></button>';
                    valData += '</div>';
                    valData += '</td>';
                    valData += '</tr>';
                });
                valData += '</tbody>';
                valData += '</table>';
                valData += '<script>';
                valData += "var responsiveHelper_implweekTab1t2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#implweekTab1t2Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_implweekTab1t2Datatable) {responsiveHelper_implweekTab1t2Datatable = new ResponsiveDatatablesHelper($('#implweekTab1t2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_implweekTab1t2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_implweekTab1t2Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"45px\" }]});";
                valData += '<\/script>';
                $("#divBindTab1t2Table").html(valData);
                hideLoader('loaderTab1t2');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#implweekTab1t2SelectGazar").change(function () {
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
            data: '{"yr":"' + $("#implweekTab1t1SelectYear option:selected").val() + '", "gazar":"' + $("#implweekTab1t1SelectGazar option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#implweekTab1t2SelectHeltes").html(valData);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetStaffListForDDL",
                    data: '{"yr":"' + $('#implweekTab1t1SelectYear option:selected').val() + '", "gazar":"' + $("#implweekTab1t1SelectGazar option:selected").val() + '", "heltes":"' + $("#implweekTab1t1SelectHeltes option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valOptGroup = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            if (value.BR_ID != valOptGroup) {
                                if (valOptGroup != '') valData += '</optgroup>';
                                valData += '<optgroup label="' + value.DOMAIN_ORG + '">';
                            }
                            valData += '<option value="' + value.ST_ID + '" title="' + value.ST_NAME + ' | ' + value.POS_NAME + '">' + value.ST_NAME + '</option>';
                            valOptGroup = value.BR_ID;
                        });
                        $("#implweekTab1t2SelectStaff").html(valData);
                        $("#implweekTab1t2SelectStaff").prop('disabled', false);
                        implweekTab1t2TableBind();
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
    });
    $("#implweekTab1t2SelectHeltes").change(function () {
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetStaffListForDDL",
            data: '{"yr":"' + $('#implweekTab1t1SelectYear option:selected').val() + '", "gazar":"' + $("#implweekTab1t2SelectGazar option:selected").val() + '", "heltes":"' + $("#implweekTab1t2SelectHeltes option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valOptGroup = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (value.BR_ID != valOptGroup) {
                        if (valOptGroup != '') valData += '</optgroup>';
                        valData += '<optgroup label="' + value.DOMAIN_ORG + '">';
                    }
                    valData += '<option value="' + value.ST_ID + '" title="' + value.ST_NAME + ' | ' + value.POS_NAME + '">' + value.ST_NAME + '</option>';
                    valOptGroup = value.BR_ID;
                });
                $("#implweekTab1t2SelectStaff").html(valData);
                $("#implweekTab1t2SelectStaff").prop('disabled', false);
                implweekTab1t2TableBind();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    });
    $("#implweekTab1t2SelectStaff").change(function () {
        implweekTab1t2TableBind();
    });
    $("#implweekTab1t2SelectYear").change(function () {
        implweekTab1t2DataBind();
    });
    $("#implweekTab1SelectPlanWeek").change(function () {
        implweekTab1t2TableBind();
    });
    function showAddEditTab1t2(el, isinsupt) {
        $('#implweekPlanModalHeaderLabelType').text('Мэргэжилтний дараа долоо хоногийн төлөвлөгөө');
        $('#implweekPlanModalHeaderLabelIsInsUpd').text(isinsupt);
        $('#implweekPlanModalDesc').html('<strong>' + $('#implweekTab1SelectPlanWeek option:selected').text() + '</strong>');
        $('#implweekPlanModalDesc').append('<br/>');
        $('#implweekPlanModalDesc').append($('#implweekTab1t2SelectGazar option:selected').text() + ' - ' + $('#implweekTab1t2SelectHeltes option:selected').text() + ' /' + $('#implweekTab1t2SelectStaff option:selected').text() + '/');

        if (isinsupt == 'нэмэх') {
            $('#implweekPlanID').text('');
            $('#implweekPlanModalInputNo').val('');
            $('#implweekPlanModalInputName').val('');
        }
        else {
            $("#implweekPlanID").text($(el).closest('tr').attr('data-id'));
            $('#implweekPlanModalInputNo').val($(el).closest('tr').find('td:eq(0)').text());
            $('#implweekPlanModalInputName').val($(el).closest('tr').find('td:eq(1)').text());
        }
    }
    function showDeleteTab1t2(el) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Сонгосон мэргэжилтний дараа долоо хоногийн төлөвлөгөөг устгах уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"DELETE FROM TBL_PLANWEEK WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        implweekTab1t2TableBind();
                        smallBox('Мэргэжилтний дараа долоо хоногийн төлөвлөгөө', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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

    //tab2
    function implweekTab2SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var userId = $('#indexUserId').text();
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ImplweekGetList",
            data: '{"yr":"' + $('#implweekTab2t1SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $('#implweekTab2SelectImplWeek').html(data.d);
                $('#implweekTab2SelectPlanWeek').html(data.d);
                $('#implweekTab2SelectPlanWeek').val($('#implweekTab2SelectPlanWeek option:selected').next().val());
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetGazarListForDDL",
                    data: '{"yr":"' + $('#implweekTab2t1SelectYear option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        });
                        $("#implweekTab2t1SelectGazar").html(valData);
                        $("#implweekTab2t2SelectGazar").html(valData);
                        $('#implweekTab2t1SelectGazar').val(userGazarId);
                        $('#implweekTab2t2SelectGazar').val(userGazarId);
                        $('#implweekTab2t1SelectGazar').prop('disabled', false);
                        $('#implweekTab2t2SelectGazar').prop('disabled', false);
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                            data: '{"yr":"' + $("#implweekTab1t1SelectYear option:selected").val() + '", "gazar":"' + $("#implweekTab1t1SelectGazar option:selected").val() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                                });
                                $("#implweekTab2t1SelectHeltes").html(valData);
                                $("#implweekTab2t2SelectHeltes").html(valData);
                                if (!funcCheckRoles('3,4')) {
                                    $('#implweekTab2t1SelectHeltes').val(userHeltesId);
                                    $('#implweekTab2t2SelectHeltes').val(userHeltesId);
                                    $('#implweekTab2t1SelectHeltes').prop('disabled', true);
                                    $('#implweekTab2t2SelectHeltes').prop('disabled', true);
                                }
                                showLoader('loaderTab2t1');
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/ImplweekImplDatatable",
                                    data: '{"tp":"heltes", "gazarid":"' + $('#implweekTab2t1SelectGazar option:selected').val() + '", "heltesid":"' + $('#implweekTab2t1SelectHeltes option:selected').val() + '", "stid":"", "begindate":"' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[1] + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (data) {
                                        valData = '';
                                        valData += '<table id="implweekTab2t1Datatable" class="table table-striped table-bordered table-hover" width="100%"><thead>';
                                        valData += '<tr>';
                                        valData += '<th class="text-center" style="vertical-align:middle;">№</th>';
                                        valData += '<th class="text-center" style="vertical-align:middle;">Нэр</th>';
                                        valData += '<th class="text-center" style="vertical-align:middle;">Засварлах</th>';
                                        valData += '</tr>';
                                        valData += '</thead><tbody>';
                                        $($.parseJSON(data.d)).each(function (index, value) {
                                            valData += '<tr data-id="' + value.ID + '">';
                                            valData += '<td>' + value.NO + '</td>';
                                            valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                                            valData += '<td>';
                                            valData += '<div class="btn-group">';
                                            valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditTab2t1(this,\'засах\');" data-target="#implweekImplModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                                            valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab2t1(this);"><i class="fa fa-trash-o"></i></button>';
                                            valData += '</div>';
                                            valData += '</td>';
                                            valData += '</tr>';
                                        });
                                        valData += '</tbody>';
                                        valData += '</table>';
                                        valData += '<script>';
                                        valData += "var responsiveHelper_implweekTab2t1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#implweekTab2t1Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_implweekTab2t1Datatable) {responsiveHelper_implweekTab2t1Datatable = new ResponsiveDatatablesHelper($('#implweekTab2t1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_implweekTab2t1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_implweekTab2t1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"45px\" }]});";
                                        valData += '<\/script>';
                                        $("#divBindTab2t1Table").html(valData);
                                        globalAjaxVar = $.ajax({
                                            type: "POST",
                                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                            data: '{"qry":"SELECT COUNT(1) FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'heltes\' AND GAZAR_ID=' + $('#implweekTab2t1SelectGazar option:selected').val() + ' AND HELTES_ID=' + $('#implweekTab2t1SelectHeltes option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[1] + '\'"}',
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function (data) {
                                                if (data.d == '0') {
                                                    $('#implweekTab2t1AttachDownloadBtn').attr('href', 'javascript:void(0);');
                                                    $('#implweekTab2t1AttachDownloadBtn').html('<i class="fa fa-paperclip"></i> Файл хавсаргаагүй байна');
                                                    hideLoader('loaderTab2t1');
                                                    showLoader('loaderTab2t2');
                                                    globalAjaxVar = $.ajax({
                                                        type: "POST",
                                                        url: "../ws/ServiceMain.svc/ImplweekPlanDatatable",
                                                        data: '{"tp":"heltes", "gazarid":"' + $('#implweekTab2t2SelectGazar option:selected').val() + '", "heltesid":"' + $('#implweekTab2t2SelectHeltes option:selected').val() + '", "stid":"", "begindate":"' + $('#implweekTab2SelectPlanWeek option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab2SelectPlanWeek option:selected').val().split(' - ')[1] + '"}',
                                                        contentType: "application/json; charset=utf-8",
                                                        dataType: "json",
                                                        success: function (data) {
                                                            valData = '';
                                                            valData += '<table id="implweekTab2t2Datatable" class="table table-striped table-bordered table-hover" width="100%"><thead>';
                                                            valData += '<tr>';
                                                            valData += '<th class="text-center" style="vertical-align:middle;">№</th>';
                                                            valData += '<th class="text-center" style="vertical-align:middle;">Нэр</th>';
                                                            valData += '<th class="text-center" style="vertical-align:middle;">Засварлах</th>';
                                                            valData += '</tr>';
                                                            valData += '</thead><tbody>';
                                                            $($.parseJSON(data.d)).each(function (index, value) {
                                                                valData += '<tr data-id="' + value.ID + '">';
                                                                valData += '<td>' + value.NO + '</td>';
                                                                valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                                                                valData += '<td>';
                                                                valData += '<div class="btn-group">';
                                                                valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditTab2t2(this,\'засах\');" data-target="#implweekPlanModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                                                                valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab2t2(this);"><i class="fa fa-trash-o"></i></button>';
                                                                valData += '</div>';
                                                                valData += '</td>';
                                                                valData += '</tr>';
                                                            });
                                                            valData += '</tbody>';
                                                            valData += '</table>';
                                                            valData += '<script>';
                                                            valData += "var responsiveHelper_implweekTab2t2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#implweekTab2t2Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_implweekTab2t2Datatable) {responsiveHelper_implweekTab2t2Datatable = new ResponsiveDatatablesHelper($('#implweekTab2t2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_implweekTab2t2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_implweekTab2t2Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"45px\" }]});";
                                                            valData += '<\/script>';
                                                            $("#divBindTab2t2Table").html(valData);
                                                            hideLoader('loaderTab2t2');
                                                        },
                                                        failure: function (response) {
                                                            alert('FAILURE: ' + response.d);
                                                        },
                                                        error: function (xhr, status, error) {
                                                            window.location = '../#pg/error500.aspx';
                                                        }
                                                    });
                                                }
                                                else {
                                                    globalAjaxVar = $.ajax({
                                                        type: "POST",
                                                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                        data: '{"qry":"SELECT FILENAME FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'heltes\' AND GAZAR_ID=' + $('#implweekTab2t1SelectGazar option:selected').val() + ' AND HELTES_ID=' + $('#implweekTab2t1SelectHeltes option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[1] + '\'"}',
                                                        contentType: "application/json; charset=utf-8",
                                                        dataType: "json",
                                                        success: function (data) {
                                                            $('#implweekTab2t1AttachDownloadBtn').attr('href', '../files/implweek/' + data.d);
                                                            $('#implweekTab2t1AttachDownloadBtn').html('<i class="fa fa-paperclip"></i> Хавсаргасан файл татах');
                                                            hideLoader('loaderTab2t1');
                                                            showLoader('loaderTab2t2');
                                                            globalAjaxVar = $.ajax({
                                                                type: "POST",
                                                                url: "../ws/ServiceMain.svc/ImplweekPlanDatatable",
                                                                data: '{"tp":"heltes", "gazarid":"' + $('#implweekTab2t2SelectGazar option:selected').val() + '", "heltesid":"' + $('#implweekTab2t2SelectHeltes option:selected').val() + '", "stid":"", "begindate":"' + $('#implweekTab2SelectPlanWeek option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab2SelectPlanWeek option:selected').val().split(' - ')[1] + '"}',
                                                                contentType: "application/json; charset=utf-8",
                                                                dataType: "json",
                                                                success: function (data) {
                                                                    valData = '';
                                                                    valData += '<table id="implweekTab2t2Datatable" class="table table-striped table-bordered table-hover" width="100%"><thead>';
                                                                    valData += '<tr>';
                                                                    valData += '<th class="text-center" style="vertical-align:middle;">№</th>';
                                                                    valData += '<th class="text-center" style="vertical-align:middle;">Нэр</th>';
                                                                    valData += '<th class="text-center" style="vertical-align:middle;">Засварлах</th>';
                                                                    valData += '</tr>';
                                                                    valData += '</thead><tbody>';
                                                                    $($.parseJSON(data.d)).each(function (index, value) {
                                                                        valData += '<tr data-id="' + value.ID + '">';
                                                                        valData += '<td>' + value.NO + '</td>';
                                                                        valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                                                                        valData += '<td>';
                                                                        valData += '<div class="btn-group">';
                                                                        valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditTab2t2(this,\'засах\');" data-target="#implweekPlanModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                                                                        valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab2t2(this);"><i class="fa fa-trash-o"></i></button>';
                                                                        valData += '</div>';
                                                                        valData += '</td>';
                                                                        valData += '</tr>';
                                                                    });
                                                                    valData += '</tbody>';
                                                                    valData += '</table>';
                                                                    valData += '<script>';
                                                                    valData += "var responsiveHelper_implweekTab2t2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#implweekTab2t2Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_implweekTab2t2Datatable) {responsiveHelper_implweekTab2t2Datatable = new ResponsiveDatatablesHelper($('#implweekTab2t2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_implweekTab2t2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_implweekTab2t2Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"45px\" }]});";
                                                                    valData += '<\/script>';
                                                                    $("#divBindTab2t2Table").html(valData);
                                                                    hideLoader('loaderTab2t2');
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
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    //tab2t1
    function implweekTab2t1DataBind() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var userId = $('#indexUserId').text();
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ImplweekGetList",
            data: '{"yr":"' + $('#implweekTab2t1SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $('#implweekTab2SelectImplWeek').html(data.d);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetGazarListForDDL",
                    data: '{"yr":"' + $('#implweekTab2t1SelectYear option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        });
                        $("#implweekTab2t1SelectGazar").html(valData);
                        $('#implweekTab2t1SelectGazar').val(userGazarId);
                        $('#implweekTab2t1SelectGazar').prop('disabled', true);
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                            data: '{"yr":"' + $("#implweekTab1t1SelectYear option:selected").val() + '", "gazar":"' + $("#implweekTab2t1SelectGazar option:selected").val() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                                });
                                $("#implweekTab2t1SelectHeltes").html(valData);
                                if (!funcCheckRoles('3,4')) {
                                    $('#implweekTab2t1SelectHeltes').val(userHeltesId);
                                    $('#implweekTab2t1SelectHeltes').prop('disabled', true);
                                }
                                showLoader('loaderTab2t1');
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/ImplweekImplDatatable",
                                    data: '{"tp":"heltes", "gazarid":"' + $('#implweekTab2t1SelectGazar option:selected').val() + '", "heltesid":"' + $('#implweekTab2t1SelectHeltes option:selected').val() + '", "stid":"", "begindate":"' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[1] + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (data) {
                                        valData = '';
                                        valData += '<table id="implweekTab2t1Datatable" class="table table-striped table-bordered table-hover" width="100%"><thead>';
                                        valData += '<tr>';
                                        valData += '<th class="text-center" style="vertical-align:middle;">№</th>';
                                        valData += '<th class="text-center" style="vertical-align:middle;">Нэр</th>';
                                        valData += '<th class="text-center" style="vertical-align:middle;">Засварлах</th>';
                                        valData += '</tr>';
                                        valData += '</thead><tbody>';
                                        $($.parseJSON(data.d)).each(function (index, value) {
                                            valData += '<tr data-id="' + value.ID + '">';
                                            valData += '<td>' + value.NO + '</td>';
                                            valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                                            valData += '<td>';
                                            valData += '<div class="btn-group">';
                                            valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditTab2t1(this,\'засах\');" data-target="#implweekImplModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                                            valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab2t1(this);"><i class="fa fa-trash-o"></i></button>';
                                            valData += '</div>';
                                            valData += '</td>';
                                            valData += '</tr>';
                                        });
                                        valData += '</tbody>';
                                        valData += '</table>';
                                        valData += '<script>';
                                        valData += "var responsiveHelper_implweekTab2t1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#implweekTab2t1Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_implweekTab2t1Datatable) {responsiveHelper_implweekTab2t1Datatable = new ResponsiveDatatablesHelper($('#implweekTab2t1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_implweekTab2t1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_implweekTab2t1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"45px\" }]});";
                                        valData += '<\/script>';
                                        $("#divBindTab2t1Table").html(valData);
                                        globalAjaxVar = $.ajax({
                                            type: "POST",
                                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                            data: '{"qry":"SELECT COUNT(1) FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'heltes\' AND GAZAR_ID=' + $('#implweekTab2t1SelectGazar option:selected').val() + ' AND HELTES_ID=' + $('#implweekTab2t1SelectHeltes option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[1] + '\'"}',
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function (data) {
                                                if (data.d == '0') {
                                                    $('#implweekTab2t1AttachDownloadBtn').attr('href', 'javascript:void(0);');
                                                    $('#implweekTab2t1AttachDownloadBtn').html('<i class="fa fa-paperclip"></i> Файл хавсаргаагүй байна');
                                                    hideLoader('loaderTab2t1');
                                                }
                                                else {
                                                    globalAjaxVar = $.ajax({
                                                        type: "POST",
                                                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                        data: '{"qry":"SELECT FILENAME FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'heltes\' AND GAZAR_ID=' + $('#implweekTab2t1SelectGazar option:selected').val() + ' AND HELTES_ID=' + $('#implweekTab2t1SelectHeltes option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[1] + '\'"}',
                                                        contentType: "application/json; charset=utf-8",
                                                        dataType: "json",
                                                        success: function (data) {
                                                            $('#implweekTab2t1AttachDownloadBtn').attr('href', '../files/implweek/' + data.d);
                                                            $('#implweekTab2t1AttachDownloadBtn').html('<i class="fa fa-paperclip"></i> Хавсаргасан файл татах');
                                                            hideLoader('loaderTab2t1');
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
    function implweekTab2t1TableBind() {
        showLoader('loaderTab2t1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ImplweekImplDatatable",
            data: '{"tp":"heltes", "gazarid":"' + $('#implweekTab2t1SelectGazar option:selected').val() + '", "heltesid":"' + $('#implweekTab2t1SelectHeltes option:selected').val() + '", "stid":"", "begindate":"' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[1] + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += '<table id="implweekTab2t1Datatable" class="table table-striped table-bordered table-hover" width="100%"><thead>';
                valData += '<tr>';
                valData += '<th class="text-center" style="vertical-align:middle;">№</th>';
                valData += '<th class="text-center" style="vertical-align:middle;">Нэр</th>';
                valData += '<th class="text-center" style="vertical-align:middle;">Засварлах</th>';
                valData += '</tr>';
                valData += '</thead><tbody>';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<tr data-id="' + value.ID + '">';
                    valData += '<td>' + value.NO + '</td>';
                    valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                    valData += '<td>';
                    valData += '<div class="btn-group">';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditTab2t1(this,\'засах\');" data-target="#implweekImplModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab2t1(this);"><i class="fa fa-trash-o"></i></button>';
                    valData += '</div>';
                    valData += '</td>';
                    valData += '</tr>';
                });
                valData += '</tbody>';
                valData += '</table>';
                valData += '<script>';
                valData += "var responsiveHelper_implweekTab2t1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#implweekTab2t1Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_implweekTab2t1Datatable) {responsiveHelper_implweekTab2t1Datatable = new ResponsiveDatatablesHelper($('#implweekTab2t1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_implweekTab2t1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_implweekTab2t1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"45px\" }]});";
                valData += '<\/script>';
                $("#divBindTab2t1Table").html(valData);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                    data: '{"qry":"SELECT COUNT(1) FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'heltes\' AND GAZAR_ID=' + $('#implweekTab2t1SelectGazar option:selected').val() + ' AND HELTES_ID=' + $('#implweekTab2t1SelectHeltes option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[1] + '\'"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        if (data.d == '0') {
                            $('#implweekTab2t1AttachDownloadBtn').attr('href', 'javascript:void(0);');
                            $('#implweekTab2t1AttachDownloadBtn').html('<i class="fa fa-paperclip"></i> Файл хавсаргаагүй байна');
                            hideLoader('loaderTab2t1');
                        }
                        else {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                data: '{"qry":"SELECT FILENAME FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'heltes\' AND GAZAR_ID=' + $('#implweekTab2t1SelectGazar option:selected').val() + ' AND HELTES_ID=' + $('#implweekTab2t1SelectHeltes option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[1] + '\'"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    $('#implweekTab2t1AttachDownloadBtn').attr('href', '../files/implweek/' + data.d);
                                    $('#implweekTab2t1AttachDownloadBtn').html('<i class="fa fa-paperclip"></i> Хавсаргасан файл татах');
                                    hideLoader('loaderTab2t1');
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
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#implweekTab2t1SelectGazar").change(function () {
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
            data: '{"yr":"' + $("#implweekTab1t1SelectYear option:selected").val() + '", "gazar":"' + $("#implweekTab2t1SelectGazar option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#implweekTab2t1SelectHeltes").html(valData);
                implweekTab2t1TableBind();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                
                
                window.location = '../#pg/error500.aspx';
            }
        });
    });
    $("#implweekTab2t1SelectHeltes").change(function () {
        implweekTab2t1TableBind();
    });
    $("#implweekTab2t1SelectYear").change(function () {
        implweekTab2t1DataBind();
    });
    $("#implweekTab2SelectImplWeek").change(function () {
        implweekTab2t1TableBind();
    });
    function showAddEditTab2t1(el, isinsupt) {
        $('#implweekImplModalHeaderLabelType').text('Хэлтсийн долоо хоногийн тайлан');
        $('#implweekImplModalHeaderLabelIsInsUpd').text(isinsupt);
        $('#implweekImplModalDesc').html('<strong>' + $('#implweekTab2SelectImplWeek option:selected').text() + '</strong>');
        $('#implweekImplModalDesc').append('<br/>');
        $('#implweekImplModalDesc').append($('#implweekTab2t1SelectGazar option:selected').text() + ' - ' + $('#implweekTab2t1SelectHeltes option:selected').text());

        if (isinsupt == 'нэмэх') {
            $('#implweekImplID').text('');
            $('#implweekImplModalInputNo').val('');
            $('#implweekImplModalInputName').val('');
        }
        else {
            $("#implweekImplID").text($(el).closest('tr').attr('data-id'));
            $('#implweekImplModalInputNo').val($(el).closest('tr').find('td:eq(0)').text());
            $('#implweekImplModalInputName').val($(el).closest('tr').find('td:eq(1)').text());
        }
    }
    function showDeleteTab2t1(el) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Сонгосон хэлтсийн долоо хоногийн тайланг устгах уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"DELETE FROM TBL_IMPLWEEK WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        implweekTab2t1TableBind();
                        smallBox('Хэлтсийн долоо хоногийн тайлан', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
    function showAttachTab2t1(el) {
        $('#implweekImplAttachModalHeaderLabelType').text('Хэлтсийн долоо хоногийн тайлангийн хавсралт')
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'heltes\' AND GAZAR_ID=' + $('#implweekTab2t1SelectGazar option:selected').val() + ' AND HELTES_ID=' + $('#implweekTab2t1SelectHeltes option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[1] + '\'"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == '0') {
                    $('#implweekImplModalAttachBtn').attr('href', 'javascript:void(0);');
                    $('#implweekImplModalAttachBtn').html('Файл хавсаргаагүй байна...');
                    $('#implweekImplModalAttachInput').val('');
                }
                else {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                        data: '{"qry":"SELECT FILENAME FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'heltes\' AND GAZAR_ID=' + $('#implweekTab2t1SelectGazar option:selected').val() + ' AND HELTES_ID=' + $('#implweekTab2t1SelectHeltes option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[1] + '\'"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            $('#implweekImplModalAttachBtn').attr('href', '../files/implweek/' + data.d);
                            $('#implweekImplModalAttachBtn').html(data.d);
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
    }
    function showImportTab2t1(el) {
        var valData = '';
        $('#implweekImplImportModalHeaderLabelType').text("Хэлтсийн долоо хоногийн тайлан татах");
        showLoader('loaderTab2t1Import');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ImplweekImportImplDatatable",
            data: '{"yr":"' + $('#implweekTab2t1SelectYear option:selected').val() + '", "tp":"heltes", "gazarid":"' + $('#implweekTab2t1SelectGazar option:selected').val() + '", "heltesid":"' + $('#implweekTab2t1SelectHeltes option:selected').val() + '", "begindate":"' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[1] + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData = "<table id=\"implweekImplImportModalDatatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th>№</th>";
                valData += "<th>Нэр</th>";
                valData += "<th>Мэргэжилтэн</th>";
                valData += "<th>&nbsp;</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<tr data-id="' + value.ID + '">';
                    valData += '<td>' + value.NO + '</td>';
                    valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                    valData += '<td>' + value.STAFF + '</td>';
                    valData += '<td><label class=\"checkbox-inline\"><input type=\"checkbox\" class=\"checkbox style-0\"><span></span></label></td>';
                    valData += '</tr>';
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_implweekImplImportModalDatatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#implweekImplImportModalDatatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_implweekImplImportModalDatatable) {responsiveHelper_implweekImplImportModalDatatable = new ResponsiveDatatablesHelper($('#implweekImplImportModalDatatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_implweekImplImportModalDatatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_implweekImplImportModalDatatable.respond();}}).rowGrouping({iGroupingColumnIndex: 2,bExpandableGrouping: true});";
                valData += "<\/script>";
                $("#implweekImplImportModalDatatableDiv").html(valData);
                hideLoader('loaderTab2t1Import');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                
                
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    //tab2t2
    function implweekTab2t2DataBind() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var userId = $('#indexUserId').text();
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ImplweekGetList",
            data: '{"yr":"' + $('#implweekTab2t2SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $('#implweekTab2SelectPlanWeek').html(data.d);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetGazarListForDDL",
                    data: '{"yr":"' + $('#implweekTab2t2SelectYear option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        });
                        $("#implweekTab2t2SelectGazar").html(valData);
                        $('#implweekTab2t2SelectGazar').val(userGazarId);
                        $('#implweekTab2t2SelectGazar').prop('disabled', true);
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                            data: '{"yr":"' + $("#implweekTab1t1SelectYear option:selected").val() + '", "gazar":"' + $("#implweekTab1t1SelectGazar option:selected").val() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                                });
                                $("#implweekTab2t2SelectHeltes").html(valData);
                                if (!funcCheckRoles('3,4')) {
                                    $('#implweekTab2t2SelectHeltes').val(userHeltesId);
                                    $('#implweekTab2t2SelectHeltes').prop('disabled', true);
                                }
                                showLoader('loaderTab2t2');
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/ImplweekPlanDatatable",
                                    data: '{"tp":"heltes", "gazarid":"' + $('#implweekTab2t2SelectGazar option:selected').val() + '", "heltesid":"' + $('#implweekTab2t2SelectHeltes option:selected').val() + '", "stid":"", "begindate":"' + $('#implweekTab2SelectPlanWeek option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab2SelectPlanWeek option:selected').val().split(' - ')[1] + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (data) {
                                        valData = '';
                                        valData += '<table id="implweekTab2t2Datatable" class="table table-striped table-bordered table-hover" width="100%"><thead>';
                                        valData += '<tr>';
                                        valData += '<th class="text-center" style="vertical-align:middle;">№</th>';
                                        valData += '<th class="text-center" style="vertical-align:middle;">Нэр</th>';
                                        valData += '<th class="text-center" style="vertical-align:middle;">Засварлах</th>';
                                        valData += '</tr>';
                                        valData += '</thead><tbody>';
                                        $($.parseJSON(data.d)).each(function (index, value) {
                                            valData += '<tr data-id="' + value.ID + '">';
                                            valData += '<td>' + value.NO + '</td>';
                                            valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                                            valData += '<td>';
                                            valData += '<div class="btn-group">';
                                            valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditTab2t2(this,\'засах\');" data-target="#implweekPlanModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                                            valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab2t2(this);"><i class="fa fa-trash-o"></i></button>';
                                            valData += '</div>';
                                            valData += '</td>';
                                            valData += '</tr>';
                                        });
                                        valData += '</tbody>';
                                        valData += '</table>';
                                        valData += '<script>';
                                        valData += "var responsiveHelper_implweekTab2t2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#implweekTab2t2Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_implweekTab2t2Datatable) {responsiveHelper_implweekTab2t2Datatable = new ResponsiveDatatablesHelper($('#implweekTab2t2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_implweekTab2t2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_implweekTab2t2Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"45px\" }]});";
                                        valData += '<\/script>';
                                        $("#divBindTab2t2Table").html(valData);
                                        hideLoader('loaderTab2t2');
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
    function implweekTab2t2TableBind() {
        showLoader('loaderTab2t2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ImplweekPlanDatatable",
            data: '{"tp":"heltes", "gazarid":"' + $('#implweekTab2t2SelectGazar option:selected').val() + '", "heltesid":"' + $('#implweekTab2t2SelectHeltes option:selected').val() + '", "stid":"", "begindate":"' + $('#implweekTab2SelectPlanWeek option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab2SelectPlanWeek option:selected').val().split(' - ')[1] + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += '<table id="implweekTab2t2Datatable" class="table table-striped table-bordered table-hover" width="100%"><thead>';
                valData += '<tr>';
                valData += '<th class="text-center" style="vertical-align:middle;">№</th>';
                valData += '<th class="text-center" style="vertical-align:middle;">Нэр</th>';
                valData += '<th class="text-center" style="vertical-align:middle;">Засварлах</th>';
                valData += '</tr>';
                valData += '</thead><tbody>';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<tr data-id="' + value.ID + '">';
                    valData += '<td>' + value.NO + '</td>';
                    valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                    valData += '<td>';
                    valData += '<div class="btn-group">';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditTab2t2(this,\'засах\');" data-target="#implweekPlanModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab2t2(this);"><i class="fa fa-trash-o"></i></button>';
                    valData += '</div>';
                    valData += '</td>';
                    valData += '</tr>';
                });
                valData += '</tbody>';
                valData += '</table>';
                valData += '<script>';
                valData += "var responsiveHelper_implweekTab2t2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#implweekTab2t2Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_implweekTab2t2Datatable) {responsiveHelper_implweekTab2t2Datatable = new ResponsiveDatatablesHelper($('#implweekTab2t2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_implweekTab2t2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_implweekTab2t2Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"45px\" }]});";
                valData += '<\/script>';
                $("#divBindTab2t2Table").html(valData);
                hideLoader('loaderTab2t2');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#implweekTab2t2SelectGazar").change(function () {
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
            data: '{"yr":"' + $("#implweekTab1t1SelectYear option:selected").val() + '", "gazar":"' + $("#implweekTab1t1SelectGazar option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#implweekTab2t2SelectHeltes").html(valData);
                implweekTab2t2TableBind();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                
                
                window.location = '../#pg/error500.aspx';
            }
        });
    });
    $("#implweekTab2t2SelectHeltes").change(function () {
        implweekTab2t2TableBind();
    });
    $("#implweekTab2t2SelectYear").change(function () {
        implweekTab2t2DataBind();
    });
    $("#implweekTab2SelectPlanWeek").change(function () {
        implweekTab2t2TableBind();
    });
    function showAddEditTab2t2(el, isinsupt) {
        $('#implweekPlanModalHeaderLabelType').text('Хэлтсийн дараа долоо хоногийн төлөвлөгөө');
        $('#implweekPlanModalHeaderLabelIsInsUpd').text(isinsupt);
        $('#implweekPlanModalDesc').html('<strong>' + $('#implweekTab2SelectPlanWeek option:selected').text() + '</strong>');
        $('#implweekPlanModalDesc').append('<br/>');
        $('#implweekPlanModalDesc').append($('#implweekTab2t2SelectGazar option:selected').text() + ' - ' + $('#implweekTab2t2SelectHeltes option:selected').text());

        if (isinsupt == 'нэмэх') {
            $('#implweekPlanID').text('');
            $('#implweekPlanModalInputNo').val('');
            $('#implweekPlanModalInputName').val('');
        }
        else {
            $("#implweekPlanID").text($(el).closest('tr').attr('data-id'));
            $('#implweekPlanModalInputNo').val($(el).closest('tr').find('td:eq(0)').text());
            $('#implweekPlanModalInputName').val($(el).closest('tr').find('td:eq(1)').text());
        }
    }
    function showDeleteTab2t2(el) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Сонгосон хэлтсийн дараа долоо хоногийн төлөвлөгөөг устгах уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"DELETE FROM TBL_PLANWEEK WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        implweekTab2t2TableBind();
                        smallBox('Хэлтсийн дараа долоо хоногийн төлөвлөгөө', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
    function showImportTab2t2(el) {
        var valData = '';
        $('#implweekPlanImportModalHeaderLabelType').text("Хэлтсийн дараа долоо хоногийн төлөвлөгөө татах");
        showLoader('loaderTab2t2Import');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ImplweekImportPlanDatatable",
            data: '{"yr":"' + $('#implweekTab2t2SelectYear option:selected').val() + '", "tp":"heltes", "gazarid":"' + $('#implweekTab2t2SelectGazar option:selected').val() + '", "heltesid":"' + $('#implweekTab2t2SelectHeltes option:selected').val() + '", "begindate":"' + $('#implweekTab2SelectPlanWeek option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab2SelectPlanWeek option:selected').val().split(' - ')[1] + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData = "<table id=\"implweekPlanImportModalDatatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th>№</th>";
                valData += "<th>Нэр</th>";
                valData += "<th>Мэргэжилтэн</th>";
                valData += "<th>&nbsp;</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<tr data-id="' + value.ID + '">';
                    valData += '<td>' + value.NO + '</td>';
                    valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                    valData += '<td>' + value.STAFF + '</td>';
                    valData += '<td><label class=\"checkbox-inline\"><input type=\"checkbox\" class=\"checkbox style-0\"><span></span></label></td>';
                    valData += '</tr>';
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_implweekPlanImportModalDatatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#implweekPlanImportModalDatatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_implweekPlanImportModalDatatable) {responsiveHelper_implweekPlanImportModalDatatable = new ResponsiveDatatablesHelper($('#implweekPlanImportModalDatatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_implweekPlanImportModalDatatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_implweekPlanImportModalDatatable.respond();}}).rowGrouping({iGroupingColumnIndex: 2,bExpandableGrouping: true});";
                valData += "<\/script>";
                $("#implweekPlanImportModalDatatableDiv").html(valData);
                hideLoader('loaderTab2t2Import');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                
                
                window.location = '../#pg/error500.aspx';
            }
        });
    }

    //tab3
    function implweekTab3SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userId = $('#indexUserId').text();
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ImplweekGetList",
            data: '{"yr":"' + $('#implweekTab3t1SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $('#implweekTab3SelectImplWeek').html(data.d);
                $('#implweekTab3SelectPlanWeek').html(data.d);
                $('#implweekTab3SelectPlanWeekReport').html(data.d);
                $('#implweekTab3SelectPlanWeek').val($('#implweekTab3SelectPlanWeek option:selected').next().val());
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetGazarListForDDL",
                    data: '{"yr":"' + $('#implweekTab3t1SelectYear option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '<option value="0" title="бүгд">Бүгд</option>';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        });
                        $("#implweekTab3t1SelectGazar").html(valData);
                        $("#implweekTab3t2SelectGazar").html(valData);
                        $("#implweekTab3SelectGazar").html(valData);
                        $('#implweekTab3t1SelectGazar').val(userGazarId);
                        $('#implweekTab3t2SelectGazar').val(userGazarId);
                        $('#implweekTab3SelectGazar').val(userGazarId);
                        $('#implweekTab3t1SelectGazar').prop('disabled', false);
                        $('#implweekTab3t2SelectGazar').prop('disabled', false);
                        $('#implweekTab3SelectGazar').prop('disabled', false);
                        $('#implweekTab3Gazarname').html($('#implweekTab3SelectGazar option:selected').attr('title').replace('газар','газрын'));
                        showLoader('loaderTab3t1');
                        showLoader('loaderTab3');
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/ImplweekTab3ReportImpl",
                            data: '{"yr":"' + $('#implweekTab3SelectYear option:selected').val() + '", "gazarid":"' + $('#implweekTab3SelectGazar option:selected').val() + '", "begindate":"' + $('#implweekTab3SelectPlanWeekReport option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab3SelectPlanWeekReport option:selected').val().split(' - ')[1] + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                var heltesId = '';
                                var heltesNum = 1;
                                valData = '';
                                valData += "<p style=\"text-transform: uppercase; font-weight:bold; text-align:center;\">ТАЙЛАН</p>";
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    if (heltesId != value.HELTES_ID) {
                                        if (heltesId == "") valData += "<p style=\"text-transform: uppercase; font-weight:bold;\">" + heltesNum + ". " + value.BR_NAME + "</p><ul style=\"list-style-type: none;\">";
                                        else valData += "</ul><p style=\"text-transform: uppercase; font-weight:bold;\">" + heltesNum + ". " + value.BR_NAME + "</p><ul style=\"list-style-type: none;\">";
                                        heltesNum++;
                                    }
                                    valData += "<li>" + replaceDatabaseToDisplay(value.NAME) + "</li>";
                                    heltesId = value.HELTES_ID;
                                });
                                valData += "</ul>";
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/ImplweekTab3ReportPlan",
                                    data: '{"yr":"' + $('#implweekTab3SelectYear option:selected').val() + '", "gazarid":"' + $('#implweekTab3SelectGazar option:selected').val() + '", "begindate":"' + $('#implweekTab3SelectPlanWeekReport option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab3SelectPlanWeekReport option:selected').val().split(' - ')[1] + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (data) {
                                        heltesId = '';
                                        heltesNum = 1;
                                        valData += "<p style=\"text-transform: uppercase; font-weight:bold; text-align:center;\">ДАРАА ДОЛОО ХОНОГТ ХИЙХЭЭР ТӨЛӨВЛӨСӨН АЖЛУУД</p>";
                                        $($.parseJSON(data.d)).each(function (index, value) {
                                            if (heltesId != value.HELTES_ID) {
                                                if (heltesId == "") valData += "<p style=\"text-transform: uppercase; font-weight:bold;\">" + heltesNum + ". " + value.BR_NAME + "</p><ul style=\"list-style-type: none;\">";
                                                else valData += "</ul><p style=\"text-transform: uppercase; font-weight:bold;\">" + heltesNum + ". " + value.BR_NAME + "</p><ul style=\"list-style-type: none;\">";
                                                heltesNum++;
                                            }
                                            valData += "<li>" + replaceDatabaseToDisplay(value.NAME) + "</li>";
                                            heltesId = value.HELTES_ID;
                                        });
                                        valData += "</ul>";
                                        $('#implweekTab3ReportDiv').html(valData);
                                        hideLoader('loaderTab3');
                                        globalAjaxVar = $.ajax({
                                            type: "POST",
                                            url: "../ws/ServiceMain.svc/ImplweekImplDatatable",
                                            data: '{"tp":"gazar", "gazarid":"' + $('#implweekTab3t1SelectGazar option:selected').val() + '", "heltesid":"", "stid":"", "begindate":"' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[1] + '"}',
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function (data) {
                                                valData = '';
                                                valData += '<table id="implweekTab3t1Datatable" class="table table-striped table-bordered table-hover" width="100%"><thead>';
                                                valData += '<tr>';
                                                valData += '<th class="text-center" style="vertical-align:middle;">№</th>';
                                                valData += '<th class="text-center" style="vertical-align:middle;">Нэр</th>';
                                                valData += '<th class="text-center" style="vertical-align:middle;">Засварлах</th>';
                                                valData += '</tr>';
                                                valData += '</thead><tbody>';
                                                $($.parseJSON(data.d)).each(function (index, value) {
                                                    valData += '<tr data-id="' + value.ID + '">';
                                                    valData += '<td>' + value.NO + '</td>';
                                                    valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                                                    valData += '<td>';
                                                    valData += '<div class="btn-group">';
                                                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditTab3t1(this,\'засах\');" data-target="#implweekImplModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                                                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab3t1(this);"><i class="fa fa-trash-o"></i></button>';
                                                    valData += '</div>';
                                                    valData += '</td>';
                                                    valData += '</tr>';
                                                });
                                                valData += '</tbody>';
                                                valData += '</table>';
                                                valData += '<script>';
                                                valData += "var responsiveHelper_implweekTab3t1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#implweekTab3t1Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_implweekTab3t1Datatable) {responsiveHelper_implweekTab3t1Datatable = new ResponsiveDatatablesHelper($('#implweekTab3t1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_implweekTab3t1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_implweekTab3t1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"45px\" }]});";
                                                valData += '<\/script>';
                                                $("#divBindTab3t1Table").html(valData);
                                                globalAjaxVar = $.ajax({
                                                    type: "POST",
                                                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                    data: '{"qry":"SELECT COUNT(1) FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'gazar\' AND GAZAR_ID=' + $('#implweekTab3t1SelectGazar option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[1] + '\'"}',
                                                    contentType: "application/json; charset=utf-8",
                                                    dataType: "json",
                                                    success: function (data) {
                                                        if (data.d == '0') {
                                                            $('#implweekTab3t1AttachDownloadBtn').attr('href', 'javascript:void(0);');
                                                            $('#implweekTab3t1AttachDownloadBtn').html('<i class="fa fa-paperclip"></i> Файл хавсаргаагүй байна');
                                                            hideLoader('loaderTab3t1');
                                                            showLoader('loaderTab3t2');
                                                            globalAjaxVar = $.ajax({
                                                                type: "POST",
                                                                url: "../ws/ServiceMain.svc/ImplweekPlanDatatable",
                                                                data: '{"tp":"gazar", "gazarid":"' + $('#implweekTab3t2SelectGazar option:selected').val() + '", "heltesid":"", "stid":"", "begindate":"' + $('#implweekTab3SelectPlanWeek option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab3SelectPlanWeek option:selected').val().split(' - ')[1] + '"}',
                                                                contentType: "application/json; charset=utf-8",
                                                                dataType: "json",
                                                                success: function (data) {
                                                                    valData = '';
                                                                    valData += '<table id="implweekTab3t2Datatable" class="table table-striped table-bordered table-hover" width="100%"><thead>';
                                                                    valData += '<tr>';
                                                                    valData += '<th class="text-center" style="vertical-align:middle;">№</th>';
                                                                    valData += '<th class="text-center" style="vertical-align:middle;">Нэр</th>';
                                                                    valData += '<th class="text-center" style="vertical-align:middle;">Засварлах</th>';
                                                                    valData += '</tr>';
                                                                    valData += '</thead><tbody>';
                                                                    $($.parseJSON(data.d)).each(function (index, value) {
                                                                        valData += '<tr data-id="' + value.ID + '">';
                                                                        valData += '<td>' + value.NO + '</td>';
                                                                        valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                                                                        valData += '<td>';
                                                                        valData += '<div class="btn-group">';
                                                                        valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditTab3t2(this,\'засах\');" data-target="#implweekPlanModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                                                                        valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab3t2(this);"><i class="fa fa-trash-o"></i></button>';
                                                                        valData += '</div>';
                                                                        valData += '</td>';
                                                                        valData += '</tr>';
                                                                    });
                                                                    valData += '</tbody>';
                                                                    valData += '</table>';
                                                                    valData += '<script>';
                                                                    valData += "var responsiveHelper_implweekTab3t2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#implweekTab3t2Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_implweekTab3t2Datatable) {responsiveHelper_implweekTab3t2Datatable = new ResponsiveDatatablesHelper($('#implweekTab3t2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_implweekTab3t2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_implweekTab3t2Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"45px\" }]});";
                                                                    valData += '<\/script>';
                                                                    $("#divBindTab3t2Table").html(valData);
                                                                    hideLoader('loaderTab3t2');
                                                                },
                                                                failure: function (response) {
                                                                    alert('FAILURE: ' + response.d);
                                                                },
                                                                error: function (xhr, status, error) {
                                                                    window.location = '../#pg/error500.aspx';
                                                                }
                                                            });
                                                        }
                                                        else {
                                                            globalAjaxVar = $.ajax({
                                                                type: "POST",
                                                                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                data: '{"qry":"SELECT FILENAME FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'gazar\' AND GAZAR_ID=' + $('#implweekTab3t1SelectGazar option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[1] + '\'"}',
                                                                contentType: "application/json; charset=utf-8",
                                                                dataType: "json",
                                                                success: function (data) {
                                                                    $('#implweekTab3t1AttachDownloadBtn').attr('href', '../files/implweek/' + data.d);
                                                                    $('#implweekTab3t1AttachDownloadBtn').html('<i class="fa fa-paperclip"></i> Хавсаргасан файл татах');
                                                                    hideLoader('loaderTab3t1');
                                                                    showLoader('loaderTab3t2');
                                                                    globalAjaxVar = $.ajax({
                                                                        type: "POST",
                                                                        url: "../ws/ServiceMain.svc/ImplweekPlanDatatable",
                                                                        data: '{"tp":"gazar", "gazarid":"' + $('#implweekTab3t2SelectGazar option:selected').val() + '", "heltesid":"", "stid":"", "begindate":"' + $('#implweekTab3SelectPlanWeek option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab3SelectPlanWeek option:selected').val().split(' - ')[1] + '"}',
                                                                        contentType: "application/json; charset=utf-8",
                                                                        dataType: "json",
                                                                        success: function (data) {
                                                                            valData = '';
                                                                            valData += '<table id="implweekTab3t2Datatable" class="table table-striped table-bordered table-hover" width="100%"><thead>';
                                                                            valData += '<tr>';
                                                                            valData += '<th class="text-center" style="vertical-align:middle;">№</th>';
                                                                            valData += '<th class="text-center" style="vertical-align:middle;">Нэр</th>';
                                                                            valData += '<th class="text-center" style="vertical-align:middle;">Засварлах</th>';
                                                                            valData += '</tr>';
                                                                            valData += '</thead><tbody>';
                                                                            $($.parseJSON(data.d)).each(function (index, value) {
                                                                                valData += '<tr data-id="' + value.ID + '">';
                                                                                valData += '<td>' + value.NO + '</td>';
                                                                                valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                                                                                valData += '<td>';
                                                                                valData += '<div class="btn-group">';
                                                                                valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditTab3t2(this,\'засах\');" data-target="#implweekPlanModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                                                                                valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab3t2(this);"><i class="fa fa-trash-o"></i></button>';
                                                                                valData += '</div>';
                                                                                valData += '</td>';
                                                                                valData += '</tr>';
                                                                            });
                                                                            valData += '</tbody>';
                                                                            valData += '</table>';
                                                                            valData += '<script>';
                                                                            valData += "var responsiveHelper_implweekTab3t2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#implweekTab3t2Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_implweekTab3t2Datatable) {responsiveHelper_implweekTab3t2Datatable = new ResponsiveDatatablesHelper($('#implweekTab3t2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_implweekTab3t2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_implweekTab3t2Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"45px\" }]});";
                                                                            valData += '<\/script>';
                                                                            $("#divBindTab3t2Table").html(valData);
                                                                            hideLoader('loaderTab3t2');
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
    function implweekTab3DataBind() {
        showLoader('loaderTab3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ImplweekTab3ReportImpl",
            data: '{"yr":"' + $('#implweekTab3SelectYear option:selected').val() + '", "gazarid":"' + $('#implweekTab3SelectGazar option:selected').val() + '", "begindate":"' + $('#implweekTab3SelectPlanWeekReport option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab3SelectPlanWeekReport option:selected').val().split(' - ')[1] + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                var heltesId = '';
                var heltesNum = 1;
                valData = '';
                valData += "<p style=\"text-transform: uppercase; font-weight:bold; text-align:center;\">ТАЙЛАН</p>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (heltesId != value.HELTES_ID) {
                        if (heltesId == "") valData += "<p style=\"text-transform: uppercase; font-weight:bold;\">" + heltesNum + ". " + value.BR_NAME + "</p><ul style=\"list-style-type: none;\">";
                        else valData += "</ul><p style=\"text-transform: uppercase; font-weight:bold;\">" + heltesNum + ". " + value.BR_NAME + "</p><ul style=\"list-style-type: none;\">";
                        heltesNum++;
                    }
                    valData += "<li>" + replaceDatabaseToDisplay(value.NAME) + "</li>";
                    heltesId = value.HELTES_ID;
                });
                valData += "</ul>";
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/ImplweekTab3ReportPlan",
                    data: '{"yr":"' + $('#implweekTab3SelectYear option:selected').val() + '", "gazarid":"' + $('#implweekTab3SelectGazar option:selected').val() + '", "begindate":"' + $('#implweekTab3SelectPlanWeekReport option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab3SelectPlanWeekReport option:selected').val().split(' - ')[1] + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        heltesId = '';
                        heltesNum = 1;
                        valData += "<p style=\"text-transform: uppercase; font-weight:bold; text-align:center;\">ДАРАА ДОЛОО ХОНОГТ ХИЙХЭЭР ТӨЛӨВЛӨСӨН АЖЛУУД</p>";
                        $($.parseJSON(data.d)).each(function (index, value) {
                            if (heltesId != value.HELTES_ID) {
                                if (heltesId == "") valData += "<p style=\"text-transform: uppercase; font-weight:bold;\">" + heltesNum + ". " + value.BR_NAME + "</p><ul style=\"list-style-type: none;\">";
                                else valData += "</ul><p style=\"text-transform: uppercase; font-weight:bold;\">" + heltesNum + ". " + value.BR_NAME + "</p><ul style=\"list-style-type: none;\">";
                                heltesNum++;
                            }
                            valData += "<li>" + replaceDatabaseToDisplay(value.NAME) + "</li>";
                            heltesId = value.HELTES_ID;
                        });
                        valData += "</ul>";
                        $('#implweekTab3ReportDiv').html(valData);
                        hideLoader('loaderTab3');
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
    $("#implweekTab3SelectGazar").change(function () {
        implweekTab3DataBind();
    });
    $("#implweekTab3SelectYear").change(function () {
        implweekTab3DataBind();
    });
    $("#implweekTab3SelectPlanWeekReport").change(function () {
        implweekTab3DataBind();
    });
    //tab3t1
    function implweekTab3t1DataBind() {
        var userGazarId = $('#indexUserGazarId').text();
        var userId = $('#indexUserId').text();
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ImplweekGetList",
            data: '{"yr":"' + $('#implweekTab3t1SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $('#implweekTab3SelectImplWeek').html(data.d);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetGazarListForDDL",
                    data: '{"yr":"' + $('#implweekTab3t1SelectYear option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        });
                        $("#implweekTab3t1SelectGazar").html(valData);
                        $('#implweekTab3t1SelectGazar').val(userGazarId);
                        $('#implweekTab3t1SelectGazar').prop('disabled', true);
                        showLoader('loaderTab3t1');
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/ImplweekImplDatatable",
                            data: '{"tp":"gazar", "gazarid":"' + $('#implweekTab3t1SelectGazar option:selected').val() + '", "heltesid":"", "stid":"", "begindate":"' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[1] + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                valData += '<table id="implweekTab3t1Datatable" class="table table-striped table-bordered table-hover" width="100%"><thead>';
                                valData += '<tr>';
                                valData += '<th class="text-center" style="vertical-align:middle;">№</th>';
                                valData += '<th class="text-center" style="vertical-align:middle;">Нэр</th>';
                                valData += '<th class="text-center" style="vertical-align:middle;">Засварлах</th>';
                                valData += '</tr>';
                                valData += '</thead><tbody>';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += '<tr data-id="' + value.ID + '">';
                                    valData += '<td>' + value.NO + '</td>';
                                    valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                                    valData += '<td>';
                                    valData += '<div class="btn-group">';
                                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditTab3t1(this,\'засах\');" data-target="#implweekImplModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab3t1(this);"><i class="fa fa-trash-o"></i></button>';
                                    valData += '</div>';
                                    valData += '</td>';
                                    valData += '</tr>';
                                });
                                valData += '</tbody>';
                                valData += '</table>';
                                valData += '<script>';
                                valData += "var responsiveHelper_implweekTab3t1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#implweekTab3t1Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_implweekTab3t1Datatable) {responsiveHelper_implweekTab3t1Datatable = new ResponsiveDatatablesHelper($('#implweekTab3t1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_implweekTab3t1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_implweekTab3t1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"45px\" }]});";
                                valData += '<\/script>';
                                $("#divBindTab3t1Table").html(valData);
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                    data: '{"qry":"SELECT COUNT(1) FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'gazar\' AND GAZAR_ID=' + $('#implweekTab3t1SelectGazar option:selected').val() + '  AND BEGINDATE=\'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[1] + '\'"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (data) {
                                        if (data.d == '0') {
                                            $('#implweekTab3t1AttachDownloadBtn').attr('href', 'javascript:void(0);');
                                            $('#implweekTab3t1AttachDownloadBtn').html('<i class="fa fa-paperclip"></i> Файл хавсаргаагүй байна');
                                            hideLoader('loaderTab3t1');
                                        }
                                        else {
                                            globalAjaxVar = $.ajax({
                                                type: "POST",
                                                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                data: '{"qry":"SELECT FILENAME FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'gazar\' AND GAZAR_ID=' + $('#implweekTab3t1SelectGazar option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[1] + '\'"}',
                                                contentType: "application/json; charset=utf-8",
                                                dataType: "json",
                                                success: function (data) {
                                                    $('#implweekTab3t1AttachDownloadBtn').attr('href', '../files/implweek/' + data.d);
                                                    $('#implweekTab3t1AttachDownloadBtn').html('<i class="fa fa-paperclip"></i> Хавсаргасан файл татах');
                                                    hideLoader('loaderTab3t1');
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
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                
                
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function implweekTab3t1TableBind() {
        showLoader('loaderTab3t1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ImplweekImplDatatable",
            data: '{"tp":"gazar", "gazarid":"' + $('#implweekTab3t1SelectGazar option:selected').val() + '", "heltesid":"", "stid":"", "begindate":"' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[1] + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += '<table id="implweekTab3t1Datatable" class="table table-striped table-bordered table-hover" width="100%"><thead>';
                valData += '<tr>';
                valData += '<th class="text-center" style="vertical-align:middle;">№</th>';
                valData += '<th class="text-center" style="vertical-align:middle;">Нэр</th>';
                valData += '<th class="text-center" style="vertical-align:middle;">Засварлах</th>';
                valData += '</tr>';
                valData += '</thead><tbody>';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<tr data-id="' + value.ID + '">';
                    valData += '<td>' + value.NO + '</td>';
                    valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                    valData += '<td>';
                    valData += '<div class="btn-group">';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditTab3t1(this,\'засах\');" data-target="#implweekImplModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab3t1(this);"><i class="fa fa-trash-o"></i></button>';
                    valData += '</div>';
                    valData += '</td>';
                    valData += '</tr>';
                });
                valData += '</tbody>';
                valData += '</table>';
                valData += '<script>';
                valData += "var responsiveHelper_implweekTab3t1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#implweekTab3t1Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_implweekTab3t1Datatable) {responsiveHelper_implweekTab3t1Datatable = new ResponsiveDatatablesHelper($('#implweekTab3t1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_implweekTab3t1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_implweekTab3t1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"45px\" }]});";
                valData += '<\/script>';
                $("#divBindTab3t1Table").html(valData);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                    data: '{"qry":"SELECT COUNT(1) FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'gazar\' AND GAZAR_ID=' + $('#implweekTab3t1SelectGazar option:selected').val() + '  AND BEGINDATE=\'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[1] + '\'"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        if (data.d == '0') {
                            $('#implweekTab3t1AttachDownloadBtn').attr('href', 'javascript:void(0);');
                            $('#implweekTab3t1AttachDownloadBtn').html('<i class="fa fa-paperclip"></i> Файл хавсаргаагүй байна');
                            hideLoader('loaderTab3t1');
                        }
                        else {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                data: '{"qry":"SELECT FILENAME FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'gazar\' AND GAZAR_ID=' + $('#implweekTab3t1SelectGazar option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[1] + '\'"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    $('#implweekTab3t1AttachDownloadBtn').attr('href', '../files/implweek/' + data.d);
                                    $('#implweekTab3t1AttachDownloadBtn').html('<i class="fa fa-paperclip"></i> Хавсаргасан файл татах');
                                    hideLoader('loaderTab3t1');
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
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                
                
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#implweekTab3t1SelectGazar").change(function () {
        implweekTab3t1TableBind();
    });
    $("#implweekTab3t1SelectYear").change(function () {
        implweekTab3t1DataBind();
    });
    $("#implweekTab3SelectImplWeek").change(function () {
        implweekTab3t1TableBind();
    });
    function showAddEditTab3t1(el, isinsupt) {
        $('#implweekImplModalHeaderLabelType').text('Газрын долоо хоногийн тайлан');
        $('#implweekImplModalHeaderLabelIsInsUpd').text(isinsupt);
        $('#implweekImplModalDesc').html('<strong>' + $('#implweekTab3SelectImplWeek option:selected').text() + '</strong>');
        $('#implweekImplModalDesc').append('<br/>');
        $('#implweekImplModalDesc').append($('#implweekTab3t1SelectGazar option:selected').text());

        if (isinsupt == 'нэмэх') {
            $('#implweekImplID').text('');
            $('#implweekImplModalInputNo').val('');
            $('#implweekImplModalInputName').val('');
        }
        else {
            $("#implweekImplID").text($(el).closest('tr').attr('data-id'));
            $('#implweekImplModalInputNo').val($(el).closest('tr').find('td:eq(0)').text());
            $('#implweekImplModalInputName').val($(el).closest('tr').find('td:eq(1)').text());
        }
    }
    function showDeleteTab3t1(el) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Сонгосон газрын долоо хоногийн тайланг устгах уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                    data: '{"qry":"DELETE FROM TBL_IMPLWEEK WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        implweekTab3t1TableBind();
                        smallBox('Газрын долоо хоногийн тайлан', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
    function showAttachTab3t1(el) {
        $('#implweekImplAttachModalHeaderLabelType').text('Газрын долоо хоногийн тайлангийн хавсралт')
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'gazar\' AND GAZAR_ID=' + $('#implweekTab3t1SelectGazar option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[1] + '\'"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == '0') {
                    $('#implweekImplModalAttachBtn').attr('href', 'javascript:void(0);');
                    $('#implweekImplModalAttachBtn').html('Файл хавсаргаагүй байна...');
                    $('#implweekImplModalAttachInput').val('');
                }
                else {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                        data: '{"qry":"SELECT FILENAME FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'gazar\' AND GAZAR_ID=' + $('#implweekTab3t1SelectGazar option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[1] + '\'"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            $('#implweekImplModalAttachBtn').attr('href', '../files/implweek/' + data.d);
                            $('#implweekImplModalAttachBtn').html(data.d);
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
    }
    function showImportTab3t1(el) {
        var valData = '';
        $('#implweekImplImportModalHeaderLabelType').text("Газрын долоо хоногийн тайлан татах");
        showLoader('loaderTab2t1Import');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ImplweekImportImplDatatable",
            data: '{"yr":"' + $('#implweekTab3t1SelectYear option:selected').val() + '", "tp":"gazar", "gazarid":"' + $('#implweekTab3t1SelectGazar option:selected').val() + '", "heltesid":"", "begindate":"' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[1] + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData = "<table id=\"implweekImplImportModalDatatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th>№</th>";
                valData += "<th>Нэр</th>";
                valData += "<th>Мэргэжилтэн</th>";
                valData += "<th>&nbsp;</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<tr data-id="' + value.ID + '">';
                    valData += '<td>' + value.NO + '</td>';
                    valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                    valData += '<td>' + value.STAFF + '</td>';
                    valData += '<td><label class=\"checkbox-inline\"><input type=\"checkbox\" class=\"checkbox style-0\"><span></span></label></td>';
                    valData += '</tr>';
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_implweekImplImportModalDatatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#implweekImplImportModalDatatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_implweekImplImportModalDatatable) {responsiveHelper_implweekImplImportModalDatatable = new ResponsiveDatatablesHelper($('#implweekImplImportModalDatatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_implweekImplImportModalDatatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_implweekImplImportModalDatatable.respond();}}).rowGrouping({iGroupingColumnIndex: 2,bExpandableGrouping: true});";
                valData += "<\/script>";
                $("#implweekImplImportModalDatatableDiv").html(valData);
                hideLoader('loaderTab2t1Import');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                
                
                window.location = '../#pg/error500.aspx';
            }
        });
    }

    $("#implweekImplImportModalSave").click(function () {
        var checkedVals = '';
        $('#implweekImplImportModalDatatable').find('tbody > tr').each(function (index) {
            if ($('td:eq(0)', this).attr('colspan') != '4') {
                if ($('td:eq(2)', this).find(':checkbox').is(':checked')) {
                    if (checkedVals == '') checkedVals = $(this).attr('data-id');
                    else checkedVals += ',' + $(this).attr('data-id');
                }
            }
        });
        if (checkedVals == '') alert('Тайлан сонгож байж хадгална. Дор хаяж нэг тайлан сонгоно уу!');
        else {
            if ($('#implweekImplImportModalHeaderLabelType').text() == 'Хэлтсийн долоо хоногийн тайлан татах') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/IMPLWEEK_IMPORT_HELTES",
                    data: '{"P_TP":"heltes", "P_GAZAR_ID":"' + $('#implweekTab2t1SelectGazar option:selected').val() + '", "P_HELTES_ID":"' + $('#implweekTab2t1SelectHeltes option:selected').val() + '", "P_BEGINDATE":"' + $('#implweekTab2SelectImplWeek option:selected').text().split(' - ')[0] + '", "P_ENDDATE":"' + $('#implweekTab2SelectImplWeek option:selected').text().split(' - ')[1] + '", "P_IMPLLIST":"' + checkedVals + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        implweekTab2t1TableBind();
                        $('#implweekImplImportModal').modal('hide');
                        smallBox('Хэлтсийн долоо хоногийн тайлан', 'Амжилттай хуулагдлаа', '#659265', 3000);
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        
                        
                        window.location = '../#pg/error500.aspx';
                    }
                });
            }
            else if ($('#implweekImplImportModalHeaderLabelType').text() == 'Газрын долоо хоногийн тайлан татах') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/IMPLWEEK_IMPORT_GAZAR",
                    data: '{"P_TP":"gazar", "P_GAZAR_ID":"' + $('#implweekTab3t1SelectGazar option:selected').val() + '", "P_BEGINDATE":"' + $('#implweekTab3SelectImplWeek option:selected').text().split(' - ')[0] + '", "P_ENDDATE":"' + $('#implweekTab3SelectImplWeek option:selected').text().split(' - ')[1] + '", "P_IMPLLIST":"' + checkedVals + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        implweekTab3t1TableBind();
                        $('#implweekImplImportModal').modal('hide');
                        smallBox('Газрын долоо хоногийн тайлан', 'Амжилттай хуулагдлаа', '#659265', 3000);
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
    $("#implweekPlanImportModalSave").click(function () {
        var checkedVals = '';
        $('#implweekPlanImportModalDatatable').find('tbody > tr').each(function (index) {
            if ($('td:eq(0)', this).attr('colspan') != '4') {
                if ($('td:eq(2)', this).find(':checkbox').is(':checked')) {
                    if (checkedVals == '') checkedVals = $(this).attr('data-id');
                    else checkedVals += ',' + $(this).attr('data-id');
                }
            }
        });
        if (checkedVals == '') alert('Төлөвлөгөө сонгож байж хадгална. Дор хаяж нэг тайлан сонгоно уу!');
        else {
            if ($('#implweekPlanImportModalHeaderLabelType').text() == 'Хэлтсийн дараа долоо хоногийн төлөвлөгөө татах') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/PLANWEEK_IMPORT_HELTES",
                    data: '{"P_TP":"heltes", "P_GAZAR_ID":"' + $('#implweekTab2t2SelectGazar option:selected').val() + '", "P_HELTES_ID":"' + $('#implweekTab2t2SelectHeltes option:selected').val() + '", "P_BEGINDATE":"' + $('#implweekTab2SelectPlanWeek option:selected').text().split(' - ')[0] + '", "P_ENDDATE":"' + $('#implweekTab2SelectPlanWeek option:selected').text().split(' - ')[1] + '", "P_IMPLLIST":"' + checkedVals + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        implweekTab2t2TableBind();
                        $('#implweekPlanImportModal').modal('hide');
                        smallBox('Хэлтсийн дараа долоо хоногийн төлөвлөгөө', 'Амжилттай хуулагдлаа', '#659265', 3000);
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        
                        
                        window.location = '../#pg/error500.aspx';
                    }
                });
            }
            else if ($('#implweekPlanImportModalHeaderLabelType').text() == 'Газрын дараа долоо хоногийн төлөвлөгөө татах') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/PLANWEEK_IMPORT_GAZAR",
                    data: '{"P_TP":"gazar", "P_GAZAR_ID":"' + $('#implweekTab3t2SelectGazar option:selected').val() + '", "P_BEGINDATE":"' + $('#implweekTab3SelectPlanWeek option:selected').text().split(' - ')[0] + '", "P_ENDDATE":"' + $('#implweekTab3SelectPlanWeek option:selected').text().split(' - ')[1] + '", "P_IMPLLIST":"' + checkedVals + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        implweekTab3t2TableBind();
                        $('#implweekPlanImportModal').modal('hide');
                        smallBox('Газрын дараа долоо хоногийн төлөвлөгөө', 'Амжилттай хуулагдлаа', '#659265', 3000);
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
    //tab3t2
    function implweekTab3t2DataBind() {
        var userGazarId = $('#indexUserGazarId').text();
        var userId = $('#indexUserId').text();
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ImplweekGetList",
            data: '{"yr":"' + $('#implweekTab3t2SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $('#implweekTab3SelectPlanWeek').html(data.d);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetGazarListForDDL",
                    data: '{"yr":"' + $('#implweekTab3t2SelectYear option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        });
                        $("#implweekTab3t2SelectGazar").html(valData);
                        $('#implweekTab3t2SelectGazar').val(userGazarId);
                        $('#implweekTab3t2SelectGazar').prop('disabled', true);
                        showLoader('loaderTab3t2');
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/ImplweekPlanDatatable",
                            data: '{"tp":"gazar", "gazarid":"' + $('#implweekTab3t2SelectGazar option:selected').val() + '", "heltesid":"", "stid":"", "begindate":"' + $('#implweekTab3SelectPlanWeek option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab3SelectPlanWeek option:selected').val().split(' - ')[1] + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                valData += '<table id="implweekTab3t2Datatable" class="table table-striped table-bordered table-hover" width="100%"><thead>';
                                valData += '<tr>';
                                valData += '<th class="text-center" style="vertical-align:middle;">№</th>';
                                valData += '<th class="text-center" style="vertical-align:middle;">Нэр</th>';
                                valData += '<th class="text-center" style="vertical-align:middle;">Засварлах</th>';
                                valData += '</tr>';
                                valData += '</thead><tbody>';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += '<tr data-id="' + value.ID + '">';
                                    valData += '<td>' + value.NO + '</td>';
                                    valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                                    valData += '<td>';
                                    valData += '<div class="btn-group">';
                                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditTab3t2(this,\'засах\');" data-target="#implweekPlanModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab3t2(this);"><i class="fa fa-trash-o"></i></button>';
                                    valData += '</div>';
                                    valData += '</td>';
                                    valData += '</tr>';
                                });
                                valData += '</tbody>';
                                valData += '</table>';
                                valData += '<script>';
                                valData += "var responsiveHelper_implweekTab3t2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#implweekTab3t2Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_implweekTab3t2Datatable) {responsiveHelper_implweekTab3t2Datatable = new ResponsiveDatatablesHelper($('#implweekTab3t2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_implweekTab3t2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_implweekTab3t2Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"45px\" }]});";
                                valData += '<\/script>';
                                $("#divBindTab3t2Table").html(valData);
                                hideLoader('loaderTab3t2');
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
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                
                
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function implweekTab3t2TableBind() {
        showLoader('loaderTab3t2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ImplweekPlanDatatable",
            data: '{"tp":"gazar", "gazarid":"' + $('#implweekTab3t2SelectGazar option:selected').val() + '", "heltesid":"", "stid":"", "begindate":"' + $('#implweekTab3SelectPlanWeek option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab3SelectPlanWeek option:selected').val().split(' - ')[1] + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += '<table id="implweekTab3t2Datatable" class="table table-striped table-bordered table-hover" width="100%"><thead>';
                valData += '<tr>';
                valData += '<th class="text-center" style="vertical-align:middle;">№</th>';
                valData += '<th class="text-center" style="vertical-align:middle;">Нэр</th>';
                valData += '<th class="text-center" style="vertical-align:middle;">Засварлах</th>';
                valData += '</tr>';
                valData += '</thead><tbody>';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<tr data-id="' + value.ID + '">';
                    valData += '<td>' + value.NO + '</td>';
                    valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                    valData += '<td>';
                    valData += '<div class="btn-group">';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditTab3t2(this,\'засах\');" data-target="#implweekPlanModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab3t2(this);"><i class="fa fa-trash-o"></i></button>';
                    valData += '</div>';
                    valData += '</td>';
                    valData += '</tr>';
                });
                valData += '</tbody>';
                valData += '</table>';
                valData += '<script>';
                valData += "var responsiveHelper_implweekTab3t2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#implweekTab3t2Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_implweekTab3t2Datatable) {responsiveHelper_implweekTab3t2Datatable = new ResponsiveDatatablesHelper($('#implweekTab3t2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_implweekTab3t2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_implweekTab3t2Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"45px\" }]});";
                valData += '<\/script>';
                $("#divBindTab3t2Table").html(valData);
                hideLoader('loaderTab3t2');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                
                
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#implweekTab3t2SelectGazar").change(function () {
        implweekTab3t2TableBind();
    });
    $("#implweekTab3t2SelectYear").change(function () {
        implweekTab3t2DataBind();
    });
    $("#implweekTab3SelectPlanWeek").change(function () {
        implweekTab3t2TableBind();
    });
    function showAddEditTab3t2(el, isinsupt) {
        $('#implweekPlanModalHeaderLabelType').text('Газрын дараа долоо хоногийн төлөвлөгөө');
        $('#implweekPlanModalHeaderLabelIsInsUpd').text(isinsupt);
        $('#implweekPlanModalDesc').html('<strong>' + $('#implweekTab3SelectPlanWeek option:selected').text() + '</strong>');
        $('#implweekPlanModalDesc').append('<br/>');
        $('#implweekPlanModalDesc').append($('#implweekTab3t2SelectGazar option:selected').text());

        if (isinsupt == 'нэмэх') {
            $('#implweekPlanID').text('');
            $('#implweekPlanModalInputNo').val('');
            $('#implweekPlanModalInputName').val('');
        }
        else {
            $("#implweekPlanID").text($(el).closest('tr').attr('data-id'));
            $('#implweekPlanModalInputNo').val($(el).closest('tr').find('td:eq(0)').text());
            $('#implweekPlanModalInputName').val($(el).closest('tr').find('td:eq(1)').text());
        }
    }
    function showDeleteTab3t2(el) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Сонгосон газрын дараа долоо хоногийн төлөвлөгөөг устгах уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"DELETE FROM TBL_PLANWEEK WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        implweekTab3t2TableBind();
                        smallBox('Газрын дараа долоо хоногийн төлөвлөгөө', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
    function showImportTab3t2(el) {
        $('#implweekPlanImportModalHeaderLabelType').text("Газрын дараа долоо хоногийн төлөвлөгөө татах");
        showLoader('loaderTab2t2Import');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ImplweekImportPlanDatatable",
            data: '{"yr":"' + $('#implweekTab3t2SelectYear option:selected').val() + '", "tp":"heltes", "gazarid":"' + $('#implweekTab3t2SelectGazar option:selected').val() + '", "heltesid":"' + $('#implweekTab3t2SelectHeltes option:selected').val() + '", "begindate":"' + $('#implweekTab3SelectPlanWeek option:selected').val().split(' - ')[0] + '", "enddate":"' + $('#implweekTab3SelectPlanWeek option:selected').val().split(' - ')[1] + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData = "<table id=\"implweekPlanImportModalDatatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th>№</th>";
                valData += "<th>Нэр</th>";
                valData += "<th>Мэргэжилтэн</th>";
                valData += "<th>&nbsp;</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<tr data-id="' + value.ID + '">';
                    valData += '<td>' + value.NO + '</td>';
                    valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                    valData += '<td>' + value.STAFF + '</td>';
                    valData += '<td><label class=\"checkbox-inline\"><input type=\"checkbox\" class=\"checkbox style-0\"><span></span></label></td>';
                    valData += '</tr>';
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_implweekPlanImportModalDatatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#implweekPlanImportModalDatatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_implweekPlanImportModalDatatable) {responsiveHelper_implweekPlanImportModalDatatable = new ResponsiveDatatablesHelper($('#implweekPlanImportModalDatatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_implweekPlanImportModalDatatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_implweekPlanImportModalDatatable.respond();}}).rowGrouping({iGroupingColumnIndex: 2,bExpandableGrouping: true});";
                valData += "<\/script>";
                $("#implweekPlanImportModalDatatableDiv").html(valData);
                hideLoader('loaderTab2t2Import');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                
                
                window.location = '../#pg/error500.aspx';
            }
        });
    }

    //insertUpdateImpl
    $('#implweekImplModalForm').bootstrapValidator({
        fields: {
            implweekImplModalInputNo: {
                group: '.col-md-2',
                validators: {
                    notEmpty: {
                        message: 'Дугаар оруулна уу'
                    },
                    stringLength: {
                        max: 3,
                        message: 'Дугаар уртдаа 3 тэмдэгт авна'
                    },
                    numeric: {
                        message: 'Дугаар тоон тэмдэгт орно'
                    }
                }
            },
            implweekImplModalInputName: {
                group: '.col-md-10',
                validators: {
                    notEmpty: {
                        message: 'Нэр оруулна уу'
                    },
                    stringLength: {
                        max: 1500,
                        message: 'Нэр уртдаа 1500 тэмдэгт авна'
                    }
                }
            },
            implweekImplModalSelectPlanMnth: {
                group: '.col-md-12',
                validators: {
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            var isUpdate = '';
            var qryCnt = '';
            var qry = '';
            var valPlanMnthId = 'null';
            if ($("#implweekImplModalHeaderLabelIsInsUpd").html() == "засах") isUpdate = " AND ID!=" + $("#implweekImplID").text();
            if ($.trim($('#implweekImplModalHeaderLabelType').text()) == 'Мэргэжилтний долоо хоногийн тайлан') {
                qryCnt = 'SELECT COUNT(1) FROM TBL_IMPLWEEK WHERE TP=\'staff\' AND ST_ID=' + $('#implweekTab1t1SelectStaff option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[1] + '\' AND NO=' + $.trim($('#implweekImplModalInputNo').val()) + isUpdate;
                if ($('#implweekImplModalSelectPlanMnth option:selected').val() != '') valPlanMnthId = $('#implweekImplModalSelectPlanMnth option:selected').val();
                if ($("#implweekImplModalHeaderLabelIsInsUpd").html() == "нэмэх") qry = 'INSERT INTO TBL_IMPLWEEK (ID, TP, GAZAR_ID, HELTES_ID, ST_ID, BEGINDATE, ENDDATE, NO, NAME, PLANMNTH_ID) VALUES (TBLLASTID(\'TBL_IMPLWEEK\'), \'staff\', ' + $('#implweekTab1t1SelectGazar option:selected').val() + ', ' + $('#implweekTab1t1SelectHeltes option:selected').val() + ', ' + $('#implweekTab1t1SelectStaff option:selected').val() + ', \'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[0] + '\', \'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[1] + '\', ' + $.trim($('#implweekImplModalInputNo').val()) + ', \'' + replaceDisplayToDatabase($.trim($('#implweekImplModalInputName').val())) + '\', ' + valPlanMnthId + ')';
                else qry = 'UPDATE TBL_IMPLWEEK SET NO=' + $.trim($('#implweekImplModalInputNo').val()) + ', NAME=\'' + replaceDisplayToDatabase($.trim($('#implweekImplModalInputName').val())) + '\', PLANMNTH_ID=' + valPlanMnthId + ' WHERE ID=' + $("#implweekImplID").text();
            }
            else if ($.trim($('#implweekImplModalHeaderLabelType').text()) == 'Хэлтсийн долоо хоногийн тайлан') {
                qryCnt = 'SELECT COUNT(1) FROM TBL_IMPLWEEK WHERE TP=\'gazar\' AND GAZAR_ID=' + $('#implweekTab2t1SelectGazar option:selected').val() + ' AND HELTES_ID=' + $('#implweekTab2t1SelectHeltes option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[1] + '\' AND NO=' + $.trim($('#implweekImplModalInputNo').val()) + isUpdate;
                if ($("#implweekImplModalHeaderLabelIsInsUpd").html() == "нэмэх") qry = 'INSERT INTO TBL_IMPLWEEK (ID, TP, GAZAR_ID, HELTES_ID, BEGINDATE, ENDDATE, NO, NAME) VALUES (TBLLASTID(\'TBL_IMPLWEEK\'), \'heltes\', ' + $('#implweekTab2t1SelectGazar option:selected').val() + ', ' + $('#implweekTab2t1SelectHeltes option:selected').val() + ', \'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[0] + '\', \'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[1] + '\', ' + $.trim($('#implweekImplModalInputNo').val()) + ', \'' + replaceDisplayToDatabase($.trim($('#implweekImplModalInputName').val())) + '\')';
                else qry = 'UPDATE TBL_IMPLWEEK SET NO=' + $.trim($('#implweekImplModalInputNo').val()) + ', NAME=\'' + replaceDisplayToDatabase($.trim($('#implweekImplModalInputName').val())) + '\' WHERE ID=' + $("#implweekImplID").text();
            }
            else if ($.trim($('#implweekImplModalHeaderLabelType').text()) == 'Газрын долоо хоногийн тайлан') {
                qryCnt = 'SELECT COUNT(1) FROM TBL_IMPLWEEK WHERE TP=\'heltes\' AND GAZAR_ID=' + $('#implweekTab3t1SelectGazar option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[1] + '\' AND NO=' + $.trim($('#implweekImplModalInputNo').val()) + isUpdate;
                if ($("#implweekImplModalHeaderLabelIsInsUpd").html() == "нэмэх") qry = 'INSERT INTO TBL_IMPLWEEK (ID, TP, GAZAR_ID, BEGINDATE, ENDDATE, NO, NAME) VALUES (TBLLASTID(\'TBL_IMPLWEEK\'), \'gazar\', ' + $('#implweekTab3t1SelectGazar option:selected').val() + ', \'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[0] + '\', \'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[1] + '\', ' + $.trim($('#implweekImplModalInputNo').val()) + ', \'' + replaceDisplayToDatabase($.trim($('#implweekImplModalInputName').val())) + '\')';
                else qry = 'UPDATE TBL_IMPLWEEK SET NO=' + $.trim($('#implweekImplModalInputNo').val()) + ', NAME=\'' + replaceDisplayToDatabase($.trim($('#implweekImplModalInputName').val())) + '\' WHERE ID=' + $("#implweekImplID").text();
            }
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"' + qryCnt + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    if (data.d == "0") {
                        //console.log($.trim($('#implweekImplModalInputName').val()));
                        //console.log(escape($.trim($('#implweekImplModalInputName').val())));
                        //console.log(replaceDisplayToDatabase($.trim($('#implweekImplModalInputName').val())));
                        //console.log(qry);
                        //alert(replaceDisplayToDatabase($.trim($('#implweekImplModalInputName').val().replace(/\t/g,''))));
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                            data: '{"qry":"' + qry + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function () {
                                if ($.trim($('#implweekImplModalHeaderLabelType').text()) == 'Мэргэжилтний долоо хоногийн тайлан') implweekTab1t1TableBind();
                                else if ($.trim($('#implweekImplModalHeaderLabelType').text()) == 'Хэлтсийн долоо хоногийн тайлан') implweekTab2t1TableBind();
                                else if ($.trim($('#implweekImplModalHeaderLabelType').text()) == 'Газрын долоо хоногийн тайлан') implweekTab3t1DataBind();
                                $('#implweekImplModal').modal('hide');
                                smallBox('Тайлан', 'Амжилттай хадгалагдлаа', '#659265', 3000);
                            },
                            failure: function (response) {
                                alert('FAILURE: ' + response.d);
                            },
                            error: function (xhr, status, error) {
                                
                                
                                window.location = '../#pg/error500.aspx';
                            }
                        });
                    }
                    else {
                        if ($.trim($('#implweekImplModalHeaderLabelType').text()) == 'Мэргэжилтний долоо хоногийн тайлан') alert($('#implweekTab1SelectImplWeek option:selected').text() + '-т ' + $.trim($('#implweekImplModalInputNo').val()) + ' дугаартай тайлан орсон байна.');
                        else if ($.trim($('#implweekImplModalHeaderLabelType').text()) == 'Хэлтсийн долоо хоногийн тайлан') alert($('#implweekTab2SelectImplWeek option:selected').text() + '-т ' + $.trim($('#implweekImplModalInputNo').val()) + ' дугаартай тайлан орсон байна.');
                        else if ($.trim($('#implweekImplModalHeaderLabelType').text()) == 'Газрын долоо хоногийн тайлан') alert($('#implweekTab3SelectImplWeek option:selected').text() + '-т ' + $.trim($('#implweekImplModalInputNo').val()) + ' дугаартай тайлан орсон байна.');
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
    });
    //insertUpdatePlan
    $('#implweekPlanModalForm').bootstrapValidator({
        fields: {
            implweekPlanModalInputNo: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Дугаар оруулна уу'
                    },
                    stringLength: {
                        max: 3,
                        message: 'Дугаар уртдаа 3 тэмдэгт авна'
                    },
                    numeric: {
                        message: 'Дугаар тоон тэмдэгт орно'
                    }
                }
            },
            implweekPlanModalInputName: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Нэр оруулна уу'
                    },
                    stringLength: {
                        max: 1500,
                        message: 'Нэр уртдаа 1500 тэмдэгт авна'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            var isUpdate = '';
            var qryCnt = '';
            var qry = '';
            if ($("#implweekPlanModalHeaderLabelIsInsUpd").html() == "засах") isUpdate = " AND ID!=" + $("#implweekPlanID").text();
            if ($.trim($('#implweekPlanModalHeaderLabelType').text()) == 'Мэргэжилтний дараа долоо хоногийн төлөвлөгөө') {
                qryCnt = 'SELECT COUNT(1) FROM TBL_PLANWEEK WHERE TP=\'staff\' AND ST_ID=' + $('#implweekTab1t2SelectStaff option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab1SelectPlanWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab1SelectPlanWeek option:selected').val().split(' - ')[1] + '\' AND NO=' + $.trim($('#implweekPlanModalInputNo').val()) + isUpdate;
                if ($("#implweekPlanModalHeaderLabelIsInsUpd").html() == "нэмэх") qry = 'INSERT INTO TBL_PLANWEEK (ID, TP, GAZAR_ID, HELTES_ID, ST_ID, BEGINDATE, ENDDATE, NO, NAME) VALUES (TBLLASTID(\'TBL_PLANWEEK\'), \'staff\', ' + $('#implweekTab1t2SelectGazar option:selected').val() + ', ' + $('#implweekTab1t2SelectHeltes option:selected').val() + ', ' + $('#implweekTab1t2SelectStaff option:selected').val() + ', \'' + $('#implweekTab1SelectPlanWeek option:selected').val().split(' - ')[0] + '\', \'' + $('#implweekTab1SelectPlanWeek option:selected').val().split(' - ')[1] + '\', ' + $.trim($('#implweekPlanModalInputNo').val()) + ', \'' + replaceDisplayToDatabase($.trim($('#implweekPlanModalInputName').val())) + '\')';
                else qry = 'UPDATE TBL_PLANWEEK SET NO=' + $.trim($('#implweekPlanModalInputNo').val()) + ', NAME=\'' + replaceDisplayToDatabase($.trim($('#implweekPlanModalInputName').val())) + '\' WHERE ID=' + $("#implweekPlanID").text();
            }
            else if ($.trim($('#implweekPlanModalHeaderLabelType').text()) == 'Хэлтсийн дараа долоо хоногийн төлөвлөгөө') {
                qryCnt = 'SELECT COUNT(1) FROM TBL_PLANWEEK WHERE TP=\'heltes\' AND GAZAR_ID=' + $('#implweekTab2t2SelectGazar option:selected').val() + ' AND HELTES_ID=' + $('#implweekTab2t2SelectHeltes option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab2SelectPlanWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab2SelectPlanWeek option:selected').val().split(' - ')[1] + '\' AND NO=' + $.trim($('#implweekPlanModalInputNo').val()) + isUpdate;
                if ($("#implweekPlanModalHeaderLabelIsInsUpd").html() == "нэмэх") qry = 'INSERT INTO TBL_PLANWEEK (ID, TP, GAZAR_ID, HELTES_ID, BEGINDATE, ENDDATE, NO, NAME) VALUES (TBLLASTID(\'TBL_PLANWEEK\'), \'heltes\', ' + $('#implweekTab2t2SelectGazar option:selected').val() + ', ' + $('#implweekTab2t2SelectHeltes option:selected').val() + ', \'' + $('#implweekTab2SelectPlanWeek option:selected').val().split(' - ')[0] + '\', \'' + $('#implweekTab2SelectPlanWeek option:selected').val().split(' - ')[1] + '\', ' + $.trim($('#implweekPlanModalInputNo').val()) + ', \'' + replaceDisplayToDatabase($.trim($('#implweekPlanModalInputName').val())) + '\')';
                else qry = 'UPDATE TBL_PLANWEEK SET NO=' + $.trim($('#implweekPlanModalInputNo').val()) + ', NAME=\'' + replaceDisplayToDatabase($.trim($('#implweekPlanModalInputName').val())) + '\' WHERE ID=' + $("#implweekPlanID").text();
            }
            else if ($.trim($('#implweekPlanModalHeaderLabelType').text()) == 'Газрын дараа долоо хоногийн төлөвлөгөө') {
                qryCnt = 'SELECT COUNT(1) FROM TBL_PLANWEEK WHERE TP=\'gazar\' AND GAZAR_ID=' + $('#implweekTab3t2SelectGazar option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab3SelectPlanWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab3SelectPlanWeek option:selected').val().split(' - ')[1] + '\' AND NO=' + $.trim($('#implweekPlanModalInputNo').val()) + isUpdate;
                if ($("#implweekPlanModalHeaderLabelIsInsUpd").html() == "нэмэх") qry = 'INSERT INTO TBL_PLANWEEK (ID, TP, GAZAR_ID, BEGINDATE, ENDDATE, NO, NAME) VALUES (TBLLASTID(\'TBL_PLANWEEK\'), \'gazar\', ' + $('#implweekTab3t2SelectGazar option:selected').val() + ', \'' + $('#implweekTab3SelectPlanWeek option:selected').val().split(' - ')[0] + '\', \'' + $('#implweekTab3SelectPlanWeek option:selected').val().split(' - ')[1] + '\', ' + $.trim($('#implweekPlanModalInputNo').val()) + ', \'' + replaceDisplayToDatabase($.trim($('#implweekPlanModalInputName').val())) + '\')';
                else qry = 'UPDATE TBL_PLANWEEK SET NO=' + $.trim($('#implweekPlanModalInputNo').val()) + ', NAME=\'' + replaceDisplayToDatabase($.trim($('#implweekPlanModalInputName').val())) + '\' WHERE ID=' + $("#implweekPlanID").text();
            }
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"' + qryCnt + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    if (data.d == "0") {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                            data: '{"qry":"' + qry + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function () {
                                if ($.trim($('#implweekPlanModalHeaderLabelType').text()) == 'Мэргэжилтний дараа долоо хоногийн төлөвлөгөө') implweekTab1t2TableBind();
                                else if ($.trim($('#implweekPlanModalHeaderLabelType').text()) == 'Хэлтсийн дараа долоо хоногийн төлөвлөгөө') implweekTab2t2TableBind();
                                else if ($.trim($('#implweekPlanModalHeaderLabelType').text()) == 'Газрын дараа долоо хоногийн төлөвлөгөө') implweekTab3t2DataBind();
                                $('#implweekPlanModal').modal('hide');
                                smallBox('Төлөвлөгөө', 'Амжилттай хадгалагдлаа', '#659265', 3000);
                            },
                            failure: function (response) {
                                alert('FAILURE: ' + response.d);
                            },
                            error: function (xhr, status, error) {
                                
                                
                                window.location = '../#pg/error500.aspx';
                            }
                        });
                    }
                    else {
                        if ($.trim($('#implweekPlanModalHeaderLabelType').text()) == 'Мэргэжилтний дараа долоо хоногийн төлөвлөгөө') alert($('#implweekTab1SelectPlanWeek option:selected').text() + '-т ' + $.trim($('#implweekPlanModalInputNo').val()) + ' дугаартай төлөвлөгөө орсон байна.');
                        else if ($.trim($('#implweekPlanModalHeaderLabelType').text()) == 'Хэлтсийн дараа долоо хоногийн төлөвлөгөө') alert($('#implweekTab2SelectPlanWeek option:selected').text() + '-т ' + $.trim($('#implweekPlanModalInputNo').val()) + ' дугаартай төлөвлөгөө орсон байна.');
                        else if ($.trim($('#implweekPlanModalHeaderLabelType').text()) == 'Газрын дараа долоо хоногийн төлөвлөгөө') alert($('#implweekTab3SelectPlanWeek option:selected').text() + '-т ' + $.trim($('#implweekPlanModalInputNo').val()) + ' дугаартай төлөвлөгөө орсон байна.');
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
    });
    //attach

    $("#implweekImplModalAttachInput").change(function () {
        var errMsg = '';
        var uploadfiles = $(this).get(0);
        var uploadedfiles = uploadfiles.files;
        var fromdata = new FormData();
        if (uploadedfiles[0].size > 10485760) {
            errMsg += 'Файлын хэмжээ 10MB -аас ихгүй байна!\n';
            $(this).val('');
        }
        if (errMsg == '') {
            valE = uploadedfiles[0].name.substr((uploadedfiles[0].name.lastIndexOf('.') + 1));
            if (valE != 'jpeg' && valE != 'jpg' && valE != 'png' && valE != 'gif' && valE != 'pdf' && valE != 'doc' && valE != 'docx' && valE != 'xls' && valE != 'xlsx' && valE != 'xlsm') {
                errMsg += 'Файлын төрөл зөвшөөрөгдөөгүй төрөл байна. /jpeg, jpg, png, gif, pdf, doc, docx, xls, xlsx, xlsm/\n';
                $('#implweekImplModalAttachBtn').html('Файл хавсаргаагүй байна...');
                $(this).val('');
            }
            else fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
        }
        if (errMsg == '') {
            $('#implweekImplModalAttachBtn').html($(this).val().split('\\').pop());
        }
        else alert(errMsg);
    });
    $("#implweekImplModalSave").click(function () {
        if ($.trim($('#implweekImplModalAttachBtn').html()) == 'Файл хавсаргаагүй байна...' || $('#implweekImplModalAttachInput').val() == '') {
            alert('Хавсаргах файл сонгоно уу');
        }
        else {
            var filename = '', qryDel = '', qryIns = '';
            if ($('#implweekImplAttachModalHeaderLabelType').text() == 'Мэргэжилтний долоо хоногийн тайлангийн хавсралт') {
                filename = 'Долоо Хоногийн Тайлан Ажилтан-' + $('#implweekTab1t1SelectStaff option:selected').val() + '-' + $('#implweekTab1t1SelectStaff option:selected').text().split(' | ')[0] + ' (' + $('#implweekTab1SelectImplWeek option:selected').text() + ').' + $('#implweekImplModalAttachBtn').html().split('.')[$('#implweekImplModalAttachBtn').html().split('.').length - 1];
                qryDel = 'DELETE FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'staff\' AND ST_ID=' + $('#implweekTab1t1SelectStaff option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[1] + '\'';
                qryIns = 'INSERT INTO TBL_IMPLWEEK_ATTACH (ID, TP, GAZAR_ID, HELTES_ID, ST_ID, BEGINDATE, ENDDATE, FILENAME) VALUES (TBLLASTID(\'TBL_IMPLWEEK_ATTACH\'), \'staff\', ' + $('#implweekTab1t1SelectGazar option:selected').val() + ', ' + $('#implweekTab1t1SelectHeltes option:selected').val() + ', ' + $('#implweekTab1t1SelectStaff option:selected').val() + ', \'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[0] + '\', \'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[1] + '\', \'' + filename + '\')';
            }
            else if ($('#implweekImplAttachModalHeaderLabelType').text() == 'Хэлтсийн долоо хоногийн тайлангийн хавсралт') {
                filename = 'Долоо Хоногийн Тайлан Хэлтэс-' + $('#implweekTab1t2SelectHeltes option:selected').val() + '-' + $('#implweekTab2t1SelectGazar option:selected').text() + '-' + $('#implweekTab2t1SelectHeltes option:selected').text() + ' (' + $('#implweekTab2SelectImplWeek option:selected').text() + ').' + $('#implweekImplModalAttachBtn').html().split('.')[$('#implweekImplModalAttachBtn').html().split('.').length - 1];
                qryDel = 'DELETE FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'heltes\' AND GAZAR_ID=' + $('#implweekTab2t1SelectGazar option:selected').val() + ' AND HELTES_ID=' + $('#implweekTab2t1SelectHeltes option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[1] + '\'';
                qryIns = 'INSERT INTO TBL_IMPLWEEK_ATTACH (ID, TP, GAZAR_ID, HELTES_ID, BEGINDATE, ENDDATE, FILENAME) VALUES (TBLLASTID(\'TBL_IMPLWEEK_ATTACH\'), \'heltes\', ' + $('#implweekTab2t1SelectGazar option:selected').val() + ', ' + $('#implweekTab2t1SelectHeltes option:selected').val() + ', \'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[0] + '\', \'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[1] + '\', \'' + filename + '\')';
            }
            else if ($('#implweekImplAttachModalHeaderLabelType').text() == 'Газрын долоо хоногийн тайлангийн хавсралт') {
                filename = 'Долоо Хоногийн Тайлан Газар-' + $('#implweekTab1t3SelectGazar option:selected').val() + '-' + $('#implweekTab3t1SelectGazar option:selected').text() + ' (' + $('#implweekTab3SelectImplWeek option:selected').text() + ').' + $('#implweekImplModalAttachBtn').html().split('.')[$('#implweekImplModalAttachBtn').html().split('.').length - 1];
                qryDel = 'DELETE FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'gazar\' AND GAZAR_ID=' + $('#implweekTab3t1SelectGazar option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[1] + '\'';
                qryIns = 'INSERT INTO TBL_IMPLWEEK_ATTACH (ID, TP, GAZAR_ID, BEGINDATE, ENDDATE, FILENAME) VALUES (TBLLASTID(\'TBL_IMPLWEEK_ATTACH\'), \'gazar\', ' + $('#implweekTab3t1SelectGazar option:selected').val() + ', \'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[0] + '\', \'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[1] + '\', \'' + filename + '\')';
            }
            var uploadfiles = $("#implweekImplModalAttachInput").get(0);
            var uploadedfiles = uploadfiles.files;
            var fromdata = new FormData();
            fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
            var choice = {};
            choice.url = "pg/UploadFile.ashx?folder=implweek&filename=" + filename;
            choice.type = "POST";
            choice.data = fromdata;
            choice.contentType = false;
            choice.processData = false;
            choice.success = function (result) {
                if (result == "1") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                        data: '{"qry":"' + qryDel + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"' + qryIns + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    $('#implweekTab1t1AttachDownloadBtn').attr('href', '../files/implweek/' + filename);
                                    $('#implweekTab1t1AttachDownloadBtn').html('<i class="fa fa-paperclip"></i> Хавсаргасан файл татах');
                                    $('#implweekImplAttachModal').modal('hide');
                                    smallBox('Хавсралт файл', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
                else {
                    alert('Файл хуулхад алдаа гарлаа');
                }
            };
            choice.error = function (err) { alert('Файл хуулхад алдаа гарлаа: ' + err.statusText); };
            $.ajax(choice);
            //event.preventDefault();
        }
    });
    $("#implweekImplModalAttachDelete").click(function () {
        if ($('#implweekImplModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
            $.SmartMessageBox({
                title: "Анхааруулга!",
                content: "Та устгахдаа итгэлтэй байна уу?",
                buttons: '[Үгүй][Тийм]'
            }, function (ButtonPressed) {
                if (ButtonPressed === "Тийм") {
                    var qryDel = '';
                    if ($('#implweekImplAttachModalHeaderLabelType').text() == 'Мэргэжилтний долоо хоногийн тайлангийн хавсралт') {
                        qryDel = 'DELETE FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'staff\' AND ST_ID=' + $('#implweekTab1t1SelectStaff option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab1SelectImplWeek option:selected').val().split(' - ')[1] + '\'';
                     }
                    else if ($('#implweekImplAttachModalHeaderLabelType').text() == 'Хэлтсийн долоо хоногийн тайлангийн хавсралт') {
                        qryDel = 'DELETE FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'heltes\' AND GAZAR_ID=' + $('#implweekTab2t1SelectGazar option:selected').val() + ' AND HELTES_ID=' + $('#implweekTab2t1SelectHeltes option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab2SelectImplWeek option:selected').val().split(' - ')[1] + '\'';
                    }
                    else if ($('#implweekImplAttachModalHeaderLabelType').text() == 'Газрын долоо хоногийн тайлангийн хавсралт') {
                        qryDel = 'DELETE FROM TBL_IMPLWEEK_ATTACH WHERE TP=\'gazar\' AND GAZAR_ID=' + $('#implweekTab3t1SelectGazar option:selected').val() + ' AND BEGINDATE=\'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[0] + '\' AND ENDDATE=\'' + $('#implweekTab3SelectImplWeek option:selected').val().split(' - ')[1] + '\'';
                    }
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                        data: '{"qry":"' + qryDel + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/DeleteFile",
                                data: '{"filename":"~/files/implweek/' + $('#implweekImplModalAttachBtn').html() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    $('#implweekImplModalAttachBtn').html('Файл хавсаргаагүй байна...');
                                    if ($('#implweekImplAttachModalHeaderLabelType').text() == 'Мэргэжилтний долоо хоногийн тайлангийн хавсралт') {
                                        $('#implweekTab1t1AttachDownloadBtn').attr('href', 'javascript:void(0);');
                                        $('#implweekTab1t1AttachDownloadBtn').html('<i class="fa fa-paperclip"></i> Файл хавсаргаагүй байна');
                                    }
                                    else if ($('#implweekImplAttachModalHeaderLabelType').text() == 'Хэлтсийн долоо хоногийн тайлангийн хавсралт') {
                                        $('#implweekTab2t1AttachDownloadBtn').attr('href', 'javascript:void(0);');
                                        $('#implweekTab2t1AttachDownloadBtn').html('<i class="fa fa-paperclip"></i> Файл хавсаргаагүй байна');
                                    }
                                    else if ($('#implweekImplAttachModalHeaderLabelType').text() == 'Газрын долоо хоногийн тайлангийн хавсралт') {
                                        $('#implweekTab3t1AttachDownloadBtn').attr('href', 'javascript:void(0);');
                                        $('#implweekTab3t1AttachDownloadBtn').html('<i class="fa fa-paperclip"></i> Файл хавсаргаагүй байна');
                                    }
                                    smallBox('Хавсралт файл', 'Амжилттай хадгалагдлаа', '#659265', 3000);

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
            });
        }
    });

    //tab4

    function implweekTab4SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var userId = $('#indexUserId').text();
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ImplweekGetListInMonth",
            data: '{"yr":"' + $('#implweekTab4SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $('#implweekTab4SelectPlanWeekReport').html(data.d);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetGazarListForDDL",
                    data: '{"yr":"' + $('#implweekTab4SelectYear option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        });
                        $("#implweekTab4SelectGazar").html(valData);
                        $('#implweekTab4SelectGazar').val(userGazarId);
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                            data: '{"yr": "' + $('#implweekTab4SelectYear option:selected').val() + '", "gazar": "' + $("#implweekTab4SelectGazar option:selected").val() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                                })
                                $("#implweekTab4SelectHeltes").html(valData);
                                if (!funcCheckRoles('1,8')) {
                                    $('#implweekTab4SelectGazar').prop('disabled', true);
                                    if (!funcCheckRoles('3,4')) {
                                        $('#implweekTab4SelectHeltes').val(userHeltesId);
                                        $('#implweekTab4SelectHeltes').prop('disabled', true);
                                    }
                                    dataBindTab4DataTable();
                                }
                                else {
                                    $('#implweekTab4SelectHeltes').prop('disabled', false);
                                    dataBindTab4DataTable();
                                }
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
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab4DataTable() {
        showLoader('loaderTab4');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ImplweekTab4Datatable",
            data: '{"yr":"' + $("#implweekTab4SelectYear option:selected").val() + '", "gazarid":"' + $("#implweekTab4SelectGazar option:selected").val() + '", "heltesid":"' + $("#implweekTab4SelectHeltes option:selected").val() + '", "weeklist":"' + $("#implweekTab4SelectPlanWeekReport option:selected").attr('data-value') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $('#divBindTab4Table').html(data.d);
                hideLoader('loaderTab4');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#implweekTab4SelectYear").change(function () {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var userId = $('#indexUserId').text();
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/ImplweekGetListInMonth",
            data: '{"yr":"' + $('#implweekTab4SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $('#implweekTab4SelectPlanWeekReport').html(data.d);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetGazarListForDDL",
                    data: '{"yr":"' + $('#implweekTab4SelectYear option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        });
                        $("#implweekTab4SelectGazar").html(valData);
                        $('#implweekTab4SelectGazar').val(userGazarId);
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                            data: '{"yr": "' + $('#implweekTab4SelectYear option:selected').val() + '", "gazar": "' + $("#implweekTab4SelectGazar option:selected").val() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                                })
                                $("#implweekTab4SelectHeltes").html(valData);
                                dataBindTab4DataTable();
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
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    });
    $("#implweekTab4SelectYear, #implweekTab4SelectPlanWeekReport, #implweekTab4SelectHeltes").change(function () {
        dataBindTab4DataTable();
    });
    $("#implweekTab4SelectGazar").change(function () {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
            data: '{"yr": "' + $('#implweekTab4SelectYear option:selected').val() + '", "gazar": "' + $("#implweekTab4SelectGazar option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                })
                $("#implweekTab4SelectHeltes").html(valData);
                dataBindTab4DataTable();
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
