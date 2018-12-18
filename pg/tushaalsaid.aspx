<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tushaalsaid.aspx.cs" Inherits="LMWebApp.pg.tushaalsaid" %>
<style>
    .nav-tabs > li {
        font-weight:bold;
    }
    .nav-tabs > li.active {
        font-style:italic;
    }
</style>
<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
    <h1 class="page-title txt-color-blueDark">
    <i class="fa-fw fa fa-home"></i>
    <span>> САЙДЫН ТУШААЛ</span>
    </h1>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <ul class="nav nav-tabs bordered">
                <li id="pTab1Li" runat="server" class="active" onclick="pDatabindTabs(this)" style="width:175px; text-align:center;">
                    <a data-toggle="tab" href="#pTab1" style=" color: #826430; background-color: #efe1b3;">
                        <i class="fa fa-fw fa-lg fa-list-ul"></i>
                        Сайдын тушаал
                    </a>
                </li>
                <li id="pTab3Li" runat="server" onclick="pDatabindTabs(this)" style="width:175px; text-align:center;">
                    <a data-toggle="tab" href="#pTab3" style="color: #356635; background-color: #cde0c4;">
                        <i class="fa fa-fw fa-lg fa-edit"></i>
                        Биелэлт 
                    </a>
                </li>
                <li id="pTab4Li" runat="server" onclick="pDatabindTabs(this)" style="width:175px; text-align:center;">
                    <a data-toggle="tab" href="#pTab4" style="color: #305d8c; background-color: #d6dde7;">
                        <i class="fa fa-fw fa-lg fa-file-text "></i>
                        Тайлан 
                    </a>
                </li>
                <li id="pTab5Li" runat="server" onclick="pDatabindTabs(this)" style="width:175px; text-align:center;">
                    <a data-toggle="tab" href="#pTab5" style="background-color: #3276b1; color: #FFF;">
                        <i class="glyphicon glyphicon-stats"></i>
                        Үнэлгээ
                    </a>
                </li>
            </ul>
            <div id="pTabContent" class="tab-content">
                <div id="pTab1" runat="server" class="tab-pane active">
                    <ul class="nav nav-tabs bordered">
                        <li id="pTab1t1Li" runat="server" onclick="pDatabindTabs(this)" class="active">
                            <a data-toggle="tab" href="#pTab1t1"><i class="fa fa-fw fa-lg fa-table"></i>Тушаал</a>
                        </li>
                        <li id="pTab1t2Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab1t2"><i class="fa fa-fw fa-lg fa-table"></i>Төлөвлөгөө</a>
                        </li>
                        <li id="pTab1t3Li" runat="server" onclick="pDatabindTabs(this)" class="pull-right">
                            <a data-toggle="tab" href="#pTab1t3"><i class="fa fa-fw fa-lg fa-wrench"></i>Тушаалын төрөл</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="pTab1t1" class="tab-pane active">
                            <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"> 
                                        <i class="fa fa-table"></i> 
                                    </span>
                                    <h2> Сайдын тушаал </h2>
                                    <div class="widget-toolbar"> 
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab1SelectYear" name="pTab1SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                        </div> 
                                    </div>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div class="Colvis TableTools" style="width:80px;right:120px; top:0px; z-index:5; margin-top:5px;">
                                        <select id="pTab1SelectBolovsruulsanGazar" name="pTab1SelectBolovsruulsanGazar" class="form-control" style="padding:1px"><option value="">Бүгд</option></select>
                                    </div>
                                    <div class="Colvis TableTools" style="right:210px; top:0px; z-index:5; margin-top:7px; line-height:13px; text-align: right;">
                                        Боловсруулсан<br />газар:
                                    </div>
                                    <div class="Colvis TableTools" style="width:80px;right:315px; top:0px; z-index:5; margin-top:5px;">
                                        <select id="pTab1SelectHariutssanGazar" name="pTab1SelectHariutssanGazar" class="form-control" style="padding:1px"><option value="">Бүгд</option></select>
                                    </div>
                                    <div class="Colvis TableTools" style="right:405px; top:0px; z-index:5; margin-top:7px; line-height:13px; text-align: right;">
                                        Хариуцсан<br />газар:
                                    </div>
                                    <div class="Colvis TableTools" style="width:200px;right:480px; top:0px; z-index:5; margin-top:5px;">
                                        <select id="pTab1SelectType" name="pTab1SelectType" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select>
                                    </div>
                                    <div class="Colvis TableTools" style="right:690px; top:0px; z-index:5; margin-top:7px; line-height:13px; text-align: right;">
                                        Тушаалын<br />төрөл:
                                    </div>
                                    <div id="pTab1AddBtnDiv" runat="server" class="Colvis TableTools" style="width:62px; right:765px; top:8px; z-index:5; margin-top:1px;">
                                        <button id="pTab1AddBtn" class="btn btn-primary btn-xs" type="button" data-target="#pTab1Modal" data-toggle="modal" onclick="showAddEditTab1(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
                                    <div id="loaderTab1" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div id="divBindTab1Table" class="widget-body no-padding"></div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab1t2" class="tab-pane">
                            <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"> 
                                        <i class="fa fa-table"></i> 
                                    </span>
                                    <h2> Сайдын хяналтанд авсан заалтын төлөвлөгөө </h2>
                                    <div class="widget-toolbar"> 
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab2SelectYear" name="pTab2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                        </div> 
                                    </div>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div class="Colvis TableTools" style="width:80px;right:120px; top:0px; z-index:5; margin-top:5px;">
                                        <select id="pTab2SelectBolovsruulsanGazar" name="pTab2SelectBolovsruulsanGazar" class="form-control" style="padding:1px"><option value="">Бүгд</option></select>
                                    </div>
                                    <div class="Colvis TableTools" style="right:210px; top:0px; z-index:5; margin-top:7px; line-height:13px; text-align: right;">
                                        Боловсруулсан<br />газар:
                                    </div>
                                    <div class="Colvis TableTools" style="width:80px;right:315px; top:0px; z-index:5; margin-top:5px;">
                                        <select id="pTab2SelectHariutssanGazar" name="pTab2SelectHariutssanGazar" class="form-control" style="padding:1px"><option value="">Бүгд</option></select>
                                    </div>
                                    <div class="Colvis TableTools" style="right:405px; top:0px; z-index:5; margin-top:7px; line-height:13px; text-align: right;">
                                        Хариуцсан<br />газар:
                                    </div>
                                    <div class="Colvis TableTools" style="width:200px;right:480px; top:0px; z-index:5; margin-top:5px;">
                                        <select id="pTab2SelectType" name="pTab2SelectType" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select>
                                    </div>
                                    <div class="Colvis TableTools" style="right:690px; top:0px; z-index:5; margin-top:7px; line-height:13px; text-align: right;">
                                        Тушаалын<br />төрөл:
                                    </div>
                                    <div class="Colvis TableTools" style="width:55px;right:765px; top:0px; z-index:5; margin-top:5px;">
                                        <select id="pTab2SelectIsClosed" name="pTab2SelectIsClosed" class="form-control" style="padding:1px"><option value="">Бүгд</option><option value="0">On</option><option value="1">Off</option></select>
                                    </div>
                                    <div class="Colvis TableTools" style="right:825px; top:0px; z-index:5; margin-top:7px; line-height:13px; text-align: right;">
                                        Идэвхтэй<br />эсэх:
                                    </div>
                                    <div id="pTab2AddBtnDiv" runat="server" class="Colvis TableTools" style="width:60px; right:900px; top:8px; z-index:5; margin-top:1px;">
                                        <button id="pTab2AddBtn" class="btn btn-primary btn-xs" type="button" data-target="#pTab2Modal" data-toggle="modal" onclick="showAddEditTab2(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
                                    <div id="loaderTab2" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div id="divBindTab2Table" class="widget-body no-padding"></div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab1t3" class="tab-pane">
                            <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"> 
                                        <i class="fa fa-table"></i> 
                                    </span>
                                    <h2> Тушаалын төрөл </h2>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div class="Colvis TableTools" style="width:62px; right:120px; top:8px; z-index:5; margin-top:1px;">
                                        <button id="pTab1t3AddBtn" runat="server" class="btn btn-primary btn-xs" type="button" data-target="#pTab1t3Modal" data-toggle="modal" onclick="showAddEditTab1t3(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
                                    <div id="loaderTab1t3" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div id="divBindTab1t3Table" class="widget-body no-padding"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="pTab3" runat="server" class="tab-pane">
                    <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> 
                                <i class="fa fa-table"></i> 
                            </span>
                            <h2> Сайдын хяналтанд авсан заалтын төлөвлөгөөний биелэлт </h2>
                            <div class="widget-toolbar"> 
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab3SelectYear" name="pTab3SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
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
                            <div class="Colvis TableTools" style="width:80px;right:120px; top:0px; z-index:5; margin-top:5px;">
                                <select id="pTab3SelectBolovsruulsanGazar" name="pTab3SelectBolovsruulsanGazar" class="form-control" style="padding:1px"><option value="">Бүгд</option></select>
                            </div>
                            <div class="Colvis TableTools" style="right:210px; top:0px; z-index:5; margin-top:7px; line-height:13px; text-align: right;">
                                Боловсруулсан<br />газар:
                            </div>
                            <div class="Colvis TableTools" style="width:80px;right:315px; top:0px; z-index:5; margin-top:5px;">
                                <select id="pTab3SelectHariutssanGazar" name="pTab3SelectHariutssanGazar" class="form-control" style="padding:1px"><option value="">Бүгд</option></select>
                            </div>
                            <div class="Colvis TableTools" style="right:405px; top:0px; z-index:5; margin-top:7px; line-height:13px; text-align: right;">
                                Хариуцсан<br />газар:
                            </div>
                            <div class="Colvis TableTools" style="width:200px;right:480px; top:0px; z-index:5; margin-top:5px;">
                                <select id="pTab3SelectType" name="pTab3SelectType" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select>
                            </div>
                            <div class="Colvis TableTools" style="right:690px; top:0px; z-index:5; margin-top:7px; line-height:13px; text-align: right;">
                                Тушаалын<br />төрөл:
                            </div>
                            <div id="loaderTab3" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="divBindTab3Table" class="widget-body no-padding"></div>
                        </div>
                    </div>
                </div>
                <div id="pTab4" runat="server" class="tab-pane">
                    <ul class="nav nav-tabs bordered">
                        <li id="pTab4t1Li" runat="server" onclick="pDatabindTabs(this)" class="active">
                            <a data-toggle="tab" href="#pTab4t1"><i class="fa fa-fw fa-lg fa-file-text"></i>Дэлгэрэнгүй тайлан</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="pTab4t1" class="tab-pane active">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab4t1SelectYear" runat="server" class="form-control" style="padding:1px">
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
                                        <div style="width:85px; float:left; margin-right:10px;">
                                            <select id="pTab4t1SelectQuarter" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">Улирал 1</option>
                                                <option value="2">Улирал 2</option>
                                                <option value="3">Улирал 3</option>
                                                <option value="4">Улирал 4</option>
                                            </select>
                                        </div>
                                        <div style="width:67px; float:left; margin-right:10px; line-height: 15px; text-align: right;">Хариуцсан газар:</div>
                                        <div style="width:80px; float:left; margin-right:10px;">
                                            <select id="pTab4t1SelectHariutssanGazar" runat="server" class="form-control" style="padding:1px">
                                                <option value="">Бүгд</option>
                                            </select>
                                        </div>
                                        <div style="width:95px; float:left; margin-right:10px; line-height: 15px; text-align: right;">Боловсруулсан газар:</div>
                                        <div style="width:80px; float:left; margin-right:10px;">
                                            <select id="pTab4t1SelectBolovsruulsanGazar" runat="server" class="form-control" style="padding:1px">
                                                <option value="">Бүгд</option>
                                            </select>
                                        </div>
                                        <div style="width:67px; float:left; margin-right:10px; line-height: 15px; text-align: right;">Тушаалын төрөл:</div>
                                        <div style="width:200px; float:left; margin-right:10px;">
                                            <select id="pTab4t1SelectType" runat="server" class="form-control" style="padding:1px">
                                                <option value="">Бүгд</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab4t1', 'ТНБДТушаал-ДэлгэрэнгүйТайлан')">
                                                <i class="fa fa-file-word-o"></i>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab4t1')">
                                                <i class="fa fa-print"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="loaderTab4t1" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divpTab4t1" class="reports" style="margin:0 10px 10px 10px;">
                                    <div style="text-align: center; font-weight: bold; font: 11pt arial, sans-serif; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                        САНГИЙН САЙДЫН ТУШААЛЫН БИЕЛЭЛТ
                                    </div>
                                    <div style="text-align: right; font-weight: normal; font: 11pt arial, sans-serif; padding-bottom: 5px; text-transform: lowercase; line-height: 20px; font-style:italic;">
                                        (<label id="pTab4t1YearHalfYear" runat="server">gundee test</label>)
                                    </div>
                                    <div id="divBindTab4t1Table"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="pTab5" runat="server" class="tab-pane">
                    <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> 
                                <i class="fa fa-table"></i> 
                            </span>
                            <h2> Сайдын хяналтанд авсан заалтын төлөвлөгөөний үнэлгээ </h2>
                            <div class="widget-toolbar"> 
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab5SelectYear" name="pTab5SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab5SelectQuarter" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">Улирал 1</option><option value="2">Улирал 2</option><option value="3">Улирал 3</option><option value="4">Улирал 4</option></select>
                                </div> 
                            </div>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div class="Colvis TableTools" style="width:80px;right:120px; top:0px; z-index:5; margin-top:5px;">
                                <select id="pTab5SelectBolovsruulsanGazar" name="pTab5SelectBolovsruulsanGazar" class="form-control" style="padding:1px"><option value="">Бүгд</option></select>
                            </div>
                            <div class="Colvis TableTools" style="right:210px; top:0px; z-index:5; margin-top:7px; line-height:13px; text-align: right;">
                                Боловсруулсан<br />газар:
                            </div>
                            <div class="Colvis TableTools" style="width:80px;right:315px; top:0px; z-index:5; margin-top:5px;">
                                <select id="pTab5SelectHariutssanGazar" name="pTab5SelectHariutssanGazar" class="form-control" style="padding:1px"><option value="">Бүгд</option></select>
                            </div>
                            <div class="Colvis TableTools" style="right:405px; top:0px; z-index:5; margin-top:7px; line-height:13px; text-align: right;">
                                Хариуцсан<br />газар:
                            </div>
                            <div class="Colvis TableTools" style="width:200px;right:480px; top:0px; z-index:5; margin-top:5px;">
                                <select id="pTab5SelectType" name="pTab5SelectType" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select>
                            </div>
                            <div class="Colvis TableTools" style="right:690px; top:0px; z-index:5; margin-top:7px; line-height:13px; text-align: right;">
                                Тушаалын<br />төрөл:
                            </div>
                            <div id="loaderTab5" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="divBindTab5Table" class="widget-body no-padding"></div>
                        </div>
                    </div>
                </div>
            </div>
        </article>
    </div>
</section>
<div id="pTab1Modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="pTab1ModalForm">
                <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			        <h4 class="modal-title">Сайдын тушаал&nbsp;<span id="pTab1ModalHeaderLabel"></span></h4>
		        </div>
		        <div class="modal-body">
                    <div id="pTab1ID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    Он: <span id="pTab1ModalSpanYear"></span>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Тушаалын төрөл</label>
									<select id="pTab1ModalSelectType" name="pTab1ModalSelectType" runat="server" class="form-control" style="padding: 5px;">
								        <option value="">- Тушаалын төрөл сонго -</option>
							        </select>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-6">
                                    <label class="control-label">*Дугаар</label>
									<input id="pTab1ModalInputNo" name="pTab1ModalInputNo" type="text" class="form-control" placeholder="Дугаар" />
                                </div>
                                <div class="col-md-6">
                                    <label class="control-label">*Батлагдсан огноо</label>
									<input id="pTab1ModalInputSuccessdate" name="pTab1ModalInputSuccessdate" type="text" class="form-control" placeholder="Батлагдсан огноо" />
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Тушаалын нэр</label>
									<%--<input id="pTab1ModalInputName" name="pTab1ModalInputName" type="text" class="form-control" placeholder="Тушаалын нэр" />--%>
									<textarea id="pTab1ModalInputName" name="pTab1ModalInputName" class="form-control" placeholder="Тушаалын нэр" rows="2" maxlength="1000"></textarea>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Боловсруулсан газар</label>
									<div id="pTab1ModalDivBolovsruulsanGazar"></div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Боловсруулсан ажилтан</label>
									<div id="pTab1ModalDivBolovsruulsanStaff"></div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Хариуцсан газар</label>
									<div id="pTab1ModalDivHariutssanGazar"></div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Хариуцсан ажилтан</label>
									<div id="pTab1ModalDivHariutssanStaff"></div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-5">
                                    <label class="control-label">Тайлбар</label>
									<textarea id="pTab1ModalInputDescription" name="pTab1ModalInputDescription" class="form-control" placeholder="Тайлбар" rows="3" maxlength="1000"></textarea>
                                </div>
                                <div class="col-md-7">
                                    <div class="row">
                                        <div class="form-group" style="margin:10px 0 0 0; display:block; overflow:hidden;">
                                            <div class="col-md-4" style="font-size:13px;">
                                                *Хавсралт файл:
                                            </div>
                                            <div class="col-md-8" style="font-style:italic;padding-left: 0;">
                                                <a id="pTab1ModalAttachBtn" class="btn btn-link btn-xs" href="javascript:void(0);" style="padding:0px; border:none;" download="">Файл хавсаргаагүй байна...</a>
                                            </div>
                                        </div>
                                        <div class="form-group" style="margin:0; display:block; overflow:hidden;">
                                            <div class="col-md-4">
                                                <a id="pTab1ModalAttachDelete" class="btn btn-link btn-xs" href="javascript:void(0);"><i class="fa fa-trash-o"></i> файл устгах</a>
                                            </div>
                                            <div class="col-md-8" style="padding-left: 0;">
                                                <input id="pTab1ModalAttachInput" type="file" class="btn btn-default">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="pTab1ZaaltModalFieldset" class="hide">
                        <div class="row">
                            <div class="col-md-12">
                                <label class="control-label">*ЗААЛТЫН ТӨЛӨВЛӨГӨӨ /<small><em>Шинээр оруулж буй тушаалд заалтын төлөвлөгөө заавал оруулна уу!</em></small>/</label>
                                <button type="button" class="btn btn-warning btn-xs pull-right" data-target="#pTab1ZaaltModal" data-toggle="modal" onclick="showAddTab1ZaaltModal(this);"><i class="fa fa-plus"></i> Төлөвлөгөө нэмэх</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <table class="table table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th style="width: 30px;">#</th>
                                            <th>Төлөвлөгөө</th>
                                            <th style="width: 105px;">Хэрэгжүүлэх эцсийн хугацаа</th>
                                            <th>Боловсруулсан газар</th>
                                            <th>Хариуцсан газар</th>
                                            <th style="width: 45px;">&nbsp;</th>
                                        </tr>
                                    </thead>
                                    <tbody id="pTab1ModalZaaltTbody">
                                        
                                    </tbody>
                                </table>
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
<div id="pTab1ZaaltModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="pTab1ZaaltModalForm">
                <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			        <h4 class="modal-title">Хяналтанд авсан заалтын төлөвлөгөө нэмэх</h4>
		        </div>
		        <div class="modal-body">
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Төлөвлөгөө</label>
                                    <textarea id="pTab1ZaaltModalInputName" name="pTab1ZaaltModalInputName" class="form-control" placeholder="Төлөвлөгөө" rows="3"></textarea>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">Хэрэгжүүлэх эцсийн хугацаа</label>
									<input id="pTab1ZaaltModalInputEnddate" name="pTab1ZaaltModalInputEnddate" type="text" class="form-control" placeholder="Хэрэгжүүлэх эцсийн хугацаа" />
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">Боловсруулсан газар</label>
									<div id="pTab1ZaaltModalDivBolovsruulsanGazar"></div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Хариуцсан газар</label>
									<div id="pTab1ZaaltModalDivHariutssanGazar"></div>
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
<div id="pTab1SendMailModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
			    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			    <h4 class="modal-title">Сайдын тушаал явуулах</h4>
		    </div>
		    <div class="modal-body">
                <div id="pTab1SendMailModalID" class="hide"></div>
                <fieldset>
					<div class="form-group">
                        <div class="row">
                            <div class="col-md-12">
                                <label class="control-label">Хариуцсан ажилан</label>
								<div id="pTab1SendMailModalDivHariutssanStaff"></div>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div class="modal-footer">
			    <button type="button" class="btn btn-default" data-dismiss="modal">Болих</button>
			    <button id="pTab1SendMailModalSave" type="button" class="btn btn-primary"><i class="fa fa-send"></i> Явуулах</button>
		    </div>
        </div>
    </div>
</div>
<div id="pTab2Modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="pTab2ModalForm">
                <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			        <h4 class="modal-title">Хяналтанд авсан заалтын төлөвлөгөө&nbsp;<span id="pTab2ModalHeaderLabel"></span></h4>
		        </div>
		        <div class="modal-body">
                    <div id="pTab2ID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    Он: <span id="pTab2ModalSpanYear"></span>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Тушаалын төрөл</label>
									<select id="pTab2ModalSelectType" name="pTab2ModalSelectType" runat="server" class="form-control" style="padding: 5px;">
								        <option value="">- Тушаалын төрөл сонго -</option>
							        </select>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Тушаал</label>
									<select id="pTab2ModalSelectTushaal" name="pTab2ModalSelectTushaal" runat="server" class="form-control" style="padding: 5px;" disabled>
								        <option value="">- Тушаал сонго -</option>
							        </select>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Төлөвлөгөө</label>
                                    <textarea id="pTab2ModalInputName" name="pTab2ModalInputName" class="form-control" placeholder="Төлөвлөгөө" rows="3"></textarea>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">Хэрэгжүүлэх эцсийн хугацаа</label>
									<input id="pTab2ModalInputEnddate" name="pTab2ModalInputEnddate" type="text" class="form-control" placeholder="Хэрэгжүүлэх эцсийн хугацаа" />
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">Боловсруулсан газар</label>
									<div id="pTab2ModalDivBolovsruulsanGazar"></div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Хариуцсан газар</label>
									<div id="pTab2ModalDivHariutssanGazar"></div>
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
<div id="pTab1t3Modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="pTab1t3ModalForm">
                <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			        <h4 class="modal-title">Тушаалын төрөл&nbsp;<span id="pTab1t3ModalHeaderLabel"></span></h4>
		        </div>
		        <div class="modal-body">
                    <div id="pTab1t3ID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Тушаалын төрөл</label>
                                    <textarea id="pTab1t3ModalInputName" name="pTab1t3ModalInputName" class="form-control" placeholder="Тушаалын төрөл" rows="2"></textarea>
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
<div id="tushaalsaidShowModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> × </button>
                <h4 class="modal-title" >ТНБД-ын тушаалын мэдээлэл</h4>
            </div>
            <div class="modal-body">
                <div id="tushaalsaidShowModalIsShow" runat="server" class="form-group hide"></div>
                <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                    <label class="col-md-2 control-label">Тушаалын төрөл</label>
                    <div id="tushaalsaidShowModalType" runat="server" class="col-md-10">
                                    
                    </div>
                </div> 
                <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                    <label class="col-md-2 control-label">Тушаалын нэр</label>
                    <div id="tushaalsaidShowModalTushaalName" runat="server" class="col-md-10">
                                    
                    </div>
                </div> 
                <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                    <label class="col-md-2 control-label">Батлагдсан огноо</label>
                    <div id="tushaalsaidShowModalSuccessDate" runat="server" class="col-sm-4">
                                                                           
                    </div>
                </div>
                <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                    <label class="col-md-2 control-label">Дугаар</label>
                    <div id="tushaalsaidShowModalNo" runat="server" class="col-md-10">
                                    
                    </div>
                </div>
                <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                    <label class="col-md-2 control-label">Боловсруулсан газар</label>
                    <div id="tushaalsaidShowModalBolovsruulsanGazar" runat="server" class="col-sm-10">
                                    
                    </div>
                </div>
                <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                    <label class="col-md-2 control-label">Боловсруулсан ажилтан</label>
                    <div id="tushaalsaidShowModalBolovsruulsanStaff" runat="server" class="col-sm-10">
                                    
                    </div>
                </div> 
                <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                    <label class="col-md-2 control-label">Хариуцах газар</label>
                    <div id="tushaalsaidShowModalHariutsahGazar" runat="server" class="col-sm-10">
                                    
                    </div>
                </div> 
                <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                    <label class="col-md-2 control-label">Хариуцах ажилтан</label>
                    <div id="tushaalsaidShowModalHariutsahStaff" runat="server" class="col-sm-10">
                                    
                    </div>
                </div> 
                <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                    <label class="col-md-2 control-label">Төлөвлөгөө</label>
                    <div id="tushaalsaidShowModalZaalt" runat="server" class="col-sm-10">
                                    
                    </div>
                </div>
                <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                    <label class="col-md-2 control-label">Хавсралт файл</label>
                    <div class="col-sm-10">
                        <a id="tushaalsaidShowModalAttach" runat="server" class="btn btn-link btn-xs" style="padding:0px; border:none;" href="#" download></a>      
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <div id="tushaalsaidShowModalModifyDescription" runat="server" class="form-group" style="display:block; overflow:hidden; margin: 0px;">
                    
                </div>
            </div>
        </div>
    </div>
</div>
<div id="pTab3Modal" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false" style="display:none;z-index:10009;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            
        </div>
    </div>
</div>
<div id="pTab1AttachShowModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            
        </div>
    </div>
</div>
<div id="pTab1ModalInfo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">  
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			
		</div>  
	</div>  
</div>
<div id="pTab2ModalInfo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">  
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			
		</div>  
	</div>  
</div>
<script type="text/javascript">
    pageSetUp();
    var globalAjaxVar = null;
    var pagefunction = function () {
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TushaalTypeListForDDL",
            data: '{"which":"2"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.ID + '" title="' + replaceDatabaseToDisplay(value.NAME) + '">' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                });
                $("#pTab1SelectType").html('<option value="">Бүгд</option>' + valData);
                $("#pTab2SelectType").html('<option value="">Бүгд</option>' + valData);
                $("#pTab3SelectType").html('<option value="">Бүгд</option>' + valData);
                $("#pTab4t1SelectType").html('<option value="">Бүгд</option>' + valData);
                $("#pTab5SelectType").html('<option value="">Бүгд</option>' + valData);
                $("#pTab1ModalSelectType").html('<option value="">- Сонго -</option>' + valData);
                $("#pTab2ModalSelectType").html('<option value="">- Сонго -</option>' + valData);
                if ($('#pTab1Li').attr('class') == 'active') {
                    pTab1SetFirstControls();
                }
                else if ($('#pTab3Li').attr('class') == 'active') {
                    pTab3SetFirstControls();
                }
                else if ($('#pTab4Li').attr('class') == 'active') {
                    pTab4t1SetFirstControls();
                }
                else if ($('#pTab5Li').attr('class') == 'active') {
                    pTab5SetFirstControls();
                }
                if ($('#tushaalsaidShowModalIsShow').text() == 'true') $('#tushaalsaidShowModal').modal('show');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
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
    function pDatabindTabs(el) {
        if ($.trim($(el).attr('id')) == 'pTab1Li') {
            if ($.trim($('#divBindTab1Table').html()) == "") {
                pTab1SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab1t1Li') {
            if ($.trim($('#divBindTab1Table').html()) == "") {
                pTab1SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab1t2Li') {
            if ($.trim($('#divBindTab2Table').html()) == "") {
                pTab2SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab1t3Li') {
            if ($.trim($('#divBindTab1t3Table').html()) == "") {
                dataBindTab1t3Datatable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab3Li') {
            if ($.trim($('#divBindTab3Table').html()) == "") {
                pTab3SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab4Li') {
            if ($.trim($('#divBindTab4t1Table').html()) == "") {
                pTab4t1SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab4t1Li') {
            if ($.trim($('#divBindTab4t1Table').html()) == "") {
                pTab4t1SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab5Li') {
            if ($.trim($('#divBindTab5Table').html()) == "") {
                pTab5SetFirstControls();
            }
        }
    }
    //tab1
    function pTab1SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr":"' + $('#pTab1SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#pTab1SelectHariutssanGazar").html('<option value="">Бүгд</option>' + valData);
                $("#pTab1SelectBolovsruulsanGazar").html('<option value="">Бүгд</option>' + valData);
                $('#pTab1SelectHariutssanGazar').val($('#indexUserGazarId').html());
                dataBindTab1Datatable();
            },
           failure: function (response) {
               alert('FAILURE: ' + response.d);
           },
           error: function (xhr, status, error) {
               window.location = '../#pg/error500.aspx';
           }
       });
    }
    function dataBindTab1Datatable() {
        var valData = '';
        var valIsEdit = '0';
        var isDisabled = "";
        showLoader('loaderTab1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TushaalsaidTab1Datatable",
            data: '{"yr":"' + $('#pTab1SelectYear option:selected').val() + '", "type":"' + $('#pTab1SelectType option:selected').val() + '", "hariutssangazar":"' + $('#pTab1SelectHariutssanGazar option:selected').val() + '", "bolovsruulsangazar":"' + $('#pTab1SelectBolovsruulsanGazar option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (funcCheckRoles('1,28')) {
                    valIsEdit = '1';
                }
                else isDisabled = " disabled";
                valData = "<table id=\"pTab1Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Батлагдсан огноо</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Тушаалын дугаар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Тушаалын утга</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Файл</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах газар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Засварлах</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\"><i class=\"fa fa-fw fa-envelope text-muted hidden-md hidden-sm hidden-xs\"></i></th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.TUSHAAL_ID + "\" data-tushaaltypeid=\"" + value.TUSHAAL_TYPE_ID + "\" data-hariutssanbrlistid=\"" + value.HARIUTSSAN_BRIDLIST + "\" data-bolovsruulsanbrlistid=\"" + value.BOLOVSRUULSAN_BRIDLIST + "\" data-hariutssanstlistid=\"" + value.HARIUTSSAN_STIDLIST + "\" data-bolovsruulsanstlistid=\"" + value.BOLOVSRUULSAN_STIDLIST + "\">";
                    valData += "<td class=\"text-center\">" + value.ROWNO + "</td>";
                    valData += "<td>" + value.SUCCESS_DATE + "</td>";
                    valData += "<td class=\"text-center\">" + replaceDatabaseToDisplay(value.TUSHAAL_NUMBER) + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.TUSHAAL_NAME) + "</td>";
                    valData += "<td>";
                    if (value.FILE_URL != "") {
                        valData += "<div class=\"btn-group\">";
                        valData += "<a href=\"../files/tushaal/" + value.FILE_URL + "\" class=\"btn btn-default btn-xs\" download title=\"Хавсаргасан файл татах\"><i class=\"fa fa-download\"></i></a>";
                        valData += "<a href=\"../pg/tushaalsaidTab1AttachShowModal.aspx?id=" + value.TUSHAAL_ID + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTab1AttachShowModal\" data-toggle=\"modal\"><i class=\"fa fa-eye\"></i></a>";
                        valData += "</div>";
                    }
                    valData += "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">" + value.HARIUTSSAN_BRNAMELIST + "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">";
                    valData += "<div class=\"btn-group\">";
                    if (valIsEdit == "1") {
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab1(this,'засах');\" data-target=\"#pTab1Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab1(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                    }
                    valData += "<a href=\"pg/tushaalsaidTab1ModalInfo.aspx?id=" + value.TUSHAAL_ID + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTab1ModalInfo\" data-toggle=\"modal\"><i class=\"fa fa-info\"></i></a>";
                    valData += "</div>";
                    valData += "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">";
                    if (value.ISMAILSENT == "1") valData += "<a href=\"javascript:void(0);\" class=\"btn btn-success btn-xs\" disabled=\"\"><i class=\"fa fa-paper-plane\"></i></a>";
                    else valData += "<a href=\"javascript:void(0);\" class=\"btn btn-warning btn-xs\" data-target=\"#pTab1SendMailModal\" data-toggle=\"modal\" onclick=\"showEditTab1SendMail(this);" + isDisabled + "\"><i class=\"fa fa-envelope\"></i></a>";
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_pTab1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab1Datatable').dataTable({aaSorting: [[1, 'desc']],\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab1Datatable) {responsiveHelper_pTab1Datatable = new ResponsiveDatatablesHelper($('#pTab1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\", \"orderable\": false },{ \"sWidth\": \"65px\" },{ \"sWidth\": \"65px\" },null, { \"sWidth\": \"40px\" },{ \"sWidth\": \"70px\" },{ \"sWidth\": \"55px\", \"bSortable\": false },{ \"sWidth\": \"15px\", \"bSortable\": false }]});";
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
    $("#pTab1SelectYear").change(function () {
        pTab1SetFirstControls();
    });
    $("#pTab1SelectType").change(function () {
        dataBindTab1Datatable();
    });
    $("#pTab1SelectHariutssanGazar").change(function () {
        dataBindTab1Datatable();
    });
    $("#pTab1SelectBolovsruulsanGazar").change(function () {
        dataBindTab1Datatable();
    });
    function dataBindTab1ModalBolovsruulsanGazarListForSelect2(selectedList) {
        var valData = '';
        $("#pTab1ModalDivBolovsruulsanGazar").html('<input class="form-control ui-autocomplete-loading disabled" placeholder="" type="text">');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForSelect2",
            data: '{"yr":"' + $('#pTab1SelectYear option:selected').val() + '", "selectedList":"' + selectedList + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<option" + value.ISSELECTED + " value=\"" + value.BR_ID + "\">" + value.DOMAIN_ORG + "</option>";
                });
                $("#pTab1ModalDivBolovsruulsanGazar").html('<select id="pTab1ModalSelectBolovsruulsanGazar" name="pTab1ModalSelectBolovsruulsanGazar"  multiple=\"multiple\" style=\"width:100%\">' + valData + '</select><script>$("#pTab1ModalSelectBolovsruulsanGazar").select2();');
                $("#pTab1ModalDivBolovsruulsanGazar").append('<//script>');
            },
            failure: function (response) {
                alert(response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab1ModalHariutssanGazarListForSelect2(selectedList) {
        var valData = '';
        $("#pTab1ModalDivHariutssanGazar").html('<input class="form-control ui-autocomplete-loading disabled" placeholder="" type="text">');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForSelect2",
            data: '{"yr":"' + $('#pTab1SelectYear option:selected').val() + '", "selectedList":"' + selectedList + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<option" + value.ISSELECTED + " value=\"" + value.BR_ID + "\">" + value.DOMAIN_ORG + "</option>";
                });
                $("#pTab1ModalDivHariutssanGazar").html('<select id="pTab1ModalSelectHariutssanGazar" name="pTab1ModalSelectHariutssanGazar"  multiple=\"multiple\" style=\"width:100%\">' + valData + '</select><script>$("#pTab1ModalSelectHariutssanGazar").select2();');
                $("#pTab1ModalDivHariutssanGazar").append('<//script>');
            },
            failure: function (response) {
                alert(response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab1ModalBolovsruulsanStaffListForSelect2(selectedList) {
        var valData = '', valOptGroup = '';
        $("#pTab1ModalDivBolovsruulsanStaff").html('<input class="form-control ui-autocomplete-loading disabled" placeholder="" type="text">');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetStaffListForSelect2",
            data: '{"yr": "' + $('#pTab1SelectYear option:selected').val() + '", "selectedList": "' + selectedList + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valOptGroup = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (value.BRANCH_ID != valOptGroup) {
                        if (valOptGroup != '') valData += '</optgroup>';
                        valData += '<optgroup label="' + value.NEGJNAME + '">';
                    }
                    valData += '<option' + value.ISSELECTED + ' value="' + value.STAFFS_ID + '" title="' + value.STAFFS_NAME + ' | ' + value.POS_NAME + '">' + value.STAFFS_NAME + '</option>';
                    valOptGroup = value.BRANCH_ID;
                });
                $("#pTab1ModalDivBolovsruulsanStaff").html('<select id="pTab1ModalSelectBolovsruulsanStaff" name="pTab1ModalSelectBolovsruulsanStaff"  multiple=\"multiple\" style=\"width:100%\">' + valData + '</select><script>$("#pTab1ModalSelectBolovsruulsanStaff").select2();');
                $("#pTab1ModalDivBolovsruulsanStaff").append('<//script>');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab1ModalHariutssanStaffListForSelect2(selectedList) {
        var valData = '', valOptGroup = '';
        $("#pTab1ModalDivHariutssanStaff").html('<input class="form-control ui-autocomplete-loading disabled" placeholder="" type="text">');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetStaffListForSelect2",
            data: '{"yr": "' + $('#pTab1SelectYear option:selected').val() + '", "selectedList": "' + selectedList + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valOptGroup = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (value.BRANCH_ID != valOptGroup) {
                        if (valOptGroup != '') valData += '</optgroup>';
                        valData += '<optgroup label="' + value.NEGJNAME + '">';
                    }
                    valData += '<option' + value.ISSELECTED + ' value="' + value.STAFFS_ID + '" title="' + value.STAFFS_NAME + ' | ' + value.POS_NAME + '">' + value.STAFFS_NAME + '</option>';
                    valOptGroup = value.BRANCH_ID;
                });
                $("#pTab1ModalDivHariutssanStaff").html('<select id="pTab1ModalSelectHariutssanStaff" name="pTab1ModalSelectHariutssanStaff"  multiple=\"multiple\" style=\"width:100%\">' + valData + '</select><script>$("#pTab1ModalSelectHariutssanStaff").select2();');
                $("#pTab1ModalDivHariutssanStaff").append('<//script>');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function pTab1SendMailModalHariutssanStaffListForSelect2(selectedList) {
        var valData = '', valOptGroup = '';
        $("#pTab1SendMailModalDivHariutssanStaff").html('<input class="form-control ui-autocomplete-loading disabled" placeholder="" type="text">');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetStaffListForSelect2",
            data: '{"yr": "' + $('#pTab1SelectYear option:selected').val() + '", "selectedList": "' + selectedList + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valOptGroup = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (value.BRANCH_ID != valOptGroup) {
                        if (valOptGroup != '') valData += '</optgroup>';
                        valData += '<optgroup label="' + value.NEGJNAME + '">';
                    }
                    valData += '<option' + value.ISSELECTED + ' value="' + value.STAFFS_ID + '" title="' + value.STAFFS_NAME + ' | ' + value.POS_NAME + '">' + value.STAFFS_NAME + '</option>';
                    valOptGroup = value.BRANCH_ID;
                });
                $("#pTab1SendMailModalDivHariutssanStaff").html('<select id="pTab1SendMailModalSelectHariutssanStaff" name="pTab1SendMailModalSelectHariutssanStaff"  multiple=\"multiple\" style=\"width:100%\">' + valData + '</select><script>$("#pTab1SendMailModalSelectHariutssanStaff").select2();');
                $("#pTab1SendMailModalDivHariutssanStaff").append('<//script>');
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
        var valData = '';
        $('#pTab1ModalHeaderLabel').text(isinsupt);
        $('#pTab1ModalSpanYear').html($('#pTab1SelectYear option:selected').val());
        $('#pTab1ModalZaaltTbody').html('');
        $('#pTab1ZaaltModalFieldset').removeClass('hide');
        if (isinsupt == 'нэмэх') {
            $('#pTab1ID').html('');
            $('#pTab1ModalSelectType').val('');
            $('#pTab1ModalInputNo').val("");
            $('#pTab1ModalInputSuccessdate').val("");
            $('#pTab1ModalInputName').val("");
            dataBindTab1ModalBolovsruulsanGazarListForSelect2('');
            dataBindTab1ModalBolovsruulsanStaffListForSelect2('');
            dataBindTab1ModalHariutssanGazarListForSelect2('');
            dataBindTab1ModalHariutssanStaffListForSelect2('');
            $('#pTab1ModalInputDescription').val("");
            $('#pTab1ModalAttachBtn').html('Файл хавсаргаагүй байна...');
            $('#pTab1ModalAttachBtn').attr('href', 'javascript:void(0);');
            $('#pTab1ModalAttachInput').val('');

            valData += '<tr>';
            valData += '<td>1</td>';
            valData += '<td>Сангийн Сайдын ' + $('#pTab1SelectYear option:selected').val() + ' оны ...-р тушаалын хэрэгжилтэд Төсвийн хяналт эрсдэлийн удирдлагын газар хяналт тавина</td>';
            valData += '<td></td>';
            valData += '<td data-id="">-</td>';
            valData += '<td data-id="9907">ТХЭУГ</td>';
            valData += '<td><div class="btn-group"><button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab1ZaaltModal(this);"><i class="fa fa-trash-o"></i></button></td>';
            valData += '</tr>';
            $('#pTab1ModalZaaltTbody').append(valData);
        }
        else {
            $('#pTab1ID').html($(el).closest('tr').attr('data-id'));
            $('#pTab1ModalSelectType').val($(el).closest('tr').attr('data-tushaaltypeid'));
            $('#pTab1ModalInputNo').val($(el).closest('tr').find('td:eq(2)').html());
            $('#pTab1ModalInputSuccessdate').val($(el).closest('tr').find('td:eq(1)').html());
            $('#pTab1ModalInputName').val($(el).closest('tr').find('td:eq(3)').html());
            dataBindTab1ModalBolovsruulsanGazarListForSelect2($(el).closest('tr').attr('data-bolovsruulsanbrlistid'));
            dataBindTab1ModalBolovsruulsanStaffListForSelect2($(el).closest('tr').attr('data-bolovsruulsanstlistid'));
            dataBindTab1ModalHariutssanGazarListForSelect2($(el).closest('tr').attr('data-hariutssanbrlistid'));
            dataBindTab1ModalHariutssanStaffListForSelect2($(el).closest('tr').attr('data-hariutssanstlistid'));
            //$('#pTab1ModalInputDescription').val($(el).closest('tr').find('td:eq(11)').html());
            if ($.trim($(el).closest('tr').find('td:eq(4)').html()) != '') {
                $('#pTab1ModalAttachBtn').attr('href', $(el).closest('tr').find('td:eq(4)').find('a').attr('href'));
                $('#pTab1ModalAttachBtn').html($(el).closest('tr').find('td:eq(4)').find('a').attr('href').split('/').pop());
                $('#pTab1ModalAttachInput').val('');
            }
            else {
                $('#pTab1ModalAttachBtn').html('Файл хавсаргаагүй байна...');
                $('#pTab1ModalAttachBtn').attr('href', 'javascript:void(0);');
                $('#pTab1ModalAttachInput').val('');
            }
            $('#pTab1ZaaltModalFieldset').addClass('hide');
        }
    }
    $("#pTab1ModalInputNo").change(function () {
        var valData = '';
        valData += '<td>1</td>';
        if ($.trim($('#pTab1ModalInputNo').val()) == '') {
            valData += '<td>Сангийн Сайдын ' + $('#pTab1SelectYear option:selected').val() + ' оны ...-р тушаалын хэрэгжилтэд Төсвийн хяналт эрсдэлийн удирдлагын газар хяналт тавина</td>';
        }
        else {
            valData += '<td>Сангийн Сайдын ' + $('#pTab1SelectYear option:selected').val() + ' оны ' + $.trim($('#pTab1ModalInputNo').val()) + '-р тушаалын хэрэгжилтэд Төсвийн хяналт эрсдэлийн удирдлагын газар хяналт тавина</td>';
        }
        valData += '<td></td>';
        valData += '<td data-id="">-</td>';
        valData += '<td data-id="9907">ТХЭУГ</td>';
        valData += '<td></td>';
        $('#pTab1ModalZaaltTbody').find('tr:eq(0)').html(valData);
    });
    function showDeleteTab1(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_TUSHAAL_ZAALT WHERE TUSHAAL_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') alert('Сонгосон тушаалд төлөвлөгөө бүртгэгдсэн тул устгах боломжгүй байна!');
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон тушаалыг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/TUSHAALS_DELETE",
                                data: '{"P_ID":"' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    if ($.trim($(el).closest('tr').find('td:eq(4)').html()) != '') {
                                        globalAjaxVar = $.ajax({
                                            type: "POST",
                                            url: "../ws/ServiceMain.svc/DeleteFile",
                                            data: '{"filename":"~/files/tushaal/' + $(el).closest('tr').find('td:eq(4)').find('a').attr('href').split('/').pop() + '"}',
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function () {
                                                smallBox('Сайдын тушаал', 'Хавсралт файл амжилттай устгагдлаа', '#659265', 3000);
                                            },
                                            failure: function (response) {
                                                alert('FAILURE: ' + response.d);
                                            },
                                            error: function (xhr, status, error) {
                                                window.location = '../#pg/error500.aspx';
                                            }
                                        });
                                    }

                                    dataBindTab1Datatable();
                                    smallBox('Сайдын тушаал', 'Амжилттай устгагдлаа', '#659265', 3000);
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
        if (uploadedfiles[0].size > 104857600) {
            errMsg += 'Файлын хэмжээ 100MB -аас ихгүй байна!\n';
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
    function showEditTab1SendMail(el) {
        $('#pTab1ID').html($(el).closest('tr').attr('data-id'));
        pTab1SendMailModalHariutssanStaffListForSelect2($(el).closest('tr').attr('data-hariutssanstlistid'));
        $('#pTab1SendMailModalSave').html('<i class="fa fa-send"></i> Явуулах');
        $('#pTab1SendMailModalSave').prop("disabled", false);
    }
    $("#pTab1SendMailModalSave").click(function () {
        if ($.trim($('#pTab1SendMailModalSelectHariutssanStaff').val()) != '') {
            $('#pTab1Datatable > tbody  > tr').each(function () {
                if ($(this).attr('data-id') == $('#pTab1ID').html()) {
                    $('td:eq(7)', this).html('<a href="javascript:void(0);" class="btn btn-warning btn-xs" disabled="disabled"><i class="fa fa-refresh fa-spin"></i></a>');
                    $('#pTab1SendMailModal').modal('hide');
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                        data: '{"qry": "SELECT RTRIM(xmlagg (xmlelement (e, DOMAIN_USER || \',\') ).extract(\'//text()\'), \',\') as DOMAINUSERS FROM hrdbuser.ST_STAFFS WHERE ID IN (' + $.trim($('#pTab1SendMailModalSelectHariutssanStaff').val()) + ')"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/TushaalSendMail",
                                data: '{"tushaal_ID":"' + $("#pTab1ID").html() + '", "DOMAIN_USER":"' + data.d + '", "yr":"' + $('#pTab1SelectYear option:selected').val() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    $('#pTab1Datatable > tbody  > tr').each(function () {
                                        if ($(this).attr('data-id') == $('#pTab1ID').html()) {
                                            $('td:eq(7)', this).html('<a href="javascript:void(0);" class="btn btn-success btn-xs" disabled=""><i class="fa fa-envelope"></i></a>');
                                            return false;
                                        }
                                    });
                                    smallBox('Сайдын тушаал', 'Имэйл амжилттай явлаа', '#659265', 3000);
                                },
                                failure: function (response) {
                                    alert(response.d);
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
                    return false;
                }
            });




            //$('#pTab1SendMailModalSave').html('<i class="fa fa-refresh fa-spin"></i>');
            //$('#pTab1SendMailModalSave').prop("disabled", true);
            //globalAjaxVar = $.ajax({
            //    type: "POST",
            //    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            //    data: '{"qry": "SELECT RTRIM(xmlagg (xmlelement (e, DOMAIN_USER || \',\') ).extract(\'//text()\'), \',\') as DOMAINUSERS FROM hrdbuser.ST_STAFFS WHERE ID IN (' + $.trim($('#pTab1SendMailModalSelectHariutssanStaff').val()) + ')"}',
            //    contentType: "application/json; charset=utf-8",
            //    dataType: "json",
            //    success: function (data) {
            //        globalAjaxVar = $.ajax({
            //            type: "POST",
            //            url: "../ws/ServiceMain.svc/TushaalSendMail",
            //            data: '{"tushaal_ID":"' + $("#pTab1ID").html() + '", "DOMAIN_USER":"' + data.d + '", "yr":"' + $('#pTab1SelectYear option:selected').val() + '"}',
            //            contentType: "application/json; charset=utf-8",
            //            dataType: "json",
            //            success: function () {
            //                $('#pTab1SendMailModalSave').html('<i class="fa fa-send"></i> Явуулах');
            //                $('#pTab1SendMailModalSave').prop("disabled", false);
            //                $('#pTab1SendMailModal').modal('hide');
            //                $('#pTab1Datatable > tbody  > tr').each(function () {
            //                    if ($(this).attr('data-id') == $('#pTab1ID').html()) {
            //                        $('td:eq(7)', this).html('<a href="javascript:void(0);" class="btn btn-success btn-xs" disabled=""><i class="fa fa-envelope"></i></a>');
            //                        return false;
            //                    }
            //                });
            //                smallBox('Сайдын тушаал', 'Имэйл амжилттай явлаа', '#659265', 3000);
            //            },
            //            failure: function (response) {
            //                alert(response.d);
            //            },
            //            error: function (xhr, status, error) {
            //                window.location = '../#pg/error500.aspx';
            //            }
            //        });
            //    },
            //    failure: function (response) {
            //        alert('FAILURE: ' + response.d);
            //    },
            //    error: function (xhr, status, error) {
            //        window.location = '../#pg/error500.aspx';
            //    }
            //});

            
        }
        else alert('Хариуцсан ажилтан сонгоно уу!');
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
                        data: '{"filename":"~/files/tushaal/' + $('#pTab1ModalAttachBtn').html() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            $('#pTab1ModalAttachBtn').html('Файл хавсаргаагүй байна...');
                            $('#pTab1ModalAttachInput').val('');
                            smallBox('Хавсаргасан файл', 'Амжилттай устгагдлаа', '#659265', 3000);
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
    $('#pTab1ModalForm').bootstrapValidator({
        fields: {
            pTab1ModalSelectType: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Тушаалын төрөл сонгоно уу'
                    }
                }
            },
            pTab1ModalInputNo: {
                group: '.col-md-6',
                validators: {
                    notEmpty: {
                        message: 'Дугаар оруулна уу'
                    },
                    stringLength: {
                        max: 10,
                        message: 'Дугаар уртдаа 10 тэмдэгт авна'
                    },
                    numeric: {
                        message: 'Зөвхөн тоон тэмдэгт авна'
                    }
                }
            },
            pTab1ModalInputSuccessdate: {
                group: '.col-md-6',
                validators: {
                    notEmpty: {
                        message: 'Батлагдсан огноо оруулна уу'
                    },
                    date: {
                        format: 'YYYY-MM-DD',
                        message: 'Огноо буруу орсон байна. /Жил-Сар-Өдөр/'
                    }
                }
            },
            pTab1ModalInputName: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Тушаалын нэр оруулна уу'
                    },
                    stringLength: {
                        max: 1000,
                        message: 'Тушаалын нэр уртдаа 1000 тэмдэгт авна'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            var valBolovsruulsanGazar = 'none', valBolovsruulsanStaff = 'none';
            var valHariutssanGazar = 'none', valHariutssanStaff = 'none';
            var valDescription = 'none', filename = 'none';
            if ($.trim($('#pTab1ModalSelectBolovsruulsanGazar').val()) != '') valBolovsruulsanGazar = $.trim($('#pTab1ModalSelectBolovsruulsanGazar').val());
            if ($.trim($('#pTab1ModalSelectBolovsruulsanStaff').val()) != '') valBolovsruulsanStaff = $.trim($('#pTab1ModalSelectBolovsruulsanStaff').val());
            if ($.trim($('#pTab1ModalSelectHariutssanGazar').val()) != '') valHariutssanGazar = $.trim($('#pTab1ModalSelectHariutssanGazar').val());
            if ($.trim($('#pTab1ModalSelectHariutssanStaff').val()) != '') valHariutssanStaff = $.trim($('#pTab1ModalSelectHariutssanStaff').val());
            if ($.trim($('#pTab1ModalInputDescription').val()) != '') valDescription = $.trim($('#pTab1ModalInputDescription').val());
            if (valBolovsruulsanGazar != 'none' && valBolovsruulsanStaff != 'none' && valHariutssanGazar != 'none' && valHariutssanStaff != 'none') {
                if ($('#pTab1ModalAttachBtn').html() != 'Файл хавсаргаагүй байна...')
                    filename = "Сайд-Тушаал " + $('#pTab1SelectYear option:selected').val() + " " + $.trim($('#pTab1ModalInputNo').val()) + "." + $('#pTab1ModalAttachBtn').html().split('.')[$('#pTab1ModalAttachBtn').html().split('.').length - 1];

                if ($('#pTab1ModalHeaderLabel').text() == 'нэмэх') {
                    if ($('#pTab1ModalZaaltTbody').find('tr').length != 0) {
                        //globalAjaxVar = $.ajax({
                        //    type: "POST",
                        //    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                        //    data: '{"qry":"SELECT COUNT(1) FROM TBL_TUSHAAL WHERE TUSHAAL_TYPE=3 AND TO_NUMBER(TO_CHAR(TO_DATE(SUCCESS_DATE,\'yyyy-mm-dd\'),\'yyyy\'))=' + $('#pTab1SelectYear option:selected').val() + ' AND TUSHAAL_NUMBER=\'' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputNo').val())) + '\'"}',
                        //    contentType: "application/json; charset=utf-8",
                        //    dataType: "json",
                        //    success: function (data) {
                        //        if (data.d != "0") alert('ДАВХАРДАЛ: ' + $('#pTab1SelectYear option:selected').val() + 'онд ' + $.trim($('#pTab1ModalInputNo').val()) + ' дугаартай сайдын тушаал орсон байна!');
                        //        else {
                                    globalAjaxVar = $.ajax({
                                        type: "POST",
                                        url: "../ws/ServiceMain.svc/TUSHAALS_INSERT",
                                        data: '{"P_TUSHAAL_TYPE":"3", "P_TUSHAAL_NAME":"' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputName').val())) + '", "P_SUCCESS_DATE":"' + $.trim($('#pTab1ModalInputSuccessdate').val()) + '", "P_TUSHAAL_NUMBER":"' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputNo').val())) + '", "P_TUSHAAL_DESCRIPTION":"' + valDescription + '", "P_FILE_URL":"' + filename + '", "P_TUSHAAL_TYPE_ID":"' + $('#pTab1ModalSelectType option:selected').val() + '", "P_BOLOVSRUULSAN_BRLIST":"' + valBolovsruulsanGazar + '", "P_BOLOVSRUULSAN_STLIST":"' + valBolovsruulsanStaff + '", "P_HARIUTSSAN_BRLIST":"' + valHariutssanGazar + '", "P_HARIUTSSAN_STLIST":"' + valHariutssanStaff + '", "P_STAFFID":"' + $('#indexUserId').html() + '"}',
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function () {
                                            if (filename != "none") {
                                                if ($("#pTab1ModalAttachInput").val() != '') {
                                                    var uploadfiles = $("#pTab1ModalAttachInput").get(0);
                                                    var uploadedfiles = uploadfiles.files;
                                                    var fromdata = new FormData();
                                                    fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                                                    globalAjaxVar = $.ajax({
                                                        type: "POST",
                                                        url: "../pg/UploadFile.ashx?folder=tushaal&filename=" + filename,
                                                        data: fromdata,
                                                        contentType: false,
                                                        processData: false,
                                                        success: function () {
                                                            smallBox('Хавсралт файл', 'Амжилттай хадгалагдлаа', '#659265', 3000);
                                                        },
                                                        failure: function (response) {
                                                            alert('FAILURE: ' + response.d);
                                                        },
                                                        error: function (xhr, status, error) {
                                                            var err = eval("(" + xhr.responseText + ")");
                                                            if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                                            else alert('Зураг хадгалахад алдаа гарлаа: ' + err.Message);
                                                        }
                                                    });
                                                }
                                            }

                                            //pTab1ZaaltModal INSERT
                                            var valMaxID = '';
                                            globalAjaxVar = $.ajax({
                                                type: "POST",
                                                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                data: '{"qry":"SELECT MAX(ID) as ID FROM TBL_TUSHAAL WHERE TUSHAAL_TYPE=3"}',
                                                contentType: "application/json; charset=utf-8",
                                                dataType: "json",
                                                success: function (data) {
                                                    valMaxID = data.d;
                                                    $("#pTab1ModalZaaltTbody tr").each(function (index) {
                                                        valBolovsruulsanGazar = $(this).find('td:eq(3)').attr('data-id');
                                                        valHariutssanGazar = $(this).find('td:eq(4)').attr('data-id');
                                                        globalAjaxVar = $.ajax({
                                                            type: "POST",
                                                            url: "../ws/ServiceMain.svc/TUSHAALS_ZAALT_INSERT",
                                                            data: '{"P_TUSHAAL_ID":"' + valMaxID + '", "P_NAME":"' + replaceDisplayToDatabase($(this).find('td:eq(1)').html()) + '", "P_BOLOVSRUULSAN_BRLIST":"' + valBolovsruulsanGazar + '", "P_HARIUTSSAN_BRLIST":"' + valHariutssanGazar + '", "P_STAFFID":"' + $('#indexUserId').html() + '", "P_ENDDATE":"' + $.trim($(this).find('td:eq(2)').html()) + '"}',
                                                            contentType: "application/json; charset=utf-8",
                                                            dataType: "json",
                                                            success: function () {
                                                                console.log('insert zaalt');
                                                            },
                                                            failure: function (response) {
                                                                alert(response.d);
                                                            },
                                                            error: function (xhr, status, error) {
                                                                window.location = '../#pg/error500.aspx';
                                                            }
                                                        });
                                                    });
                                                    dataBindTab1Datatable();
                                                    $('#pTab1Modal').modal('hide');
                                                    smallBox('Сайдын тушаал', 'Амжилттай хадгалагдлаа', '#659265', 3000);
                                                },
                                                failure: function (response) {
                                                    alert('FAILURE: ' + response.d);
                                                },
                                                error: function (xhr, status, error) {
                                                    var err = eval("(" + xhr.responseText + ")");
                                                    if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                                    else alert('Зураг хадгалахад алдаа гарлаа: ' + err.Message);
                                                }
                                            });
                                        },
                                        failure: function (response) {
                                            alert(response.d);
                                        },
                                        error: function (xhr, status, error) {
                                            window.location = '../#pg/error500.aspx';
                                        }
                                    });
                        //        }
                        //    },
                        //    failure: function (response) {
                        //        alert(response.d);
                        //    },
                        //    error: function (xhr, status, error) {
                        //        window.location = '../#pg/error500.aspx';
                        //    }
                        //});
                    }
                    else {
                        alert('Шинээр оруулж буй тушаалд төлөвлөгөө заавал оруулна уу!');
                        $('#pTab1ModalForm').find('.modal-footer').find(':submit').prop('disabled', false);
                    }
                }
                else {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/TUSHAALS_UPDATE",
                        data: '{"P_ID":"' + $('#pTab1ID').html() + '", "P_TUSHAAL_TYPE":"3", "P_TUSHAAL_NAME":"' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputName').val())) + '", "P_SUCCESS_DATE":"' + $.trim($('#pTab1ModalInputSuccessdate').val()) + '", "P_TUSHAAL_NUMBER":"' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputNo').val())) + '", "P_TUSHAAL_DESCRIPTION":"' + valDescription + '", "P_FILE_URL":"' + filename + '", "P_TUSHAAL_TYPE_ID":"' + $('#pTab1ModalSelectType option:selected').val() + '", "P_BOLOVSRUULSAN_BRLIST":"' + valBolovsruulsanGazar + '", "P_BOLOVSRUULSAN_STLIST":"' + valBolovsruulsanStaff + '", "P_HARIUTSSAN_BRLIST":"' + valHariutssanGazar + '", "P_HARIUTSSAN_STLIST":"' + valHariutssanStaff + '", "P_STAFFID":"' + $('#indexUserId').html() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            if (filename != "none") {
                                if ($("#pTab1ModalAttachInput").val() != '') {
                                    var uploadfiles = $("#pTab1ModalAttachInput").get(0);
                                    var uploadedfiles = uploadfiles.files;
                                    var fromdata = new FormData();
                                    fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                                    globalAjaxVar = $.ajax({
                                        type: "POST",
                                        url: "../pg/UploadFile.ashx?folder=tushaal&filename=" + filename,
                                        data: fromdata,
                                        contentType: false,
                                        processData: false,
                                        success: function () {
                                            smallBox('Хавсралт файл', 'Амжилттай хадгалагдлаа', '#659265', 3000);
                                        },
                                        failure: function (response) {
                                            alert('FAILURE: ' + response.d);
                                        },
                                        error: function (xhr, status, error) {
                                            var err = eval("(" + xhr.responseText + ")");
                                            if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                            else alert('Зураг хадгалахад алдаа гарлаа: ' + err.Message);
                                        }
                                    });
                                }
                            }
                            dataBindTab1Datatable();
                            $('#pTab1Modal').modal('hide');
                            smallBox('Сайдын тушаал', 'Амжилттай хадгалагдлаа', '#659265', 3000);
                        },
                        failure: function (response) {
                            alert(response.d);
                        },
                        error: function (xhr, status, error) {
                            window.location = '../#pg/error500.aspx';
                        }
                    });
                }
            }
            else {
                alert('Боловсруулсан газар, ажилтан болон хариуцсан газар, ажилтан заавал сонгоно уу!');
                $('#pTab1ModalForm').find('.modal-footer').find(':submit').prop('disabled', false);
            }
        }
    });

    //tab1ZaaltModal
    function showAddTab1ZaaltModal(el) {
        var valData = '';
        $('#pTab1ZaaltModalInputName').val("");
        $('#pTab1ZaaltModalInputEnddate').val("");
        dataBindTab1ModalZaaltBolovsruulsanGazarListForSelect2($.trim($('#pTab1ModalSelectBolovsruulsanGazar').val()));
        dataBindTab1ModalZaaltModalHariutssanGazarListForSelect2($.trim($('#pTab1ModalSelectHariutssanGazar').val()));
    }
    function dataBindTab1ModalZaaltBolovsruulsanGazarListForSelect2(selectedList) {
        var valData = '';
        $("#pTab1ZaaltModalDivBolovsruulsanGazar").html('<input class="form-control ui-autocomplete-loading disabled" placeholder="" type="text">');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForSelect2",
            data: '{"yr":"' + $('#pTab1SelectYear option:selected').val() + '", "selectedList":"' + selectedList + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<option" + value.ISSELECTED + " value=\"" + value.BR_ID + "\">" + value.DOMAIN_ORG + "</option>";
                });
                $("#pTab1ZaaltModalDivBolovsruulsanGazar").html('<select id="pTab1ZaaltModalSelectBolovsruulsanGazar" name="pTab1ZaaltModalSelectBolovsruulsanGazar"  multiple=\"multiple\" style=\"width:100%\">' + valData + '</select><script>$("#pTab1ZaaltModalSelectBolovsruulsanGazar").select2();');
                $("#pTab1ZaaltModalDivBolovsruulsanGazar").append('<//script>');
            },
            failure: function (response) {
                alert(response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab1ModalZaaltModalHariutssanGazarListForSelect2(selectedList) {
        var valData = '';
        $("#pTab1ZaaltModalDivHariutssanGazar").html('<input class="form-control ui-autocomplete-loading disabled" placeholder="" type="text">');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForSelect2",
            data: '{"yr":"' + $('#pTab1SelectYear option:selected').val() + '", "selectedList":"' + selectedList + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<option" + value.ISSELECTED + " value=\"" + value.BR_ID + "\">" + value.DOMAIN_ORG + "</option>";
                });
                $("#pTab1ZaaltModalDivHariutssanGazar").html('<select id="pTab1ZaaltModalSelectHariutssanGazar" name="pTab1ZaaltModalSelectHariutssanGazar"  multiple=\"multiple\" style=\"width:100%\">' + valData + '</select><script>$("#pTab1ZaaltModalSelectHariutssanGazar").select2();');
                $("#pTab1ZaaltModalDivHariutssanGazar").append('<//script>');
            },
            failure: function (response) {
                alert(response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $('#pTab1ZaaltModalForm').bootstrapValidator({
        fields: {
            pTab1ZaaltModalInputName: {
                group: '.col-md-12',
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
            pTab1ZaaltModalInputEnddate: {
                group: '.col-md-12',
                validators: {
                    date: {
                        format: 'YYYY-MM-DD',
                        message: 'Огноо буруу орсон байна. /Жил-Сар-Өдөр/'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            var valData = '';
            var valBolovsruulsanGazar = 'none', valHariutssanGazar = 'none';
            if ($.trim($('#pTab1ZaaltModalSelectBolovsruulsanGazar').val()) != '') valBolovsruulsanGazar = $.trim($('#pTab1ZaaltModalSelectBolovsruulsanGazar').val());
            if ($.trim($('#pTab1ZaaltModalSelectHariutssanGazar').val()) != '') valHariutssanGazar = $.trim($('#pTab1ZaaltModalSelectHariutssanGazar').val());
            if (valHariutssanGazar != 'none') {
                valData += '<tr>';
                valData += '<td>' + ($('#pTab1ModalZaaltTbody').find('tr').length + 1) + '</td>';
                valData += '<td>' + $.trim($('#pTab1ZaaltModalInputName').val()) + '</td>';
                valData += '<td>' + $.trim($('#pTab1ZaaltModalInputEnddate').val()) + '</td>';
                if (valBolovsruulsanGazar != 'none') valData += '<td data-id="' + valBolovsruulsanGazar + '">-</td>';
                else valData += '<td data-id="' + valBolovsruulsanGazar + '">' + $.trim($('#pTab1ZaaltModalSelectBolovsruulsanGazar option:selected').text()) + '</td>';
                valData += '<td data-id="' + valHariutssanGazar + '">' + $.trim($('#pTab1ZaaltModalSelectHariutssanGazar option:selected').text()) + '</td>';
                valData += '<td><div class="btn-group"><button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab1ZaaltModal(this);"><i class="fa fa-trash-o"></i></button></td>';
                valData += '</tr>';
                $('#pTab1ModalZaaltTbody').append(valData);
                $('#pTab1ZaaltModal').modal('hide');
                $('#pTab1ZaaltModalForm').find('.modal-footer').find(':submit').prop('disabled', false);
            }
            else {
                alert('Хариуцсан газар заавал сонгоно уу!');
                $('#pTab1ZaaltModalForm').find('.modal-footer').find(':submit').prop('disabled', false);
            }
        }
    });
    function showDeleteTab1ZaaltModal(el) {
        $(el).closest('tr').remove();
    }

    //tab2
    function pTab2SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr":"' + $('#pTab2SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#pTab2SelectHariutssanGazar").html('<option value="">Бүгд</option>' + valData);
                $("#pTab2SelectBolovsruulsanGazar").html('<option value="">Бүгд</option>' + valData);
                $('#pTab2SelectHariutssanGazar').val($('#indexUserGazarId').html());
                dataBindTab2Datatable();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab2Datatable() {
        var valData = '';
        var valIsEdit = '0';
        showLoader('loaderTab2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TushaalsaidTab2Datatable",
            data: '{"yr":"' + $('#pTab2SelectYear option:selected').val() + '", "type":"' + $('#pTab2SelectType option:selected').val() + '", "hariutssangazar":"' + $('#pTab2SelectHariutssanGazar option:selected').val() + '", "bolovsruulsangazar":"' + $('#pTab2SelectBolovsruulsanGazar option:selected').val() + '", "isclosed":"' + $('#pTab2SelectIsClosed option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (funcCheckRoles('1,28')) {
                    valIsEdit = '1';
                }
                valData = "<table id=\"pTab2Datatable\" class=\"table table-striped table-bordered table-hover smart-form\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Тушаалын утга</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Төлөвлөгөө</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хэрэгжүүлэх эцсийн хугацаа</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах газар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Засварлах</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хаах</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr class=\"" + value.ENDDATECOLOR + "\" data-id=\"" + value.ZAALT_ID + "\" data-tushaaltypeid=\"" + value.TUSHAAL_TYPE_ID + "\" data-tushaalid=\"" + value.TUSHAAL_ID + "\" data-bolovsruulsanbridlist=\"" + value.BOLOVSRUULSAN_BRIDLIST + "\">";
                    valData += "<td class=\"text-center\">" + value.ROWNO + "</td>";
                    valData += "<td><b>Батлагдсан огноо: </b>" + value.SUCCESS_DATE + "<br><b>Тушаалын дугаар: </b>" + replaceDatabaseToDisplay(value.TUSHAAL_NUMBER) + "<br/><b>Тушаалын утга: </b>" + replaceDatabaseToDisplay(value.TUSHAAL_NAME) + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.ZAALT_NAME) + "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">" + value.ENDDATE + "</td>";
                    valData += "<td data-id=\"" + value.HARIUTSSAN_BRIDLIST + "\" class=\"text-center\" style=\"vertical-align:middle;\">" + value.HARIUTSSAN_BRNAMELIST + "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">";
                    valData += "<div class=\"btn-group\">";
                    if (valIsEdit == "1") {
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab2(this,'засах');\" data-target=\"#pTab2Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab2(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                    }
                    valData += "<a href=\"pg/tushaalsaidTab2ModalInfo.aspx?id=" + value.ZAALT_ID + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTab2ModalInfo\" data-toggle=\"modal\"><i class=\"fa fa-info\"></i></a>";
                    valData += "</div>";
                    valData += "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">";
                    if (valIsEdit == "1") valData += "<span class=\"onoffswitch\"><input id=\"onoffCheckbox" + value.ZAALT_ID + "\" name=\"onoffCheckbox" + value.ZAALT_ID + "\" type=\"checkbox\" " + value.ISCLOSED + " class=\"onoffswitch-checkbox\" onclick=\"saveIsClosed(this);\"><label class=\"onoffswitch-label\" for=\"onoffCheckbox" + value.ZAALT_ID + "\"><span class=\"onoffswitch-inner\" data-swchon-text=\"ON\" data-swchoff-text=\"OFF\"></span><span class=\"onoffswitch-switch\"></span></label></span>";
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_pTab2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab2Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab2Datatable) {responsiveHelper_pTab2Datatable = new ResponsiveDatatablesHelper($('#pTab2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab2Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\", \"orderable\": false },null,null, { \"sWidth\": \"70px\" },{ \"sWidth\": \"70px\" }, { \"sWidth\": \"62px\", \"bSortable\": false }, { \"sWidth\": \"30px\", \"bSortable\": false }]});";
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
    $("#pTab2SelectYear").change(function () {
        pTab2SetFirstControls();
    });
    $("#pTab2SelectType, #pTab2SelectHariutssanGazar, #pTab2SelectBolovsruulsanGazar, #pTab2SelectIsClosed").change(function () {
        dataBindTab2Datatable();
    });
    $("#pTab2ModalSelectType").change(function () {
        var valData = '';
        if ($("#pTab2ModalSelectType option:selected").val() == "") {
            $("#pTab2ModalSelectTushaal").html("<option selected value=\"\">- Тушаал сонго -</option>");
            $("#pTab2ModalSelectTushaal").prop("disabled", true);
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/TushaalsListForDDL",
                data: '{"tushaal_type_id":"' + $("#pTab2ModalSelectType option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.ID + '" title="' + value.NAME + '">' + value.NAME + '</option>';
                    });
                    $("#pTab2ModalSelectTushaal").html("<option value=\"\">- Сонго -</option>" + valData);
                    $("#pTab2ModalSelectTushaal").prop("disabled", false);
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
    function dataBindTab2ModalBolovsruulsanGazarListForSelect2(selectedList) {
        var valData = '';
        $("#pTab2ModalDivBolovsruulsanGazar").html('<input class="form-control ui-autocomplete-loading disabled" placeholder="" type="text">');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForSelect2",
            data: '{"yr":"' + $('#pTab2SelectYear option:selected').val() + '", "selectedList":"' + selectedList + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<option" + value.ISSELECTED + " value=\"" + value.BR_ID + "\">" + value.DOMAIN_ORG + "</option>";
                });
                $("#pTab2ModalDivBolovsruulsanGazar").html('<select id="pTab2ModalSelectBolovsruulsanGazar" name="pTab2ModalSelectBolovsruulsanGazar"  multiple=\"multiple\" style=\"width:100%\">' + valData + '</select><script>$("#pTab2ModalSelectBolovsruulsanGazar").select2();');
                $("#pTab2ModalDivBolovsruulsanGazar").append('<//script>');
            },
            failure: function (response) {
                alert(response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab2ModalHariutssanGazarListForSelect2(selectedList) {
        var valData = '';
        $("#pTab2ModalDivHariutssanGazar").html('<input class="form-control ui-autocomplete-loading disabled" placeholder="" type="text">');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForSelect2",
            data: '{"yr":"' + $('#pTab2SelectYear option:selected').val() + '", "selectedList":"' + selectedList + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<option" + value.ISSELECTED + " value=\"" + value.BR_ID + "\">" + value.DOMAIN_ORG + "</option>";
                });
                $("#pTab2ModalDivHariutssanGazar").html('<select id="pTab2ModalSelectHariutssanGazar" name="pTab2ModalSelectHariutssanGazar"  multiple=\"multiple\" style=\"width:100%\">' + valData + '</select><script>$("#pTab2ModalSelectHariutssanGazar").select2();');
                $("#pTab2ModalDivHariutssanGazar").append('<//script>');
            },
            failure: function (response) {
                alert(response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function showAddEditTab2(el, isinsupt) {
        var valData = '';
        $('#pTab2ModalHeaderLabel').text(isinsupt);
        $('#pTab2ModalSpanYear').html($('#pTab2SelectYear option:selected').val());
        if (isinsupt == 'нэмэх') {
            $('#pTab2ID').html('');
            $('#pTab2ModalSelectType').val('');
            $("#pTab2ModalSelectTushaal").html("<option selected value=\"\">- Тушаал сонго -</option>");
            $("#pTab2ModalSelectTushaal").prop("disabled", true);
            $('#pTab2ModalInputName').val("");
            $('#pTab2ModalInputEnddate').val("");
            dataBindTab2ModalBolovsruulsanGazarListForSelect2('');
            dataBindTab2ModalHariutssanGazarListForSelect2('');
        }
        else {
            $('#pTab2ID').html($(el).closest('tr').attr('data-id'));
            $('#pTab2ModalSelectType').val($(el).closest('tr').attr('data-tushaaltypeid'));
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/TushaalsListForDDL",
                data: '{"tushaal_type_id":"' + $("#pTab2ModalSelectType option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.ID + '" title="' + value.NAME + '">' + value.NAME + '</option>';
                    });
                    $("#pTab2ModalSelectTushaal").html("<option value=\"\">- Сонго -</option>" + valData);
                    $("#pTab2ModalSelectTushaal").prop("disabled", false);
                    $("#pTab2ModalSelectTushaal").val($(el).closest('tr').attr('data-tushaalid'));
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
            $('#pTab2ModalInputName').val($(el).closest('tr').find('td:eq(2)').html());
            $('#pTab2ModalInputEnddate').val($(el).closest('tr').find('td:eq(3)').html());
            dataBindTab2ModalBolovsruulsanGazarListForSelect2($(el).closest('tr').attr('data-bolovsruulsanbridlist'));
            dataBindTab2ModalHariutssanGazarListForSelect2($(el).closest('tr').find('td:eq(4)').attr('data-id'));
        }
    }
    function showDeleteTab2(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_TUSHAAL_ZAALT_IMPL WHERE TUSHAAL_ZAALT_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') alert('Сонгосон төлөвлөгөөний хүрээнд биелэлт болон үнэлгээ орсон тул устгах боломжгүй байна!');
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон төлөвлөгөөг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"DELETE FROM TBL_TUSHAAL_ZAALT WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab2Datatable();
                                    smallBox('Төлөвлөгөө', 'Амжилттай устгагдлаа', '#659265', 3000);
                                },
                                failure: function (response) {
                                    alert(response.d);
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
    $('#pTab2ModalForm').bootstrapValidator({
        fields: {
            pTab2ModalSelectType: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Тушаалын төрөл сонгоно уу'
                    }
                }
            },
            pTab2ModalSelectTushaal: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Тушаал сонгоно уу'
                    }
                }
            },
            pTab2ModalInputName: {
                group: '.col-md-12',
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
            pTab2ModalInputEnddate: {
                group: '.col-md-12',
                validators: {
                    date: {
                        format: 'YYYY-MM-DD',
                        message: 'Огноо буруу орсон байна. /Жил-Сар-Өдөр/'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            var valBolovsruulsanGazar = 'none', valHariutssanGazar = 'none';
            if ($.trim($('#pTab2ModalSelectBolovsruulsanGazar').val()) != '') valBolovsruulsanGazar = $.trim($('#pTab2ModalSelectBolovsruulsanGazar').val());
            if ($.trim($('#pTab2ModalSelectHariutssanGazar').val()) != '') valHariutssanGazar = $.trim($('#pTab2ModalSelectHariutssanGazar').val());
            if (valHariutssanGazar != 'none') {
                if ($('#pTab2ModalHeaderLabel').text() == 'нэмэх') {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/TUSHAALS_ZAALT_INSERT",
                        data: '{"P_TUSHAAL_ID":"' + $('#pTab2ModalSelectTushaal option:selected').val() + '", "P_NAME":"' + replaceDisplayToDatabase($.trim($('#pTab2ModalInputName').val())) + '", "P_BOLOVSRUULSAN_BRLIST":"' + valBolovsruulsanGazar + '", "P_HARIUTSSAN_BRLIST":"' + valHariutssanGazar + '", "P_STAFFID":"' + $('#indexUserId').html() + '", "P_ENDDATE":"' + $.trim($('#pTab2ModalInputEnddate').val()) + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            dataBindTab2Datatable();
                            $('#pTab2Modal').modal('hide');
                            smallBox('Төлөвлөгөө', 'Амжилттай хадгалагдлаа', '#659265', 3000);
                        },
                        failure: function (response) {
                            alert(response.d);
                        },
                        error: function (xhr, status, error) {
                            window.location = '../#pg/error500.aspx';
                        }
                    });
                }
                else {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/TUSHAALS_ZAALT_UPDATE",
                        data: '{"P_ID":"' + $('#pTab2ID').html() + '", "P_TUSHAAL_ID":"' + $('#pTab2ModalSelectTushaal option:selected').val() + '", "P_NAME":"' + replaceDisplayToDatabase($.trim($('#pTab2ModalInputName').val())) + '", "P_BOLOVSRUULSAN_BRLIST":"' + valBolovsruulsanGazar + '", "P_HARIUTSSAN_BRLIST":"' + valHariutssanGazar + '", "P_STAFFID":"' + $('#indexUserId').html() + '", "P_ENDDATE":"' + $.trim($('#pTab2ModalInputEnddate').val()) + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            dataBindTab2Datatable();
                            $('#pTab2Modal').modal('hide');
                            smallBox('Төлөвлөгөө', 'Амжилттай хадгалагдлаа', '#659265', 3000);
                        },
                        failure: function (response) {
                            alert(response.d);
                        },
                        error: function (xhr, status, error) {
                            window.location = '../#pg/error500.aspx';
                        }
                    });
                }
            }
            else {
                alert('Хариуцсан газар заавал сонгоно уу!');
                $('#pTab2ModalForm').find('.modal-footer').find(':submit').prop('disabled', false);
            }
        }
    });
    function saveIsClosed(el) {
        var valIsSubmit = '1';
        if ($(el).prop('checked')) {
            valIsSubmit = '0';
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
            data: '{"qry":"UPDATE TBL_TUSHAAL_ZAALT SET ISCLOSED=' + valIsSubmit + ' WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function () {
                smallBox('Төлөвлөгөө хаагдсан эсэх', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    //tab1t3
    function dataBindTab1t3Datatable() {
        var valData = '';
        var valIsEdit = '0';
        showLoader('loaderTab1t3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TushaalTypeDatatable",
            data: '{"which":"2"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (funcCheckRoles('1,28')) {
                    valIsEdit = '1';
                }
                valData = "<table id=\"pTab1t3Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Тушаалын утга</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Засварлах</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td class=\"text-center\">" + value.ROWNO + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td>";
                    valData += "<div class=\"btn-group\">";
                    if (valIsEdit == "1") {
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab1t3(this,'засах');\" data-target=\"#pTab1t3Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab1t3(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                    }
                    valData += "</div>";
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_pTab1t3Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab1t3Datatable').dataTable({aaSorting: [[1, 'desc']],\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab1t3Datatable) {responsiveHelper_pTab1t3Datatable = new ResponsiveDatatablesHelper($('#pTab1t3Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab1t3Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab1t3Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\", \"orderable\": false },null,{ \"sWidth\": \"55px\" }]});";
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
        $('#pTab1t3ID').html('');
        $('#pTab1t3ModalInputName').val("");
        if (isinsupt == 'засах') {
            $('#pTab1t3ID').html($(el).closest('tr').attr('data-id'));
            $('#pTab1t3ModalInputName').val($(el).closest('tr').find('td:eq(1)').html());
        }
    }
    function showDeleteTab1t3(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_TUSHAAL WHERE TUSHAAL_TYPE_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') alert('Сонгосон тушаалын төрлийн хүрээнд тушаал орсон тул устгах боломжгүй байна!');
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон тушаалын төрлийг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"DELETE FROM TBL_TUSHAAL_TYPE WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab1t3Datatable();
                                    $('#pTab1т3Modal').modal('hide');
                                    smallBox('Тушаалын төрөл', 'Амжилттай устгагдлаа', '#659265', 3000);
                                },
                                failure: function (response) {
                                    alert(response.d);
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
    $('#pTab1t3ModalForm').bootstrapValidator({
        fields: {
            pTab1t3ModalInputName: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    stringLength: {
                        max: 255,
                        message: 'Уртдаа 255 тэмдэгт авна'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            var valData = '';
            if ($('#pTab1t3ModalHeaderLabel').text() == 'нэмэх') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"INSERT INTO TBL_TUSHAAL_TYPE (ID, NAME, TYPE) VALUES (TBLLASTID(\'TBL_TUSHAAL_TYPE\'), \'' + replaceDisplayToDatabase($.trim($('#pTab1t3ModalInputName').val())) + '\', 2)"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab1t3Datatable();
                        $('#pTab1t3Modal').modal('hide');
                        smallBox('Тушаалын төрөл', 'Амжилттай хадгалагдлаа', '#659265', 3000);
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/TushaalTypeListForDDL",
                            data: '{"which":"2"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += '<option value="' + value.ID + '" title="' + replaceDatabaseToDisplay(value.NAME) + '">' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                                });
                                $("#pTab1SelectType").html('<option value="">Бүгд</option>' + valData);
                                $("#pTab2SelectType").html('<option value="">Бүгд</option>' + valData);
                                $("#pTab3SelectType").html('<option value="">Бүгд</option>' + valData);
                                $("#pTab4t1SelectType").html('<option value="">Бүгд</option>' + valData);
                                $("#pTab5SelectType").html('<option value="">Бүгд</option>' + valData);
                                $("#pTab1ModalSelectType").html('<option value="">- Сонго -</option>' + valData);
                                $("#pTab2ModalSelectType").html('<option value="">- Сонго -</option>' + valData);
                            },
                            failure: function (response) {
                                alert('FAILURE: ' + response.d);
                            },
                            error: function (xhr, status, error) {
                                window.location = '../#pg/error500.aspx';
                            }
                        });
                        $('#divBindTab1Table, #divBindTab2Table, #divBindTab3Table, #pTab5Datatable').html('');
                    },
                    failure: function (response) {
                        alert(response.d);
                    },
                    error: function (xhr, status, error) {
                        window.location = '../#pg/error500.aspx';
                    }
                });
            }
            else {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"UPDATE TBL_TUSHAAL_TYPE SET NAME = \'' + replaceDisplayToDatabase($.trim($('#pTab1t3ModalInputName').val())) + '\' WHERE ID=' + $('#pTab1t3ID').html() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab1t3Datatable();
                        $('#pTab1t3Modal').modal('hide');
                        smallBox('Тушаалын төрөл', 'Амжилттай хадгалагдлаа', '#659265', 3000);
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/TushaalTypeListForDDL",
                            data: '{"which":"2"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += '<option value="' + value.ID + '" title="' + replaceDatabaseToDisplay(value.NAME) + '">' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                                });
                                $("#pTab1SelectType").html('<option value="">Бүгд</option>' + valData);
                                $("#pTab2SelectType").html('<option value="">Бүгд</option>' + valData);
                                $("#pTab3SelectType").html('<option value="">Бүгд</option>' + valData);
                                $("#pTab4t1SelectType").html('<option value="">Бүгд</option>' + valData);
                                $("#pTab5SelectType").html('<option value="">Бүгд</option>' + valData);
                                $("#pTab1ModalSelectType").html('<option value="">- Сонго -</option>' + valData);
                                $("#pTab2ModalSelectType").html('<option value="">- Сонго -</option>' + valData);
                            },
                            failure: function (response) {
                                alert('FAILURE: ' + response.d);
                            },
                            error: function (xhr, status, error) {
                                window.location = '../#pg/error500.aspx';
                            }
                        });
                        $('#divBindTab1Table, #divBindTab2Table, #divBindTab3Table, #pTab5Datatable').html('');
                    },
                    failure: function (response) {
                        alert(response.d);
                    },
                    error: function (xhr, status, error) {
                        window.location = '../#pg/error500.aspx';
                    }
                });
            }
        }
    });
    //tab3
    function pTab3SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr":"' + $('#pTab3SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#pTab3SelectHariutssanGazar").html('<option value="">Бүгд</option>' + valData);
                $("#pTab3SelectBolovsruulsanGazar").html('<option value="">Бүгд</option>' + valData);
                $('#pTab3SelectHariutssanGazar').val($('#indexUserGazarId').html());
                dataBindTab3Datatable();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab3Datatable() {
        var valData = '';
        var evalDisabled = "disabled";
        showLoader('loaderTab3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TushaalsaidTab3Datatable",
            data: '{"yr":"' + $('#pTab3SelectYear option:selected').val() + '", "qrtr":"' + $('#pTab3SelectQuarter option:selected').val() + '", "type":"' + $('#pTab3SelectType option:selected').val() + '", "hariutssangazar":"' + $('#pTab3SelectHariutssanGazar option:selected').val() + '", "bolovsruulsangazar":"' + $('#pTab3SelectBolovsruulsanGazar option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (funcCheckRoles('1,33')) {
                    evalDisabled = "";
                }
                valData = "<table id=\"pTab3Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Тушаалын утга</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Төлөвлөгөө</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хэрэгжүүлэх эцсийн хугацаа</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах газар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Биелэлт оруулах</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хавсралт файл</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ZAALT_ID + "\">";
                    valData += "<td class=\"text-center\">" + value.ROWNO + "</td>";
                    valData += "<td><b>Батлагдсан огноо: </b>" + value.SUCCESS_DATE + "<br><b>Тушаалын дугаар: </b>" + replaceDatabaseToDisplay(value.TUSHAAL_NUMBER) + "<br/><b>Тушаалын утга: </b>" + replaceDatabaseToDisplay(value.TUSHAAL_NAME) + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.ZAALT_NAME) + "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">" + value.ENDDATE + "</td>";
                    valData += "<td data-id=\"" + value.HARIUTSSAN_BRIDLIST + "\" class=\"text-center\" style=\"vertical-align:middle;\">" + value.HARIUTSSAN_BRNAMELIST + "</td>";
                    valData += "<td style=\"text-align:center; vertical-align:middle;\">";
                    if (value.ISEVAL == "0") valData += "<a href=\"../pg/tushaalsaidTab3ImplModal.aspx?id=" + value.ZAALT_ID + "&yr=" + $('#pTab3SelectYear option:selected').val() + "&qrtr=" + $('#pTab3SelectQuarter option:selected').val() + "\" data-target=\"#pTab3Modal\" data-toggle=\"modal\" style=\"cursor:pointer\"><i class=\"" + value.ISIMPL + "\"></i></a>";
                    else valData += "<a href=\"javascript:void(0);\" style=\"cursor:pointer\" onclick=\"alert('Сонгосон төлөвлөгөөнд хамааралтай үнэлгээ орсон тул биелэлт засварлах боломжгүй байна! Үнэлгээ хэсэгрүү орж биелэлт болон үнэлгээг харна уу!');\"><i class=\"" + value.ISIMPL + "\"></i></a>";
                    valData += "</td>";
                    valData += "<td style=\"text-align:center; vertical-align:middle;\">";
                    if (value.FILENAME != "") valData += "<a href=\"../files/tushaal/" + value.FILENAME + "\" class=\"btn btn-link btn-xs\" style=\"padding:0px; border:none;\" download title=\"Хавсаргасан файл татах\"><i class=\"fa fa-paperclip fa-lg\"></i></a></td>";
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_pTab3Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab3Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab3Datatable) {responsiveHelper_pTab3Datatable = new ResponsiveDatatablesHelper($('#pTab3Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab3Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab3Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\", \"orderable\": false },null, null, { \"sWidth\": \"70px\" },{ \"sWidth\": \"70px\" }, { \"sWidth\": \"52px\" }, { \"sWidth\": \"22px\" }]});";
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
        pTab3SetFirstControls();
    });
    $("#pTab3SelectQuarter").change(function () {
        dataBindTab3Datatable();
    });
    $("#pTab3SelectType").change(function () {
        dataBindTab3Datatable();
    });
    $("#pTab3SelectHariutssanGazar").change(function () {
        dataBindTab3Datatable();
    });
    $("#pTab3SelectBolovsruulsanGazar").change(function () {
        dataBindTab3Datatable();
    });
    //tab4t1
    function pTab4t1SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr":"' + $('#pTab3SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#pTab4t1SelectHariutssanGazar").html('<option value="">Бүгд</option>' + valData);
                $("#pTab4t1SelectBolovsruulsanGazar").html('<option value="">Бүгд</option>' + valData);
                dataBindTab4t1Datatable();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab4t1Datatable() {
        var valData = '';
        showLoader('loaderTab4t1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TushaalsaidTab4t1Datatable",
            data: '{"yr":"' + $('#pTab4t1SelectYear option:selected').val() + '", "qrtr":"' + $('#pTab4t1SelectQuarter option:selected').val() + '", "type":"' + $('#pTab4t1SelectType option:selected').val() + '", "hariutssangazar":"' + $('#pTab4t1SelectHariutssanGazar option:selected').val() + '", "bolovsruulsangazar":"' + $('#pTab4t1SelectBolovsruulsanGazar option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData = "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\"><thead style=\"background-color:#C6D9F1; -webkit-print-color-adjust:exact;\"><tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:2%;\">#</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:24%;\">Тушаал</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:24%;\">Төлөвлөгөө</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:6%;\">Хариуцах газар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:40%;\">Биелэлт</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:4%;\">Үнэлгээ</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td style=\"vertical-align:top; text-align:center; border: 1px solid #000; padding:5px;\">" + value.ROWNO + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:justify; border: 1px solid #000; padding:5px;\"><b>Батлагдсан огноо: </b>" + value.SUCCESS_DATE + "<br><b>Тушаалын дугаар: </b>" + replaceDatabaseToDisplay(value.TUSHAAL_NUMBER) + "<br/><b>Тушаалын утга: </b>" + replaceDatabaseToDisplay(value.TUSHAAL_NAME) + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:justify; border: 1px solid #000; padding:5px;\">" + replaceDatabaseToDisplay(value.ZAALT_NAME) + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:center; border: 1px solid #000; padding:5px;\">";
                    if (value.HARIUTSSAN_BRNAMELIST == "none") valData += "-";
                    else valData += value.HARIUTSSAN_BRNAMELIST;
                    valData += "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:justify; border: 1px solid #000; padding:5px;\">" + replaceDatabaseToDisplay(value.IMPL) + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:center; border: 1px solid #000; padding:5px;\">" + value.EVAL + "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                $("#divBindTab4t1Table").html(valData);
                $('#pTab4t1YearHalfYear').html($('#pTab4t1SelectYear option:selected').val() + ' оны ' + $('#pTab4t1SelectQuarter option:selected').val() + '-р улирлын байдлаар');
                hideLoader('loaderTab4t1');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab4t1SelectYear").change(function () {
        pTab4t1SetFirstControls();
    });
    $("#pTab4t1SelectQuarter, #pTab4t1SelectType, #pTab4t1SelectHariutssanGazar, #pTab4t1SelectBolovsruulsanGazar").change(function () {
        dataBindTab4t1Datatable();
    });
    //tab5
    function pTab5SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr":"' + $('#pTab5SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#pTab5SelectHariutssanGazar").html('<option value="">Бүгд</option>' + valData);
                $("#pTab5SelectBolovsruulsanGazar").html('<option value="">Бүгд</option>' + valData);
                $('#pTab5SelectHariutssanGazar').val($('#indexUserGazarId').html());
                dataBindTab5Datatable();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab5Datatable() {
        var valData = '';
        var evalDisabled = "";
        showLoader('loaderTab5');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TushaalsaidTab5Datatable",
            data: '{"yr":"' + $('#pTab5SelectYear option:selected').val() + '", "qrtr":"' + $('#pTab5SelectQuarter option:selected').val() + '", "type":"' + $('#pTab5SelectType option:selected').val() + '", "hariutssangazar":"' + $('#pTab5SelectHariutssanGazar option:selected').val() + '", "bolovsruulsangazar":"' + $('#pTab5SelectBolovsruulsanGazar option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (funcCheckRoles('1,33')) {
                    evalDisabled = "";
                }
                valData = "<table id=\"pTab5Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Тушаалын утга</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Төлөвлөгөө</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хэрэгжүүлэх эцсийн хугацаа</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах газар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Биелэлт</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Өмнөх<br>үнэлгээ</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Үнэлгээ</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ZAALT_ID + "\">";
                    valData += "<td class=\"text-center\">" + value.ROWNO + "</td>";
                    valData += "<td><b>Батлагдсан огноо: </b>" + value.SUCCESS_DATE + "<br><b>Тушаалын дугаар: </b>" + replaceDatabaseToDisplay(value.TUSHAAL_NUMBER) + "<br/><b>Тушаалын утга: </b>" + replaceDatabaseToDisplay(value.TUSHAAL_NAME) + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.ZAALT_NAME) + "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">" + value.ENDDATE + "</td>";
                    valData += "<td data-id=\"" + value.HARIUTSSAN_BRIDLIST + "\" class=\"text-center\" style=\"vertical-align:middle;\">" + value.HARIUTSSAN_BRNAMELIST + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.IMPL) + "</td>";
                    valData += "<td style=\"text-align:center;\">" + value.PREVEVAL + "</td>";
                    if (value.EVAL == "") valData += "<td><select" + evalDisabled + " class=\"bg-color-blueLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding:0;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                    else {
                        if (value.EVAL == "0") valData += "<td><select" + evalDisabled + " class=\"bg-color-red form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding:0;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "10") valData += "<td><select" + evalDisabled + " class=\"bg-color-red form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding:0;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "30") valData += "<td><select" + evalDisabled + " class=\"bg-color-red form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding:0;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "50") valData += "<td><select" + evalDisabled + " class=\"bg-color-orange form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding:0;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "70") valData += "<td><select" + evalDisabled + " class=\"bg-color-orange form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding:0;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "80") valData += "<td><select" + evalDisabled + " class=\"bg-color-greenLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding:0;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "90") valData += "<td><select" + evalDisabled + " class=\"bg-color-greenLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding:0;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "100") valData += "<td><select" + evalDisabled + " class=\"bg-color-greenLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding:0;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">100 %</option></select></td>";
                    }
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_pTab5Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab5Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab5Datatable) {responsiveHelper_pTab5Datatable = new ResponsiveDatatablesHelper($('#pTab5Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab5Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab5Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\", \"orderable\": false },{ \"sWidth\": \"285px\" }, { \"sWidth\": \"265px\" }, { \"sWidth\": \"70px\" }, { \"sWidth\": \"70px\" }, null, { \"sWidth\": \"50px\" }, { \"sWidth\": \"50px\" }]});";
                valData += "<\/script>";
                $("#divBindTab5Table").html(valData);
                hideLoader('loaderTab5');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab5SelectYear").change(function () {
        pTab5SetFirstControls();
    });
    $("#pTab5SelectQuarter, #pTab5SelectType, #pTab5SelectHariutssanGazar, #pTab5SelectBolovsruulsanGazar").change(function () {
        dataBindTab5Datatable();
    });
    function saveEval(me) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_TUSHAAL_ZAALT_IMPL WHERE TUSHAAL_ZAALT_ID=' + $(me).closest('tr').attr('data-id') + ' AND YR=' + $('#pTab5SelectYear option:selected').val() + ' AND QRTR=' + $('#pTab5SelectQuarter option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                var valQry = '';
                if (data.d == '0') {
                    valQry = 'INSERT INTO TBL_TUSHAAL_ZAALT_IMPL (ID, TUSHAAL_ZAALT_ID, YR, QRTR, EVAL, EVAL_CREATED_STAFFID, EVAL_CREATED_DATE) VALUES (TBLLASTID(\'TBL_TUSHAAL_ZAALT_IMPL\'), ' + $(me).closest('tr').attr('data-id') + ', ' + $('#pTab5SelectYear option:selected').val() + ', ' + $('#pTab5SelectQuarter option:selected').val() + ', ' + $(me).val().replace('none', 'null') + ', ' + '<%= Session["LM_UserID"] %>' + ', sysdate)';
                }
                else {
                    valQry = 'UPDATE TBL_TUSHAAL_ZAALT_IMPL SET EVAL=' + $(me).val().replace('none', 'null') + ', EVAL_MODIFY_STAFFID=' + '<%= Session["LM_UserID"] %>' + ', EVAL_MODIFY_DATE=sysdate WHERE TUSHAAL_ZAALT_ID=' + $(me).closest('tr').attr('data-id') + ' AND YR=' + $('#pTab5SelectYear option:selected').val() + ' AND QRTR=' + $('#pTab5SelectQuarter option:selected').val() + '';
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"'+valQry+'"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        smallBox('Үнэлгээ', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        window.location = '../#pg/error500.aspx';
                    }
                });
                if ($(me).val() == "none") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-blueLight form-control'); $(me).css('border', 'none'); }
                else if ($(me).val() == "0" || $(me).val() == "10" || $(me).val() == "30") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-red form-control'); $(me).css('border', 'none'); }
                else if ($(me).val() == "50" || $(me).val() == "70") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-orange form-control'); $(me).css('border', 'none'); }
                else if ($(me).val() == "80" || $(me).val() == "90" || $(me).val() == "100") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-greenLight form-control'); $(me).css('border', 'none'); }
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }

    $('#pTab1ModalInputSuccessdate, #pTab1ModalInputReceivedate, #pTab1ModalInputDonedate, #pTab2ModalInputEnddate, #pTab1ZaaltModalInputEnddate').datepicker({
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

