<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="policy.aspx.cs" Inherits="LMWebApp.pg.policy" %>
<style>
    .nav-tabs > li {
        font-weight:bold;
    }
    .nav-tabs > li.active {
        font-style:italic;
    }
</style>
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    <h1 class="page-title txt-color-blueDark" style="margin-bottom:12px;">
        <i class="fa-fw fa fa-home"></i>
        <span id="pageUrlModuleName" runat="server" style="text-transform:uppercase;">> </span>
    </h1>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
            <ul class="nav nav-tabs bordered">
                <li id="pTab1Li" runat="server" class="active" onclick="pDatabindTabs(this)" style="width:175px; text-align:center;">
                    <a data-toggle="tab" href="#pTab1" style=" color: #826430; background-color: #efe1b3;">
                        <i class="fa fa-fw fa-lg fa-list-ul"></i>
                        Төлөвлөгөө
                    </a>
                </li>
                <li id="pTab4Li" runat="server" onclick="pDatabindTabs(this)" style="width:175px; text-align:center;">
                    <a data-toggle="tab" href="#pTab4" style="color: #356635; background-color: #cde0c4;">
                        <i class="fa fa-fw fa-lg fa-edit"></i>
                        Биелэлт 
                    </a>
                </li>                
                <li id="pTab6Li" runat="server" onclick="pDatabindTabs(this)" style="width:175px; text-align:center;">
                    <a data-toggle="tab" href="#pTab6" style="color: #305d8c; background-color: #d6dde7;">
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
            <div class="tab-content">
                <div id="pTab1" runat="server" class="tab-pane active">
                    <ul class="nav nav-tabs bordered">
                        <li id="pTab1t1Li" runat="server" onclick="pDatabindTabs(this)" class="active">
                            <a data-toggle="tab" href="#pTab1t1"><i class="fa fa-fw fa-lg fa-table"></i> Төлөвлөгөө</a>
                        </li>
                        <li id="pTab1t2Li" runat="server" onclick="pDatabindTabs(this)" class="pull-right">
                            <a data-toggle="tab" href="#pTab1t2"><i class="fa fa-fw fa-lg fa-table"></i> Зорилт</a>
                        </li>
                        <li id="pTab1t3Li" runat="server" onclick="pDatabindTabs(this)" class="pull-right">
                            <a data-toggle="tab" href="#pTab1t3"><i class="fa fa-fw fa-lg fa-table"></i> Бодлого</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="pTab1t1" class="tab-pane active">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-table"></i></span>
                                    <h2>Төлөвлөгөө</h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important; width:250px;">
                                            <select id="pTab3SelectZorilt" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            Зорилт:
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important; width:200px;">
                                            <select id="pTab3SelectBodlogo" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            Бодлого:
                                        </div> 
                                    </div>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div class="Colvis TableTools"  style="right:440px; top:8px; z-index:5;">
                                        <button id="pTab3Add" runat="server" class="btn btn btn-primary btn-xs" data-target="#pTab3Modal" data-toggle="modal" onclick="showAddEditTab3(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
                                    <div class="Colvis TableTools" style="left:240px; top:0px; z-index:5; margin-top:2px;">
                                        <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa-pencil"></i></a> Мэдээлэл засварлах<br />
                                        <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa fa-trash-o"></i></a> Мэдээлэл устгах
                                    </div>
                                    <div class="Colvis TableTools" style="right:128px; top:4px; z-index:5; margin-top:3px; width:80px;">
                                        <select id="pTab3SelectGazar" class="form-control" style="padding:0 0;"><option value="">Бүгд</option></select>
                                    </div>
                                    <div class="Colvis TableTools" style="right:215px; top:4px; z-index:5; margin-top: 3px;line-height: 14px;text-align: right;"><label>Хариуцах<br />газар: </label></div>
                                    <div class="Colvis TableTools" style="right:285px; top:4px; z-index:5; margin-top:3px; width:80px;">
                                         <select id="pTab3SelectIsteam" class="form-control" style="padding:0;"><option value="">Бүгд</option><option value="1">Хамтран</option><option value="0">Толгойлон</option></select>
                                    </div>
                                    <div class="Colvis TableTools" style="right:370px; top:4px; z-index:5; margin-top: 3px;line-height: 14px;text-align: right;"><label>Хариуцах<br />хэлбэр: </label></div>
                                    <div id="loaderTab3" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div id="divBindTab3Table" class="widget-body no-padding">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab1t2" class="tab-pane">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-table"></i></span>
                                    <h2>Зорилт</h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important; width:200px;">
                                            <select id="pTab2SelectBodlogo" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            Бодлого:
                                        </div> 
                                    </div>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div class="Colvis TableTools"  style="right:130px; top:8px; z-index:5;">
                                        <button id="pTab2Add" runat="server" class="btn btn btn-primary btn-xs" data-target="#pTab2Modal" data-toggle="modal" onclick="showAddEditTab2(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
                                    <div class="Colvis TableTools" style="left:240px; top:0px; z-index:5; margin-top:2px;">
                                        <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa-pencil"></i></a> Мэдээлэл засварлах<br />
                                        <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa fa-trash-o"></i></a> Мэдээлэл устгах
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
                                    <h2>Бодлого</h2>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div class="Colvis TableTools"  style="right:130px; top:8px; z-index:5;">
                                        <button id="pTab1Add" runat="server" class="btn btn btn-primary btn-xs" data-target="#pTab1Modal" data-toggle="modal" onclick="showAddEditTab1(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
                                    <div class="Colvis TableTools" style="left:240px; top:0px; z-index:5; margin-top:2px;">
                                        <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa-pencil"></i></a> Мэдээлэл засварлах<br />
                                        <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa fa-trash-o"></i></a> Мэдээлэл устгах
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
                    </div>
                </div>
                <div id="pTab4" runat="server" class="tab-pane">
                    <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"><i class="fa fa-table"></i></span>
                            <h2>Биелэлт</h2>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab4SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab4SelectYearHalf" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">Эхний хагас жил</option><option value="2">Сүүлийн хагас жил</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important; width:250px;">
                                    <select id="pTab4SelectZorilt" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    Зорилт:
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important; width:200px;">
                                    <select id="pTab4SelectBodlogo" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    Бодлого:
                                </div> 
                            </div>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div class="Colvis TableTools" style="right:128px; top:4px; z-index:5; margin-top:3px; width:80px;">
                                <select id="pTab4SelectGazar" class="form-control" style="padding:0 0;"><option value="">Бүгд</option></select>
                            </div>
                            <div class="Colvis TableTools" style="right:215px; top:4px; z-index:5; margin-top: 3px;line-height: 14px;text-align: right;"><label>Хариуцах<br />газар: </label></div>
                            <div class="Colvis TableTools" style="right:285px; top:4px; z-index:5; margin-top:3px; width:80px;">
                                    <select id="pTab4SelectIsteam" class="form-control" style="padding:0;"><option value="">Бүгд</option><option value="1">Хамтран</option><option value="0">Толгойлон</option></select>
                            </div>
                            <div class="Colvis TableTools" style="right:370px; top:4px; z-index:5; margin-top: 3px;line-height: 14px;text-align: right;"><label>Хариуцах<br />хэлбэр: </label></div>
                            <div id="loaderTab4" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="divBindTab4Table" class="widget-body no-padding">
                                        
                            </div>
                        </div>
                    </div>
                </div>
                <div id="pTab6" runat="server" class="tab-pane">
                    <ul class="nav nav-tabs bordered">
                        <li id="pTab6t1Li" runat="server" onclick="pDatabindTabs(this)" class="active">
                            <a data-toggle="tab" href="#pTab6t1"><i class="fa fa-fw fa-lg fa-file-text"></i> Дэлгэрэнгүй тайлан /тухайн жил/</a>
                        </li>
                        <li id="pTab6t2Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab6t2"><i class="fa fa-fw fa-lg fa-file-text"></i> Удаашралтай арга хэмжээ /тухайн жил/</a>
                        </li>
                        <li id="pTab6t3Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab6t3"><i class="fa fa-fw fa-lg fa-file-text"></i> Дэлгэрэнгүй тайлан /нэгдсэн биелэлт/</a>
                        </li>
                        <li id="pTab6t4Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab6t4"><i class="fa fa-fw fa-lg fa-file-text"></i> Удаашралтай арга хэмжээ /нэгдсэн биелэлт/</a>
                        </li>
                        <li id="pTab6t7Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab6t7"><i class="fa fa-fw fa-lg fa-file-text"></i> Хяналт</a>
                        </li>
                        <li id="pTab6t5Li" runat="server" onclick="pDatabindTabs(this)" class="pull-right">
                            <a data-toggle="tab" href="#pTab6t5"><i class="fa fa-fw fa-lg fa-edit"></i> Нэгдсэн биелэлт</a>
                        </li>
                        <li id="pTab6t6Li" runat="server" onclick="pDatabindTabs(this)" class="pull-right">
                            <a data-toggle="tab" href="#pTab6t6"><i class="fa fa-fw fa-lg fa-table"></i> Тайлант архив</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="pTab6t1" class="tab-pane active">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab6t1SelectYear" runat="server" class="form-control" style="padding:1px">
                                                <option>2012</option>
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
                                        <div style="width:150px; float:left; margin-right:10px;">
                                            <select id="pTab6t1SelectYearHalf" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">Эхний хагас жил</option>
                                                <option value="2">Сүүлийн хагас жил</option>
                                            </select>
                                        </div>
                                        <div style="width:70px; float:left; margin-right:10px; padding-top:3px; line-height: 13px; text-align: right;">Хариуцах хэлбэр:</div>
                                        <div style="width:81px; float:left; margin-right:10px;">
                                            <select id="pTab6t1SelectIsteam" class="form-control" style="padding:1px">
                                                <option value="">Бүгд</option>
                                                <option value="1">Хамтран</option>
                                                <option value="0">Толгойлон</option>
                                            </select>
                                        </div>
                                        <div style="width:113px; float:left; margin-right:10px; padding-top:3px; line-height: 13px; text-align: right;">Биелэлт<br />тайлагнасан эсэх:</div>
                                        <div style="width:115px; float:left; margin-right:10px;">
                                            <select id="pTab6t1SelectIsimpl" class="form-control" style="padding:1px">
                                                <option value="">Бүгд</option>
                                                <option value="1">Тайлагнасан</option>
                                                <option value="0">Тайлагнаагүй</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab6t1', 'Хэрэгжилтийн дэлгэрэнгүй тайлан')">
                                                <i class="fa fa-file-word-o"></i>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab6t1')">
                                                <i class="fa fa-print"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="loaderTab6t1" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divpTab6t1" class="reports" style="margin:0 10px 10px 10px;">
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                        <label id="pTab6t1TypeName" runat="server" style="font-weight: bold;"></label> -Н ДЭЛГЭРЭНГҮЙ ТАЙЛАН
                                    </div>
                                    <div style="text-align: right; font-size: 14px; padding-bottom: 3px; text-transform: lowercase; line-height: 5px;">
                                        (<label id="pTab6t1Year" runat="server"></label> 
                                        ОНЫ 
                                        <label id="pTab6t1YearHalf" runat="server"></label>ИЙН БАЙДЛААР)
                                    </div>
                                    <div id="divBindTab6t1Table"></div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab6t2" class="tab-pane">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab6t2SelectYear" runat="server" class="form-control" style="padding:1px">
                                                <option>2012</option>
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
                                        <div style="width:150px; float:left; margin-right:10px;">
                                            <select id="pTab6t2SelectYearHalf" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">Эхний хагас жил</option>
                                                <option value="2">Сүүлийн хагас жил</option>
                                            </select>
                                        </div>
                                        <div style="width:70px; float:left; margin-right:10px; padding-top:3px; line-height: 13px; text-align: right;">Хариуцах хэлбэр: </div>
                                        <div style="width:81px; float:left; margin-right:10px;">
                                            <select id="pTab6t2SelectIsteam"  class="form-control" style="padding:1px">
                                                <option value="">Бүгд</option>
                                                <option value="1">Хамтран</option>
                                                <option value="0">Толгойлон</option>
                                            </select>
                                        </div>
                                        <div style="width:113px; float:left; margin-right:10px; padding-top:3px; line-height: 13px; text-align: right;">Биелэлт<br />тайлагнасан эсэх:</div>
                                        <div style="width:115px; float:left; margin-right:10px;">
                                            <select id="pTab6t2SelectIsimpl" class="form-control" style="padding:1px">
                                                <option value="">Бүгд</option>
                                                <option value="1">Тайлагнасан</option>
                                                <option value="0">Тайлагнаагүй</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab6t2', 'Хэрэгжилт удааширсан')">
                                                <i class="fa fa-file-word-o"></i>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab6t2')">
                                                <i class="fa fa-print"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="loaderTab6t2" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divpTab6t2" class="reports" style="margin:0 10px 10px 10px;">
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                        <span id="pTab6t2TypeName" runat="server" style="text-transform:uppercase;"></span> ХЭРЭГЖИЛТ УДААШРАЛТАЙ АРГА ХЭМЖЭЭ
                                    </div>
                                    <div style="text-align: right; font-size: 14px; padding-bottom: 3px; text-transform: lowercase; line-height: 5px;">
                                        (<label id="pTab6t2Year" runat="server"></label> 
                                        ОНЫ 
                                        <label id="pTab6t2YearHalf" runat="server"></label>ИЙН БАЙДЛААР)
                                    </div>
                                    <div id="divBindTab6t2Table"></div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab6t3" class="tab-pane">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:70px; float:left; margin-right:10px; padding-top:3px; line-height: 13px; text-align: right;">Хариуцах хэлбэр: </div>
                                        <div style="width:81px; float:left; margin-right:10px;">
                                            <select id="pTab6t3SelectIsteam" class="form-control" style="padding:1px">
                                                <option value="">Бүгд</option>
                                                <option value="1">Хамтран</option>
                                                <option value="0">Толгойлон</option>
                                            </select>
                                        </div>
                                        <div style="width:113px; float:left; margin-right:10px; padding-top:3px; line-height: 13px; text-align: right;">Биелэлт<br />тайлагнасан эсэх:</div>
                                        <div style="width:115px; float:left; margin-right:10px;">
                                            <select id="pTab6t3SelectIsimpl" class="form-control" style="padding:1px">
                                                <option value="">Бүгд</option>
                                                <option value="1">Тайлагнасан</option>
                                                <option value="0">Тайлагнаагүй</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab6t3', 'Хэрэгжилтийн дэлгэрэнгүй тайлан (НБ)')">
                                                <i class="fa fa-file-word-o"></i>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab6t3')">
                                                <i class="fa fa-print"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="loaderTab6t3" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divpTab6t3" class="reports" style="margin:0 10px 10px 10px;">
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                        ДЭЛГЭРЭНГҮЙ ТАЙЛАН /НЭГДСЭН БИЕЛЭЛТ/
                                    </div>
                                    <div id="divBindTab6t3Table"></div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab6t4" class="tab-pane">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:70px; float:left; margin-right:10px; padding-top:3px; line-height: 13px; text-align: right;">Хариуцах хэлбэр: </div>
                                        <div style="width:81px; float:left; margin-right:10px;">
                                            <select id="pTab6t4SelectIsteam"  class="form-control" style="padding:1px">
                                                <option value="">Бүгд</option>
                                                <option value="1">Хамтран</option>
                                                <option value="0">Толгойлон</option>
                                            </select>
                                        </div>
                                        <div style="width:113px; float:left; margin-right:10px; padding-top:3px; line-height: 13px; text-align: right;">Биелэлт<br />тайлагнасан эсэх:</div>
                                        <div style="width:115px; float:left; margin-right:10px;">
                                            <select id="pTab6t4SelectIsimpl" class="form-control" style="padding:1px">
                                                <option value="">Бүгд</option>
                                                <option value="1">Тайлагнасан</option>
                                                <option value="0">Тайлагнаагүй</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab6t4', 'Хэрэгжилт удааширдсан (НБ)')">
                                                <i class="fa fa-file-word-o"></i>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab6t4')">
                                                <i class="fa fa-print"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="loaderTab6t4" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divpTab6t4" class="reports" style="margin:0 10px 10px 10px;">
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                        ТӨЛӨВЛӨГӨӨНӨӨС ХЭРЭГЖИЛТ НЬ УДААШРАЛТАЙ ҮНЭЛЭГДСЭН АРГА ХЭМЖЭЭНҮҮД /НЭГДСЭН БИЕЛЭЛТ/
                                    </div>
                                    <div id="divBindTab6t4Table"></div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab6t5" class="tab-pane">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-table"></i></span>
                                    <h2>Нэгдсэн биелэлт</h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important; width:250px;">
                                            <select id="pTab8SelectZorilt" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            Зорилт:
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important; width:200px;">
                                            <select id="pTab8SelectBodlogo" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            Бодлого:
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab8SelectIsteam" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option><option value="1">Хамтран</option><option value="0">Толгойлон</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            Хариуцах хэлбэр:
                                        </div> 
                                    </div>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div id="loaderTab8" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div id="divBindTab8Table" class="widget-body no-padding">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab6t6" class="tab-pane">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue col-md-6" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-table"></i></span>
                                    <h2>Тайлангийн архив</h2>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div class="Colvis TableTools"  style="right:130px; top:8px; z-index:5;">
                                        <button id="pTab9Add" runat="server" class="btn btn btn-primary btn-xs" data-target="#pTab9Modal" data-toggle="modal" onclick="showAddEditTab9(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
                                    <div class="Colvis TableTools" style="left:240px; top:0px; z-index:5; margin-top:2px;">
                                        <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa-pencil"></i></a> Мэдээлэл засварлах<br />
                                        <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa fa-trash-o"></i></a> Мэдээлэл устгах
                                    </div>
                                    <div id="loaderTab9" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div id="divBindTab9Table" class="widget-body no-padding">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab6t7" class="tab-pane">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab6t7SelectYear" runat="server" class="form-control" style="padding:1px">
                                                <option>2012</option>
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
                                        <div style="width:150px; float:left; margin-right:10px;">
                                            <select id="pTab6t7SelectYearHalf" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">Эхний хагас жил</option>
                                                <option value="2">Сүүлийн хагас жил</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab6t7', 'БББ хяналтын тайлан')">
                                                <i class="fa fa-file-word-o"></i>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab6t7')">
                                                <i class="fa fa-print"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="loaderTab6t7" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divpTab6t7" class="reports" style="margin:0 10px 10px 10px;">
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                        <span id="pTab6t7TypeName" runat="server"></span> /ХЯНАЛТЫН ТАЙЛАН/
                                    </div>
                                    <div style="text-align: right; font-size: 14px; padding-bottom: 3px; text-transform: lowercase; line-height: 5px;">
                                        (<label id="pTab6t7Year" runat="server"></label> 
                                        ОНЫ 
                                        <label id="pTab6t7YearHalf" runat="server"></label>ИЙН БАЙДЛААР)
                                    </div>
                                    <div id="divBindTab6t7Table"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="pTab5" runat="server" class="tab-pane">
                    <ul class="nav nav-tabs bordered">
                        <li id="pTab5t1Li" runat="server" onclick="pDatabindTabs(this)" class="active">
                            <a data-toggle="tab" href="#pTab5t1"><i class="glyphicon glyphicon-stats"></i> Үнэлгээ</a>
                        </li>
                        <li id="pTab5t2Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab5t2"><i class="fa fa-fw fa-lg fa-file-text"></i> Хэрэгжилт (газар)</a>
                        </li>
                        <li id="pTab5t3Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab5t3"><i class="fa fa-fw fa-lg fa-file-text"></i> Хэрэгжилт (бодлого)</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="pTab5t1" class="tab-pane active">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-table"></i></span>
                                    <h2>Үнэлгээ</h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab5SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab5SelectYearHalf" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">Эхний хагас жил</option><option value="2">Сүүлийн хагас жил</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important; width:250px;">
                                            <select id="pTab5SelectZorilt" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            Зорилт:
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important; width:200px;">
                                            <select id="pTab5SelectBodlogo" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            Бодлого:
                                        </div> 
                                    </div>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div class="Colvis TableTools" style="right:128px; top:4px; z-index:5; margin-top:3px; width:80px;">
                                        <select id="pTab5SelectGazar" class="form-control" style="padding:0 0;"><option value="">Бүгд</option></select>
                                    </div>
                                    <div class="Colvis TableTools" style="right:215px; top:4px; z-index:5; margin-top: 3px;line-height: 14px;text-align: right;"><label>Хариуцах<br />газар: </label></div>
                                    <div class="Colvis TableTools" style="right:285px; top:4px; z-index:5; margin-top:3px; width:80px;">
                                         <select id="pTab5SelectIsteam" class="form-control" style="padding:0;"><option value="">Бүгд</option><option value="1">Хамтран</option><option value="0">Толгойлон</option></select>
                                    </div>
                                    <div class="Colvis TableTools" style="right:370px; top:4px; z-index:5; margin-top: 3px;line-height: 14px;text-align: right;"><label>Хариуцах<br />хэлбэр: </label></div>
                                    <div id="loaderTab5" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div id="divBindTab5Table" class="widget-body no-padding">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab5t2" class="tab-pane">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab7t1SelectYear" runat="server" class="form-control" style="padding:1px">
                                                <option>2012</option>
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
                                        <div style="width:150px; float:left; margin-right:10px;">
                                            <select id="pTab7t1SelectYearHalf" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">Эхний хагас жил</option>
                                                <option value="2">Сүүлийн хагас жил</option>
                                            </select>
                                        </div>
                                        <div style="width:70px; float:left; margin-right:10px; padding-top:3px; line-height: 13px; text-align: right;">Хариуцах хэлбэр:</div>
                                        <div style="width:100px; float:left; margin-right:10px;">
                                            <select id="pTab7t1SelectIsteam" class="form-control" style="padding:1px;">
                                                <option value="">Бүгд</option>
                                                <option value="1">Хамтран</option>
                                                <option value="0">Толгойлон</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab7t1', 'Хэрэгжилт (бодлого)')">
                                                <i class="fa fa-file-word-o"></i>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab7t1')">
                                                <i class="fa fa-print"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="loaderTab7t1" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divpTab7t1" class="reports" style="margin:0 10px 10px 10px;">
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                        <label id="pTab7t1Year" runat="server" style="font-weight: bold;"></label> 
                                        ОНЫ 
                                        <label id="pTab7t1YearHalf" runat="server" style="font-weight: bold;"></label> 
                                        -Н ХЭРЭГЖИЛТ /БОДЛОГООР/
                                    </div>
                                    <div id="divBindTab7t1Table"></div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab5t3" class="tab-pane">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab7t2SelectYear" runat="server" class="form-control" style="padding:1px">
                                                <option>2012</option>
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
                                        <div style="width:150px; float:left; margin-right:10px;">
                                            <select id="pTab7t2SelectYearHalf" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">Эхний хагас жил</option>
                                                <option value="2">Сүүлийн хагас жил</option>
                                            </select>
                                        </div>
                                        <div style="width:70px; float:left; margin-right:10px; padding-top:3px; line-height: 13px; text-align: right;">Хариуцах хэлбэр:</div>
                                        <div style="width:100px; float:left; margin-right:10px;">
                                            <select id="pTab7t2SelectIsteam" class="form-control" style="padding:1px;">
                                                <option value="">Бүгд</option>
                                                <option value="1">Хамтран</option>
                                                <option value="0">Толгойлон</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab7t2', 'Хэрэгжилт (газар)')">
                                                <i class="fa fa-file-word-o"></i>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab7t2')">
                                                <i class="fa fa-print"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="loaderTab7t2" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divpTab7t2" class="reports" style="margin:0 10px 10px 10px;">
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                        <span id="pTab7t2TypeName" runat="server" style="text-transform:uppercase;"></span> 
                                        <label id="pTab7t2Year" runat="server" style="font-weight: bold;"></label> 
                                        ОНЫ 
                                        <label id="pTab7t2YearHalf" runat="server" style="font-weight: bold;"></label> 
                                        -Н ХЭРЭГЖИЛТ /ГАЗРААР/
                                    </div>
                                    <div id="divBindTab7t2Table"></div>
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
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="pTab1ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Бодлого&nbsp;<span id="pTab1ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pTab1ModalID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
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
									<textarea id="pTab1ModalInputName" name="pTab1ModalInputName" class="form-control" required="" placeholder="Нэр" rows="2"></textarea>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-6">
                                    <label>*Эхлэх он</label>
                                    <select id="pTab1SelectYearbegin" runat="server" class="form-control"><option value="">- Сонго -</option><option>2000</option><option>2001</option><option>2002</option><option>2003</option><option>2004</option><option>2005</option><option>2006</option><option>2007</option><option>2008</option><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option><option>2022</option><option>2023</option><option>2024</option><option>2025</option><option>2026</option><option>2027</option><option>2028</option><option>2029</option><option>2030</option><option>2031</option><option>2032</option><option>2033</option><option>2034</option><option>2035</option><option>2036</option><option>2037</option><option>2038</option><option>2039</option><option>2040</option></select>
                                </div>
                                <div class="col-md-6">
                                    <label>*Дуусах он</label>
                                    <select id="pTab2SelectYearend" runat="server" class="form-control"><option value="">- Сонго -</option><option>2000</option><option>2001</option><option>2002</option><option>2003</option><option>2004</option><option>2005</option><option>2006</option><option>2007</option><option>2008</option><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option><option>2022</option><option>2023</option><option>2024</option><option>2025</option><option>2026</option><option>2027</option><option>2028</option><option>2029</option><option>2030</option><option>2031</option><option>2032</option><option>2033</option><option>2034</option><option>2035</option><option>2036</option><option>2037</option><option>2038</option><option>2039</option><option>2040</option></select>
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
<div id="pTab2Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="pTab2ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Зорилт&nbsp;<span id="pTab2ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pTab2ModalID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label>*Бодлого</label>
                                    <select id="pTab2ModalSelectBodlogo" runat="server" class="form-control"><option value="">- Сонго -</option></select>
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
									<textarea id="pTab2ModalInputName" name="pTab2ModalInputName" class="form-control" required="" placeholder="Нэр" rows="2"></textarea>
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
<div id="pTab3Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="pTab3ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Төлөвлөгөө&nbsp;<span id="pTab3ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pTab3ModalID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label>*Бодлого</label>
                                    <select id="pTab3ModalSelectBodlogo" runat="server" class="form-control"><option value="">- Сонго -</option></select>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label>*Зорилт</label>
                                    <select id="pTab3ModalSelectZorilt" runat="server" class="form-control" disabled><option value="">- Сонго -</option></select>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-3">
                                    <label class="control-label">*Дугаар</label>
									<input id="pTab3ModalInputNo" name="pTab2ModalInputNo" class="form-control" type="text" placeholder="Дугаар"/>
                                </div>
                                <div class="col-md-9">
                                    <label class="control-label">*Төлөвлөгөө</label>
									<textarea id="pTab3ModalInputName" name="pTab2ModalInputName" class="form-control" required="" placeholder="Төлөвлөгөө" rows="2"></textarea>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-6">
                                    <label class="control-label">*Хүрэх үр дүн</label>
									<textarea id="pTab3ModalInputResult" name="pTab3ModalInputResult" class="form-control" required="" placeholder="Төлөвлөгөө" rows="2"></textarea>
                                </div>
                                <div class="col-md-6">
                                    <label class="control-label">*Шалгуур үзүүлэлт</label>
									<textarea id="pTab3ModalInputCriteria" name="pTab3ModalInputCriteria" class="form-control" required="" placeholder="Шалгуур үзүүлэлт" rows="2"></textarea>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-4">
                                    <label class="control-label" style="display:block;">*Хариуцах хэлбэр</label>
                                    <label class="radio radio-inline" style="margin-top:0;">
										<input id="pModalInputIsteam1" name="pModalInputIsteam" type="radio" class="radiobox" value="1">
										<span>Хамтран</span>
									</label>
									<label class="radio radio-inline">
										<input id="pModalInputIsteam0" name="pModalInputIsteam" type="radio" class="radiobox" value="0">
										<span>Толгойлон</span>  
									</label>
                                </div>
                                <div class="col-md-4">
                                    <label>*Эхлэх он</label>
                                    <select id="pTab3SelectYearbegin" runat="server" class="form-control"><option value="">- Сонго -</option><option>2000</option><option>2001</option><option>2002</option><option>2003</option><option>2004</option><option>2005</option><option>2006</option><option>2007</option><option>2008</option><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option><option>2022</option><option>2023</option><option>2024</option><option>2025</option><option>2026</option><option>2027</option><option>2028</option><option>2029</option><option>2030</option><option>2031</option><option>2032</option><option>2033</option><option>2034</option><option>2035</option><option>2036</option><option>2037</option><option>2038</option><option>2039</option><option>2040</option></select>
                                </div>
                                <div class="col-md-4">
                                    <label>*Дуусах он</label>
                                    <select id="pTab3SelectYearend" runat="server" class="form-control"><option value="">- Сонго -</option><option>2000</option><option>2001</option><option>2002</option><option>2003</option><option>2004</option><option>2005</option><option>2006</option><option>2007</option><option>2008</option><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option><option>2022</option><option>2023</option><option>2024</option><option>2025</option><option>2026</option><option>2027</option><option>2028</option><option>2029</option><option>2030</option><option>2031</option><option>2032</option><option>2033</option><option>2034</option><option>2035</option><option>2036</option><option>2037</option><option>2038</option><option>2039</option><option>2040</option></select>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Хариуцах байгууллага /яам/</label>
                                    <input id="pTab3ModalInputWhoname" name="pTab3ModalInputWhoname" class="form-control" type="text" placeholder="Хариуцах байгууллага"/>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Хариуцах газар</label>
                                    <div id="pTab3ModalDivSelect2Gazar">

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
<div id="pTab3ModalInfo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">  
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			
		</div>  
	</div>  
</div>
<div id="pTab4Modal" class="modal fade in modalSecond" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            
        </div>
    </div>
</div>
<div id="pTab8Modal" class="modal fade in modalSecond" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            
        </div>
    </div>
</div>
<div id="pTab9Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="pTab9ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Тайлангийн архив&nbsp;<span id="pTab9ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pTab9ModalID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-6">
                                    <label class="control-label">*Жил</label>
									<select id="pTab9ModalSelectYear" runat="server" class="form-control"><option value="">- Сонго -</option><option>2000</option><option>2001</option><option>2002</option><option>2003</option><option>2004</option><option>2005</option><option>2006</option><option>2007</option><option>2008</option><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option><option>2022</option><option>2023</option><option>2024</option><option>2025</option><option>2026</option><option>2027</option><option>2028</option><option>2029</option><option>2030</option><option>2031</option><option>2032</option><option>2033</option><option>2034</option><option>2035</option><option>2036</option><option>2037</option><option>2038</option><option>2039</option><option>2040</option></select>
                                </div>
                                <div class="col-md-6">
                                    <label class="control-label">*Хагас жил</label>
									<select id="pTab9ModalSelectYearhalf" runat="server" class="form-control"><option value="">- Сонго -</option><option value="1">Эхний хагас жил</option><option value="2">Сүүлийн хагас жил</option></select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="margin:10px 0 0 0; display:block; overflow:hidden;">
                                        <div class="col-md-4" style="font-size:13px;">
                                            Хавсралт файл:
                                        </div>
                                        <div class="col-md-8" style="font-style:italic;padding-left: 0;">
                                            <a id="pTab9AttachBtn" runat="server" class="btn btn-link btn-xs" href="javascript:void(0);" style="padding:0px; border:none;">Файл хавсаргаагүй байна...</a>
                                        </div>
                                    </div>
                                    <div class="form-group" style="margin:0; display:block; overflow:hidden;">
                                        <div class="col-md-4">
                                            
                                        </div>
                                        <div class="col-md-8" style="padding-left: 0;">
                                            <input id="pTab9AttachInput" runat="server" type="file" class="btn btn-default">
                                        </div>
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
<div id="pTabsAttachShowModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            
        </div>
    </div>
</div>
<script type="text/javascript">
    var globalAjaxVar = null;
    var pagefunction = function () {
        var valLiId = $('#pTab1Li').closest('ul').find('.active').attr('id');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PolicyTab2BodlogoListDDL",
            data: '{"policytypeid":"' + <%=Request.QueryString["id"]%> + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.ID + '">' + replaceDatabaseToDisplay(value.POLICYBODLOGO) + '</option>';
                });
                $("#pTab2SelectBodlogo, #pTab3SelectBodlogo, #pTab4SelectBodlogo, #pTab5SelectBodlogo, #pTab8SelectBodlogo").html('<option value="">Бүгд</option>' + valData);
                $("#pTab2ModalSelectBodlogo, #pTab3ModalSelectBodlogo").html('<option value="">- Сонго -</option>' + valData);
                $('#pTab3ModalSelectZorilt').html('<option value=\"\">- Сонго -</option>');
                $('#pTab3SelectZorilt, #pTab4SelectZorilt, #pTab5SelectZorilt, #pTab8SelectZorilt').html('<option value=\"\">Бүгд</option>');
                $('#pTab3ModalSelectZorilt, #pTab3SelectZorilt, #pTab4SelectZorilt, #pTab5SelectZorilt, #pTab8SelectZorilt').prop('disabled', true);
                $('#divBindTab2Table, #divBindTab3Table, #divBindTab4Table, #divBindTab5Table, #divBindTab8Table').html('');
                if (valLiId == 'pTab1Li') {
                    pTab3SetFirstControls();
                }
                else if (valLiId == 'pTab4Li') {
                    pTab4SetFirstControls();
                }
                else if (valLiId == 'pTab5Li') {
                    pTab5SetFirstControls();
                }
                else if (valLiId == 'pTab6Li') {
                    dataBindTab6t1DataTable();
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
    var pagedestroy = function () {
        if (globalAjaxVar != null) {
            globalAjaxVar.abort();
            globalAjaxVar = null;
        }
    }
    pagefunction();
    function pDatabindTabs(el) {
        if ($.trim($(el).attr('id')) == 'pTab1Li') {
            if ($.trim($('#divBindTab3Table').html()) == "") {
                pTab3SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab1t1') {
            if ($.trim($('#divBindTab3Table').html()) == "") {
                pTab3SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab1t2Li') {
            if ($.trim($('#divBindTab2Table').html()) == "") {
                dataBindTab2DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab1t3Li') {
            if ($.trim($('#divBindTab1Table').html()) == "") {
                dataBindTab1DataTable();
            }
        }        
        else if ($.trim($(el).attr('id')) == 'pTab4Li') {
            if ($.trim($('#divBindTab4Table').html()) == "") {
                pTab4SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab5Li') {
            if ($.trim($('#divBindTab5Table').html()) == "") {
                pTab5SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab5t1Li') {
            if ($.trim($('#divBindTab5Table').html()) == "") {
                pTab5SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab5t2Li') {
            if ($.trim($('#divBindTab7t1Table').html()) == "") {
                dataBindTab7t1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab5t3Li') {
            if ($.trim($('#divBindTab7t2Table').html()) == "") {
                dataBindTab7t2DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab6Li') {
            if ($.trim($('#divBindTab6t1Table').html()) == "") {
                dataBindTab6t1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab6t1Li') {
            if ($.trim($('#divBindTab6t1Table').html()) == "") {
                dataBindTab6t1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab6t2Li') {
            if ($.trim($('#divBindTab6t2Table').html()) == "") {
                dataBindTab6t2DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab6t3Li') {
            if ($.trim($('#divBindTab6t3Table').html()) == "") {
                dataBindTab6t3DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab6t4Li') {
            if ($.trim($('#divBindTab6t4Table').html()) == "") {
                dataBindTab6t4DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab6t5Li') {
            if ($.trim($('#divBindTab8Table').html()) == "") {
                dataBindTab8DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab6t6Li') {
            if ($.trim($('#divBindTab9Table').html()) == "") {
                dataBindTab9DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab6t7Li') {
            if ($.trim($('#divBindTab6t7Table').html()) == "") {
                dataBindTab6t7DataTable();
            }
        }
    }

    //tab1
    function dataBindTab1DataTable() {
        var valData = "";
        var valIsEdit = '0';
        showLoader('loaderTab1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT ISACTIVE FROM TBL_POLICYTYPE WHERE ID=' + <%=Request.QueryString["id"]%> + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == '1') {
                    if (funcCheckRoles('1,21')) {
                        valIsEdit = '1';
                    }
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/PolicyTab1Datatable",
                    data: '{"policytypeid":"' + <%=Request.QueryString["id"]%> + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valData += "<table id=\"pTab1Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                        valData += "<thead>";
                        valData += "<tr>";
                        valData += "<th>№</th>";
                        valData += "<th>Нэр</th>";
                        valData += "<th>Хугацаа</th>";
                        valData += "<th>&nbsp;</th>";
                        valData += "</tr>";
                        valData += "</thead>";
                        valData += "<tbody>";
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<tr data-id=\"" + value.ID + "\">";
                            valData += "<td>" + value.NO + "</td>";
                            valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                            valData += "<td>" + value.BEGINYR + " - " + value.ENDYR + "</td>";
                            valData += "<td>";
                            if (valIsEdit == '1') {
                                valData += "<div class=\"btn-group\">";
                                valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab1(this,'засах');\" data-target=\"#pTab1Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                                valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab1(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                                valData += "</div>";
                            }
                            valData += "</td>";
                            valData += "</tr>";
                        });
                        valData += "<script>";
                        valData += "var responsiveHelper_pTab1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab1Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab1Datatable) {responsiveHelper_pTab1Datatable = new ResponsiveDatatablesHelper($('#pTab1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab1Datatable.respond();}, \"aoColumns\": [null,null,{ \"sWidth\": \"75px\" },{ \"sWidth\": \"45px\" }]});";
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
        $('#pTab1ModalHeaderLabel').html(isinsupt);
        $('#pTab1ModalID').html('');
        $('#pTab1ModalInputNo, #pTab1ModalInputName, #pTab1SelectYearbegin, #pTab2SelectYearend').val('');
        if (isinsupt == 'засах') {
            $('#pTab1ModalID').text($(el).closest('tr').attr('data-id'));
            $('#pTab1ModalInputNo').val($(el).closest('tr').find('td:eq(0)').html());
            $('#pTab1ModalInputName').val($(el).closest('tr').find('td:eq(1)').html());
            $('#pTab1SelectYearbegin').val($(el).closest('tr').find('td:eq(2)').html().split(' - ')[0]);
            $('#pTab2SelectYearend').val($(el).closest('tr').find('td:eq(2)').html().split(' - ')[1]);
        }
    }
    function showDeleteTab1(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_POLICYZORILT WHERE POLICYBODLOGO_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') {
                    alert('Сонгосон бодлогод хамааралтай зорилт орсон тул устгах боломжгүй байна!');
                }
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон бодлогыг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"DELETE FROM TBL_POLICYBODLOGO WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab1DataTable();
                                    smallBox('Сонгосон бодлого', 'Амжилттай устлаа...', '#659265', 3000);
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
    $('#pTab1ModalForm').bootstrapValidator({
        fields: {
            pTab1ModalInputNo: {
                group: '.form-group',
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    stringLength: {
                        max: 25,
                        message: 'Уртдаа 25 тэмдэгт авна'
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
                        max: 1000,
                        message: 'Уртдаа 1000 тэмдэгт авна'
                    }
                }
            },
            pTab1SelectYearbegin: {
                group: '.form-group',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab1SelectYearend: {
                group: '.form-group',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            if ($('#pTab1ModalHeaderLabel').text() == 'нэмэх') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"INSERT INTO TBL_POLICYBODLOGO (ID, POLICYTYPE_ID, NO, NAME, BEGINYR, ENDYR, CREATED_STAFFID, CREATED_DATE) VALUES (TBLLASTID(\'TBL_POLICYBODLOGO\'), <%=Request.QueryString["id"]%>, \'' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputNo').val())) + '\', \'' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputName').val())) + '\', ' + $('#pTab1SelectYearbegin option:selected').val() + ', ' + $('#pTab2SelectYearend option:selected').val() + ',' + $('#indexUserId').text() + ', sysdate)"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/PolicyTab2BodlogoListDDL",
                            data: '{"policytypeid":"' + <%=Request.QueryString["id"]%> + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += '<option value="' + value.ID + '">' + replaceDatabaseToDisplay(value.POLICYBODLOGO) + '</option>';
                                });
                                $("#pTab2SelectBodlogo, #pTab3SelectBodlogo, #pTab4SelectBodlogo, #pTab8SelectBodlogo").html('<option value="">Бүгд</option>' + valData);
                                $("#pTab2ModalSelectBodlogo, #pTab3ModalSelectBodlogo").html('<option value="">- Сонго -</option>' + valData);
                                $('#pTab3ModalSelectZorilt').html('<option value=\"\">- Сонго -</option>');
                                $('#pTab3SelectZorilt, #pTab4SelectZorilt, #pTab5SelectZorilt, #pTab8SelectZorilt').html('<option value=\"\">Бүгд</option>');
                                $('#pTab3ModalSelectZorilt, #pTab3SelectZorilt, #pTab4SelectZorilt, #pTab5SelectZorilt, #pTab8SelectZorilt').prop('disabled', true);
                                $('#divBindTab2Table, #divBindTab3Table, #divBindTab4Table, #divBindTab5Table, #divBindTab8Table').html('');
                                dataBindTab1DataTable();
                                $('#pTab1Modal').modal('hide');
                                smallBox('Бодлого', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
            else if ($('#pTab1ModalHeaderLabel').text() == 'засах') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"UPDATE TBL_POLICYBODLOGO SET POLICYTYPE_ID=<%=Request.QueryString["id"]%>, NO=\'' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputNo').val())) + '\', NAME=\'' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputName').val())) + '\', BEGINYR=' + $('#pTab1SelectYearbegin option:selected').val() + ', ENDYR=' + $('#pTab2SelectYearend option:selected').val() + ', UPDATED_STAFFID=' + $('#indexUserId').text() + ', UPDATED_DATE=sysdate WHERE ID=' + $("#pTab1ModalID").text() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/PolicyTab2BodlogoListDDL",
                            data: '{"policytypeid":"' + <%=Request.QueryString["id"]%> + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += '<option value="' + value.ID + '">' + replaceDatabaseToDisplay(value.POLICYBODLOGO) + '</option>';
                                });
                                $("#pTab2SelectBodlogo, #pTab3SelectBodlogo, #pTab4SelectBodlogo, #pTab8SelectBodlogo").html('<option value="">Бүгд</option>' + valData);
                                $("#pTab2ModalSelectBodlogo, #pTab3ModalSelectBodlogo").html('<option value="">- Сонго -</option>' + valData);
                                $('#pTab3ModalSelectZorilt').html('<option value=\"\">- Сонго -</option>');
                                $('#pTab3SelectZorilt, #pTab4SelectZorilt, #pTab5SelectZorilt, #pTab8SelectZorilt').html('<option value=\"\">Бүгд</option>');
                                $('#pTab3ModalSelectZorilt, #pTab3SelectZorilt, #pTab4SelectZorilt, #pTab5SelectZorilt, #pTab8SelectZorilt').prop('disabled', true);
                                $('#divBindTab2Table, #divBindTab3Table, #divBindTab4Table, #divBindTab5Table, #divBindTab8Table').html('');
                                dataBindTab1DataTable();
                                $('#pTab1Modal').modal('hide');
                                smallBox('Бодлого', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
        }
    });

    //tab2
    function dataBindTab2DataTable() {
        var valData = '';
        var valIsEdit = '0';
        showLoader('loaderTab2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT ISACTIVE FROM TBL_POLICYTYPE WHERE ID=' + <%=Request.QueryString["id"]%> + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == '1') {
                    if (funcCheckRoles('1,21')) {
                        valIsEdit = '1';
                    }
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/PolicyTab2Datatable",
                    data: '{"policytypeid":"' + <%=Request.QueryString["id"]%> + '", "bodlogoid":"' + $('#pTab2SelectBodlogo option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valData += "<table id=\"pTab2Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                        valData += "<thead>";
                        valData += "<tr>";
                        valData += "<th>#</th>";
                        valData += "<th>Бодлого</th>";
                        valData += "<th>№</th>";
                        valData += "<th>Нэр</th>";
                        valData += "<th>&nbsp;</th>";
                        valData += "</tr>";
                        valData += "</thead>";
                        valData += "<tbody>";
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<tr data-id=\"" + value.ID + "\">";
                            valData += "<td>" + value.ROWNO + "</td>";
                            valData += "<td data-id=\"" + value.POLICYBODLOGO_ID + "\">" + replaceDatabaseToDisplay(value.POLICYBODLOGO) + "</td>";
                            valData += "<td>" + value.NO + "</td>";
                            valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                            valData += "<td>";
                            if (valIsEdit == '1') {
                                valData += "<div class=\"btn-group\">";
                                valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab2(this,'засах');\" data-target=\"#pTab2Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                                valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab2(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                                valData += "</div>";
                            }
                            valData += "</td>";
                            valData += "</tr>";
                        });
                        valData += "<script>";
                        valData += "var responsiveHelper_pTab2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab2Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab2Datatable) {responsiveHelper_pTab2Datatable = new ResponsiveDatatablesHelper($('#pTab2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab2Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" }, null, { \"sWidth\": \"20px\" },null,{ \"sWidth\": \"45px\" }]});";
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
        $('#pTab2ModalHeaderLabel').html(isinsupt);
        $('#pTab2ModalID').html('');
        $('#pTab2ModalSelectBodlogo, #pTab2ModalInputNo, #pTab2ModalInputName').val('');
        if (isinsupt == 'засах') {
            $('#pTab2ModalID').text($(el).closest('tr').attr('data-id'));
            $('#pTab2ModalSelectBodlogo').val($(el).closest('tr').find('td:eq(1)').attr('data-id'))
            $('#pTab2ModalInputNo').val($(el).closest('tr').find('td:eq(2)').html());
            $('#pTab2ModalInputName').val($(el).closest('tr').find('td:eq(3)').html());
        }
    }
    function showDeleteTab2(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_POLICYPLAN WHERE POLICYZORILT_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') {
                    alert('Сонгосон зорилтод хамааралтай төлөвлөгөө орсон тул устгах боломжгүй байна!');
                }
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон бодлогыг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"DELETE FROM TBL_POLICYZORILT WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab2DataTable();
                                    smallBox('Сонгосон зорилт', 'Амжилттай устлаа...', '#659265', 3000);
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
    $('#pTab2ModalForm').bootstrapValidator({
        fields: {
            pTab2ModalSelectBodlogo: {
                group: '.form-group',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab2ModalInputNo: {
                group: '.form-group',
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
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            if ($('#pTab2ModalHeaderLabel').text() == 'нэмэх') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"INSERT INTO TBL_POLICYZORILT (ID, POLICYBODLOGO_ID, NO, NAME, CREATED_STAFFID, CREATED_DATE) VALUES (TBLLASTID(\'TBL_POLICYZORILT\'), ' + $('#pTab2ModalSelectBodlogo option:selected').val() + ', ' + $.trim($('#pTab2ModalInputNo').val()) + ', \'' + replaceDisplayToDatabase($.trim($('#pTab2ModalInputName').val())) + '\',' + $('#indexUserId').text() + ', sysdate)"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        $("#pTab3SelectZorilt").html('<option value="">Бүгд</option>');
                        $("#pTab3ModalSelectZorilt").html('<option value="">- Сонго -</option>');
                        $('#pTab3SelectZorilt, #pTab3ModalSelectZorilt').prop('disabled', true);
                        $("#divBindTab3Table").html('');
                        dataBindTab2DataTable();
                        $('#pTab2Modal').modal('hide');
                        smallBox('Зорилт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        window.location = '../#pg/error500.aspx';
                    }
                });
            }
            else if ($('#pTab2ModalHeaderLabel').text() == 'засах') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"UPDATE TBL_POLICYZORILT SET POLICYBODLOGO_ID=' + $('#pTab2ModalSelectBodlogo option:selected').val() + ', NO=' + $.trim($('#pTab2ModalInputNo').val()) + ', NAME=\'' + replaceDisplayToDatabase($.trim($('#pTab2ModalInputName').val())) + '\', UPDATED_STAFFID=' + $('#indexUserId').text() + ', UPDATED_DATE=sysdate WHERE ID=' + $("#pTab2ModalID").text() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        $("#pTab3SelectZorilt").html('<option value="">Бүгд</option>');
                        $("#pTab3ModalSelectZorilt").html('<option value="">- Сонго -</option>');
                        $('#pTab3SelectZorilt, #pTab3ModalSelectZorilt').prop('disabled', true);
                        $("#divBindTab3Table").html('');
                        dataBindTab2DataTable();
                        $('#pTab2Modal').modal('hide');
                        smallBox('Зорилт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
    $('#pTab2SelectBodlogo').change(function () {
        dataBindTab2DataTable();
    });

    //tab3
    function pTab3SetFirstControls() {
        var userId = $('#indexUserId').text();
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr":"' + $('#indexCurrentYear').html() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                })
                $("#pTab3SelectGazar").html('<option value="">Бүгд</option>' + valData);
                dataBindTab3DataTable();
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
        var valIsEdit = '0';
        showLoader('loaderTab3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT ISACTIVE FROM TBL_POLICYTYPE WHERE ID=' + <%=Request.QueryString["id"]%> + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == '1') {
                    if (funcCheckRoles('1,21')) {
                        valIsEdit = '1';
                    }
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/PolicyTab3Datatable",
                    data: '{"policytypeid":"' + <%=Request.QueryString["id"]%> + '", "bodlogoid":"' + $('#pTab3SelectBodlogo option:selected').val() + '", "zoriltid":"' + $('#pTab3SelectZorilt option:selected').val() + '", "isteam":"' + $('#pTab3SelectIsteam option:selected').val() + '", "gazar":"' + $('#pTab3SelectGazar option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valData += "<table id=\"pTab3Datatable\" class=\"table table-striped table-bordered table-hover dataTable smart-form\" width=\"100%\">";
                        valData += "<thead>";
                        valData += "<tr>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Арга хэмжээ</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хүрэх үр дүн, шалгуур үзүүлэлт</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах байгууллага</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах газар</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Засварлах</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хаах</th>";
                        valData += "</tr>";
                        valData += "</thead>";
                        valData += "<tbody>";
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<tr data-id=\"" + value.POLICYPLAN_ID + "\" data-bodlogoid=\"" + value.POLICYBODLOGO_ID + "\" data-zoriltid=\"" + value.POLICYZORILT_ID + "\" data-isteam=\"" + value.ISTEAM + "\">";
                            valData += "<td>" + value.ROWNO + "</td>";
                            valData += "<td data-no=\"" + replaceDisplayToDatabase(value.POLICYPLAN_NO) + "\" data-name=\"" + replaceDisplayToDatabase(value.POLICYPLAN_NAME) + "\">" + replaceDisplayToDatabase(value.POLICYPLAN) + "</td>";
                            valData += "<td>";
                            valData += "<b>Шал/үзүүлэлт: </b><label>" + replaceDisplayToDatabase(value.CRITERIA) + "</label><br />";
                            valData += "<b>Хүрэх үр дүн: </b><label>" + replaceDisplayToDatabase(value.RESULT) + "</label><br />";
                            valData += "<b>Хугацаа: </b><label>" + value.BEGINYR + "-" + value.ENDYR + "</label><br />";
                            valData += "</td>";
                            valData += "<td style=\"text-align:center; vertical-align:middle;\">" + replaceDisplayToDatabase(value.WHONAME) + "</td>";
                            valData += "<td data-id=\"" + value.BRLISTID + "\" style=\"text-align:center; vertical-align:middle;\">" + value.BRLISTNAME + "</td>";
                            valData += "<td style=\"text-align:center; vertical-align:middle;\">";                    
                            valData += "<div class=\"btn-group\">";
                            valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab3(this,'засах');\" data-target=\"#pTab3Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                            valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab3(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                            if (valIsEdit == '1') {
                                valData += "<a href=\"pg/policyTab3ModalInfo.aspx?id=" + value.POLICYPLAN_ID + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTab3ModalInfo\" data-toggle=\"modal\"><i class=\"fa fa-info\"></i></a>";
                            }
                            valData += "</div>";                    
                            valData += "</td>";
                            valData += "<td style=\"text-align:center; vertical-align:middle;\">";
                            if (valIsEdit == '1') {
                                valData += "<span class=\"onoffswitch\"><input id=\"onoffCheckbox" + value.POLICYPLAN_ID + "\" name=\"onoffCheckbox" + value.POLICYPLAN_ID + "\" type=\"checkbox\" " + value.ISCLOSED + " class=\"onoffswitch-checkbox\" onclick=\"saveIsClosed(this);\"><label class=\"onoffswitch-label\" for=\"onoffCheckbox" + value.POLICYPLAN_ID + "\"><span class=\"onoffswitch-inner\" data-swchon-text=\"ON\" data-swchoff-text=\"OFF\"></span><span class=\"onoffswitch-switch\"></span></label></span>";
                            }
                            valData += "</td>";
                            valData += "</tr>";
                        });
                        valData += "<script>";
                        valData += "var responsiveHelper_pTab3Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab3Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab3Datatable) {responsiveHelper_pTab3Datatable = new ResponsiveDatatablesHelper($('#pTab3Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab3Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab3Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" }, null, { \"sWidth\": \"45%\" }, null, null, { \"sWidth\": \"62px\" }, { \"sWidth\": \"15px\" }]});";
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
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function showAddEditTab3(el, isinsupt) {
        var valData = '';
        $('#pTab3ModalHeaderLabel').html(isinsupt);
        $('#pTab3ModalID').html('');
        $('#pTab3ModalSelectBodlogo, #pTab3ModalInputNo, #pTab3ModalInputName, #pTab3ModalInputResult, #pTab3ModalInputCriteria, #pTab3SelectYearbegin, #pTab3SelectYearend, #pTab3ModalInputWhoname').val('');
        $('#pTab3ModalSelectZorilt').html('<option value="">- Сонго -</option>');
        $('#pTab3ModalSelectZorilt').prop('disabled', true);
        $('input[name="pModalInputIsteam"]').prop('checked', false);
        dataBindTab3ModalGazarListForSelect2('');
        if (isinsupt == 'засах') {
            $('#pTab3ModalID').text($(el).closest('tr').attr('data-id'));
            $('#pTab3ModalSelectBodlogo').val($(el).closest('tr').attr('data-bodlogoid'));
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PolicyTab3ZoriltListDDL",
                data: '{"policybodlogoid":"' + $('#pTab3ModalSelectBodlogo option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.ID + '" title="' + replaceDatabaseToDisplay(value.POLICYZORILT) + '">' + replaceDatabaseToDisplay(value.POLICYZORILT) + '</option>';
                    })
                    $("#pTab3ModalSelectZorilt").html('<option value="">- Сонго -</option>' + valData);
                    $('#pTab3ModalSelectZorilt').val($(el).closest('tr').attr('data-zoriltid'));
                    $('#pTab3ModalSelectZorilt').prop('disabled', false);
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });

            $('#pTab3ModalInputNo').val($(el).closest('tr').find('td:eq(1)').attr('data-no'));
            $('#pTab3ModalInputName').val($(el).closest('tr').find('td:eq(1)').attr('data-name'));
            $('#pTab3ModalInputResult').val($(el).closest('tr').find('td:eq(2)').find('label:eq(1)').html());
            $('#pTab3ModalInputCriteria').val($(el).closest('tr').find('td:eq(2)').find('label:eq(0)').html());
            $('#pModalInputIsteam' + $(el).closest('tr').attr('data-isteam')).prop('checked', true);
            $('#pTab3SelectYearbegin').val($(el).closest('tr').find('td:eq(2)').find('label:eq(2)').html().split('-')[0]);
            $('#pTab3SelectYearend').val($(el).closest('tr').find('td:eq(2)').find('label:eq(2)').html().split('-')[1]);
            $('#pTab3ModalInputWhoname').val($(el).closest('tr').find('td:eq(3)').html());
            dataBindTab3ModalGazarListForSelect2($(el).closest('tr').find('td:eq(4)').attr('data-id'));
        }
    }
    function showDeleteTab3(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_POLICYPLAN_IMPL WHERE POLICYPLAN_ID=' + $(el).closest('tr').attr('data-id') + ' AND (IMPL IS NOT NULL OR EVAL IS NOT NULL)"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') {
                    alert('Сонгосон төлөвлөгөөнд хамааралтай биелэлт юмуу үнэлгээ орсон тул устгах боломжгүй байна!');
                }
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон бодлогыг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/POLICYPLAN_DELETE",
                                data: '{"P_ID":"' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab3DataTable();
                                    smallBox('Сонгосон төлөвлөгөө', 'Амжилттай устлаа...', '#659265', 3000);
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
    $('#pTab3ModalForm').bootstrapValidator({
        fields: {
            pTab3ModalSelectBodlogo: {
                group: '.form-group',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab3ModalSelectZorilt: {
                group: '.form-group',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab3ModalInputNo: {
                group: '.col-md-3',
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
            pTab3ModalInputName: {
                group: '.col-md-9',
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
            pTab3ModalInputResult: {
                group: '.col-md-6',
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
            pTab3ModalInputCriteria: {
                group: '.col-md-6',
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
            pModalInputIsteam: {
                group: '.col-md-4',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab3SelectYearbegin: {
                group: '.col-md-4',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab3SelectYearend: {
                group: '.col-md-4',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab3ModalInputWhoname: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    stringLength: {
                        max: 50,
                        message: 'Уртдаа 50 тэмдэгт авна'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            if ($('#pTab3ModalSelect2Gazar').val() == null) {
                alert('Хариуцах газар сонгоно уу');
                $('#pTab3ModalForm').find('.modal-footer').find('.btn-success').prop('disabled', false);
            }
            else {
                if ($("#pTab3ModalHeaderLabel").html() == "нэмэх") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/POLICYPLAN_INSERT",
                        data: '{"P_POLICYZORILT_ID":"' + $('#pTab3ModalSelectZorilt option:selected').val() + '", "P_NO":"' + $.trim($('#pTab3ModalInputNo').val()) + '", "P_NAME":"' + replaceDisplayToDatabase($.trim($('#pTab3ModalInputName').val())) + '", "P_RESULT":"' + replaceDisplayToDatabase($.trim($('#pTab3ModalInputResult').val())) + '", "P_CRITERIA":"' + replaceDisplayToDatabase($.trim($('#pTab3ModalInputCriteria').val())) + '", "P_ISTEAM":"' + $('input[name="pModalInputIsteam"]:checked').val() + '", "P_BEGINYR":"' + $('#pTab3SelectYearbegin option:selected').val() + '", "P_ENDYR":"' + $('#pTab3SelectYearend option:selected').val() + '", "P_WHONAME":"' + replaceDisplayToDatabase($.trim($('#pTab3ModalInputWhoname').val())) + '", "P_BRLIST":"' + $('#pTab3ModalSelect2Gazar').val() + '", "P_STAFFID":"' + $('#indexUserId').text() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            dataBindTab3DataTable();
                            $('#pTab3Modal').modal('hide');
                            smallBox('Төлөвлөгөө', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                        url: "../ws/ServiceMain.svc/POLICYPLAN_UPDATE",
                        data: '{"P_ID":"' + $("#pTab3ModalID").text() + '", "P_POLICYZORILT_ID":"' + $('#pTab3ModalSelectZorilt option:selected').val() + '", "P_NO":"' + $.trim($('#pTab3ModalInputNo').val()) + '", "P_NAME":"' + replaceDisplayToDatabase($.trim($('#pTab3ModalInputName').val())) + '", "P_RESULT":"' + replaceDisplayToDatabase($.trim($('#pTab3ModalInputResult').val())) + '", "P_CRITERIA":"' + replaceDisplayToDatabase($.trim($('#pTab3ModalInputCriteria').val())) + '", "P_ISTEAM":"' + $('input[name="pModalInputIsteam"]:checked').val() + '", "P_BEGINYR":"' + $('#pTab3SelectYearbegin option:selected').val() + '", "P_ENDYR":"' + $('#pTab3SelectYearend option:selected').val() + '", "P_WHONAME":"' + replaceDisplayToDatabase($.trim($('#pTab3ModalInputWhoname').val())) + '", "P_BRLIST":"' + $('#pTab3ModalSelect2Gazar').val() + '", "P_STAFFID":"' + $('#indexUserId').text() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            dataBindTab3DataTable();
                            $('#pTab3Modal').modal('hide');
                            smallBox('Төлөвлөгөө', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
    function dataBindTab3ModalGazarListForSelect2(selectedList) {
        var valData = '';
        $("#pTab3ModalDivSelect2Gazar").html('<input class="form-control ui-autocomplete-loading" placeholder="" type="text" disabled="disabled">');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForSelect2",
            data: '{"yr":"' + $('#indexCurrentYear').html() + '", "selectedList":"' + selectedList + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<option" + value.ISSELECTED + " value=\"" + value.BR_ID + "\">" + value.DOMAIN_ORG + "</option>";
                });
                $("#pTab3ModalDivSelect2Gazar").html("<select id=\"pTab3ModalSelect2Gazar\" name=\"pTab3ModalSelect2Gazar\" multiple=\"multiple\" style=\"width:100%\" data-placeholder=\"Хариуцах ажилтан сонго\">" + valData + "</select><script>$(\"#pTab3ModalSelect2Gazar\").select2();<\/script>");
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $('#pTab3ModalSelectBodlogo').change(function () {
        var valData = '';
        if ($('#pTab3ModalSelectBodlogo option:selected').val() == '') {
            $('#pTab3ModalSelectZorilt').html('<option value=\"\">- Сонго -</option>');
            $('#pTab3ModalSelectZorilt').prop('disabled', true);
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PolicyTab3ZoriltListDDL",
                data: '{"policybodlogoid":"' + $('#pTab3ModalSelectBodlogo option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.ID + '" title="' + replaceDatabaseToDisplay(value.POLICYZORILT) + '">' + replaceDatabaseToDisplay(value.POLICYZORILT) + '</option>';
                    });
                    $("#pTab3ModalSelectZorilt").html('<option value="">- Сонго -</option>' + valData);
                    $('#pTab3ModalSelectZorilt').prop('disabled', false);
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
    $('#pTab3SelectBodlogo').change(function () {
        var valData = '';
        if ($('#pTab3SelectBodlogo option:selected').val() == '') {
            $('#pTab3SelectZorilt').html('<option value=\"\">Бүгд</option>');
            $('#pTab3SelectZorilt').prop('disabled', true);
            dataBindTab3DataTable();
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PolicyTab3ZoriltListDDL",
                data: '{"policybodlogoid":"' + $('#pTab3SelectBodlogo option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.ID + '" title="' + replaceDatabaseToDisplay(value.POLICYZORILT) + '">' + replaceDatabaseToDisplay(value.POLICYZORILT) + '</option>';
                    });
                    $("#pTab3SelectZorilt").html('<option value="">Бүгд</option>' + valData);
                    $('#pTab3SelectZorilt').prop('disabled', false);
                    dataBindTab3DataTable();
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
    $('#pTab3SelectZorilt, #pTab3SelectIsteam, #pTab3SelectGazar').change(function () {
        dataBindTab3DataTable();
    });
    function saveIsClosed(el) {
        var valIsSubmit = '0';
        if (!$(el).prop('checked')) {
            valIsSubmit = '1';
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
            data: '{"qry":"UPDATE TBL_POLICYPLAN SET ISCLOSED=' + valIsSubmit + ' WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
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

    //tab4
    function pTab4SetFirstControls() {
        var userId = $('#indexUserId').text();
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr":"' + $('#pTab4SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                })
                $("#pTab4SelectGazar").html('<option value="">Бүгд</option>' + valData);
                dataBindTab4DataTable();
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
        var isRole1 = false, isRole4 = false;
        var userGazarId = $('#indexUserGazarId').html();
        var isBodlogoTypeIsActive = true;
        var isImplEdit = false;
        showLoader('loaderTab4');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT ISACTIVE FROM TBL_POLICYTYPE WHERE ID=' + <%=Request.QueryString["id"]%> + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == '0') isBodlogoTypeIsActive = false;
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/PolicyTab4Datatable",
                    data: '{"policytypeid":"' + <%=Request.QueryString["id"]%> + '", "yr":"' + $('#pTab4SelectYear option:selected').val() + '", "yrhf":"' + $('#pTab4SelectYearHalf option:selected').val() + '", "bodlogoid":"' + $('#pTab4SelectBodlogo option:selected').val() + '", "zoriltid":"' + $('#pTab4SelectZorilt option:selected').val() + '", "isteam":"' + $('#pTab4SelectIsteam option:selected').val() + '", "gazar":"' + $('#pTab4SelectGazar option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        if (funcCheckRoles('1')) isRole1 = true;
                        if (funcCheckRoles('4')) isRole4 = true;
                        valData += "<table id=\"pTab4Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                        valData += "<thead>";
                        valData += "<tr>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Төлөвлөгөө</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хүрэх үр дүн, шалгуур үзүүлэлт</th>";
                        //valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах байгууллага</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах газар</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Биелэлт оруулах</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хавсралт файл</th>";
                        valData += "</tr>";
                        valData += "</thead>";
                        valData += "<tbody>";
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<tr data-id=\"" + value.POLICYPLAN_ID + "\">";
                            valData += "<td>" + value.ROWNO + "</td>";
                            valData += "<td>" + replaceDatabaseToDisplay(value.POLICYPLAN) + "</td>";
                            valData += "<td>";
                            valData += "<b>Шал/үзүүлэлт: </b><label>" + replaceDatabaseToDisplay(value.CRITERIA) + "</label><br />";
                            valData += "<b>Хүрэх үр дүн: </b><label>" + replaceDatabaseToDisplay(value.RESULT) + "</label><br />";
                            valData += "<b>Хугацаа: </b><label>" + value.BEGINYR + "-" + value.ENDYR + "</label><br />";
                            valData += "</td>";
                            //valData += "<td style=\"text-align:center; vertical-align:middle;\">" + value.WHONAME + "</td>";
                            valData += "<td style=\"text-align:center; vertical-align:middle;\">" + value.BRLISTNAME + "</td>";
                            valData += "<td style=\"text-align:center; vertical-align:middle;\">";
                            isImplEdit = false;
                            if (isBodlogoTypeIsActive) {
                                if (!isRole1)
                                {
                                    if (!isRole4)
                                    {
                                        for (var i = 0; i < value.BRLISTID.split(',').length; i++)
                                        {
                                            if (value.BRLISTID.split(',')[i] == userGazarId)
                                            {
                                                isImplEdit = true;
                                                break;
                                            }
                                        }
                                    }
                                    else isImplEdit = true;
                                }
                                else isImplEdit = true;
                            }
                            if (isImplEdit) {
                                if (value.EVAL == "") valData += "<a href=\"../pg/policyTab4ImplModal.aspx?id=" + value.POLICYPLAN_ID + "&yr=" + $('#pTab4SelectYear option:selected').val() + "&yrhf=" + $('#pTab4SelectYearHalf option:selected').val() + "\" data-target=\"#pTab4Modal\" data-toggle=\"modal\" style=\"cursor:pointer\"><i class=\"glyphicon " + value.ISIMPL + " font-xl\"></i></a>";
                                else valData += "<a href=\"javascript:void(0);\" style=\"cursor:pointer\" onclick=\"alert('Төлөвлөгөөнд хамааралтай үнэлгээ орсон эсвэл хаагдсан төлөвлөгөө тул биелэлт засварлах боломжгүй байна! Үнэлгээ хэсэгрүү орж биелэлт болон үнэлгээг харна уу!');\"><i class=\"glyphicon " + value.ISIMPL + " font-xl\"></i></a>";
                            }                        
                            valData += "</td>";
                            valData += "<td style=\"text-align:center; vertical-align:middle;\">";
                            if (value.FILENAME != "") valData += "<a href=\"../files/policy/" + value.FILENAME + "\" class=\"btn btn-link btn-xs\" style=\"padding:0px; border:none;\" download title=\"Хавсаргасан файл татах\"><i class=\"fa fa-paperclip fa-lg\"></i></a></td>";
                            valData += "</td>";
                            valData += "</tr>";
                        });
                        valData += "<script>";
                        valData += "var responsiveHelper_pTab4Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab4Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab4Datatable) {responsiveHelper_pTab4Datatable = new ResponsiveDatatablesHelper($('#pTab4Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab4Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab4Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" }, null, { \"sWidth\": \"45%\" }, null, { \"sWidth\": \"52px\" }, { \"sWidth\": \"15px\" }]});";
                        valData += "<\/script>";
                        $("#divBindTab4Table").html(valData);
                        hideLoader('loaderTab4');
                    },
                    failure: function (response) {ww1
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
    $('#pTab4SelectBodlogo').change(function () {
        var valData = '';
        if ($('#pTab4SelectBodlogo option:selected').val() == '') {
            $('#pTab4SelectZorilt').html('<option value=\"\">Бүгд</option>');
            $('#pTab4SelectZorilt').prop('disabled', true);
            dataBindTab4DataTable();
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PolicyTab3ZoriltListDDL",
                data: '{"policybodlogoid":"' + $('#pTab4SelectBodlogo option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.ID + '" title="' + replaceDatabaseToDisplay(value.POLICYZORILT) + '">' + replaceDatabaseToDisplay(value.POLICYZORILT) + '</option>';
                    });
                    $("#pTab4SelectZorilt").html('<option value="">Бүгд</option>' + valData);
                    $('#pTab4SelectZorilt').prop('disabled', false);
                    dataBindTab4DataTable();
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
    $('#pTab4SelectZorilt, #pTab4SelectIsteam, #pTab4SelectYearHalf, #pTab4SelectGazar').change(function () {
        dataBindTab4DataTable();
    });
    $('#pTab4SelectYear').change(function () {
        pTab4SetFirstControls();
    });

    //tab5
    function pTab5SetFirstControls() {
        var userId = $('#indexUserId').text();
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
                })
                $("#pTab5SelectGazar").html('<option value="">Бүгд</option>' + valData);
                dataBindTab5DataTable();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab5DataTable() {
        var valData = '';
        var isDisabled = " disabled=\"disabled\" ";
        showLoader('loaderTab5');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT ISACTIVE FROM TBL_POLICYTYPE WHERE ID=' + <%=Request.QueryString["id"]%> + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == '1') {
                    if (funcCheckRoles('1,21')) {
                        isDisabled = "";
                    }
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/PolicyTab5Datatable",
                    data: '{"policytypeid":"' + <%=Request.QueryString["id"]%> + '", "yr":"' + $('#pTab5SelectYear option:selected').val() + '", "yrhf":"' + $('#pTab5SelectYearHalf option:selected').val() + '", "bodlogoid":"' + $('#pTab5SelectBodlogo option:selected').val() + '", "zoriltid":"' + $('#pTab5SelectZorilt option:selected').val() + '", "isteam":"' + $('#pTab5SelectIsteam option:selected').val() + '", "gazar":"' + $('#pTab5SelectGazar option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valData += "<table id=\"pTab5Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                        valData += "<thead>";
                        valData += "<tr>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Төлөвлөгөө</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хүрэх үр дүн, шалгуур үзүүлэлт</th>";
                        //valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах байгууллага</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах газар</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Биелэлт</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Өмнөх<br>үнэлгээ</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Үнэлгээ</th>";
                        //valData += "<th>Үнэлгээний тайлбар</th>";
                        valData += "</tr>";
                        valData += "</thead>";
                        valData += "<tbody>";
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<tr data-id=\"" + value.POLICYPLAN_ID + "\">";
                            valData += "<td>" + value.ROWNO + "</td>";
                            valData += "<td>" + replaceDatabaseToDisplay(value.POLICYPLAN) + "</td>";
                            valData += "<td>";
                            valData += "<b>Шал/үзүүлэлт: </b><label>" + replaceDatabaseToDisplay(value.CRITERIA) + "</label><br />";
                            valData += "<b>Хүрэх үр дүн: </b><label>" + replaceDatabaseToDisplay(value.RESULT) + "</label><br />";
                            valData += "<b>Хугацаа: </b><label>" + value.BEGINYR + "-" + value.ENDYR + "</label><br />";
                            valData += "</td>";
                            //valData += "<td style=\"text-align:center; vertical-align:middle;\">" + value.WHONAME + "</td>";
                            valData += "<td style=\"text-align:center;\">" + value.BRLISTNAME + "</td>";
                            valData += "<td>" + replaceDatabaseToDisplay(value.IMPL) + "</td>";
                            valData += "<td style=\"text-align:center;\">" + value.PREVEVAL + "</td>";
                            if (value.EVAL == "") valData += "<td><select" + isDisabled + " class=\"bg-color-blueLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding: 0;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                            else {
                                if (value.EVAL == "0") valData += "<td><select" + isDisabled + " class=\"bg-color-red form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding: 0;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                                else if (value.EVAL == "10") valData += "<td><select" + isDisabled + " class=\"bg-color-red form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding: 0;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                                else if (value.EVAL == "30") valData += "<td><select" + isDisabled + " class=\"bg-color-red form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding: 0;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                                else if (value.EVAL == "50") valData += "<td><select" + isDisabled + " class=\"bg-color-orange form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding: 0;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                                else if (value.EVAL == "70") valData += "<td><select" + isDisabled + " class=\"bg-color-orange form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding: 0;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                                else if (value.EVAL == "80") valData += "<td><select" + isDisabled + " class=\"bg-color-greenLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding: 0;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                                else if (value.EVAL == "90") valData += "<td><select" + isDisabled + " class=\"bg-color-greenLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding: 0;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                                else if (value.EVAL == "100") valData += "<td><select" + isDisabled + " class=\"bg-color-greenLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; padding: 0;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">100 %</option></select></td>";
                            }
                            //valData += "<td><div class=\"input-icon-right\"><textarea" + isDisabled + " class=\"eg-txta-eval-desc form-control\" style=\"padding-right:10px;\" rows=\"2\">" + strrd9.Replace("-", "") + "</textarea><i class=\"glyphicon glyphicon-floppy-disk hover-black\" style=\"top:0; padding-top:6px;\" title=\"Тайлбар хадгалах\" onclick=\"saveEvalDesc(this)\"></i></div></td>";
                            valData += "</tr>";
                        });
                        valData += "<script>";
                        valData += "var responsiveHelper_pTab5Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab5Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab5Datatable) {responsiveHelper_pTab5Datatable = new ResponsiveDatatablesHelper($('#pTab5Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab5Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab5Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" }, null, null, { \"sWidth\": \"69px\" }, { \"sWidth\": \"600px\" }, { \"sWidth\": \"70px\" }, { \"sWidth\": \"70px\" }]});";
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
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $('#pTab5SelectBodlogo').change(function () {
        var valData = '';
        if ($('#pTab5SelectBodlogo option:selected').val() == '') {
            $('#pTab5SelectZorilt').html('<option value=\"\">Бүгд</option>');
            $('#pTab5SelectZorilt').prop('disabled', true);
            dataBindTab5DataTable();
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PolicyTab3ZoriltListDDL",
                data: '{"policybodlogoid":"' + $('#pTab5SelectBodlogo option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.ID + '" title="' + replaceDatabaseToDisplay(value.POLICYZORILT) + '">' + replaceDatabaseToDisplay(value.POLICYZORILT) + '</option>';
                    });
                    $("#pTab5SelectZorilt").html('<option value="">Бүгд</option>' + valData);
                    $('#pTab5SelectZorilt').prop('disabled', false);
                    dataBindTab5DataTable();
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
    $('#pTab5SelectYear').change(function () {
        pTab5SetFirstControls();
    });
    $('#pTab5SelectZorilt, #pTab5SelectIsteam, #pTab5SelectYearHalf, #pTab5SelectGazar').change(function () {
        dataBindTab5DataTable();
    });
    function saveEval(me) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_POLICYPLAN_IMPL WHERE POLICYPLAN_ID=' + $(me).closest('tr').attr('data-id') + ' AND YR=' + $('#pTab5SelectYear option:selected').val() + ' AND YRHF=' + $('#pTab5SelectYearHalf option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                var valQry = '';
                if (data.d == '0') {
                    valQry = 'INSERT INTO TBL_POLICYPLAN_IMPL (ID, POLICYPLAN_ID, YR, YRHF, EVAL, EVAL_CREATED_STAFFID, EVAL_CREATED_DATE) VALUES (TBLLASTID(\'TBL_POLICYPLAN_IMPL\'), ' + $(me).closest('tr').attr('data-id') + ', ' + $('#pTab5SelectYear option:selected').val() + ', ' + $('#pTab5SelectYearHalf option:selected').val() + ', ' + $(me).val().replace('none', 'null') + ', ' + '<%= Session["LM_UserID"] %>' + ', sysdate)';
                }
                else {
                    valQry = 'UPDATE TBL_POLICYPLAN_IMPL SET EVAL=' + $(me).val().replace('none', 'null') + ', EVAL_UPDATED_STAFFID=' + '<%= Session["LM_UserID"] %>' + ', EVAL_UPDATED_DATE=sysdate WHERE POLICYPLAN_ID=' + $(me).closest('tr').attr('data-id') + ' AND YR=' + $('#pTab5SelectYear option:selected').val() + ' AND YRHF=' + $('#pTab5SelectYearHalf option:selected').val() + '';
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"' + valQry + '"}',
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
    //tab6t1
    function dataBindTab6t1DataTable() {
        var valData = '';
        var strbodlogoid = "", strzoriltid = "";
        showLoader('loaderTab6t1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PolicyTab6t1Datatable",
            data: '{"policytypeid":"' + <%=Request.QueryString["id"]%> + '", "yr":"' + $('#pTab6t1SelectYear option:selected').val() + '", "yrhf":"' + $('#pTab6t1SelectYearHalf option:selected').val() + '", "isteam":"' + $('#pTab6t1SelectIsteam option:selected').val() + '", "isimpl":"' + $('#pTab6t1SelectIsimpl option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                strbodlogoid = "", strzoriltid = "";
                valData = "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\"><thead style=\"background-color:C6D9F1;\"><tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:1%;\">#</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Төлөвлөгөө</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:35%;\">Хүрэх үр дүн</th>";
                //valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хариуцах байгууллага</th>";
                //valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хариуцах газар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:35%;\">Биелэлт</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:3%;\">Үнэлгээ</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (strbodlogoid != value.POLICYBODLOGO_ID) {
                        valData += "<tr>";
                        valData += "<td colspan=\"5\" style=\"border: 1px solid #000; font-size:12px !important;  padding:5px; text-align:center;\">" + value.POLICYBODLOGO + "</td>";
                        valData += "</tr>";
                    }
                    if (strzoriltid != value.POLICYZORILT_ID) {
                        valData += "<tr>";
                        valData += "<td colspan=\"5\" style=\"border: 1px solid #000; font-size:12px !important;  padding:5px; text-align:center;\">" + value.POLICYZORILT + "</td>";
                        valData += "</tr>";
                    }
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; font-size:12px !important;  padding:5px; text-align:center;\">" + value.ROWNO + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:justify; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + replaceDatabaseToDisplay(value.POLICYPLAN) + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:justify; border: 1px solid #000; font-size:12px !important; padding:5px;\">";
                    valData += "<b>Шал/үзүүлэлт: </b><label>" + replaceDatabaseToDisplay(value.CRITERIA) + "</label><br />";
                    valData += "<b>Хүрэх үр дүн: </b><label>" + replaceDatabaseToDisplay(value.RESULT) + "</label><br />";
                    valData += "<b>Хугацаа: </b><label>" + value.BEGINYR + "-" + value.ENDYR + "</label><br />";
                    valData += "</td>";
                    //valData += "<td style=\"vertical-align:top; text-align:justify; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + value.WHONAME + "</td>";
                    //valData += "<td style=\"vertical-align:top; text-align:left; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + value.BRLISTNAME + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:justify; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + replaceDatabaseToDisplay(value.IMPL) + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:center; border: 1px solid #000; font-size:12px !important; padding:5px;\">";
                    if (value.EVAL == "") valData += "-";
                    else valData += value.EVAL;
                    valData += " </td>";
                    valData += "</tr>";
                    strbodlogoid = value.POLICYBODLOGO_ID;
                    strzoriltid = value.POLICYZORILT_ID;
                });
                valData += "</tbody></table>";
                $("#divBindTab6t1Table").html(valData);
                $('#pTab6t1Year').html($('#pTab6t1SelectYear option:selected').val());
                $('#pTab6t1YearHalf').html($('#pTab6t1SelectYearHalf option:selected').text());
                hideLoader('loaderTab6t1');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $('#pTab6t1SelectIsteam, #pTab6t1SelectYear, #pTab6t1SelectYearHalf, #pTab6t1SelectIsimpl').change(function () {
        dataBindTab6t1DataTable();
    });
    //tab6t2
    function dataBindTab6t2DataTable() {
        var valData = '';
        var strbodlogoid = "", strzoriltid = "";
        showLoader('loaderTab6t2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PolicyTab6t2Datatable",
            data: '{"policytypeid":"' + <%=Request.QueryString["id"]%> + '", "yr":"' + $('#pTab6t2SelectYear option:selected').val() + '", "yrhf":"' + $('#pTab6t2SelectYearHalf option:selected').val() + '", "isteam":"' + $('#pTab6t2SelectIsteam option:selected').val() + '", "isimpl":"' + $('#pTab6t2SelectIsimpl option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                strbodlogoid = "", strzoriltid = "";
                valData = "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\"><thead style=\"background-color:C6D9F1;\"><tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:1%;\">#</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Төлөвлөгөө</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:35%;\">Хүрэх үр дүн</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хариуцах байгууллага</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хариуцах газар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:35%;\">Биелэлт</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:3%;\">Үнэлгээ</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (strbodlogoid != value.POLICYBODLOGO_ID) {
                        valData += "<tr>";
                        valData += "<td colspan=\"7\" style=\"border: 1px solid #000; font-size:12px !important;  padding:5px; text-align:center;\">" + value.POLICYBODLOGO + "</td>";
                        valData += "</tr>";
                    }
                    if (strzoriltid != value.POLICYZORILT_ID) {
                        valData += "<tr>";
                        valData += "<td colspan=\"7\" style=\"border: 1px solid #000; font-size:12px !important;  padding:5px; text-align:center;\">" + value.POLICYZORILT + "</td>";
                        valData += "</tr>";
                    }
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; font-size:12px !important;  padding:5px; text-align:center;\">" + value.ROWNO + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:justify; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + replaceDatabaseToDisplay(value.POLICYPLAN) + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:justify; border: 1px solid #000; font-size:12px !important; padding:5px;\">";
                    valData += "<b>Шал/үзүүлэлт: </b><label>" + replaceDatabaseToDisplay(value.CRITERIA) + "</label><br />";
                    valData += "<b>Хүрэх үр дүн: </b><label>" + replaceDatabaseToDisplay(value.RESULT) + "</label><br />";
                    valData += "<b>Хугацаа: </b><label>" + value.BEGINYR + "-" + value.ENDYR + "</label><br />";
                    valData += "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:justify; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + value.WHONAME + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:left; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + value.BRLISTNAME + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:justify; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + replaceDatabaseToDisplay(value.IMPL) + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:center; border: 1px solid #000; font-size:12px !important; padding:5px;\">";
                    if (value.EVAL == "") valData += "-";
                    else valData += value.EVAL;
                    valData += " </td>";
                    valData += "</tr>";
                    strbodlogoid = value.POLICYBODLOGO_ID;
                    strzoriltid = value.POLICYZORILT;
                });
                valData += "</tbody></table>";
                $("#divBindTab6t2Table").html(valData);
                $('#pTab6t2Year').html($('#pTab6t2SelectYear option:selected').val());
                $('#pTab6t2YearHalf').html($('#pTab6t2SelectYearHalf option:selected').text());
                hideLoader('loaderTab6t2');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $('#pTab6t2SelectIsteam, #pTab6t2SelectYear, #pTab6t2SelectYearHalf, #pTab6t2SelectIsimpl').change(function () {
        dataBindTab6t2DataTable();
    });
    //tab6t3
    function dataBindTab6t3DataTable() {
        var valData = '';
        var strbodlogoid = "", strzoriltid = "";
        showLoader('loaderTab6t3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PolicyTab6t3Datatable",
            data: '{"policytypeid":"' + <%=Request.QueryString["id"]%> + '", "isteam":"' + $('#pTab6t3SelectIsteam option:selected').val() + '", "isimpl":"' + $('#pTab6t3SelectIsimpl option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                strbodlogoid = "", strzoriltid = "";
                valData = "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\"><thead style=\"background-color:C6D9F1;\"><tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:1%;\">#</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Төлөвлөгөө</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:35%;\">Хүрэх үр дүн</th>";
                //valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хариуцах байгууллага</th>";
                //valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хариуцах газар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Биелэлтийн хугацаа</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:35%;\">Биелэлт</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:3%;\">Үнэлгээ</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (strbodlogoid != value.POLICYBODLOGO_ID) {
                        valData += "<tr>";
                        valData += "<td colspan=\"6\" style=\"border: 1px solid #000; font-size:12px !important;  padding:5px; text-align:center;\">" + value.POLICYBODLOGO + "</td>";
                        valData += "</tr>";
                    }
                    if (strzoriltid != value.POLICYZORILT_ID) {
                        valData += "<tr>";
                        valData += "<td colspan=\"6\" style=\"border: 1px solid #000; font-size:12px !important;  padding:5px; text-align:center;\">" + value.POLICYZORILT + "</td>";
                        valData += "</tr>";
                    }
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; font-size:12px !important;  padding:5px; text-align:center;\">" + value.ROWNO + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:justify; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + replaceDatabaseToDisplay(value.POLICYPLAN) + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:justify; border: 1px solid #000; font-size:12px !important; padding:5px;\">";
                    valData += "<b>Шал/үзүүлэлт: </b><label>" + replaceDatabaseToDisplay(value.CRITERIA) + "</label><br />";
                    valData += "<b>Хүрэх үр дүн: </b><label>" + replaceDatabaseToDisplay(value.RESULT) + "</label><br />";
                    valData += "<b>Хугацаа: </b><label>" + value.BEGINYR + "-" + value.ENDYR + "</label><br />";
                    valData += "</td>";
                    //valData += "<td style=\"vertical-align:top; text-align:justify; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + value.WHONAME + "</td>";
                    //valData += "<td style=\"vertical-align:top; text-align:left; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + value.BRLISTNAME + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:left; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + value.IMPLDATE + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:justify; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + replaceDatabaseToDisplay(value.IMPL) + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:center; border: 1px solid #000; font-size:12px !important; padding:5px;\">";
                    if (value.EVAL == "") valData += "-";
                    else valData += value.EVAL;
                    valData += " </td>";
                    valData += "</tr>";
                    strbodlogoid = value.POLICYBODLOGO_ID;
                    strzoriltid = value.POLICYZORILT_ID;
                });
                valData += "</tbody></table>";
                $("#divBindTab6t3Table").html(data);
                hideLoader('loaderTab6t3');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $('#pTab6t3SelectIsteam, #pTab6t3SelectIsimpl').change(function () {
        dataBindTab6t3DataTable();
    });
    //tab6t4
    function dataBindTab6t4DataTable() {
        var valData = '';
        var strbodlogoid = "", strzoriltid = "";
        showLoader('loaderTab6t4');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PolicyTab6t4Datatable",
            data: '{"policytypeid":"' + <%=Request.QueryString["id"]%> + '", "isteam":"' + $('#pTab6t4SelectIsteam option:selected').val() + '", "isimpl":"' + $('#pTab6t4SelectIsimpl option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                strbodlogoid = "", strzoriltid = "";
                valData = "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\"><thead style=\"background-color:C6D9F1;\"><tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:1%;\">#</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Төлөвлөгөө</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:35%;\">Хүрэх үр дүн</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хариуцах байгууллага</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хариуцах газар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Биелэлтийн хугацаа</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:35%;\">Биелэлт</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:3%;\">Үнэлгээ</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (strbodlogoid != value.POLICYBODLOGO_ID) {
                        valData += "<tr>";
                        valData += "<td colspan=\"8\" style=\"border: 1px solid #000; font-size:12px !important;  padding:5px; text-align:center;\">" + value.POLICYBODLOGO + "</td>";
                        valData += "</tr>";
                    }
                    if (strzoriltid != value.POLICYZORILT_ID) {
                        valData += "<tr>";
                        valData += "<td colspan=\"8\" style=\"border: 1px solid #000; font-size:12px !important;  padding:5px; text-align:center;\">" + value.POLICYZORILT + "</td>";
                        valData += "</tr>";
                    }
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; font-size:12px !important;  padding:5px; text-align:center;\">" + value.ROWNO + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:justify; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + replaceDatabaseToDisplay(value.POLICYPLAN) + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:justify; border: 1px solid #000; font-size:12px !important; padding:5px;\">";
                    valData += "<b>Шал/үзүүлэлт: </b><label>" + replaceDatabaseToDisplay(value.CRITERIA) + "</label><br />";
                    valData += "<b>Хүрэх үр дүн: </b><label>" + replaceDatabaseToDisplay(value.RESULT) + "</label><br />";
                    valData += "<b>Хугацаа: </b><label>" + value.BEGINYR + "-" + value.ENDYR + "</label><br />";
                    valData += "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:justify; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + value.WHONAME + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:left; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + value.BRLISTNAME + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:left; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + value.IMPLDATE + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:justify; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + replaceDatabaseToDisplay(value.IMPL) + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:center; border: 1px solid #000; font-size:12px !important; padding:5px;\">";
                    if (value.EVAL == "") valData += "-";
                    else valData += value.EVAL;
                    valData += " </td>";
                    valData += "</tr>";
                    strbodlogoid = value.POLICYBODLOGO_ID;
                    strzoriltid = value.POLICYZORILT;
                });
                valData += "</tbody></table>";
                $("#divBindTab6t4Table").html(valData);
                hideLoader('loaderTab6t4');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $('#pTab6t4SelectIsteam, #pTab6t4SelectIsimpl').change(function () {
        dataBindTab6t4DataTable();
    });
    //tab7t1
    function dataBindTab7t1DataTable() {
        var valData = '';
        var cnt = 0, cnt100 = 0, cnt90 = 0, cnt80 = 0, cnt70 = 0, cnt50 = 0, cnt30 = 0, cnt10 = 0, cnt0 = 0, cntnone = 0, cntgazarcnt = 0;
        var sumper = 0;
        showLoader('loaderTab7t1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PolicyTab7t1Datatable",
            data: '{"policytypeid":"' + <%=Request.QueryString["id"]%> + '", "yr":"' + $('#pTab7t1SelectYear option:selected').val() + '", "yrhf":"' + $('#pTab7t1SelectYearHalf option:selected').val() + '", "isteam":"' + $('#pTab7t1SelectIsteam option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\">";
                valData += "<thead style=\"background-color:C6D9F1;\">";
                valData += "<tr>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Газар</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Нийт<br/>төлөвлөгөө</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Бүрэн<br>хэрэгжсэн</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Тухайн хугацаанд<br>хэрэгжүүлсэн</th>";
                valData += "<th colspan=\"9\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хэрэгжилтийн хувь</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Биелэлтийн хувь</th>";
                valData += "</tr>";
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
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    cnt += parseInt(value.POLICYPLAN_CNT.replace("-", "0"));
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
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.POLICYPLAN_CNT + "</td>";
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
                $("#divBindTab7t1Table").html(valData);
                $('#pTab7t1Year').html($('#pTab7t1SelectYear option:selected').val());
                $('#pTab7t1YearHalf').html($('#pTab7t1SelectYearHalf option:selected').text());
                hideLoader('loaderTab7t1');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $('#pTab7t1SelectYear, #pTab7t1SelectYearHalf, #pTab7t1SelectIsteam').change(function () {
        dataBindTab7t1DataTable();
    });
    //tab7t2
    function dataBindTab7t2DataTable() {
        var valData = '';
        var cnt = 0, cnt100 = 0, cnt90 = 0, cnt80 = 0, cnt70 = 0, cnt50 = 0, cnt30 = 0, cnt10 = 0, cnt0 = 0, cntnone = 0, cntgazarcnt = 0;
        var sumper = 0;
        showLoader('loaderTab7t2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PolicyTab7t2Datatable",
            data: '{"policytypeid":"' + <%=Request.QueryString["id"]%> + '", "yr":"' + $('#pTab7t2SelectYear option:selected').val() + '", "yrhf":"' + $('#pTab7t2SelectYearHalf option:selected').val() + '", "isteam":"' + $('#pTab7t2SelectIsteam option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\">";
                valData += "<thead style=\"background-color:C6D9F1;\">";
                valData += "<tr>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Газар</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Нийт<br/>төлөвлөгөө</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Бүрэн<br>хэрэгжсэн</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Тухайн хугацаанд<br>хэрэгжүүлсэн</th>";
                valData += "<th colspan=\"9\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хэрэгжилтийн хувь</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Биелэлтийн хувь</th>";
                valData += "</tr>";
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
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    cnt += parseInt(value.POLICYPLAN_CNT.replace("-", "0"));
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
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.NAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.POLICYPLAN_CNT + "</td>";
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
                $("#divBindTab7t2Table").html(valData);
                $('#pTab7t2Year').html($('#pTab7t2SelectYear option:selected').val());
                $('#pTab7t2YearHalf').html($('#pTab7t2SelectYearHalf option:selected').text());
                hideLoader('loaderTab7t2');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $('#pTab7t2SelectYear, #pTab7t2SelectYearHalf, #pTab7t2SelectIsteam').change(function () {
        dataBindTab7t2DataTable();
    });

    //tab8
    function dataBindTab8DataTable() {
        var valData = '';
        var isImplEdit = false;
        showLoader('loaderTab8');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT ISACTIVE FROM TBL_POLICYTYPE WHERE ID=' + <%=Request.QueryString["id"]%> + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == '1') {
                    if (funcCheckRoles('1,21')) {
                        isImplEdit = true;
                    }
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/PolicyTab8Datatable",
                    data: '{"policytypeid":"' + <%=Request.QueryString["id"]%> + '", "bodlogoid":"' + $('#pTab8SelectBodlogo option:selected').val() + '", "zoriltid":"' + $('#pTab8SelectZorilt option:selected').val() + '", "isteam":"' + $('#pTab8SelectIsteam option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valData += "<table id=\"pTab8Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                        valData += "<thead>";
                        valData += "<tr>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Төлөвлөгөө</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хүрэх үр дүн, шалгуур үзүүлэлт</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах байгууллага</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах газар</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Явуулсан хугацаа</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Биелэлт оруулах</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хавсралт файл</th>";
                        valData += "</tr>";
                        valData += "</thead>";
                        valData += "<tbody>";
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<tr data-id=\"" + value.POLICYPLAN_ID + "\">";
                            valData += "<td>" + value.ROWNO + "</td>";
                            valData += "<td>" + replaceDatabaseToDisplay(value.POLICYPLAN) + "</td>";
                            valData += "<td>";
                            valData += "<b>Шал/үзүүлэлт: </b><label>" + replaceDatabaseToDisplay(value.CRITERIA) + "</label><br />";
                            valData += "<b>Хүрэх үр дүн: </b><label>" + replaceDatabaseToDisplay(value.RESULT) + "</label><br />";
                            valData += "<b>Хугацаа: </b><label>" + value.BEGINYR + "-" + value.ENDYR + "</label><br />";
                            valData += "</td>";
                            valData += "<td style=\"text-align:center; vertical-align:middle;\">" + value.WHONAME + "</td>";
                            valData += "<td style=\"text-align:center; vertical-align:middle;\">" + value.BRLISTNAME + "</td>";
                            valData += "<td style=\"text-align:center; vertical-align:middle;\">";
                            if (value.YRHFLIST != "") valData += value.YRHFLIST;
                            valData += "</td>";
                            valData += "<td style=\"text-align:center; vertical-align:middle;\">";
                            if (isImplEdit) valData += "<a href=\"../pg/policyTab8ImplModal.aspx?id=" + value.POLICYPLAN_ID + "\" data-target=\"#pTab8Modal\" data-toggle=\"modal\" style=\"cursor:pointer\" onclick=\"policyTab8ImplEdit(this);\"><i class=\"glyphicon " + value.ISIMPL + " font-xl\"></i></a>";
                            else valData += "<a href=\"javascript:void(0);\" style=\"cursor:pointer\" onclick=\"alert('Таньд эрх байхгүй байна!');\"><i class=\"glyphicon " + value.ISIMPL + " font-xl\"></i></a>";
                            valData += "</td>";
                            valData += "<td>";
                            if (value.FILENAME != "") valData += "<a href=\"../files/policy/" + value.FILENAME + "\" class=\"btn btn-link btn-xs\" style=\"padding:0px; border:none;\" download title=\"Хавсаргасан файл татах\"><i class=\"fa fa-paperclip fa-lg\"></i></a></td>";
                            valData += "</td>";
                            valData += "</tr>";
                        });
                        valData += "<script>";
                        valData += "var responsiveHelper_pTab8Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab8Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab8Datatable) {responsiveHelper_pTab8Datatable = new ResponsiveDatatablesHelper($('#pTab8Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab8Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab8Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" }, null, null, null, null, null, { \"sWidth\": \"52px\" }, { \"sWidth\": \"15px\" }]});";
                        valData += "<\/script>";
                        $("#divBindTab8Table").html(valData);
                        hideLoader('loaderTab8');
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
    $('#pTab8SelectBodlogo').change(function () {
        var valData = '';
        if ($('#pTab8SelectBodlogo option:selected').val() == '') {
            $('#pTab8SelectZorilt').html('<option value=\"\">Бүгд</option>');
            $('#pTab8SelectZorilt').prop('disabled', true);
            dataBindTab8DataTable();
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PolicyTab3ZoriltListDDL",
                data: '{"policybodlogoid":"' + $('#pTab8SelectBodlogo option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.ID + '" title="' + replaceDatabaseToDisplay(value.POLICYZORILT) + '">' + replaceDatabaseToDisplay(value.POLICYZORILT) + '</option>';
                    });
                    $("#pTab8SelectZorilt").html('<option value="">Бүгд</option>' + valData);
                    $('#pTab8SelectZorilt').prop('disabled', false);
                    dataBindTab8DataTable();
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
    $('#pTab8SelectZorilt, #pTab8SelectIsteam').change(function () {
        dataBindTab8DataTable();
    });
    function policyTab8ImplEdit(el) {
        //$('#policyTab8ModalDivSelect2Yrhf').html('<select id="policyTab8ModalSelect2Yrhf" name="policyTab8ModalSelect2Yrhf" multiple="multiple" style="width:100%" data-placeholder="Эхлэх дуусах жил, хагас жил сонго">');
        //var valPlanYrhf = $(el).closest('tr').find('td:eq(2)').find('label:eq(2)').html();
        //var valSelectedYrhf = $(el).closest('tr').find('td:eq(5)').html();
        //var valYrhf1 = '', valYrhf2 = '';
        //for (var i = parseInt(valPlanYrhf.split('-')[0]) ; i <= parseInt(valPlanYrhf.split('-')[1]) ; i++) {
        //    alert(i);
        //    for (var y = 0; y < parseInt(valSelectedYrhf.split(',').length) ; y++) {
        //        if (parseInt($.trim(valSelectedYrhf.split(',')[y].split('-')[0])) == i) {
        //            if (parseInt($.trim(valSelectedYrhf.split(',')[y]).split('-')[1]) == 1) valYrhf1 = ' selected="selected"';
        //            else if (parseInt($.trim(valSelectedYrhf.split(',')[y]).split('-')[1]) == 2) valYrhf2 = ' selected="selected"';
        //        }
        //    }
        //    $('#policyTab8ModalDivSelect2Yrhf').append('<option value="' + i + '-1' + '"' + valYrhf1 + '>' + i + ' - Эхний хагас жил</option>');
        //    $('#policyTab8ModalDivSelect2Yrhf').append('<option value="' + i + '-2' + '"' + valYrhf2 + '>' + i + ' - Сүүлийн хагас жил</option>');
        //}
        //$('#policyTab8ModalDivSelect2Yrhf').append('</select>');
        //alert($('#policyTab8ModalDivSelect2Yrhf').html());
        //$("#policyTab8ModalSelect2Yrhf").select2();
    }

    //Tab9
    function dataBindTab9DataTable() {
        var valData = '';
        var valIsEdit = '0';
        showLoader('loaderTab9');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT ISACTIVE FROM TBL_POLICYTYPE WHERE ID=' + <%=Request.QueryString["id"]%> + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == '1') {
                    if (funcCheckRoles('1,21')) {
                        valIsEdit = '1';
                    }
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/PolicyTab9Datatable",
                    data: '{"policytypeid":"' + <%=Request.QueryString["id"]%> + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valData += "<table id=\"pTab9Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                        valData += "<thead>";
                        valData += "<tr>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Он</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Тайлант нэр</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Файл</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Засварлах</th>";
                        valData += "</tr>";
                        valData += "</thead>";
                        valData += "<tbody>";
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<tr data-id=\"" + value.ID + "\">";
                            valData += "<td>" + value.ROWNO + "</td>";
                            valData += "<td>" + value.YR + "</td>";
                            valData += "<td data-id=\"" + value.YRHF + "\">" + value.YRHF_NAME + "</td>";
                            valData += "<td>";
                            if (value.FILENAME != "") {
                                valData += "<div class=\"btn-group\">";
                                valData += "<a href=\"../files/policy/" + value.FILENAME + "\" class=\"btn btn-default btn-xs\" download title=\"Хавсаргасан файл татах\"><i class=\"fa fa-download\"></i></a>";
                                valData += "<a href=\"../pg/policyTabsAttachShowModal.aspx?filename=" + value.FILENAME + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTabsAttachShowModal\" data-toggle=\"modal\"><i class=\"fa fa-eye\"></i></a>";
                                valData += "</div>";
                            }
                            valData += "</td>";
                            valData += "<td>";
                            if (valIsEdit == '1') {
                                valData += "<div class=\"btn-group\">";
                                valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab9(this,'засах');\" data-target=\"#pTab9Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                                valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab9(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                                valData += "</div>";
                            }
                            valData += "</td>";
                            valData += "</tr>";
                        });
                        valData += "<script>";
                        valData += "var responsiveHelper_pTab9Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab9Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab9Datatable) {responsiveHelper_pTab9Datatable = new ResponsiveDatatablesHelper($('#pTab9Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab9Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab9Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },{ \"sWidth\": \"70px\" },null, { \"sWidth\": \"50px\" }, { \"sWidth\": \"45px\" }]});";
                        valData += "<\/script>";
                        $("#divBindTab9Table").html(valData);
                        hideLoader('loaderTab9');
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
    function showAddEditTab9(el, isinsupt) {
        $('#pTab9ModalHeaderLabel').html(isinsupt);
        $('#pTab9ModalID').html('');
        $('#pTab9ModalSelectYear, #pTab9ModalSelectYearhalf').val('');
        $('#pTab9AttachBtn').html('Файл хавсаргаагүй байна...');
        $('#pTab9AttachBtn').attr('href', 'javascript:void(0);');
        $('#pTab9AttachInput').val('');

        if (isinsupt == 'засах') {
            $('#pTab9ModalID').text($(el).closest('tr').attr('data-id'));
            $('#pTab9ModalSelectYear').val($(el).closest('tr').find('td:eq(1)').html());
            $('#pTab9ModalSelectYearhalf').val($(el).closest('tr').find('td:eq(2)').attr('data-id'));
            if ($.trim($(el).closest('tr').find('td:eq(3)').html()) != "") {
                $('#pTab9AttachBtn').html($(el).closest('tr').find('td:eq(3)').find('a:eq(0)').attr('href').split('/').pop());
                $('#pTab9AttachBtn').attr('href', $(el).closest('tr').find('td:eq(3)').find('a:eq(0)').attr('href'));
            }
        }
    }
    function showDeleteTab9(el) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Сонгосон тайлангийн архивийг устгах уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"DELETE FROM TBL_POLICYPLAN_FILEARCHIVE WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        if ($.trim($(el).closest('tr').find('td:eq(3)').html()) != "") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/DeleteFile",
                                data: '{"filename":"~/files/policy/' + $(el).closest('tr').find('td:eq(3)').find('a:eq(0)').attr('href').split('/').pop() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    smallBox('Файл', 'Амжилттай устгагдлаа...', '#659265', 1000);
                                },
                                failure: function (response) {
                                    alert('FAILURE: ' + response.d);
                                },
                                error: function (xhr, status, error) {
                                    window.location = '../#pg/error500.aspx';
                                }
                            });
                        }
                        dataBindTab9DataTable();
                        smallBox('Сонгосон тайлангийн архив', 'Амжилттай устлаа...', '#659265', 3000);                        

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
    $('#pTab9ModalForm').bootstrapValidator({
        fields: {
            pTab9ModalSelectYear: {
                group: '.col-md-6',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab9ModalSelectYearhalf: {
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
            if ($.trim($('#pTab9AttachBtn').val()) == 'Файл хавсаргаагүй байна...') alert('Файл хавсаргана уу!');
            else {
                var filename = 'null', filenameF = '';
                if ($('#pTab9AttachBtn').html() != 'Файл хавсаргаагүй байна...') {
                    filename = '\'БББТайлан<%=Request.QueryString["id"]%>-' + $('#pTab9ModalSelectYear option:selected').val() + '-' + $('#pTab9ModalSelectYearhalf option:selected').val() + '.' + $('#pTab9AttachBtn').html().split('.').pop() + '\'';
                    filenameF = 'БББТайлан<%=Request.QueryString["id"]%>-' + $('#pTab9ModalSelectYear option:selected').val() + '-' + $('#pTab9ModalSelectYearhalf option:selected').val() + '.' + $('#pTab9AttachBtn').html().split('.').pop() + '';
                }
                if ($('#pTab9ModalHeaderLabel').text() == 'нэмэх') {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                        data: '{"qry":"INSERT INTO TBL_POLICYPLAN_FILEARCHIVE (ID, POLICYTYPE_ID, YR, YRHF, FILENAME, CREATED_STAFFID, CREATED_DATE) VALUES (TBLLASTID(\'TBL_POLICYPLAN_FILEARCHIVE\'), <%=Request.QueryString["id"]%>, ' + $('#pTab9ModalSelectYear option:selected').val() + ', ' + $('#pTab9ModalSelectYearhalf option:selected').val() + ', ' + filename + ', ' + $('#indexUserId').text() + ', sysdate)"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            if ($('#pTab9AttachInput').val() != '') {
                                var uploadfiles = $("#pTab9AttachInput").get(0);
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
                                event.preventDefault();
                            }
                            dataBindTab9DataTable();
                            $('#pTab9Modal').modal('hide');
                            smallBox('Тайлангийн архив', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                        },
                        failure: function (response) {
                            alert('FAILURE: ' + response.d);
                        },
                        error: function (xhr, status, error) {
                            window.location = '../#pg/error500.aspx';
                        }
                    });
                }
                else if ($('#pTab9ModalHeaderLabel').text() == 'засах') {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                        data: '{"qry":"UPDATE TBL_POLICYPLAN_FILEARCHIVE SET POLICYTYPE_ID=<%=Request.QueryString["id"]%>, YR=' + $('#pTab9ModalSelectYear option:selected').val() + ', YRHF=' + $('#pTab9ModalSelectYearhalf option:selected').val() + ', FILENAME=' + filename + ', UPDATED_STAFFID=' + $('#indexUserId').text() + ', UPDATED_DATE=sysdate WHERE ID=' + $("#pTab9ModalID").text() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            if ($('#pTab9AttachInput').val() != '') {
                                var uploadfiles = $("#pTab9AttachInput").get(0);
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
                                event.preventDefault();
                            }
                            dataBindTab9DataTable();
                            $('#pTab9Modal').modal('hide');
                            smallBox('Тайлангийн архив', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
    $("#pTab9AttachInput").change(function () {
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
            $('#pTab9AttachBtn').html($(this).val().split('\\').pop());
        }
        else alert(errMsg);
    });
    
    //tab6t7
    function dataBindTab6t7DataTable() {
        var valData = '';
        var cnt1 = 0, cnt2 = 0, cnt3 = 0, cnt4 = 0, cnt5 = 0;
        showLoader('loaderTab6t7');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PolicyTab6t7Datatable",
            data: '{"yr":"' + $('#pTab6t7SelectYear option:selected').val() + '", "yrhf":"' + $('#pTab6t7SelectYearHalf option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData = "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\"><thead style=\"background-color:C6D9F1;\">";
                valData += "<tr>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center; width:1%;\">#</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Газар</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Нийт</th>";
                valData += "<th colspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Биелэлт</th>";
                valData += "<th colspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Уялдаа холбоо</th>";
                valData += "</tr>";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Тайлагнасан</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Тайлагнаагүй</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Жилийн төлөвлөгөөнд тусгасан арга хэмжээний тоо</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Жилийн төлөвлөгөөнд тусгагдсан сарын төлөвлөгөөний тоо</th>";
                valData += "</tr>";
                valData += "</thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    cnt1 += parseInt(value.CNTPLAN.toString().replace("-", "0"));
                    cnt2 += parseInt(value.IMPL1.toString().replace("-", "0"));
                    cnt3 += parseInt(value.IMPL0.toString().replace("-", "0"));
                    cnt4 += parseInt(value.WORK_CNT.toString().replace("-", "0"));
                    cnt5 += parseInt(value.PLANMNTH_ID.toString().replace("-", "0"));
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; font-size:12px !important;  padding:5px; text-align:center;\">" + value.ROWNO + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:left; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + replaceDatabaseToDisplay(value.DOMAIN_ORG) + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:center; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + value.CNTPLAN + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:center; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + value.IMPL1 + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:center; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + value.IMPL0 + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:center; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + value.WORK_CNT + "</td>";
                    valData += "<td style=\"vertical-align:top; text-align:center; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + value.PLANMNTH_ID + "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "<tfoot>";
                valData += "<tr>";
                valData += "<th colspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">НИЙТ</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt1 + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt2 + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt3 + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt4 + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt5 + "</th>";
                valData += "</tr>";
                valData += "</tfoot>";
                valData += "</table>";
                $("#divBindTab6t7Table").html(valData);
                $('#pTab6t7Year').html($('#pTab6t7SelectYear option:selected').val());
                $('#pTab6t7YearHalf').html($('#pTab6t7SelectYearHalf option:selected').text());
                hideLoader('loaderTab6t7');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $('#pTab6t7SelectYear, #pTab6t7SelectYearHalf').change(function () {
        dataBindTab6t7DataTable();
    });
</script>
