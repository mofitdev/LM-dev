<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="auditinternal.aspx.cs" Inherits="LMWebApp.pg.auditinternal" %>
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    <h1 class="page-title txt-color-blueDark" style="margin-bottom:12px;">
        <i class="fa-fw fa fa-home"></i>
        <span id="pageUrlModuleName" runat="server">> Дотоод аудит</span>
    </h1>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
            <ul class="nav nav-tabs bordered">
                <li id="pTab1Li" runat="server" class="active" onclick="pDatabindTabs(this)" style="width:175px; text-align:center; display:block;">
                    <a data-toggle="tab" href="#pTab1" style=" color: #826430; background-color: #efe1b3;">
                        <i class="fa fa-fw fa-lg fa-list-ul"></i>
                        Зөвлөмж
                    </a>
                </li>
                <li id="pTab3Li" runat="server" onclick="pDatabindTabs(this)" style="width:175px; text-align:center;">
                    <a data-toggle="tab" href="#pTab3" style="color: #356635; background-color: #cde0c4;">
                        <i class="fa fa-fw fa-lg fa-edit"></i>
                        Биелэлт 
                    </a>
                </li>
                <li id="pTab5Li" runat="server" onclick="pDatabindTabs(this)" style="width:175px; text-align:center;">
                    <a data-toggle="tab" href="#pTab5" style="color: #305d8c; background-color: #d6dde7;">
                        <i class="fa fa-fw fa-lg fa-file-text "></i>
                        Тайлан 
                    </a>
                </li>
                <li id="pTab4Li" runat="server" onclick="pDatabindTabs(this)" style="width:175px; text-align:center;">
                    <a data-toggle="tab" href="#pTab4" style="background-color: #3276b1; color: #FFF;">
                        <i class="glyphicon glyphicon-stats"></i>
                        Үнэлгээ
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <div id="pTab1" runat="server" class="tab-pane active">
                    <ul class="nav nav-tabs bordered">
                        <li id="pTab1t1Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab1t1"><i class="fa fa-fw fa-lg fa-table"></i>Дотоод аудитын тайлан</a>
                        </li>
                        <li id="pTab1t2Li" runat="server" onclick="pDatabindTabs(this)" class="active">
                            <a data-toggle="tab" href="#pTab1t2"><i class="fa fa-fw fa-lg fa-table"></i>Зөвлөмж</a>
                        </li>
                        <li id="pTab1t3Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab1t3"><i class="fa fa-fw fa-lg fa-table"></i>Төлөвлөгөө</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="pTab1t1" class="tab-pane">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-table"></i></span>
                                    <h2>Дотоод аудитын тайлан</h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab1SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            Он:
                                        </div> 
                                    </div>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div class="Colvis TableTools"  style="right:130px; top:8px; z-index:5;">
                                        <button id="pTab1Add" runat="server" class="btn btn btn-primary btn-xs" data-target="#pTab1Modal" data-toggle="modal" onclick="showAddEditTab1(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
                                    <div id="loaderTab1" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div id="divBindTab1Table" class="widget-body no-padding">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab1t2" class="tab-pane active">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-table"></i></span>
                                    <h2>Зөвлөмж</h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            Он:
                                        </div> 
                                    </div>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div class="Colvis TableTools"  style="right:130px; top:8px; z-index:5;">
                                        <button id="pTab2Add" runat="server" class="btn btn btn-primary btn-xs" data-target="#pTab2Modal" data-toggle="modal" onclick="showAddEditTab2(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
                                    <div class="Colvis TableTools"  style="right:200px; top:6px; z-index:5; width:200px;">
                                        <select id="pTab2SelectReport" name="pTab2SelectReport" runat="server" class="form-control" style="padding: 1px;">
                                            <option value="">Бүгд</option>
							            </select>
                                    </div>
                                    <div class="Colvis TableTools"  style="right:405px; top:8px; z-index:5; width:110px; line-height:15px; text-align:right;">
                                        Дотоод аудитын тайлан:
                                    </div>
                                    <div class="Colvis TableTools"  style="right:520px; top:6px; z-index:5; width:150px;">
                                        <select id="pTab2SelectGazar" name="pTab2SelectGazar" runat="server" class="form-control" style="padding: 1px;">
                                            <option value="">Бүгд</option>
							            </select>
                                    </div>
                                    <div class="Colvis TableTools"  style="right:675px; top:8px; z-index:5; width:60px; line-height:15px; text-align:right;">
                                        Хариуцах газар:
                                    </div>
                                    <div id="loaderTab2" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div id="divBindTab2Table" class="widget-body no-padding">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab1t3" class="tab-pane">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-table"></i></span>
                                    <h2>Төлөвлөгөө</h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab1t3SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            Он:
                                        </div> 
                                    </div>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div class="Colvis TableTools"  style="right:130px; top:8px; z-index:5;">
                                        <button id="pTab1t3Add" runat="server" class="btn btn btn-primary btn-xs" data-target="#pTab1t3Modal" data-toggle="modal" onclick="showAddEditTab1t3(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
                                    <div class="Colvis TableTools"  style="right:200px; top:6px; z-index:5; width:200px;">
                                        <select id="pTab1t3SelectReport" name="pTab1t3SelectReport" runat="server" class="form-control" style="padding: 1px;">
                                            <option value="">Бүгд</option>
							            </select>
                                    </div>
                                    <div class="Colvis TableTools"  style="right:405px; top:8px; z-index:5; width:110px; line-height:15px; text-align:right;">
                                        Дотоод аудитын тайлан:
                                    </div>
                                    <div class="Colvis TableTools"  style="right:520px; top:6px; z-index:5; width:150px;">
                                        <select id="pTab1t3SelectGazar" name="pTab1t3SelectGazar" runat="server" class="form-control" style="padding: 1px;">
                                            <option value="">Бүгд</option>
							            </select>
                                    </div>
                                    <div class="Colvis TableTools"  style="right:675px; top:8px; z-index:5; width:60px; line-height:15px; text-align:right;">
                                        Хариуцах газар:
                                    </div>
                                    <div id="loaderTab1t3" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div id="divBindTab1t3Table" class="widget-body no-padding">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="pTab3" runat="server" class="tab-pane">
                    <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"><i class="fa fa-table"></i></span>
                            <h2>Төлөвлөгөөний биелэлт</h2>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab3SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab3SelectQuarter" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">Улирал 1</option><option value="2">Улирал 2</option><option value="3">Улирал 3</option><option value="4">Улирал 4</option></select>
                                </div> 
                            </div>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div class="Colvis TableTools"  style="right:200px; top:6px; z-index:5; width:200px;">
                                <select id="pTab3SelectReport" name="pTab3SelectReport" runat="server" class="form-control" style="padding: 1px;">
                                    <option value="">Бүгд</option>
							    </select>
                            </div>
                            <div class="Colvis TableTools"  style="right:405px; top:8px; z-index:5; width:110px; line-height:15px; text-align:right;">
                                Дотоод аудитын тайлан:
                            </div>
                            <div class="Colvis TableTools"  style="right:520px; top:6px; z-index:5; width:150px;">
                                <select id="pTab3SelectGazar" name="pTab3SelectGazar" runat="server" class="form-control" style="padding: 1px;">
                                    <option value="">Бүгд</option>
							    </select>
                            </div>
                            <div class="Colvis TableTools"  style="right:675px; top:8px; z-index:5; width:60px; line-height:15px; text-align:right;">
                                Хариуцах газар:
                            </div>
                            <div id="loaderTab3" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="divBindTab3Table" class="widget-body no-padding">
                                        
                            </div>
                        </div>
                    </div>
                </div>
                <div id="pTab4" runat="server" class="tab-pane">
                    <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"><i class="fa fa-table"></i></span>
                            <h2>Үнэлгээ</h2>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab4SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab4SelectQuarter" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">Улирал 1</option><option value="2">Улирал 2</option><option value="3">Улирал 3</option><option value="4">Улирал 4</option></select>
                                </div> 
                            </div>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div class="Colvis TableTools"  style="right:200px; top:6px; z-index:5; width:200px;">
                                <select id="pTab4SelectReport" name="pTab4SelectReport" runat="server" class="form-control" style="padding: 1px;">
                                    <option value="">Бүгд</option>
							    </select>
                            </div>
                            <div class="Colvis TableTools"  style="right:405px; top:8px; z-index:5; width:110px; line-height:15px; text-align:right;">
                                Дотоод аудитын тайлан:
                            </div>
                            <div class="Colvis TableTools"  style="right:520px; top:6px; z-index:5; width:150px;">
                                <select id="pTab4SelectGazar" name="pTab4SelectGazar" runat="server" class="form-control" style="padding: 1px;">
                                    <option value="">Бүгд</option>
							    </select>
                            </div>
                            <div class="Colvis TableTools"  style="right:675px; top:8px; z-index:5; width:60px; line-height:15px; text-align:right;">
                                Хариуцах газар:
                            </div>
                            <div id="loaderTab4" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="divBindTab4Table" class="widget-body no-padding">
                                        
                            </div>
                        </div>
                    </div>
                </div>
                <div id="pTab5" runat="server" class="tab-pane">
                    <ul class="nav nav-tabs bordered">
                        <li id="pTab5t1Li" runat="server" onclick="pDatabindTabs(this)" class="active">
                            <a data-toggle="tab" href="#pTab5t1">Тайлан /Нэгжээр/</a>
                        </li>
                        <li id="pTab5t2Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab5t2">Тайлан /Дэлгэрэнгүй/</a>
                        </li>
                        <li id="pTab5t3Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab5t3">ЗГХЭГ-ын загвар</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="pTab5t1" class="tab-pane active">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab5t1SelectYear" runat="server" class="form-control" style="padding:1px">
                                                <option>2013</option>
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
                                        <div style="width:100px; float:left; margin-right:10px;">
                                            <select id="pTab5t1SelectQuarter" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">Улирал 1</option>
                                                <option value="2">Улирал 2</option>
                                                <option value="3">Улирал 3</option>
                                                <option value="4">Улирал 4</option>
                                            </select>
                                        </div>
                                        <div style="width:150px; float:left; margin-right:10px;">
                                            <select id="pTab5t1SelectTurul" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">Зөвлөмж</option>
                                                <option value="2">Зөвлөмжийн төлөвлөгөө</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab5t1', 'ДАУлиралынҮнэлгээ')">
                                                <i class="fa fa-file-word-o"></i>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab5t1')">
                                                <i class="fa fa-print"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="loaderTab5t1" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divpTab5t1" class="reports" style="margin:0 10px 10px 10px;">
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                        <label id="pTab5t1Year" runat="server" style="font-weight: bold;"></label> 
                                        ОНЫ 
                                        <label id="pTab5t1Quarter" runat="server" style="font-weight: bold;"></label> 
                                        УЛИРАЛЫН ҮНЭЛГЭЭ
                                    </div>
                                    <div id="divBindTab5t1Table"></div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab5t2" class="tab-pane">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab5t2SelectYear" runat="server" class="form-control" style="padding:1px">
                                                <option>2013</option>
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
                                        <div style="width:100px; float:left; margin-right:10px;">
                                            <select id="pTab5t2SelectQuarter" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">Улирал 1</option>
                                                <option value="2">Улирал 2</option>
                                                <option value="3">Улирал 3</option>
                                                <option value="4">Улирал 4</option>
                                            </select>
                                        </div>
                                        <div style="width:60px; float:left; margin-right:10px; text-align: right; line-height: 14px;">
                                            Хариуцах газар:
                                        </div>
                                        <div style="width:150px; float:left; margin-right:10px;">
                                            <select id="pTab5t2SelectGazar" runat="server" class="form-control" style="padding:1px">
                                                <option value="">Бүгд</option>
                                            </select>
                                        </div>
                                        <div style="width:110px; float:left; margin-right:10px; text-align: right; line-height: 14px;">
                                            Дотоод аудитын тайлан:
                                        </div>
                                        <div style="width:200px; float:left; margin-right:10px;">
                                            <select id="pTab5t2SelectReport" runat="server" class="form-control" style="padding:1px">
                                                <option value="">Бүгд</option>
                                            </select>
                                        </div>
                                        <div style="width:50px; float:left; margin-right:10px; text-align: right;">
                                            Биелэлт:
                                        </div>
                                        <div style="width:100px; float:left; margin-right:10px;">
                                            <select id="pTab5t2SelectIsImpl" runat="server" class="form-control" style="padding:1px">
                                                <option value="">Бүгд</option>
                                                <option value="1">Тайлагнасан</option>
                                                <option value="0">Тайлагнаагүй</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab5t2', 'ДАЗУлиралынҮнэлгээДэлгэрэнгүй')">
                                                <i class="fa fa-file-word-o"></i>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab5t2')">
                                                <i class="fa fa-print"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="loaderTab5t2" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divpTab5t2" class="reports" style="margin:0 10px 10px 10px;">
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                        ТӨЛӨВЛӨГӨӨНИЙ БИЕЛЭЛТ                                        
                                    </div>
                                    <div style="text-align: right; font-size: 14px; padding-bottom: 3px; text-transform: uppercase; line-height: 5px;">
                                        (<label id="pTab5t2Year" runat="server"></label> 
                                        ОНЫ 
                                        <label id="pTab5t2Quarter" runat="server"></label>-Р УЛИРЛЫН БАЙДЛААР)
                                    </div>
                                    <div id="divBindTab5t2Table"></div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab5t3" class="tab-pane">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab5t3SelectYear" runat="server" class="form-control" style="padding:1px">
                                                <option>2013</option>
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
                                        <div style="width:100px; float:left; margin-right:10px;">
                                            <select id="pTab5t3SelectQuarter" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">Улирал 1</option>
                                                <option value="2">Улирал 2</option>
                                                <option value="3">Улирал 3</option>
                                                <option value="4">Улирал 4</option>
                                            </select>
                                        </div>
                                        <div style="width:60px; float:left; margin-right:10px; text-align: right; line-height: 14px;">
                                            Хариуцах газар:
                                        </div>
                                        <div style="width:150px; float:left; margin-right:10px;">
                                            <select id="pTab5t3SelectGazar" runat="server" class="form-control" style="padding:1px">
                                                <option value="">Бүгд</option>
                                            </select>
                                        </div>
                                        <div style="width:110px; float:left; margin-right:10px; text-align: right; line-height: 14px;">
                                            Дотоод аудитын тайлан:
                                        </div>
                                        <div style="width:200px; float:left; margin-right:10px;">
                                            <select id="pTab5t3SelectReport" runat="server" class="form-control" style="padding:1px">
                                                <option value="">Бүгд</option>
                                            </select>
                                        </div>
                                        <div style="width:50px; float:left; margin-right:10px; text-align: right;">
                                            Биелэлт:
                                        </div>
                                        <div style="width:100px; float:left; margin-right:10px;">
                                            <select id="pTab5t3SelectIsImpl" runat="server" class="form-control" style="padding:1px">
                                                <option value="">Бүгд</option>
                                                <option value="1">Тайлагнасан</option>
                                                <option value="0">Тайлагнаагүй</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab5t3', 'ДАЗУлиралынҮнэлгээЯвуулдаг')">
                                                <i class="fa fa-file-word-o"></i>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab5t3')">
                                                <i class="fa fa-print"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="loaderTab5t3" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divpTab5t3" class="reports" style="margin:0 10px 10px 10px;">
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                        ТӨЛӨВЛӨГӨӨНИЙ БИЕЛЭЛТ                                        
                                    </div>
                                    <div style="text-align: right; font-size: 14px; padding-bottom: 3px; text-transform: uppercase; line-height: 5px;">
                                        (<label id="pTab5t3Year" runat="server"></label> 
                                        ОНЫ 
                                        <label id="pTab5t3Quarter" runat="server"></label>-Р УЛИРЛЫН БАЙДЛААР)
                                    </div>
                                    <div id="divBindTab5t3Table"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </article>
    </div>
</section>
<div id="pTab1Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="pTab1ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Дотоод аудитын тайлан&nbsp;<span id="pTab1ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pTab1ModalID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-2">
                                    <label class="control-label">*Он</label>
									<select id="pTab1ModalSelectYear" name="pTab1ModalSelectYear" runat="server" class="form-control" style="padding: 5px;">
                                        <option value="">- Сонго -</option>
                                        <option>2013</option>
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
                                <div class="col-md-2">
                                    <label class="control-label">*Сар</label>
									<select id="pTab1ModalSelectMonth" name="pTab1ModalSelectMonth" runat="server" class="form-control" style="padding: 5px;">
                                        <option value="">- Сонго -</option>
                                        <option>1</option>
								        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                        <option>6</option>
                                        <option>7</option>
                                        <option>8</option>
                                        <option>9</option>
                                        <option>10</option>
                                        <option>11</option>
                                        <option>12</option>
							        </select>
                                </div>
                                <div class="col-md-8">
                                    <label class="control-label">*Дугаар</label>
									<input id="pTab1ModalInputNo" name="pTab1ModalInputNo" class="form-control" type="text" placeholder="Дугаар"/>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Нэр</label>
									<textarea id="pTab1ModalInputName" name="pTab1ModalInputName" class="form-control" required="" placeholder="Нэр" rows="3"></textarea>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Аудит хийсэн байгууллага</label>
									<input id="pTab1ModalInputWhoname" name="pTab1ModalInputWhoname" class="form-control" type="text" placeholder="Хэнд"/>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <div class="form-group" style="margin:10px 0 0 0; display:block; overflow:hidden;">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">Тайлан</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2" style="font-size:13px;">
                                    Хавсралт файл:
                                </div>
                                <div class="col-md-10" style="font-style:italic;padding-left: 0;">
                                    <a id="pTab1ModalAttachBtn" class="btn btn-link btn-xs" href="javascript:void(0);" style="padding:0px; border:none;" download="">Файл хавсаргаагүй байна...</a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2">
                                    <a id="pTab1ModalAttachDelete" class="btn btn-link btn-xs" href="javascript:void(0);"><i class="fa fa-trash-o"></i> файл устгах</a>
                                </div>
                                <div class="col-md-10" style="padding-left: 0;">
                                    <input id="pTab1ModalAttachInput" type="file" class="btn btn-default">
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <div class="form-group" style="margin:10px 0 0 0; display:block; overflow:hidden;">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">Tөлөвлөгөө, тогтоол</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2" style="font-size:13px;">
                                    Хавсралт файл:
                                </div>
                                <div class="col-md-10" style="font-style:italic;padding-left: 0;">
                                    <a id="pTab1ModalAttach2Btn" class="btn btn-link btn-xs" href="javascript:void(0);" style="padding:0px; border:none;" download="">Файл хавсаргаагүй байна...</a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2">
                                    <a id="pTab1ModalAttach2Delete" class="btn btn-link btn-xs" href="javascript:void(0);"><i class="fa fa-trash-o"></i> файл устгах</a>
                                </div>
                                <div class="col-md-10" style="padding-left: 0;">
                                    <input id="pTab1ModalAttach2Input" type="file" class="btn btn-default">
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
<div id="pTab3ImplModal" class="modal fade in modalSecond" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            
        </div>
    </div>
</div>
<div id="pTab2Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="pTab2ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Зөвлөмж&nbsp;<span id="pTab2ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pTab2ModalID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-2">
                                    <label class="control-label">Он</label>
									<select id="pTab2ModalSelectYear" name="pTab2ModalSelectYear" runat="server" class="form-control" style="padding: 5px;">
                                        <option value="">- Сонго -</option>
                                        <option>2013</option>
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
                                <div class="col-md-10">
                                    <label class="control-label">*Дотоод аудитын тайлан</label>
									<select id="pTab2ModalSelectReport" name="pTab2ModalSelectReport" runat="server" class="form-control" style="padding: 5px;">
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
                                    <label class="control-label">*Дугаар</label>
									<input id="pTab2ModalInputNo" name="pTab2ModalInputNo" class="form-control" type="text" placeholder="Дугаар"/>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Нэр</label>
									<textarea id="pTab2ModalInputName" name="pTab2ModalInputName" class="form-control" required="" placeholder="Нэр" rows="3"></textarea>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-3">
                                    <label class="control-label">*Хэрэгжүүлэх хугацаа</label>
									<input id="pTab2ModalInputDt" name="pTab2ModalInputDt" class="form-control" type="text" placeholder="Хэрэгжүүлэх хугацаа"/>
                                </div>
                                <div class="col-md-9">
                                    <label class="control-label">*Хариуцах газар (<span id="pTab2ModalSpanGazarYr"></span>)</label>
                                    <div id="pTab2ModalDivSelect2Gazar">

                                    </div>
                                </div>
                            </div>
                            <div id="pTab2ModalDivSelect2Gazar2Div" class="row">
                                <div class="col-md-9 col-md-offset-3">
                                    <label class="control-label">Хариуцах газар /нэгж өөрчлөгдсөн бол/ (<span id="pTab2ModalSpanGazarYr2"></span>)</label>
                                    <div id="pTab2ModalDivSelect2Gazar2">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12 col-md-12">
									<label class="control-label">Хугацаа</label>
								</div>
                            </div>
                            <div class="row">
                                <div class="col-md-4 col-md-4" style="width:210px;">
									<label class="radio radio-inline no-margin">
										<input id="pTab2ModalRadioIsSuccessdate0" type="radio" name="pTab2ModalRadioIsSuccessdate" value="0" class="radiobox style-2" disabled="disabled">
										<span>Байнга</span>
									</label>
									<label class="radio radio-inline">
										<input id="pTab2ModalRadioIsSuccessdate1" type="radio" name="pTab2ModalRadioIsSuccessdate" value="1" class="radiobox style-2" disabled="disabled" checked="checked">
										<span>Хугацаатай</span>
									</label>
                                </div>
                                <div id="pTab2ModalInputSuccessdateDiv" class="col-sm-3 col-md-3" style="padding-left: 0;">
                                    <input id="pTab2ModalInputSuccessdate" name="pTab2ModalInputSuccessdate" class="form-control" type="text" placeholder="Хугацаа"/>
                                </div>
                                <div class="col-md-4 col-md-4">
                                    <label class="radio radio-inline no-margin">
										<input id="pTab2ModalRadioIsActive1" type="radio" name="pTab2ModalRadioIsActive" value="0" class="radiobox style-2"/>
										<span>Идэвхитэй</span>
									</label>
									<label class="radio radio-inline">
										<input id="pTab2ModalRadioIsActive0" type="radio" name="pTab2ModalRadioIsActive" value="1" class="radiobox style-2" />
										<span>Идэвхигүй</span>
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
<div id="pTabsAttachShowModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            
        </div>
    </div>
</div>
<div id="pTab1t3Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="pTab1t3ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Төлөвлөгөө&nbsp;<span id="pTab1t3ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pTab1t3ModalID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-2">
                                    <label class="control-label">Он</label>
									<select id="pTab1t3ModalSelectYear" name="pTab1t3ModalSelectYear" runat="server" class="form-control" style="padding: 5px;">
                                        <option value="">- Сонго -</option>
                                        <option>2013</option>
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
                                <div class="col-md-10">
                                    <label class="control-label">*Дотоод аудитын тайлан</label>
									<select id="pTab1t3ModalSelectReport" name="pTab1t3ModalSelectReport" runat="server" class="form-control" style="padding: 5px;">
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
                                    <label class="control-label">*Зөвлөмж</label>
									<select id="pTab1t3ModalSelectRec" name="pTab1t3ModalSelectRec" runat="server" class="form-control" style="padding: 5px;" disabled>
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
                                    <label class="control-label">*Дугаар</label>
									<input id="pTab1t3ModalInputNo" name="pTab1t3ModalInputNo" class="form-control" type="text" placeholder="Дугаар"/>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Нэр</label>
									<textarea id="pTab1t3ModalInputName" name="pTab1t3ModalInputName" class="form-control" required="" placeholder="Нэр" rows="3"></textarea>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-9">
                                    <label class="control-label">*Хариуцах газар</label>
                                    <div id="pTab1t3ModalDivSelect2Gazar">

                                    </div>
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
    var globalAjaxVar = null;
    var pagefunction = function () {
        var valLiId = $('#pTab1Li').closest('ul').find('.active').attr('id');
        if (valLiId == 'pTab1Li') {
            dataBindTab2DataTableFirst();
        }
        else if (valLiId == 'pTab3Li') {
            dataBindTab3DataTableFirst();
        }
        else if (valLiId == 'pTab4Li') {
            dataBindTab4DataTableFirst();
        }
        else if (valLiId == 'pTab5Li') {
            dataBindTab5t1DataTable();
        }
    }
    var pagedestroy = function () {
        if (globalAjaxVar != null) {
            globalAjaxVar.abort();
            globalAjaxVar = null;
        }
    }
    pagefunction();
    function pDatabindTabs(el) {
        if ($.trim($(el).attr('id')) == 'pTab1Li') {
            if ($.trim($('#divBindTab2Table').html()) == "") {
                dataBindTab2DataTableFirst();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab1t1Li') {
            if ($.trim($('#divBindTab1Table').html()) == "") {
                dataBindTab1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab1t2Li') {
            if ($.trim($('#divBindTab2Table').html()) == "") {
                dataBindTab2DataTableFirst();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab1t3Li') {
            if ($.trim($('#divBindTab1t3Table').html()) == "") {
                dataBindTab1t3DataTableFirst();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab3Li') {
            if ($.trim($('#divBindTab3Table').html()) == "") {
                dataBindTab3DataTableFirst();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab4Li') {
            if ($.trim($('#divBindTab4Table').html()) == "") {
                dataBindTab4DataTableFirst();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab5Li') {
            if ($.trim($('#divBindTab5t1Table').html()) == "") {
                dataBindTab5t1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab5t1Li') {
            if ($.trim($('#divBindTab5t1Table').html()) == "") {
                dataBindTab5t1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab5t2Li') {
            if ($.trim($('#divBindTab5t2Table').html()) == "") {
                dataBindTab5t2DataTableFirst();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab5t3Li') {
            if ($.trim($('#divBindTab5t3Table').html()) == "") {
                dataBindTab5t3DataTableFirst();
            }
        }
    }
    //tab1
    function dataBindTab1DataTable() {
        var valData = '';
        var valIsEdit = '1';
        showLoader('loaderTab1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditinternalTab1Datatable",
            data: '{"yr":"' + $('#pTab1SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (!funcCheckRoles('1,35')) {
                    valIsEdit = '0';
                }
                valData += "<table id=\"pTab1Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                valData += "<thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Он.сар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Тайлангийн дугаар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Тайлангийн утга</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Файл тайлан</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Файл төлөвлөгөө</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Аудит хийсэн байгууллага</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Засварлах</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td>" + value.YR + "." + value.MNTH + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NO) + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td>";
                    if (value.FILENAME != "") {
                        valData += "<div class=\"btn-group\">";
                        valData += "<a href=\"../files/auditinternal/" + value.FILENAME + "\" class=\"btn btn-default btn-xs\" download title=\"Хавсаргасан файл татах\"><i class=\"fa fa-download\"></i></a>";
                        valData += "<a href=\"../pg/auditinternalTabsAttachShowModal.aspx?filename=" + value.FILENAME + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTabsAttachShowModal\" data-toggle=\"modal\"><i class=\"fa fa-eye\"></i></a>";
                        valData += "</div>";
                    }
                    valData += "</td>";
                    valData += "<td>";
                    if (value.FILENAME2 != "") {
                        valData += "<div class=\"btn-group\">";
                        valData += "<a href=\"../files/auditinternal/" + value.FILENAME2 + "\" class=\"btn btn-default btn-xs\" download title=\"Хавсаргасан файл татах\"><i class=\"fa fa-download\"></i></a>";
                        valData += "<a href=\"../pg/auditinternalTabsAttachShowModal.aspx?filename=" + value.FILENAME2 + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTabsAttachShowModal\" data-toggle=\"modal\"><i class=\"fa fa-eye\"></i></a>";
                        valData += "</div>";
                    }
                    valData += "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">" +  replaceDatabaseToDisplay(value.WHONAME) + "</td>";
                    valData += "<td class=\"text-center\">";
                    if (valIsEdit == '1') {
                        valData += "<div class=\"btn-group\">";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab1(this,'засах');\" data-target=\"#pTab1Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab1(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                        valData += "</div>";
                    }
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_pTab1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab1Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab1Datatable) {responsiveHelper_pTab1Datatable = new ResponsiveDatatablesHelper($('#pTab1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" }, { \"sWidth\": \"50px\" },null,null,{ \"sWidth\": \"50px\" },{ \"sWidth\": \"50px\" }, null, { \"sWidth\": \"45px\" }]});";
                valData += "<\/script>";
                $("#divBindTab1Table").html(valData);
                hideLoader('loaderTab1');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function showAddEditTab1(el, isinsupt) {
        $('#pTab1ModalHeaderLabel').text(isinsupt);

        $('#pTab1ModalID').html('');
        $('#pTab1ModalSelectYear').val('');
        $('#pTab1ModalSelectMonth').val('');
        $('#pTab1ModalInputNo').val('');
        $('#pTab1ModalInputName').val('');
        $('#pTab1ModalInputWhoname').val('');
        $('#pTab1ModalAttachBtn').html('Файл хавсаргаагүй байна...');
        $('#pTab1ModalAttachBtn').attr('href', 'javascript:void(0);');
        $('#pTab1ModalAttachInput').val('');
        $('#pTab1ModalAttach2Btn').html('Файл хавсаргаагүй байна...');
        $('#pTab1ModalAttach2Btn').attr('href', 'javascript:void(0);');
        $('#pTab1ModalAttach2Input').val('');
        if (isinsupt == 'засах') {
            $('#pTab1ModalID').text($(el).closest('tr').attr('data-id'));
            $('#pTab1ModalSelectYear').val($(el).closest('tr').find('td:eq(1)').html().split('.')[0]);
            $('#pTab1ModalSelectMonth').val($(el).closest('tr').find('td:eq(1)').html().split('.')[1]);
            $('#pTab1ModalInputNo').val($(el).closest('tr').find('td:eq(2)').html());
            $('#pTab1ModalInputName').val($(el).closest('tr').find('td:eq(3)').html());
            $('#pTab1ModalInputWhoname').val($(el).closest('tr').find('td:eq(6)').html());
            if ($.trim($(el).closest('tr').find('td:eq(4)').html()) != '') {
                $('#pTab1ModalAttachBtn').html($(el).closest('tr').find('td:eq(4)').find('a').attr('href').split('/').pop());
                $('#pTab1ModalAttachBtn').attr('href', $(el).closest('tr').find('td:eq(4)').find('a').attr('href'));
            }
            if ($.trim($(el).closest('tr').find('td:eq(5)').html()) != '') {
                $('#pTab1ModalAttach2Btn').html($(el).closest('tr').find('td:eq(5)').find('a').attr('href').split('/').pop());
                $('#pTab1ModalAttach2Btn').attr('href', $(el).closest('tr').find('td:eq(5)').find('a').attr('href'));
            }
        }
    }
    function showDeleteTab1(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_AUDITINTERNAL_RECOMMEND WHERE AUDITINTERNAL_REPORT_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') {
                    alert('Сонгосон Дотоод аудитын тайланд хамааралтай зөвлөмж орсон тул устгах боломжгүй байна!');
                }
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон стратегийн зорилтыг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"DELETE FROM TBL_AUDITINTERNAL_REPORT WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab1DataTable();
                                    smallBox('Сонгосон дотоод аудит', 'Амжилттай устлаа...', '#659265', 3000);
                                    $('#divBindTab2Table, #divBindTab3Table').html('');
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
    $("#pTab1ModalAttachInput").change(function () {
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
            if (valE != 'pdf') {
                errMsg += 'Файлын төрөл зөвшөөрөгдөөгүй төрөл байна. /pdf/\n';
                $(this).val('');
            }
            else fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
        }
        if (errMsg == '') {
            $('#pTab1ModalAttachBtn').html($(this).val().split('\\').pop());
        }
        else alert(errMsg);
    });
    $("#pTab1ModalAttachDelete").click(function () {
        if ($('#pTab1ModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
            $.SmartMessageBox({
                title: "Анхааруулга!",
                content: "Та устгахдаа итгэлтэй байна уу?",
                buttons: '[Үгүй][Тийм]'
            }, function (ButtonPressed) {
                if (ButtonPressed === "Тийм") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/DeleteFile",
                        data: '{"filename":"~/files/auditinternal/' + $('#pTab1ModalAttachBtn').html() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            $('#pTab1ModalAttachBtn').html('Файл хавсаргаагүй байна...');
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
    $("#pTab1ModalAttach2Input").change(function () {
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
            if (valE != 'pdf') {
                errMsg += 'Файлын төрөл зөвшөөрөгдөөгүй төрөл байна. /pdf/\n';
                $(this).val('');
            }
            else fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
        }
        if (errMsg == '') {
            $('#pTab1ModalAttach2Btn').html($(this).val().split('\\').pop());
        }
        else alert(errMsg);
    });
    $("#pTab1ModalAttach2Delete").click(function () {
        if ($('#pTab1ModalAttach2Btn').html() != 'Файл хавсаргаагүй байна...') {
            $.SmartMessageBox({
                title: "Анхааруулга!",
                content: "Та устгахдаа итгэлтэй байна уу?",
                buttons: '[Үгүй][Тийм]'
            }, function (ButtonPressed) {
                if (ButtonPressed === "Тийм") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/DeleteFile",
                        data: '{"filename":"~/files/auditinternal/' + $('#pTab1ModalAttach2Btn').html() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            $('#pTab1ModalAttach2Btn').html('Файл хавсаргаагүй байна...');
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
    $("#pTab1SelectYear").change(function () {
        dataBindTab1DataTable();
    });
    $('#pTab1ModalForm').bootstrapValidator({
        fields: {
            pTab1ModalSelectYear: {
                group: '.col-md-2',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab1ModalSelectMonth: {
                group: '.col-md-2',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab1ModalInputNo: {
                group: '.col-md-8',
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    stringLength: {
                        max: 50,
                        message: 'Уртдаа 50 тэмдэгт авна'
                    }
                }
            },
            pTab1ModalInputName: {
                group: '.form-group',
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
            pTab1ModalInputWhoname: {
                group: '.form-group',
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    stringLength: {
                        max: 500,
                        message: 'Уртдаа 500 тэмдэгт авна'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            var filename = 'null', filename2 = 'null';
            var filenameF = ''; filename2F = '';
            if ($('#pTab1ModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') filename = '\'' + $.trim($('#pTab1ModalAttachBtn').html()) + '\'';
            if ($('#pTab1ModalAttach2Btn').html() != 'Файл хавсаргаагүй байна...') filename2 = '\'' + $.trim($('#pTab1ModalAttach2Btn').html()) + '\'';
            if ($('#pTab1ModalHeaderLabel').text() == 'нэмэх') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                    data: '{"qry":"SELECT TBLLASTID(\'TBL_AUDITINTERNAL_REPORT\') FROM DUAL"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        if ($('#pTab1ModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
                            filename = '\'ДАТТайлан-' + data.d + '.' + $('#pTab1ModalAttachInput').val().split('.').pop() + '\'';
                            filenameF = 'ДАТТайлан-' + data.d + '.' + $('#pTab1ModalAttachInput').val().split('.').pop() + '';
                        }
                        if ($('#pTab1ModalAttach2Btn').html() != 'Файл хавсаргаагүй байна...') {
                            filename2 = '\'ДАТТөлөвлөгөө-' + data.d + '.' + $('#pTab1ModalAttach2Input').val().split('.').pop() + '\'';
                            filename2F = 'ДАТТөлөвлөгөө-' + data.d + '.' + $('#pTab1ModalAttach2Input').val().split('.').pop() + '';
                        }
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                            data: '{"qry":"INSERT INTO TBL_AUDITINTERNAL_REPORT (ID, YR, MNTH, NO, NAME, FILENAME, FILENAME2, WHONAME, CREATED_STAFFID, CREATED_DATE) VALUES (TBLLASTID(\'TBL_AUDITINTERNAL_REPORT\'), ' + $('#pTab1ModalSelectYear option:selected').val() + ', ' + $('#pTab1ModalSelectMonth option:selected').val() + ', \'' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputNo').val())) + '\', \'' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputName').val())) + '\', ' + filename + ', ' + filename2 + ', \'' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputWhoname').val())) + '\',' + $('#indexUserId').text() + ', sysdate)"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function () {
                                if ($('#pTab1ModalAttachInput').val() != '') {
                                    var valMaxId = '';
                                    globalAjaxVar = $.ajax({
                                        type: "POST",
                                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                        data: '{"qry":"SELECT NVL(MAX(ID),1) FROM TBL_AUDITINTERNAL_REPORT"}',
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function (data) {
                                            valMaxId = data.d;
                                            var uploadfiles = $("#pTab1ModalAttachInput").get(0);
                                            var uploadedfiles = uploadfiles.files;
                                            var fromdata = new FormData();
                                            fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                                            var choice = {};
                                            choice.url = "pg/UploadFile.ashx?folder=auditinternal&filename=" + filenameF;
                                            choice.type = "POST";
                                            choice.data = fromdata;
                                            choice.contentType = false;
                                            choice.processData = false;
                                            choice.success = function (result) {
                                                if (result == "1") {

                                                }
                                                else {
                                                    alert('Файл хуулхад алдаа гарлаа');
                                                }

                                            };
                                            choice.error = function (err) { alert('Файл хадгалахад алдаа гарлаа: ' + err.statusText); };
                                            $.ajax(choice);
                                            e.preventDefault();
                                        },
                                        failure: function (response) {
                                            alert('FAILURE: ' + response.d);
                                        },
                                        error: function (xhr, status, error) {
                                            window.location = '../#pg/error500.aspx';
                                        }
                                    });
                                }
                                if ($('#pTab1ModalAttach2Input').val() != '') {
                                    var valMaxId = '';
                                    globalAjaxVar = $.ajax({
                                        type: "POST",
                                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                        data: '{"qry":"SELECT NVL(MAX(ID),1) FROM TBL_AUDITINTERNAL_REPORT"}',
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function (data) {
                                            valMaxId = data.d;
                                            var uploadfiles = $("#pTab1ModalAttach2Input").get(0);
                                            var uploadedfiles = uploadfiles.files;
                                            var fromdata = new FormData();
                                            fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                                            var choice = {};
                                            choice.url = "pg/UploadFile.ashx?folder=auditinternal&filename=" + filename2F;
                                            choice.type = "POST";
                                            choice.data = fromdata;
                                            choice.contentType = false;
                                            choice.processData = false;
                                            choice.success = function (result) {
                                                if (result == "1") {

                                                }
                                                else {
                                                    alert('Файл хуулхад алдаа гарлаа');
                                                }

                                            };
                                            choice.error = function (err) { alert('Файл хадгалахад алдаа гарлаа: ' + err.statusText); };
                                            $.ajax(choice);
                                            e.preventDefault();
                                        },
                                        failure: function (response) {
                                            alert('FAILURE: ' + response.d);
                                        },
                                        error: function (xhr, status, error) {
                                            window.location = '../#pg/error500.aspx';
                                        }
                                    });
                                }
                                dataBindTab1DataTable();
                                $('#pTab1Modal').modal('hide');
                                smallBox('Дотоод аудитын тайлан', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                                $('#divBindTab2Table, #divBindTab3Table, #divBindTab4Table, #divBindTab5t2Table, #divBindTab5t4Table').html('');
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
                if ($('#pTab1ModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
                    filename = '\'ДАТТайлан-' + $("#pTab1ModalID").text() + '.' + $('#pTab1ModalAttachBtn').html().split('.').pop() + '\'';
                    filenameF = 'ДАТТайлан-' + $("#pTab1ModalID").text() + '.' + $('#pTab1ModalAttachInput').val().split('.').pop() + '';
                }
                if ($('#pTab1ModalAttach2Btn').html() != 'Файл хавсаргаагүй байна...') {
                    filename2 = '\'ДАТТөлөвлөгөө-' + $("#pTab1ModalID").text() + '.' + $('#pTab1ModalAttach2Btn').html().split('.').pop() + '\'';
                    filename2F = 'ДАТТөлөвлөгөө-' + $("#pTab1ModalID").text() + '.' + $('#pTab1ModalAttach2Input').val().split('.').pop() + '';
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"UPDATE TBL_AUDITINTERNAL_REPORT SET YR=' + $('#pTab1ModalSelectYear option:selected').val() + ', MNTH=' + $('#pTab1ModalSelectMonth option:selected').val() + ', NO=\'' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputNo').val())) + '\', NAME=\'' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputName').val())) + '\', FILENAME=' + filename + ', FILENAME2=' + filename2 + ', WHONAME=\'' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputWhoname').val())) + '\', UPDATED_STAFFID=' + $('#indexUserId').text() + ', UPDATED_DATE=sysdate WHERE ID=' + $("#pTab1ModalID").text() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        if ($('#pTab1ModalAttachInput').val() != '') {
                            var uploadfiles = $("#pTab1ModalAttachInput").get(0);
                            var uploadedfiles = uploadfiles.files;
                            var fromdata = new FormData();
                            fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                            var choice = {};
                            choice.url = "pg/UploadFile.ashx?folder=auditinternal&filename=" + filenameF;
                            choice.type = "POST";
                            choice.data = fromdata;
                            choice.contentType = false;
                            choice.processData = false;
                            choice.success = function (result) {
                                if (result == "1") {

                                }
                                else {
                                    alert('Файл хуулхад алдаа гарлаа');
                                }
                            };
                            choice.error = function (err) { alert('Файл хадгалахад алдаа гарлаа: ' + err.statusText); };
                            $.ajax(choice);
                            e.preventDefault();
                        }
                        if ($('#pTab1ModalAttach2Input').val() != '') {
                            var uploadfiles = $("#pTab1ModalAttach2Input").get(0);
                            var uploadedfiles = uploadfiles.files;
                            var fromdata = new FormData();
                            fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                            var choice = {};
                            choice.url = "pg/UploadFile.ashx?folder=auditinternal&filename=" + filename2F;
                            choice.type = "POST";
                            choice.data = fromdata;
                            choice.contentType = false;
                            choice.processData = false;
                            choice.success = function (result) {
                                if (result == "1") {

                                }
                                else {
                                    alert('Файл хуулхад алдаа гарлаа');
                                }
                            };
                            choice.error = function (err) { alert('Файл хадгалахад алдаа гарлаа: ' + err.statusText); };
                            $.ajax(choice);
                            e.preventDefault();
                        }
                        dataBindTab1DataTable();
                        $('#pTab1Modal').modal('hide');
                        smallBox('Дотоод аудитын тайлан', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                        $('#divBindTab2Table, #divBindTab3Table, #divBindTab4Table, #divBindTab5t2Table, #divBindTab5t4Table').html('');
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
    //tab2
    function dataBindTab2DataTableFirst() {
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditinternalReportListRecDDL",
            data: '{"yr": "' + $('#pTab2SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += '<option value="">Бүгд</option>';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.AUDITINTERNAL_REPORT_ID + '">' + replaceDatabaseToDisplay(value.NO) + '. ' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                });
                $('#pTab2SelectReport').html(valData);
                $('#pTab2SelectReport option:eq(1)').prop('selected', true);
                $('#divBindTab2Table').html('');
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/AuditinternalReportListDDL",
                    data: '{"yr": "' + $('#pTab2ModalSelectYear option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valData += '<option value="">-  Сонго -</option>';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.ID + '">' + replaceDatabaseToDisplay(value.NO) + '. ' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                        });
                        $('#pTab2ModalSelectReport').html(valData);
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/AuditinternalGazarListForSelect2",
                            data: '{"selectedList":"", "yr":"' + $('#indexCurrentYear').html() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                valOptGroup = '';
                                valData += '<option value="">Бүгд</option>';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    if (valOptGroup != value.BR_TYPE1) {
                                        if (valOptGroup != "") valData += "</optgroup>";
                                        valData += "<optgroup label=\"" + value.BR_TYPE1 + "\">";
                                    }
                                    valData += "<option" + value.ISSELECTED + " value=\"" + value.BR_ID + "\" title=\"" + value.BR_NAME + "\">" + value.DOMAIN_ORG + "</option>";
                                    valOptGroup = value.BR_TYPE1;
                                });
                                $('#pTab2SelectGazar').html(valData);
                                dataBindTab2DataTable();
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
    function dataBindTab2DataTable() {
        var valData = '';
        var valIsEdit = '1';
        showLoader('loaderTab2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditinternalTab2Datatable",
            data: '{"yr":"' + $('#pTab2SelectYear option:selected').val() + '", "reportid":"' + $('#pTab2SelectReport option:selected').val() + '", "gazar":"' + $('#pTab2SelectGazar option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (!funcCheckRoles('1,35')) {
                    valIsEdit = '0';
                }
                valData += "<table id=\"pTab2Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                valData += "<thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Огноо</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Дотоод аудитын тайлан</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Зөвлөмжийн дугаар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Зөвлөмжийн утга</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах газар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">ХЭХ</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Засварлах</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хаах</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">" + value.DT + "</td>";
                    valData += "<td data-id=\"" + value.AUDITINTERNAL_REPORT_ID + "\"><b>Тайлангийн дугаар: </b>" + value.AUDITINTERNAL_REPORT_NO + "<br><b>Тайлангийн нэр: </b>" + replaceDatabaseToDisplay(value.AUDITINTERNAL_REPORT_NAME) + "</td>";
                    valData += "<td class=\"text-center\">" + replaceDatabaseToDisplay(value.NO) + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\" data-id=\"" + value.BRLISTID.replace("none", "") + "\" data-yr=\"" + value.BRLISTYR + "\" data-id2=\"" + value.BRLISTID2.replace("none", "") + "\" data-yr2=\"" + value.BRLISTYR2 + "\">";
                    if (value.BRLISTID2 != "none") {
                        valData += value.BRLISTNAME2;
                    }
                    else {
                        valData += value.BRLISTNAME.replace("none", "");
                    }
                    valData += "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">" + value.SUCCESSDATE + "</td>";
                    valData += "<td class=\"text-center\">";
                    if (valIsEdit == '1') {
                        valData += "<div class=\"btn-group\">";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab2(this,'засах');\" data-target=\"#pTab2Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab2(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                        valData += "</div>";
                    }
                    valData += "</td>";
                    valData += "<td style=\"text-align:center; vertical-align:middle;\">";
                    if (valIsEdit == '1') {
                        valData += "<span class=\"onoffswitch\"><input id=\"onoffCheckbox" + value.ID + "\" name=\"onoffCheckbox" + value.ID + "\" type=\"checkbox\" " + value.ISCLOSED + " class=\"onoffswitch-checkbox\" onclick=\"saveIsClosedRec(this);\"><label class=\"onoffswitch-label\" for=\"onoffCheckbox" + value.ID + "\"><span class=\"onoffswitch-inner\" data-swchon-text=\"ON\" data-swchoff-text=\"OFF\"></span><span class=\"onoffswitch-switch\"></span></label></span>";
                    }
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody></table>";
                valData += "<script>";
                valData += "var responsiveHelper_pTab2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab2Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab2Datatable) {responsiveHelper_pTab2Datatable = new ResponsiveDatatablesHelper($('#pTab2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab2Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },{ \"sWidth\": \"75px\" },{ \"sWidth\": \"300px\" }, { \"sWidth\": \"30px\" },null,null,{ \"sWidth\": \"75px\" }, { \"sWidth\": \"45px\" }, { \"sWidth\": \"15px\" }]});";
                valData += "<\/script>";
                $("#divBindTab2Table").html(valData);
                hideLoader('loaderTab2');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function showAddEditTab2(el, isinsupt) {
        $('#pTab2ModalHeaderLabel').text(isinsupt);

        if (isinsupt == 'нэмэх') {
            $('#pTab2ModalID').html('');
            $('#pTab2ModalSelectReport').val('');
            $('#pTab2ModalInputNo').val('');
            $('#pTab2ModalInputName').val('');
            $('#pTab2ModalInputDt').val('');
            dataBindTab2ModalGazarListForSelect2('', $('#indexCurrentYear').html());
            $("#pTab2ModalDivSelect2Gazar2").html('');
            $('#pTab2ModalDivSelect2Gazar2Div').addClass('hide');
            $('#pTab2ModalSpanGazarYr').html($('#indexCurrentYear').html());
            $('#pTab2ModalSpanGazarYr2').html('');

            $('input[name="pTab2ModalRadioIsSuccessdate"]').prop('checked', false);
            $('#pTab2ModalRadioIsSuccessdate1').prop('checked', true);
            $('#pTab2ModalInputSuccessdate').val('');
            $('#pTab2ModalInputSuccessdateDiv').css('display', 'block');

            //$('#pTab2ModalAttachBtn').html('Файл хавсаргаагүй байна...');
            //$('#pTab2ModalAttachBtn').attr('href', 'javascript:void(0);');
            //$('#pTab2ModalAttachInput').val('');
            $('input[name="pTab2ModalRadioIsActive"]').prop('checked', false);
        }
        else if (isinsupt == 'засах') {
            $('#pTab2ModalID').text($(el).closest('tr').attr('data-id'));
            $('#pTab2ModalSelectReport').val($(el).closest('tr').find('td:eq(2)').attr('data-id'));
            $('#pTab2ModalInputNo').val($(el).closest('tr').find('td:eq(3)').html());
            $('#pTab2ModalInputName').val($(el).closest('tr').find('td:eq(4)').html());
            $('#pTab2ModalInputDt').val($(el).closest('tr').find('td:eq(1)').html());
            var valGazarYr = $('#indexCurrentYear').html(), valGazarYr2 = $('#indexCurrentYear').html();
            if ($(el).closest('tr').find('td:eq(5)').attr('data-yr') != '') valGazarYr = $(el).closest('tr').find('td:eq(5)').attr('data-yr');
            if ($(el).closest('tr').find('td:eq(5)').attr('data-yr2') != '') valGazarYr2 = $(el).closest('tr').find('td:eq(5)').attr('data-yr2');
            dataBindTab2ModalGazarListForSelect2($(el).closest('tr').find('td:eq(5)').attr('data-id'), valGazarYr);
            dataBindTab2ModalGazarList2ForSelect2($(el).closest('tr').find('td:eq(5)').attr('data-id2'), valGazarYr2);
            $('#pTab2ModalDivSelect2Gazar2Div').removeClass('hide');
            $('#pTab2ModalSpanGazarYr').html(valGazarYr);
            $('#pTab2ModalSpanGazarYr2').html(valGazarYr2);
            $('input[name="pTab2ModalRadioIsSuccessdate"]').prop('checked', false);
            $('#pTab2ModalInputSuccessdate').val('');
            $('#pTab2ModalInputSuccessdateDiv').css('display', 'none');
            if ($(el).closest('tr').find('td:eq(6)').html() == 'Байнга') {
                $('#pTab2ModalRadioIsSuccessdate0').prop('checked', true);
            }
            else {
                $('#pTab2ModalInputSuccessdateDiv').css('display', 'block');
                $('#pTab2ModalRadioIsSuccessdate1').prop('checked', true);
                $('#pTab2ModalInputSuccessdate').val($(el).closest('tr').find('td:eq(6)').html());
            }
            //if ($.trim($(el).closest('tr').find('td:eq(5)').html()) != '') {
            //    $('#pTab2ModalAttachBtn').html($(el).closest('tr').find('td:eq(4)').find('a').attr('href').split('/').pop());
            //    $('#pTab2ModalAttachBtn').attr('href', $(el).closest('tr').find('td:eq(4)').find('a').attr('href'));
            //}
            $('input[name="pTab2ModalRadioIsActive"]').prop('checked', false);
            if ($(el).closest('tr').find('td:eq(8)').find('input').is(':checked')) {
                $('#pTab2ModalRadioIsActive1').prop('checked', true);
            }
            else $('#pTab2ModalRadioIsActive0').prop('checked', true);
        }
    }
    function showDeleteTab2(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_AUDITINTERNAL_PLAN_IMPL WHERE AUDITINTERNAL_PLAN_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') {
                    alert('Сонгосон зөвлөмжид хамааралтай биелэлт орсон тул устгах боломжгүй байна!');
                }
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон зөвлөмжийг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/AuditinternalTab2Delete",
                                data: '{"P_ID":"' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab2Datatable();
                                    smallBox('Сонгосон зөвлөмж', 'Амжилттай устлаа...', '#659265', 3000);
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
    $("#pTab2SelectYear").change(function () {
        dataBindTab2DataTableFirst();
    });
    $("#pTab2SelectReport, #pTab2SelectGazar").change(function () {
        dataBindTab2DataTable();
    });
    function dataBindTab2ModalGazarListForSelect2(selectedList, yr) {
        var valData = '', valOptGroup = '';
        $("#pTab2ModalDivSelect2Gazar").html('<input class="form-control ui-autocomplete-loading" placeholder="" type="text" disabled="disabled">');
        if (yr != '') {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/AuditinternalGazarListForSelect2",
                data: '{"selectedList":"' + selectedList + '", "yr":"' + yr + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    valOptGroup = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        if (valOptGroup != value.BR_TYPE1) {
                            if (valOptGroup != "") valData += "</optgroup>";
                            valData += "<optgroup label=\"" + value.BR_TYPE1 + "\">";
                        }
                        valData += "<option" + value.ISSELECTED + " value=\"" + value.BR_ID + "\" title=\"" + value.BR_NAME + "\">" + value.DOMAIN_ORG + "</option>";
                        valOptGroup = value.BR_TYPE1;
                    });
                    $("#pTab2ModalDivSelect2Gazar").html("<select id=\"pTab2ModalSelect2Gazar\" name=\"pTab2ModalSelect2Gazar\" multiple=\"multiple\" style=\"width:100%\" data-placeholder=\"Хариуцах газар сонго\">" + valData + "</select><script>$(\"#pTab2ModalSelect2Gazar\").select2();<\/script>");
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
    function dataBindTab2ModalGazarList2ForSelect2(selectedList, yr) {
        var valData = '', valOptGroup = '';
        $("#pTab2ModalDivSelect2Gazar2").html('<input class="form-control ui-autocomplete-loading" placeholder="" type="text" disabled="disabled">');
        if (yr != '') {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/AuditinternalGazarListForSelect2",
                data: '{"selectedList":"' + selectedList + '", "yr":"' + yr + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    valOptGroup = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        if (valOptGroup != value.BR_TYPE1) {
                            if (valOptGroup != "") valData += "</optgroup>";
                            valData += "<optgroup label=\"" + value.BR_TYPE1 + "\">";
                        }
                        valData += "<option" + value.ISSELECTED + " value=\"" + value.BR_ID + "\" title=\"" + value.BR_NAME + "\">" + value.DOMAIN_ORG + "</option>";
                        valOptGroup = value.BR_TYPE1;
                    });
                    $("#pTab2ModalDivSelect2Gazar2").html("<select id=\"pTab2ModalSelect2Gazar2\" name=\"pTab2ModalSelect2Gazar2\" multiple=\"multiple\" style=\"width:100%\" data-placeholder=\"Хариуцах газар сонго\">" + valData + "</select><script>$(\"#pTab2ModalSelect2Gazar2\").select2();<\/script>");
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
    $('#pTab2ModalForm').bootstrapValidator({
        fields: {
            pTab2ModalSelectReport: {
                group: '.col-md-10',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab2ModalInputNo: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    stringLength: {
                        max: 3,
                        message: 'Уртдаа 3 тэмдэгт авна'
                    },
                    numeric: {
                        message: 'Зөвхөн тоон тэмдэгт авна'
                    }
                }
            },
            pTab2ModalInputName: {
                group: '.form-group',
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    stringLength: {
                        max: 1000,
                        message: 'Уртдаа 1000 тэмдэгт авна'
                    }
                }
            },
            pTab2ModalInputDt: {
                group: '.col-md-3',
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
            pTab2ModalRadioIsSuccessdate: {
                group: '.col-md-4',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab2ModalInputSuccessdate: {
                group: '.col-md-3',
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
            pTab2ModalRadioIsActive: {
                group: '.col-md-4',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            var valData = '';
            if ($('#pTab2ModalSelect2Gazar').val() == null) {
                alert('Хариуцах газар сонгоно уу');
                $('#pTab2ModalForm').find('.modal-footer').find('.btn-success').prop('disabled', false);
            }
            else {
                var valErr = '';
                //if ($('#pTab2ModalInputSuccessdateDiv:visible').length == 1) {
                //    if ($.trim($('#pTab2ModalInputSuccessdate').val()) == '') valErr = 'Хугацаа оруулна уу';
                //}
                if (valErr != '') {
                    alert(valErr);
                    $('#pTab2ModalForm').find('.modal-footer').find('.btn-success').prop('disabled', false);
                }
                else {
                    var brlist = "none", brlist2 = "none";
                    if ($('#pTab2ModalSelect2Gazar').val() != null) brlist = $('#pTab2ModalSelect2Gazar').val();
                    if ($('#pTab2ModalSelect2Gazar2').val() != null) brlist2 = $('#pTab2ModalSelect2Gazar2').val();
                    if ($("#pTab2ModalHeaderLabel").html() == "нэмэх") {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/AuditinternalTab2Insert",
                            data: '{"P_AUDITINTERNAL_REPORT_ID":"' + $('#pTab2ModalSelectReport option:selected').val() + '", "P_NO":"' + replaceDisplayToDatabase($.trim($('#pTab2ModalInputNo').val())) + '", "P_NAME":"' + replaceDisplayToDatabase($.trim($('#pTab2ModalInputName').val())) + '", "P_DT":"' + $.trim($('#pTab2ModalInputDt').val()) + '", "P_BRANCHLIST":"' + brlist + '", "P_STAFFID":"' + $('#indexUserId').html() + '", "P_SUCCESSDATE":"' + $.trim($('#pTab2ModalInputSuccessdate').val()) + '", "P_ISCLOSED":"' + $("input[name='pTab2ModalRadioIsActive']:checked").val() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function () {
                                var valSelectedReportId = $('#pTab2SelectReport option:selected').val();
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/AuditinternalTab2ReportListRecForDDL",
                                    data: '{}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (data) {
                                        valData = '';
                                        $($.parseJSON(data.d)).each(function (index, value) {
                                            valData += "<option value=\"" + value.AUDITINTERNAL_REPORT_ID + "\">" + replaceDisplayToDatabase(value.NO) + " | " + replaceDisplayToDatabase(value.NAME) + "</option>";
                                        });
                                        $('#pTab2SelectReport, #pTab3SelectReport, #pTab4SelectReport, #pTab5t2SelectReport').html('<option value="">Бүгд</option>' + valData);
                                        $('#pTab3SelectReport option:eq(1), #pTab4SelectReport option:eq(1)').prop('selected', true);
                                        $('#divBindTab3Table, #divBindTab4Table, #divBindTab5t2Table').html('');
                                        $('#pTab2SelectReport').val(valSelectedReportId);
                                        dataBindTab3DataTable();
                                        $('#pTab3Modal').modal('hide');
                                        smallBox('Зөвлөмж', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                                    },
                                    failure: function (response) {
                                        alert('FAILURE: ' + response.d);
                                    },
                                    error: function (xhr, status, error) {
                                        window.location = '../#pg/error500.aspx';
                                    }
                                });

                                dataBindTab2DataTable();
                                $('#pTab2Modal').modal('hide');
                                smallBox('Зөвлөмж', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                            url: "../ws/ServiceMain.svc/AuditinternalTab2Update",
                            data: '{"P_ID":"' + $('#pTab2ModalID').html() + '", "P_AUDITINTERNAL_REPORT_ID":"' + $('#pTab2ModalSelectReport option:selected').val() + '", "P_NO":"' + replaceDisplayToDatabase($.trim($('#pTab2ModalInputNo').val())) + '", "P_NAME":"' + replaceDisplayToDatabase($.trim($('#pTab2ModalInputName').val())) + '", "P_DT":"' + $.trim($('#pTab2ModalInputDt').val()) + '", "P_BRANCHLIST":"' + brlist + '", "P_BRANCHLIST2":"' + brlist2 + '", "P_BRANCHLIST2YR":"' + $('#pTab2ModalSpanGazarYr2').html() + '", "P_STAFFID":"' + $('#indexUserId').html() + '", "P_SUCCESSDATE":"' + $.trim($('#pTab2ModalInputSuccessdate').val()) + '", "P_ISCLOSED":"' + $("input[name='pTab2ModalRadioIsActive']:checked").val() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function () {
                                dataBindTab2DataTable();
                                $('#pTab2Modal').modal('hide');
                                smallBox('Зөвлөмж', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
        }
    });
    $('#pTab2ModalInputDt, #pTab2ModalInputSuccessdate').datepicker({
        changeMonth: true,
        changeYear: true,
        dateFormat: 'yy-mm-dd',
        prevText: '<i class="fa fa-chevron-left"></i>',
        nextText: '<i class="fa fa-chevron-right"></i>',
        monthNames: ["1-р сар", "2-р сар", "3-р сар", "4-р сар", "5-р сар", "6-р сар", "7-р сар", "8-р сар", "9-р сар", "10-р сар", "11-р сар", "12-р сар"],
        monthNamesShort: ["1-р сар", "2-р сар", "3-р сар", "4-р сар", "5-р сар", "6-р сар", "7-р сар", "8-р сар", "9-р сар", "10-р сар", "11-р сар", "12-р сар"],
        dayNamesMin: ['Ня', 'Да', 'Мя', 'Лх', 'Пү', 'Ба', 'Бя']
    });
    function saveIsClosedRec(el) {
        var valIsSubmit = '0';
        if (!$(el).prop('checked')) {
            valIsSubmit = '1';
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
            data: '{"qry":"UPDATE TBL_AUDITINTERNAL_RECOMMEND SET ISCLOSED=' + valIsSubmit + ' WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function () {
                smallBox('Сонгосон төлөвлөгөө', 'Амжилттай хаагдлаа...', '#659265', 3000);
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab2ModalSelectYear").change(function () {
        $('#pTab2ModalSelectReport').prop('disabled',true);
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditinternalReportListDDL",
            data: '{"yr": "' + $('#pTab2ModalSelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += '<option value="">-  Сонго -</option>';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.ID + '">' + replaceDatabaseToDisplay(value.NO) + '. ' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                });
                $('#pTab2ModalSelectReport').html(valData);
                $('#pTab2ModalSelectReport').prop('disabled', false);
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    });
    $('input[name="pTab2ModalRadioIsSuccessdate"]').change(function () {
        if ($('input[name="pTab2ModalRadioIsSuccessdate"]:checked').val() == '1') {
            $('#pTab2ModalInputSuccessdateDiv').css('display', 'block');
        }
        else {
            $('#pTab2ModalInputSuccessdateDiv').css('display', 'none');
            $('#pTab2ModalInputSuccessdate').val('');
        }
    });

    //Tab1t3
    function dataBindTab1t3DataTableFirst() {
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditinternalReportListRecDDL",
            data: '{"yr": "' + $('#pTab1t3SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += '<option value="">Бүгд</option>';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.AUDITINTERNAL_REPORT_ID + '">' + replaceDatabaseToDisplay(value.NO) + '. ' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                });
                $('#pTab1t3SelectReport').html(valData);
                $('#pTab1t3SelectReport option:eq(1)').prop('selected', true);
                $('#divBindTab1t3Table').html('');
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/AuditinternalReportListDDL",
                    data: '{"yr": "' + $('#pTab1t3SelectYear option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valData += '<option value="">-  Сонго -</option>';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.ID + '">' + replaceDatabaseToDisplay(value.NO) + '. ' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                        });
                        $('#pTab1t3ModalSelectReport').html(valData);
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/AuditinternalGazarListForSelect2",
                            data: '{"selectedList":"", "yr":"' + $('#indexCurrentYear').html() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                valOptGroup = '';
                                valData += '<option value="">Бүгд</option>';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    if (valOptGroup != value.BR_TYPE1) {
                                        if (valOptGroup != "") valData += "</optgroup>";
                                        valData += "<optgroup label=\"" + value.BR_TYPE1 + "\">";
                                    }
                                    valData += "<option" + value.ISSELECTED + " value=\"" + value.BR_ID + "\" title=\"" + value.BR_NAME + "\">" + value.DOMAIN_ORG + "</option>";
                                    valOptGroup = value.BR_TYPE1;
                                });
                                $('#pTab1t3SelectGazar').html(valData);
                                dataBindTab1t3DataTable();
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
    function dataBindTab1t3DataTable() {
        var valData = '';
        var valIsEdit = '1';
        showLoader('loaderTab1t3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditinternalTab1t3Datatable",
            data: '{"yr":"' + $('#pTab1t3SelectYear option:selected').val() + '", "reportid":"' + $('#pTab1t3SelectReport option:selected').val() + '", "gazar":"' + $('#pTab1t3SelectGazar option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (!funcCheckRoles('1,35')) {
                    valIsEdit = '0';
                }
                valData += "<table id=\"pTab1t3Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                valData += "<thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Дотоод аудитын тайлан</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Зөвлөмж</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Төл/ дугаар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Төлөвлөгөөний утга</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах газар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Засварлах</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td data-id=\"" + value.AUDITINTERNAL_REPORT_ID + "\"><b>Тайлангийн дугаар: </b>" + value.AUDITINTERNAL_REPORT_NO + "<br><b>Тайлангийн нэр: </b>" + replaceDatabaseToDisplay(value.AUDITINTERNAL_REPORT_NAME) + "</td>";
                    valData += "<td data-id=\"" + value.AUDITINTERNAL_RECOMMEND_ID + "\"><b>Зөвлөмжийн дугаар: </b>" + value.AUDITINTERNAL_REC_NO + "<br><b>Зөвлөмжийн нэр: </b>" + replaceDatabaseToDisplay(value.AUDITINTERNAL_REC_NAME) + "<br><b>Хугацаа: </b>" + value.AUDITINTERNAL_REC_SUCCESSDATE + "</td>";
                    valData += "<td>" + value.NO + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\" data-id=\"" + value.BRLISTID.replace("none", "") + "\">" + value.BRLISTNAME.replace("none", "") + "</td>";
                    valData += "<td class=\"text-center\">";
                    if (valIsEdit == '1') {
                        valData += "<div class=\"btn-group\">";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab1t3(this,'засах');\" data-target=\"#pTab1t3Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab1t3(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                        valData += "</div>";
                    }
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody></table>";
                valData += "<script>";
                valData += "var responsiveHelper_pTab1t3Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab1t3Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab1t3Datatable) {responsiveHelper_pTab1t3Datatable = new ResponsiveDatatablesHelper($('#pTab1t3Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab1t3Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab1t3Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },{ \"sWidth\": \"300px\" },null, { \"sWidth\": \"30px\" }, null, { \"sWidth\": \"45px\" }, { \"sWidth\": \"45px\" }]});";
                valData += "<\/script>";
                $("#divBindTab1t3Table").html(valData);
                hideLoader('loaderTab1t3');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function showAddEditTab1t3(el, isinsupt) {
        $('#pTab1t3ModalHeaderLabel').text(isinsupt);
        if (isinsupt == 'нэмэх') {
            $('#pTab1t3ModalID').html('');
            $('#pTab1t3ModalSelectYear, #pTab1t3ModalInputNo, #pTab1t3ModalInputName').val('');
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/AuditinternalReportListDDL",
                data: '{"yr": "' + $('#pTab1t3ModalSelectYear option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    valData += '<option value="">-  Сонго -</option>';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.ID + '">' + replaceDatabaseToDisplay(value.NO) + '. ' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                    });
                    $('#pTab1t3ModalSelectReport').html(valData);
                    $('#pTab1t3ModalSelectReport').prop('disabled', false);
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
            $('#pTab1t3ModalSelectRec').html('<option value="">- Сонго -</option>');
            $('#pTab1t3ModalSelectRec').prop('disabled', true);
            dataBindTab1t3ModalGazarListForSelect2('', '');
        }
        else if (isinsupt == 'засах') {
            $('#pTab1t3ModalID').text($(el).closest('tr').attr('data-id'));
            $('#pTab1t3ModalSelectReport').val($(el).closest('tr').find('td:eq(1)').attr('data-id'));
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/AuditinternalTab1t3RecommendListForDDL",
                data: '{"reportid": "' + $('#pTab1t3ModalSelectReport option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    valData += '<option value="">-  Сонго -</option>';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.ID + '">' + replaceDatabaseToDisplay(value.NO) + '. ' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                    });
                    $('#pTab1t3ModalSelectRec').html(valData);
                    $('#pTab1t3ModalSelectRec').prop('disabled', false);
                    $('#pTab1t3ModalSelectRec').val($(el).closest('tr').find('td:eq(2)').attr('data-id'));
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
            $('#pTab1t3ModalInputNo').val($(el).closest('tr').find('td:eq(3)').html());
            $('#pTab1t3ModalInputName').val($(el).closest('tr').find('td:eq(4)').html());
            dataBindTab1t3ModalGazarListForSelect2($(el).closest('tr').find('td:eq(5)').attr('data-id'), $(el).closest('tr').find('td:eq(2)').attr('data-id'));
        }
    }
    function dataBindTab1t3ModalGazarListForSelect2(selectedList, recid) {
        var valData = '', valOptGroup = '';
        $("#pTab1t3ModalDivSelect2Gazar").html('<input class="form-control ui-autocomplete-loading" placeholder="" type="text" disabled="disabled">');
        if (recid != '') {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/AuditinternalTab1t3GazarListForSelect2",
                data: '{"selectedList":"' + selectedList + '", "recid":"' + recid + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    valOptGroup = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        if (valOptGroup != value.BR_TYPE1) {
                            if (valOptGroup != "") valData += "</optgroup>";
                            valData += "<optgroup label=\"" + value.BR_TYPE1 + "\">";
                        }
                        valData += "<option" + value.ISSELECTED + " value=\"" + value.BR_ID + "\" title=\"" + value.BR_NAME + "\">" + value.DOMAIN_ORG + "</option>";
                        valOptGroup = value.BR_TYPE1;
                    });
                    $("#pTab1t3ModalDivSelect2Gazar").html("<select id=\"pTab1t3ModalSelect2Gazar\" name=\"pTab1t3ModalSelect2Gazar\" multiple=\"multiple\" style=\"width:100%\" data-placeholder=\"Хариуцах газар сонго\">" + valData + "</select><script>$(\"#pTab1t3ModalSelect2Gazar\").select2();<\/script>");
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
        }
        else $("#pTab1t3ModalDivSelect2Gazar").html("<select id=\"pTab1t3ModalSelect2Gazar\" name=\"pTab1t3ModalSelect2Gazar\" multiple=\"multiple\" style=\"width:100%\" data-placeholder=\"Хариуцах газар сонго\" disabled></select><script>$(\"#pTab1t3ModalSelect2Gazar\").select2();<\/script>");
    }
    $("#pTab1t3ModalSelectYear").change(function () {
        $('#pTab1t3ModalSelectReport').prop('disabled', true);
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditinternalReportListDDL",
            data: '{"yr": "' + $('#pTab1t3ModalSelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += '<option value="">-  Сонго -</option>';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.ID + '">' + replaceDatabaseToDisplay(value.NO) + '. ' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                });
                $('#pTab1t3ModalSelectReport').html(valData);
                $('#pTab1t3ModalSelectReport').prop('disabled', false);
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    });
    $("#pTab1t3ModalSelectReport").change(function () {
        $('#pTab1t3ModalSelectRec').prop('disabled', true);
        if ($("#pTab1t3ModalSelectReport option:selected").val() == '') {
            $('#pTab1t3ModalSelectRec').html('<option value="">- Сонго -</option>');
            $('#pTab1t3ModalSelectRec').prop('disabled', true);
            dataBindTab1t3ModalGazarListForSelect2('', '');
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/AuditinternalTab1t3RecommendListForDDL",
                data: '{"reportid": "' + $('#pTab1t3ModalSelectReport option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    valData += '<option value="">-  Сонго -</option>';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.ID + '">' + replaceDatabaseToDisplay(value.NO) + '. ' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                    });
                    $('#pTab1t3ModalSelectRec').html(valData);
                    $('#pTab1t3ModalSelectRec').prop('disabled', false);
                    dataBindTab1t3ModalGazarListForSelect2('', '');
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
    $("#pTab1t3ModalSelectRec").change(function () {
        dataBindTab1t3ModalGazarListForSelect2('', $("#pTab1t3ModalSelectRec option:selected").val());
    });
    function showDeleteTab1t3(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_AUDITINTERNAL_PLAN_IMPL WHERE AUDITINTERNAL_PLAN_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') {
                    alert('Сонгосон төлөвлөгөөнд хамааралтай биелэлт орсон тул устгах боломжгүй байна!');
                }
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон төлөвлөгөөг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/AuditinternalTab1t3Delete",
                                data: '{"P_ID":"' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab1t3Datatable();
                                    smallBox('Сонгосон төлөвлөгөө', 'Амжилттай устлаа...', '#659265', 3000);
                                    $('#divBindTab3Table, #divBindTab4Table, #divBindTab5t2Table').html('');
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
    $("#pTab1t3SelectYear").change(function () {
        dataBindTab1t3DataTableFirst();
    });
    $("#pTab1t3SelectReport, #pTab1t3SelectGazar").change(function () {
        dataBindTab1t3DataTable();
    });
    $('#pTab1t3ModalForm').bootstrapValidator({
        fields: {
            pTab1t3ModalSelectReport: {
                group: '.col-md-10',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab1t3ModalSelectRec: {
                group: '.col-md-10',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab1t3ModalInputNo: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    stringLength: {
                        max: 3,
                        message: 'Уртдаа 3 тэмдэгт авна'
                    },
                    numeric: {
                        message: 'Зөвхөн тоон тэмдэгт авна'
                    }
                }
            },
            pTab1t3ModalInputName: {
                group: '.form-group',
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    stringLength: {
                        max: 1000,
                        message: 'Уртдаа 1000 тэмдэгт авна'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            var valData = '';
            if ($('#pTab1t3ModalSelect2Gazar').val() == null) {
                alert('Хариуцах газар сонгоно уу');
                $('#pTab1t3ModalForm').find('.modal-footer').find('.btn-success').prop('disabled', false);
            }
            else {
                var brlist = "none";
                if ($('#pTab1t3ModalSelect2Gazar').val() != null) brlist = $('#pTab1t3ModalSelect2Gazar').val();
                if ($("#pTab1t3ModalHeaderLabel").html() == "нэмэх") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/AuditinternalTab1t3Insert",
                        data: '{"P_AUDITINTERNAL_RECOMMEND_ID":"' + $('#pTab1t3ModalSelectRec option:selected').val() + '", "P_NO":"' + replaceDisplayToDatabase($.trim($('#pTab1t3ModalInputNo').val())) + '", "P_NAME":"' + replaceDisplayToDatabase($.trim($('#pTab1t3ModalInputName').val())) + '", "P_BRANCHLIST":"' + brlist + '", "P_STAFFID":"' + $('#indexUserId').html() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            dataBindTab1t3DataTable();
                            $('#pTab1t3Modal').modal('hide');
                            smallBox('Төлөвлөгөө', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                            $('#divBindTab3Table, #divBindTab4Table, #divBindTab5t2Table').html('');
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
                        url: "../ws/ServiceMain.svc/AuditinternalTab1t3Update",
                        data: '{"P_ID":"' + $('#pTab1t3ModalID').html() + '", "P_AUDITINTERNAL_RECOMMEND_ID":"' + $('#pTab1t3ModalSelectRec option:selected').val() + '", "P_NO":"' + replaceDisplayToDatabase($.trim($('#pTab1t3ModalInputNo').val())) + '", "P_NAME":"' + replaceDisplayToDatabase($.trim($('#pTab1t3ModalInputName').val())) + '", "P_BRANCHLIST":"' + brlist + '", "P_STAFFID":"' + $('#indexUserId').html() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            dataBindTab1t3DataTable();
                            $('#pTab1t3Modal').modal('hide');
                            smallBox('Төлөвлөгөө', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                            $('#divBindTab3Table, #divBindTab4Table, #divBindTab5t2Table').html('');
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

    //Tab3
    function dataBindTab3DataTableFirst() {
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditinternalReportListRecDDL",
            data: '{"yr": ""}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += '<option value="">Бүгд</option>';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.AUDITINTERNAL_REPORT_ID + '">' + replaceDatabaseToDisplay(value.NO) + '. ' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                });
                $('#pTab3SelectReport').html(valData);
                $('#pTab3SelectReport option:eq(1)').prop('selected', true);
                $('#divBindTab3Table').html('');
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/AuditinternalGazarListForSelect2",
                    data: '{"selectedList":"", "yr":"' + $('#indexCurrentYear').html() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valOptGroup = '';
                        valData += '<option value="">Бүгд</option>';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            if (valOptGroup != value.BR_TYPE1) {
                                if (valOptGroup != "") valData += "</optgroup>";
                                valData += "<optgroup label=\"" + value.BR_TYPE1 + "\">";
                            }
                            valData += "<option" + value.ISSELECTED + " value=\"" + value.BR_ID + "\" title=\"" + value.BR_NAME + "\">" + value.DOMAIN_ORG + "</option>";
                            valOptGroup = value.BR_TYPE1;
                        });
                        $('#pTab3SelectGazar').html(valData);
                        dataBindTab3DataTable();
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
    function dataBindTab3DataTable() {
        var valData = '';
        var implDisabled = "disabled", evalDisabled = " disabled";
        showLoader('loaderTab3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditinternalTab3Datatable",
            data: '{"yr":"' + $('#pTab3SelectYear option:selected').val() + '", "qrtr":"' + $('#pTab3SelectQuarter option:selected').val() + '", "reportid":"' + $('#pTab3SelectReport option:selected').val() + '", "gazar":"' + $('#pTab3SelectGazar option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (funcCheckRoles('1,4')) {
                    implDisabled = "";
                }
                if (funcCheckRoles('1,19')) {
                    implDisabled = ""; evalDisabled = "";
                }
                valData += "<table id=\"pTab3Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                valData += "<thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Дотоод аудитын тайлан</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Зөвлөмж</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Төл/ дугаар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Төлөвлөгөөний утга</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах газар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Биелэлт оруулах</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td><b>Тайлангийн дугаар: </b>" + value.AUDITINTERNAL_REPORT_NO + "<br><b>Тайлангийн нэр: </b>" + replaceDatabaseToDisplay(value.AUDITINTERNAL_REPORT_NAME) + "</td>";
                    valData += "<td><b>Зөвлөмжийн дугаар: </b>" + value.AUDITINTERNAL_REC_NO + "<br><b>Зөвлөмжийн нэр: </b>" + replaceDatabaseToDisplay(value.AUDITINTERNAL_REC_NAME) + "<br><b>Хугацаа: </b>" + value.AUDITINTERNAL_REC_SUCCESSDATE + "</td>";
                    valData += "<td>" + value.NO + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">" + value.BRLISTNAME.replace("none", "") + "</td>";
                    valData += "<td style=\"text-align:center; vertical-align:middle;\">";
                    if (implDisabled != "disabled") valData += "<a href=\"../pg/auditinternalTab3ImplModal.aspx?id=" + value.ID + "&yr=" + $('#pTab3SelectYear option:selected').val() + "&qrtr=" + $('#pTab3SelectQuarter option:selected').val() + "\" data-target=\"#pTab3ImplModal\" data-toggle=\"modal\" style=\"cursor:pointer\"><i class=\"glyphicon " + value.ISIMPL + " font-xl\"></i></a>";
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_pTab3Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab3Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab3Datatable) {responsiveHelper_pTab3Datatable = new ResponsiveDatatablesHelper($('#pTab3Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab3Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab3Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },{ \"sWidth\": \"300px\" },null, { \"sWidth\": \"30px\" }, null, { \"sWidth\": \"45px\" }, { \"sWidth\": \"52px\" }]});";
                valData += "<\/script>";
                $("#divBindTab3Table").html(valData);
                hideLoader('loaderTab3');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab3SelectYear").change(function () {
        dataBindTab3DataTableFirst();
    });
    $("#pTab3SelectQuarter, #pTab3SelectReport, #pTab3SelectGazar").change(function () {
        dataBindTab3DataTable();
    });
    //Tab4
    function dataBindTab4DataTableFirst() {
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditinternalReportListRecDDL",
            data: '{"yr": ""}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += '<option value="">Бүгд</option>';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.AUDITINTERNAL_REPORT_ID + '">' + value.NO + '. ' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                });
                $('#pTab4SelectReport').html(valData);
                $('#pTab4SelectReport option:eq(1)').prop('selected', true);
                $('#divBindTab4Table').html('');
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/AuditinternalGazarListForSelect2",
                    data: '{"selectedList":"", "yr":"' + $('#indexCurrentYear').html() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valOptGroup = '';
                        valData += '<option value="">Бүгд</option>';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            if (valOptGroup != value.BR_TYPE1) {
                                if (valOptGroup != "") valData += "</optgroup>";
                                valData += "<optgroup label=\"" + value.BR_TYPE1 + "\">";
                            }
                            valData += "<option" + value.ISSELECTED + " value=\"" + value.BR_ID + "\" title=\"" + value.BR_NAME + "\">" + value.DOMAIN_ORG + "</option>";
                            valOptGroup = value.BR_TYPE1;
                        });
                        $('#pTab4SelectGazar').html(valData);
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
    }
    function dataBindTab4DataTable() {
        var valData = '';
        var implDisabled = "disabled", evalDisabled = " disabled";
        showLoader('loaderTab4');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditinternalTab4Datatable",
            data: '{"yr":"' + $('#pTab4SelectYear option:selected').val() + '", "qrtr":"' + $('#pTab4SelectQuarter option:selected').val() + '", "reportid":"' + $('#pTab4SelectReport option:selected').val() + '", "gazar":"' + $('#pTab4SelectGazar option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (funcCheckRoles('1,4')) {
                    implDisabled = "";
                }
                if (funcCheckRoles('1,19')) {
                    implDisabled = ""; evalDisabled = "";
                }
                valData += "<table id=\"pTab4Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                valData += "<thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Дотоод аудитын тайлан</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Зөвлөмж</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Төл/ дугаар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Төлөвлөгөөний утга</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах газар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Биелэлт</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Өмнөх<br>үнэлгээ</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Үнэлгээ</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td><b>Тайлангийн дугаар: </b>" + value.AUDITINTERNAL_REPORT_NO + "<br><b>Тайлангийн нэр: </b>" + replaceDatabaseToDisplay(value.AUDITINTERNAL_REPORT_NAME) + "</td>";
                    valData += "<td><b>Зөвлөмжийн дугаар: </b>" + value.AUDITINTERNAL_REC_NO + "<br><b>Зөвлөмжийн нэр: </b>" + replaceDatabaseToDisplay(value.AUDITINTERNAL_REC_NAME) + "<br><b>Хугацаа: </b>" + value.AUDITINTERNAL_REC_SUCCESSDATE + "</td>";
                    valData += "<td>" + value.NO + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">" + value.BRLISTNAME.replace("none", "") + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.IMPL) + "</td>";
                    valData += "<td style=\"text-align:center;\">" + value.PREVEVAL + "</td>";
                    if (value.EVAL == "") valData += "<td><select" + evalDisabled + " class=\"bg-color-blueLight form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                    else {
                        if (value.EVAL == "0") valData += "<td><select" + evalDisabled + " class=\"bg-color-red form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "10") valData += "<td><select" + evalDisabled + " class=\"bg-color-red form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "30") valData += "<td><select" + evalDisabled + " class=\"bg-color-red form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "50") valData += "<td><select" + evalDisabled + " class=\"bg-color-orange form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "70") valData += "<td><select" + evalDisabled + " class=\"bg-color-orange form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "80") valData += "<td><select" + evalDisabled + " class=\"bg-color-greenLight form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "90") valData += "<td><select" + evalDisabled + " class=\"bg-color-greenLight form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "100") valData += "<td><select" + evalDisabled + " class=\"bg-color-greenLight form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">100 %</option></select></td>";
                    }
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_pTab4Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab4Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab4Datatable) {responsiveHelper_pTab4Datatable = new ResponsiveDatatablesHelper($('#pTab4Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab4Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab4Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },{ \"sWidth\": \"300px\" },null, { \"sWidth\": \"30px\" }, null, { \"sWidth\": \"45px\" }, { \"sWidth\": \"400px\" }, { \"sWidth\": \"50px\" }, { \"sWidth\": \"65px\" }]});";
                valData += "<\/script>";
                $("#divBindTab4Table").html(valData);
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
    $("#pTab4SelectYear").change(function () {
        dataBindTab4DataTableFirst();
    });
    $("#pTab4SelectQuarter, #pTab4SelectReport, #pTab4SelectGazar").change(function () {
        dataBindTab4DataTable();
    });

    function saveEval(me) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_AUDITINTERNAL_PLAN_IMPL WHERE AUDITINTERNAL_PLAN_ID=' + $(me).closest('tr').attr('data-id') + ' AND YR=' + $('#pTab4SelectYear option:selected').val() + ' AND QRTR=' + $('#pTab4SelectQuarter option:selected').val() + ' AND IMPL IS NOT NULL"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == '0') {
                    $(me).val('none');
                    alert('Биелэлт ороогүй тул үнэлэх боломжгүй байна!');
                }
                else {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                        data: '{"qry":"UPDATE TBL_AUDITINTERNAL_PLAN_IMPL SET EVAL=' + $(me).val().replace('none', 'null') + ', EVAL_UPDATED_STAFFID=' + '<%= Session["LM_UserID"] %>' + ', EVAL_UPDATED_DATE=sysdate WHERE AUDITINTERNAL_PLAN_ID=' + $(me).closest('tr').attr('data-id') + ' AND YR=' + $('#pTab4SelectYear option:selected').val() + ' AND QRTR=' + $('#pTab4SelectQuarter option:selected').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            smallBox('Үнэлгээ', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                            if ($(me).val() == "none") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-blueLight form-control no-padding'); $(me).css('border', 'none'); }
                            else if ($(me).val() == "0" || $(me).val() == "10" || $(me).val() == "30") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-red form-control no-padding'); $(me).css('border', 'none'); }
                            else if ($(me).val() == "50" || $(me).val() == "70") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-orange form-control no-padding'); $(me).css('border', 'none'); }
                            else if ($(me).val() == "80" || $(me).val() == "90" || $(me).val() == "100") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-greenLight form-control no-padding'); $(me).css('border', 'none'); }
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

    //Tab5t1
    function dataBindTab5t1DataTable() {
        var valData = "";
        var cnt = 0, cnt100 = 0, cnt90 = 0, cnt80 = 0, cnt70 = 0, cnt50 = 0, cnt30 = 0, cnt10 = 0, cnt0 = 0, cntnone = 0, cntgazarcnt = 0;
        var sumper = 0;
        showLoader('loaderTab5t1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditinternalTab5t1Datatable",
            data: '{"yr":"' + $('#pTab5t1SelectYear option:selected').val() + '", "qrtr":"' + $('#pTab5t1SelectQuarter option:selected').val() + '", "turul":"' + $('#pTab5t1SelectTurul option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\">";
                valData += "<thead style=\"background-color:C6D9F1;\">";
                valData += "<tr>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Газар</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Нийт</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Бүрэн<br>хэрэгжсэн</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Тухайн хугацаанд<br>хэрэгжүүлсэн</th>";
                valData += "<th colspan=\"9\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хэрэгжилтийн хувь</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Биелэлтийн хувь</th>";
                valData += "</tr>";
                if ($('#pTab5t1SelectTurul option:selected').val() == "1") {
                    valData += "<tr>";
                    valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">91-100</th>";
                    valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">81-90</th>";
                    valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">71-80</th>";
                    valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">51-70</th>";
                    valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">31-50</th>";
                    valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">11-30</th>";
                    valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">1-10</th>";
                    valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">0</th>";
                    valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">-</th>";
                    valData += "</tr>";
                }
                else if ($('#pTab5t1SelectTurul option:selected').val() == "2") {
                    valData += "<tr>";
                    valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">100</th>";
                    valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">90</th>";
                    valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">80</th>";
                    valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">70</th>";
                    valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">50</th>";
                    valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">30</th>";
                    valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">10</th>";
                    valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">0</th>";
                    valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">-</th>";
                    valData += "</tr>";
                }
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    cnt += parseInt(value.AUDITINTERNAL_RECOMMEND_CNT.replace("-", "0"));
                    cnt100 += parseInt(value.EVAL100.replace("-", "0"));
                    cnt90 += parseInt(value.EVAL90.replace("-", "0"));
                    cnt80 += parseInt(value.EVAL80.replace("-", "0"));
                    cnt70 += parseInt(value.EVAL70.replace("-", "0"));
                    cnt50 += parseInt(value.EVAL50.replace("-", "0"));
                    cnt30 += parseInt(value.EVAL30.replace("-", "0"));
                    cnt10 += parseInt(value.EVAL10.replace("-", "0"));
                    cnt0 += parseInt(value.EVAL0.replace("-", "0"));
                    cntnone += parseInt(value.EVALNONE.replace("-", "0"));
                    sumper += parseFloat(value.PERAVG);
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.BR_NAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.AUDITINTERNAL_RECOMMEND_CNT + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.EVAL100 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + (parseInt(value.EVAL90.replace("-", "0")) + parseInt(value.EVAL80.replace("-", "0")) + parseInt(value.EVAL70.replace("-", "0")) + parseInt(value.EVAL50.replace("-", "0")) + parseInt(value.EVAL30.replace("-", "0")) + parseInt(value.EVAL10.replace("-", "0")) + parseInt(value.EVAL0.replace("-", "0"))) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.EVAL100 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.EVAL90 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.EVAL80 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.EVAL70 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.EVAL50 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.EVAL30 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.EVAL10 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.EVAL0 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.EVALNONE + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.PERAVG + "</td>";
                    valData += "</tr>";
                    cntgazarcnt++;
                });
                valData += "</tbody>";
                valData += "<tfoot style=\"background-color:C6D9F1;\">";
                valData += "<tr>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">НИЙТ</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt100 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + (cnt90 + cnt80 + cnt70 + cnt50 + cnt30 + cnt10 + cnt0) + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt100 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt90 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt80 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt70 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt50 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt30 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt10 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt0 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cntnone + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + (parseFloat(sumper) / parseFloat(cntgazarcnt)).toFixed(1) + "</td>";
                valData += "</tr>";
                valData += "</tfoot>";
                valData += "</table>";
                $('#pTab5t1Year').html($('#pTab5t1SelectYear option:selected').val());
                $('#pTab5t1Quarter').html($('#pTab5t1SelectQuarter option:selected').val());
                $("#divBindTab5t1Table").html(valData);
                hideLoader('loaderTab5t1');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab5t1SelectYear, #pTab5t1SelectQuarter, #pTab5t1SelectTurul").change(function () {
        dataBindTab5t1DataTable();
    });

    //Tab5t2
    function dataBindTab5t2DataTableFirst() {
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditinternalReportListRecDDL",
            data: '{"yr": ""}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += '<option value="">Бүгд</option>';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.AUDITINTERNAL_REPORT_ID + '">' + value.NO + '. ' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                });
                $('#pTab5t2SelectReport').html(valData);
                $('#divBindTab5t2Table').html('');
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/AuditinternalGazarListForSelect2",
                    data: '{"selectedList":"", "yr":"' + $('#indexCurrentYear').html() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valOptGroup = '';
                        valData += '<option value="">Бүгд</option>';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            if (valOptGroup != value.BR_TYPE1) {
                                if (valOptGroup != "") valData += "</optgroup>";
                                valData += "<optgroup label=\"" + value.BR_TYPE1 + "\">";
                            }
                            valData += "<option" + value.ISSELECTED + " value=\"" + value.BR_ID + "\" title=\"" + value.BR_NAME + "\">" + value.DOMAIN_ORG + "</option>";
                            valOptGroup = value.BR_TYPE1;
                        });
                        $('#pTab5t2SelectGazar').html(valData);
                        dataBindTab5t2DataTable();
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
    function dataBindTab5t2DataTable() {
        var valData = '';
        showLoader('loaderTab5t2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditinternalTab5t2Datatable",
            data: '{"yr":"' + $('#pTab5t2SelectYear option:selected').val() + '", "qrtr":"' + $('#pTab5t2SelectQuarter option:selected').val() + '", "reportid":"' + $('#pTab5t2SelectReport option:selected').val() + '", "gazar":"' + $('#pTab5t2SelectGazar option:selected').val() + '", "isimpl":"' + $('#pTab5t2SelectIsImpl option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\">";
                valData += "<thead style=\"background-color:C6D9F1;\">";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:40px;\">#</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:230px;\">Дотоод аудитын тайлан</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Зөвлөмж</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:85px;\">Хугацаа</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хариуцах газар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Төлөвлөгөө</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:400px;\">Биелэлт</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Үнэлгээ</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.ROWNO + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\"><b>Тайлангийн дугаар: </b>" + replaceDatabaseToDisplay(value.AUDITINTERNAL_REPORT_NO) + "<br><b>Тайлангийн нэр: </b>" + replaceDatabaseToDisplay(value.AUDITINTERNAL_REPORT_NAME) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\"><b>Зөвлөмжийн дугаар: </b>" + replaceDatabaseToDisplay(value.AUDITINTERNAL_RECOMMEND_NO) + "<br><b>Зөвлөмжийн нэр: </b>" + replaceDatabaseToDisplay(value.AUDITINTERNAL_RECOMMEND_NAME) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.DT + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">";
                    valData += value.BRLISTNAME.replace("none", "");
                    valData += "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\"><b>Төл/дугаар: </b>" + replaceDatabaseToDisplay(value.NO) + "<br><b>Төл/нэр: </b>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + replaceDatabaseToDisplay(value.IMPL) + "</td>";
                    if (value.EVAL == "") valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">-</td>";
                    else {
                        valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.EVAL + "</td>";
                    }
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                $('#pTab5t2Year').html($('#pTab5t2SelectYear option:selected').val());
                $('#pTab5t2Quarter').html($('#pTab5t2SelectQuarter option:selected').val());
                $("#divBindTab5t2Table").html(valData);
                hideLoader('loaderTab5t2');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab5t2SelectYear").change(function () {
        dataBindTab5t2DataTableFirst();
    });
    $("#pTab5t2SelectQuarter, #pTab5t2SelectGazar, #pTab5t2SelectReport, #pTab5t2SelectIsImpl").change(function () {
        dataBindTab5t2DataTable();
    });
    //Tab5t3
    function dataBindTab5t3DataTableFirst() {
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditinternalReportListRecDDL",
            data: '{"yr": ""}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += '<option value="">Бүгд</option>';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.AUDITINTERNAL_REPORT_ID + '">' + value.NO + '. ' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                });
                $('#pTab5t3SelectReport').html(valData);
                $('#divBindTab5t3Table').html('');
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/AuditinternalGazarListForSelect2",
                    data: '{"selectedList":"", "yr":"' + $('#indexCurrentYear').html() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valOptGroup = '';
                        valData += '<option value="">Бүгд</option>';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            if (valOptGroup != value.BR_TYPE1) {
                                if (valOptGroup != "") valData += "</optgroup>";
                                valData += "<optgroup label=\"" + value.BR_TYPE1 + "\">";
                            }
                            valData += "<option" + value.ISSELECTED + " value=\"" + value.BR_ID + "\" title=\"" + value.BR_NAME + "\">" + value.DOMAIN_ORG + "</option>";
                            valOptGroup = value.BR_TYPE1;
                        });
                        $('#pTab5t3SelectGazar').html(valData);
                        dataBindTab5t3DataTable();
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
    function dataBindTab5t3DataTable() {
        var valData = '';
        var strReportId = "";
        var intReportCntr = 1;
        showLoader('loaderTab5t3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditinternalTab5t3Datatable",
            data: '{"yr":"' + $('#pTab5t3SelectYear option:selected').val() + '", "qrtr":"' + $('#pTab5t3SelectQuarter option:selected').val() + '", "reportid":"' + $('#pTab5t3SelectReport option:selected').val() + '", "gazar":"' + $('#pTab5t3SelectGazar option:selected').val() + '", "isimpl":"' + $('#pTab5t3SelectIsImpl option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (strReportId != value.AUDITINTERNAL_REPORT_ID) {
                        if (strReportId != "") {
                            valData += "</tbody></table>";
                        }
                        valData += "<br><br><p style=\"text-align:center; font-size:10pt;\"><strong>" + intReportCntr + ". " + replaceDatabaseToDisplay(value.AUDITINTERNAL_REPORT_NAME) + "<br>(" + replaceDatabaseToDisplay(value.AUDITINTERNAL_REPORT_NO) + ")</strong></p>";
                        valData += "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%; font-size:9pt;\">";
                        valData += "<thead style=\"background-color:C6D9F1;\">";
                        valData += "<tr>";
                        valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:40px;\">№</th>";
                        valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:45%;\">Өгсөн зөвлөмж</th>";
                        valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:45%;\">Биелэлт</th>";
                        valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Үнэлгээ</th>";
                        valData += "</tr>";
                        valData += "</thead>";
                        valData += "<tbody>";
                        intReportCntr++;

                    }
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + replaceDatabaseToDisplay(value.NO) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + replaceDatabaseToDisplay(value.IMPL) + "</td>";
                    if (value.EVAL == "") valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">-</td>";
                    else {
                        valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.EVAL + "</td>";
                    }
                    valData += "</tr>";
                    strReportId = value.AUDITINTERNAL_REPORT_ID;
                });
                valData += "</tbody>";
                valData += "</table>";
                $('#pTab5t3Year').html($('#pTab5t3SelectYear option:selected').val());
                $('#pTab5t3Quarter').html($('#pTab5t3SelectQuarter option:selected').val());
                $("#divBindTab5t3Table").html(valData);
                hideLoader('loaderTab5t3');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab5t3SelectYear").change(function () {
        dataBindTab5t3DataTableFirst();
    });
    $("#pTab5t3SelectQuarter, #pTab5t3SelectGazar, #pTab5t3SelectReport, #pTab5t3SelectIsImpl").change(function () {
        dataBindTab5t3DataTable();
    });
</script>

