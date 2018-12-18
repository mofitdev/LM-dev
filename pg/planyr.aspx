<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="planyr.aspx.cs" Inherits="LMWebApp.pg.planyr" %>
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    <h1 class="page-title txt-color-blueDark" style="margin-bottom:12px;">
        <i class="fa-fw fa fa-home"></i>
        <span id="pageUrlModuleName" runat="server">> Жилийн төлөвлөгөө</span>
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
                        <li id="pTab1t2Li" runat="server" onclick="pDatabindTabs(this)" class="pull-right">
                            <a data-toggle="tab" href="#pTab1t2"><i class="fa fa-fw fa-lg fa-list-ul"></i>Үйл ажиллагааны зорилт</a>
                        </li>
                        <li id="pTab1t1Li" runat="server" onclick="pDatabindTabs(this)" class="pull-right">
                            <a data-toggle="tab" href="#pTab1t1"><i class="fa fa-fw fa-lg fa-list-ul"></i>Стратегийн зорилт</a>
                        </li>
                        <li id="pTab1t3Li" runat="server" onclick="pDatabindTabs(this)" class="active">
                            <a data-toggle="tab" href="#pTab1t3"><i class="fa fa-fw fa-lg fa-list-ul"></i>Жилийн төлөвлөгөө</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="pTab1t1" class="tab-pane">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-list-ul"></i></span>
                                    <h2>Стратегийн зорилт</h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab1SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
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
                        <div id="pTab1t2" class="tab-pane">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-list-ul"></i></span>
                                    <h2>Үйл ажиллагааны зорилт</h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
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
                                    <div class="Colvis TableTools"  style="right:130px; top:8px; z-index:5;">
                                        <button id="pTab2Add" runat="server" class="btn btn btn-primary btn-xs" data-target="#pTab2Modal" data-toggle="modal" onclick="showAddEditTab2(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
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
                        <div id="pTab1t3" class="tab-pane active">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-list-ul"></i></span>
                                    <h2>Жилийн төлөвлөгөө</h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab3SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
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
                                            <select id="pTab3SelectStaff" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            Ажилтан:
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
                                    <div class="Colvis TableTools"  style="right:130px; top:8px; z-index:5;">
                                        <button id="pTab3Add" runat="server" class="btn btn btn-primary btn-xs" data-target="#pTab3Modal" data-toggle="modal" onclick="showAddEditTab3(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
                                    <div class="Colvis TableTools" style="width:133px; right:275px; top:0; z-index:5;">
                                        <a id="pTab3ModalPlanPrintModalA" class="btn btn-labeled btn-warning" href="pg/planyrTab3PlanPrintModal.aspx?yr=2015&isplaned=1&gazar=1&heltes=1&staff=1" data-target="#pTab3ModalPlanPrintModal" data-toggle="modal" style="margin: 8px 10px 0 0;"><span class="btn-label" style="padding: 0px 7px 3px 5px;"><i class="fa fa-file-text"></i></span>Төлөвлөгөө хэвлэх, татах</a>
                                    </div>
                                    <div class="Colvis TableTools" style="width:133px; right:385px; top:0; z-index:5;">
                                        <a id="pTab3ModalLoadPrintModalA" class="btn btn-labeled btn-warning" href="pg/planyrTab1LoadPrintModal.aspx?yr=2015&gazar=1&heltes=1" data-target="#pTab3ModalLoadPrintModal" data-toggle="modal" style="margin: 8px 10px 0 0;"><span class="btn-label" style="padding: 0px 7px 3px 5px;"><i class="fa fa-file-text"></i></span>Ачаалал</a>
                                    </div>
                                    <div class="Colvis TableTools" style="width:172px; right:525px; top:0; z-index:5;">
                                        <a id="pTab3ModalLoadImportModalA" class="btn btn-labeled btn-primary" href="pg/planyrTab3LoadImportModal.aspx?yr=2015&gazar=1&heltes=1" data-target="#pTab3ModalLoadImportModal" data-toggle="modal" style="margin: 8px 10px 0 0;"><span class="btn-label" style="padding: 0px 7px 3px 5px;"><i class="fa fa-download"></i></span>Өмнөх оноос татах</a>
                                    </div>
                                    <div class="Colvis TableTools" style="left:240px; top:0px; z-index:5; margin-top:2px;">
                                        <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa-pencil"></i></a> Мэдээлэл засварлах<br />
                                        <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa fa-trash-o"></i></a> Мэдээлэл устгах
                                    </div>
                                    <div class="Colvis TableTools" style="left:400px; top:0px; z-index:5; margin-top:2px;">
                                        <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa-info"></i></a> Дэлгэрэнгүй мэдээлэл харах
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
                                    <select id="pTab4SelectQuarter" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">1-р улирал</option><option value="2">2-р улирал</option><option value="3">3-р улирал</option><option value="4">4-р улирал</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab4SelectIsPlaned" name="pTab4SelectIsPlaned" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="">Нийт</option><option value="1">Төлөвлөгөөт</option><option value="0">Төлөвлөгөөт бус</option></select>
                                </div>
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options text-right" style="margin-right:0px !important; line-height: 14px;">
                                    Төлөвлөгөөт<br />эсэх:
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab4SelectStaff" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    Ажилтан:
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab4SelectHeltes" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    Хэлтэс:
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab4SelectGazar" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
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
                                    <select id="pTab5SelectQuarter" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">1-р улирал</option><option value="2">2-р улирал</option><option value="3">3-р улирал</option><option value="4">4-р улирал</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab5SelectIsPlaned" name="pTab5SelectIsPlaned" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="">Нийт</option><option value="1">Төлөвлөгөөт</option><option value="0">Төлөвлөгөөт бус</option></select>
                                </div>
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options text-right" style="margin-right:0px !important; line-height: 14px;">
                                    Төлөвлөгөөт<br />эсэх:
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab5SelectStaff" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    Ажилтан:
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab5SelectHeltes" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    Хэлтэс:
                                </div> 
                            </div>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab5SelectGazar" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
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
                            <div id="loaderTab5" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="divBindTab5Table" class="widget-body no-padding">
                                        
                            </div>
                        </div>
                    </div>
                </div>
                <div id="pTab6" runat="server" class="tab-pane">
                    <ul class="nav nav-tabs bordered">
                        <li id="pTab6t1Li" runat="server" onclick="pDatabindTabs(this)" class="active">
                            <a data-toggle="tab" href="#pTab6t1">ХШҮ-ний дэлгэрэнгүй тайлан</a>
                        </li>
                        <li id="pTab6t2Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab6t2">Удаашралтай үнэлэгдсэн ажлууд </a>
                        </li>
                        <li id="pTab6t3Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab6t3">Хэрэгжүүлээгүй ажлууд</a>
                        </li>
                        <li id="pTab6t4Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab6t4">Хэрэгжилт (газруудаар)</a>
                        </li>
                        <li id="pTab6t5Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab6t5">Батлагдсан яамны төлөвлөгөө</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="pTab6t1" class="tab-pane active">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab6t1SelectYear" runat="server" class="form-control" style="padding:1px">
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
                                            <select id="pTab6t1SelectQuarter" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">1-р улирал</option>
                                                <option value="2">2-р улирал</option>
                                                <option value="3">3-р улирал</option>
                                                <option value="4">4-р улирал</option>
                                            </select>
                                        </div>
                                    <div style="width:35px; float:left; margin-right:10px; padding-top:8px;">Газар: </div>
                                    <div style="width:80px; float:left; margin-right:10px;">
                                        <select id="pTab6t1SelectGazar" runat="server" class="form-control" style="padding:1px">
                                            <option selected="selected" value="all">Бүгд</option>
                                        </select>
                                    </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab6t1', 'Жилийн төлөвлөгөө хэрэгжилтийн дэлгэрэнгүй тайлан')">
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
                                        <label id="pTab6t1Gazar" runat="server" style="font-weight: bold;"></label> ҮЙЛ АЖИЛЛАГААНЫ ТАЙЛАН
                                        
                                    </div>
                                    <div style="text-align: right; font-size: 14px; padding-bottom: 3px; text-transform: uppercase; line-height: 5px;">
                                        <label id="pTab6t1Year" runat="server"></label> 
                                        ОНЫ 
                                        <label id="pTab6t1Quarter" runat="server"></label>-Р УЛИРЛЫН ТАЙЛАН
                                    </div>
                                    <div id="divBindTab6t1Table"></div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab6t2" class="tab-pane">
                            <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                <div style="width:70%; float:left;">
                                    <div style="width:60px; float:left; margin-right:10px;">
                                        <select id="pTab6t2SelectYear" runat="server" class="form-control" style="padding:1px">
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
                                        <select id="pTab6t2SelectQuarter" runat="server" class="form-control" style="padding:1px">
                                            <option value="1">1-р улирал</option>
                                            <option value="2">2-р улирал</option>
                                            <option value="3">3-р улирал</option>
                                            <option value="4">4-р улирал</option>
                                        </select>
                                    </div>
                                    <div style="width:35px; float:left; margin-right:10px; padding-top:8px;">Газар: </div>
                                    <div style="width:80px; float:left; margin-right:10px;">
                                        <select id="pTab6t2SelectGazar" runat="server" class="form-control" style="padding:1px">
                                            <option selected="selected" value="all">Бүгд</option>
                                        </select>
                                    </div>
                                </div>
                                <div style="text-align:right; width:30%; float:left;">
                                    <img id="pTab6t2ExportPdf" src="../img/pdf-icon.png" style="cursor: pointer;" title="PDF руу татах" onclick="exportPdf('#divpTab6t2')" />
                                    <img id="pTab6t2ExportWord" src="../img/word-icon.png" style="cursor: pointer;" title="Word руу татах" onclick="exportWord('#divpTab6t2','Жилийн төлөвлөгөө хэрэгжилт нь удаашралтай ажил /газар, улирал/')" />
                                    <img id="pTab6t2ExportExcel" src="../img/excel-icon.png" style="cursor: pointer;" title="Excel руу татах" onclick="exportExcel('#divpTab6t2')" />
                                    <button id="pTab6t2Print" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divpTab6t2')"><span class="fa fa-print"></span>Хэвлэх </button>
                                    <button id="pTab6t2Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span></button>
                                </div>
                            </div>
                            <div id="loaderTab6t2" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="divpTab6t2" class="reports">
                                <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                    <label id="pTab6t2Gazar" runat="server" style="font-weight: bold;"></label> 
                                    <label id="pTab6t2Year" runat="server" style="font-weight: bold;"></label> 
                                    оны 
                                    <label id="pTab6t2Quarter" runat="server" style="font-weight: bold;"></label> 
                                    УЛИРЛЫН ТӨЛӨВЛӨГӨӨНӨӨС ХЭРЭГЖИЛТ НЬ УДААШРАЛТАЙ ҮНЭЛЭГДСЭН АРГА ХЭМЖЭЭНҮҮД
                                </div>
                                <div id="divBindTab6t2Table">
                                </div>
                            </div>
                        </div>
                        <div id="pTab6t3" class="tab-pane">
                            <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                <div style="width:70%; float:left;">
                                    <div style="width:60px; float:left; margin-right:10px;">
                                        <select id="pTab6t3SelectYear" runat="server" class="form-control" style="padding:1px">
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
                                        <select id="pTab6t3SelectQuarter" runat="server" class="form-control" style="padding:1px">
                                            <option value="1">1-р улирал</option>
                                            <option value="2">2-р улирал</option>
                                            <option value="3">3-р улирал</option>
                                            <option value="4">4-р улирал</option>
                                        </select>
                                    </div>
                                <div style="width:35px; float:left; margin-right:10px; padding-top:8px;">Газар: </div>
                                <div style="width:80px; float:left; margin-right:10px;">
                                    <select id="pTab6t3SelectGazar" runat="server" class="form-control" style="padding:1px">
                                        <option selected="selected" value="all">Бүгд</option>
                                    </select>
                                </div>
                                </div>
                                <div style="text-align:right; width:30%; float:left;">
                                    <img id="pTab6t3ExportPdf" src="../img/pdf-icon.png" style="cursor: pointer;" title="PDF руу татах" onclick="exportPdf('#divpTab6t3')" />
                                    <img id="pTab6t3ExportWord" src="../img/word-icon.png" style="cursor: pointer;" title="Word руу татах" onclick="exportWord('#divpTab6t3','Жилийн төлөвлөгөө хэрэгжүүлээгүй ажлууд')" />
                                    <img id="pTab6t3ExportExcel" src="../img/excel-icon.png" style="cursor: pointer;" title="Excel руу татах" onclick="exportExcel('#divpTab6t3')" />
                                    <button id="pTab6t3Print" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divpTab6t3')"><span class="fa fa-print"></span>Хэвлэх </button>
                                    <button id="pTab6t3Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span></button>
                                </div>
                            </div>
                            <div id="loaderTab6t3" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="divpTab6t3" class="reports" style="margin:0 10px 10px 10px;">
                                <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                    <label id="pTab6t3Gazar" runat="server" style="font-weight: bold;"></label> 
                                    <label id="pTab6t34Year" runat="server" style="font-weight: bold;"></label> 
                                    ОНЫ 
                                    <label id="pTab6t3Quarter" runat="server" style="font-weight: bold;"></label> 
                                    УЛИРЛЫН ТӨЛӨВЛӨГӨӨНД ТУСГАГДСАН БОЛОВЧ ХЭРЭГЖЭЭГҮЙ АРГА ХЭМЖЭЭНҮҮД
                                </div>
                                <div id="divBindTab6t3Table"></div>
                            </div>
                        </div>
                        <div id="pTab6t4" class="tab-pane">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab7t1SelectYear" runat="server" class="form-control" style="padding:1px">
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
                                            <select id="pTab7t1SelectQuarter" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">1-р улирал</option>
                                                <option value="2">2-р улирал</option>
                                                <option value="3">3-р улирал</option>
                                                <option value="4">4-р улирал</option>
                                            </select>
                                        </div>
                                        <div style="width:42px; float:left; margin-right:10px; margin-top: 6px;">
                                            Төрөл:
                                        </div>
                                        <div style="width:135px; float:left; margin-right:10px;">
                                            <select id="pTab7t1SelectType" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">Төлөвлөгөөт</option>
                                                <option value="2">Төлөвлөгөөт бус</option>
                                                <option value="3">Дотоод</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                       <img id="pTab7t1ExportPdf" src="../img/pdf-icon.png" style="cursor: pointer;" title="PDF руу татах" onclick="exportPdf('#divpTab7t1')" />
                                        <img id="pTab7t1ExportWord" src="../img/word-icon.png" style="cursor: pointer;" title="Word руу татах" onclick="exportWord('#divpTab7t1','Жилийн төлөвлөгөөний хэрэгжилт /газар, улирал/')" />
                                        <img id="pTab7t1ExportExcel" src="../img/excel-icon.png" style="cursor: pointer;" title="Excel руу татах" onclick="exportExcel('#divpTab7t1')" />
                                        <button id="pTab7t1Print" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divpTab7t1')"><span class="fa fa-print"></span>Хэвлэх </button>
                                        <button id="pTab7t1Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span></button>
                                    </div>
                                </div>
                                <div id="loaderTab7t1" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divpTab7t1" class="reports" style="margin:0 10px 10px 10px;">
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                        ЯАМНЫ ҮЙЛ АЖИЛЛАГААНЫ
                                        <label id="pTab7t1Year" runat="server" style="font-weight: bold;"></label> 
                                        ОНЫ 
                                        <label id="pTab7t1Quarter" runat="server" style="font-weight: bold;"></label> 
                                        УЛИРЛЫН ТӨЛӨВЛӨГӨӨНИЙ ХЭРЭГЖИЛТ
                                    </div>
                                    <div id="divBindTab7t1Table"></div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab6t5" class="tab-pane">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab6t5SelectYear" runat="server" class="form-control" style="padding:1px">
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
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab6t5', 'Яамны үйл ажиллагааны төлөвлөгөө')">
                                                <i class="fa fa-file-word-o"></i>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab6t5')">
                                                <i class="fa fa-print"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="loaderTab6t5" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divpTab6t5" class="reports" style="margin:0 10px 10px 10px;">
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                        ЯАМНЫ ҮЙЛ АЖИЛЛАГААНЫ
                                        <label id="pTab6t5Year" runat="server" style="font-weight: bold;"></label> 
                                        ОНЫ ТӨЛӨВЛӨГӨӨ
                                    </div>
                                    <div id="divBindTab6t5Table"></div>
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
                    <h4 class="modal-title" >Стратегийн зорилт&nbsp;<span id="pTab1ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pTab1ModalID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    Он: <label id="pTab1ModalLabelYear"></label>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Газар</label>
									<select id="pTab1ModalSelectBranch" name="pTab1ModalSelectBranch" runat="server" class="form-control" style="padding: 5px;">
								        <option value="">- Газар сонго -</option>
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
									<input id="pTab1ModalInputNo" name="pTab1ModalInputNo" class="form-control" type="text" placeholder="Дугаар"/>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Стратегийн зорилт</label>
									<textarea id="pTab1ModalInputName" name="pTab1ModalInputName" class="form-control" required="" placeholder="Стратегийн зорилт" rows="4"></textarea>
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
                    <h4 class="modal-title" >Үйл ажиллагааны зорилт&nbsp;<span id="pTab2ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pTab2ModalID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    Он: <label id="pTab2ModalLabelYear"></label>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Стратегийн зорилт</label>
									<select id="pTab2ModalSelectStrat" name="pTab2ModalSelectStrat" runat="server" class="form-control" style="padding: 5px;">
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
                                    <label class="control-label">*Хэлтэс</label>
                                    <div id="pTab2ModalDivSelect2Heltes">

                                    </div>
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
                                    <div class="checkbox">
										<label>
											<input id="pTab2ModalInputIsplaned" name="pTab2ModalInputIsplaned" type="checkbox" class="checkbox style-2">
											<span>Төлөвлөгөөнд тусгагдаагүй бусад ажил</span>
										</label>
									</div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="checkbox">
										<label>
											<input id="pTab2ModalInputIslocal" name="pTab2ModalInputIslocal" type="checkbox" class="checkbox style-2">
											<span>Дотоод ажил үйлчилгээ</span>
										</label>
									</div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Үйл ажиллагааны зорилт</label>
									<textarea id="pTab2ModalInputName" name="pTab2ModalInputName" class="form-control" required="" placeholder="Үйл ажиллагааны зорилт" rows="4"></textarea>
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
                    <h4 class="modal-title" >Арга хэмжээ&nbsp;<span id="pTab3ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pTab3ModalID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    Он: <label id="pTab3ModalLabelYear"></label>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Стратегийн зорилт</label>
									<select id="pTab3ModalSelectStrat" name="pTab3ModalSelectStrat" runat="server" class="form-control" style="padding: 5px;">
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
									<select id="pTab3ModalSelectAction" name="pTab3ModalSelectAction" runat="server" class="form-control" style="padding: 5px;">
								        <option value="">- Сонго -</option>
							        </select>
                                    <input id="pTab3ModalSelectActionLoader" class="form-control ui-autocomplete-loading hide" disabled="disabled" placeholder="" type="text">
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-3">
                                    <label class="control-label">*Дугаар</label>
									<input id="pTab3ModalInputNo" name="pTab3ModalInputNo" class="form-control" type="text" placeholder="Дугаар"/>
                                </div>
                                <div class="col-md-9">
                                    <label class="control-label">*Арга хэмжээ</label>
									<textarea id="pTab3ModalInputName" name="pTab3ModalInputName" class="form-control" required="" placeholder="Үйл ажиллагааны зорилт" rows="3"></textarea>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Шалгуур үзүүлэлт</label>
									<textarea id="pTab3ModalInputCriteria" name="pTab3ModalInputCriteria" class="form-control" required="" placeholder="Шалгуур үзүүлэлт" rows="2"></textarea>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-3">
                                    <label class="control-label">*Тоо</label>
									<input id="pTab3ModalInputCnt" name="pTab3ModalInputCnt" class="form-control" type="text" placeholder="Тоо"/>
                                </div>
                                <div class="col-md-9">
                                    <label class="control-label">*Чанар</label>
									<textarea id="pTab3ModalInputQuality" name="pTab3ModalInputQuality" class="form-control" required="" placeholder="Чанар" rows="2"></textarea>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Төлөвлөгөөт хугацаа /сараар/</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
									<label class="checkbox-inline"><input id="pTab3ModalMonth1" name="pTab3ModalMonth" onclick="pTab3ModalInputMnthChckbx(this)" type="checkbox" class="checkbox style-2" value="1"><span>1</span></label>
									<label class="checkbox-inline"><input id="pTab3ModalMonth2" name="pTab3ModalMonth" onclick="pTab3ModalInputMnthChckbx(this)" type="checkbox" class="checkbox style-2" value="2"><span>2</span></label>
									<label class="checkbox-inline"><input id="pTab3ModalMonth3" name="pTab3ModalMonth" onclick="pTab3ModalInputMnthChckbx(this)" type="checkbox" class="checkbox style-2" value="3"><span>3</span></label>
									<label class="checkbox-inline"><input id="pTab3ModalMonth4" name="pTab3ModalMonth" onclick="pTab3ModalInputMnthChckbx(this)" type="checkbox" class="checkbox style-2" value="4"><span>4</span></label>
									<label class="checkbox-inline"><input id="pTab3ModalMonth5" name="pTab3ModalMonth" onclick="pTab3ModalInputMnthChckbx(this)" type="checkbox" class="checkbox style-2" value="5"><span>5</span></label>
									<label class="checkbox-inline"><input id="pTab3ModalMonth6" name="pTab3ModalMonth" onclick="pTab3ModalInputMnthChckbx(this)" type="checkbox" class="checkbox style-2" value="6"><span>6</span></label>
									<label class="checkbox-inline"><input id="pTab3ModalMonth7" name="pTab3ModalMonth" onclick="pTab3ModalInputMnthChckbx(this)" type="checkbox" class="checkbox style-2" value="7"><span>7</span></label>
									<label class="checkbox-inline"><input id="pTab3ModalMonth8" name="pTab3ModalMonth" onclick="pTab3ModalInputMnthChckbx(this)" type="checkbox" class="checkbox style-2" value="8"><span>8</span></label>
									<label class="checkbox-inline"><input id="pTab3ModalMonth9" name="pTab3ModalMonth" onclick="pTab3ModalInputMnthChckbx(this)" type="checkbox" class="checkbox style-2" value="9"><span>9</span></label>
									<label class="checkbox-inline"><input id="pTab3ModalMonth10" name="pTab3ModalMonth" onclick="pTab3ModalInputMnthChckbx(this)" type="checkbox" class="checkbox style-2" value="10"><span>10</span></label>
									<label class="checkbox-inline"><input id="pTab3ModalMonth11" name="pTab3ModalMonth" onclick="pTab3ModalInputMnthChckbx(this)" type="checkbox" class="checkbox style-2" value="11"><span>11</span></label>
									<label class="checkbox-inline"><input id="pTab3ModalMonth12" name="pTab3ModalMonth" onclick="pTab3ModalInputMnthChckbx(this)" type="checkbox" class="checkbox style-2" value="12"><span>12</span></label>
									<label class="checkbox-inline"><input id="pTab3ModalMonthNone" name="pTab3ModalMonth" onclick="pTab3ModalInputMnthChckbx(this)" type="checkbox" class="checkbox style-2" value="none"><span>Жилдээ</span></label>
									<label class="checkbox-inline"><input id="pTab3ModalMonthAll" name="pTab3ModalMonth" onclick="pTab3ModalInputMnthChckbx(this)" type="checkbox" class="checkbox style-2" value="all"><span>Сар бүр</span></label>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Хариуцах ажилтан</label>
                                    <div id="pTab3ModalDivSelect2Staff">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-6">
                                    <label class="control-label">Зарцуулах боломжит өдөр</label>
									<input id="pTab3ModalDoday" name="pTab3ModalDoday" class="form-control" type="text" placeholder="Зарцуулах боломжит өдөр"/>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <button class="btn btn btn-primary btn-xs pull-right" data-target="#pTab3ModalBodlogoModal" data-toggle="modal" onclick="showAddEditTab3ModalBodlogo(this,'нэмэх')" type="button"><i class="fa fa-plus"></i> Бодлогын баримт бичиг холбох</button>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <div class="form-group">
                            <div class="row">
                                <div id="pTab3ModalBodlogoDiv" class="col-md-12" style="overflow-y: scroll; max-height:150px;">
                                    <table id="pTab3ModalBodlogoTable" class="table table-striped table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th class="text-center">Бодлогын төрөл</th>
                                                <th class="text-center">Арга хэмжээ</th>
                                                <th>&nbsp;</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>



                    <%--<fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">Холбох ҮХЦБ&nbsp;</label>(<label id="pTab3ModalWorkType1Cnt" title="Төлөвлөгдсөн арга хэмжээний тоо" style="cursor:pointer;">0</label>)
                                    <div id="pTab3ModalDivSelect2NDS">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">Холбох ЗГҮАХ&nbsp;</label>(<label id="pTab3ModalWorkType2Cnt" title="Төлөвлөгдсөн арга хэмжээний тоо" style="cursor:pointer;">0</label>)
                                    <div id="pTab3ModalDivSelect2GAP">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">Холбох ҮЧ&nbsp;</label>(<label id="pTab3ModalWorkType3Cnt" title="Төлөвлөгдсөн арга хэмжээний тоо" style="cursor:pointer;">0</label>)
                                    <div id="pTab3ModalDivSelect2EG">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>--%>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                    <button class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
                </div>
            </form>
        </div>
    </div>
</div>
<div id="pTab3ModalBodlogoModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="pTab3ModalBodlogoModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Бодлогын баримт бичиг холбох&nbsp;<span id="pTab3ModalBodlogoModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pTab3ModalBodlogoModalID" class="hide"></div>
                    <fieldset>
					    <div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Төрөл</label>
								    <select id="pTab3ModalBodlogoModalSelectType" name="pTab3ModalBodlogoModalSelectType" runat="server" class="form-control" style="padding: 5px;">
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
                                    <label class="control-label">*Бодлого</label>
								    <select id="pTab3ModalBodlogoModalSelectBodlogo" name="pTab3ModalBodlogoModalSelectBodlogo" runat="server" class="form-control" style="padding: 5px;">
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
                                    <label class="control-label">*Зорилт</label>
								    <select id="pTab3ModalBodlogoModalSelectZorilt" name="pTab3ModalBodlogoModalSelectZorilt" runat="server" class="form-control" style="padding: 5px;">
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
                                    <label class="control-label">*Төлөвлөгөө</label>
								    <select id="pTab3ModalBodlogoModalSelectTuluvluguu" name="pTab3ModalBodlogoModalSelectTuluvluguu" runat="server" class="form-control" style="padding: 5px;">
								        <option value="">- Сонго -</option>
							        </select>
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
<div id="pTab3ModalPlanPrintModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">  
	<div class="modal-dialog modal-lg" style="width:90%;">
        <div style="width:56%; display:block; height: 35px; margin:0 auto;">
            <div class="btn-group pull-right">
                <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#pTab3ModalPlanPrintModalContent', 'Жилийн төлөвлөгөө')">
                    <i class="fa fa-file-word-o"></i>
                </a>
                <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#pTab3ModalPlanPrintModalContent')">
                    <i class="fa fa-print"></i>
                </a>
            </div>
        </div>
		<div id="pTab3ModalPlanPrintModalContent" class="modal-content reports" style="width:56%; margin:0 auto!important;">
			
		</div>  
	</div>  
</div>
<div id="pTab3ModalInfo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">  
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			
		</div>  
	</div>  
</div>
<div id="pTab3ModalLoadPrintModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">  
	<div class="modal-dialog modal-lg" style="width:90%;">
        <div style="width:56%; display:block; height: 35px; margin:0 auto;">
            <div class="btn-group pull-right">
                <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#pTab3ModalLoadPrintModalContent', 'Жилийн төлөвлөгөөни ажлын ачаалал')">
                    <i class="fa fa-file-word-o"></i>
                </a>
                <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#pTab3ModalLoadPrintModalContent')">
                    <i class="fa fa-print"></i>
                </a>
            </div>
        </div>
		<div id="pTab3ModalLoadPrintModalContent" class="modal-content reports" style="width:56%; margin:0 auto!important;">
			
		</div>  
	</div>  
</div>
<div id="pTab4Modal" class="modal fade in modalSecond" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            
        </div>
    </div>
</div>
<div id="pTab3ModalLoadImportModal" class="modal fade" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg" style="width:85%;">
        <div class="modal-content">
            
        </div>
    </div>
</div>

<script type="text/javascript">
    var globalAjaxVar = null;
    var pagefunction = function () {
        var valLiId = $('#pTab1Li').closest('ul').find('.active').attr('id');
        if (valLiId == 'pTab1Li') {
            dataBindTab3DataTableFirst();
        }
        else if (valLiId == 'pTab4Li') {
            dataBindTab4DataTableFirst();
        }
        else if (valLiId == 'pTab5Li') {
            dataBindTab5DataTableFirst();
        }
        else if (valLiId == 'pTab6Li') {
            dataBindTab6t1DataTableFirst();
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
                dataBindTab1DataTable();
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
            if ($.trim($('#divBindTab5Table').html()) == "") {
                dataBindTab5DataTableFirst();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab6Li') {
            if ($.trim($('#divBindTab6t1Table').html()) == "") {
                dataBindTab6t1DataTableFirst();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab6t1Li') {
            if ($.trim($('#divBindTab6t1Table').html()) == "") {
                dataBindTab6t1DataTableFirst();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab6t2Li') {
            if ($.trim($('#divBindTab6t2Table').html()) == "") {
                dataBindTab6t2DataTableFirst();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab6t3Li') {
            if ($.trim($('#divBindTab6t3Table').html()) == "") {
                dataBindTab6t3DataTableFirst();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab6t4Li') {
            if ($.trim($('#divBindTab7t1Table').html()) == "") {
                dataBindTab7t1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab6t5Li') {
            if ($.trim($('#divBindTab6t5Table').html()) == "") {
                dataBindTab6t5DataTable();
            }
        }
    }
    //tab1
    function dataBindTab1DataTable() {
        var valData = '';
        var valIsEdit = '0';
        showLoader('loaderTab1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PlanyrTab1Datatable",
            data: '{"yr":"' + $("#pTab1SelectYear option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (funcCheckRoles('1,8')) {
                    valIsEdit = '1';
                }
                valData += "<table id=\"pTab1Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                valData += "<thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">№</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Нэр</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хэрэгжүүлэх газар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Засварлах</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td>" + value.NO + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td data-id=\"" + value.BR_ID + "\">" + value.DOMAIN_ORG + "</td>";
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
                valData += "<script>";
                valData += "var responsiveHelper_pTab1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab1Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab1Datatable) {responsiveHelper_pTab1Datatable = new ResponsiveDatatablesHelper($('#pTab1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,null,{ \"sWidth\": \"45px\" }]});";
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
        dataBindTab1DataTable();
    });
    function showAddEditTab1(el, isinsupt) {
        var valData = ''
        $('#pTab1ModalHeaderLabel').text(isinsupt);
        $('#pTab1ModalLabelYear').text($('#pTab1SelectYear option:selected').val());
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
                $('#pTab1ModalSelectBranch').html('<option value="">- Газар сонго -</option>' + valData);
                if (isinsupt == 'нэмэх') {
                    $('#pTab1ModalID').html('');
                    $('#pTab1ModalSelectBranch').val('');
                    $('#pTab1ModalInputNo').val('');
                    $('#pTab1ModalInputName').val('');
                }
                else {
                    $('#pTab1ModalID').text($(el).closest('tr').attr('data-id'));
                    $('#pTab1ModalSelectBranch').val($(el).closest('tr').find('td:eq(2)').attr('data-id'));
                    $('#pTab1ModalInputNo').val($(el).closest('tr').find('td:eq(0)').html());
                    $('#pTab1ModalInputName').val($(el).closest('tr').find('td:eq(1)').html());
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
    function showDeleteTab1(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_FUNC_ACTION WHERE FUNC_STRAT_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') {
                    alert('Сонгосон стратегийн зорилтод хамааралтай үйл ажиллагааны зорилт орсон тул устгах боломжгүй байна!');
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
                                data: '{"qry":"DELETE FROM TBL_FUNC_STRAT WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab1DataTable();
                                    smallBox('Сонгосон cтратегийн зорилт', 'Амжилттай устлаа...', '#659265', 3000);
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
            pTab1ModalSelectBranch: {
                group: '.form-group',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab1ModalInputNo: {
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
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            if ($('#pTab1ModalHeaderLabel').text() == 'нэмэх') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"INSERT INTO TBL_FUNC_STRAT (ID, NO, NAME, BR_ID, MODIFY_STAFFID, MODIFY_DATE, YR) VALUES (TBLLASTID(\'TBL_FUNC_STRAT\'), ' + $.trim($('#pTab1ModalInputNo').val()) + ', \'' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputName').val())) + '\', \'' + $('#pTab1ModalSelectBranch option:selected').val() + '\',' + $('#indexUserId').text() + ', to_char(sysdate,\'yyyy-MM-dd\'), ' + $('#pTab1SelectYear option:selected').val() + ')"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab1DataTable();
                        $('#pTab1Modal').modal('hide');
                        smallBox('Стратегийн зорилт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"UPDATE TBL_FUNC_STRAT SET NO=' + $.trim($('#pTab1ModalInputNo').val()) + ', NAME=\'' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputName').val())) + '\', BR_ID=\'' + $('#pTab1ModalSelectBranch option:selected').val() + '\', MODIFY_STAFFID=' + $('#indexUserId').text() + ', MODIFY_DATE=to_char(sysdate,\'yyyy-MM-dd\'), YR=' + $('#pTab1SelectYear option:selected').val() + ' WHERE ID=' + $("#pTab1ModalID").text() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab1DataTable();
                        $('#pTab1Modal').modal('hide');
                        smallBox('Стратегийн зорилт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                        $('#divBindTab2Table').html('');
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
        var valData = ''
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
                $('#pTab2SelectGazar').html('<option value="">Бүгд</option>' + valData);
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
    function dataBindTab2DataTable() {
        var valData = '';
        var valIsEdit = '0';
        showLoader('loaderTab2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PlanyrTab2Datatable",
            data: '{"yr":"' + $("#pTab2SelectYear option:selected").val() + '", "gazar":"' + $("#pTab2SelectGazar option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (funcCheckRoles('1,8')) {
                    valIsEdit = '1';
                }
                valData += "<table id=\"pTab2Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\">";
                valData += "<thead>";
                valData += "<tr role=\"row\">";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Стратегийн зорилт</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">№</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Үйл ажиллагааны зорилт</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Газар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хэлтэс</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Засварлах</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.FUNC_ACTION_ID + "\" data-stratid=\"" + value.FUNC_STRAT_ID + "\" data-isplaned=\"" + value.IS_PLANED + "\" data-islocal=\"" + value.IS_LOCAL + "\">";
                    valData += "<td>" + value.FUNC_STRAT_NO + ". " + replaceDatabaseToDisplay(value.FUNC_STRAT_NAME) + "</td>";
                    valData += "<td>" + value.FUNC_ACTION_NO + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.FUNC_ACTION_NAME) + "</td>";
                    valData += "<td data-id=\"" + value.GAZAR_ID + "\">" + value.GAZAR_NAME + "</td>";
                    valData += "<td data-id=\"" + value.HELTES_ID + "\">" + value.HELTES_NAME + "</td>";
                    valData += "<td class=\"text-center\">";
                    if (valIsEdit == '1') {
                        valData += "<div class=\"btn-group\">";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab2(this,'засах');\" data-target=\"#pTab2Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab2(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                        valData += "</div>";
                    }
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_pTab2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab2Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab2Datatable) {responsiveHelper_pTab2Datatable = new ResponsiveDatatablesHelper($('#pTab2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab2Datatable.respond();}, \"aoColumns\": [null,{ \"sWidth\": \"20px\" },null,null,null,{ \"sWidth\": \"45px\" }]}).rowGrouping({iGroupingColumnIndex: 0,bExpandableGrouping: true});";
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
        dataBindTab2DataTableFirst();
    });
    $("#pTab2SelectGazar").change(function () {
        dataBindTab2DataTable();
    });
    function showAddEditTab2(el, isinsupt) {
        var valData = ''
        $('#pTab2ModalHeaderLabel').text(isinsupt);
        $('#pTab2ModalLabelYear').text($('#pTab2SelectYear option:selected').val());
        $('#pTab2ModalID').html('');
        $('#pTab2ModalSelectStrat').val('');
        dataBindTab2ModalHeltesListForSelect2('', 'none', $('#pTab2SelectYear option:selected').val());
        $('#pTab2ModalInputNo').val('');
        $('#pTab2ModalInputIsplaned').prop('checked', false);
        $('#pTab2ModalInputIslocal').prop('checked', false);
        $('#pTab2ModalInputName').prop('disabled', false);
        $('#pTab2ModalInputName').val('');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PlanyrTab2StratListDDL",
            data: '{"yr":"' + $('#pTab2SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '">' + value.NO + '. ' + value.NAME + '</option>';
                });
                $('#pTab2ModalSelectStrat').html('<option value="">- Сонго -</option>' + valData);
                if (isinsupt == 'засах') {
                    $('#pTab2ModalID').text($(el).closest('tr').attr('data-id'));
                    $('#pTab2ModalSelectStrat').val($(el).closest('tr').find('td:eq(2)').attr('data-id'));
                    dataBindTab2ModalHeltesListForSelect2($(el).closest('tr').find('td:eq(2)').attr('data-id'), $(el).closest('tr').find('td:eq(3)').attr('data-id'), $('#pTab2SelectYear option:selected').val());
                    $('#pTab2ModalInputNo').val($(el).closest('tr').find('td:eq(0)').html());
                    if ($(el).closest('tr').attr('data-isplaned') == "0") {
                        $('#pTab2ModalInputIsplaned').prop('checked', true);
                        $('#pTab2ModalInputName').prop('disabled', true);
                    }
                    if ($(el).closest('tr').attr('data-islocal') == "1") {
                        $('#pTab2ModalInputIslocal').prop('checked', true);
                        $('#pTab2ModalInputName').prop('disabled', true);
                    }
                    $('#pTab2ModalInputName').val($(el).closest('tr').find('td:eq(1)').html());
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
    function showDeleteTab2(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_PLANYR WHERE FUNC_ACTION_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') {
                    alert('Сонгосон үйл ажиллагааны зорилтод хамааралтай жилийн төлөвлөгөө тул устгах боломжгүй байна!');
                }
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон үйл ажиллагааны зорилтыг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/PlanyrTab2SP_FUNC_ACTION_DELETE",
                                data: '{"P_ID":"' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab2DataTable();
                                    smallBox('Сонгосон үйл ажиллагааны зорилт', 'Амжилттай устлаа...', '#659265', 3000);
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
    function dataBindTab2ModalHeltesListForSelect2(gazar, selectedList, yr) {
        var valData = '', valOptGroup = '';
        $("#pTab2ModalDivSelect2Heltes").html('<input class="form-control ui-autocomplete-loading" placeholder="" type="text" disabled="disabled">');
        if (gazar == '') {
            $("#pTab2ModalDivSelect2Heltes").html("<select id=\"pTab2ModalSelect2Heltes\" name=\"pTab2ModalSelect2Heltes\" multiple=\"multiple\" style=\"width:100%\" data-placeholder=\"Хэлтэс сонго\"></select><script>$(\"#pTab2ModalSelect2Heltes\").select2();<\/script>");
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PlanyrTab2ModalHeltesListForSelect2",
                data: '{"gazar":"' + gazar + '", "selectedList":"' + selectedList + '", "yr":"' + yr + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    valOptGroup = '';
                    var isSelected = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        if (selectedList != "none")
                        {
                            for (var i = 0; i < selectedList.split(',').length; i++)
                            {
                                if (selectedList.split(',')[i] == value.HELTESID) { isSelected = "selected=\"selected\""; break; }
                                else isSelected = "";
                            }
                        }
                        if (valOptGroup != value.GAZARID)
                        {
                            if (valOptGroup != "") valData += "</optgroup>";
                            valData += "<optgroup label=\"" + value.GAZARNAME + "\">";
                        }
                        valData += "<option " + isSelected + " value=\"" + value.HELTESID + "\">" + value.HELTESNAME + "</option>";
                        valOptGroup = value.GAZARID;
                    });
                    $("#pTab2ModalDivSelect2Heltes").html("<select id=\"pTab2ModalSelect2Heltes\" name=\"pTab2ModalSelect2Heltes\" multiple=\"multiple\" style=\"width:100%\" data-placeholder=\"Хэлтэс сонго\">" + valData + "</select><script>$(\"#pTab2ModalSelect2Heltes\").select2();<\/script>");
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
    $("#pTab2ModalSelectStrat").change(function () {
        dataBindTab2ModalHeltesListForSelect2($("#pTab2ModalSelectStrat option:selected").val(), 'none', $('#pTab2SelectYear option:selected').val());
    });
    $('#pTab2ModalForm').bootstrapValidator({
        fields: {
            pTab2ModalSelectStrat: {
                group: '.form-group',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab2ModalSelect2Heltes: {
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
                        max: 500,
                        message: 'Уртдаа 500 тэмдэгт авна'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            if ($('#pTab2ModalSelect2Heltes').val() == null) {
                alert('Хэлтэс сонгоно уу');
                $('#pTab2ModalForm').find('.modal-footer').find('.btn-success').prop('disabled',false);
            }
            else {
                var isplaned = 1;
                var islocal = 0;
                if ($('#pTab2ModalInputIsplaned').is(':checked')) isplaned = 0;
                if ($('#pTab2ModalInputIslocal').is(':checked')) islocal = 1;
                if ($('#pTab2ModalHeaderLabel').text() == 'нэмэх') {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/PlanyrTab2SP_FUNC_ACTION_INSERT",
                        data: '{"P_FUNC_STRAT_ID":"' + $('#pTab2ModalSelectStrat option:selected').val() + '", "P_NO":"' + $.trim($('#pTab2ModalInputNo').val()) + '", "P_NAME":"' + replaceDisplayToDatabase($.trim($('#pTab2ModalInputName').val())) + '", "P_BRANCHLIST":"' + $('#pTab2ModalSelect2Heltes').val() + '", "P_STAFFID":"' + $('#indexUserId').text() + '", "P_IS_PLANED":"' + isplaned + '", "P_YR":"' + $('#pTab2SelectYear option:selected').val() + '", "P_IS_LOCAL":"' + islocal + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            dataBindTab2DataTable();
                            $('#pTab2Modal').modal('hide');
                            smallBox('Үйл ажиллагааны зорилт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                        url: "../ws/ServiceMain.svc/PlanyrTab2SP_FUNC_ACTION_UPDATE",
                        data: '{"P_ID":"' + $("#pTab2ModalID").text() + '", "P_FUNC_STRAT_ID":"' + $('#pTab2ModalSelectStrat option:selected').val() + '", "P_NO":"' + $.trim($('#pTab2ModalInputNo').val()) + '", "P_NAME":"' + replaceDisplayToDatabase($.trim($('#pTab2ModalInputName').val())) + '", "P_BRANCHLIST":"' + $('#pTab2ModalSelect2Heltes').val() + '", "P_STAFFID":"' + $('#indexUserId').text() + '", "P_IS_PLANED":"' + isplaned + '", "P_YR":"' + $('#pTab2SelectYear option:selected').val() + '", "P_IS_LOCAL":"' + islocal + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            dataBindTab2DataTable();
                            $('#pTab2Modal').modal('hide');
                            smallBox('Үйл ажиллагааны зорилт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                            $('#divBindTab3Table').html('');
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
    //tab3
    function dataBindTab3DataTableFirst() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '', valOptGroup = '';
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
                $('#pTab3SelectGazar').html('<option value="">Бүгд</option>' + valData);
                $('#pTab3SelectGazar').val(userGazarId);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                    data: '{"yr":"' + $("#pTab3SelectYear option:selected").val() + '", "gazar":"' + $("#pTab3SelectGazar option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        });
                        $("#pTab3SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                        if (!funcCheckRoles('1,8')) {
                            $('#pTab3SelectGazar').prop('disabled', true);
                            if (!funcCheckRoles('3,4')) {
                                $('#pTab3SelectHeltes').val(userHeltesId);
                                $('#pTab3SelectHeltes').prop('disabled', true);
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/GetStaffListForDDL",
                                    data: '{"yr":"' + $("#pTab3SelectYear option:selected").val() + '", "gazar":"' + $("#pTab3SelectGazar option:selected").val() + '", "heltes":"' + $("#pTab3SelectHeltes option:selected").val() + '"}',
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
                                        if (!funcCheckRoles('3,4,5,6')) {
                                            $('#pTab3Add').css('display', 'none');
                                        }
                                        else {
                                            $('#pTab3Add').css('display', 'block');
                                        }
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
        var valData = '';
        var valIsEdit = '1';
        showLoader('loaderTab3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PlanyrTab3Datatable",
            data: '{"yr":"' + $("#pTab3SelectYear option:selected").val() + '", "gazar":"' + $("#pTab3SelectGazar option:selected").val() + '", "heltes":"' + $("#pTab3SelectHeltes option:selected").val() + '", "staff":"' + $("#pTab3SelectStaff option:selected").val() + '", "isplaned":"' + $("#pTab3SelectIsPlaned option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = ''
                var submit2 = " disabled";
                if (parseInt($.trim($('#indexCurrentYear').html())) > parseInt($("#pTab3SelectYear option:selected").val())) {
                    valIsEdit = '0';
                }
                if (!funcCheckRoles('1,8')) {
                    if (!funcCheckRoles('3,4,5,6,8')) {
                        valIsEdit = '0';
                    }
                    if (!funcCheckRoles('2,8')) {
                        submit2 = "";
                    }
                }
                else {
                    submit2 = "";
                }
                valData += "<table id=\"pTab3Datatable\" class=\"table table-striped table-bordered table-hover smart-form\" style=\"width:100%\">";
                valData += "<thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Арга хэмжээ</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хүрэх үр дүн, хугацаа, тоо хэмжээ</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Газар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хэлтэс</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Ажилтан</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Батлах";
                valData += "</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">СЯ</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Засварлах</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.PLANYR_ID + "\" data-stratbrid=\"" + value.STRAT_BRID + "\" data-actionid=\"" + value.ACTION_ID + "\" data-stlistid=\"" + value.STLISTID + "\" data-doday=\"" + value.DODAY + "\" data-policyplanlistid=\"" + value.POLICYPLANLISTID + "\">";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td>" + value.STRAT_NO + "." + value.ACTION_NO + "." + value.PLANYR_NO + ". " + replaceDatabaseToDisplay(value.PLANYR_NAME) + "</td>";
                    valData += "<td>";
                    valData += "<label>" + replaceDatabaseToDisplay(value.CRITERIA) + "</label><br />";
                    valData += "<b>тоо: </b><label>" + value.CNT + "</label><br />";
                    valData += "<b>чанар: </b><label>" + replaceDatabaseToDisplay(value.QUALITY) + "</label><br />";
                    valData += "<b>Төлөвлөгөөт хугацаа /сараар/: </b><label>" + value.BUDGET + "</label><br />";
                    valData += "</td>";
                    valData += "<td>" + value.GAZARNAME + "</td>";
                    valData += "<td>" + value.HELTESNAME + "</td>";
                    valData += "<td>" + value.STLISTNAME + "</td>";
                    valData += "<td><div class=\"checkbox no-padding\"><label><input" + value.SUBMIT_D2 + submit2 + " type=\"checkbox\" class=\"checkbox style-2\" onclick=\"pTab3SubmitCheckbox(this)\"><span></span></label></div></td>";
                    valData += "<td><div class=\"checkbox no-padding\"><label><input" + value.IS_MOF + submit2 + " type=\"checkbox\" class=\"checkbox style-2\" onclick=\"pTab3IsMofCheckbox(this)\"><span></span></label></div></td>";
                    valData += "<td class=\"text-center\">";                    
                    valData += "<div class=\"btn-group\">";
                    if (valIsEdit == '1') {
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab3(this,'засах');\" data-target=\"#pTab3Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab3(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                    }
                    valData += "<a href=\"pg/planyrTab3ModalInfo.aspx?yr=" + $("#pTab3SelectYear option:selected").val() + "&id=" + value.PLANYR_ID + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTab3ModalInfo\" data-toggle=\"modal\"><i class=\"fa fa-info\"></i></a>";
                    valData += "</div>";
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_pTab3Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab3Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab3Datatable) {responsiveHelper_pTab3Datatable = new ResponsiveDatatablesHelper($('#pTab3Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab3Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab3Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },{ \"sWidth\": \"35%\" },{ \"sWidth\": \"35%\" },null,null,null,null, null,{ \"sWidth\": \"62px\" }]});";
                valData += "<\/script>";
                $("#divBindTab3Table").html(valData);
                hideLoader('loaderTab3');
                pTab3ModalPlanPrintModalAHrefBind();
                pTab3ModalLoadPrintModalAHrefBind();
                pTab3ModalLoadImportModalAHrefBind();
                pTab3IsAllCheck();
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
    $("#pTab3SelectIsPlaned").change(function () {
        dataBindTab3DataTable();
    });
    $("#pTab3SelectGazar").change(function () {
        var valData = '';
        if ($("#pTab3SelectGazar option:selected").val() == "") {
            $("#pTab3SelectHeltes").html("<option selected value=\"\">Бүгд</option>");
            $("#pTab3SelectHeltes").prop("disabled", true);
            $('#pTab3SelectStaff').html('<option value="">Бүгд</option>');
            $('#pTab3SelectStaff').prop('disabled', true);
            dataBindTab3DataTable();
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr":"' + $("#pTab3SelectYear option:selected").val() + '", "gazar":"' + $("#pTab3SelectGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    });
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
        pTab3ModalPlanPrintModalAHrefBind();
    });
    $("#pTab3SelectHeltes").change(function () {
        var valData = '', valOptGroup = '';
        if ($("#pTab3SelectHeltes option:selected").val() == "") {
            $('#pTab3SelectStaff').html('<option value="">Бүгд</option>');
            $('#pTab3SelectStaff').prop('disabled', true);
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetStaffListForDDL",
                data: '{"yr":"' + $("#pTab3SelectYear option:selected").val() + '", "gazar":"' + $("#pTab3SelectGazar option:selected").val() + '", "heltes":"' + $("#pTab3SelectHeltes option:selected").val() + '"}',
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
        pTab3ModalPlanPrintModalAHrefBind();
    });
    $("#pTab3SelectStaff").change(function () {
        dataBindTab3DataTable();
    });
    function showAddEditTab3(el, isinsupt) {
        var valData = '';
        $('#pTab3ModalHeaderLabel').text(isinsupt);
        $('#pTab3ModalLabelYear').text($('#pTab1SelectYear option:selected').val());
        if (isinsupt == 'нэмэх') {
            $('#pTab3ModalID').html('');
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PlanyrTab2StratListDDL",
                data: '{"yr":"' + $('#pTab3SelectYear option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '">' + value.NO + '. ' + value.NAME + '</option>';
                    });
                    $('#pTab3ModalSelectStrat').html('<option value="">- Сонго -</option>' + valData);
                    $('#pTab3ModalSelectStrat').val($('#indexUserGazarId').text());
                    $('#pTab3ModalSelectAction').addClass('hide');
                    $('#pTab3ModalSelectActionLoader').removeClass('hide');
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/PlanyrTab3ActionListDDL",
                        data: '{"yr":"' + $('#pTab3SelectYear option:selected').val() + '", "gazar":"' + $('#pTab3ModalSelectStrat option:selected').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            valData = '';
                            $($.parseJSON(data.d)).each(function (index, value) {
                                valData += '<option value="' + value.ID + '">' + value.NAME + '</option>';
                            });
                            $('#pTab3ModalSelectAction').html('<option value="">- Сонго -</option>' + valData);
                            $('#pTab3ModalSelectAction').removeClass('hide');
                            $('#pTab3ModalSelectActionLoader').addClass('hide');
                            dataBindTab3ModalStaffListForSelect2('', '');
                            if (funcCheckRoles('1,8')) {
                                $('#pTab3ModalSelectStrat').prop('disabled', false);
                            }
                            else {
                                $('#pTab3ModalSelectStrat').prop('disabled', true);
                            }
                        },
                        failure: function (response) {
                            alert('FAILURE: ' + response.d);
                        },
                        error: function (xhr, status, error) {
                            window.location = '../#pg/error500.aspx';
                        }
                    });
                    $('#pTab3ModalBodlogoDiv').html('<table id="pTab3ModalBodlogoTable" class="table table-striped table-bordered table-hover"><thead><tr><th class="text-center">Бодлогын төрөл</th><th class="text-center">Арга хэмжээ</th><th>&nbsp;</th></tr></thead><tbody></tbody></html>');
                    //dataBindTab3ModalNDSGAPEGListForSelect2($('#pTab3SelectYear option:selected').val(), '1', $('#pTab3ModalSelectStrat option:selected').val(), '');
                    //dataBindTab3ModalNDSGAPEGListForSelect2($('#pTab3SelectYear option:selected').val(), '2', $('#pTab3ModalSelectStrat option:selected').val(), '');
                    //dataBindTab3ModalNDSGAPEGListForSelect2($('#pTab3SelectYear option:selected').val(), '3', $('#pTab3ModalSelectStrat option:selected').val(), '');
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
            $('#pTab3ModalInputNo, #pTab3ModalInputName, #pTab3ModalInputCriteria, #pTab3ModalInputCnt, #pTab3ModalInputQuality, #pTab3ModalDoday').val('');
            $('input[name="pTab3ModalMonth"], input[name="pTab3ModalMonthAll"]').prop('checked', false);
        }
        else if (isinsupt == 'засах') {
            $('#pTab3ModalID').text($(el).closest('tr').attr('data-id'));
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PlanyrTab2StratListDDL",
                data: '{"yr":"' + $('#pTab3SelectYear option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '">' + value.NO + '. ' + value.NAME + '</option>';
                    });
                    $('#pTab3ModalSelectStrat').html('<option value="">- Сонго -</option>' + valData);
                    $('#pTab3ModalSelectStrat').val($(el).closest('tr').attr('data-stratbrid'));
                    $('#pTab3ModalSelectAction').addClass('hide');
                    $('#pTab3ModalSelectActionLoader').removeClass('hide');
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/PlanyrTab3ActionListDDL",
                        data: '{"yr":"' + $('#pTab3SelectYear option:selected').val() + '", "gazar":"' + $('#pTab3ModalSelectStrat option:selected').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            valData = '';
                            $($.parseJSON(data.d)).each(function (index, value) {
                                valData += '<option value="' + value.ID + '">' + value.NAME + '</option>';
                            });
                            $('#pTab3ModalSelectAction').html('<option value="">- Сонго -</option>' + valData);
                            $('#pTab3ModalSelectAction').removeClass('hide');
                            $('#pTab3ModalSelectActionLoader').addClass('hide');
                            $('#pTab3ModalSelectAction').val($(el).closest('tr').attr('data-actionid'));
                            dataBindTab3ModalStaffListForSelect2($(el).closest('tr').attr('data-actionid'), $(el).closest('tr').attr('data-stlistid'));
                        },
                        failure: function (response) {
                            alert('FAILURE: ' + response.d);
                        },
                        error: function (xhr, status, error) {
                            window.location = '../#pg/error500.aspx';
                        }
                    });
                    //dataBindTab3ModalNDSGAPEGListForSelect2($('#pTab3SelectYear option:selected').val(), '1', $('#pTab3ModalSelectStrat option:selected').val(), $(el).closest('tr').attr('data-ndslistid'));
                    //dataBindTab3ModalNDSGAPEGListForSelect2($('#pTab3SelectYear option:selected').val(), '2', $('#pTab3ModalSelectStrat option:selected').val(), $(el).closest('tr').attr('data-gaplistid'));
                    //dataBindTab3ModalNDSGAPEGListForSelect2($('#pTab3SelectYear option:selected').val(), '3', $('#pTab3ModalSelectStrat option:selected').val(), $(el).closest('tr').attr('data-eglistid'));
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
            $('#pTab3ModalInputNo').val($(el).closest('tr').find('td:eq(1)').html().split('.')[2]);
            $('#pTab3ModalInputName').val($.trim($(el).closest('tr').find('td:eq(1)').html().replace(($(el).closest('tr').find('td:eq(1)').html().split('.')[0] + '.' + $(el).closest('tr').find('td:eq(1)').html().split('.')[1] + '.' + $(el).closest('tr').find('td:eq(1)').html().split('.')[2] + '.'), '')));
            $('#pTab3ModalInputCriteria').val($(el).closest('tr').find('td:eq(2)').find('label:eq(0)').html());
            $('#pTab3ModalInputCnt').val($(el).closest('tr').find('td:eq(2)').find('label:eq(1)').html());
            $('#pTab3ModalInputQuality').val($(el).closest('tr').find('td:eq(2)').find('label:eq(2)').html());
            $('input[name="pTab3ModalMonth"], input[name="pTab3ModalMonthAll"]').prop('checked', false);
            if ($(el).closest('tr').find('td:eq(2)').find('label:eq(3)').html() == 'Жилдээ') {
                $('#pTab3ModalMonthNone').prop('checked', true);
            }
            else if ($(el).closest('tr').find('td:eq(2)').find('label:eq(3)').html() == 'Сар бүр') {
                $('#pTab3ModalMonthAll').prop('checked', true);
            }
            else {
                for (var i = 0; i <= $(el).closest('tr').find('td:eq(2)').find('label:eq(3)').html().split(',').length; i++) {
                    $('#pTab3ModalMonth' + $(el).closest('tr').find('td:eq(2)').find('label:eq(3)').html().split(',')[i]).prop('checked', true);
                }
            }
            $('#pTab3ModalDoday').val($(el).closest('tr').attr('data-doday'));
            if ($.trim($(el).closest('tr').attr('data-policyplanlistid')) != '') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/PlanyrTab3ActionListDDL",
                    data: '{"policyplanlistid":"' + $(el).closest('tr').attr('data-policyplanlistid') + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valData += "<table id=\"pTab3ModalBodlogoTable\" class=\"table table-striped table-bordered table-hover\">";
                        valData += "<thead>";
                        valData += "<tr>";
                        valData += "<th class=\"text-center\">Бодлогын төрөл</th>";
                        valData += "<th class=\"text-center\">Арга хэмжээ</th>";
                        valData += "<th style=\"width:65px;\">&nbsp;</th>";
                        valData += "</tr>";
                        valData += "</thead>";
                        valData += "<tbody>";
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<tr data-id=\"" + value.ID + "\" data-policytypeid=\"" + value.POLICYTYPE_ID + "\" data-policybodlogoid=\"" + value.POLICYBODLOGO_ID + "\" data-policyzoriltid=\"" + value.POLICYZORILT_ID + "\">";
                            valData += "<td>" + replaceDatabaseToDisplay(value.POLICYTYPE_NAME) + "</td>";
                            valData += "<td>" + replaceDatabaseToDisplay(value.POLICYPLAN) + "</td>";
                            valData += "<td>";
                            valData += "<div class=\"btn-group\">";
                            valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab3ModalBodlogo(this,'засах');\" data-target=\"#pTab3ModalBodlogoModal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                            valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab3ModalBodlogo(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                            valData += "</div>";
                            valData += "</td>";
                            valData += "</tr>";
                        });
                        valData += "</tbody>";
                        valData += "</table>";
                        $('#pTab3ModalBodlogoDiv').html(valData);
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
                $('#pTab3ModalBodlogoDiv').html('<table id="pTab3ModalBodlogoTable" class="table table-striped table-bordered table-hover"><thead><tr><th class="text-center">Бодлогын төрөл</th><th class="text-center">Арга хэмжээ</th><th>&nbsp;</th></tr></thead><tbody></tbody></html>');
            }            
        } 
    }
    function showDeleteTab3(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_PLANMNTH WHERE PLANYR_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
            //    if (data.d != '0') {
            //        alert('Сонгосон жилийн төлөвлөгөөнд хамааралтай сарын төлөвлөгөө орсон тул устгах боломжгүй байна!');
          //      }
            //    else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон жилийн төлөвлөгөөг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/PlanyrTab3SP_PLANT_DELETE",
                                data: '{"P_PLANYR_ID":"' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab3DataTable();
                                    smallBox('Сонгосон жилийн төлөвлөгөө', 'Амжилттай устлаа...', '#659265', 3000);
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
               // }
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function pTab3SubmitCheckbox(el) {
        var valIsSubmit = '0';
        if ($(el).prop('checked')) {
            valIsSubmit = '1';
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
            data: '{"qry":"UPDATE TBL_PLANYR SET SUBMIT_D2=' + valIsSubmit + ' WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function () {
                smallBox('Сонгосон жилийн төлөвлөгөө', 'Амжилттай батлагдлаа...', '#659265', 3000);
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function pTab3IsMofCheckbox(el) {
        var valIsSubmit = '0';
        if ($(el).prop('checked')) {
            valIsSubmit = '1';
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
            data: '{"qry":"UPDATE TBL_PLANYR SET IS_MOF=' + valIsSubmit + ' WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function () {
                smallBox('Сонгосон жилийн төлөвлөгөө', 'Амжилттай батлагдлаа...', '#659265', 3000);
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function pTab3SubmitAllCheckbox(el) {
        var valIsSubmit = '0';
        if ($(el).prop('checked')) {
            valIsSubmit = '1';
        }
        var gazar = '', heltes = '', staff = '', isplaned = '';
        if ($('#pTab3SelectGazar option:selected').val() != '') gazar = " AND c.BR_ID=" + $('#pTab3SelectGazar option:selected').val();
        if ($('#pTab3SelectHeltes option:selected').val() != '') heltes = " AND d.BR_ID=" + $('#pTab3SelectHeltes option:selected').val();
        //if ($('#pTab3SelectStaff option:selected').val() != '') staff = " AND d.USER_ID=" + $('#pTab3SelectStaff option:selected').val();
        if ($('#pTab3SelectIsPlaned option:selected').val() != '') isplaned = " AND b.IS_PLANED=" + $('#pTab3SelectIsPlaned option:selected').val();
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
            data: '{"qry":"MERGE INTO TBL_PLANYR USING ( SELECT a.ID as PLANYR_ID, NVL(RTRIM(xmlagg (xmlelement (e, d.BR_ID || \',\') ORDER BY d.BR_ID).extract(\'//text()\'), \',\'),\'none\') as HELTESID, c.BR_ID as GAZARID FROM TBL_PLANYR a INNER JOIN TBL_FUNC_ACTION b ON a.FUNC_ACTION_ID=b.ID INNER JOIN TBL_FUNC_STRAT c ON b.FUNC_STRAT_ID=c.ID INNER JOIN TBL_FUNC_ACTION_BR d ON b.ID=d.FUNC_ACTION_ID WHERE a.YR=' + $('#pTab1SelectYear option:selected').val() + gazar + heltes + staff + isplaned + ' GROUP BY a.ID, c.BR_ID ) a ON (a.PLANYR_ID = TBL_PLANYR.ID) WHEN MATCHED THEN UPDATE SET TBL_PLANYR.SUBMIT_D2 = ' + valIsSubmit + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function () {
                $('#pTab3Datatable').find('tbody').find('tr').each(function (index) {
                    if (valIsSubmit == '1') {
                        $('td:eq(6)', this).find(':checkbox').prop('checked', true);
                    }
                    else $('td:eq(6)', this).find(':checkbox').prop('checked', false);
                });
                smallBox('Жилийн төлөвлөгөө', 'Амжилттай батлагдлаа...', '#659265', 3000);
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function pTab3IsAllCheck() {
        var isallcheck = 0;
        $('#pTab3Datatable').find('tbody').find('tr').each(function (index) {
            if ($('td:eq(6)', this).find(':checkbox').prop('checked') == false) {
                isallcheck = 1;
            }
        });
        if (isallcheck == 1) $('#pTab3Datatable').find('thead').find('tr:eq(1)').find('th:eq(6)').find(':checkbox').prop('checked', false);
        else $('#pTab3Datatable').find('thead').find('tr:eq(1)').find('th:eq(6)').find(':checkbox').prop('checked', true);
    }
    $("#pTab3ModalSelectStrat").change(function () {
        var valData = '';
        if ($("#pTab3ModalSelectStrat option:selected").val() == "") {
            $("#pTab3ModalSelectAction").html("<option value=\"\">- Сонго -</option>");
            $("#pTab3ModalSelectAction").prop("disabled", true);
            dataBindTab3ModalStaffListForSelect2('','');
        }
        else {
            $('#pTab3ModalSelectAction').addClass('hide');
            $('#pTab3ModalSelectActionLoader').removeClass('hide');
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PlanyrTab3ActionListDDL",
                data: '{"yr":"' + $('#pTab3SelectYear option:selected').val() + '", "gazar":"' + $('#pTab3ModalSelectStrat option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.ID + '">' + value.NAME + '</option>';
                    });
                    $("#pTab3ModalSelectAction").html('<option value=\"\">- Сонго -</option>' + valData);
                    $("#pTab3ModalSelectAction").prop("disabled", false);
                    $('#pTab3ModalSelectAction').removeClass('hide');
                    $('#pTab3ModalSelectActionLoader').addClass('hide');
                    dataBindTab3ModalStaffListForSelect2('', '');
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
        }
        //dataBindTab3ModalNDSGAPEGListForSelect2($('#pTab3SelectYear option:selected').val(), '1', $('#pTab3ModalSelectStrat option:selected').val(), '');
        //dataBindTab3ModalNDSGAPEGListForSelect2($('#pTab3SelectYear option:selected').val(), '2', $('#pTab3ModalSelectStrat option:selected').val(), '');
        //dataBindTab3ModalNDSGAPEGListForSelect2($('#pTab3SelectYear option:selected').val(), '3', $('#pTab3ModalSelectStrat option:selected').val(), '');
    });
    $("#pTab3ModalSelectAction").change(function () {
        if ($("#pTab3ModalSelectAction option:selected").val() == "") {
            dataBindTab3ModalStaffListForSelect2('', '');
        }
        else {
            dataBindTab3ModalStaffListForSelect2($("#pTab3ModalSelectAction option:selected").val(), '');
        }
    });
    function dataBindTab3ModalStaffListForSelect2(id, selectedList) {
        var valData = '', valOptGroup = '';
        $("#pTab3ModalDivSelect2Staff").html('<input class="form-control ui-autocomplete-loading" placeholder="" type="text" disabled="disabled">');
        if (id == '') {
            $("#pTab3ModalDivSelect2Staff").html("<select id=\"pTab3ModalSelect2Staff\" name=\"pTab3ModalSelect2Staff\" multiple=\"multiple\" style=\"width:100%\" data-placeholder=\"Хариуцах ажилтан сонго\"></select><script>$(\"#pTab3ModalSelect2Staff\").select2();<\/script>");
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PlanyrTab3ModalStaffListForSelect2",
                data: '{"id":"' + id + '", "selectedList":"' + selectedList + '", "yr":"' + $('#pTab3SelectYear option:selected').val() + '"}',
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
                    $("#pTab3ModalDivSelect2Staff").html("<select id=\"pTab3ModalSelect2Staff\" name=\"pTab3ModalSelect2Staff\" multiple=\"multiple\" style=\"width:100%\" data-placeholder=\"Хариуцах ажилтан сонго\">" + valData + "</select><script>$(\"#pTab3ModalSelect2Staff\").select2();<\/script>");
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

    function dataBindTab3ModalNDSGAPEGListForSelect2(yr, type, brid, selectedList) {
        var valData = '';
        if (type == 1) {
            $("#pTab3ModalDivSelect2NDS").html('<input class="form-control ui-autocomplete-loading" placeholder="" type="text" disabled="disabled">');
        }
        else if (type == 2) {
            $("#pTab3ModalDivSelect2GAP").html('<input class="form-control ui-autocomplete-loading" placeholder="" type="text" disabled="disabled">');
        }
        else if (type == 3) {
            $("#pTab3ModalDivSelect2EG").html('<input class="form-control ui-autocomplete-loading" placeholder="" type="text" disabled="disabled">');
        }
        if (brid == '') {
            if (type == 1) {
                $("#pTab3ModalDivSelect2NDS").html("<select id=\"pTab3ModalSelect2NDS\" name=\"pTab3ModalSelect2NDS\" multiple=\"multiple\" style=\"width:100%\"></select><script>$(\"#pTab3ModalSelect2NDS\").select2();<\/script>");
            }
            else if (type == 2) {
                $("#pTab3ModalDivSelect2GAP").html("<select id=\"pTab3ModalSelect2GAP\" name=\"pTab3ModalSelect2GAP\" multiple=\"multiple\" style=\"width:100%\"></select><script>$(\"#pTab3ModalSelect2GAP\").select2();<\/script>");
            }
            else if (type == 3) {
                $("#pTab3ModalDivSelect2EG").html("<select id=\"pTab3ModalSelect2EG\" name=\"pTab3ModalSelect2EG\" multiple=\"multiple\" style=\"width:100%\"></select><script>$(\"#pTab3ModalSelect2EG\").select2();<\/script>");
            }
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PlanyrTab3ModalNDSGAPEGListForSelect2",
                data: '{"yr":"' + yr + '", "type":"' + type + '", "brid":"' + brid + '", "selectedList":"' + selectedList + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += "<option" + value.ISSELECTED + " value=\"" + value.WORK_ID + "\">" + value.WORK_NAME + "</option>";
                    });
                    if (type == 1) {
                        $("#pTab3ModalDivSelect2NDS").html("<select id=\"pTab3ModalSelect2NDS\" name=\"pTab3ModalSelect2NDS\" multiple=\"multiple\" style=\"width:100%\">" + valData + "</select><script>$(\"#pTab3ModalSelect2NDS\").select2();<\/script>");
                        $('#pTab3ModalWorkType1Cnt').html($('#pTab3ModalSelect2NDS').find('option').length);
                    }
                    else if (type == 2) {
                        $("#pTab3ModalDivSelect2GAP").html("<select id=\"pTab3ModalSelect2GAP\" name=\"pTab3ModalSelect2GAP\" multiple=\"multiple\" style=\"width:100%\">" + valData + "</select><script>$(\"#pTab3ModalSelect2GAP\").select2();<\/script>");
                        $('#pTab3ModalWorkType2Cnt').html($('#pTab3ModalSelect2GAP').find('option').length);
                    }
                    else if (type == 3) {
                        $("#pTab3ModalDivSelect2EG").html("<select id=\"pTab3ModalSelect2EG\" name=\"pTab3ModalSelect2EG\" multiple=\"multiple\" style=\"width:100%\">" + valData + "</select><script>$(\"#pTab3ModalSelect2EG\").select2();<\/script>");
                        $('#pTab3ModalWorkType3Cnt').html($('#pTab3ModalSelect2EG').find('option').length);
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
    }

    function pTab3ModalInputMnthChckbx(el) {
        if ($(el).is(':checked')) {
            if ($(el).attr('id') == 'pTab3ModalMonthNone') {
                for (var i = 1; i <= 12; i++) {
                    $('#pTab3ModalMonth' + i).prop('checked', false);
                }
            }
            else if ($(el).attr('id') == 'pTab3ModalMonthAll') {
                for (var i = 1; i <= 12; i++) {
                    $('#pTab3ModalMonth' + i).prop('checked', true);
                }
            }
            else {
                $('#pTab3ModalMonthNone').prop('checked', false);
            }
        }
        else {
            if ($(el).attr('id') == 'pTab3ModalMonthAll') {
                for (var i = 1; i <= 12; i++) {
                    $('#pTab3ModalMonth' + i).prop('checked', false);
                }
            }
        }
    }
    function pTab3ModalPlanPrintModalAHrefBind() {
        var myVal = 'pg/planyrTab3PlanPrintModal.aspx?yr=' + $('#pTab3SelectYear option:selected').val();
        if ($('#pTab3SelectIsPlaned option:selected').val() != '') myVal += '&isplaned=' + $('#pTab3SelectIsPlaned option:selected').val();
        if ($('#pTab3SelectGazar option:selected').val() != '') myVal += '&gazar=' + $('#pTab3SelectGazar option:selected').val();
        if ($('#pTab3SelectHeltes option:selected').val() != '') myVal += '&heltes=' + $('#pTab3SelectHeltes option:selected').val();
        if ($('#pTab3SelectStaff option:selected').val() != '') myVal += '&staff=' + $('#pTab3SelectStaff option:selected').val();
        $('#pTab3ModalPlanPrintModalA').attr('href', myVal);
    }
    function pTab3ModalLoadPrintModalAHrefBind() {
        var myVal = 'pg/planyrTab3LoadPrintModal.aspx?yr=' + $('#pTab3SelectYear option:selected').val();
        if ($('#pTab3SelectGazar option:selected').val() != '') myVal += '&gazar=' + $('#pTab3SelectGazar option:selected').val();
        if ($('#pTab3SelectHeltes option:selected').val() != '') myVal += '&heltes=' + $('#pTab3SelectHeltes option:selected').val();
        $('#pTab3ModalLoadPrintModalA').attr('href', myVal);
    }
    function pTab3ModalLoadImportModalAHrefBind() {
        var myVal = 'pg/planyrTab3LoadImportModal.aspx?yr=' + (parseInt($('#pTab3SelectYear option:selected').val())-1).toString();
        if ($('#pTab3SelectGazar option:selected').val() != '') myVal += '&gazar=' + $('#pTab3SelectGazar option:selected').val();
        if ($('#pTab3SelectHeltes option:selected').val() != '') myVal += '&heltes=' + $('#pTab3SelectHeltes option:selected').val();
        $('#pTab3ModalLoadImportModalA').attr('href', myVal);
    }
    $('#pTab3ModalForm').bootstrapValidator({
        fields: {
            pTab3ModalSelectStrat: {
                group: '.form-group',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab3ModalSelectAction: {
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
                        max: 4,
                        message: 'Уртдаа 4 тэмдэгт авна'
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
                        max: 1500,
                        message: 'Уртдаа 1500 тэмдэгт авна'
                    }
                }
            },
            pTab3ModalInputCriteria: {
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
            pTab3ModalInputCnt: {
                group: '.col-md-3',
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    stringLength: {
                        max: 5,
                        message: 'Уртдаа 5 тэмдэгт авна'
                    },
                    numeric: {
                        message: 'Зөвхөн тоон тэмдэгт авна'
                    }
                }
            },
            pTab3ModalInputQuality: {
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
            pTab3ModalMonth: {
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
            if ($('#pTab3ModalSelect2Staff').val() == null) {
                alert('Хариуцах ажилтан сонгоно уу');
                $('#pTab3ModalForm').find('.modal-footer').find('.btn-success').prop('disabled', false);
            }
            else {
                var stlist = "none", ndsgapeglist = "none", monthlist = "none", doday = "0";
                //if ($('#pTab3ModalSelect2NDS').val() != null) ndsgapeglist = $('#pTab3ModalSelect2NDS').val();
                //if ($('#pTab3ModalSelect2GAP').val() != null) {
                //    if (ndsgapeglist != "none") ndsgapeglist += "," + $('#pTab3ModalSelect2GAP').val();
                //    else ndsgapeglist = $('#pTab3ModalSelect2GAP').val();
                //}
                //if ($('#pTab3ModalSelect2EG').val() != null) {
                //    if (ndsgapeglist != "none") ndsgapeglist += "," + $('#pTab3ModalSelect2EG').val();
                //    else ndsgapeglist = $('#pTab3ModalSelect2EG').val();
                //}
                $('#pTab3ModalBodlogoTable').find('tbody').find('tr').each(function (index) {
                    if (ndsgapeglist != "none") ndsgapeglist += "," + $(this).attr('data-id');
                    else ndsgapeglist = $(this).attr('data-id');
                });
                if ($('#pTab3ModalSelect2Staff').val() != null) stlist = $('#pTab3ModalSelect2Staff').val();
                for (var i = 1; i < 13; i++) {
                    if ($('#pTab3ModalMonth' + i).is(":checked")) {
                        if (monthlist == "none") monthlist += i;
                        else monthlist += "," + i;
                    }
                }
                if ($.trim($('#pTab3ModalDoday').val()) != '') doday = $.trim($('#pTab3ModalDoday').val());

                if ($("#pTab3ModalHeaderLabel").html() == "нэмэх") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/PlanyrTab3SP_PLANT_INSERT",
                        data: '{"P_NDSGAPEGLIST":"' + ndsgapeglist + '", "P_FUNC_ACTION_ID":"' + $('#pTab3ModalSelectAction').val() + '", "P_IS_PLANED":"1", "P_NO":"' + $.trim($('#pTab3ModalInputNo').val()) + '", "P_NAME":"' + replaceDisplayToDatabase($.trim($('#pTab3ModalInputName').val())) + '", "P_CRITERIA":"' + replaceDisplayToDatabase($.trim($('#pTab3ModalInputCriteria').val())) + '", "P_QUALITY":"' + replaceDisplayToDatabase($.trim($('#pTab3ModalInputQuality').val())) + '", "P_CNT":"' + $.trim($('#pTab3ModalInputCnt').val()) + '", "P_BUDGET":"' + monthlist + '", "P_STAFFLIST":"' + stlist + '", "P_STAFFID":"' + $('#indexUserId').text() + '", "P_YR":"' + $('#pTab3SelectYear option:selected').val() + '", "P_DODAY":"' + doday + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            dataBindTab3DataTable();
                            $('#pTab3Modal').modal('hide');
                            smallBox('Жилийн төлөвлөгөө', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                        url: "../ws/ServiceMain.svc/PlanyrTab3SP_PLANT_UPDATE",
                        data: '{"P_PLANYR_ID":"' + $("#pTab3ModalID").text() + '", "P_NDSGAPEGLIST":"' + ndsgapeglist + '", "P_FUNC_ACTION_ID":"' + $('#pTab3ModalSelectAction').val() + '", "P_IS_PLANED":"1", "P_NO":"' + $.trim($('#pTab3ModalInputNo').val()) + '", "P_NAME":"' + replaceDisplayToDatabase($.trim($('#pTab3ModalInputName').val())) + '", "P_CRITERIA":"' + replaceDisplayToDatabase($.trim($('#pTab3ModalInputCriteria').val())) + '", "P_QUALITY":"' + replaceDisplayToDatabase($.trim($('#pTab3ModalInputQuality').val())) + '", "P_CNT":"' + $.trim($('#pTab3ModalInputCnt').val()) + '", "P_BUDGET":"' + monthlist + '", "P_STAFFLIST":"' + stlist + '", "P_STAFFID":"' + $('#indexUserId').text() + '", "P_DODAY":"' + doday + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            dataBindTab3DataTable();
                            $('#pTab3Modal').modal('hide');
                            smallBox('Жилийн төлөвлөгөө', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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

    function showAddEditTab3ModalBodlogo(el, isinsupt) {
        var valData = '';
        $('#pTab3ModalBodlogoModalHeaderLabel').text(isinsupt);
        if (isinsupt == 'нэмэх') {
            $('#pTab3ModalBodlogoModalID').html('');
            $("#pTab3ModalBodlogoModalSelectType").prop('disabled', true);
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PlanyrTab3ModalBodlogoModalPolicyTypeListDDL",
                data: '{"policytypeid":""}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += "<option value=\"" + value.ID + "\">" + replaceDatabaseToDisplay(value.NAME) + "</option>";
                    })
                    $("#pTab3ModalBodlogoModalSelectType").html('<option value="">- Сонго -</option>' + valData);
                    $("#pTab3ModalBodlogoModalSelectType").prop('disabled', false);
                    $("#pTab3ModalBodlogoModalSelectBodlogo").html('<option value="">- Сонго -</option>');
                    $("#pTab3ModalBodlogoModalSelectBodlogo").prop('disabled', true);
                    $("#pTab3ModalBodlogoModalSelectZorilt").html('<option value="">- Сонго -</option>');
                    $("#pTab3ModalBodlogoModalSelectZorilt").prop('disabled', true);
                    $("#pTab3ModalBodlogoModalSelectTuluvluguu").html('<option value="">- Сонго -</option>');
                    $("#pTab3ModalBodlogoModalSelectTuluvluguu").prop('disabled', true);
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
        }
        else if (isinsupt == 'засах') {
            $('#pTab3ModalBodlogoModalID').html($(el).closest('tr').attr('data-id'));
            $("#pTab3ModalBodlogoModalSelectType").prop('disabled', true);
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PlanyrTab3ModalBodlogoModalPolicyTypeListDDL",
                data: '{"policytypeid":"' + $(el).closest('tr').attr('data-policytypeid') + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += "<option value=\"" + value.ID + "\">" + replaceDatabaseToDisplay(value.NAME) + "</option>";
                    });
                    $("#pTab3ModalBodlogoModalSelectType").html('<option value="">- Сонго -</option>' + valData);
                    $("#pTab3ModalBodlogoModalSelectType").prop('disabled', false);
                    $("#pTab3ModalBodlogoModalSelectType").val($(el).closest('tr').attr('data-policytypeid'));
                    $("#pTab3ModalBodlogoModalSelectBodlogo").prop('disabled', true);
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/PolicyTab2BodlogoListDDL",
                        data: '{"policytypeid":"' + $(el).closest('tr').attr('data-policytypeid') + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            valData = '';
                            $($.parseJSON(data.d)).each(function (index, value) {
                                valData += "<option value=\"" + value.ID + "\">" + replaceDatabaseToDisplay(value.POLICYBODLOGO) + "</option>";
                            });
                            $("#pTab3ModalBodlogoModalSelectBodlogo").html('<option value="">- Сонго -</option>' + valData);
                            $("#pTab3ModalBodlogoModalSelectBodlogo").prop('disabled', false);
                            $("#pTab3ModalBodlogoModalSelectBodlogo").val($(el).closest('tr').attr('data-policybodlogoid'));
                            $("#pTab3ModalBodlogoModalSelectZorilt").prop('disabled', true);
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/PolicyTab3ZoriltListDDL",
                                data: '{"policybodlogoid":"' + $('#pTab3ModalBodlogoModalSelectBodlogo option:selected').val() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    valData = '';
                                    $($.parseJSON(data.d)).each(function (index, value) {
                                        valData += "<option value=\"" + value.ID + "\">" + replaceDatabaseToDisplay(value.POLICYZORILT) + "</option>";
                                    });
                                    $("#pTab3ModalBodlogoModalSelectZorilt").html('<option value="">- Сонго -</option>' + valData);
                                    $('#pTab3ModalBodlogoModalSelectZorilt').prop('disabled', false);
                                    $('#pTab3ModalBodlogoModalSelectZorilt').val($(el).closest('tr').attr('data-policyzoriltid'));
                                    $("#pTab3ModalBodlogoModalSelectTuluvluguu").prop('disabled', true);
                                    globalAjaxVar = $.ajax({
                                        type: "POST",
                                        url: "../ws/ServiceMain.svc/PlanyrTab3ModalBodlogoModalPlanListDDL",
                                        data: '{"policyzoriltid":"' + $('#pTab3ModalBodlogoModalSelectZorilt option:selected').val() + '","br_id":"' + $('#pTab3SelectGazar option:selected').val() + '"}',
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function (data) {
                                            valData = '';
                                            $($.parseJSON(data.d)).each(function (index, value) {
                                                valData += "<option value=\"" + value.ID + "\">" + replaceDatabaseToDisplay(value.POLICYPLAN) + "</option>";
                                            });
                                            $("#pTab3ModalBodlogoModalSelectTuluvluguu").html('<option value="">- Сонго -</option>' + valData);
                                            $('#pTab3ModalBodlogoModalSelectTuluvluguu').val($(el).closest('tr').attr('data-id'));
                                            $('#pTab3ModalBodlogoModalSelectTuluvluguu').prop('disabled', false);
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
    }
    $("#pTab3ModalBodlogoModalSelectType").change(function () {
        var valData = '';
        if ($("#pTab3ModalBodlogoModalSelectType option:selected").val() == "") {
            $("#pTab3ModalBodlogoModalSelectBodlogo").html('<option value="">- Сонго -</option>');
            $("#pTab3ModalBodlogoModalSelectBodlogo").prop('disabled', true);
            $("#pTab3ModalBodlogoModalSelectZorilt").html('<option value="">- Сонго -</option>');
            $("#pTab3ModalBodlogoModalSelectZorilt").prop('disabled', true);
            $("#pTab3ModalBodlogoModalSelectTuluvluguu").html('<option value="">- Сонго -</option>');
            $("#pTab3ModalBodlogoModalSelectTuluvluguu").prop('disabled', true);
        }
        else {
            $("#pTab3ModalBodlogoModalSelectBodlogo").prop('disabled', true);
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PolicyTab2BodlogoListDDL",
                data: '{"policytypeid":"' + $("#pTab3ModalBodlogoModalSelectType option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += "<option value=\"" + value.ID + "\">" + replaceDatabaseToDisplay(value.POLICYBODLOGO) + "</option>";
                    });
                    $("#pTab3ModalBodlogoModalSelectBodlogo").html('<option value="">- Сонго -</option>' + valData);
                    $("#pTab3ModalBodlogoModalSelectBodlogo").prop('disabled', false);
                    $("#pTab3ModalBodlogoModalSelectZorilt").html('<option value="">- Сонго -</option>');
                    $("#pTab3ModalBodlogoModalSelectZorilt").prop('disabled', true);
                    $("#pTab3ModalBodlogoModalSelectTuluvluguu").html('<option value="">- Сонго -</option>');
                    $("#pTab3ModalBodlogoModalSelectTuluvluguu").prop('disabled', true);
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
    $("#pTab3ModalBodlogoModalSelectBodlogo").change(function () {
        if ($("#pTab3ModalBodlogoModalSelectBodlogo option:selected").val() == "") {
            $("#pTab3ModalBodlogoModalSelectZorilt").html('<option value="">- Сонго -</option>');
            $("#pTab3ModalBodlogoModalSelectZorilt").prop('disabled', true);
            $("#pTab3ModalBodlogoModalSelectTuluvluguu").html('<option value="">- Сонго -</option>');
            $("#pTab3ModalBodlogoModalSelectTuluvluguu").prop('disabled', true);
        }
        else {
            $("#pTab3ModalBodlogoModalSelectZorilt").prop('disabled', true);
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PolicyTab3ZoriltListDDL",
                data: '{"policybodlogoid":"' + $('#pTab3ModalBodlogoModalSelectBodlogo option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += "<option value=\"" + value.ID + "\">" + replaceDatabaseToDisplay(value.POLICYZORILT) + "</option>";
                    });
                    $("#pTab3ModalBodlogoModalSelectZorilt").html('<option value="">- Сонго -</option>' + valData);
                    $("#pTab3ModalBodlogoModalSelectZorilt").prop('disabled', false);
                    $("#pTab3ModalBodlogoModalSelectTuluvluguu").html('<option value="">- Сонго -</option>');
                    $("#pTab3ModalBodlogoModalSelectTuluvluguu").prop('disabled', true);
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
    $("#pTab3ModalBodlogoModalSelectZorilt").change(function () {
        if ($("#pTab3ModalBodlogoModalSelectZorilt option:selected").val() == "") {
            $("#pTab3ModalBodlogoModalSelectTuluvluguu").html('<option value="">- Сонго -</option>');
            $("#pTab3ModalBodlogoModalSelectTuluvluguu").prop('disabled', true);
        }
        else {
            $("#pTab3ModalBodlogoModalSelectTuluvluguu").prop('disabled', true);
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PlanyrTab3ModalBodlogoModalPlanListDDL",
                data: '{"policyzoriltid":"' + $('#pTab3ModalBodlogoModalSelectZorilt option:selected').val() + '","br_id":"' + $('#pTab3SelectGazar option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += "<option value=\"" + value.ID + "\">" + replaceDatabaseToDisplay(value.POLICYPLAN) + "</option>";
                    });
                    $("#pTab3ModalBodlogoModalSelectTuluvluguu").html('<option value="">- Сонго -</option>' + valData);
                    $("#pTab3ModalBodlogoModalSelectTuluvluguu").prop('disabled', false);
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
    $('#pTab3ModalBodlogoModalForm').bootstrapValidator({
        fields: {
            pTab3ModalBodlogoModalSelectType: {
                group: '.form-group',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab3ModalBodlogoModalSelectBodlogo: {
                group: '.form-group',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab3ModalBodlogoModalSelectZorilt: {
                group: '.form-group',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab3ModalBodlogoModalSelectTuluvluguu: {
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
            if ($("#pTab3ModalBodlogoModalHeaderLabel").html() == "нэмэх") {
                var isDuplicate=0;
                $('#pTab3ModalBodlogoTable').find('tbody').find('tr').each(function (index) {
                    if ($(this).attr('data-id') == $('#pTab3ModalBodlogoModalSelectTuluvluguu option:selected').val()) {
                        isDuplicate = 1;
                    }
                });
                if (isDuplicate == 1) alert('Бүртгэгдсэн төлөвлөгөө байна!');
                else {
                    $('#pTab3ModalBodlogoTable').find('tbody').append('<tr data-id="' + $('#pTab3ModalBodlogoModalSelectTuluvluguu option:selected').val() + '" data-policytypeid="' + $('#pTab3ModalBodlogoModalSelectType option:selected').val() + '" data-policybodlogoid="' + $('#pTab3ModalBodlogoModalSelectBodlogo option:selected').val() + '" data-policyzoriltid="' + $('#pTab3ModalBodlogoModalSelectZorilt option:selected').val() + '"><td>' + $('#pTab3ModalBodlogoModalSelectType option:selected').text() + '</td><td>' + $('#pTab3ModalBodlogoModalSelectBodlogo option:selected').text().split('. ')[0] + '. ' + $('#pTab3ModalBodlogoModalSelectZorilt option:selected').text().split('. ')[0] + '. ' + $('#pTab3ModalBodlogoModalSelectTuluvluguu option:selected').text() + '</td><td><div class="btn-group"><button type="button" class="btn btn-default btn-xs" onclick="showAddEditTab3ModalBodlogo(this,\'засах\');" data-target="#pTab3ModalBodlogoModal" data-toggle="modal"><i class="fa fa-pencil"></i></button><button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab3ModalBodlogo(this);"><i class="fa fa-trash-o"></i></button></div></td></tr>');
                    $('#pTab3ModalBodlogoModal').modal('hide');
                }
            }
            else {
                $('#pTab3ModalBodlogoTable').find('tbody').find('tr').each(function (index) {
                    if ($(this).attr('data-id') == $('#pTab3ModalBodlogoModalID').html()) {
                        $(this).attr('data-id', $('#pTab3ModalBodlogoModalSelectTuluvluguu option:selected').val());
                        $(this).attr('data-policytypeid', $('#pTab3ModalBodlogoModalSelectType option:selected').val());
                        $(this).attr('data-policybodlogoid', $('#pTab3ModalBodlogoModalSelectBodlogo option:selected').val());
                        $(this).attr('data-policyzoriltid', $('#pTab3ModalBodlogoModalSelectZorilt option:selected').val());
                        $('td:eq(0)', this).html($('#pTab3ModalBodlogoModalSelectType option:selected').text());
                        $('td:eq(1)', this).html($('#pTab3ModalBodlogoModalSelectBodlogo option:selected').text().split('. ')[0] + '. ' + $('#pTab3ModalBodlogoModalSelectZorilt option:selected').text().split('. ')[0] + '. ' + $('#pTab3ModalBodlogoModalSelectTuluvluguu option:selected').text());
                    }
                });
                $('#pTab3ModalBodlogoModal').modal('hide');
            }
        }
    });
    function showDeleteTab3ModalBodlogo(el) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Сонгосон Бодлогын баримт бичгийг хасах уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                $(el).closest('tr').remove();
            }
        });
    }

    //tab4
    function dataBindTab4DataTableFirst() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '', valOptGroup = '';
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
                });
                $('#pTab4SelectGazar').html(valData);
                $('#pTab4SelectGazar').val(userGazarId);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                    data: '{"yr":"' + $("#pTab4SelectYear option:selected").val() + '", "gazar":"' + $("#pTab4SelectGazar option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        });
                        $("#pTab4SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                        if (!funcCheckRoles('1,8')) {
                            $('#pTab4SelectGazar').prop('disabled', true);
                            if (!funcCheckRoles('3,4')) {
                                $('#pTab4SelectHeltes').val(userHeltesId);
                                $('#pTab4SelectHeltes').prop('disabled', true);
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/GetStaffListForDDL",
                                    data: '{"yr":"' + $("#pTab4SelectYear option:selected").val() + '", "gazar":"' + $("#pTab4SelectGazar option:selected").val() + '", "heltes":"' + $("#pTab4SelectHeltes option:selected").val() + '"}',
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
                                        $("#pTab4SelectStaff").html('<option value="">Бүгд</option>' + valData);
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
                            else {
                                $('#pTab4SelectStaff').html('<option value="">Бүгд</option>');
                                $('#pTab4SelectStaff').prop('disabled', true);
                                dataBindTab4DataTable();
                            }
                        }
                        else {
                            $('#pTab4SelectHeltes').prop('disabled', false);
                            $('#pTab4SelectStaff').html('<option value="">Бүгд</option>');
                            $('#pTab4SelectStaff').prop('disabled', true);
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
    }
    function dataBindTab4DataTable() {
        var valData = '';
        var valIsEdit = '1';
        showLoader('loaderTab4');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PlanyrTab4Datatable",
            data: '{"yr":"' + $("#pTab4SelectYear option:selected").val() + '", "quarter":"' + $("#pTab4SelectQuarter option:selected").val() + '", "gazar":"' + $("#pTab4SelectGazar option:selected").val() + '", "heltes":"' + $("#pTab4SelectHeltes option:selected").val() + '", "staff":"' + $("#pTab4SelectStaff option:selected").val() + '", "isplaned":"' + $("#pTab4SelectIsPlaned option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (parseInt($.trim($('#indexCurrentYear').html())) > parseInt($("#pTab4SelectYear option:selected").val())) {
                    valIsEdit = '0';
                }
                valData += "<table id=\"pTab4Datatable\" class=\"table table-striped table-bordered table-hover smart-form\" style=\"width:100%\">";
                valData += "<thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Арга хэмжээ</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\" style=\"width:35%;\">Хүрэх үр дүн, хугацаа, тоо хэмжээ</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах ажилтан</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Биелэлт оруулах</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хавсралт файл</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.PLANYR_ID + "\">";
                    valData += "<td>" + value.ROWNUM + "</td>";
                    valData += "<td>" + value.STRAT_NO + "." + value.ACTION_NO + "." + value.PLANYR_NO + ". " + replaceDatabaseToDisplay(value.PLANYR_NAME) + "</td>";
                    valData += "<td>";
                    valData += "<span>" + value.CRITERIA + "</span><br />";
                    valData += "<b>тоо: </b><span>" + value.CNT + "</span><br />";
                    valData += "<b>чанар: </b><span>" + value.QUALITY + "</span><br />";
                    valData += "<b>Төлөвлөгөөт хугацаа /сараар/: </b><label>" + value.MNTHLISTPLAN.replace(/,/g, ", ") + "</label><br />";
                    valData += "<b>Гүйцэтгэлийн хугацаа /сараар/: </b><span>" + value.MNTHLIST + "</span><br />";
                    valData += "</td>";
                    valData += "<td>" + value.STAFFNAMELIST + "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">";
                    valData += "<a href=\"../pg/planyrTab4ImplModal.aspx?id=" + value.PLANYR_ID + "&yr=" + $("#pTab4SelectYear option:selected").val() + "&qrtr=" + $("#pTab4SelectQuarter option:selected").val() + "\" data-target=\"#pTab4Modal\" data-toggle=\"modal\" style=\"cursor:pointer\"><i class=\"" + value.ISIMPL + "\"></i></a>";
                    valData += "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">";
                    if (value.FILE_NAME != "") valData += "<a href=\"../files/plan/" + value.FILE_NAME + "\" class=\"btn btn-link btn-xs\" style=\"padding:0px; border:none;\" download title=\"Хавсаргасан файл татах\"><i class=\"fa fa-paperclip fa-lg\"></i></a></td>";
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_pTab4Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab4Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab4Datatable) {responsiveHelper_pTab4Datatable = new ResponsiveDatatablesHelper($('#pTab4Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab4Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab4Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },{ \"sWidth\": \"35%\" },{ \"sWidth\": \"35%\" },{ \"sWidth\": \"150px\" },{ \"sWidth\": \"52px\" },{ \"sWidth\": \"15px\" }]});";
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
    $("#pTab4SelectIsPlaned").change(function () {
        dataBindTab4DataTable();
    });
    $("#pTab4SelectGazar").change(function () {
        var valData = '';
        if ($("#pTab4SelectGazar option:selected").val() == "") {
            $("#pTab4SelectHeltes").html("<option selected value=\"\">Бүгд</option>");
            $("#pTab4SelectHeltes").prop("disabled", true);
            $('#pTab4SelectStaff').html('<option value="">Бүгд</option>');
            $('#pTab4SelectStaff').prop('disabled', true);
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr":"' + $("#pTab4SelectYear option:selected").val() + '", "gazar":"' + $("#pTab4SelectGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    });
                    $("#pTab4SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                    $("#pTab4SelectHeltes").prop("disabled", false);
                    $('#pTab4SelectStaff').html('<option value="">Бүгд</option>');
                    $('#pTab4SelectStaff').prop('disabled', true);
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
    $("#pTab4SelectHeltes").change(function () {
        var valData = '', valOptGroup = '';
        if ($("#pTab4SelectHeltes option:selected").val() == "") {
            $('#pTab4SelectStaff').html('<option value="">Бүгд</option>');
            $('#pTab4SelectStaff').prop('disabled', true);
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetStaffListForDDL",
                data: '{"yr":"' + $("#pTab4SelectYear option:selected").val() + '", "gazar":"' + $("#pTab4SelectGazar option:selected").val() + '", "heltes":"' + $("#pTab4SelectHeltes option:selected").val() + '"}',
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
                    $("#pTab4SelectStaff").html('<option value="">Бүгд</option>' + valData);
                    $('#pTab4SelectStaff').prop('disabled', false);
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
    $("#pTab4SelectStaff").change(function () {
        dataBindTab4DataTable();
    });
    $("#pTab4SelectQuarter").change(function () {
        dataBindTab4DataTable();
    });
    

    //tab5
    function dataBindTab5DataTableFirst() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '', valOptGroup = '';
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
                $('#pTab5SelectGazar').html(valData);
                $('#pTab5SelectGazar').val(userGazarId);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                    data: '{"yr":"' + $("#pTab5SelectYear option:selected").val() + '", "gazar":"' + $("#pTab5SelectGazar option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        });
                        $("#pTab5SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                        if (!funcCheckRoles('1,8')) {
                            $('#pTab5SelectGazar').prop('disabled', true);
                            if (!funcCheckRoles('3,4')) {
                                $('#pTab5SelectHeltes').val(userHeltesId);
                                $('#pTab5SelectHeltes').prop('disabled', true);
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/GetStaffListForDDL",
                                    data: '{"yr":"' + $("#pTab5SelectYear option:selected").val() + '", "gazar":"' + $("#pTab5SelectGazar option:selected").val() + '", "heltes":"' + $("#pTab5SelectHeltes option:selected").val() + '"}',
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
                                        $("#pTab5SelectStaff").html('<option value="">Бүгд</option>' + valData);
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
                            else {
                                $('#pTab5SelectStaff').html('<option value="">Бүгд</option>');
                                $('#pTab5SelectStaff').prop('disabled', true);
                                dataBindTab5DataTable();
                            }
                        }
                        else {
                            $('#pTab5SelectHeltes').prop('disabled', false);
                            $('#pTab5SelectStaff').html('<option value="">Бүгд</option>');
                            $('#pTab5SelectStaff').prop('disabled', true);
                            dataBindTab5DataTable();
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
    function dataBindTab5DataTable() {
        var valData = '';
        var valIsEdit = '1';
        showLoader('loaderTab5');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PlanyrTab5Datatable",
            data: '{"yr":"' + $("#pTab5SelectYear option:selected").val() + '", "quarter":"' + $("#pTab5SelectQuarter option:selected").val() + '", "gazar":"' + $("#pTab5SelectGazar option:selected").val() + '", "heltes":"' + $("#pTab5SelectHeltes option:selected").val() + '", "staff":"' + $("#pTab5SelectStaff option:selected").val() + '", "isplaned":"' + $("#pTab5SelectIsPlaned option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                var one = "", colorper="";
                if (parseInt($.trim($('#indexCurrentYear').html())) > parseInt($("#pTab5SelectYear option:selected").val())) {
                    valIsEdit = '0';
                }
                valData += "<table id=\"pTab5Datatable\" class=\"table table-striped table-bordered table-hover smart-form\" style=\"width:100%\">";
                valData += "<thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Арга хэмжээ</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle; width:350px;\">Хүрэх үр дүн, хугацаа, тоо хэмжээ</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах ажилтан</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Биелэлт</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Сарын үнэлгээ</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    one = "";
                    if (value.ISUSE != "0")
                    {
                        for (var i = 0; i < value.MNTHLIST.split(',').length; i++)
                        {
                            if (parseFloat(value.EVALLIST.split(',')[i]) >= 0 && parseFloat(value.EVALLIST.split(',')[i]) <= 49) colorper = "bg-color-red";
                            else if (parseFloat(value.EVALLIST.split(',')[i]) >= 50 && parseFloat(value.EVALLIST.split(',')[i]) <= 79) colorper = "bg-color-orange";
                            else if (parseFloat(value.EVALLIST.split(',')[i]) >= 80 && parseFloat(value.EVALLIST.split(',')[i]) <= 100) colorper = "bg-color-greenLight";
                            if (value.ISEVALLIST.split(',')[i] == "0") one += "<dt style=\"width:190px; height:16px; padding-bottom:3px;\">сар&nbsp;" + value.MNTHLIST.split(',')[i] + "&nbsp;|&nbsp;<span class=\"bg-color-blueLight\" style=\"margin:0 0 0 0; padding:0 10px 0 10px; border-radius:3px; color:#fff; \">-</span></dt>";
                            else
                            {
                                if (value.DESCLIST.split('~')[i] == "none") one += "<dt style=\"width:190px; height:16px; padding-bottom:3px;\">сар&nbsp;" + value.MNTHLIST.split(',')[i] + "&nbsp;|&nbsp;<span class=\"" + colorper + "\" style=\"margin:0 0 0 0; padding:0 10px 0 10px; border-radius:3px; color:#fff; \">" + value.EVALLIST.split(',')[i] + "&nbsp;%</span></dt>";
                                else one += "<dt style=\"width:190px; height:16px; padding-bottom:3px;\">сар&nbsp;" + value.MNTHLIST.split(',')[i] + "&nbsp;|&nbsp;<span class=\"" + colorper + "\" style=\"margin:0 0 0 0; padding:0 10px 0 10px; border-radius:3px; color:#fff; \">" + value.EVALLIST.split(',')[i] + "&nbsp;%</span>&nbsp;<a href=\"javascript:void(0);\" style=\"font-size:11px;\" class=\"btn btn-link\" rel=\"popover\" data-placement=\"bottom\" data-original-title=\"Тайлбар\" data-content=\"" + value.DESCLIST.split('~')[i].replace("none", "") + "\"><i>Тайлбар харах</i></a></dt>";
                            }
                        }
                        one += "<dt style=\"height:16px;\">ДУНДАЖ&nbsp;|&nbsp;<span class=\"" + value.AVGPERCOLOR + "\" style=\"margin:0 0 0 0; padding:0 10px 0 10px; border-radius:3px; color:#fff; \">" + value.AVGPER + "&nbsp;%</span></dt>";
                    }

                    valData += "<tr data-id=\"" + value.PLANYR_ID + "\">";
                    valData += "<td>" + value.ROWNUM + "</td>";
                    valData += "<td>" + value.STRAT_NO + "." + value.ACTION_NO + "." + value.PLANYR_NO + ". " + replaceDatabaseToDisplay(value.PLANYR_NAME) + "</td>";
                    valData += "<td>";
                    valData += "<span>" + value.CRITERIA + "</span><br />";
                    valData += "<b>тоо: </b><span>" + value.CNT + "</span><br />";
                    valData += "<b>чанар: </b><span>" + value.QUALITY + "</span><br />";
                    valData += "<b>Төлөвлөгөөт хугацаа /сараар/: </b><label>" + value.MNTHLISTPLAN.replace(/,/g, ", ") + "</label><br />";
                    valData += "<b>Гүйцэтгэлийн хугацаа /сараар/: </b><span>" + value.MNTHLIST + "</span><br />";
                    valData += "</td>";
                    valData += "<td>" + value.STAFFNAMELIST + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.IMPL_DATA) + "</td>";
                    valData += "<td><dl>" + one + "</dl></td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_pTab5Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab5Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab5Datatable) {responsiveHelper_pTab5Datatable = new ResponsiveDatatablesHelper($('#pTab5Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab5Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab5Datatable.respond();}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab5Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },{ \"sWidth\": \"25%\" },{ \"sWidth\": \"25%\" },{ \"sWidth\": \"150px\" },{ \"sWidth\": \"35%\" },{ \"sWidth\": \"50px\" }]});";
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
        dataBindTab5DataTableFirst();
    });
    $("#pTab5SelectIsPlaned").change(function () {
        dataBindTab5DataTable();
    });
    $("#pTab5SelectGazar").change(function () {
        var valData = '';
        if ($("#pTab5SelectGazar option:selected").val() == "") {
            $("#pTab5SelectHeltes").html("<option selected value=\"\">Бүгд</option>");
            $("#pTab5SelectHeltes").prop("disabled", true);
            $('#pTab5SelectStaff').html('<option value="">Бүгд</option>');
            $('#pTab5SelectStaff').prop('disabled', true);
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr":"' + $("#pTab5SelectYear option:selected").val() + '", "gazar":"' + $("#pTab5SelectGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    });
                    $("#pTab5SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                    $("#pTab5SelectHeltes").prop("disabled", false);
                    $('#pTab5SelectStaff').html('<option value="">Бүгд</option>');
                    $('#pTab5SelectStaff').prop('disabled', true);
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
    $("#pTab5SelectHeltes").change(function () {
        var valData = '', valOptGroup = '';
        if ($("#pTab5SelectHeltes option:selected").val() == "") {
            $('#pTab5SelectStaff').html('<option value="">Бүгд</option>');
            $('#pTab5SelectStaff').prop('disabled', true);
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetStaffListForDDL",
                data: '{"yr":"' + $("#pTab5SelectYear option:selected").val() + '", "gazar":"' + $("#pTab5SelectGazar option:selected").val() + '", "heltes":"' + $("#pTab5SelectHeltes option:selected").val() + '"}',
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
                    $("#pTab5SelectStaff").html('<option value="">Бүгд</option>' + valData);
                    $('#pTab5SelectStaff').prop('disabled', false);
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
    $("#pTab5SelectStaff").change(function () {
        dataBindTab5DataTable();
    });
    $("#pTab5SelectQuarter").change(function () {
        dataBindTab5DataTable();
    });
    function saveEval(me) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_PLANYR_EVAL WHERE PLANYR_ID=' + $(me).closest('tr').attr('data-id') + ' AND TP=\'quarter\' AND INTERVAL=' + $('#pTab5SelectQuarter option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == "0") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                        data: '{"qry":"INSERT INTO TBL_PLANYR_EVAL (PLANYR_ID, TP, INTERVAL, EVAL, EVAL_MODIFY_STAFFID, EVAL_MODIFY_DATE) VALUES (' + $(me).closest('tr').attr('data-id') + ', \'quarter\', ' + $('#pTab5SelectQuarter option:selected').val() + ', ' + $(me).val().replace('none', 'null') + ', ' + '<%= Session["LM_UserID"] %>' + ', to_char(sysdate,\'yyyy-MM-dd\'))"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            smallBox('Жилийн төлөвлөгөө', 'Улирлын үнэлгээ амжилттай хадгалагдлаа...', '#659265', 3000);
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
                        url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                        data: '{"qry":"UPDATE TBL_PLANYR_EVAL SET EVAL=' + $(me).val().replace('none', 'null') + ', EVAL_MODIFY_STAFFID=' + '<%= Session["LM_UserID"] %>' + ', EVAL_MODIFY_DATE=to_char(sysdate,\'yyyy-MM-dd\') WHERE PLANYR_ID=' + $(me).closest('tr').attr('data-id') + ' AND TP=\'quarter\' AND INTERVAL=' + $('#pTab5SelectQuarter option:selected').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            smallBox('Жилийн төлөвлөгөө', 'Улирлын үнэлгээ амжилттай хадгалагдлаа...', '#659265', 3000);
                        },
                        failure: function (response) {
                            alert('FAILURE: ' + response.d);
                        },
                        error: function (xhr, status, error) {
                            window.location = '../#pg/error500.aspx';
                        }
                    });
                }
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
    function dataBindTab6t1DataTableFirst() {
        var userGazarId = $('#indexUserGazarId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr":"' + $('#pTab6t1SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $('#pTab6t1SelectGazar').html(valData);
                $('#pTab6t1SelectGazar').val(userGazarId);
                if (!funcCheckRoles('1,8')) {
                    $('#pTab6t1SelectGazar').prop('disabled', true);
                }
                else {
                    $('#pTab6t1SelectGazar').prop('disabled', false);
                }
                dataBindTab6t1DataTable();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab6t1DataTable() {
        var valData = '';
        showLoader('loaderTab6t1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PlanyrTab6t1Datatable",
            data: '{"yr":"' + $("#pTab6t1SelectYear option:selected").val() + '", "qrtr":"' + $("#pTab6t1SelectQuarter option:selected").val() + '", "gazar":"' + $("#pTab6t1SelectGazar option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                var strStratId = "", strActionId = "", one="";
                valData += "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\"";
                valData += "<thead style=\"background-color: #C6D9F1;\">";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:middle;\">№</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:middle; width: 25%;\">Төсвийн шууд захирагчийн гэрээнд тухайн нэгж хариуцахаар тусгагдсан арга хэмжээ (гарц буюу ажил, үйлчилгээ)</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:middle; width: 25%;\">Тухайн арга хэмжээг хэрэгжүүлэхэд чиглэгдсэн нэгжийн гүйцэтгэх ажил, үйлчилгээ, гүйцэтгэлийн шалгуур үзүүлэлт (тоо, чанар, хугацаа)-ийн хүрэх түвшин</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:middle; width: 35%;\">Тухайн арга хэмжээний хүрээнд хийж гүйцэтгэсэн ажлын тайлан</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:middle;\">Хариуцан хэрэгжүүлэх мэргэжилтэн</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:middle;\">Сар бүрийн үнэлгээ</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:middle;\">Ерөнхий үнэлгээ</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (strStratId != value.STRAT_ID) valData += "<tr><td colspan=\"7\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.STRAT_NO + ". " + replaceDatabaseToDisplay(value.STRAT_NAME) + "</td></tr>";
                    if (strActionId != value.ACTION_ID) valData += "<tr><td colspan=\"7\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.STRAT_NO + "." + value.ACTION_NO + ". " + replaceDatabaseToDisplay(value.ACTION_NAME) + "</td></tr>";
                    strStratId = value.STRAT_ID;
                    strActionId = value.ACTION_ID;

                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.ACTION_NO + "." + value.PLANYR_NO + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + replaceDatabaseToDisplay(value.PLANYR_NAME) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">";
                    valData += "<span for=\"tab2criteria\">" + value.CRITERIA + "</span><br />";
                    valData += "<b>тоо: </b><span>" + value.CNT + "</span><br />";
                    valData += "<b>чанар: </b><span for=\"tab1quality\">" + value.QUALITY + "</span><br />";
                    valData += "<b>Төлөвлөгөөт хугацаа /сараар/: </b><label for=\"tab1monthplan\">" + value.MNTHLISTPLAN.replace("1,2,3,4,5,6,7,8,9,10,11,12", "Сар бүр").replace(/,/g, ", ") + "</label><br />";
                    valData += "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + replaceDatabaseToDisplay(value.IMPL_DATA) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.STAFFNAMELIST + "</td>";
                    one = "";
                    if (value.ISUSE != "0")
                    {
                        for (var i = 0; i < value.MNTHLIST.split(',').length; i++)
                        {
                            if (value.ISEVALLIST.split(',')[i] == "0") one += "<dt style=\"width:100px; height:16px; padding-bottom:3px; font-weight:normal;\">сар&nbsp;" + value.MNTHLIST.split(',')[i] + "&nbsp;|&nbsp;-</dt>";
                            else
                            {
                                one += "<dt style=\"width:100px; height:16px; padding-bottom:3px; font-weight:normal;\">сар&nbsp;" + value.MNTHLIST.split(',')[i] + "&nbsp;|&nbsp;" + value.EVALLIST.split(',')[i] + "&nbsp;%</dt>";
                            }
                        }
                        one += "<dt style=\"height:16px;\">ДУНДАЖ&nbsp;|&nbsp;" + value.AVGPER + "&nbsp;%</dt>";
                    }
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:miidle;\"><dl>" + one + "</dl></td>";

                    if (value.ISEVALLAST == "0") valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">-</td>";
                    else valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.EVALLAST + "</td>";
                });
                valData += "</tbody>";
                valData += "</table>";
                $("#divBindTab6t1Table").html(valData);
                if ($("#pTab6t1SelectGazar option:selected").val() == '') {
                    $('#pTab6t1Gazar').html('');
                }
                else {
                    $('#pTab6t1Gazar').html($("#pTab6t1SelectGazar option:selected").attr('title').replace('газар', 'газрын'));
                }
                $("#pTab6t1Year").html($("#pTab6t1SelectYear option:selected").val());
                $("#pTab6t1Quarter").html($("#pTab6t1SelectQuarter option:selected").val());
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
    $("#pTab6t1SelectYear").change(function () {
        dataBindTab6t1DataTableFirst();
    });
    $("#pTab6t1SelectQuarter").change(function () {
        dataBindTab6t1DataTable();
    });
    $("#pTab6t1SelectGazar").change(function () {
        dataBindTab6t1DataTable();
    });

    //tab6t2
    function dataBindTab6t2DataTableFirst() {
        var userGazarId = $('#indexUserGazarId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr":"' + $('#pTab6t2SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $('#pTab6t2SelectGazar').html(valData);
                $('#pTab6t2SelectGazar').val(userGazarId);
                if (!funcCheckRoles('1,8')) {
                    $('#pTab6t2SelectGazar').prop('disabled', true);
                }
                else {
                    $('#pTab6t2SelectGazar').prop('disabled', false);
                }
                dataBindTab6t2DataTable();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab6t2DataTable() {
        var valData = '';
        showLoader('loaderTab6t2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PlanyrTab6t2Datatable",
            data: '{"yr":"' + $("#pTab6t2SelectYear option:selected").val() + '", "qrtr":"' + $("#pTab6t2SelectQuarter option:selected").val() + '", "gazar":"' + $("#pTab6t2SelectGazar option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                var one = "";
                valData += "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\"";
                valData += "<thead style=\"background-color: #C6D9F1;\">";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:middle;\">№</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:middle;\">Хэрэгжилт нь удаашралтай үнэлэгдсэн арга хэмжээ</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:middle;\">Тухайн арга хэмжээний хүрээнд хийж гүйцэтгэсэн ажлын тайлан</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:middle;\">Хариуцан хэрэгжүүлэх мэргэжилтэн</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:middle;\">Хэрэгжүүлсэн сар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:middle;\">Ерөнхий үнэлгээ</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:middle;\">Үнэлгээний тайлбар</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.ROWNUM + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.ACTION_NO + "." + value.PLANYR_NO +". "+ replaceDatabaseToDisplay(value.PLANYR_NAME) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + replaceDatabaseToDisplay(value.IMPL_DATA) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.STAFFNAMELIST + "</td>";
                    one = "";
                    if (value.ISUSE != "0")
                    {
                        for (var i = 0; i < value.MNTHLIST.split(',').length; i++)
                        {
                            if (value.ISEVALLIST.split(',')[i] == "0") one += "<dt style=\"width:190px; height:16px; padding-bottom:3px;\">сар&nbsp;" + value.MNTHLIST.split(',')[i] + "&nbsp;|&nbsp;-</dt>";
                            else
                            {
                                one += "<dt style=\"width:190px; height:16px; padding-bottom:3px;\">сар&nbsp;" + value.MNTHLIST.split(',')[i] + "&nbsp;|&nbsp;" + value.EVALLIST.split(',')[i] + "&nbsp;%</dt>";
                            }
                        }
                        one += "<dt style=\"height:16px;\">ДУНДАЖ&nbsp;|&nbsp;" + value.AVGPER + "&nbsp;%</dt>";
                    }
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;; vertical-align:middle;\"><dl>" + one + "</dl></td>";

                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.EVALLAST + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.EVALLASTDESC + "</td>";
                });
                valData += "</tbody>";
                valData += "</table>";
                $("#divBindTab6t2Table").html(valData);
                if ($("#pTab6t2SelectGazar option:selected").val() == '') {
                    $('#pTab6t2Gazar').html('');
                }
                else {
                    $('#pTab6t2Gazar').html($("#pTab6t2SelectGazar option:selected").attr('title').replace('газар', 'газрын'));
                }
                $("#pTab6t2Year").html($("#pTab6t2SelectYear option:selected").val());
                $("#pTab6t2Quarter").html($("#pTab6t2SelectQuarter option:selected").val());
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
    $("#pTab6t2SelectYear").change(function () {
        dataBindTab6t2DataTableFirst();
    });
    $("#pTab6t2SelectQuarter").change(function () {
        dataBindTab6t2DataTable();
    });
    $("#pTab6t2SelectGazar").change(function () {
        dataBindTab6t2DataTable();
    });

    //tab6t3
    function dataBindTab6t3DataTableFirst() {
        var userGazarId = $('#indexUserGazarId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr":"' + $('#pTab6t3SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $('#pTab6t3SelectGazar').html(valData);
                $('#pTab6t3SelectGazar').val(userGazarId);
                if (!funcCheckRoles('1,8')) {
                    $('#pTab6t3SelectGazar').prop('disabled', true);
                }
                else {
                    $('#pTab6t3SelectGazar').prop('disabled', false);
                }
                dataBindTab6t3DataTable();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab6t3DataTable() {
        var valData = '';
        showLoader('loaderTab6t3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PlanyrTab6t3Datatable",
            data: '{"yr":"' + $("#pTab6t3SelectYear option:selected").val() + '", "qrtr":"' + $("#pTab6t3SelectQuarter option:selected").val() + '", "gazar":"' + $("#pTab6t3SelectGazar option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\"";
                valData += "<thead style=\"background-color: #C6D9F1;\">";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:middle;\">№</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:middle;\">Төлөвлөгөөнд тусгагдсан арга хэмжээ</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:middle;\">Хариуцан хэрэгжүүлэх мэргэжилтэн</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:middle;\">Төлөвлөгдсөн хугацаа /сараар/</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.ROWNUM + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.STRAT_NO + "." + value.ACTION_NO + "." + value.PLANYR_NO + ". " + replaceDatabaseToDisplay(value.PLANYR_NAME) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.STAFFNAMELIST + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.MNTHLISTPLAN + "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                $("#divBindTab6t3Table").html(valData);
                if ($("#pTab6t3SelectGazar option:selected").val() == '') {
                    $('#pTab6t3Gazar').html('');
                }
                else {
                    $('#pTab6t3Gazar').html($("#pTab6t3SelectGazar option:selected").attr('title').replace('газар', 'газрын'));
                }
                $("#pTab6t3Year").html($("#pTab6t3SelectYear option:selected").val());
                $("#pTab6t3Quarter").html($("#pTab6t3SelectQuarter option:selected").val());
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
    $("#pTab6t3SelectYear").change(function () {
        dataBindTab6t3DataTableFirst();
    });
    $("#pTab6t3SelectQuarter").change(function () {
        dataBindTab6t3DataTable();
    });
    $("#pTab6t3SelectGazar").change(function () {
        dataBindTab6t3DataTable();
    });

    //tab7t1
    function dataBindTab7t1DataTable() {
        var valData = '';
        showLoader('loaderTab7t1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/planyrTab7t1Datatable",
            data: '{"yr":"' + $("#pTab7t1SelectYear option:selected").val() + '", "qrtr":"' + $("#pTab7t1SelectQuarter option:selected").val() + '", "tp":"' + $("#pTab7t1SelectType option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                var cnt = 0, cnt100 = 0, cnt90 = 0, cnt80 = 0, cnt70 = 0, cnt50 = 0, cnt30 = 0, cnt10 = 0, cnt0 = 0, cntnone = 0, intRowNum = 0;
                var sumper = 0;
                valData += "<table style=\"border:1px solid #000;-webkit-print-color-adjust:exact; border-collapse:collapse; font-family:Arial; font-size:12px; width:100%\">";
                valData += "<thead style=\"background-color: #C6D9F1;\">";
                valData += "<tr>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">№</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Газар</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Нийт<br/>арга хэмжээ</th>";
                valData += "<th colspan=\"9\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хэрэгжилтийн хувь</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Биелэлтийн дундаж хувь</th>";
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
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Үнэлээгүй</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    cnt += parseInt(value.CNT.replace("-", "0"));
                    cnt100 += parseInt(value.PER100.replace("-", "0"));
                    cnt90 += parseInt(value.PER90.replace("-", "0"));
                    cnt80 += parseInt(value.PER80.replace("-", "0"));
                    cnt70 += parseInt(value.PER70.replace("-", "0"));
                    cnt50 += parseInt(value.PER50.replace("-", "0"));
                    cnt30 += parseInt(value.PER30.replace("-", "0"));
                    cnt10 += parseInt(value.PER10.replace("-", "0"));
                    cnt0 += parseInt(value.PER0.replace("-", "0"));
                    cntnone += parseInt(value.PERNONE.replace("-", "0"));
                    sumper += parseFloat(value.PER);
                    intRowNum++;
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + intRowNum + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.BR_NAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.CNT + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.PER100 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.PER90 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.PER80 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.PER70 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.PER50 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.PER30 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.PER10 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.PER0 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.PERNONE + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.PER + "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "<tfoot style=\"background-color: #C6D9F1;\">";
                valData += "<tr>";
                valData += "<td colspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">НИЙТ</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt100 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt90 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt80 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt70 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt50 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt30 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt10 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt0 + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cntnone + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + (sumper / intRowNum).toFixed(1) + "</td>";
                valData += "</tr>";
                valData += "</tfoot>";
                valData += "</table>";
                $("#divBindTab7t1Table").html(valData);
                $("#pTab7t1Year").html($("#pTab7t1SelectYear option:selected").val());
                $("#pTab7t1Quarter").html($("#pTab7t1SelectQuarter option:selected").val());
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
    $("#pTab7t1SelectYear, #pTab7t1SelectQuarter, #pTab7t1SelectType").change(function () {
        dataBindTab7t1DataTable();
    });

    //tab6t4
    function dataBindTab6t5DataTable() {
        var valData = '';
        var strstratid = "", stractionid = "";
        showLoader('loaderTab6t5');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/PlanyrTab6t5Datatable",
            data: '{"yr":"' + $("#pTab6t5SelectYear option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\"><thead>";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\"><b>Төсвийн шууд захирагчийн гэрээнд тухайн нэгж хариуцахаар тусгагдсан арга хэмжээ </b><i>(гарц буюу ажил, үйлчилгээ)</i></th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:35%;\"><b>Тухайн арга хэмжээг хэрэгжүүлэхэд чиглэгдсэн нэгжийн гүйцэтгэх ажил, үйлчилгээ, гүйцэтгэлийн шалгуур үзүүлэлт </b><i>(тоо, чанар, хугацаа)</i> <b>-ийн хүрэх түвшин</b></th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хариуцах газар нэгж</th>";
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
                        valData += "<td colspan=\"3\" style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + NumberToChar(value.STRAT_NO) + ". " + replaceDatabaseToDisplay(value.STRAT_NAME) + "</td>";
                        valData += "</tr>";
                    }
                    if (stractionid != value.ACTION_ID) {
                        valData += "<tr>";
                        valData += "<td colspan=\"3\" style=\"border: 1px solid #000; padding:5px; font-weight:bold;\">" + value.STRAT_NO + "." + value.ACTION_NO + ". " + replaceDatabaseToDisplay(value.ACTION_NAME) + "</td>";
                        valData += "</tr>";
                    }
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align: justify;\">" + value.STRAT_NO + "." + value.ACTION_NO + "." + value.PLANYR_NO + ". " + replaceDatabaseToDisplay(value.PLANYR_NAME) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align: justify;\">";
                    valData += "<b>Гүйцэтгэлийн шалгуур үзүүлэлт: </b>" + replaceDatabaseToDisplay(value.CRITERIA);
                    valData += "<br/><b>Тоо: </b>" + value.CNT;
                    valData += "<br/><b>Чанар: </b>" + value.QUALITY;
                    valData += "<br/><b>\tТөлөвлөгөөт хугацаа /сар/: </b>" + value.BUDGET.replace(/,/g, ", ");
                    valData += "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.BRNAMELIST + "</td>";
                    valData += "</tr>";
                    strstratid = value.STRAT_BRID;
                    stractionid = value.ACTION_ID;
                });                
                valData += "</tbody></table>";
                $("#divBindTab6t5Table").html(valData);
                $("#pTab6t5Year").html($("#pTab6t5SelectYear option:selected").val());
                hideLoader('loaderTab6t5');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab6t5SelectYear").change(function () {
        dataBindTab6t5DataTable();
    });
    function NumberToChar(number) {
        if (number.length > 2) {
            return number;
        }
        else {
            var rVal = '';
            if (number.length == 1) {
                switch (number) {
                    case 1: rVal = 'Нэг';break;
                    case 2:rVal = 'Хоёр';break;
                    case 3:rVal = 'Гурав';break;
                    case 4:rVal = 'Дөрөв';break;
                    case 5:rVal = 'Тав';break;
                    case 6:rVal = 'Зургаа';break;
                    case 7:rVal = 'Долоо';break;
                    case 8:rVal = 'Найм';break;
                    case 9:rVal = 'Ес';break;
                    default:rVal = 'Тэг';
                }
            }
            else {
                if (number[1] == 0) {
                    switch (number[0]) {
                        case 1: rVal = "Арав"; break;
                        case 2: rVal = "Хорь"; break;
                        case 3: rVal = "Гуч"; break;
                        case 4: rVal = "Дөч"; break;
                        case 5: rVal = "Тавь"; break;
                        case 6: rVal = "Жар"; break;
                        case 7: rVal = "Дал"; break;
                        case 8: rVal = "Ная"; break;
                        case 9: rVal = "Ер"; break;
                    }
                }
                else {
                    switch (number[0]) {
                        case 1: rVal = "Арван"; break;
                        case 2: rVal = "Хорин"; break;
                        case 3: rVal = "Гучин"; break;
                        case 4: rVal = "Дөчин"; break;
                        case 5: rVal = "Тавин"; break;
                        case 6: rVal = "Жаран"; break;
                        case 7: rVal = "Далан"; break;
                        case 8: rVal = "Наян"; break;
                        case 9: rVal = "Ерөн"; break;
                    }
                    switch (number[1]) {
                        case 1: rVal += " нэг"; break;
                        case 2: rVal += " хоёр"; break;
                        case 3: rVal += " гурав"; break;
                        case 4: rVal += " дөрөв"; break;
                        case 5: rVal += " тав"; break;
                        case 6: rVal += " зургаа"; break;
                        case 7: rVal += " долоо"; break;
                        case 8: rVal += " найм"; break;
                        case 9: rVal += " ес"; break;
                    }
                }
            }
        }
    }
</script>
