<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="planmnth.aspx.cs" Inherits="LMWebApp.pg.planmnth" %>
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    <h1 class="page-title txt-color-blueDark" style="margin-bottom:12px;">
        <i class="fa-fw fa fa-home"></i>
        <span id="pageUrlModuleName" runat="server">> ҮЙЛ АЖИЛЛАГААНЫ САРЫН ТӨЛӨВЛӨГӨӨ</span>
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
                <li id="pTab2Li" runat="server" onclick="pDatabindTabs(this)" style="width:175px; text-align:center;">
                    <a data-toggle="tab" href="#pTab2" style="color: #356635; background-color: #cde0c4;">
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
                <li id="pTab3Li" runat="server" onclick="pDatabindTabs(this)" style="width:175px; text-align:center;">
                    <a data-toggle="tab" href="#pTab3" style="background-color: #3276b1; color: #FFF;">
                        <i class="glyphicon glyphicon-stats"></i>Сонгосон төлөвлөгөөнд хамааралтай
                        Үнэлгээ
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <div id="pTab1" runat="server" class="tab-pane">
                    <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"><i class="fa fa-table"></i></span>
                            <h2>Сарын төлөвлөгөө</h2>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab1SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab1SelectMonth" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">1 сар</option><option value="2">2 сар</option><option value="3">3 сар</option><option value="4">4 сар</option><option value="5">5 сар</option><option value="6">6 сар</option><option value="7">7 сар</option><option value="8">8 сар</option><option value="9">9 сар</option><option value="10">10 сар</option><option value="11">11 сар</option><option value="12">12 сар</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab1SelectIsPlaned" name="pTab1SelectIsPlaned" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="">Нийт</option><option value="1">Төлөвлөгөөт</option><option value="0">Төлөвлөгөөт бус</option></select>
                                </div>
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options text-right" style="margin-right:0px !important; line-height: 14px;">
                                    Төлөвлөгөөт<br />эсэх:
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab1SelectStaff" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    Ажилтан:
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab1SelectHeltes" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    Хэлтэс:
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab1SelectGazar" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    Газар:
                                </div> 
                            </div>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div class="Colvis TableTools"  style="right:130px; top:8px; z-index:5;">
                                <button id="pTab1Add" runat="server" class="btn btn btn-primary btn-xs" data-target="#pTab1Modal" data-toggle="modal" onclick="showAddEditTab1(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                            </div>
                            <div class="Colvis TableTools" style="width:133px; right:275px; top:0; z-index:5;">
                                <a id="pTab1ModalPlanPrintModalA" class="btn btn-labeled btn-warning" href="pg/planmnthTab1PlanPrintModal.aspx?yr=2015&isplaned=1&gazar=1&heltes=1&staff=1" data-target="#pTab1ModalPlanPrintModal" data-toggle="modal" style="margin: 8px 10px 0 0;"><span class="btn-label" style="padding: 0px 7px 3px 5px;"><i class="fa fa-file-text"></i></span>Төлөвлөгөө хэвлэх, татах</a>
                            </div>
                            <div class="Colvis TableTools" style="width:133px; right:385px; top:0; z-index:5;">
                                <a id="pTab1ModalLoadPrintModalA" class="btn btn-labeled btn-warning" href="pg/planmnthTab1LoadPrintModal.aspx?yr=2015&gazar=1&heltes=1" data-target="#pTab1ModalLoadPrintModal" data-toggle="modal" style="margin: 8px 10px 0 0;"><span class="btn-label" style="padding: 0px 7px 3px 5px;"><i class="fa fa-file-text"></i></span>Ачаалал</a>
                            </div>
                            <div class="Colvis TableTools" style="width:150px; right:525px; top:6px; z-index:5;">
                                <select id="pTab1ModalSelectPlanList" name="pTab1ModalSelectPlanList" class="form-control" style="padding:1px;">
                                    <option value="">Бүгд</option>
                                    <option value="1">Сарын үндсэн ажил</option>
                                    <option value="2">Сайдын тушаал</option>
                                    <option value="3">ТНБД-н тушаал</option>
                                    <option value="4">Дээд байгууллагын шийдвэр</option>
                                    <option value="5">Хөндлөнгийн аудит</option>
                                    <option value="6">Дотоод аудит</option>
                                    <option value="7">Ил тод, нээлттэй байдал</option>
                                </select>
                            </div>
                            <div class="Colvis TableTools" style="right:680px; top:4px; z-index:5; margin-top:7px;"><label>Сарын төлөвлөгөө: </label></div>
                            <div class="Colvis TableTools" style="left:240px; top:0px; z-index:5; margin-top:2px;">
                                <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa-pencil"></i></a> Мэдээлэл засварлах<br />
                                <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa fa-trash-o"></i></a> Мэдээлэл устгах
                            </div>
                            <div class="Colvis TableTools" style="left:400px; top:0px; z-index:5; margin-top:2px;">
                                <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa-info"></i></a> Дэлгэрэнгүй мэдээлэл харах
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
                <div id="pTab2" runat="server" class="tab-pane">
                    <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"><i class="fa fa-bar-chart-o"></i></span>
                            <h2>Биелэлт</h2>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab2SelectMonth" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">1 сар</option><option value="2">2 сар</option><option value="3">3 сар</option><option value="4">4 сар</option><option value="5">5 сар</option><option value="6">6 сар</option><option value="7">7 сар</option><option value="8">8 сар</option><option value="9">9 сар</option><option value="10">10 сар</option><option value="11">11 сар</option><option value="12">12 сар</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab2SelectIsPlaned" name="pTab2SelectIsPlaned" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="">Нийт</option><option value="1">Төлөвлөгөөт</option><option value="0">Төлөвлөгөөт бус</option></select>
                                </div>
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options text-right" style="margin-right:0px !important; line-height: 14px;">
                                    Төлөвлөгөөт<br />эсэх:
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab2SelectStaff" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    Ажилтан:
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab2SelectHeltes" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    Хэлтэс:
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab2SelectGazar" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    Газар:
                                </div> 
                            </div>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div id="loaderTab2" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="divBindTab2Table" class="widget-body no-padding">
                                        
                            </div>
                        </div>
                    </div>
                </div>
                <div id="pTab3" runat="server" class="tab-pane">
                    <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"><i class="fa fa-bar-chart-o"></i></span>
                            <h2>Үнэлгээ</h2>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab3SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab3SelectMonth" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">1 сар</option><option value="2">2 сар</option><option value="3">3 сар</option><option value="4">4 сар</option><option value="5">5 сар</option><option value="6">6 сар</option><option value="7">7 сар</option><option value="8">8 сар</option><option value="9">9 сар</option><option value="10">10 сар</option><option value="11">11 сар</option><option value="12">12 сар</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab3SelectIsPlaned" name="pTab3SelectIsPlaned" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="">Нийт</option><option value="1">Төлөвлөгөөт</option><option value="0">Төлөвлөгөөт бус</option></select>
                                </div>
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options text-right" style="margin-right:0px !important; line-height: 14px;">
                                    Төлөвлөгөөт<br />эсэх:
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab3SelectHeltes" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    Хэлтэс:
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab3SelectGazar" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    Газар:
                                </div> 
                            </div>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
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
                    <ul class="nav nav-tabs bordered">
                        <li id="pTab4t1Li" runat="server" onclick="pDatabindTabs(this)" class="active">
                            <a data-toggle="tab" href="#pTab4t1">ХШҮ-ний дэлгэрэнгүй тайлан</a>
                        </li>
                        <li id="pTab4t2Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab4t2">Удаашралтай үнэлэгдсэн ажлууд </a>
                        </li>
                        <li id="pTab4t3Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab4t3">Хэрэгжилт (газруудаар)</a>
                        </li>
                        <li id="pTab4t4Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab4t4">САРЫН ТӨЛӨВЛӨГӨӨ /ХЯНАЛТ/</a>
                        </li>
                        <li id="pTab4t5Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab4t5">САРЫН ТАЙЛАН /ХЯНАЛТ/</a>
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
                                        <div style="width:100px; float:left; margin-right:10px;">
                                            <select id="pTab4t1SelectMonth" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">1 сар</option>
                                                <option value="2">2 сар</option>
                                                <option value="3">3 сар</option>
                                                <option value="4">4 сар</option>
                                                <option value="5">5 сар</option>
                                                <option value="6">6 сар</option>
                                                <option value="7">7 сар</option>
                                                <option value="8">8 сар</option>
                                                <option value="9">9 сар</option>
                                                <option value="10">10 сар</option>
                                                <option value="11">11 сар</option>
                                                <option value="12">12 сар</option>
                                            </select>
                                        </div>
                                    <div style="width:35px; float:left; margin-right:10px; padding-top:8px;">Газар: </div>
                                    <div style="width:80px; float:left; margin-right:10px;">
                                        <select id="pTab4t1SelectGazar" runat="server" class="form-control" style="padding:1px">
                                            <option selected="selected" value="">Бүгд</option>
                                        </select>
                                    </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab4t1', 'Сарын төлөвлөгөө хэрэгжилтийн дэлгэрэнгүй тайлан')">
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
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                        <label id="pTab4t1Gazar" runat="server" style="font-weight: bold;"></label> 
                                        <label id="pTab4t1Year" runat="server" style="font-weight: bold;"></label> 
                                        ОНЫ 
                                        <label id="pTab4t1Month" runat="server" style="font-weight: bold;"></label> 
                                        САРЫН ТАЙЛАН
                                    </div>
                                    <div id="divBindTab4t1Table"></div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab4t2" class="tab-pane">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab4t2SelectYear" runat="server" class="form-control" style="padding:1px">
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
                                            <select id="pTab4t2SelectMonth" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">1 сар</option>
                                                <option value="2">2 сар</option>
                                                <option value="3">3 сар</option>
                                                <option value="4">4 сар</option>
                                                <option value="5">5 сар</option>
                                                <option value="6">6 сар</option>
                                                <option value="7">7 сар</option>
                                                <option value="8">8 сар</option>
                                                <option value="9">9 сар</option>
                                                <option value="10">10 сар</option>
                                                <option value="11">11 сар</option>
                                                <option value="12">12 сар</option>
                                            </select>
                                        </div>
                                    <div style="width:35px; float:left; margin-right:10px; padding-top:8px;">Газар: </div>
                                        <div style="width:80px; float:left; margin-right:10px;">
                                            <select id="pTab4t2SelectGazar" runat="server" class="form-control" style="padding:1px">
                                                <option selected="selected" value="">Бүгд</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab4t2', 'Сарын төлөвлөгөө хэрэгжилт нь удаашралтай ажил')">
                                                <i class="fa fa-file-word-o"></i>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab4t2')">
                                                <i class="fa fa-print"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="loaderTab4t2" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divpTab4t2" class="reports" style="margin:0 10px 10px 10px;">
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                        <label id="pTab4t2Gazar" runat="server" style="font-weight: bold;"></label> 
                                        <label id="pTab4t2Year" runat="server" style="font-weight: bold;"></label> 
                                        ОНЫ 
                                        <label id="pTab4t2Month" runat="server" style="font-weight: bold;"></label> 
                                         ТӨЛӨВЛӨГӨӨНӨӨС ХЭРЭГЖИЛТ НЬ УДААШРАЛТАЙ ҮНЭЛЭГДСЭН АРГА ХЭМЖЭЭНҮҮД
                                    </div>
                                    <div id="divBindTab4t2Table"></div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab4t3" class="tab-pane">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab5t1SelectYear" runat="server" class="form-control" style="padding:1px">
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
                                            <select id="pTab5t1SelectMonth" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">1 сар</option>
                                                <option value="2">2 сар</option>
                                                <option value="3">3 сар</option>
                                                <option value="4">4 сар</option>
                                                <option value="5">5 сар</option>
                                                <option value="6">6 сар</option>
                                                <option value="7">7 сар</option>
                                                <option value="8">8 сар</option>
                                                <option value="9">9 сар</option>
                                                <option value="10">10 сар</option>
                                                <option value="11">11 сар</option>
                                                <option value="12">12 сар</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab5t1', 'Сарын төлөвлөгөөний хэрэгжилт')">
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
                                        ЯАМНЫ ҮЙЛ АЖИЛЛАГААНЫ
                                        <label id="pTab5t1Year" runat="server" style="font-weight: bold;"></label> 
                                        ОНЫ 
                                        <label id="pTab5t1Quarter" runat="server" style="font-weight: bold;"></label> 
                                        САРЫН ТӨЛӨВЛӨГӨӨНИЙ ХЭРЭГЖИЛТ
                                    </div>
                                    <div id="divBindTab5t1Table"></div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab4t4" class="tab-pane">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab4t4SelectYear" runat="server" class="form-control" style="padding:1px">
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
                                            <select id="pTab4t4SelectMonth" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">1 сар</option>
                                                <option value="2">2 сар</option>
                                                <option value="3">3 сар</option>
                                                <option value="4">4 сар</option>
                                                <option value="5">5 сар</option>
                                                <option value="6">6 сар</option>
                                                <option value="7">7 сар</option>
                                                <option value="8">8 сар</option>
                                                <option value="9">9 сар</option>
                                                <option value="10">10 сар</option>
                                                <option value="11">11 сар</option>
                                                <option value="12">12 сар</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab4t4', 'Сарын төлөвлөгөөний хяналт')">
                                                <i class="fa fa-file-word-o"></i>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab4t4')">
                                                <i class="fa fa-print"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="loaderTab4t4" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divpTab4t4" class="reports" style="margin:0 10px 10px 10px;">
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                        САРЫН ТӨЛӨВЛӨГӨӨ
                                    </div>
                                    <div id="divBindTab4t4Table"></div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab4t5" class="tab-pane">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab4t5SelectYear" runat="server" class="form-control" style="padding:1px">
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
                                            <select id="pTab4t5SelectMonth" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">1 сар</option>
                                                <option value="2">2 сар</option>
                                                <option value="3">3 сар</option>
                                                <option value="4">4 сар</option>
                                                <option value="5">5 сар</option>
                                                <option value="6">6 сар</option>
                                                <option value="7">7 сар</option>
                                                <option value="8">8 сар</option>
                                                <option value="9">9 сар</option>
                                                <option value="10">10 сар</option>
                                                <option value="11">11 сар</option>
                                                <option value="12">12 сар</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab4t5', 'Сарын хэрэгжилтийн хяналт')">
                                                <i class="fa fa-file-word-o"></i>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab4t5')">
                                                <i class="fa fa-print"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="loaderTab4t5" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divpTab4t5" class="reports" style="margin:0 10px 10px 10px;">
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                        САРЫН ТАЙЛАН
                                    </div>
                                    <div id="divBindTab4t5Table"></div>
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
                    <h4 class="modal-title" >Төлөвлөгөө&nbsp;<span id="pTab1ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pTab1ModalID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    Он: <label id="pTab1ModalLabelYear"></label> | <label id="pTab1ModalLabelMonth"></label>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Стратегийн зорилт</label>
									<select id="pTab1ModalSelectStrat" name="pTab1ModalSelectStrat" runat="server" class="form-control" style="padding: 5px;">
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
                                    <label class="control-label">*Үйл ажиллагааны зорилт</label>
									<select id="pTab1ModalSelectAction" name="pTab1ModalSelectAction" runat="server" class="form-control" style="padding: 5px;">
								        <option value="">- Сонго -</option>
							        </select>
                                    <input id="pTab1ModalSelectActionLoader" class="form-control ui-autocomplete-loading hide" disabled="disabled" placeholder="" type="text">
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Жилийн төлөвлөгөө</label>
									<select id="pTab1ModalSelectPlanyr" name="pTab1ModalSelectPlanyr" runat="server" class="form-control" style="padding: 5px;">
								        <option value="">- Сонго -</option>
							        </select>
                                    <input id="pTab1ModalSelectPlanyrLoader" class="form-control ui-autocomplete-loading hide" disabled="disabled" placeholder="" type="text">
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-3">
                                    <label class="control-label">*Дугаар</label>
									<input id="pTab1ModalInputNo" name="pTab1ModalInputNo" class="form-control" type="text" placeholder="Дугаар"/>
                                </div>
                                <div class="col-md-9">
                                    <label class="control-label">*Төлөвлөгөө</label>
									<textarea id="pTab1ModalInputName" name="pTab1ModalInputName" class="form-control" required="" placeholder="Төлөвлөгөө" rows="3"></textarea>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Эхлэх огноо</label>
                                    <div class="input-group">
                                        <input type="text" id="pTab1ModalInputStartDate" name="pTab1ModalInputStartDate" placeholder="Эхлэх огноо" class="form-control datepickerUpdate" >
                                        <span class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </span>
                                    </div> 
                                </div>
                                <div class="col-md-6">
                                    <label>Дуусах огноо</label>
                                    <div class="input-group">
                                        <input type="text" id="pTab1ModalInputEndDate" name="pTab1ModalInputEndDate" placeholder="Дуусах огноо" class="form-control datepickerUpdate" >
                                        <span class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-6">
                                    <label class="control-label">*Хариуцах ажилтан</label>
                                </div>
                                <div class="col-md-6 text-right">
                                    <label id="pTab1ModalAddStafflist" class="calendarEventIcon" style="cursor:pointer;"><i class="fa fa-plus" style="margin-right:3px;" title=""></i>Ажилтан</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div id="pTab1ModalDivSelect2Staff">

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
<div id="pTab1ModalPlanPrintModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">  
	<div class="modal-dialog modal-lg" style="width:90%;">
        <div style="width:56%; display:block; height: 35px; margin:0 auto;">
            <div class="btn-group pull-left" style="color:#fff;">
                Батлагдсан эсэх:
                <select id="pTab1ModalPlanPrintModalSelectIssubmit" style="height: 32px; color:#000;"><option value="" selected>Бүгд</option><option value="1">Батлагдсан</option><option value="0">Батлагдаагүй</option></select>
            </div>
            <div class="btn-group pull-right">
                <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#pTab1ModalPlanPrintModalContent', 'Сарын төлөвлөгөө')">
                    <i class="fa fa-file-word-o"></i>
                </a>
                <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#pTab1ModalPlanPrintModalContent')">
                    <i class="fa fa-print"></i>
                </a>
            </div>
        </div>
        <div id="loaderTab1ModalPlanPrintModal" class="search-background">
            <img width="64" height="" src="img/loading.gif"/>
            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
        </div>
		<div id="pTab1ModalPlanPrintModalContent" class="modal-content reports" style="width:56%; margin:0 auto!important;">
			
		</div>  
	</div>  
</div>
<div id="pTab1ModalInfo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">  
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			
		</div>  
	</div>  
</div>
<div id="pTab1ModalLoadPrintModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">  
	<div class="modal-dialog modal-lg" style="width:90%;">
        <div style="width:56%; display:block; height: 35px; margin:0 auto;">
            <div class="btn-group pull-right">
                <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#pTab1ModalLoadPrintModalContent', 'Сарын төлөвлөгөөний ажлын ачаалал')">
                    <i class="fa fa-file-word-o"></i>
                </a>
                <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#pTab1ModalLoadPrintModalContent')">
                    <i class="fa fa-print"></i>
                </a>
            </div>
        </div>
		<div id="pTab1ModalLoadPrintModalContent" class="modal-content reports" style="width:56%; margin:0 auto!important;">
			
		</div>  
	</div>  
</div>
<div id="pTab1AddStafflistModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                <h4 class="modal-title" >Гүйцэтгэх ажилтан нэмэх</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div id="pTab1AddStafflistModalPlanyrName" class="form-group">
                                    
                        </div>                               
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="col-md-3" style="padding:6px 0 0 0;">
                                    Ажилтан:&nbsp;/<label id="pTab1AddStafflistModalBranchName"></label>/
                                </div>
                                <div class="col-md-8">
                                    <select id="pTab1AddStafflistModalSelectStafflist" name="pTab1AddStafflistModalStafflist" runat="server" class="form-control" style="padding:1px"><option value="">- Ажилтан сонго -</option></select>
                                </div>
                                <div class="col-md-1" style="padding:0 0 0 0;">
                                    <button id="pTab1AddStafflistModalSave" class="btn btn-success btn-sm" type="button" title="Ажилтан хадгалах"><span class="glyphicon glyphicon-floppy-disk"></span> </button>
                                </div>
                            </div>
                        </div>
                        <div id="pTab1AddStaffListDivStafflist" class="form-group">
                                    
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="pTab2Modal" class="modal fade in modalSecond" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            
        </div>
    </div>
</div>
<div id="pTab3ModalInfo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">  
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			
		</div>  
	</div>  
</div>
<script type="text/javascript">
    var globalAjaxVar = null;
    var pagefunction = function () {
        var valLiId = $('#pTab1Li').closest('ul').find('.active').attr('id');
        if (valLiId == 'pTab1Li') {
            dataBindTab1DataTableFirst();
            $.bigBox({
                title: "Анхаарна уу!",
                content: "Сарын төлөвлөгөөг өмнөх сарын 25-ний дотор оруулж 30-ний дотор батлуулна.",
                color: "#c79121",
                timeout: 10000,
                icon: "fa fa-bell swing animated",
                number: "ТӨЛӨВЛӨГӨӨ"
            });
        }
        else if (valLiId == 'pTab2Li') {
            dataBindTab2DataTableFirst();
        }
        else if (valLiId == 'pTab3Li') {
            dataBindTab3DataTableFirst();
        }
        else if (valLiId == 'pTab4Li') {
            dataBindTab4t1DataTableFirst();
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
            if ($.trim($('#divBindTab1Table').html()) == "") {
                dataBindTab1DataTableFirst();
                $.bigBox({
                    title: "Анхаарна уу!",
                    content: "Сарын төлөвлөгөөг өмнөх сарын 25-ний дотор оруулж 28-ний дотор батлуулна.",
                    color: "#c79121",
                    timeout: 10000,
                    icon: "fa fa-bell swing animated",
                    number: "ТӨЛӨВЛӨГӨӨ"
                });
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab2Li') {
            if ($.trim($('#divBindTab2Table').html()) == "") {
                dataBindTab2DataTableFirst();
                $.bigBox({
                    title: "Анхаарна уу!",
                    content: "Сарын төлөвлөгөөний биелэлт дараа сарын 5-ний дотор оруулна.",
                    color: "#71843f",
                    timeout: 10000,
                    icon: "fa fa-bell swing animated",
                    number: "БИЕЛЭЛТ"
                });
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab3Li') {
            if ($.trim($('#divBindTab3Table').html()) == "") {
                dataBindTab3DataTableFirst();
                $.bigBox({
                    title: "Анхаарна уу!",
                    content: "Сарын төлөвлөгөөний үнэлгээ дараа сарын 7-ний дотор оруулна.",
                    color: "#3276B1",
                    timeout: 10000,
                    icon: "fa fa-bell swing animated",
                    number: "ҮНЭЛГЭЭ"
                });
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab4Li') {
            if ($.trim($('#divBindTab4t1Table').html()) == "") {
                dataBindTab4t1DataTableFirst();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab4t1Li') {
            if ($.trim($('#divBindTab4t1Table').html()) == "") {
                dataBindTab4t1DataTableFirst();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab4t2Li') {
            if ($.trim($('#divBindTab4t2Table').html()) == "") {
                dataBindTab4t2DataTableFirst();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab4t3Li') {
            if ($.trim($('#divBindTab5t1Table').html()) == "") {
                dataBindTab5t1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab4t4Li') {
            if ($.trim($('#divBindTab4t4Table').html()) == "") {
                dataBindTab4t4DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab4t5Li') {
            if ($.trim($('#divBindTab4t5Table').html()) == "") {
                dataBindTab4t5DataTable();
            }
        }
    }
    //tab1
    function dataBindTab1DataTableFirst() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr": "' + $('#pTab1SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $('#pTab1SelectGazar').html(valData);
                $('#pTab1SelectGazar').val(userGazarId);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                    data: '{"yr": "' + $('#pTab1SelectYear option:selected').val() + '", "gazar": "' + $("#pTab1SelectGazar option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        });
                        $('#pTab1SelectHeltes').html('<option value="">Бүгд</option>' + valData);
                        if (!funcCheckRoles('1,8')) {
                            $('#pTab1SelectGazar').prop('disabled', true);
                            if (!funcCheckRoles('3,4')) {
                                $('#pTab1SelectHeltes').val(userHeltesId);
                                $('#pTab1SelectHeltes').prop('disabled', true);

                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/GetStaffListForDDL",
                                    data: '{"yr": "' + $('#pTab1SelectYear option:selected').val() + '", "gazar": "' + $("#pTab1SelectGazar option:selected").val() + '", "heltes":"' + $("#pTab1SelectHeltes option:selected").val() + '"}',
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
                                        $("#pTab1SelectStaff").html('<option value="">Бүгд</option>' + valData);
                                        //if (!funcCheckRoles('5,6')) {
                                        //    $('#pTab1Add').css('display', 'none');
                                        //}
                                        //else {
                                        //    $('#pTab1Add').css('display', 'block');
                                        //}
                                        //dataBindTab1DataTable();
                                        $('#pTab1Add').css('display', 'block');
                                        dataBindTab1DataTable();
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
                                $('#pTab1SelectStaff').html('<option value="">Бүгд</option>');
                                $('#pTab1SelectStaff').prop('disabled', true);
                                dataBindTab1DataTable();
                            }
                        }
                        else {
                            $('#pTab1SelectHeltes').prop('disabled', false);
                            $('#pTab1SelectStaff').html('<option value="">Бүгд</option>');
                            $('#pTab1SelectStaff').prop('disabled', true);
                            dataBindTab1DataTable();

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
                window.location = '../#pg/error500.aspx';;
            }
        });
    }
    function dataBindTab1DataTable() {
        var valData = '';
        var valSubmitAll = ' disabled', valSubmit = ' disabled';
        showLoader('loaderTab1');

        if ($("#pTab1ModalSelectPlanList option:selected").val() == '') {
            //month plan
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PlanmnthTab1Datatable1",
                data: '{"yr": "' + $("#pTab1SelectYear option:selected").val() + '", "mnth": "' + $("#pTab1SelectMonth option:selected").val() + '", "gazar": "' + $("#pTab1SelectGazar option:selected").val() + '", "heltes": "' + $("#pTab1SelectHeltes option:selected").val() + '", "stid": "' + $("#pTab1SelectStaff option:selected").val() + '", "isplaned": "' + $("#pTab1SelectIsPlaned option:selected").val() + '", "tp": "' + $("#pTab1ModalSelectPlanList option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    if (funcCheckRoles('1,2,8')) {
                        valSubmitAll = ''; valSubmit = '';
                    }
                    if (parseInt($("#pTab1SelectYear option:selected").val()) == parseInt($('#indexCurrentYear').text())) {
                        if (parseInt($("#pTab1SelectMonth option:selected").val()) < parseInt($('#indexCurrentMonth').text())) {
                            if (funcCheckRoles('1,8')) {
                                valSubmitAll = ''; valSubmit = '';
                            }
                            else {
                                valSubmitAll = " disabled"; valSubmit = " disabled";
                            }
                        }
                    }
                    else {
                        valSubmitAll = " disabled"; valSubmit = " disabled";
                    }

                    valData += '<table id="pTab1Datatable" class="table table-striped table-bordered table-hover smart-form" width="100%"><thead>';
                    valData += '<tr>';
                    valData += '<th class="text-center" style="vertical-align:middle;">#</th>';
                    valData += '<th class="text-center" style="vertical-align:middle;">Төлөвлөгөө</th>';
                    valData += '<th class="text-center" style="vertical-align:middle;">&nbsp;&nbsp;&nbsp;Хугацаа&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>';
                    valData += '<th class="text-center" style="vertical-align:middle;">Гүйцэтгэх ажилтан</th>';
                    valData += '<th class="text-center" style="vertical-align:middle;"><div class="checkbox"><label><input' + valSubmitAll + ' type="checkbox" class="checkbox style-0" onclick="pTab1SubmitAll(this)"><span>Батлах</span></label></div></th>';
                    valData += '<th class="text-center" style="vertical-align:middle;">Засварлах</th>';
                    valData += '</tr>';
                    valData += '</thead><tbody>';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<tr data-stratbrid="' + value.STRAT_BRID + '" data-actionid="' + value.FUNC_ACTION_ID + '" data-planyrid="' + value.PLANYR_ID + '" data-planmnthid="' + value.PLANMNTH_ID + '">';
                        valData += '<td>' + value.ROWNO + '</td>';
                        valData += '<td>' + replaceDatabaseToDisplay(value.PLANMNTH_NAME) + '</td>';
                        valData += '<td>' + value.DT + '</td>';
                        valData += '<td data-id="' + value.STAFFIDLIST + '">' + value.STAFFNAMELIST + '</td>';
                        valData += '<td><label class="checkbox"><input ' + value.SUBMIT + valSubmit + ' type="checkbox" name="checkbox" onclick="pTab1Submit(this)"/><i></i></label></td>';
                        valData += '<td>';
                        valData += '<div class="btn-group">';
                        if (value.ISIMPL == '0' && value.ISEVAL == '0') {
                            valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditTab1(this,\'засах\');" data-target="#pTab1Modal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                            valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab1(this);"><i class="fa fa-trash-o"></i></button>';
                        }
                        else {
                            valData += '<button type="button" class="btn btn-default btn-xs" onclick="alert(\'Сонгосон төлөвлөгөөнд хамааралтай биелэлт болон үнэлгээ орсон тул засварлах боломжгүй байна!\');"><i class="fa fa-pencil"></i></button>'
                            valData += '<button type="button" class="btn btn-default btn-xs" onclick="alert(\'Сонгосон төлөвлөгөөнд хамааралтай биелэлт болон үнэлгээ орсон тул устгах боломжгүй байна!\');"><i class="fa fa-trash-o"></i></button>'
                        }
                        valData += '<a href="pg/planmnthTab1ModalInfo.aspx?yr=' + $("#pTab1SelectYear option:selected").val() + '&id=' + value.PLANMNTH_ID + '" class="btn btn-default btn-xs" data-target="#pTab1ModalInfo" data-toggle="modal"><i class="fa fa-info"></i></a>';
                        valData += '</div>';
                        valData += '</td>';
                        valData += '</tr>';
                    });
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                        data: '{"qry":"SELECT SUBSTR(a.LNAME, 0, 1) || \'.\' || SUBSTR(a.FNAME, 1, 1) || LOWER(SUBSTR(a.FNAME, 2)) as STNAMEINIT FROM hrdbuser.ST_STAFFS a INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE=1 INNER JOIN hrdbuser.STN_MOVE c ON b.MOVE_ID=c.ID AND c.ACTIVE=1 WHERE b.POS_ID=2010201 AND b.BRANCH_ID=9907"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            var valNameGazarHead = data.d;
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/PlanmnthTab1Datatable2",
                                data: '{"yr": "' + $("#pTab1SelectYear option:selected").val() + '", "mnth": "' + $("#pTab1SelectMonth option:selected").val() + '", "gazar": "' + $("#pTab1SelectGazar option:selected").val() + '", "heltes": "' + $("#pTab1SelectHeltes option:selected").val() + '", "stid": "' + $("#pTab1SelectStaff option:selected").val() + '", "isplaned": "' + $("#pTab1SelectIsPlaned option:selected").val() + '", "tp": "' + $("#pTab1ModalSelectPlanList option:selected").val() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    valData += "<tr class=\"info\"><td class=\"text-center\" style=\"vertical-align:middle;\">#</td><td class=\"text-center\" style=\"vertical-align:middle;\">САЙДЫН ТУШААЛЫН ТӨЛӨВЛӨГӨӨ</td><td class=\"text-center\" style=\"vertical-align:middle;\">Хугацаа</td><td class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах<br>ажилтан</td><td class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</td><td class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</td></tr>";
                                    $($.parseJSON(data.d)).each(function (index, value) {
                                        valData += "<tr>";
                                        valData += "<td>" + value.ROWNO + "</td>";
                                        valData += "<td><b>Тушаалын дугаар: </b>" + replaceDatabaseToDisplay(value.TUSHAAL_NUMBER) + "<br/><b>Тушаалын утга: </b>" + replaceDatabaseToDisplay(value.TUSHAAL_NAME) + "<br/><b>Төлөвлөгөө: </b>" + replaceDatabaseToDisplay(value.ZAALT) + "</td>";
                                        valData += "<td>" + value.ENDDATE + "</td>";
                                        if ($('#pTab1SelectGazar option:selected').val() == '9907') valData += "<td>" + valNameGazarHead + "</td>";
                                        else valData += "<td>" + value.HARIUTSSAN_STNAMELIST + "</td>";
                                        valData += "<td>&nbsp;</td>";
                                        valData += "<td>";
                                        valData += "<div class=\"btn-group\">";
                                        valData += "<a href=\"pg/tushaalsaidTab2ModalInfo.aspx?id=" + value.TUSHAAL_ZAALT_ID + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTab1ModalInfo\" data-toggle=\"modal\"><i class=\"fa fa-info\"></i></button>";
                                        valData += "</div>";
                                        valData += "</td>";
                                        valData += "</tr>";
                                    });
                                    globalAjaxVar = $.ajax({
                                        type: "POST",
                                        url: "../ws/ServiceMain.svc/PlanmnthTab1Datatable3",
                                        data: '{"yr": "' + $("#pTab1SelectYear option:selected").val() + '", "mnth": "' + $("#pTab1SelectMonth option:selected").val() + '", "gazar": "' + $("#pTab1SelectGazar option:selected").val() + '", "heltes": "' + $("#pTab1SelectHeltes option:selected").val() + '", "stid": "' + $("#pTab1SelectStaff option:selected").val() + '", "isplaned": "' + $("#pTab1SelectIsPlaned option:selected").val() + '", "tp": "' + $("#pTab1ModalSelectPlanList option:selected").val() + '"}',
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function (data) {
                                            valData += "<tr class=\"info\"><td class=\"text-center\" style=\"vertical-align:middle;\">#</td><td class=\"text-center\" style=\"vertical-align:middle;\">ТӨРИЙН НАРИЙН БИЧГИЙН ДАРГЫН ТУШААЛЫН ТӨЛӨВЛӨГӨӨ</td><td class=\"text-center\" style=\"vertical-align:middle;\">Хугацаа</td><td class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах<br>ажилтан</td><td class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</td><td class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</td></tr>";
                                            $($.parseJSON(data.d)).each(function (index, value) {
                                                valData += "<tr>";
                                                valData += "<td>" + value.ROWNO + "</td>";
                                                valData += "<td><b>Тушаалын дугаар: </b>" + replaceDatabaseToDisplay(value.TUSHAAL_NUMBER) + "<br/><b>Тушаалын утга: </b>" + replaceDatabaseToDisplay(value.TUSHAAL_NAME) + "<br/><b>Төлөвлөгөө: </b>" + replaceDatabaseToDisplay(value.ZAALT) + "</td>";
                                                valData += "<td>" + value.ENDDATE + "</td>";
                                                valData += "<td>" + value.HARIUTSSAN_STNAMELIST + "</td>";
                                                valData += "<td>&nbsp;</td>";
                                                valData += "<td>";
                                                valData += "<div class=\"btn-group\">";
                                                valData += "<a href=\"pg/tushaalsaidTab2ModalInfo.aspx?id=" + value.TUSHAAL_ZAALT_ID + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTab1ModalInfo\" data-toggle=\"modal\"><i class=\"fa fa-info\"></i></button>";
                                                valData += "</div>";
                                                valData += "</td>";
                                                valData += "</tr>";
                                            });
                                            globalAjaxVar = $.ajax({
                                                type: "POST",
                                                url: "../ws/ServiceMain.svc/PlanmnthTab1Datatable4",
                                                data: '{"yr": "' + $("#pTab1SelectYear option:selected").val() + '", "mnth": "' + $("#pTab1SelectMonth option:selected").val() + '", "gazar": "' + $("#pTab1SelectGazar option:selected").val() + '", "heltes": "' + $("#pTab1SelectHeltes option:selected").val() + '", "stid": "' + $("#pTab1SelectStaff option:selected").val() + '", "isplaned": "' + $("#pTab1SelectIsPlaned option:selected").val() + '", "tp": "' + $("#pTab1ModalSelectPlanList option:selected").val() + '"}',
                                                contentType: "application/json; charset=utf-8",
                                                dataType: "json",
                                                success: function (data) {
                                                    valData += "<tr class=\"info\"><td class=\"text-center\" style=\"vertical-align:middle;\">#</td><td class=\"text-center\" style=\"vertical-align:middle;\">ДЭЭД БАЙГУУЛЛАГЫН ТОГТООЛ ШИЙДВЭР</td><td class=\"text-center\" style=\"vertical-align:middle;\">Хугацаа</td><td class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах<br>ажилтан</td><td class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</td><td class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</td></tr>";
                                                    $($.parseJSON(data.d)).each(function (index, value) {
                                                        valData += "<tr>";
                                                        valData += "<td>" + value.ROWNO + "</td>";
                                                        valData += "<td>" + replaceDatabaseToDisplay(value.ZAALT) + "</td>";
                                                        valData += "<td>" + value.ENDDATE + "</td>";
                                                        valData += "<td>&nbsp;</td>";
                                                        valData += "<td>&nbsp;</td>";
                                                        valData += "<td>";
                                                        valData += "<div class=\"btn-group\">";
                                                        valData += "<a href=\"pg/togtoolTab2ModalInfo.aspx?id=" + value.ZAALT_ID + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTab1ModalInfo\" data-toggle=\"modal\"><i class=\"fa fa-info\"></i></button>";
                                                        valData += "</div>";
                                                        valData += "</td>";
                                                        valData += "</tr>";
                                                    });
                                                    globalAjaxVar = $.ajax({
                                                        type: "POST",
                                                        url: "../ws/ServiceMain.svc/PlanmnthTab1Datatable5",
                                                        data: '{"gazar": "' + $("#pTab1SelectGazar option:selected").val() + '"}',
                                                        contentType: "application/json; charset=utf-8",
                                                        dataType: "json",
                                                        success: function (data) {
                                                            valData += "<tr class=\"info\"><td class=\"text-center\" style=\"vertical-align:middle;\">#</td><td class=\"text-center\" style=\"vertical-align:middle;\">ХӨНДЛӨНГИЙН АУДИТ</td><td class=\"text-center\" style=\"vertical-align:middle;\">Хугацаа</td><td class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах<br>газар</td><td class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</td><td class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</td></tr>";
                                                            $($.parseJSON(data.d)).each(function (index, value) {
                                                                valData += "<tr>";
                                                                valData += "<td>" + value.ROWNO + "</td>";
                                                                valData += "<td><b>Тайлангийн дугаар: </b>" + replaceDatabaseToDisplay(value.AUDITEXTERNAL_REPORT_NO) + "<br/><b>Тайлангийн утга: </b>" + replaceDatabaseToDisplay(value.AUDITEXTERNAL_REPORT_NAME) + "<br/><b>Зөвлөмжийн утга: </b>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                                                                valData += "<td>" + value.SUCCESSDATE + "</td>";
                                                                valData += "<td>" + value.BRLISTNAME + "</td>";
                                                                valData += "<td>&nbsp;</td>";
                                                                valData += "<td>";
                                                                valData += "<div class=\"btn-group\">";
                                                                valData += "<a href=\"pg/planmnthExternalauditTab2ModalInfo.aspx?id=" + value.ID + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTab1ModalInfo\" data-toggle=\"modal\"><i class=\"fa fa-info\"></i></button>";
                                                                valData += "</div>";
                                                                valData += "</td>";
                                                                valData += "</tr>";
                                                            });
                                                            globalAjaxVar = $.ajax({
                                                                type: "POST",
                                                                url: "../ws/ServiceMain.svc/PlanmnthTab1Datatable6",
                                                                data: '{"gazar": "' + $("#pTab1SelectGazar option:selected").val() + '"}',
                                                                contentType: "application/json; charset=utf-8",
                                                                dataType: "json",
                                                                success: function (data) {
                                                                    valData += "<tr class=\"info\"><td class=\"text-center\" style=\"vertical-align:middle;\">#</td><td class=\"text-center\" style=\"vertical-align:middle;\">ХӨНДЛӨНГИЙН АУДИТ</td><td class=\"text-center\" style=\"vertical-align:middle;\">Хугацаа</td><td class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах<br>газар</td><td class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</td><td class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</td></tr>";
                                                                    $($.parseJSON(data.d)).each(function (index, value) {
                                                                        valData += "<tr>";
                                                                        valData += "<td>" + value.ROWNO + "</td>";
                                                                        valData += "<td><b>Тайлангийн дугаар: </b>" + replaceDatabaseToDisplay(value.AUDITINTERNAL_REPORT_NO) + "<br/><b>Тайлангийн утга: </b>" + replaceDatabaseToDisplay(value.AUDITINTERNAL_REPORT_NAME) + "<br/><b>Зөвлөмжийн утга: </b>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                                                                        valData += "<td>" + value.SUCCESSDATE + "</td>";
                                                                        valData += "<td>" + value.BRLISTNAME + "</td>";
                                                                        valData += "<td>&nbsp;</td>";
                                                                        valData += "<td>";
                                                                        valData += "<div class=\"btn-group\">";
                                                                        valData += "<a href=\"pg/planmnthInternalauditTab2ModalInfo.aspx?id=" + value.ID + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTab1ModalInfo\" data-toggle=\"modal\"><i class=\"fa fa-info\"></i></button>";
                                                                        valData += "</div>";
                                                                        valData += "</td>";
                                                                        valData += "</tr>";
                                                                    });
                                                                    globalAjaxVar = $.ajax({
                                                                        type: "POST",
                                                                        url: "../ws/ServiceMain.svc/PlanmnthTab1Datatable7",
                                                                        data: '{"gazarinitname": "' + $("#pTab1SelectGazar option:selected").text() + '", "mnth":"' + $('#pTab1SelectMonth option:selected').val() + '"}',
                                                                        contentType: "application/json; charset=utf-8",
                                                                        dataType: "json",
                                                                        success: function (data) {
                                                                            var valRw = 1;
                                                                            valData += "<tr class=\"info\"><td class=\"text-center\" style=\"vertical-align:middle;\">#</td><td class=\"text-center\" style=\"vertical-align:middle;\">ИЛ ТОД, НЭЭЛТТЭЙ БАЙДАЛ</td><td class=\"text-center\" style=\"vertical-align:middle;\">Хугацаа</td><td class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах<br>газар</td><td class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</td><td class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</td></tr>";
                                                                            $($.parseJSON(data.d)).each(function (index, value) {
                                                                                valData += "<tr>";
                                                                                valData += "<td>" + valRw + "</td>";
                                                                                valData += "<td><b>Төрөл: </b>" + replaceDatabaseToDisplay(value.TRANSPARENCYTYPE_NAME) + "<br/><b>Нэр: </b>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                                                                                valData += "<td>" + value.MNTHLIST_ID + "</td>";
                                                                                valData += "<td>" + value.GROUPLIST_NAME + "</td>";
                                                                                valData += "<td>&nbsp;</td>";
                                                                                valData += "<td>";
                                                                                valData += "<div class=\"btn-group\">";
                                                                                valData += "<a href=\"pg/planmnthTransparencyTab2ModalInfo.aspx?id=" + value.ID + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTab1ModalInfo\" data-toggle=\"modal\"><i class=\"fa fa-info\"></i></button>";
                                                                                valData += "</div>";
                                                                                valData += "</td>";
                                                                                valData += "</tr>";
                                                                                valRw++;
                                                                            });
                                                                            valData += "</tbody>";
                                                                            valData += "</table>";
                                                                            valData += "<script>";
                                                                            valData += "var responsiveHelper_pTab1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab1Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab1Datatable) {responsiveHelper_pTab1Datatable = new ResponsiveDatatablesHelper($('#pTab1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"80px\" }, null, { \"sWidth\": \"35px\" }, { \"sWidth\": \"62px\" }]});";
                                                                            valData += "<\/script>";
                                                                            $("#divBindTab1Table").html(valData);
                                                                            hideLoader('loaderTab1');
                                                                            pTab1ModalPlanPrintModalAHrefBind();
                                                                            pTab1ModalLoadPrintModalAHrefBind();
                                                                            pTab1IsAllCheck();
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
            if ($("#pTab1ModalSelectPlanList option:selected").val() == '1') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/PlanmnthTab1Datatable1",
                    data: '{"yr": "' + $("#pTab1SelectYear option:selected").val() + '", "mnth": "' + $("#pTab1SelectMonth option:selected").val() + '", "gazar": "' + $("#pTab1SelectGazar option:selected").val() + '", "heltes": "' + $("#pTab1SelectHeltes option:selected").val() + '", "stid": "' + $("#pTab1SelectStaff option:selected").val() + '", "isplaned": "' + $("#pTab1SelectIsPlaned option:selected").val() + '", "tp": "' + $("#pTab1ModalSelectPlanList option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        if (funcCheckRoles('1,2,8')) {
                            valSubmitAll = ''; valSubmit = '';
                        }
                        if (parseInt($("#pTab1SelectYear option:selected").val()) == parseInt($('#indexCurrentYear').text())) {
                            if (parseInt($("#pTab1SelectMonth option:selected").val()) < parseInt($('#indexCurrentMonth').text())) {
                                if (funcCheckRoles('1,8')) {
                                    valSubmitAll = ''; valSubmit = '';
                                }
                                else {
                                    valSubmitAll = " disabled"; valSubmit = " disabled";
                                }
                            }
                        }
                        else {
                            valSubmitAll = " disabled"; valSubmit = " disabled";
                        }

                        valData += '<table id="pTab1Datatable" class="table table-striped table-bordered table-hover smart-form" width="100%"><thead>';
                        valData += '<tr>';
                        valData += '<th class="text-center" style="vertical-align:middle;">#</th>';
                        valData += '<th class="text-center" style="vertical-align:middle;">Төлөвлөгөө</th>';
                        valData += '<th class="text-center" style="vertical-align:middle;">&nbsp;&nbsp;&nbsp;Хугацаа&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>';
                        valData += '<th class="text-center" style="vertical-align:middle;">Гүйцэтгэх ажилтан</th>';
                        valData += '<th class="text-center" style="vertical-align:middle;"><div class="checkbox"><label><input' + valSubmitAll + ' type="checkbox" class="checkbox style-0" onclick="pTab1SubmitAll(this)"><span>Батлах</span></label></div></th>';
                        valData += '<th class="text-center" style="vertical-align:middle;">Засварлах</th>';
                        valData += '</tr>';
                        valData += '</thead><tbody>';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<tr data-stratbrid="' + value.STRAT_BRID + '" data-actionid="' + value.FUNC_ACTION_ID + '" data-planyrid="' + value.PLANYR_ID + '" data-planmnthid="' + value.PLANMNTH_ID + '">';
                            valData += '<td>' + value.ROWNO + '</td>';
                            valData += '<td>' + replaceDatabaseToDisplay(value.PLANMNTH_NAME) + '</td>';
                            valData += '<td>' + value.DT + '</td>';
                            valData += '<td data-id="' + value.STAFFIDLIST + '">' + value.STAFFNAMELIST + '</td>';
                            valData += '<td><label class="checkbox"><input ' + value.SUBMIT + valSubmit + ' type="checkbox" name="checkbox" onclick="pTab1Submit(this)"/><i></i></label></td>';
                            valData += '<td>';
                            valData += '<div class="btn-group">';
                            if (value.ISIMPL == '0' && value.ISEVAL == '0') {
                                valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditTab1(this,\'засах\');" data-target="#pTab1Modal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                                valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab1(this);"><i class="fa fa-trash-o"></i></button>';
                            }
                            else {
                                valData += '<button type="button" class="btn btn-default btn-xs" onclick="alert(\'Сонгосон төлөвлөгөөнд хамааралтай биелэлт болон үнэлгээ орсон тул засварлах боломжгүй байна!\');"><i class="fa fa-pencil"></i></button>'
                                valData += '<button type="button" class="btn btn-default btn-xs" onclick="alert(\'Сонгосон төлөвлөгөөнд хамааралтай биелэлт болон үнэлгээ орсон тул устгах боломжгүй байна!\');"><i class="fa fa-trash-o"></i></button>'
                            }
                            valData += '<a href="pg/planmnthTab1ModalInfo.aspx?yr=' + $("#pTab1SelectYear option:selected").val() + '&id=' + value.PLANMNTH_ID + '" class="btn btn-default btn-xs" data-target="#pTab1ModalInfo" data-toggle="modal"><i class="fa fa-info"></i></button>';
                            valData += '</div>';
                            valData += '</td>';
                            valData += '</tr>';
                        });
                        valData += '</tbody>';
                        valData += '</table>';
                        valData += '<script>';
                        valData += "var responsiveHelper_pTab1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab1Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab1Datatable) {responsiveHelper_pTab1Datatable = new ResponsiveDatatablesHelper($('#pTab1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"80px\" }, null, { \"sWidth\": \"35px\" }, { \"sWidth\": \"62px\" }]});";
                        valData += '<\/script>';
                        $("#divBindTab1Table").html(valData);
                        hideLoader('loaderTab1');
                        pTab1ModalPlanPrintModalAHrefBind();
                        pTab1ModalLoadPrintModalAHrefBind();
                        pTab1IsAllCheck();
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        window.location = '../#pg/error500.aspx';
                    }
                });
            }
            else if ($("#pTab1ModalSelectPlanList option:selected").val() == '2') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/PlanmnthTab1Datatable2",
                    data: '{"yr": "' + $("#pTab1SelectYear option:selected").val() + '", "mnth": "' + $("#pTab1SelectMonth option:selected").val() + '", "gazar": "' + $("#pTab1SelectGazar option:selected").val() + '", "heltes": "' + $("#pTab1SelectHeltes option:selected").val() + '", "stid": "' + $("#pTab1SelectStaff option:selected").val() + '", "isplaned": "' + $("#pTab1SelectIsPlaned option:selected").val() + '", "tp": "' + $("#pTab1ModalSelectPlanList option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valData += "<table id=\"pTab1Datatable\" class=\"table table-striped table-bordered table-hover smart-form\" width=\"100%\"><thead>";
                        valData += "<tr>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Төлөвлөгөө</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хугацаа&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах<br/>ажилтан</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Засварлах</th>";
                        valData += "</tr>";
                        valData += "</thead><tbody>";
                        valData += "<tr class=\"info\"><td class=\"text-center\" style=\"vertical-align:middle;\">#</td><td class=\"text-center\" style=\"vertical-align:middle;\">САЙДЫН ТУШААЛЫН ЗААЛТ</td><td class=\"text-center\" style=\"vertical-align:middle;\">Хугацаа</td><td class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах<br>ажилтан</td><td class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</td><td class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</td></tr>";
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<tr>";
                            valData += "<td>" + value.ROWNO + "</td>";
                            valData += "<td><b>Тушаалын дугаар: </b>" + replaceDatabaseToDisplay(value.TUSHAAL_NUMBER) + "<br/><b>Тушаалын утга: </b>" + replaceDatabaseToDisplay(value.TUSHAAL_NAME) + "<br/><b>Төлөвлөгөө: </b>" + replaceDatabaseToDisplay(value.ZAALT) + "</td>";
                            valData += "<td>" + value.ENDDATE + "</td>";
                            valData += "<td>" + value.HARIUTSSAN_STNAMELIST + "</td>";
                            valData += "<td>&nbsp;</td>";
                            valData += "<td>";
                            valData += "<div class=\"btn-group\">";
                            valData += "<a href=\"pg/tushaalsaidTab2ModalInfo.aspx?id=" + value.TUSHAAL_ZAALT_ID + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTab1ModalInfo\" data-toggle=\"modal\"><i class=\"fa fa-info\"></i></button>";
                            valData += "</div>";
                            valData += "</td>";
                            valData += "</tr>";
                        });
                        valData += "</tbody>";
                        valData += "</table>";
                        valData += "<script>";
                        valData += "var responsiveHelper_pTab1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab1Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab1Datatable) {responsiveHelper_pTab1Datatable = new ResponsiveDatatablesHelper($('#pTab1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"80px\" }, null, { \"sWidth\": \"35px\" }, { \"sWidth\": \"62px\" }]});<\/script>";
                        valData += "<\/script>";
                        $("#divBindTab1Table").html(valData);
                        hideLoader('loaderTab1');
                        pTab1ModalPlanPrintModalAHrefBind();
                        pTab1ModalLoadPrintModalAHrefBind();
                        pTab1IsAllCheck();
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        window.location = '../#pg/error500.aspx';
                    }
                });
            }
            else if ($("#pTab1ModalSelectPlanList option:selected").val() == '3') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/PlanmnthTab1Datatable3",
                    data: '{"yr": "' + $("#pTab1SelectYear option:selected").val() + '", "mnth": "' + $("#pTab1SelectMonth option:selected").val() + '", "gazar": "' + $("#pTab1SelectGazar option:selected").val() + '", "heltes": "' + $("#pTab1SelectHeltes option:selected").val() + '", "stid": "' + $("#pTab1SelectStaff option:selected").val() + '", "isplaned": "' + $("#pTab1SelectIsPlaned option:selected").val() + '", "tp": "' + $("#pTab1ModalSelectPlanList option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valData += "<table id=\"pTab1Datatable\" class=\"table table-striped table-bordered table-hover smart-form\" width=\"100%\"><thead>";
                        valData += "<tr>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Төлөвлөгөө</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хугацаа&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах<br/>ажилтан</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Засварлах</th>";
                        valData += "</tr>";
                        valData += "</thead><tbody>";
                        valData += "<tr class=\"info\"><td class=\"text-center\" style=\"vertical-align:middle;\">#</td><td class=\"text-center\" style=\"vertical-align:middle;\">ТӨРИЙН НАРИЙН БИЧГИЙН ДАРГЫН ТУШААЛЫН ЗААЛТ</td><td class=\"text-center\" style=\"vertical-align:middle;\">Хугацаа</td><td class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах<br>ажилтан</td><td class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</td><td class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</td></tr>";
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<tr>";
                            valData += "<td>" + value.ROWNO + "</td>";
                            valData += "<td><b>Тушаалын дугаар: </b>" + replaceDatabaseToDisplay(value.TUSHAAL_NUMBER) + "<br/><b>Тушаалын утга: </b>" + replaceDatabaseToDisplay(value.TUSHAAL_NAME) + "<br/><b>Төлөвлөгөө: </b>" + replaceDatabaseToDisplay(value.ZAALT) + "</td>";
                            valData += "<td>" + value.ENDDATE + "</td>";
                            valData += "<td>" + value.HARIUTSSAN_STNAMELIST + "</td>";
                            valData += "<td>&nbsp;</td>";
                            valData += "<td>";
                            valData += "<div class=\"btn-group\">";
                            valData += "<a href=\"pg/tushaalsaidTab2ModalInfo.aspx?id=" + value.TUSHAAL_ZAALT_ID + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTab1ModalInfo\" data-toggle=\"modal\"><i class=\"fa fa-info\"></i></button>";
                            valData += "</div>";
                            valData += "</td>";
                            valData += "</tr>";
                        });
                        valData += "</tbody>";
                        valData += "</table>";
                        valData += "<script>";
                        valData += "var responsiveHelper_pTab1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab1Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab1Datatable) {responsiveHelper_pTab1Datatable = new ResponsiveDatatablesHelper($('#pTab1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"80px\" }, null, { \"sWidth\": \"35px\" }, { \"sWidth\": \"62px\" }]});";
                        valData += "<\/script>";
                        $("#divBindTab1Table").html(valData);
                        hideLoader('loaderTab1');
                        pTab1ModalPlanPrintModalAHrefBind();
                        pTab1ModalLoadPrintModalAHrefBind();
                        pTab1IsAllCheck();
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        window.location = '../#pg/error500.aspx';
                    }
                });
            }
            else if ($("#pTab1ModalSelectPlanList option:selected").val() == '4') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/PlanmnthTab1Datatable4",
                    data: '{"yr": "' + $("#pTab1SelectYear option:selected").val() + '", "mnth": "' + $("#pTab1SelectMonth option:selected").val() + '", "gazar": "' + $("#pTab1SelectGazar option:selected").val() + '", "heltes": "' + $("#pTab1SelectHeltes option:selected").val() + '", "stid": "' + $("#pTab1SelectStaff option:selected").val() + '", "isplaned": "' + $("#pTab1SelectIsPlaned option:selected").val() + '", "tp": "' + $("#pTab1ModalSelectPlanList option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valData += "<table id=\"pTab1Datatable\" class=\"table table-striped table-bordered table-hover smart-form\" width=\"100%\"><thead>";
                        valData += "<tr>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Төлөвлөгөө</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хугацаа&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах<br/>ажилтан</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Засварлах</th>";
                        valData += "</tr>";
                        valData += "</thead><tbody>";
                        valData += "<tr class=\"info\"><td class=\"text-center\" style=\"vertical-align:middle;\">#</td><td class=\"text-center\" style=\"vertical-align:middle;\">ДЭЭД БАЙГУУЛЛАГЫН ТОГТООЛ ШИЙДВЭР</td><td class=\"text-center\" style=\"vertical-align:middle;\">Хугацаа</td><td class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах<br>ажилтан</td><td class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</td><td class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</td></tr>";
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<tr>";
                            valData += "<td>" + value.ROWNO + "</td>";
                            valData += "<td>" + replaceDatabaseToDisplay(value.ZAALT) + "</td>";
                            valData += "<td>" + value.ENDDATE + "</td>";
                            valData += "<td>&nbsp;</td>";
                            valData += "<td>&nbsp;</td>";
                            valData += "<td>";
                            valData += "<div class=\"btn-group\">";
                            valData += "<a href=\"pg/togtoolTab2ModalInfo.aspx?id=" + value.ZAALT_ID + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTab1ModalInfo\" data-toggle=\"modal\"><i class=\"fa fa-info\"></i></button>";
                            valData += "</div>";
                            valData += "</td>";
                            valData += "</tr>";
                        });
                        valData += "</tbody>";
                        valData += "</table>";
                        valData += "<script>";
                        valData += "var responsiveHelper_pTab1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab1Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab1Datatable) {responsiveHelper_pTab1Datatable = new ResponsiveDatatablesHelper($('#pTab1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"80px\" }, null, { \"sWidth\": \"35px\" }, { \"sWidth\": \"62px\" }]});";
                        valData += "<\/script>";
                        $("#divBindTab1Table").html(valData);
                        hideLoader('loaderTab1');
                        pTab1ModalPlanPrintModalAHrefBind();
                        pTab1ModalLoadPrintModalAHrefBind();
                        pTab1IsAllCheck();
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        window.location = '../#pg/error500.aspx';
                    }
                });
            }
            else if ($("#pTab1ModalSelectPlanList option:selected").val() == '5') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/PlanmnthTab1Datatable5",
                    data: '{"gazar": "' + $("#pTab1SelectGazar option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valData += "<table id=\"pTab1Datatable\" class=\"table table-striped table-bordered table-hover smart-form\" width=\"100%\"><thead>";
                        valData += "<tr>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Төлөвлөгөө</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хугацаа&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах<br/>ажилтан</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Засварлах</th>";
                        valData += "</tr>";
                        valData += "</thead><tbody>";
                        valData += "<tr class=\"info\"><td class=\"text-center\" style=\"vertical-align:middle;\">#</td><td class=\"text-center\" style=\"vertical-align:middle;\">ХӨНДЛӨНГИЙН АУДИТ</td><td class=\"text-center\" style=\"vertical-align:middle;\">Хугацаа</td><td class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах<br>газар</td><td class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</td><td class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</td></tr>";
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<tr>";
                            valData += "<td>" + value.ROWNO + "</td>";
                            valData += "<td><b>Тайлангийн дугаар: </b>" + replaceDatabaseToDisplay(value.AUDITEXTERNAL_REPORT_NO) + "<br/><b>Тайлангийн утга: </b>" + replaceDatabaseToDisplay(value.AUDITEXTERNAL_REPORT_NAME) + "<br/><b>Зөвлөмжийн утга: </b>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                            valData += "<td>" + value.SUCCESSDATE + "</td>";
                            valData += "<td>" + value.BRLISTNAME + "</td>";
                            valData += "<td>&nbsp;</td>";
                            valData += "<td>";
                            valData += "<div class=\"btn-group\">";
                            valData += "<a href=\"pg/externalauditTab2ModalInfo.aspx?id=" + value.ID + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTab1ModalInfo\" data-toggle=\"modal\"><i class=\"fa fa-info\"></i></button>";
                            valData += "</div>";
                            valData += "</td>";
                            valData += "</tr>";
                        });
                        valData += "</tbody>";
                        valData += "</table>";
                        valData += "<script>";
                        valData += "var responsiveHelper_pTab1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab1Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab1Datatable) {responsiveHelper_pTab1Datatable = new ResponsiveDatatablesHelper($('#pTab1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"80px\" }, null, { \"sWidth\": \"35px\" }, { \"sWidth\": \"62px\" }]});";
                        valData += "<\/script>";
                        $("#divBindTab1Table").html(valData);
                        hideLoader('loaderTab1');
                        pTab1ModalPlanPrintModalAHrefBind();
                        pTab1ModalLoadPrintModalAHrefBind();
                        pTab1IsAllCheck();
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        window.location = '../#pg/error500.aspx';
                    }
                });
            }
            else if ($("#pTab1ModalSelectPlanList option:selected").val() == '6') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/PlanmnthTab1Datatable6",
                    data: '{"gazar": "' + $("#pTab1SelectGazar option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valData += "<table id=\"pTab1Datatable\" class=\"table table-striped table-bordered table-hover smart-form\" width=\"100%\"><thead>";
                        valData += "<tr>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Төлөвлөгөө</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хугацаа&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах<br/>газар</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Засварлах</th>";
                        valData += "</tr>";
                        valData += "</thead><tbody>";
                        valData += "<tr class=\"info\"><td class=\"text-center\" style=\"vertical-align:middle;\">#</td><td class=\"text-center\" style=\"vertical-align:middle;\">ХӨНДЛӨНГИЙН АУДИТ</td><td class=\"text-center\" style=\"vertical-align:middle;\">Хугацаа</td><td class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах<br>газар</td><td class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</td><td class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</td></tr>";
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<tr>";
                            valData += "<td>" + value.ROWNO + "</td>";
                            valData += "<td><b>Тайлангийн дугаар: </b>" + replaceDatabaseToDisplay(value.AUDITINTERNAL_REPORT_NO) + "<br/><b>Тайлангийн утга: </b>" + replaceDatabaseToDisplay(value.AUDITINTERNAL_REPORT_NAME) + "<br/><b>Зөвлөмжийн утга: </b>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                            valData += "<td>" + value.SUCCESSDATE + "</td>";
                            valData += "<td>" + value.BRLISTNAME + "</td>";
                            valData += "<td>&nbsp;</td>";
                            valData += "<td>";
                            valData += "<div class=\"btn-group\">";
                            valData += "<a href=\"pg/internalauditTab2ModalInfo.aspx?id=" + value.ID + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTab1ModalInfo\" data-toggle=\"modal\"><i class=\"fa fa-info\"></i></button>";
                            valData += "</div>";
                            valData += "</td>";
                            valData += "</tr>";
                        });
                        valData += "</tbody>";
                        valData += "</table>";
                        valData += "<script>";
                        valData += "var responsiveHelper_pTab1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab1Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab1Datatable) {responsiveHelper_pTab1Datatable = new ResponsiveDatatablesHelper($('#pTab1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"80px\" }, null, { \"sWidth\": \"35px\" }, { \"sWidth\": \"62px\" }]});";
                        valData += "<\/script>";
                        $("#divBindTab1Table").html(valData);
                        hideLoader('loaderTab1');
                        pTab1ModalPlanPrintModalAHrefBind();
                        pTab1ModalLoadPrintModalAHrefBind();
                        pTab1IsAllCheck();
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        window.location = '../#pg/error500.aspx';
                    }
                });
            }
            else if ($("#pTab1ModalSelectPlanList option:selected").val() == '7') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/PlanmnthTab1Datatable7",
                    data: '{"gazarinitname": "' + $("#pTab1SelectGazar option:selected").text() + '", "mnth":"' + $('#pTab1SelectMonth option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valData += "<table id=\"pTab1Datatable\" class=\"table table-striped table-bordered table-hover smart-form\" width=\"100%\"><thead>";
                        valData += "<tr>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Төлөвлөгөө</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хугацаа&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах<br/>ажилтан</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Засварлах</th>";
                        valData += "</tr>";
                        valData += "</thead><tbody>";
                        var valRw = 1;
                        valData += "<tr class=\"info\"><td class=\"text-center\" style=\"vertical-align:middle;\">#</td><td class=\"text-center\" style=\"vertical-align:middle;\">ИЛ ТОД, НЭЭЛТТЭЙ БАЙДАЛ</td><td class=\"text-center\" style=\"vertical-align:middle;\">Хугацаа</td><td class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах<br>газар</td><td class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</td><td class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</td></tr>";
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<tr>";
                            valData += "<td>" + valRw + "</td>";
                            valData += "<td><b>Төрөл: </b>" + replaceDatabaseToDisplay(value.TRANSPARENCYTYPE_NAME) + "<br/><b>Нэр: </b>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                            valData += "<td>" + value.MNTHLIST_ID + "</td>";
                            valData += "<td>" + value.GROUPLIST_NAME + "</td>";
                            valData += "<td>&nbsp;</td>";
                            valData += "<td>";
                            valData += "<div class=\"btn-group\">";
                            valData += "<a href=\"pg/planmnthTransparencyTab2ModalInfo.aspx?id=" + value.ID + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTab1ModalInfo\" data-toggle=\"modal\"><i class=\"fa fa-info\"></i></button>";
                            valData += "</div>";
                            valData += "</td>";
                            valData += "</tr>";
                            valRw++;
                        });
                        valData += "</tbody>";
                        valData += "</table>";
                        valData += "<script>";
                        valData += "var responsiveHelper_pTab1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab1Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab1Datatable) {responsiveHelper_pTab1Datatable = new ResponsiveDatatablesHelper($('#pTab1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"80px\" }, null, { \"sWidth\": \"35px\" }, { \"sWidth\": \"62px\" }]});";
                        valData += "<\/script>";
                        $("#divBindTab1Table").html(valData);
                        hideLoader('loaderTab1');
                        pTab1ModalPlanPrintModalAHrefBind();
                        pTab1ModalLoadPrintModalAHrefBind();
                        pTab1IsAllCheck();
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
    $("#pTab1SelectYear").change(function () {
        dataBindTab1DataTableFirst();
    });
    $("#pTab1SelectIsPlaned, #pTab1SelectMonth").change(function () {
        dataBindTab1DataTable();
    });
    $("#pTab1SelectGazar").change(function () {
        if ($("#pTab1SelectGazar option:selected").val() == "") {
            $("#pTab1SelectHeltes").html("<option selected value=\"\">Бүгд</option>");
            $("#pTab1SelectHeltes").prop("disabled", true);
            $('#pTab1SelectStaff').html('<option value="">Бүгд</option>');
            $('#pTab1SelectStaff').prop('disabled', true);
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr": "' + $('#pTab1SelectYear option:selected').val() + '", "gazar": "' + $("#pTab1SelectGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    })
                    $("#pTab1SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                    $("#pTab1SelectHeltes").prop("disabled", false);
                    $('#pTab1SelectStaff').html('<option value="">Бүгд</option>');
                    $('#pTab1SelectStaff').prop('disabled', true);
                    dataBindTab1DataTable();
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
        }
        pTab1ModalPlanPrintModalAHrefBind();
    });
    $("#pTab1SelectHeltes").change(function () {
        if ($("#pTab1SelectHeltes option:selected").val() == "") {
            $('#pTab1SelectStaff').html('<option value="">Бүгд</option>');
            $('#pTab1SelectStaff').prop('disabled', true);
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetStaffListForDDL",
                data: '{"yr": "' + $('#pTab1SelectYear option:selected').val() + '", "gazar": "' + $("#pTab1SelectGazar option:selected").val() + '", "heltes":"' + $("#pTab1SelectHeltes option:selected").val() + '"}',
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
                    $("#pTab1SelectStaff").html('<option value="">Бүгд</option>' + valData);
                    $('#pTab1SelectStaff').prop('disabled', false);
                    dataBindTab1DataTable();
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
        }
        pTab1ModalPlanPrintModalAHrefBind();
    });
    $("#pTab1SelectStaff").change(function () {
        dataBindTab1DataTable();
    });
    $("#pTab1ModalSelectPlanList").change(function () {
        dataBindTab1DataTable();
    });
    function showAddEditTab1(el, isinsupt) {
        var valData = '';
        $('#pTab1ModalHeaderLabel').html(isinsupt);
        $('#pTab1ModalLabelYear').html($('#pTab1SelectYear option:selected').val());
        $('#pTab1ModalLabelMonth').html($('#pTab1SelectMonth option:selected').text());
        if (isinsupt == 'нэмэх') {
            $('#pTab1ModalID').html('');
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PlanyrTab2StratListDDL",
                data: '{"yr": "' + $('#pTab1SelectYear option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.NO + '. ' + replaceDatabaseToDisplay(value.NAME) + '">' + value.NO + '. ' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                    });
                    $('#pTab1ModalSelectStrat').html('<option value="">- Сонго -</option>' + valData);
                    $('#pTab1ModalSelectStrat').val($('#pTab1SelectGazar option:selected').val());
                    $('#pTab1ModalSelectAction').addClass('hide');
                    $('#pTab1ModalSelectActionLoader').removeClass('hide');
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/PlanyrTab3ActionListDDL",
                        data: '{"yr": "' + $('#pTab1SelectYear option:selected').val() + '", "gazar": "' + $('#pTab1ModalSelectStrat option:selected').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            valData = '';
                            $($.parseJSON(data.d)).each(function (index, value) {
                                valData += '<option value="' + value.ID + '" title="' + replaceDatabaseToDisplay(value.NAME) + '">' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                            });
                            $('#pTab1ModalSelectAction').html('<option value="">- Сонго -</option>' + valData);
                            $('#pTab1ModalSelectAction').removeClass('hide');
                            $('#pTab1ModalSelectActionLoader').addClass('hide');
                            $('#pTab1ModalSelectPlanyr').html('<option value="">- Сонго -</option>');
                            $('#pTab1ModalSelectPlanyr').prop("disabled", true);
                            dataBindTab1ModalStaffListForSelect2('', '');
                            if (!funcCheckRoles('1,8')) {
                                $('#pTab1ModalSelectStrat').prop('disabled', false);
                            }
                            else {
                                $('#pTab1ModalSelectStrat').prop('disabled', true);
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
            $('#pTab1ModalInputNo, #pTab1ModalInputName, #pTab1ModalInputStartDate, #pTab1ModalInputEndDate').val('');
        }
        else if (isinsupt == 'засах') {
            $('#pTab1ModalID').text($(el).closest('tr').attr('data-planmnthid'));
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PlanyrTab2StratListDDL",
                data: '{"yr": "' + $('#pTab1SelectYear option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.NO + '. ' + replaceDatabaseToDisplay(value.NAME) + '">' + value.NO + '. ' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                    });
                    $('#pTab1ModalSelectStrat').html('<option value="">- Сонго -</option>' + valData);
                    $('#pTab1ModalSelectStrat').val($(el).closest('tr').attr('data-stratbrid'));
                    $('#pTab1ModalSelectAction').addClass('hide');
                    $('#pTab1ModalSelectActionLoader').removeClass('hide');
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/PlanyrTab3ActionListDDL",
                        data: '{"yr": "' + $('#pTab1SelectYear option:selected').val() + '", "gazar": "' + $('#pTab1ModalSelectStrat option:selected').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            valData = '';
                            $($.parseJSON(data.d)).each(function (index, value) {
                                valData += '<option value="' + value.ID + '" title="' + replaceDatabaseToDisplay(value.NAME) + '">' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                            });
                            $('#pTab1ModalSelectAction').html('<option value="">- Сонго -</option>' + valData);
                            $('#pTab1ModalSelectAction').removeClass('hide');
                            $('#pTab1ModalSelectActionLoader').addClass('hide');
                            $('#pTab1ModalSelectAction').val($(el).closest('tr').attr('data-actionid'));
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/PlanmnthTab1PlanyrListDDL",
                                data: '{"action": "' + $('#pTab1ModalSelectAction option:selected').val() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    valData = '';
                                    $($.parseJSON(data.d)).each(function (index, value) {
                                        valData += '<option value="' + value.ID + '" title="' + replaceDatabaseToDisplay(value.NAME) + '">' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                                    });
                                    globalAjaxVar = $.ajax({
                                        type: "POST",
                                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                        data: '{"qry": "SELECT IS_PLANED FROM TBL_FUNC_ACTION WHERE ID=' + $('#pTab1ModalSelectAction option:selected').val() + '"}',
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function (data) {
                                            if (data.d == '0') valData = '<option value="99745707" style="background-color:#f2dede !important">Төлөвлөгөөнд тусгагдаагүй ажил</option>' + valData;
                                            $('#pTab1ModalSelectPlanyr').html('<option value="">- Сонго -</option>' + valData);
                                            $('#pTab1ModalSelectPlanyr').removeClass('hide');
                                            $('#pTab1ModalSelectPlanyrLoader').addClass('hide');
                                            $('#pTab1ModalSelectPlanyr').val($(el).closest('tr').attr('data-planyrid'));
                                            if ($(el).closest('tr').find('td:eq(3)').attr('data-id') == 'none') dataBindTab1ModalStaffListForSelect2($(el).closest('tr').attr('data-planyrid'), '');
                                            else dataBindTab1ModalStaffListForSelect2($(el).closest('tr').attr('data-planyrid'), $(el).closest('tr').find('td:eq(3)').attr('data-id'));
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
            $('#pTab1ModalInputNo').val($(el).closest('tr').find('td:eq(1)').html().split('.')[3]);
            $('#pTab1ModalInputName').val($.trim($(el).closest('tr').find('td:eq(1)').html().replace(($(el).closest('tr').find('td:eq(1)').html().split('.')[0] + '.' + $(el).closest('tr').find('td:eq(1)').html().split('.')[1] + '.' + $(el).closest('tr').find('td:eq(1)').html().split('.')[2] + '.' + $(el).closest('tr').find('td:eq(1)').html().split('.')[3] + '.'), '')));
            $('#pTab1ModalInputStartDate').val($(el).closest('tr').find('td:eq(2)').html().split(' - ')[0]);
            $('#pTab1ModalInputEndDate').val($(el).closest('tr').find('td:eq(2)').html().split(' - ')[1]);
        }
    }
    function showDeleteTab1(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT COUNT(1) FROM TBL_PLAN_IMPL WHERE TP=\'month\' AND PLAN_ID=' + $(el).closest('tr').attr('data-planmnthid') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') {
                    alert('Сонгосон сарын төлөвлөгөөнд хамааралтай биелэлт орсон тул устгах боломжгүй байна!');
                }
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон сарын төлөвлөгөөг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/PlanmnthTab1SP_PLANM_DELETE",
                                data: '{"P_PLANM_ID": "' + $(el).closest('tr').attr('data-planmnthid') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab1DataTable();
                                    smallBox('Сонгосон сарын төлөвлөгөө', 'Амжилттай устлаа...', '#659265', 3000);
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
    function dataBindTab1ModalStaffListForSelect2(id, selectedList) {
        var valData = '';
        $("#pTab1ModalDivSelect2Staff").html('<input class="form-control ui-autocomplete-loading" placeholder="" type="text" disabled="disabled">');
        if (id == '') {
            $("#pTab1ModalDivSelect2Staff").html("<select id=\"pTab1ModalSelect2Staff\" name=\"pTab1ModalSelect2Staff\" multiple=\"multiple\" style=\"width:100%\" data-placeholder=\"Хариуцах ажилтан сонго\"></select><script>$(\"#pTab1ModalSelect2Staff\").select2();<\/script>");
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PlanmnthTab1ModalStaffListForSelect2",
                data: '{"id": "' + id + '", "selectedList": "' + selectedList + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option' + value.ISSELECTED + ' value="' + value.ST_ID + '">' + value.ST_NAME + '</option>';
                    });
                    $("#pTab1ModalDivSelect2Staff").html("<select id=\"pTab1ModalSelect2Staff\" name=\"pTab1ModalSelect2Staff\" multiple=\"multiple\" style=\"width:100%\" data-placeholder=\"Хариуцах ажилтан сонго\">" + valData + "</select><script>$(\"#pTab1ModalSelect2Staff\").select2();<\/script>");
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
    function dataBindTab1ModalStaffListNotPlanedForSelect2(id) {
        var valData = '', valOptGroup = '';
        $("#pTab1ModalDivSelect2Staff").html('<input class="form-control ui-autocomplete-loading" placeholder="" type="text" disabled="disabled">');
        if (id == '') {
            $("#pTab1ModalDivSelect2Staff").html("<select id=\"pTab1ModalSelect2Staff\" name=\"pTab1ModalSelect2Staff\" multiple=\"multiple\" style=\"width:100%\" data-placeholder=\"Хариуцах ажилтан сонго\"></select><script>$(\"#pTab1ModalSelect2Staff\").select2();<\/script>");
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PlanmnthTab1ModalStaffListNotPlanedForSelect2",
                data: '{"funcActionId": "' + id + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    valOptGroup = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        if (value.BRANCH_ID != valOptGroup) {
                            if (valOptGroup != '') valData += '</optgroup>';
                            valData += '<optgroup label="' + value.NEGJ + '">';
                        }
                        valData += '<option value="' + value.STAFFS_ID + '">' + value.STAFFNAME + '</option>';
                        valOptGroup = value.BRANCH_ID;
                    });
                    $("#pTab1ModalDivSelect2Staff").html("<select id=\"pTab1ModalSelect2Staff\" name=\"pTab1ModalSelect2Staff\" multiple=\"multiple\" style=\"width:100%\" data-placeholder=\"Хариуцах ажилтан сонго\">" + valData + "</select><script>$(\"#pTab1ModalSelect2Staff\").select2();<\/script>");
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
    function pTab1ModalPlanPrintModalAHrefBind() {
        var myVal = 'pg/planmnthTab1PlanPrintModal.aspx?yr=' + $('#pTab1SelectYear option:selected').val();
        if ($('#pTab1SelectIsPlaned option:selected').val() != '') myVal += '&isplaned=' + $('#pTab1SelectIsPlaned option:selected').val();
        if ($('#pTab1SelectGazar option:selected').val() != '') myVal += '&gazar=' + $('#pTab1SelectGazar option:selected').val();
        if ($('#pTab1SelectHeltes option:selected').val() != '') myVal += '&heltes=' + $('#pTab1SelectHeltes option:selected').val();
        if ($('#pTab1SelectStaff option:selected').val() != '') myVal += '&staff=' + $('#pTab1SelectStaff option:selected').val();
        if ($('#pTab1SelectMonth option:selected').val() != '') myVal += '&mnth=' + $('#pTab1SelectMonth option:selected').val();
        $('#pTab1ModalPlanPrintModalA').attr('href', myVal);
    }
    function pTab1ModalLoadPrintModalAHrefBind() {
        var myVal = 'pg/planmnthTab1LoadPrintModal.aspx?yr=' + $('#pTab1SelectYear option:selected').val();
        if ($('#pTab1SelectGazar option:selected').val() != '') myVal += '&gazar=' + $('#pTab1SelectGazar option:selected').val();
        if ($('#pTab1SelectHeltes option:selected').val() != '') myVal += '&heltes=' + $('#pTab1SelectHeltes option:selected').val();
        if ($('#pTab1SelectMonth option:selected').val() != '') myVal += '&mnth=' + $('#pTab1SelectMonth option:selected').val();
        $('#pTab1ModalLoadPrintModalA').attr('href', myVal);
    }
    $("#pTab1ModalSelectStrat").change(function () {
        var valData = '';
        if ($("#pTab1ModalSelectStrat option:selected").val() == "") {
            $("#pTab1ModalSelectAction").html('<option value="">- Сонго -</option>');
            $("#pTab1ModalSelectAction").prop("disabled", true);
            $('#pTab1ModalSelectPlanyr').html('<option value="">- Сонго -</option>');
            $('#pTab1ModalSelectPlanyr').prop("disabled", true);
            dataBindTab1ModalStaffListForSelect2('', '');
        }
        else {
            $('#pTab1ModalSelectAction').addClass('hide');
            $('#pTab1ModalSelectActionLoader').removeClass('hide');
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PlanyrTab3ActionListDDL",
                data: '{"yr": "' + $('#pTab1SelectYear option:selected').val() + '", "gazar": "' + $('#pTab1ModalSelectStrat option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.ID + '" title="' + replaceDatabaseToDisplay(value.NAME) + '">' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                    });
                    $("#pTab1ModalSelectAction").html('<option value=\"\">- Сонго -</option>' + valData);
                    $("#pTab1ModalSelectAction").prop("disabled", false);
                    $('#pTab1ModalSelectAction').removeClass('hide');
                    $('#pTab1ModalSelectActionLoader').addClass('hide');
                    $('#pTab1ModalSelectPlanyr').removeClass('hide');
                    $('#pTab1ModalSelectPlanyrLoader').addClass('hide');
                    dataBindTab1ModalStaffListForSelect2('', '');
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
    $("#pTab1ModalSelectAction").change(function () {
        if ($("#pTab1ModalSelectAction option:selected").val() == "") {
            $('#pTab1ModalSelectPlanyr').html('<option value="">- Сонго -</option>');
            $('#pTab1ModalSelectPlanyr').prop("disabled", true);
            dataBindTab1ModalStaffListForSelect2('', '');
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PlanmnthTab1PlanyrListDDL",
                data: '{"action": "' + $('#pTab1ModalSelectAction option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.ID + '" title="' + replaceDatabaseToDisplay(value.NAME) + '">' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                    });
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                        data: '{"qry": "SELECT IS_PLANED FROM TBL_FUNC_ACTION WHERE ID=' + $('#pTab1ModalSelectAction option:selected').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            if (data.d == '0') valData = '<option value="99745707" style="background-color:#f2dede !important">Төлөвлөгөөнд тусгагдаагүй ажил</option>' + valData;
                            $('#pTab1ModalSelectPlanyr').html('<option value="">- Сонго -</option>' + valData);
                            $('#pTab1ModalSelectPlanyr').prop('disabled', false);
                            $('#pTab1ModalSelectPlanyr').removeClass('hide');
                            $('#pTab1ModalSelectPlanyrLoader').addClass('hide');
                            dataBindTab1ModalStaffListForSelect2('', '');
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
    $("#pTab1ModalSelectPlanyr").change(function () {
        if ($("#pTab1ModalSelectPlanyr option:selected").val() == "") {
            dataBindTab1ModalStaffListForSelect2('', '');
        }
        else {
            if ($("#pTab1ModalSelectPlanyr option:selected").val() == '99745707') {
                dataBindTab1ModalStaffListNotPlanedForSelect2($("#pTab1ModalSelectAction option:selected").val());
            }
            else {
                dataBindTab1ModalStaffListForSelect2($("#pTab1ModalSelectPlanyr option:selected").val(), '');
            }
        }
    });
    function pTab1Submit(el) {
        var valIsSubmit = '0';
        if ($(el).prop('checked')) {
            valIsSubmit = '1';
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
            data: '{"qry": "UPDATE TBL_PLANMNTH SET SUBMIT_D2=' + valIsSubmit + ' WHERE ID=' + $(el).closest('tr').attr('data-planmnthid') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function () {
                smallBox('Сонгосон сарын төлөвлөгөө', 'Амжилттай батлагдлаа...', '#659265', 3000);
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function pTab1SubmitAll(el) {
        var valIsSubmit = '0';
        if ($(el).prop('checked')) {
            valIsSubmit = '1';
        }
        var gazar = '', heltes = '', staff = '', isplaned = '';
        if ($('#pTab1SelectGazar option:selected').val() != '') gazar = " AND g.BR_ID=" + $('#pTab1SelectGazar option:selected').val();
        if ($('#pTab1SelectHeltes option:selected').val() != '') heltes = " AND h.BR_ID=" + $('#pTab1SelectHeltes option:selected').val();
        if ($('#pTab1SelectStaff option:selected').val() != '') staff = " AND d.USER_ID=" + $('#pTab1SelectStaff option:selected').val();
        if ($('#pTab1SelectIsPlaned option:selected').val() != '') isplaned = " AND f.IS_PLANED=" + $('#pTab1SelectIsPlaned option:selected').val();
        //var valQry = 'MERGE INTO TBL_PLANMNTH USING ( SELECT PLANMNTH_ID, NVL(RTRIM(xmlagg (xmlelement (e, HELTESID || \',\') ORDER BY HELTESID).extract(\'//text()\'), \',\'),\'none\') as HELTESID, GAZARID FROM ( SELECT a.ID as PLANMNTH_ID, h.BR_ID as HELTESID, g.BR_ID as GAZARID FROM TBL_PLANMNTH a INNER JOIN TBL_PLANYR b ON a.PLANYR_ID=b.ID INNER JOIN TBL_FUNC_ACTION f ON b.FUNC_ACTION_ID=f.ID INNER JOIN TBL_FUNC_STRAT g ON f.FUNC_STRAT_ID=g.ID INNER JOIN TBL_FUNC_ACTION_BR h ON f.ID=h.FUNC_ACTION_ID INNER JOIN TBL_PLANMNTH_USER d ON a.ID=d.PLANMNTH_ID WHERE b.YR=' + $('#pTab1SelectYear option:selected').val() + ' AND TO_NUMBER(TO_CHAR(a.STRT_DATE,\'MM\'))=' + $('#pTab1SelectMonth option:selected').val() + gazar + heltes + staff + isplaned + ' GROUP BY a.ID, h.BR_ID, g.BR_ID ) GROUP BY PLANMNTH_ID, GAZARID) a ON (a.PLANMNTH_ID = TBL_PLANMNTH.ID) WHEN MATCHED THEN UPDATE SET TBL_PLANMNTH.SUBMIT_D2 = ' + valIsSubmit + '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
            data: '{"qry": "MERGE INTO TBL_PLANMNTH USING ( SELECT PLANMNTH_ID, NVL(RTRIM(xmlagg (xmlelement (e, HELTESID || \',\') ORDER BY HELTESID).extract(\'//text()\'), \',\'),\'none\') as HELTESID, GAZARID FROM ( SELECT a.ID as PLANMNTH_ID, h.BR_ID as HELTESID, g.BR_ID as GAZARID FROM TBL_PLANMNTH a INNER JOIN TBL_PLANYR b ON a.PLANYR_ID=b.ID INNER JOIN TBL_FUNC_ACTION f ON b.FUNC_ACTION_ID=f.ID INNER JOIN TBL_FUNC_STRAT g ON f.FUNC_STRAT_ID=g.ID INNER JOIN TBL_FUNC_ACTION_BR h ON f.ID=h.FUNC_ACTION_ID INNER JOIN TBL_PLANMNTH_USER d ON a.ID=d.PLANMNTH_ID WHERE b.YR=' + $('#pTab1SelectYear option:selected').val() + ' AND TO_NUMBER(TO_CHAR(a.STRT_DATE,\'MM\'))=' + $('#pTab1SelectMonth option:selected').val() + gazar + heltes + staff + isplaned + ' GROUP BY a.ID, h.BR_ID, g.BR_ID ) GROUP BY PLANMNTH_ID, GAZARID) a ON (a.PLANMNTH_ID = TBL_PLANMNTH.ID) WHEN MATCHED THEN UPDATE SET TBL_PLANMNTH.SUBMIT_D2 = ' + valIsSubmit + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function () {
                $('#pTab1Datatable').find('tbody').find('tr').each(function (index) {
                    if (valIsSubmit == '1') {
                        $('td:eq(4)', this).find(':checkbox').prop('checked', true);
                    }
                    else $('td:eq(4)', this).find(':checkbox').prop('checked', false);
                });
                smallBox('Сарын төлөвлөгөө', 'Амжилттай батлагдлаа...', '#659265', 3000);
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function pTab1IsAllCheck() {
        var isallcheck = 0;
        $('#pTab1Datatable').find('tbody').find('tr').each(function (index) {
            if ($('td:eq(4)', this).find(':checkbox').prop('checked') == false) {
                isallcheck = 1;
            }
        });
        if (isallcheck == 1) $('#pTab1Datatable').find('thead').find('tr:eq(0)').find('th:eq(4)').find(':checkbox').prop('checked', false);
        else $('#pTab1Datatable').find('thead').find('tr:eq(0)').find('th:eq(4)').find(':checkbox').prop('checked', true);
    }
    $('#pTab1ModalForm').bootstrapValidator({
        fields: {
            pTab1ModalSelectStrat: {
                group: '.form-group',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab1ModalSelectAction: {
                group: '.form-group',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab1ModalSelectPlanyr: {
                group: '.form-group',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab1ModalInputNo: {
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
            pTab1ModalInputName: {
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
            pTab1ModalInputStartDate: {
                group: '.col-md-6',
                validators: {
                    notEmpty: {
                        message: 'Огноо оруулна уу'
                    },
                    date: {
                        format: 'YYYY-MM-DD',
                        message: 'Огноо буруу орсон байна. /Жил-Сар-Өдөр/'
                    }
                }
            },
            pTab1ModalInputEndDate: {
                group: '.col-md-6',
                validators: {
                    notEmpty: {
                        message: 'Огноо оруулна уу'
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
            if ($('#pTab1ModalSelect2Staff').val() == null) {
                alert('Хариуцах ажилтан сонгоно уу');
                $('#pTab1ModalForm').find('.modal-footer').find('.btn-success').prop('disabled', false);
            }
            else {
                var StartCurrentDate = new Date(parseInt($('#pTab1SelectYear option:selected').val()), parseInt($('#pTab1SelectMonth option:selected').val()), 01);
                var EndCurrentDate = new Date(parseInt($('#pTab1SelectYear option:selected').val()), parseInt($('#pTab1SelectMonth option:selected').val()), 31);
                var StartSelectedDate = new Date($('#pTab1ModalInputStartDate').val().split('-')[0], $('#pTab1ModalInputStartDate').val().split('-')[1], $('#pTab1ModalInputStartDate').val().split('-')[2]);
                var EndSelectedDate = new Date($('#pTab1ModalInputEndDate').val().split('-')[0], $('#pTab1ModalInputEndDate').val().split('-')[1], $('#pTab1ModalInputEndDate').val().split('-')[2]);
                if (StartSelectedDate >= StartCurrentDate && StartSelectedDate <= EndCurrentDate) {
                    if (EndSelectedDate >= StartCurrentDate && EndSelectedDate <= EndCurrentDate) {
                        var stlist = "none";
                        if ($('#pTab1ModalSelect2Staff').val() != null) stlist = $('#pTab1ModalSelect2Staff').val();
                        if ($("#pTab1ModalHeaderLabel").html() == "нэмэх") {
                            var varNo = $.trim($('#pTab1ModalInputNo').val());
                            var varName = replaceDisplayToDatabase($.trim($('#pTab1ModalInputName').val()));
                            if ($('#pTab1ModalSelectPlanyr option:selected').val() == "99745707") {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/PlanmnthTab1SP_PLANM_NOTPLANED_INSERT",
                                    data: '{"P_FUNC_ACTION_ID": "' + $('#pTab1ModalSelectAction option:selected').val() + '", "P_NO": "' + varNo + '", "P_NAME": "' + varName.replace(/\s+/g, ' ') + '","P_STRT_DATE": "' + $('#pTab1ModalInputStartDate').val() + '", "P_END_DATE": "' + $('#pTab1ModalInputEndDate').val() + '", "P_STAFFLIST": "' + stlist + '", "P_STAFFID": "' + $('#indexUserId').html() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function () {
                                        dataBindTab1DataTable();
                                        $('#pTab1Modal').modal('hide');
                                        smallBox('Сарын төлөвлөгөө', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                                    data: '{"qry": "SELECT COUNT(NO) FROM TBL_PLANMNTH WHERE PLANYR_ID=' + $('#pTab1ModalSelectPlanyr').val() + ' AND NO=' + $('#pTab1ModalInputNo').val() + ' AND TO_NUMBER(TO_CHAR(STRT_DATE,\'mm\'))=' + $('#pTab1SelectMonth option:selected').val() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (data) {
                                        if (data.d == "0") {
                                            globalAjaxVar = $.ajax({
                                                type: "POST",
                                                url: "../ws/ServiceMain.svc/PlanmnthTab1SP_PLANM_INSERT",
                                                data: '{"P_PLANYR_ID": "' + $('#pTab1ModalSelectPlanyr').val() + '", "P_NO": "' + varNo + '", "P_NAME": "' + varName.replace(/\s+/g, ' ') + '", "P_STRT_DATE": "' + $('#pTab1ModalInputStartDate').val() + '", "P_END_DATE": "' + $('#pTab1ModalInputEndDate').val() + '", "P_STAFFLIST": "' + stlist + '", "P_STAFFID": "' + $('#indexUserId').html() + '"}',
                                                contentType: "application/json; charset=utf-8",
                                                dataType: "json",
                                                success: function () {
                                                    dataBindTab1DataTable();
                                                    $('#pTab1Modal').modal('hide');
                                                    smallBox('Сарын төлөвлөгөө', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                                                },
                                                failure: function (response) {
                                                    alert('FAILURE: ' + response.d);
                                                },
                                                error: function (xhr, status, error) {
                                                    window.location = '../#pg/error500.aspx';
                                                }
                                            });
                                        }
                                        else alert($('#pTab1SelectYear option:selected').val() + "оны ажлын төлөвлөгөөнд \"" + $('#pTab1ModalSelectPlanyr option:selected').text() + "\" -ийн жилийн төлөвлөгөөт ажлын хүрээнд " + $('#pTab1SelectMonth option:selected').text() + "д " + $.trim($('#pTab1ModalInputNo').val()) + " дугаартай сарын төлөвлөгөөт ажил орсон байна!");
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
                        else {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                data: '{"qry":"SELECT COUNT(NO) FROM TBL_PLANMNTH WHERE PLANYR_ID=' + $('#pTab1ModalSelectPlanyr').val() + ' AND NO=' + $('#pTab1ModalInputNo').val() + ' AND ID!=' + $('#pTab1ModalID').text() + ' AND TO_NUMBER(TO_CHAR(STRT_DATE,\'mm\'))=' + $('#pTab1SelectMonth option:selected').val() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    if (data.d == "0") {
                                        var varNo = $.trim($('#pTab1ModalInputNo').val());
                                        var varName = replaceDisplayToDatabase($.trim($('#pTab1ModalInputName').val()));
                                        globalAjaxVar = $.ajax({
                                            type: "POST",
                                            url: "../ws/ServiceMain.svc/PlanmnthTab1SP_PLANM_UPDATE",
                                            data: '{"P_PLANM_ID": "' + $('#pTab1ModalID').text() + '", "P_PLANYR_ID": "' + $('#pTab1ModalSelectPlanyr option:selected').val() + '", "P_NO": "' + varNo + '", "P_NAME": "' + varName.replace(/\s+/g, ' ') + '", "P_STRT_DATE": "' + $('#pTab1ModalInputStartDate').val() + '", "P_END_DATE": "' + $('#pTab1ModalInputEndDate').val() + '", "P_STAFFLIST": "' + stlist + '", "P_STAFFID": "' + $('#indexUserId').html() + '"}',
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function () {
                                                dataBindTab1DataTable();
                                                $('#pTab1Modal').modal('hide');
                                                smallBox('Сарын төлөвлөгөө', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                                            },
                                            failure: function (response) {
                                                alert('FAILURE: ' + response.d);
                                            },
                                            error: function (xhr, status, error) {
                                                window.location = '../#pg/error500.aspx';
                                            }
                                        });
                                    }
                                    else alert($('#pTab1SelectYear option:selected').val() + "оны ажлын төлөвлөгөөнд \"" + $('#pTab1ModalSelectPlanyr option:selected').text() + "\" -ийн жилийн төлөвлөгөөт ажлын хүрээнд " + $('#pTab1SelectMonth option:selected').text() + "д " + $.trim($('#pTab1ModalInputNo').val()) + " дугаартай сарын төлөвлөгөөт ажил орсон байна!");
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
                    else {
                        alert('Дуусах огноо ' + $('#pTab1SelectYear option:selected').val() + ' оны ' + $('#pTab1SelectMonth option:selected').val() + ' сарын огноо байна!');
                    }
                }
                else {
                    alert('Эхлэх огноо ' + $('#pTab1SelectYear option:selected').val() + ' оны ' + $('#pTab1SelectMonth option:selected').val() + ' сарын огноо байна!');
                }
            }
        }
    });
    $("#pTab1ModalAddStafflist").click(function () {
        if ($('#pTab1ModalSelectPlanyr option:selected').val() == "") {
            alert('Ажилтан нэмэхэд жилийн төлөвлөгөөт ажил заавал сонгоно уу!');
        }
        else if ($('#pTab1ModalSelectPlanyr option:selected').val() == "99745707") {
            alert('Төлөвлөгдөөгүй ажилд ажилтан нэмэх шаардлагагүй!');
        }
        else {
            $('#pTab1AddStafflistModalPlanyrName').text($('#pTab1ModalSelectPlanyr option:selected').text());
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"SELECT b.DOMAIN_ORG FROM TBL_PLANYR a INNER JOIN TBL_FUNC_ACTION c ON a.FUNC_ACTION_ID=c.ID INNER JOIN TBL_FUNC_STRAT d ON c.FUNC_STRAT_ID=d.ID INNER JOIN TBL_FUNC_ACTION_BR f ON c.ID=f.FUNC_ACTION_ID INNER JOIN ST_BRANCH b ON f.BR_ID=b.BR_ID WHERE a.ID=' + $('#pTab1ModalSelectPlanyr option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    $('#pTab1AddStafflistModalBranchName').text(data.d);
                    var valData = '', valOptGroup = '';
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/PlanmnthAddStafflistModalSelectStafflist",
                        data: '{"id":"' + $('#pTab1ModalSelectPlanyr option:selected').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            valData = '';
                            valOptGroup = '';
                            $($.parseJSON(data.d)).each(function (index, value) {
                                if (value.BRANCH_ID != valOptGroup) {
                                    if (valOptGroup != '') valData += '</optgroup>';
                                    valData += '<optgroup label="' + value.NEGJ + '">';
                                }
                                valData += '<option value="' + value.STAFFS_ID + '">' + value.STAFFNANE + '</option>';
                                valOptGroup = value.BRANCH_ID;
                            });
                            $("#pTab1AddStafflistModalSelectStafflist").html('<option value="">- Сонго -</option>' + valData);
                            $('#pTab1AddStafflistModal').modal('show');
                            dataBindAddStaffListDatatable();
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
    function dataBindAddStaffListDatatable() {
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PlanmnthAddStafflistDatatable",
            data: '{"id":"' + $('#pTab1ModalSelectPlanyr option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += '<table id="planmnthAddStafflistDatatable" class="table table-striped table-bordered table-hover dataTable" aria-describedby="dt_basic_info">';
                valData += '<thead>';
                valData += '<tr>';
                valData += '<th>#</th>';
                valData += '<th>Овог</th>';
                valData += '<th>Нэр</th>';
                valData += '<th>&nbsp;</th>';
                valData += '</tr>';
                valData += '</thead>';
                valData += '<tbody>';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<tr data-id="' + value.ST_ID + '">';
                    valData += '<td>' + value.ROWNUM + '</td>';
                    valData += '<td>' + replaceDatabaseToDisplay(value.OVOG) + '</td>';
                    valData += '<td>' + replaceDatabaseToDisplay(value.NAME) + '</td>';
                    valData += '<td>';
                    if (value.ISREAL == '0') valData += '<i class="fa fa-trash-o hover-black" title="Устгах" onclick="showDeleteAddStafflistModal(this)"></i>';                    
                    valData += '</td>';
                    valData += '</tr>';
                });
                valData += '</tbody>';
                valData += '</table>';
                $('#pTab1AddStaffListDivStafflist').html(valData);
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab1AddStafflistModalSave").click(function () {
        if ($('#pTab1AddStafflistModalSelectStafflist option:selected').val() == "") {
            alert('Ажилтан сонгоно уу!');
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry": "SELECT COUNT(1) FROM TBL_PLANYR_USER WHERE PLANYR_ID=' + $('#pTab1ModalSelectPlanyr option:selected').val() + ' AND ST_ID=' + $('#pTab1AddStafflistModalSelectStafflist option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    if (data.d != "0") alert('Сонгосон ажилтан орсон байна!');
                    else {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                            data: '{"qry": "INSERT INTO TBL_PLANYR_USER (ID, PLANYR_ID, ST_ID, ISREAL) VALUES (TBLLASTID(\'TBL_PLANYR_USER\'), ' + $('#pTab1ModalSelectPlanyr option:selected').val() + ', ' + $('#pTab1AddStafflistModalSelectStafflist option:selected').val() + ', 0)"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function () {
                                dataBindAddStaffListDatatable();
                                dataBindTab1ModalStaffListForSelect2($("#pTab1ModalSelectPlanyr option:selected").val(), '');
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
    });
    function showDeleteAddStafflistModal(el) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Ажилтан " + $(el).closest('tr').find('td:eq(1)').text().substr(0, 1) + "." + $(el).closest('tr').find('td:eq(2)').text() + "-г устгах уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry": "DELETE FROM TBL_PLANYR_USER WHERE PLANYR_ID=' + $('#pTab1ModalSelectPlanyr option:selected').val() + ' AND ST_ID=' + $(el).closest('tr').attr('data-id') + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindAddStaffListDatatable();
                        dataBindTab1ModalStaffListForSelect2($("#pTab1ModalSelectPlanyr option:selected").val(), '');
                        smallBox('Сонгосон ажилтан', 'Амжилттай устлаа...', '#659265', 3000);
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
    $("#pTab1ModalPlanPrintModalSelectIssubmit").change(function () {
        var valData = '', strstratid = '', stractionid = '';
        showLoader('loaderTab1ModalPlanPrintModal');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PlanmnthTab1PlanPrintModalDatatable",
            data: '{"yr":"' + $("#pTab1SelectYear option:selected").val() + '", "mnth":"' + $("#pTab1SelectMonth option:selected").val() + '", "isplaned":"' + $("#pTab1SelectIsPlaned option:selected").val() + '", "gazar":"' + $("#pTab1SelectGazar option:selected").val() + '", "heltes":"' + $("#pTab1SelectHeltes option:selected").val() + '", "staff":"' + $("#pTab1SelectStaff option:selected").val() + '", "issubmit":"' + $("#pTab1ModalPlanPrintModalSelectIssubmit option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                strstratid = '';
                stractionid = '';
                valData += "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\"><thead>";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\"><b>Төсвийн шууд захирагчийн гэрээнд тухайн нэгж хариуцахаар тусгагдсан арга хэмжээ </b><i>(гарц буюу ажил, үйлчилгээ)</i></th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:35%;\"><b>Тухайн арга хэмжээг хэрэгжүүлэхэд чиглэгдсэн нэгжийн гүйцэтгэх ажил, үйлчилгээ, гүйцэтгэлийн шалгуур үзүүлэлт </b><i>(тоо, чанар, хугацаа)</i> <b>-ийн хүрэх түвшин</b></th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хариуцах төрийн албан хаагчийн нэр</th>";
                valData += "</tr>";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">1</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">2</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">3</th>";
                valData += "</tr>";
                valData += "</thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (strstratid != value.STRAT_BRID) {
                        valData += "<tr>";
                        valData += "<td colspan=\"3\" style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + value.STRAT_NO + ". " + replaceDatabaseToDisplay(value.STRAT_NAME) + "</td>";
                        valData += "</tr>";
                    }
                    if (stractionid != value.ACTION_ID) {
                        valData += "<tr>";
                        valData += "<td colspan=\"3\" style=\"border: 1px solid #000; padding:5px; font-weight:bold;\">" + value.STRAT_NO + "." + value.ACTION_NO + ". " + replaceDatabaseToDisplay(value.ACTION_NAME) + "</td>";
                        valData += "</tr>";
                    }
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align: justify;\">" + value.STRAT_NO + "." + value.ACTION_NO + "." + value.PLANYR_NO + "." + value.PLANMNTH_NO + ". " + replaceDatabaseToDisplay(value.PLANMNTH_NAME) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align: justify;\">";
                    valData += "<b>Гүйцэтгэлийн шалгуур үзүүлэлт: </b>" + replaceDatabaseToDisplay(value.CRITERIA);
                    valData += "<br/><b>Тоо: </b>" + value.CNT;
                    valData += "<br/><b>Чанар: </b>" + value.QUALITY;
                    valData += "<br/><b>\tТөлөвлөгөөт хугацаа /сар/: </b>" + value.DT;
                    valData += "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.STLISTNAME + "</td>";
                    valData += "</tr>";
                    strstratid = value.STRAT_BRID;
                    stractionid = value.ACTION_ID;
                });
                valData += '</tbody>';
                valData += '</table>';
                $("#divMainTable").html(valData);
                hideLoader('loaderTab1ModalPlanPrintModal');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    });   

    $('#pTab1ModalInputStartDate, #pTab1ModalInputEndDate').datepicker({
        changeMonth: true,
        changeYear: true,
        dateFormat: 'yy-mm-dd',
        prevText: '<i class="fa fa-chevron-left"></i>',
        nextText: '<i class="fa fa-chevron-right"></i>',
        monthNames: ["1-р сар", "2-р сар", "3-р сар", "4-р сар", "5-р сар", "6-р сар", "7-р сар", "8-р сар", "9-р сар", "10-р сар", "11-р сар", "12-р сар"],
        monthNamesShort: ["1-р сар", "2-р сар", "3-р сар", "4-р сар", "5-р сар", "6-р сар", "7-р сар", "8-р сар", "9-р сар", "10-р сар", "11-р сар", "12-р сар"],
        dayNamesMin: ['Ня', 'Да', 'Мя', 'Лх', 'Пү', 'Ба', 'Бя']
    });
    //tab2
    function dataBindTab2DataTableFirst() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '', valOptGroup='';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr": "' + $('#pTab2SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                })
                $('#pTab2SelectGazar').html(valData);
                $('#pTab2SelectGazar').val(userGazarId);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                    data: '{"yr": "' + $('#pTab2SelectYear option:selected').val() + '", "gazar": "' + $("#pTab2SelectGazar option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        })
                        $("#pTab2SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                        if (!funcCheckRoles('1,8')) {
                            $('#pTab2SelectGazar').prop('disabled', true);
                            if (!funcCheckRoles('3,4')) {
                                $('#pTab2SelectHeltes').val(userHeltesId);
                                $('#pTab2SelectHeltes').prop('disabled', true);
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/GetStaffListForDDL",
                                    data: '{"yr": "' + $('#pTab2SelectYear option:selected').val() + '", "gazar": "' + $("#pTab2SelectGazar option:selected").val() + '", "heltes":"' + $("#pTab2SelectHeltes option:selected").val() + '"}',
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
                                        $("#pTab2SelectStaff").html('<option value="">Бүгд</option>' + valData);
                                        dataBindTab2DataTable();
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
                                $('#pTab2SelectStaff').html('<option value="">Бүгд</option>');
                                $('#pTab2SelectStaff').prop('disabled', true);
                                dataBindTab2DataTable();
                            }
                        }
                        else {
                            $('#pTab2SelectHeltes').prop('disabled', false);
                            $('#pTab2SelectStaff').html('<option value="">Бүгд</option>');
                            $('#pTab2SelectStaff').prop('disabled', true);
                            dataBindTab2DataTable();
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
    function dataBindTab2DataTable() {
        var valData = "", isDisabled = "", cssclass = "", isMine = "";
        showLoader('loaderTab2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PlanmnthTab2Datatable",
            data: '{"yr":"' + $("#pTab2SelectYear option:selected").val() + '", "mnth":"' + $("#pTab2SelectMonth option:selected").val() + '", "gazar":"' + $("#pTab2SelectGazar option:selected").val() + '", "heltes":"' + $("#pTab2SelectHeltes option:selected").val() + '", "stid":"' + $("#pTab2SelectStaff option:selected").val() + '", "isplaned":"' + $("#pTab2SelectIsPlaned option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData += "<table id=\"pTab2Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\">";
                valData += "<thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Сарын төлөвлөгөө</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;&nbsp;&nbsp;&nbsp;Хугацаа&nbsp;&nbsp;&nbsp;&nbsp;</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Гүйцэтгэх ажилтан</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Биелэлт оруулах</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хавсралт файл</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    cssclass = " class=\"hide\"";
                    isMine = "";
                    for (var i = 0; i < value.STAFFIDLIST.split(',').length; i++) {
                        if (value.STAFFIDLIST.split(',')[i] == $('#indexUserId').html()) {
                            cssclass = "";
                            break;
                        }
                    }
                    if (funcCheckRoles('1,3,4,5,6,8')) cssclass = "";
                    valData += "<tr data-id=\"" + value.PLANMNTH_ID + "\">";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.PLANMNTH_NAME) + "</td>";
                    valData += "<td>" + value.DT + "</td>";
                    valData += "<td>" + value.STAFFNAMELIST + "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">";
                    if (value.ISEVAL == "0") valData += "<a href=\"../pg/planmnthTab2ImplModal.aspx?id=" + value.PLANMNTH_ID + "&yr=" + $("#pTab2SelectYear option:selected").val() + "&mnth=" + $("#pTab2SelectMonth option:selected").val() + "\" data-target=\"#pTab2Modal\" data-toggle=\"modal\" style=\"cursor:pointer\"><i class=\"" + value.ISIMPL + "\"></i></a>";
                    else valData += "<a href=\"javascript:void(0);\" style=\"cursor:pointer\" onclick=\"alert('Сонгосон төлөвлөгөөнд хамааралтай үнэлгээ орсон тул биелэлт засварлах боломжгүй байна! Үнэлгээ хэсэгрүү орж биелэлт болон үнэлгээг харна уу!');\"><i class=\"" + value.ISIMPL + "\"></i></a>";
                    valData += "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">";
                    if (value.FILE_NAME != "") valData += "<a href=\"../files/plan/" + value.FILE_NAME + "\" class=\"btn btn-link btn-xs\" style=\"padding:0px; border:none;\" download title=\"Хавсаргасан файл татах\"><i class=\"fa fa-paperclip fa-lg\"></i></a></td>";
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_pTab2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab2Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab2Datatable) {responsiveHelper_pTab2Datatable = new ResponsiveDatatablesHelper($('#pTab2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab2Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"75px\" }, null, { \"sWidth\": \"52px\" }, { \"sWidth\": \"15px\" }]});";
                valData += '<\/script>';
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
        dataBindTab2DataTableFirst();
    });
    $("#pTab2SelectGazar").change(function () {
        if ($("#pTab2SelectGazar option:selected").val() == "") {
            $("#pTab2SelectHeltes").html("<option selected value=\"\">Бүгд</option>");
            $("#pTab2SelectHeltes").prop("disabled", true);
            $('#pTab2SelectStaff').html('<option value="">Бүгд</option>');
            $('#pTab2SelectStaff').prop('disabled', true);
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr": "' + $('#pTab2SelectYear option:selected').val() + '", "gazar": "' + $("#pTab2SelectGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    })
                    $("#pTab2SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                    $("#pTab2SelectHeltes").prop("disabled", false);
                    $('#pTab2SelectStaff').html('<option value="">Бүгд</option>');
                    $('#pTab2SelectStaff').prop('disabled', true);
                    dataBindTab2DataTable();
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
    $("#pTab2SelectHeltes").change(function () {
        if ($("#pTab2SelectHeltes option:selected").val() == "") {
            $('#pTab2SelectStaff').html('<option value="">Бүгд</option>');
            $('#pTab2SelectStaff').prop('disabled', true);
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetStaffListForDDL",
                data: '{"yr": "' + $('#pTab2SelectYear option:selected').val() + '", "gazar": "' + $("#pTab2SelectGazar option:selected").val() + '", "heltes":"' + $("#pTab2SelectHeltes option:selected").val() + '"}',
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
                    $("#pTab2SelectStaff").html('<option value="">Бүгд</option>' + valData);
                    $('#pTab2SelectStaff').prop('disabled', false);
                    dataBindTab2DataTable();
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
    $("#pTab2SelectStaff, #pTab2SelectMonth, #pTab2SelectIsPlaned").change(function () {
        dataBindTab2DataTable();
    });
        
    //tab3
    function dataBindTab3DataTableFirst() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr": "' + $('#pTab3SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                })
                $('#pTab3SelectGazar').html(valData);
                $('#pTab3SelectGazar').val(userGazarId);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                    data: '{"yr": "' + $('#pTab3SelectYear option:selected').val() + '", "gazar": "' + $("#pTab3SelectGazar option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        })
                        $("#pTab3SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                        if (!funcCheckRoles('1,8')) {
                            $('#pTab3SelectGazar').prop('disabled', true);
                            if (!funcCheckRoles('3,4')) {
                                $('#pTab3SelectHeltes').val(userHeltesId);
                                $('#pTab3SelectHeltes').prop('disabled', true);
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/GetStaffListForDDL",
                                    data: '{"yr": "' + $('#pTab3SelectYear option:selected').val() + '", "gazar": "' + $("#pTab3SelectGazar option:selected").val() + '", "heltes":"' + $("#pTab3SelectHeltes option:selected").val() + '"}',
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
                                        $("#pTab3SelectStaff").html('<option value="">Бүгд</option>' + valData);
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
                            else {
                                $('#pTab3SelectStaff').html('<option value="">Бүгд</option>');
                                $('#pTab3SelectStaff').prop('disabled', true);
                                dataBindTab3DataTable();
                            }
                        }
                        else {
                            $('#pTab3SelectHeltes').prop('disabled', false);
                            $('#pTab3SelectStaff').html('<option value="">Бүгд</option>');
                            $('#pTab3SelectStaff').prop('disabled', true);
                            dataBindTab3DataTable();
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
    function dataBindTab3DataTable() {
        var valData = '', isDisabled = "";
        var cnti = 1;
        var strplanyrid = "", strrd7 = "", strrd8 = "", strrd9 = "", qry = "";
        showLoader('loaderTab3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PlanmnthTab3Datatable",
            data: '{"yr":"' + $("#pTab3SelectYear option:selected").val() + '", "mnth":"' + $("#pTab3SelectMonth option:selected").val() + '", "gazar":"' + $("#pTab3SelectGazar option:selected").val() + '", "heltes":"' + $("#pTab3SelectHeltes option:selected").val() + '", "isplaned":"' + $("#pTab3SelectIsPlaned option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (!funcCheckRoles('1,24')) {
                    isDisabled = " disabled=\"disabled\"";
                }
                valData += "<table id=\"pTab3Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead><tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center hide\" style=\"vertical-align:middle;\"></th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Жилийн төлөвлөгөө</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\"><div style=\"color:#826430; width:35%; float:left; text-align:center;\">Сарын төлөвлөгөө/хүрэх үр дүн</div><div style=\"color:#356635; width:62%; float:left; text-align:center;\">Биелэлт</div><div style=\"color:#356635; width:3%; float:left; text-align:center;\"><i class=\"fa fa-fw fa-paperclip text-muted\"></i></div></th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Үнэлгээ</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Үнэлгээний тайлбар</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (strplanyrid != value.PLANYR_ID) {
                        if (strplanyrid == "") {
                            valData += "<tr data-planyrid=\"" + value.PLANYR_ID + "\">";
                            valData += "<td>" + cnti.toString() + "</td>";
                            valData += "<td style=\"font-size: 10px;\">" + value.STRAT_NO + "." + value.ACTION_NO + "." + value.PLANYR_NO + "." + value.PLANYR_NAME + " <a class=\"btn btn-link btn-sm\" style=\"padding:0 0 0 0; font-style:italic; font-size: 12px;\" data-toggle=\"modal\" data-target=\"#pTab3ModalInfo\" href=\"pg/planyrTab3ModalInfo.aspx?yr=" + $("#pTab3SelectYear option:selected").val() + "&id=" + value.PLANYR_ID + "\">Дэлгэрэнгүй харах...</a></td>";

                            valData += "<td style=\"padding:0px;\">";
                            valData += "<div class=\"row\">";
                            valData += "<div class=\"col-md-12\">";
                            valData += "<div style=\"float:left; width:35%; background-color:#fcf8e3;\">";
                            valData += value.PLANMNTH_NAME;
                            valData += "</div>";
                            valData += "<div style=\"float:left; width:62%; background-color:#dff0d8;\">";
                            valData += replaceDatabaseToDisplay(value.IMPL_DATA);
                            valData += "</div>";
                            valData += "<div style=\"float:left; width:3%; background-color:#dff0d8;\">";
                            if (value.ISFILE == "1") valData += "<a href=\"../files/plan/" + value.FILE_NAME + "\" class=\"btn btn-link btn-xs\" style=\"padding:0px; border:none;\" download title=\"Хавсаргасан файл татах\"><i class=\"fa fa-paperclip fa-lg\"></i></a>";
                            valData += "</div>";
                            valData += "</div>";
                            valData += "</div>";
                            cnti++;
                        }
                        else {
                            valData += "</td>";
                            if (strrd7 == "0") valData += "<td><select" + isDisabled + " class=\"bg-color-blueLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 65px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                            else {
                                if (strrd8 == "0") valData += "<td><select" + isDisabled + " class=\"bg-color-red form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 65px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                                else if (strrd8 == "10") valData += "<td><select" + isDisabled + " class=\"bg-color-red form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 65px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                                else if (strrd8 == "30") valData += "<td><select" + isDisabled + " class=\"bg-color-red form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 65px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                                else if (strrd8 == "50") valData += "<td><select" + isDisabled + " class=\"bg-color-orange form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 65px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                                else if (strrd8 == "70") valData += "<td><select" + isDisabled + " class=\"bg-color-orange form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 65px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                                else if (strrd8 == "80") valData += "<td><select" + isDisabled + " class=\"bg-color-greenLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 65px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                                else if (strrd8 == "90") valData += "<td><select" + isDisabled + " class=\"bg-color-greenLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 65px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                                else if (strrd8 == "100") valData += "<td><select" + isDisabled + " class=\"bg-color-greenLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 65px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">100 %</option></select></td>";
                            }
                            valData += "<td><div class=\"input-icon-right\"><textarea" + isDisabled + " class=\"eg-txta-eval-desc form-control\" style=\"padding-right:10px;\" rows=\"2\">" + strrd9.replace("-", "") + "</textarea><i class=\"glyphicon glyphicon-floppy-disk hover-black\" style=\"top:0; padding-top:6px;\" title=\"Тайлбар хадгалах\" onclick=\"saveEvalDesc(this)\"></i></div></td>";
                            valData += "</tr>";

                            valData += "<tr data-planyrid=\"" + value.PLANYR_ID + "\">";
                            valData += "<td>" + cnti.toString() + "</td>";
                            valData += "<td style=\"font-size: 10px;\">" + value.STRAT_NO + "." + value.ACTION_NO + "." + value.PLANYR_NO + "." + value.PLANYR_NAME + " <button class=\"btn btn-link btn-sm\" style=\"padding:0 0 0 0; font-style:italic; font-size: 12px;\" data-toggle=\"modal\" data-target=\"#pTab3ModalInfo\" href=\"pg/planyrTab3ModalInfo.aspx?yr=" + $("#pTab3SelectYear option:selected").val() + "&id=" + value.PLANYR_ID + "\">Дэлгэрэнгүй харах...</a></td>";

                            valData += "<td style=\"padding:0px;\">";
                            valData += "<div class=\"row\">";
                            valData += "<div class=\"col-md-12\">";
                            valData += "<div style=\"float:left; width:35%; background-color:#fcf8e3;\">";
                            valData += value.PLANMNTH_NAME;
                            valData += "</div>";
                            valData += "<div style=\"float:left; width:62%; background-color:#dff0d8;\">";
                            valData += replaceDatabaseToDisplay(value.IMPL_DATA);
                            valData += "</div>";
                            valData += "<div style=\"float:left; width:3%; background-color:#dff0d8;\">";
                            if (value.ISFILE == "1") valData += "<a href=\"../files/plan/" + value.FILE_NAME + "\" class=\"btn btn-link btn-xs\" style=\"padding:0px; border:none;\" download title=\"Хавсаргасан файл татах\"><i class=\"fa fa-paperclip fa-lg\"></i></a>";
                            valData += "</div>";
                            valData += "</div>";
                            valData += "</div>";
                            cnti++;
                        }
                    }
                    else {
                        valData += "<div class=\"row\">";
                        valData += "<div class=\"col-md-12\">";
                        valData += "<div style=\"float:left; width:35%; background-color:#fcf8e3;\">";
                        valData += value.PLANMNTH_NAME;
                        valData += "</div>";
                        valData += "<div style=\"float:left; width:62%; background-color:#dff0d8;\">";
                        valData += replaceDatabaseToDisplay(value.IMPL_DATA);
                        valData += "</div>";
                        valData += "<div style=\"float:left; width:3%; background-color:#dff0d8;\">";
                        if (value.ISFILE == "1") valData += "<a href=\"../files/plan/" + value.FILE_NAME + "\" class=\"btn btn-link btn-xs\" style=\"padding:0px; border:none;\" download title=\"Хавсаргасан файл татах\"><i class=\"fa fa-paperclip fa-lg\"></i></a>";
                        valData += "</div>";
                        valData += "</div>";
                        valData += "</div>";
                    }
                    strplanyrid = value.PLANYR_ID;
                    strrd7 = value.ISEVAL;
                    strrd8 = value.EVAL;
                    strrd9 = value.DESCRIPTION;
                });
                valData += "</td>";
                if (strrd7 == "0") valData += "<td><select" + isDisabled + " class=\"bg-color-blueLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                else {
                    if (strrd8 == "0") valData += "<td><select" + isDisabled + " class=\"bg-color-red form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                    else if (strrd8 == "10") valData += "<td><select" + isDisabled + " class=\"bg-color-red form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                    else if (strrd8 == "30") valData += "<td><select" + isDisabled + " class=\"bg-color-red form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                    else if (strrd8 == "50") valData += "<td><select" + isDisabled + " class=\"bg-color-orange form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                    else if (strrd8 == "70") valData += "<td><select" + isDisabled + " class=\"bg-color-orange form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                    else if (strrd8 == "80") valData += "<td><select" + isDisabled + " class=\"bg-color-greenLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                    else if (strrd8 == "90") valData += "<td><select" + isDisabled + " class=\"bg-color-greenLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                    else if (strrd8 == "100") valData += "<td><select" + isDisabled + " class=\"bg-color-greenLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">100 %</option></select></td>";
                }
                valData += "<td><div class=\"input-icon-right\"><textarea" + isDisabled + " class=\"eg-txta-eval-desc form-control\" style=\"padding-right:10px;\" rows=\"2\">" + strrd9.replace("-", "") + "</textarea><i class=\"glyphicon glyphicon-floppy-disk hover-black\" style=\"top:0; padding-top:6px;\" title=\"Тайлбар хадгалах\" onclick=\"saveEvalDesc(this)\"></i></div></td>";
                valData += "</tr>";
                valData += '</tbody>';
                valData += '</table>';
                valData += '<script>';
                valData += "var responsiveHelper_pTab3Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab3Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab3Datatable) {responsiveHelper_pTab3Datatable = new ResponsiveDatatablesHelper($('#pTab3Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab3Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab3Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"400px\" },null,{ \"sWidth\": \"65px\" },null]});";
                valData += '<\/script>';
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
    $("#pTab3SelectGazar").change(function () {
        if ($("#pTab3SelectGazar option:selected").val() == "") {
            $("#pTab3SelectHeltes").html("<option selected value=\"\">Бүгд</option>");
            $("#pTab3SelectHeltes").prop("disabled", true);
            $('#pTab3SelectStaff').html('<option value="">Бүгд</option>');
            $('#pTab3SelectStaff').prop('disabled', true);
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr": "' + $('#pTab3SelectYear option:selected').val() + '", "gazar": "' + $("#pTab3SelectGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    })
                    $("#pTab3SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                    $("#pTab3SelectHeltes").prop("disabled", false);
                    $('#pTab3SelectStaff').html('<option value="">Бүгд</option>');
                    $('#pTab3SelectStaff').prop('disabled', true);
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
    $("#pTab3SelectHeltes").change(function () {
        if ($("#pTab3SelectHeltes option:selected").val() == "") {
            $('#pTab3SelectStaff').html('<option value="">Бүгд</option>');
            $('#pTab3SelectStaff').prop('disabled', true);
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetStaffListForDDL",
                data: '{"yr": "' + $('#pTab3SelectYear option:selected').val() + '", "gazar": "' + $("#pTab3SelectGazar option:selected").val() + '", "heltes":"' + $("#pTab3SelectHeltes option:selected").val() + '"}',
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
                    $("#pTab3SelectStaff").html('<option value="">Бүгд</option>' + valData);
                    $('#pTab3SelectStaff').prop('disabled', false);
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
    $("#pTab3SelectStaff, #pTab3SelectIsPlaned, #pTab3SelectMonth").change(function () {
        dataBindTab3DataTable();
    });
    function saveEval(me) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT COUNT(1) FROM TBL_PLANYR_EVAL WHERE PLANYR_ID=' + $(me).closest('tr').attr('data-planyrid') + ' AND TP=\'month\' AND INTERVAL=' + $('#pTab3SelectMonth option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                var valQry = '';
                if (data.d == '0') {
                    valQry = 'INSERT INTO TBL_PLANYR_EVAL (PLANYR_ID, TP, INTERVAL, EVAL, EVAL_MODIFY_STAFFID, EVAL_MODIFY_DATE) VALUES (' + $(me).closest('tr').attr('data-planyrid') + ', \'month\', ' + $('#pTab3SelectMonth option:selected').val() + ', ' + $(me).val().replace('none', 'null') + ', ' + '<%= Session["LM_UserID"] %>' + ', to_char(sysdate,\'yyyy-MM-dd\'))';
                }
                else {
                    valQry = 'UPDATE TBL_PLANYR_EVAL SET EVAL=' + $(me).val().replace('none', 'null') + ', EVAL_MODIFY_STAFFID=' + '<%= Session["LM_UserID"] %>' + ', EVAL_MODIFY_DATE=to_char(sysdate,\'yyyy-MM-dd\') WHERE PLANYR_ID=' + $(me).closest('tr').attr('data-planyrid') + ' AND TP=\'month\' AND INTERVAL=' + $('#pTab3SelectMonth option:selected').val() + '';
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry": "'+valQry+'"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        smallBox('Сарын үнэлгээ', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
    function saveEvalDesc(el) {
        if (replaceDisplayToDatabase($.trim($(el).parent().find('textarea').val())).length > 1000) {
            alert('Тайлбар 1000-аас бага тэмдэгт авна!');
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"SELECT COUNT(1) FROM TBL_PLANYR_EVAL WHERE PLANYR_ID=' + $(el).closest('tr').attr('data-planyrid') + ' AND TP=\'month\' AND INTERVAL=' + $('#pTab3SelectMonth option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    var valQry = '';
                    if (data.d == '0') {
                        valQry = 'INSERT INTO TBL_PLANYR_EVAL (PLANYR_ID, TP, INTERVAL, DESCRIPTION) VALUES (' + $(el).closest('tr').attr('data-planyrid') + ', \'month\', ' + $('#pTab3SelectMonth option:selected').val() + ', \'' + replaceDisplayToDatabase($.trim($(el).parent().find('textarea').val())) + '\')';
                    }
                    else {
                        valQry = 'UPDATE TBL_PLANYR_EVAL SET DESCRIPTION=\'' + replaceDisplayToDatabase($.trim($(el).parent().find('textarea').val())) + '\' WHERE PLANYR_ID=' + $(el).closest('tr').attr('data-planyrid') + ' AND TP=\'month\' AND INTERVAL=' + $('#pTab3SelectMonth option:selected').val() + '';
                    }
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                        data: '{"qry": "' + valQry + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            smallBox('Сарын үнэлгээний тайлбар', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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

    //tab4
    //tab4t1
    function dataBindTab4t1DataTableFirst() {
        var userGazarId = $('#indexUserGazarId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr": "' + $('#pTab4t1SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                })
                $('#pTab4t1SelectGazar').html(valData);
                $('#pTab4t1SelectGazar').val(userGazarId);
                if (!funcCheckRoles('1,8')) {
                    $('#pTab4t1SelectGazar').prop('disabled', true);
                }
                else {
                    $('#pTab4t1SelectGazar').prop('disabled', false);
                }
                dataBindTab4t1DataTable();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab4t1DataTable() {
        var valData = '';
        var strplanyrid = "";
        var icnt = 1;
        showLoader('loaderTab4t1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PlanmnthTab4t1Datatable",
            data: '{"yr":"' + $("#pTab4t1SelectYear option:selected").val() + '", "mnth":"' + $("#pTab4t1SelectMonth option:selected").val() + '", "gazar":"' + $("#pTab4t1SelectGazar option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                strplanyrid = '';
                icnt = 1;
                valData = "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\"><thead style=\"background-color:C6D9F1;\"><tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:1%;\">#</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:25%;\">Сарын төлөвлөгөө</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:25%;\">Хүрэх үр дүн</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:46%;\">Биелэлт</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:3%;\">Үнэлгээ</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (strplanyrid != value.PLANYR_ID) {
                        valData += "<tr>";
                        valData += "<td rowspan=\"" + value.PLANMNTH_CNT + "\" style=\"border: 1px solid #000; font-size:12px !important;  padding:5px; text-align:center;\">" + icnt.toString() + "</td>";
                        valData += "<td rowspan=\"" + value.PLANMNTH_CNT + "\" style=\"vertical-align:top; text-align:justify; border: 1px solid #000; font-size:12px !important;  padding:5px;\">" + value.STRAT_NO + "." + value.ACTION_NO + "." + value.PLANYR_NO + "." + replaceDatabaseToDisplay(value.PLANYR_NAME) + "</td>";
                        valData += "<td style=\"vertical-align:top; text-align:justify; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + value.STRAT_NO + "." + value.ACTION_NO + "." + value.PLANYR_NO + "." + value.PLANMNTH_NO + ". " + replaceDatabaseToDisplay(value.PLANMNTH_NAME) + "</td>";
                        valData += "<td style=\"vertical-align:top; text-align:justify; border: 1px solid #000; font-size:12px !important; padding:5px;\">" + replaceDatabaseToDisplay(value.IMPL_DATA) + "</td>";
                        if (value.ISEVAL == "0") valData += "<td rowspan=\"" + value.PLANMNTH_CNT + "\" style=\"border: 1px solid #000; font-size:12px !important;  padding:5px; text-align:center;\">-</td>";
                        else valData += "<td rowspan=\"" + value.PLANMNTH_CNT + "\" style=\"border: 1px solid #000; font-size:12px !important;  padding:5px; text-align:center;\">" + value.EVAL + " %</td>";
                        valData += "</tr>";
                        icnt++;
                    }
                    else {
                        valData += "<tr>";
                        valData += "<td style=\"vertical-align:top; text-align:justify; border: 1px solid #000; font-size:12px !important;  padding:5px;\">" + value.STRAT_NO + "." + value.ACTION_NO + "." + value.PLANYR_NO + "." + value.PLANMNTH_NO + ". " + replaceDatabaseToDisplay(value.PLANMNTH_NAME) + "</td>";
                        valData += "<td style=\"vertical-align:top; text-align:justify; border: 1px solid #000; font-size:12px !important;  padding:5px;\"><div>" + replaceDatabaseToDisplay(value.IMPL_DATA) + "</div></td>";
                        valData += "</tr>";

                    }
                    strplanyrid = value.PLANYR_ID;
                });
                valData += "</tbody>";
                valData += "</table>";
                $("#divBindTab4t1Table").html(valData);
                if ($("#pTab4t1SelectGazar option:selected").val() == '') {
                    $('#pTab4t1Gazar').html('');
                }
                else {
                    $('#pTab4t1Gazar').html($("#pTab4t1SelectGazar option:selected").attr('title').replace('газар', 'газрын'));
                }
                $("#pTab4t1Year").html($("#pTab4t1SelectYear option:selected").val());
                $("#pTab4t1Month").html($("#pTab4t1SelectMonth option:selected").val());
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
        dataBindTab4t1DataTableFirst();
    });
    $("#pTab4t1SelectMonth").change(function () {
        dataBindTab4t1DataTable();
    });
    $("#pTab4t1SelectGazar").change(function () {
        dataBindTab4t1DataTable();
    });
    //tab4t2
    function dataBindTab4t2DataTableFirst() {
        var userGazarId = $('#indexUserGazarId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr": "' + $('#pTab4t2SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                })
                $('#pTab4t2SelectGazar').html(valData);
                $('#pTab4t2SelectGazar').val(userGazarId);
                if (!funcCheckRoles('1,8')) {
                    $('#pTab4t2SelectGazar').prop('disabled', true);
                }
                else {
                    $('#pTab4t2SelectGazar').prop('disabled', false);
                }
                dataBindTab4t2DataTable();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab4t2DataTable() {
        var valData = '';
        showLoader('loaderTab4t2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PlanmnthTab4t2Datatable",
            data: '{"yr":"' + $("#pTab4t2SelectYear option:selected").val() + '", "mnth":"' + $("#pTab4t2SelectMonth option:selected").val() + '", "gazar":"' + $("#pTab4t2SelectGazar option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\">";
                valData += "<thead style=\"background-color:C6D9F1;\">";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">#</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Сарын төлөвлөгөө</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хариуцах газар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Үнэлгээ</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Үнэлгээний тайлбар</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.ROWNO + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.PLANMNTH + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.DOMAIN_ORG + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.EVAL + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.DESCRIPTION + "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                $("#divBindTab4t2Table").html(valData);
                if ($("#pTab4t2SelectGazar option:selected").val() == '') {
                    $('#pTab4t2Gazar').html('');
                }
                else {
                    $('#pTab4t2Gazar').html($("#pTab4t2SelectGazar option:selected").attr('title').replace('газар', 'газрын'));
                }
                $("#pTab4t2Year").html($("#pTab4t2SelectYear option:selected").val());
                $("#pTab4t2Month").html($("#pTab4t2SelectMonth option:selected").val());
                hideLoader('loaderTab4t2');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab4t2SelectYear").change(function () {
        dataBindTab4t2DataTableFirst();
    });
    $("#pTab4t2SelectMonth").change(function () {
        dataBindTab4t2DataTable();
    });
    $("#pTab4t2SelectGazar").change(function () {
        dataBindTab4t2DataTable();
    });
    //tab5t1
    function dataBindTab5t1DataTable() {
        var valData = '';
        var cnt = 0, cnt100 = 0, cnt90 = 0, cnt80 = 0, cnt70 = 0, cnt50 = 0, cnt30 = 0, cnt10 = 0, cnt0 = 0, cntnone = 0, cntgazarcnt = 0;
        var sumper = 0;
        showLoader('loaderTab5t1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PlanmnthTab5t1Datatable",
            data: '{"yr":"' + $("#pTab5t1SelectYear option:selected").val() + '", "mnth":"' + $("#pTab5t1SelectMonth option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\">";
                valData += "<thead style=\"background-color:C6D9F1;\">";
                valData += "<tr>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Газар</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Нийт<br/>арга хэмжээ</th>";
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
                    cnt += parseInt(value.PLANMNTH_CNT.toString().replace("-", "0"));
                    cnt100 += parseInt(value.EVAL100.toString().replace("-", "0"));
                    cnt90 += parseInt(value.EVAL90.toString().replace("-", "0"));
                    cnt80 += parseInt(value.EVAL80.toString().replace("-", "0"));
                    cnt70 += parseInt(value.EVAL70.toString().replace("-", "0"));
                    cnt50 += parseInt(value.EVAL50.toString().replace("-", "0"));
                    cnt30 += parseInt(value.EVAL30.toString().replace("-", "0"));
                    cnt10 += parseInt(value.EVAL10.toString().replace("-", "0"));
                    cnt0 += parseInt(value.EVAL0.toString().replace("-", "0"));
                    cntnone += parseInt(value.EVALNONE.toString().replace("-", "0"));
                    sumper += parseFloat(value.PERAVG.toString());
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.BR_NAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.PLANMNTH_CNT + "</td>";
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
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">НИЙТ</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt.toString() + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt100.toString() + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt90.toString() + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt80.toString() + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt70.toString() + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt50.toString() + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt30.toString() + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt10.toString() + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt0.toString() + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cntnone.toString() + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + Math.round(sumper / cntgazarcnt, 1).toFixed(2).toString() + "</th>";
                valData += "</tr>";
                valData += "</tfoot>";
                valData += "</table>";
                $("#divBindTab5t1Table").html(valData);
                $("#pTab5t1Year").html($("#pTab5t1SelectYear option:selected").val());
                $("#pTab5t1Month").html($("#pTab5t1SelectMonth option:selected").val());
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
    $("#pTab5t1SelectYear").change(function () {
        dataBindTab5t1DataTable();
    });
    $("#pTab5t1SelectMonth").change(function () {
        dataBindTab5t1DataTable();
    });

    //tab4t4
    function dataBindTab4t4DataTable() {
        var valData = '';
        var cnt1 = 0, cnt2 = 0, cnt3 = 0, cnt4 = 0, cnt5 = 0, cnt6 = 0, cnt7 = 0, cnt8 = 0, cnt9 = 0, cnt10 = 0, cnt11 = 0, cnt12 = 0;
        showLoader('loaderTab4t4');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PlanmnthTab4t4Datatable",
            data: '{"yr":"' + $("#pTab4t4SelectYear option:selected").val() + '", "mnth":"' + $("#pTab4t4SelectMonth option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\">";
                valData += "<thead style=\"background-color:C6D9F1;\">";
                valData += "<tr>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">#</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Газрууд</th>";
                valData += "<th colspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Жилийн төлөвлөгөө</th>";
                valData += "<th colspan=\"3\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Төлөвлөх ёстой</th>";
                valData += "<th colspan=\"3\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Төлөвлөсөн</th>";
                valData += "<th colspan=\"3\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Удаашралтай</th>";
                valData += "</tr>";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Төл</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Төл/бус</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Жилдээ</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Оны эхнээс</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Тухайн сар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Жилдээ</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Оны эхнээс</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Тухайн сар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Жилдээ</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Оны эхнээс</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Тухайн сар</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    cnt1 += parseInt(value.D1.toString().replace("-", "0"));
                    cnt2 += parseInt(value.D2.toString().replace("-", "0"));
                    cnt3 += parseInt(value.D3.toString().replace("-", "0"));
                    cnt4 += parseInt(value.D4.toString().replace("-", "0"));
                    cnt5 += parseInt(value.D5.toString().replace("-", "0"));
                    cnt6 += parseInt(value.D6.toString().replace("-", "0"));
                    cnt7 += parseInt(value.D7.toString().replace("-", "0"));
                    cnt8 += parseInt(value.D8.toString().replace("-", "0"));
                    cnt9 += parseInt(value.D9.toString().replace("-", "0"));
                    cnt10 += parseInt(value.D10.toString().replace("-", "0"));
                    cnt11 += parseInt(value.D11.toString().replace("-", "0"));
                    cnt12 += parseInt(value.D12.toString().replace("-", "0"));
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.ROWNO + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.DOMAIN_ORG + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D2 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D3 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D4 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D5 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D6 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D7 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D8 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D9 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D10 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D11 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.D12 + "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "<tfoot style=\"background-color:C6D9F1;\">";
                valData += "<tr>";
                valData += "<td colspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">НИЙТ</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt2 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt3 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt4 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt5 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt6 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt7 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt8 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt9 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt10 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt11 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt12 + "</td>";
                valData += "</tr>";
                valData += "</tfoot>";
                valData += "</table>";
                $("#divBindTab4t4Table").html(valData);
                hideLoader('loaderTab4t4');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab4t4SelectYear").change(function () {
        dataBindTab4t4DataTable();
    });
    $("#pTab4t4SelectMonth").change(function () {
        dataBindTab4t4DataTable();
    });

    //tab4t5
    function dataBindTab4t5DataTable() {
        var valData = '';
        var cnt1 = 0, cnt2 = 0, cnt3 = 0, cnt4 = 0, cnt5 = 0, cnt6 = 0, cnt=0;
        showLoader('loaderTab4t5');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PlanmnthTab4t5Datatable",
            data: '{"yr":"' + $("#pTab4t5SelectYear option:selected").val() + '", "mnth":"' + $("#pTab4t5SelectMonth option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\">";
                valData += "<thead style=\"background-color:C6D9F1;\">";
                valData += "<tr>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">#</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Газрууд</th>";
                valData += "<th colspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Төлөвлөсөн ажлын тоо</th>";
                valData += "<th colspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Биелэлт</th>";
                valData += "<th colspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Жилийн төлөвлөгөөний хэрэгжилт<br>(оны эхнээс)</th>";
                valData += "</tr>";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Төлөвлөгөөт</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Төлөв/бус</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Тайлагнасан</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Тайлагнаагүй</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хэрэгжсэн ажлын тоо</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хэрэгжсэн хувь</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    cnt1 += parseInt(value.ISPLANED1.toString().replace("-", "0"));
                    cnt2 += parseInt(value.ISPLANED0.toString().replace("-", "0"));
                    cnt3 += parseInt(value.ISIMPL1.toString().replace("-", "0"));
                    cnt4 += parseInt(value.ISIMPL0.toString().replace("-", "0"));
                    cnt5 += parseInt(value.EVALMNTH_CNT.toString().replace("-", "0"));
                    cnt6 += parseInt(value.AVGPER.toString().replace("-", "0"));
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.ROWNO + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.DOMAIN_ORG + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.ISPLANED1 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.ISPLANED0 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.ISIMPL1 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.ISIMPL0 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.EVALMNTH_CNT + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.AVGPER + "</td>";
                    valData += "</tr>";
                    cnt++;
                });
                valData += "</tbody>";
                valData += "<tfoot style=\"background-color:C6D9F1;\">";
                valData += "<tr>";
                valData += "<th colspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">НИЙТ</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt1 + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt2 + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt3 + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt4 + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt5 + "</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + (parseFloat(cnt6.toString()) / parseFloat(cnt.toString())).toFixed(2).toString() + "</th>";
                valData += "</tr>";
                valData += "</tfoot>";
                valData += "</table>";
                $("#divBindTab4t5Table").html(valData);
                hideLoader('loaderTab4t5');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab4t5SelectYear").change(function () {
        dataBindTab4t5DataTable();
    });
    $("#pTab4t5SelectMonth").change(function () {
        dataBindTab4t5DataTable();
    });

    
</script>