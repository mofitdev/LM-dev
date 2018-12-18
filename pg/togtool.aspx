<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="togtool.aspx.cs" Inherits="LMWebApp.pg.togtool" %>

<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
    <h1 class="page-title txt-color-blueDark">
    <i class="fa-fw fa fa-home"></i>
    <span>> ДЭЭД БАЙГУУЛЛАГЫН ШИЙДВЭР</span>
    </h1>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
            <ul class="nav nav-tabs bordered">
                <li id="pTab1Li" runat="server" class="active" onclick="pDatabindTabs(this)" style="width:175px; text-align:center;">
                    <a data-toggle="tab" href="#pTab1" style=" color: #826430; background-color: #efe1b3;">
                        <i class="fa fa-fw fa-lg fa-list-ul"></i>
                        Шийдвэр
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
                            <a data-toggle="tab" href="#pTab1t1"><i class="fa fa-fw fa-lg fa-table"></i>Шийдвэрийн нэр</a>
                        </li>
                        <li id="pTab1t2Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab1t2"><i class="fa fa-fw fa-lg fa-table"></i>Төлөвлөгөө</a>
                        </li>
                        <li id="pTab1t3Li" runat="server" onclick="pDatabindTabs(this)" class="pull-right">
                            <a data-toggle="tab" href="#pTab1t3"><i class="fa fa-fw fa-lg fa-wrench"></i>Тогтоолын төрөл</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="pTab1t1" class="tab-pane active">
                            <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"> <i class="fa fa-table"></i> </span>
                                    <h2> Шийдвэрийн нэр </h2>
                                    <div class="widget-toolbar">
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab1SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                        </div> 
                                    </div>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="width:80px; top:5px; z-index:5; right:435px;">
                                        <select id="pTab1SelectBranchGazar" name="pTab1SelectBranchGazar" runat="server" class="form-control" style="padding:1px;"></select>
                                    </div>
                                    <div class="Colvis TableTools" style="right:520px; top:4px; z-index:5; margin-top:7px;">
                                        <label>Газар: </label>
                                    </div>
                                    <div class="Colvis TableTools" style="right:385px; top:4px; z-index:5; margin-top:7px;text-align: right;"><label>Төрөл: </label></div>
                                    <div class="Colvis TableTools" style="right:125px; top:5px; z-index:5; width: 255px;">
                                        <select id="pTab1SelectType" runat="server" name="pTab1SelectType" class="form-control" style="padding:1px;"></select>
                                    </div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div id="pTab1AddBtnDiv" runat="server" class="Colvis TableTools" style="width:62px; right:565px; top:8px; z-index:5; margin-top:1px;">
                                        <button id="pTab1AddBtn" class="btn btn-primary btn-xs" type="button" data-target="#pTab1Modal" data-toggle="modal" onclick="showAddEditTab1(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
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
                            <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"> <i class="fa fa-table"></i> </span>
                                    <h2> Хяналтанд авсан заалтын төлөвлөгөө </h2>
                                    <div class="widget-toolbar">
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                        </div> 
                                    </div>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="width:80px; top:5px; z-index:5; right:435px;">
                                        <select id="pTab2SelectBranchGazar" name="pTab2SelectBranchGazar" runat="server" class="form-control" style="padding:1px;"></select>
                                    </div>
                                    <div class="Colvis TableTools" style="right:520px; top:4px; z-index:5; margin-top:7px;">
                                        <label>Газар: </label>
                                    </div>
                                    <div class="Colvis TableTools" style="right:385px; top:4px; z-index:5; margin-top:7px;text-align: right;"><label>Төрөл: </label></div>
                                    <div class="Colvis TableTools" style="right:125px; top:4px; z-index:5; width: 255px;">
                                        <select id="pTab2SelectType" runat="server" name="pTab2SelectType" class="form-control" style="padding:1px;">
                                        </select>
                                    </div>
                                    <div class="Colvis TableTools" style="right:635px; top:1px; z-index:5; margin-top:7px;line-height: 13px; text-align:right;">
                                        <label>Идэвхтэй<br />эсэх: </label>
                                    </div>
                                    <div class="Colvis TableTools" style="right:570px; top:4px; z-index:5; width: 55px;">
                                        <select id="pTab2SelectIsClosed" runat="server" name="pTab2SelectIsClosed" class="form-control" style="padding:1px;">
                                            <option value="">Бүгд</option>
                                            <option value="1">On</option>
                                            <option value="0">Off</option>
                                        </select>
                                    </div>
                                    <div id="pTab2AddBtnDiv" runat="server" class="Colvis TableTools" style="width:62px; right:700px; top:8px; z-index:5; margin-top:1px;">
                                        <button id="pTab2AddBtn" class="btn btn-primary btn-xs" type="button" data-target="#pTab2Modal" data-toggle="modal" onclick="showAddEditTab2(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
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
                        <div id="pTab1t3" class="tab-pane">
                            <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"> 
                                        <i class="fa fa-table"></i> 
                                    </span>
                                    <h2> Тогтоолын төрөл </h2>
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
                            <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                            <h2> Хяналтанд авсан заалтын төлөвлөгөөний биелэлт </h2>
                            <div class="widget-toolbar">
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab3SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab3SelectYearHalf" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">Эхний хагас</option><option value="2">Сүүлийн хагас</option></select>
                                </div> 
                            </div>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="width:80px; top:5px; z-index:5; right:435px;">
                                <select id="pTab3SelectBranchGazar" name="pTab3SelectBranchGazar" runat="server" class="form-control" style="padding:1px;"></select>
                            </div>
                            <div class="Colvis TableTools" style="right:520px; top:4px; z-index:5; margin-top:7px;">
                                <label>Газар: </label>
                            </div>
                            <div class="Colvis TableTools" style="right:385px; top:4px; z-index:5; margin-top:7px;text-align: right;"><label>Төрөл: </label></div>
                            <div class="Colvis TableTools" style="right:125px; top:4px; z-index:5; width: 255px;">
                                <select id="pTab3SelectType" runat="server" name="pTab3SelectType" class="form-control" style="padding:1px;">
                                </select>
                            </div>
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
                        <li id="pTab4t2Li" runat="server" onclick="pDatabindTabs(this)" class="active">
                            <a data-toggle="tab" href="#pTab4t2">Хэрэгжилтийн мэдээ</a>
                        </li>
                        <li id="pTab4t4Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab4t4">Дэлгэрэнгүй тайлан</a>
                        </li>
                        <li id="pTab4t3Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab4t3">Удаашралтай шийдвэр</a>
                        </li>
                        <li id="pTab4t1Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab4t1">Биелэлт (шийдвэрээр)</a>
                        </li>
                        <li id="pTab4t5Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab4t5">Биелэлт (газруудаар)</a>
                        </li>
                        <li id="pTab4t6Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab4t6">Хяналт</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="pTab4t2" class="tab-pane active">
                            <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                <div style="width:70%; float:left;">
                                    <div style="width:125px; float:left; margin-right:10px;"><select id="pTab4t2SelectYearHalf" name="pTab4t2SelectYearHalf" runat="server" class="form-control" style="padding:1px"><option value="1">Эхний хагас</option><option value="2">Сүүлийн хагас</option></select></div>
                                    <div style="width:60px; float:left; margin-right:10px;"><select id="pTab4t2SelectYear" name="pTab4t2SelectYear" runat="server" class="form-control" style="padding:1px"><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option></select></div>
                                    <div style="width:5px; float:left; margin-right:10px; margin-top: 7px;">-</div>
                                    <div style="width:60px; float:left; margin-right:10px;"><select id="pTab4t2SelectYear2" name="pTab4t2SelectYear2" runat="server" class="form-control" style="padding:1px"><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option></select></div>
                                    <div style="width:107px; float:left; margin-right:10px; padding-top:8px;">Тогтоолын төрөл: </div>
                                    <div style="width:225px; float:left; margin-right:10px;"><span class="smart-form">
                                        <label class="select">
                                        <select id="pTab4t2SelectType" runat="server" name="pTab4t2SelectType" size="1" aria-controls="dt_basic">
                                        </select><i></i>
                                        </label>
                                        </span>
                                    </div>
                                    <div style="width:30px; float:left; margin-right:10px; padding-top:8px;">Хувь: </div>
                                    <div style="width:80px; float:left; margin-right:10px;"><span class="smart-form">
                                        <label class="select">
                                        <select id="pTab4t2SelectEval" name="pTab4t2SelectEval" size="1" aria-controls="dt_basic">
                                            <option value="all">Бүгд</option>
                                            <option value="-">-</option>
                                            <option value="0">0 %</option>
                                            <option value="10">10 %</option>
                                            <option value="30">30 %</option>
                                            <option value="50">50 %</option>
                                            <option value="70">70 %</option>
                                            <option value="90">90 %</option>
                                            <option value="100">100 %</option>
                                        </select><i></i>
                                        </label>
                                        </span>
                                    </div>
                                </div>
                                <div style="text-align:right; width:30%; float:left;">
                                    <div class="btn-group pull-right">
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab4t2', 'ТогтоолХэрэгжилтийнМэдээ')">
                                            <i class="fa fa-file-word-o"></i>
                                        </a>
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab4t2')">
                                            <i class="fa fa-print"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div id="loaderTab4t2" class="search-background">
                                <label>
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </label>
                            </div> 
                            <div id="divpTab4t2" runat="server" class="reports" style="margin:0 10px 10px 10px;">     
                                <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                    ХУУЛЬ ТОГТООМЖ, ЕРӨНХИЙЛӨГЧИЙН ЗАРЛИГ, ЗАСГИЙН ГАЗРЫН ШИЙДВЭРИЙН ХЭРЭГЖИЛТИЙН МЭДЭЭ
                                </div>                   
                                <div style="text-align:right; margin:0;">
                                    ( <label id="divpTab4t2Year" runat="server">0000</label> оны <label id="divpTab4t2YearHalf" runat="server"></label> жилийн байдлаар )
                                </div>
                                <div id="divpTab4t2Datatable" runat="server" style="display:block;"></div>                  
                            </div>
                        </div>
                        <div id="pTab4t3" class="tab-pane fade">
                            <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                <div style="width:70%; float:left;">
                                    <div style="width:125px; float:left; margin-right:10px;"><select id="pTab4t3SelectYearHalf" name="pTab4t3SelectYearHalf" runat="server" class="form-control" style="padding:1px"><option value="1">Эхний хагас</option><option value="2">Сүүлийн хагас</option></select></div>
                                    <div style="width:60px; float:left; margin-right:10px;"><select id="pTab4t3SelectYear" name="pTab4t3SelectYear" runat="server" class="form-control" style="padding:1px"><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option></select></div>
                                    <div style="width:5px; float:left; margin-right:10px; margin-top: 7px;">-</div>
                                    <div style="width:60px; float:left; margin-right:10px;"><select id="pTab4t3SelectYear2" name="pTab4t3SelectYear2" runat="server" class="form-control" style="padding:1px"><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option></select></div>
                                    <div style="width:107px; float:left; margin-right:10px; padding-top:8px;">Тогтоолын төрөл: </div>
                                    <div style="width:225px; float:left; margin-right:10px;"><span class="smart-form">
                                        <label class="select">
                                        <select id="pTab4t3SelectType" runat="server" name="pTab4t3SelectType" size="1" aria-controls="dt_basic">
                                        </select><i></i>
                                        </label>
                                        </span>
                                    </div>
                                </div>
                                <div style="text-align:right; width:30%; float:left;">
                                    <div class="btn-group pull-right">
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab4t3', 'ТогтоолУдаашралтайШийдвэр')">
                                            <i class="fa fa-file-word-o"></i>
                                        </a>
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab4t3')">
                                            <i class="fa fa-print"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div id="loaderTab4t3" class="search-background">
                                <label>
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </label>
                            </div> 
                            <div id="divpTab4t3" runat="server" class="reports" style="margin:0 10px 10px 10px;">     
                                <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                    ХУУЛЬ ТОГТООМЖ, ЕРӨНХИЙЛӨГЧИЙН ЗАРЛИГ, ЗАСГИЙН ГАЗРЫН ШИЙДВЭРИЙН ХЭРЭГЖИЛТ НЬ УДААШИРСАН БОЛОН ТАСАРЧ БОЛЗОШГҮЙ ЗААЛТЫН ЖАГСААЛТ
                                </div>                   
                                <div style="text-align:right; margin:0;">
                                    ( <label id="divpTab4t3Year" runat="server">0000</label> оны <label id="divpTab4t3YearHalf" runat="server"></label> жилийн байдлаар )
                                </div>
                                <div id="divpTab4t3Datatable" runat="server" style="display:block;"></div>                  
                            </div>
                        </div>
                        <div id="pTab4t4" class="tab-pane fade">
                            <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                <div style="width:80%; float:left;">
                                    <div style="width:125px; float:left; margin-right:10px;"><select id="pTab4t4SelectYearHalf" name="pTab4t4SelectYearHalf" runat="server" class="form-control" style="padding:1px"><option value="1">Эхний хагас</option><option value="2">Сүүлийн хагас</option></select></div>
                                    <div style="width:60px; float:left; margin-right:10px;"><select id="pTab4t4SelectYear" name="pTab4t4SelectYear" runat="server" class="form-control" style="padding:1px"><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option></select></div>
                                    <div style="width:5px; float:left; margin-right:10px; margin-top: 7px;">-</div>
                                    <div style="width:60px; float:left; margin-right:10px;"><select id="pTab4t4SelectYear2" name="pTab4t4SelectYear2" runat="server" class="form-control" style="padding:1px"><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option></select></div>
                                    <div style="width:107px; float:left; margin-right:10px; padding-top:8px;">Тогтоолын төрөл: </div>
                                    <div style="width:225px; float:left; margin-right:10px;"><span class="smart-form">
                                        <label class="select">
                                        <select id="pTab4t4SelectType" runat="server" name="pTab4t4SelectType" size="1" aria-controls="dt_basic">
                                        </select><i></i>
                                        </label>
                                        </span>
                                    </div>
                                    <div style="width:30px; float:left; margin-right:10px; padding-top:8px;">Хувь: </div>
                                    <div style="width:80px; float:left; margin-right:10px;"><span class="smart-form">
                                        <label class="select">
                                        <select id="pTab4t4SelectEval" name="pTab4t2SelectEval" size="1" aria-controls="dt_basic">
                                            <option value="all">Бүгд</option>
                                            <option value="-">-</option>
                                            <option value="0">0 %</option>
                                            <option value="10">10 %</option>
                                            <option value="30">30 %</option>
                                            <option value="50">50 %</option>
                                            <option value="70">70 %</option>
                                            <option value="90">90 %</option>
                                            <option value="100">100 %</option>
                                        </select><i></i>
                                        </label>
                                        </span>
                                    </div>
                                    <div style="width:66px; float:left; margin-right:10px; line-height: 13px; text-align: right;">Тайлагнасан<br />эсэх: </div>
                                    <div style="width:120px; float:left; margin-right:10px;"><span class="smart-form">
                                        <label class="select">
                                        <select id="pTab4t4SelectIsImpl" name="pTab4t4SelectIsImpl" size="1" aria-controls="dt_basic">
                                            <option value="all">Бүгд</option>
                                            <option value="1">Тайлагнасан</option>
                                            <option value="0">Тайлагнаагүй</option>
                                        </select><i></i>
                                        </label>
                                        </span>
                                    </div>
                                </div>
                                <div style="text-align:right; width:20%; float:left;">
                                    <div class="btn-group pull-right">
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab4t4', 'ТогтоолДэлгэрэнгүйТайлан')">
                                            <i class="fa fa-file-word-o"></i>
                                        </a>
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab4t4')">
                                            <i class="fa fa-print"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div id="loaderTab4t4" class="search-background">
                                <label>
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </label>
                            </div> 
                            <div id="divpTab4t4" runat="server" class="reports" style="margin:0 10px 10px 10px;">     
                                <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                    ХУУЛЬ ТОГТООМЖ, ЕРӨНХИЙЛӨГЧИЙН ЗАРЛИГ, ЗАСГИЙН ГАЗРЫН ШИЙДВЭРИЙН ХЭРЭГЖИЛТИЙН ТУХАЙ ДЭЛГЭРЭНГҮЙ ТАНИЛЦУУЛГА
                                </div>                   
                                <div style="text-align:right; margin:0;">
                                    ( <label id="divpTab4t4Year" runat="server">0000</label> оны <label id="divpTab4t4YearHalf" runat="server"></label> жилийн байдлаар )
                                </div>
                                <div id="divpTab4t4Datatable" runat="server" style="display:block;"></div>                  
                            </div>
                        </div>
                        <div id="pTab4t1" class="tab-pane">
                            <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                <div style="width:70%; float:left;">
                                    <div style="width:125px; float:left; margin-right:10px;"><select id="pTab4t1SelectYearHalf" name="pTab4t1SelectYearHalf" runat="server" class="form-control" style="padding:1px"><option value="1">Эхний хагас</option><option value="2">Сүүлийн хагас</option></select></div>
                                    <div style="width:60px; float:left; margin-right:10px;"><select id="pTab4t1SelectYear" name="pTab4t1SelectYear" runat="server" class="form-control" style="padding:1px"><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option></select></div>
                                    <div style="width:5px; float:left; margin-right:10px; margin-top: 7px;">-</div>
                                    <div style="width:60px; float:left; margin-right:10px;"><select id="pTab4t1SelectYear2" name="pTab4t1SelectYear2" runat="server" class="form-control" style="padding:1px"><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option></select></div>
                                </div>
                                <div style="text-align:right; width:30%; float:left;">
                                    <img id="pTab4t1ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" title="PDF руу татах" onclick="exportPdf('#divpTab4t1')" />
                                    <img id="pTab4t1ExportWord" src="../img/word-icon.png" style="cursor:pointer;" title="Word руу татах" onclick="exportWord('#divpTab4t1')"/>
                                    <img id="pTab4t1ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" title="Excel руу татах" onclick="exportExcel('#divpTab4t1')"/>
                                    <button id="pTab4t1Print" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divpTab4t1')"><span class="fa fa-print"></span> Хэвлэх </button>
                                    <button id="pTab4t1Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                                </div>
                            </div>
                            <div id="loaderTab4t1" class="search-background">
                                <label>
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </label>
                            </div> 
                            <div id="divpTab4t1" runat="server" class="reports">
                                <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                    ХУУЛЬ ТОГТООМЖ, ЕРӨНХИЙЛӨГЧИЙН ЗАРЛИГ, ЗАСГИЙН ГАЗРЫН ШИЙДВЭРИЙН ХЭРЭГЖИЛТИЙН ДҮН
                                </div>                   
                                <div style="text-align:right; margin:0;">
                                    ( <label id="divpTab4t1Year" runat="server">0000</label> оны <label id="divpTab4t1YearHalf" runat="server"></label> жилийн байдлаар )
                                </div>
                                <div id="divpTab4t1Datatable" runat="server" style="display:block;"></div>                  
                            </div>
                        </div>
                        <div id="pTab4t5" class="tab-pane fade">
                            <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                <div style="width:70%; float:left;">
                                    <div style="width:125px; float:left; margin-right:10px;"><select id="pTab4t5SelectYearHalf" name="pTab4t5SelectYearHalf" runat="server" class="form-control" style="padding:1px"><option value="1">Эхний хагас</option><option value="2">Сүүлийн хагас</option></select></div>
                                    <div style="width:60px; float:left; margin-right:10px;"><select id="pTab4t5SelectYear" name="pTab4t1SelectYear" runat="server" class="form-control" style="padding:1px"><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option></select></div>
                                    <div style="width:5px; float:left; margin-right:10px; margin-top: 7px;">-</div>
                                    <div style="width:60px; float:left; margin-right:10px;"><select id="pTab4t5SelectYear2" name="pTab4t5SelectYear2" runat="server" class="form-control" style="padding:1px"><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option></select></div>
                                </div>
                                <div style="text-align:right; width:30%; float:left;">
                                    <img src="../img/pdf-icon.png" style="cursor:pointer;" title="PDF руу татах" onclick="exportPdf('#divpTab4t5')" />
                                    <img src="../img/word-icon.png" style="cursor:pointer;" title="Word руу татах" onclick="exportWord('#divpTab4t5')"/>
                                    <img src="../img/excel-icon.png" style="cursor:pointer;" title="Excel руу татах" onclick="exportExcel('#divpTab4t5')"/>
                                    <button class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divpTab4t5')"><span class="fa fa-print"></span> Хэвлэх </button>
                                    <button id="pTab4t5Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                                </div>
                            </div>
                            <div id="loaderTab4t5" class="search-background">
                                <label>
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </label>
                            </div> 
                            <div id="divpTab4t5" runat="server" class="reports">
                                <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                    Дээд байгууллагын тогтоол, шийдвэрийн биелэлтийн байдал
                                </div>                   
                                <div style="text-align:right; margin:0;">
                                    ( <label id="divpTab4t5Year" runat="server">0000</label> оны <label id="divpTab4t5YearHalf" runat="server"></label> жилийн байдлаар )
                                </div>
                                <div id="divpTab4t5Datatable" runat="server" style="display:block;"></div>                  
                            </div>
                        </div>
                        <div id="pTab4t6" class="tab-pane">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab4t6SelectYear" runat="server" class="form-control" style="padding:1px">
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
                                            <select id="pTab4t6SelectYearHalf" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">Эхний хагас жил</option>
                                                <option value="2">Сүүлийн хагас жил</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab4t6', 'Дээд байгууллагын шийдвэр хяналтын тайлан')">
                                                <i class="fa fa-file-word-o"></i>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab4t6')">
                                                <i class="fa fa-print"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="loaderTab4t6" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divpTab4t6" class="reports" style="margin:0 10px 10px 10px;">
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                        ДЭЭД БАЙГУУЛЛАГЫН ШИЙДВЭР /ХЯНАЛТЫН ТАЙЛАН/
                                    </div>
                                    <div style="text-align: right; font-size: 14px; padding-bottom: 3px; text-transform: lowercase; line-height: 5px;">
                                        (<label id="pTab4t6Year" runat="server"></label> 
                                        ОНЫ 
                                        <label id="pTab4t6YearHalf" runat="server"></label>ИЙН БАЙДЛААР)
                                    </div>
                                    <div id="divpTab4t6Datatable"></div>
                                </div>
                            </div>
                        </div>
                    </div>                    
                </div>
                <div id="pTab5" runat="server" class="tab-pane">
                    <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                            <h2> Хяналтанд авсан заалтын төлөвлөгөөний үнэлгээ </h2>
                            <div class="widget-toolbar">
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab5SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="pTab5SelectYearHalf" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">Эхний хагас</option><option value="2">Сүүлийн хагас</option></select>
                                </div> 
                            </div>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="width:80px; top:5px; z-index:5; right:435px;">
                                <select id="pTab5SelectBranchGazar" name="pTab5SelectBranchGazar" runat="server" class="form-control" style="padding:1px;"></select>
                            </div>
                            <div class="Colvis TableTools" style="right:520px; top:4px; z-index:5; margin-top:7px;">
                                <label>Газар: </label>
                            </div>
                            <div class="Colvis TableTools" style="right:385px; top:4px; z-index:5; margin-top:7px;text-align: right;"><label>Төрөл: </label></div>
                            <div class="Colvis TableTools" style="right:125px; top:4px; z-index:5; width: 255px;">
                                <select id="pTab5SelectType" runat="server" name="pTab5SelectType" class="form-control" style="padding:1px;">
                                </select>
                            </div>
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
			        <h4 class="modal-title">Шийдвэр&nbsp;<span id="pTab1ModalHeaderLabel"></span></h4>
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
                                    <label class="control-label">*Тогтоолын төрөл</label>
									<select id="pTab1ModalSelectType" name="pTab1ModalSelectType" runat="server" class="form-control" style="padding: 5px;">
								        <option value="">- Сонго -</option>
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
									<textarea id="pTab1ModalInputName" name="pTab1ModalInputName" class="form-control" placeholder="Тушаалын нэр" rows="2" maxlength="1000"></textarea>
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
                                <div class="col-md-6">
                                    <label class="control-label">Хүлээн авсан огноо</label>
									<input id="pTab1ModalInputReceivedate" name="pTab1ModalInputReceivedate" type="text" class="form-control" placeholder="Хүлээн авсан огноо" />
                                </div>
                                <div class="col-md-6">
                                    <label class="control-label">Биелүүлэх хугацаа</label>
									<input id="pTab1ModalInputDonedate" name="pTab1ModalInputDonedate" type="text" class="form-control" placeholder="Биелүүлэх хугацаа" />
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <div class="form-group" style="margin:10px 0 0 0; display:block; overflow:hidden;">
                            <div class="col-md-2" style="font-size:13px;">
                                *Хавсралт файл:
                            </div>
                            <div class="col-md-10" style="font-style:italic;padding-left: 0;">
                                <a id="pTab1ModalAttachBtn" class="btn btn-link btn-xs" href="javascript:void(0);" style="padding:0px; border:none;" download="">Файл хавсаргаагүй байна...</a>
                            </div>
                        </div>
                        <div class="form-group" style="margin:0; display:block; overflow:hidden;">
                            <div class="col-md-2">
                                <a id="pTab1ModalAttachDelete" class="btn btn-link btn-xs" href="javascript:void(0);"><i class="fa fa-trash-o"></i> файл устгах</a>
                            </div>
                            <div class="col-md-10" style="padding-left: 0;">
                                <input id="pTab1ModalAttachInput" type="file" class="btn btn-default">
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="pTab1ZaaltModalFieldset" class="hide">
                        <div class="row">
                            <div class="col-md-12">
                                <label class="control-label">*ЗААЛТЫН ТӨЛӨВЛӨГӨӨ /<small><em>Шинээр оруулж буй шийдвэрд заалтын төлөвлөгөө заавал оруулна уу!</em></small>/</label>
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
		        </div>
		        <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Болих</button>
			        <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах</button>
		        </div>
            </form>
        </div>
	</div>
</div>
<div id="pTab1ModalInfo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">  
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
                                    <label class="control-label">*Тогтоолын төрөл</label>
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
                                    <label class="control-label">*Тогтоол</label>
									<select id="pTab2ModalSelectTogtool" name="pTab2ModalSelectTogtool" runat="server" class="form-control" style="padding: 5px;" disabled>
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
                                    <label class="control-label">*Хэрэгжүүлэх эцсийн хугацаа</label>
									<input id="pTab2ModalInputEnddate" name="pTab2ModalInputEnddate" type="text" class="form-control" placeholder="Хэрэгжүүлэх эцсийн хугацаа" />
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
<div id="pTab2ModalInfo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">  
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			
		</div>  
	</div>  
</div>
<div id="pTab1t3Modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="pTab1t3ModalForm">
                <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			        <h4 class="modal-title">Тогтоолын төрөл&nbsp;<span id="pTab1t3ModalHeaderLabel"></span></h4>
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
<div id="pTab3Modal" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false" style="display:none;z-index:10009;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            
        </div>
    </div>
</div>

<%--<div id="zaaltImplModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> × </button>
                <h4 class="modal-title" >Заалтын биелэлт&nbsp;<span id="pTab3ModalHeaderLabel"></span></h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div id="pTab3ID" class="form-group hide"></div> 
                        <div class="form-group" style="margin-bottom:15px;">
                            Он: <label id="togtoolImplModalCurrentYr" runat="server"></label>&nbsp;|&nbsp;<label id="togtoolImplModalCurrentHalfYr" runat="server"></label><label id="togtoolImplModalCurrentHalfYr_Hide" runat="server" Class="hide"></label>
                        </div> 
                        <div class="form-group" style="height:auto;">
                            Тогтоолын төрөл: <label id="pTab3ModalType" runat="server"></label><br />
                            Тогтоолын мэдээлэл: <label id="pTab3ModalTogtool" runat="server"></label><br />
                            Заалтын мэдээлэл: <label id="pTab3ModalZaalt" runat="server"></label>
                        </div>
                        <ul class="nav nav-tabs">
							<li class="active">
								<a href="#pTab3ImplTab1" data-toggle="tab">Хяналтад байгаа заалтыг хэрэгжүүлэх<br /> талаар төлөвлөсөн арга хэмжээ</a>
							</li>
							<li>
								<a href="#pTab3ImplTab2" data-toggle="tab">Хэрэгжилтийн явц, гарсан үр дүн<br /></a>
							</li>
							<li>
								<a href="#pTab3ImplTab3" data-toggle="tab">Хүчингүй болсон буюу хяналтаас хассан тухай<br /> тэмдэглэл/ өөрчлөлт оруулах тухай санал, дүгнэлт</a>
							</li>
						</ul>
                        <div class="tab-content padding-10">
							<div class="tab-pane active" id="pTab3ImplTab1">
								<div class="form-group" style="margin:0px; display:block; overflow:hidden;">
                                    <div class="col-md-12" style="padding:0px;">
                                        <div style="width:100%; display: block; overflow: hidden; padding-bottom: 5px;">
                                            <div style="width:15%; float:right; text-align:right;">
                                                Тэмдэгт: <label id="pTab3ModalCharLength1" runat="server">0</label>/12000
                                            </div>
                                            <div style="width:17%; float:right; text-align:right;">
                                                <button id="togtoolImplDelete1" type="button" class="btn btn-labeled btn-danger" style="font-size: 12px; margin-top: -5px;" onclick="togtoolImplDelete(1)">
                                                    <span class="btn-label" style="padding: 3px 7px 3px 5px;">
                                                        <i class="fa fa-trash-o"></i>
                                                    </span>Биелэлт устгах
                                                </button>
                                            </div> 
                                            <div style="width:24%; float:right; text-align:right;">
                                                <button id="togtoolImplDownload1" type="button" class="btn btn-labeled btn-warning" style="font-size: 12px; margin-top: -3px;" onclick="togtoolImplDownload(1)">
                                                    <span class="btn-label" style="padding: 3px 7px 3px 5px; width: 21px; height: 21px;">
                                                        <i class="glyphicon glyphicon-download-alt"></i>
                                                    </span>Өмнөх хагас жилээс татах
                                                </button>
                                            </div>                                    
                                        </div>
                                        <textarea id="pTab3ModalImpl1" name="pTab3ModalImpl1"></textarea>
                                        <script>
                                            CKEDITOR.replace('pTab3ModalImpl1', {
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

                                            var editor = CKEDITOR.instances.pTab3ModalImpl1;
                                            editor.on('key', function (evt) {
                                                $("#pTab3ModalCharLength1").text(replaceDisplayToDatabase($.trim(evt.editor.getData())).length);
                                            }, editor.element.$);
                                        </script>
                                    </div>
                                </div>
                                <div style="text-align:center;margin-top: 15px; padding: 19px 0 0; text-align: right; border-top: 1px solid #e5e5e5;">
                                    <button class="btn btn-success btn-sm" type="button" onclick="zaaltImplSave(1)"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
                                </div>
							</div>
							<div class="tab-pane fade" id="pTab3ImplTab2">
								<div class="form-group" style="margin:0px; display:block; overflow:hidden;">
                                    <div class="col-md-12" style="padding:0px;"> 
                                        <div style="width:100%; display: block; overflow: hidden; padding-bottom: 5px;">
                                            <div style="width:15%; float:right; text-align:right;">
                                                Тэмдэгт: <label id="pTab3ModalCharLength2" runat="server">0</label>/12000
                                            </div>
                                            <div style="width:17%; float:right; text-align:right;">
                                                <button id="togtoolImplDelete2" type="button" class="btn btn-labeled btn-danger" style="font-size: 12px; margin-top: -5px;" onclick="togtoolImplDelete(2)">
                                                    <span class="btn-label" style="padding: 3px 7px 3px 5px;">
                                                        <i class="fa fa-trash-o"></i>
                                                    </span>Биелэлт устгах
                                                </button>
                                            </div>
                                            <div style="width:24%; float:right; text-align:right;">
                                                <button id="togtoolImplDownload2" type="button" class="btn btn-labeled btn-warning" style="font-size: 12px; margin-top: -3px;" onclick="togtoolImplDownload(2)">
                                                    <span class="btn-label" style="padding: 3px 7px 3px 5px; width: 21px; height: 21px;">
                                                        <i class="glyphicon glyphicon-download-alt"></i>
                                                    </span>Өмнөх хагас жилээс татах
                                                </button>
                                            </div>                                 
                                        </div>
                                        <textarea id="pTab3ModalImpl2" name="pTab3ModalImpl2"></textarea>
                                        <script>
                                            CKEDITOR.replace('pTab3ModalImpl2', {
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

                                            var editor = CKEDITOR.instances.pTab3ModalImpl2;
                                            editor.on('key', function (evt) {
                                                $("#pTab3ModalCharLength2").text(replaceDisplayToDatabase($.trim(evt.editor.getData())).length);
                                            }, editor.element.$);
                                        </script>
                                    </div>
                                </div>
                                <div style="text-align:center;margin-top: 15px; padding: 19px 0 0; text-align: right; border-top: 1px solid #e5e5e5;">
                                    <button class="btn btn-success btn-sm" type="button" onclick="zaaltImplSave(2)"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
                                </div>
							</div>
							<div class="tab-pane fade" id="pTab3ImplTab3">
								<div class="form-group" style="margin:0px; display:block; overflow:hidden;">
                                    <div class="col-md-12" style="padding:0px;"> 
                                        <div style="width:100%; display: block; overflow: hidden; padding-bottom: 5px;">
                                            <div style="width:15%; float:right; text-align:right;">
                                                Тэмдэгт: <label id="pTab3ModalCharLength3" runat="server">0</label>/12000
                                            </div>
                                            <div style="width:17%; float:right; text-align:right;">
                                                <button id="togtoolImplDelete3" type="button" class="btn btn-labeled btn-danger" style="font-size: 12px; margin-top: -5px;" onclick="togtoolImplDelete(3)">
                                                    <span class="btn-label" style="padding: 3px 7px 3px 5px;">
                                                        <i class="fa fa-trash-o"></i>
                                                    </span>Биелэлт устгах
                                                </button>
                                            </div>
                                            <div style="width:24%; float:right; text-align:right;">
                                                <button id="togtoolImplDownload3" type="button" class="btn btn-labeled btn-warning" style="font-size: 12px; margin-top: -3px;" onclick="togtoolImplDownload(3)">
                                                    <span class="btn-label" style="padding: 3px 7px 3px 5px; width: 21px; height: 21px;">
                                                        <i class="glyphicon glyphicon-download-alt"></i>
                                                    </span>Өмнөх хагас жилээс татах
                                                </button>
                                            </div>                               
                                        </div>
                                        <textarea id="pTab3ModalImpl3" name="pTab3ModalImpl3"></textarea>
                                        <script>
                                            CKEDITOR.replace('pTab3ModalImpl3', {
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

                                            var editor = CKEDITOR.instances.pTab3ModalImpl3;
                                            editor.on('key', function (evt) {
                                                $("#pTab3ModalCharLength3").text(replaceDisplayToDatabase($.trim(evt.editor.getData())).length);
                                            }, editor.element.$);
                                        </script>
                                    </div>
                                </div>
                                <div style="text-align:center;margin-top: 15px; padding: 19px 0 0; text-align: right; border-top: 1px solid #e5e5e5;">
                                    <button class="btn btn-success btn-sm" type="button" onclick="zaaltImplSave(3)"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
                                </div>
							</div>
						</div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>--%>
<div id="togtoolShowModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> × </button>
                <h4 class="modal-title" >Тогтоолын мэдээлэл</h4>
            </div>
            <div class="modal-body">
                <div id="togtoolShowModalIsShow" runat="server" class="form-group hide"></div>
                <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                    <label class="col-md-2 control-label">Тогтоолын төрөл</label>
                    <div id="togtoolShowModalType" runat="server" class="col-md-10">
                                    
                    </div>
                </div> 
                <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                    <label class="col-md-2 control-label">Эрх зүйн актын нэр</label>
                    <div id="togtoolShowModalAktName" runat="server" class="col-md-10">
                                    
                    </div>
                </div> 
                <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                    <label class="col-md-2 control-label">Батлагдсан огноо</label>
                    <div id="togtoolShowModalSuccessDate" runat="server" class="col-sm-4">
                                                                           
                    </div>
                </div>
                <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                    <label class="col-md-2 control-label">Дугаар</label>
                    <div id="togtoolShowModalNo" runat="server" class="col-md-10">
                                    
                    </div>
                </div> 
                <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                    <label class="col-md-2 control-label">Хариуцах газар</label>
                    <div id="togtoolShowModalGazar" runat="server" class="col-sm-10">
                                    
                    </div>
                </div> 
                <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                    <label class="col-md-2 control-label">Хяналтанд авсан заалт</label>
                    <div id="togtoolShowModalZaalt" runat="server" class="col-sm-10">
                                    
                    </div>
                </div> 
                <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                    <label class="col-md-2 control-label">Хүлээн авсан огноо</label>
                    <div id="togtoolShowModalReceivedDate" runat="server" class="col-sm-4">
                                                                           
                    </div>
                    <label class="col-md-2 control-label">Биелүүлэх хугацаа</label>
                    <div id="togtoolShowModalDoneDate" runat="server" class="col-sm-4">
                                                                           
                    </div>
                </div>  
                <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                    <label class="col-md-2 control-label">Хавсралт файл</label>
                    <div class="col-sm-10">
                        <a id="togtoolShowModalAttach" runat="server" class="btn btn-link btn-xs" style="padding:0px; border:none;" href="#"></a>      
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <div id="togtoolShowModalModifyDescription" runat="server" class="form-group" style="display:block; overflow:hidden; margin: 0px;">
                    
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    //pageSetUp();
    var globalAjaxVar = null;
    var pagefunction = function () {
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TogtoolTypeListForDDL",
            data: '{}',
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
                $("#pTab4t2SelectType").html('<option value="">Бүгд</option>' + valData);
                $("#pTab4t4SelectType").html('<option value="">Бүгд</option>' + valData);
                $("#pTab4t3SelectType").html('<option value="">Бүгд</option>' + valData);
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
                    dataBindTab4t2Datatable();
                }
                else if ($('#pTab5Li').attr('class') == 'active') {
                    pTab5SetFirstControls();
                }
                if ($('#togtoolShowModalIsShow').text() == 'true') $('#togtoolShowModal').modal('show');
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
            if ($.trim($('#divpTab4t2Datatable').html()) == "") {
                dataBindTab4t2Datatable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab4t2Li') {
            if ($.trim($('#divpTab4t2Datatable').html()) == "") {
                dataBindTab4t2Datatable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab4t3Li') {
            if ($.trim($('#divpTab4t3Datatable').html()) == "") {
                dataBindTab4t3Datatable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab4t4Li') {
            if ($.trim($('#divpTab4t4Datatable').html()) == "") {
                dataBindTab4t4Datatable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab4t1Li') {
            if ($.trim($('#divpTab4t1Datatable').html()) == "") {
                dataBindTab4t1Datatable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab4t5Li') {
            if ($.trim($('#divpTab4t5Datatable').html()) == "") {
                dataBindTab4t5Datatable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab4t6Li') {
            if ($.trim($('#divpTab4t6Datatable').html()) == "") {
                dataBindTab4t6Datatable();
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
                $("#pTab1SelectBranchGazar").html('<option value="">Бүгд<option>' + valData);
                if (!funcCheckRoles('1,15,30')) {
                    $('#pTab1SelectBranchGazar').val(userGazarId);
                    $('#pTab1SelectBranchGazar').prop('disabled', false);
                }
                else {
                    $('#pTab1SelectBranchGazar').val(userGazarId);
                    $('#pTab1SelectBranchGazar').prop('disabled', false);
                }
                dataBindTab1Datatable();
           },
           failure: function (response) {
               alert(response.d);
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
            url: "../ws/ServiceMain.svc/TogtoolTab1Datatable",
            data: '{"yr":"' + $('#pTab1SelectYear option:selected').val() + '","type":"' + $('#pTab1SelectType option:selected').val() + '", "brid":"' + $('#pTab1SelectBranchGazar option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (funcCheckRoles('1,15')) valIsEdit = '1';                
                else isDisabled = " disabled";
                valData += "<div class=\"jarviswidget-editbox\"></div>";
                valData += "<div class=\"widget-body no-padding\" style=\"margin: -13px 0 0;\">";
                valData += "<table id=\"pTab1Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Батлагдсан<br>огноо</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Шийдвэрийн<br>дугаар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Шийдвэрийн утга</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Файл</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах<br />газар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Засварлах</th>";
                valData += "<th><i class=\"fa fa-fw fa-envelope text-muted hidden-md hidden-sm hidden-xs\"></i></th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.TOGTOOL_ID + "\" data-typeid=\"" + value.TOGTOOL_TYPE_ID + "\" data-brlistid=\"" + value.BRIDLIST + "\" data-receivedate=\"" + value.RECEIVE_DATE + "\" data-donedate=\"" + value.DONE_DATE + "\">";
                    valData += "<td class=\"text-center\">" + value.ROWNO + "</td>";
                    valData += "<td>" + value.SUCCES_DATE + "</td>";
                    valData += "<td class=\"text-center\">" + replaceDatabaseToDisplay(value.NO) + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.AKT_NAME) + "</td>";
                    valData += "<td>";
                    if (value.FILE_NAME != "") {
                        valData += "<div class=\"btn-group\">";
                        valData += "<a href=\"../files/togtool/" + value.FILE_NAME + "\" class=\"btn btn-default btn-xs\" download title=\"Хавсаргасан файл татах\"><i class=\"fa fa-download\"></i></a>";
                        valData += "<a href=\"../pg/togtoolTab1AttachShowModal.aspx?id=" + value.TOGTOOL_ID + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTab1AttachShowModal\" data-toggle=\"modal\"><i class=\"fa fa-eye\"></i></a>";
                        valData += "</div>";
                    }
                    valData += "</td>";
                    valData += "<td class=\"text-center\">" + value.BRNAMELIST + "</td>";
                    valData += "<td>";
                    valData += "<div class=\"btn-group\">";
                    if (valIsEdit == "1") {
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab1(this,'засах');\" data-target=\"#pTab1Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab1(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                    }
                    valData += "<a href=\"pg/togtoolTab1ModalInfo.aspx?id=" + value.TOGTOOL_ID + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTab1ModalInfo\" data-toggle=\"modal\"><i class=\"fa fa-info\"></i></a>";
                    valData += "</div>";
                    valData += "</td>";
                    if (value.IS_SENTMAIL == "1") valData += "<td><a href=\"javascript:void(0);\" class=\"btn btn-success btn-xs\" disabled=\"\"><i class=\"fa fa-paper-plane\"></i></a></td>";
                    else valData += "<td><a href=\"javascript:void(0);\" class=\"btn btn-warning btn-xs\" onclick=\"sendMailTogtoolModal(this);" + isDisabled + "\"><i class=\"fa fa-envelope\"></i></a></td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_pTab1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab1Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab1Datatable) {responsiveHelper_pTab1Datatable = new ResponsiveDatatablesHelper($('#pTab1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\", \"orderable\": false },{ \"sWidth\": \"65px\" },{ \"sWidth\": \"65px\" },null, { \"sWidth\": \"40px\" },{ \"sWidth\": \"70px\" },{ \"sWidth\": \"55px\" },{ \"sWidth\": \"15px\" }]});";
                valData += "<\/script>";
                valData += "</div>";
                $("#divBindTab1Table").html(valData);
                hideLoader('loaderTab1');
            },
            failure: function (response) {
                alert(response.d);
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
    $("#pTab1SelectBranchGazar").change(function () {
        dataBindTab1Datatable();
    });
    function showAddEditTab1(el, isinsupt) {
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
            dataBindTab1ModalHariutssanGazarListForSelect2('');
            $('#pTab1ModalInputReceivedate').val("");
            $('#pTab1ModalInputDonedate').val("");
            $('#pTab1ModalAttachBtn').html('Файл хавсаргаагүй байна...');
            $('#pTab1ModalAttachBtn').attr('href', 'javascript:void(0);');
            $('#pTab1ModalAttachInput').val('');
        }
        else {
            $('#pTab1ID').html($(el).closest('tr').attr('data-id'));
            $('#pTab1ModalSelectType').val($(el).closest('tr').attr('data-typeid'));
            $('#pTab1ModalInputNo').val($(el).closest('tr').find('td:eq(2)').html());
            $('#pTab1ModalInputSuccessdate').val($(el).closest('tr').find('td:eq(1)').html());
            $('#pTab1ModalInputName').val($(el).closest('tr').find('td:eq(3)').html());
            dataBindTab1ModalHariutssanGazarListForSelect2($(el).closest('tr').attr('data-brlistid'));
            $('#pTab1ModalInputReceivedate').val($(el).closest('tr').attr('data-receivedate'));
            $('#pTab1ModalInputDonedate').val($(el).closest('tr').attr('data-donedate'));
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
    function showDeleteTab1(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(ID) FROM TBL_ZAALT WHERE TOGTOOL_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != "0") {
                    alert("Энэ шийдвэрт хамааралтай заалтын төлөвлөгөө орсон тул устгах боломжгүй байна!");
                }
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "\"Та устгахдаа итгэлтэй байна уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/TOGTOOL_DELETE",
                                data: '{"P_TOGTOOL_ID":"' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab1Datatable();
                                    smallBox('Сонгосон тогтоол', 'Амжилттай устлаа...', '#659265', 3000);
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
                alert(response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab1ModalHariutssanGazarListForSelect2(selectedList) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForSelect2",
            //data: '{"yr":"' + $('#pTab1SelectYear option:selected').val() + '", "selectedList":"' + selectedList + '"}',
            data: '{"yr":"' + $('#indexCurrentYear').html() + '", "selectedList":"' + selectedList + '"}',
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
    function sendMailTogtoolModal(el) {
        $(el).html('<i class="fa fa-refresh fa-spin"></i>');
        $(el).attr("disabled", "disabled");
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TogtoolSendMail",
            data: '{"togtoolid":"' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function () {
                $(el).html('<i class="fa fa-envelope"></i>');
                $(el).removeClass('btn-warning');
                $(el).addClass('btn-success');
                smallBox('Шийдвэр', 'Имэйл амжилттай явлаа', '#659265', 3000);
            },
            failure: function (response) {
                alert(response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
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
                        data: '{"filename":"~/files/togtool/' + $('#pTab1ModalAttachBtn').html() + '"}',
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
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab1ModalInputNo: {
                group: '.col-md-6',
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    stringLength: {
                        max: 10,
                        message: 'Уртдаа 10 тэмдэгт авна'
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
                        message: 'Оруулна уу'
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
            var valHariutssanGazar = '';
            var filename = 'none';
            if ($.trim($('#pTab1ModalSelectHariutssanGazar').val()) != '') valHariutssanGazar = $.trim($('#pTab1ModalSelectHariutssanGazar').val());
            if (valHariutssanGazar != '') {
                if ($('#pTab1ModalAttachBtn').html() != 'Файл хавсаргаагүй байна...')
                    filename = "Шийдвэр " + $('#pTab1SelectYear option:selected').val() + " " + $.trim($('#pTab1ModalInputNo').val()) + "." + $('#pTab1ModalAttachBtn').html().split('.')[$('#pTab1ModalAttachBtn').html().split('.').length - 1];

                if ($('#pTab1ModalHeaderLabel').text() == 'нэмэх') {
                    //if ($('#pTab1ModalZaaltTbody').find('tr').length != 0) {
                        //globalAjaxVar = $.ajax({
                        //    type: "POST",
                        //    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                        //    data: '{"qry":"SELECT COUNT(1) FROM TBL_TOGTOOL WHERE TO_NUMBER(TO_CHAR(TO_DATE(SUCCES_DATE,\'yyyy-mm-dd\'),\'yyyy\'))=' + $('#pTab1SelectYear option:selected').val() + ' AND NO=\'' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputNo').val())) + '\' AND TOGTOOL_TYPE_ID=' + $('#pTab1ModalSelectType option:selected').val() + '"}',
                        //    contentType: "application/json; charset=utf-8",
                        //    dataType: "json",
                        //    success: function (data) {
                        //        if (data.d != "0") alert('ДАВХАРДАЛ: ' + $('#pTab1SelectYear option:selected').val() + 'онд ' + $('#pTab1ModalSelectType option:selected').text() + '-д ' + $.trim($('#pTab1ModalInputNo').val()) + ' дугаартай шийдвэр орсон байна!');
                        //        else {
                                    globalAjaxVar = $.ajax({
                                        type: "POST",
                                        url: "../ws/ServiceMain.svc/TOGTOOL_INSERT",
                                        data: '{"P_TOGTOOL_TYPE_ID":"' + $('#pTab1ModalSelectType option:selected').val() + '", "P_AKT_NAME":"' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputName').val())) + '", "P_SUCCESS_DATE":"' + $.trim($('#pTab1ModalInputSuccessdate').val()) + '", "P_NO":"' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputNo').val())) + '", "P_RECEIVE_DATE":"' + $.trim($('#pTab1ModalInputReceivedate').val()) + '", "P_DONE_DATE":"' + $.trim($('#pTab1ModalInputDonedate').val()) + '", "P_FILE_NAME":"' + filename + '", "P_BRANCHLIST":"' + $.trim($('#pTab1ModalSelectHariutssanGazar').val()) + '", "P_STAFFID":"' + $('#indexUserId').html() + '"}',
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
                                                        url: "../pg/UploadFile.ashx?folder=togtool&filename=" + filename,
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
                                                            window.location = '../#pg/error500.aspx';
                                                        }
                                                    });
                                                }
                                            }
                                            if ($('#pTab1ModalZaaltTbody').find('tr').length != 0) {
                                                //pTab1ZaaltModal INSERT
                                                var valMaxID = '';
                                                globalAjaxVar = $.ajax({
                                                    type: "POST",
                                                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                    data: '{"qry":"SELECT MAX(ID) as ID FROM TBL_TOGTOOL"}',
                                                    contentType: "application/json; charset=utf-8",
                                                    dataType: "json",
                                                    success: function (data) {
                                                        valMaxID = data.d;
                                                        $("#pTab1ModalZaaltTbody tr").each(function (index) {
                                                            globalAjaxVar = $.ajax({
                                                                type: "POST",
                                                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                                                data: '{"qry":"INSERT INTO TBL_ZAALT (ID, TOGTOOL_ID, NAME, CREATED_STAFFID, CREATED_DATE, IS_IMPL) VALUES (TBLLASTID(\'TBL_ZAALT\'), ' + valMaxID + ', \'' + replaceDisplayToDatabase($(this).find('td:eq(1)').html()) + '\', ' + $('#indexUserId').html() + ', sysdate, 0)"}',
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
                                                        smallBox('Шийдвэр', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
                    //}
                    //else {
                    //    alert('Шинээр оруулж буй шийдвэрд заалтын төлөвөлөгөө заавал оруулна уу!');
                    //    $('#pTab1ModalForm').find('.modal-footer').find(':submit').prop('disabled', false);
                    //}
                }
                else {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/TOGTOOL_UPDATE",
                        data: '{"P_TOGTOOL_ID":"' + $('#pTab1ID').text() + '","P_AKT_NAME":"' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputName').val())) + '", "P_SUCCESS_DATE":"' + $.trim($('#pTab1ModalInputSuccessdate').val()) + '", "P_NO":"' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputNo').val())) + '", "P_RECEIVE_DATE":"' + $.trim($('#pTab1ModalInputReceivedate').val()) + '", "P_DONE_DATE":"' + $.trim($('#pTab1ModalInputDonedate').val()) + '", "P_FILE_NAME":"' + filename + '", "P_BRANCHLIST":"' + $.trim($('#pTab1ModalSelectHariutssanGazar').val()) + '", "P_STAFFID":"' + $('#indexUserId').html() + '"}',
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
                                        url: "../pg/UploadFile.ashx?folder=togtool&filename=" + filename,
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
                                            window.location = '../#pg/error500.aspx';
                                        }
                                    });
                                }
                            }
                            dataBindTab1Datatable();
                            $('#pTab1Modal').modal('hide');
                            smallBox('Шийдвэр', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
                $('#pTab1ModalForm').find('.modal-footer').find(':submit').prop('disabled', false);
            }
        }
    });

    //tab1ZaaltModal
    function showAddTab1ZaaltModal(el) {
        var valData = '';
        $('#pTab1ZaaltModalInputName').val("");
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
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            var valData = '';
            valData += '<tr>';
            valData += '<td>' + ($('#pTab1ModalZaaltTbody').find('tr').length + 1) + '</td>';
            valData += '<td>' + $.trim($('#pTab1ZaaltModalInputName').val()) + '</td>';
            valData += '<td><div class="btn-group"><button type="button" class="btn btn-default btn-xs" onclick="showDeleteTab1ZaaltModal(this);"><i class="fa fa-trash-o"></i></button></td>';
            valData += '</tr>';
            $('#pTab1ModalZaaltTbody').append(valData);
            $('#pTab1ZaaltModal').modal('hide');
        }
    });
    function showDeleteTab1ZaaltModal(el) {
        $(el).closest('tr').remove();
    }
    
    //tab2
    function pTab2SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
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
                $("#pTab2SelectBranchGazar").html('<option value="">Бүгд<option>' + valData);
                if (!funcCheckRoles('1,8')) {
                    $('#pTab2SelectBranchGazar').val(userGazarId);
                    $('#pTab2SelectBranchGazar').prop('disabled', false);
                }
                else {
                    $('#pTab2SelectBranchGazar').val(userGazarId);
                    $('#pTab2SelectBranchGazar').prop('disabled', false);
                }
                dataBindTab2Datatable();
            },
            failure: function (response) {
                alert(response.d);
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
            url: "../ws/ServiceMain.svc/TogtoolTab2Datatable",
            data: '{"yr":"' + $('#pTab2SelectYear option:selected').val() + '","type":"' + $('#pTab2SelectType option:selected').val() + '", "brid":"' + $('#pTab2SelectBranchGazar option:selected').val() + '", "isclosed":"' + $('#pTab2SelectIsClosed option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (funcCheckRoles('1,15')) {
                    valIsEdit = '1';
                }
                valData = "<table id=\"pTab2Datatable\" class=\"table table-striped table-bordered table-hover smart-form\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Шийдвэрийн утга</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Төлөвлөгөө</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хэрэгжүүлэх эцсийн хугацаа</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах газар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Засварлах</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хаах</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr class=\"" + value.ENDDATECOLOR + "\" data-id=\"" + value.ZAALT_ID + "\" data-togtooltypeid=\"" + value.TOGTOOL_TYPE_ID + "\" data-togtoolid=\"" + value.TOGTOOL_ID + "\">";
                    valData += "<td class=\"text-center\">" + value.ROWNO + "</td>";
                    valData += "<td><b>Батлагдсан огноо: </b>" + value.SUCCES_DATE + "<br><b>Шийдвэрийн дугаар: </b>" + replaceDatabaseToDisplay(value.TOGTOOL_NO) + "<br/><b>Шийдвэрийн утга: </b>" + replaceDatabaseToDisplay(value.TOGTOOL_NAME) + "<br><b>Биелүүлэх хугацаа: </b>" + value.DONE_DATE + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.ZAALT) + "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">" + value.ENDDATE + "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">" + value.BRNAMELIST + "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">";
                    valData += "<div class=\"btn-group\">";
                    if (valIsEdit == "1") {
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab2(this,'засах');\" data-target=\"#pTab2Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab2(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                    }
                    valData += "<a href=\"pg/togtoolTab2ModalInfo.aspx?id=" + value.ZAALT_ID + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTab2ModalInfo\" data-toggle=\"modal\"><i class=\"fa fa-info\"></i></a>";
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
                valData += "var responsiveHelper_pTab2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab2Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab2Datatable) {responsiveHelper_pTab2Datatable = new ResponsiveDatatablesHelper($('#pTab2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab2Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\", \"orderable\": false },{ \"sWidth\": \"450px\" },null, { \"sWidth\": \"70px\" }, { \"sWidth\": \"70px\" }, { \"sWidth\": \"62px\", \"bSortable\": false }, { \"sWidth\": \"30px\", \"bSortable\": false }]});";
                valData += "<\/script>";
                $("#divBindTab2Table").html(valData);
                hideLoader('loaderTab2');
            },
            failure: function (response) {
                alert(response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab2SelectYear").change(function () {
        pTab2SetFirstControls();
    });
    $("#pTab2SelectType").change(function () {
        dataBindTab2Datatable();
    });
    $("#pTab2SelectBranchGazar").change(function () {
        dataBindTab2Datatable();
    });
    $("#pTab2ModalSelectType").change(function () {
        var valData = '';
        $('#pTab2ModalSelectTogtool').prop('disabled', true);
        if ($('#pTab2ModalSelectType').val() == "") {
            $('#pTab2ModalSelectTogtool').html("<option value=\"\">- Тогтоол сонго -</option>");
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/TogtoolListForDDL",
                data: '{"yr":"' + $('#pTab1SelectYear option:selected').val() + '","type":"' + $('#pTab2ModalSelectType option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.ID + '" title="' + value.TOGTOOL_NAME + '">' + value.TOGTOOL_NAME + '</option>';
                    });
                    $("#pTab2ModalSelectTogtool").html('<option value="">- Сонго -</option>' + valData);
                    $('#pTab2ModalSelectTogtool').prop('disabled', false);
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
    function showAddEditTab2(el, isinsupt) {
        var valData = '';
        $('#pTab2ModalHeaderLabel').text(isinsupt);
        $('#pTab2ModalSpanYear').text($('#pTab2SelectYear option:selected').val());
        if (isinsupt == 'нэмэх') {
            $('#pTab2ID').html('');
            $('#pTab2ModalSelectType').val('');
            $('#pTab2ModalSelectTogtool').html("<option value=\"\">- Тогтоол сонго -</option>");
            $('#pTab2ModalSelectTogtool').prop('disabled', true);
            $('#pTab2ModalInputName').val('');
            $('#pTab2ModalInputEnddate').val('');

        }
        else {
            $('#pTab2ID').html($(el).closest('tr').attr('data-id'));
            $('#pTab2ModalSelectType').val($(el).closest('tr').attr('data-togtooltypeid'));
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/TogtoolListForDDL",
                data: '{"yr":"' + $('#pTab1SelectYear option:selected').val() + '","type":"' + $('#pTab2ModalSelectType option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.ID + '" title="' + value.TOGTOOL_NAME + '">' + value.TOGTOOL_NAME + '</option>';
                    });
                    $("#pTab2ModalSelectTogtool").html('<option value="">- Сонго -</option>' + valData);
                    $('#pTab2ModalSelectTogtool').prop('disabled', false);
                    $("#pTab2ModalSelectTogtool").val($(el).closest('tr').attr('data-togtoolid'));
                },
                failure: function (response) {
                    alert(response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
            $('#pTab2ModalInputName').val($(el).closest('tr').find('td:eq(2)').html());
            $('#pTab2ModalInputEnddate').val($(el).closest('tr').find('td:eq(3)').html());
        }
    }
    function showDeleteTab2(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(ID) FROM TBL_ZAALT_IMPL WHERE ZAALT_ID=' + $(el).closest('tr').attr('data-id') + ' AND (IMPL IS NOT NULL OR EVAL IS NOT NULL)"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != "0") {
                    alert("Энэ төлөвлөгөөнд хамааралтай биелэлт, үнэлгээ орсон тул устгах боломжгүй байна!");
                }
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон хяналтанд авсан төлөвлөгөөг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"DELETE FROM TBL_ZAALT WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab2Datatable();
                                    smallBox('Төлөвлөгөөө', 'Амжилттай устгагдлаа', '#659265', 3000);
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
                alert(response.d);
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
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab2ModalSelectTogtool: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
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
                        max: 1500,
                        message: 'Уртдаа 1500 тэмдэгт авна'
                    }
                }
            },
            pTab2ModalInputEnddate: {
                group: '.col-md-12',
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
            if ($('#pTab2ModalHeaderLabel').text() == 'нэмэх') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"INSERT INTO TBL_ZAALT (ID, TOGTOOL_ID, NAME, CREATED_STAFFID, CREATED_DATE, IS_IMPL, ENDDATE) VALUES (TBLLASTID(\'TBL_ZAALT\'), ' + $('#pTab2ModalSelectTogtool option:selected').val() + ', \'' + replaceDisplayToDatabase($.trim($('#pTab2ModalInputName').val())) + '\', ' + $('#indexUserId').html() + ', sysdate, 0, \'' + $.trim($('#pTab2ModalInputEnddate').val()) + '\')"}',
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
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"UPDATE TBL_ZAALT SET TOGTOOL_ID=' + $('#pTab2ModalSelectTogtool option:selected').val() + ', NAME=\'' + replaceDisplayToDatabase($.trim($('#pTab2ModalInputName').val())) + '\', MODIFY_STAFFID=' + $('#indexUserId').html() + ', MODIFY_DATE=sysdate, ENDDATE=\'' + $.trim($('#pTab2ModalInputEnddate').val()) + '\' WHERE ID=' + $('#pTab2ID').text() + '"}',
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
    });
    function saveIsClosed(el) {
        var valIsSubmit = '0';
        if ($(el).prop('checked')) {
            valIsSubmit = '1';
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
            data: '{"qry":"UPDATE TBL_ZAALT SET IS_IMPL=' + valIsSubmit + ' WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
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
    $("#pTab2SelectIsClosed").change(function () {
        dataBindTab2Datatable();
    });
    //tab1t3
    function dataBindTab1t3Datatable() {
        var valData = '';
        var valIsEdit = '0';
        showLoader('loaderTab1t3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TogtoolTypeDatatable",
            data: '{}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (funcCheckRoles('1,15')) {
                    valIsEdit = '1';
                }
                valData = "<table id=\"pTab1t3Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Тогтоолын төрөл</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Засварлах</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td class=\"text-center\">" + value.ROWNO + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td>";
                    if (valIsEdit == "1") {
                        valData += "<div class=\"btn-group\">";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab1t3(this,'засах');\" data-target=\"#pTab1t3Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab1t3(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                        valData += "</div>";
                    }
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
            data: '{"qry":"SELECT COUNT(1) FROM TBL_TOGTOOL WHERE TOGTOOL_TYPE_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') alert('Сонгосон тогтоолын төрлийн хүрээнд тогтоол орсон тул устгах боломжгүй байна!');
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон тогтоолын төрлийг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"DELETE FROM TBL_TOGTOOL_TYPE WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab1t3Datatable();
                                    $('#pTab1t3Modal').modal('hide');
                                    smallBox('Тогтоолын төрөл', 'Амжилттай устгагдлаа', '#659265', 3000);
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
                    data: '{"qry":"INSERT INTO TBL_TOGTOOL_TYPE (ID, NAME) VALUES (TBLLASTID(\'TBL_TOGTOOL_TYPE\'), \'' + replaceDisplayToDatabase($.trim($('#pTab1t3ModalInputName').val())) + '\')"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab1t3Datatable();
                        $('#pTab1t3Modal').modal('hide');
                        smallBox('Тогтоолын төрөл', 'Амжилттай хадгалагдлаа', '#659265', 3000);
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/TogtoolTypeListForDDL",
                            data: '{}',
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
                                $("#pTab4t2SelectType").html('<option value="">Бүгд</option>' + valData);
                                $("#pTab4t4SelectType").html('<option value="">Бүгд</option>' + valData);
                                $("#pTab4t3SelectType").html('<option value="">Бүгд</option>' + valData);
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
                    data: '{"qry":"UPDATE TBL_TOGTOOL_TYPE SET NAME = \'' + replaceDisplayToDatabase($.trim($('#pTab1t3ModalInputName').val())) + '\' WHERE ID=' + $('#pTab1t3ID').html() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab1t3Datatable();
                        $('#pTab1t3Modal').modal('hide');
                        smallBox('Тогтоолын төрөл', 'Амжилттай хадгалагдлаа', '#659265', 3000);
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/TogtoolTypeListForDDL",
                            data: '{}',
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
                                $("#pTab4t2SelectType").html('<option value="">Бүгд</option>' + valData);
                                $("#pTab4t4SelectType").html('<option value="">Бүгд</option>' + valData);
                                $("#pTab4t3SelectType").html('<option value="">Бүгд</option>' + valData);
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
        var valData = '';
        var userGazarId = $('#indexUserGazarId').text();
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
                $("#pTab3SelectBranchGazar").html('<option value="">Бүгд<option>' + valData);
                if (!funcCheckRoles('1,15,30')) {
                    $('#pTab3SelectBranchGazar').val(userGazarId);
                    $('#pTab3SelectBranchGazar').prop('disabled', false);
                }
                else {
                    $('#pTab3SelectBranchGazar').val(userGazarId);
                    $('#pTab3SelectBranchGazar').prop('disabled', false);
                }
                dataBindTab3Datatable();
            },
            failure: function (response) {
                alert(response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab3Datatable() {
        var valData = '';
        showLoader('loaderTab3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TogtoolTab3Datatable",
            data: '{"yr":"' + $('#pTab3SelectYear option:selected').val() + '", "yrhf":"' + $('#pTab3SelectYearHalf option:selected').val() + '","type":"' + $('#pTab3SelectType option:selected').val() + '", "brid":"' + $('#pTab3SelectBranchGazar option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData = "<table id=\"pTab3Datatable\" class=\"table table-striped table-bordered table-hover smart-form\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Шийдвэрийн утга</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Төлөвлөгөө</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах газар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Биелэлт оруулах</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хавсралт файл</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ZAALT_ID + "\">";
                    valData += "<td class=\"text-center\">" + value.ROWNO + "</td>";
                    valData += "<td><b>Батлагдсан огноо: </b>" + value.SUCCES_DATE + "<br><b>Шийдвэрийн дугаар: </b>" + replaceDatabaseToDisplay(value.TOGTOOL_NO) + "<br/><b>Шийдвэрийн утга: </b>" + replaceDatabaseToDisplay(value.TOGTOOL_NAME) + "<br><b>Биелүүлэх хугацаа: </b>" + value.DONE_DATE + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.ZAALT) + "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">" + value.BRNAMELIST + "</td>";
                    valData += "<td style=\"text-align:center; vertical-align:middle;\">";
                    if (value.ISEVAL == "0") valData += "<a href=\"../pg/togtoolTab3ImplModal.aspx?id=" + value.ZAALT_ID + "&yr=" + $('#pTab3SelectYear option:selected').val() + "&yrhf=" + $('#pTab3SelectYearHalf option:selected').val() + "\" data-target=\"#pTab3Modal\" data-toggle=\"modal\" style=\"cursor:pointer\"><i class=\"" + value.ISIMPL + "\"></i></a>";
                    else valData += "<a href=\"javascript:void(0);\" style=\"cursor:pointer\" onclick=\"alert('Сонгосон төлөвлөгөөнд хамааралтай үнэлгээ орсон тул биелэлт засварлах боломжгүй байна! Үнэлгээ хэсэгрүү орж биелэлт болон үнэлгээг харна уу!');\"><i class=\"" + value.ISIMPL + "\"></i></a>";
                    valData += "</td>";
                    valData += "<td style=\"text-align:center; vertical-align:middle;\">";
                    if (value.FILENAME != "") valData += "<a href=\"../files/togtool/" + value.FILENAME + "\" class=\"btn btn-link btn-xs\" style=\"padding:0px; border:none;\" download title=\"Хавсаргасан файл татах\"><i class=\"fa fa-paperclip fa-lg\"></i></a></td>";
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_pTab3Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab3Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab3Datatable) {responsiveHelper_pTab3Datatable = new ResponsiveDatatablesHelper($('#pTab3Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab3Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab3Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\", \"orderable\": false },{ \"sWidth\": \"450px\" },null, { \"sWidth\": \"70px\" }, { \"sWidth\": \"52px\" }, { \"sWidth\": \"22px\" }]});";
                valData += "<\/script>";
                $("#divBindTab3Table").html(valData);
                hideLoader('loaderTab3');
            },
            failure: function (response) {
                alert(response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab3SelectYear").change(function () {
        pTab3SetFirstControls();
    });
    $("#pTab3SelectYearHalf").change(function () {
        dataBindTab3Datatable();
    });
    $("#pTab3SelectType").change(function () {
        dataBindTab3Datatable();
    });
    $("#pTab3SelectBranchGazar").change(function () {
        dataBindTab3Datatable();
    });
    //tab5
    function pTab5SetFirstControls() {
        var valData = '';
        var userGazarId = $('#indexUserGazarId').text();
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
                $("#pTab5SelectBranchGazar").html('<option value="">Бүгд<option>' + valData);
                if (!funcCheckRoles('1,15,30')) {
                    $('#pTab5SelectBranchGazar').val(userGazarId);
                    $('#pTab5SelectBranchGazar').prop('disabled', false);
                }
                else {
                    $('#pTab5SelectBranchGazar').val(userGazarId);
                    $('#pTab5SelectBranchGazar').prop('disabled', false);
                }
                dataBindTab5Datatable();
            },
            failure: function (response) {
                alert(response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab5Datatable() {
        var valData = '';
        var evalDisabled = " disabled";
        showLoader('loaderTab5');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TogtoolTab5Datatable",
            data: '{"yr":"' + $('#pTab5SelectYear option:selected').val() + '", "yrhf":"' + $('#pTab5SelectYearHalf option:selected').val() + '","type":"' + $('#pTab5SelectType option:selected').val() + '", "brid":"' + $('#pTab5SelectBranchGazar option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (funcCheckRoles('1,30')) {
                    evalDisabled = "";
                }
                valData = "<table id=\"pTab5Datatable\" class=\"table table-striped table-bordered table-hover smart-form\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Шийдвэрийн утга</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Төлөвлөгөө</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах газар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Биелэлт</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Өмнөх<br>үнэлгээ</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Үнэлгээ</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ZAALT_ID + "\">";
                    valData += "<td class=\"text-center\">" + value.ROWNO + "</td>";
                    valData += "<td><b>Батлагдсан огноо: </b>" + value.SUCCES_DATE + "<br><b>Шийдвэрийн дугаар: </b>" + replaceDatabaseToDisplay(value.TOGTOOL_NO) + "<br/><b>Шийдвэрийн утга: </b>" + replaceDatabaseToDisplay(value.TOGTOOL_NAME) + "<br><b>Биелүүлэх хугацаа: </b>" + value.DONE_DATE + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.ZAALT) + "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">" + value.BRNAMELIST + "</td>";
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
                valData += "var responsiveHelper_pTab5Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab5Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab5Datatable) {responsiveHelper_pTab5Datatable = new ResponsiveDatatablesHelper($('#pTab5Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab5Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab5Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\", \"orderable\": false },{ \"sWidth\": \"265px\" },{ \"sWidth\": \"285px\" }, { \"sWidth\": \"70px\" }, null, { \"sWidth\": \"50px\" }, { \"sWidth\": \"50px\" }]});";
                valData += "<\/script>";
                $("#divBindTab5Table").html(valData);
                hideLoader('loaderTab5');
            },
            failure: function (response) {
                alert(response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab5SelectYear").change(function () {
        pTab5SetFirstControls();
    });
    $("#pTab5SelectYearHalf, #pTab5SelectType, #pTab5SelectBranchGazar").change(function () {
        dataBindTab5Datatable();
    });
    function saveEval(me) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_ZAALT_IMPL WHERE ZAALT_ID=' + $(me).closest('tr').attr('data-id') + ' AND YR=' + $('#pTab5SelectYear option:selected').val() + ' AND YR_HF=' + $('#pTab5SelectYearHalf option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                var valQry = '';
                if (data.d == '0') {
                    valQry = 'INSERT INTO TBL_ZAALT_IMPL (ID, ZAALT_ID, YR, YR_HF, EVAL, CREATED_STAFFID, CREATED_DATE) VALUES (TBLLASTID(\'TBL_ZAALT_IMPL\'), ' + $(me).closest('tr').attr('data-id') + ', ' + $('#pTab5SelectYear option:selected').val() + ', ' + $('#pTab5SelectYearHalf option:selected').val() + ', ' + $(me).val().replace('none', 'null') + ', ' + $('#indexUserId').html() + ', sysdate)';
                }
                else {
                    valQry = 'UPDATE TBL_ZAALT_IMPL SET EVAL=' + $(me).val().replace('none', 'null') + ', MODIFY_STAFFID=' + $('#indexUserId').html() + ', MODIFY_DATE=sysdate WHERE ZAALT_ID=' + $(me).closest('tr').attr('data-id') + ' AND YR=' + $('#pTab5SelectYear option:selected').val() + ' AND YR_HF=' + $('#pTab5SelectYearHalf option:selected').val() + '';
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
    //tab4t1
    function dataBindTab4t1Datatable() {
        var valData = '';
        var totalCol0 = 0, totalCol1 = 0, totalCol2 = 0, totalCol3 = 0, totalCol4 = 0, totalCol5 = 0, totalCol6 = 0, totalCol7 = 0, totalCol8 = 0;
        var sumCol0 = 0, sumCol1 = 0, sumCol2 = 0, sumCol3 = 0, sumCol4 = 0, sumCol5 = 0, sumCol6 = 0, sumCol7 = 0, sumCol8 = 0;
        showLoader('loaderTab4t1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TogtoolTab4t1Datatable",
            data: '{"yr":"' + $('#pTab4t1SelectYear option:selected').val() + '", "yr2":"' + $('#pTab4t1SelectYear2 option:selected').val() + '","yrhf":"' + $('#pTab4t1SelectYearHalf option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table id=\"togtoolTab4t1Datatable\" style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\">";
                valData += "<thead style=\"background-color:C6D9F1;\">";
                valData += "<tr>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\"></th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Бүгд</th>";
                valData += "<th colspan=\"8\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Үүнээс</th>";
                valData += "</tr>";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Засгийн газрын тогтоол</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Засгийн газрын хуралдааны тэмдэглэл</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Ерөнхий сайдын захирамж</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Бусад тогтоол, шийдвэрүүд</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Ерөнхийлөгчийн зарлиг</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">УИХ-ын тогтоол</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Байнгын хорооны тогтоол</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">ЗГ-ын албан даалгавар</th>";
                valData += "</tr>";
                valData += "</thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.RWNAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.CNT + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.T1 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.T2 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.T3 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.T4 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.T5 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.T6 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.T7 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.T8 + "</td>";
                    valData += "</tr>";
                    if (value.RWNO == "2") {
                        totalCol0 += parseInt(value.CNT);
                        totalCol1 += parseInt(value.T1);
                        totalCol2 += parseInt(value.T2);
                        totalCol3 += parseInt(value.T3);
                        totalCol4 += parseInt(value.T4);
                        totalCol5 += parseInt(value.T5);
                        totalCol6 += parseInt(value.T6);
                        totalCol7 += parseInt(value.T7);
                        totalCol8 += parseInt(value.T8);
                    }
                    else if (value.RWNO == "10" || value.RWNO == "11") {
                        totalCol0 -= parseInt(value.CNT);
                        totalCol1 -= parseInt(value.T1);
                        totalCol2 -= parseInt(value.T2);
                        totalCol3 -= parseInt(value.T3);
                        totalCol4 -= parseInt(value.T4);
                        totalCol5 -= parseInt(value.T5);
                        totalCol6 -= parseInt(value.T6);
                        totalCol7 -= parseInt(value.T7);
                        totalCol8 -= parseInt(value.T8);
                    }
                    else if (parseInt(value.RWNO) > 2 && parseInt(value.RWNO) < 10) {
                        sumCol0 += (parseFloat(value.CNT) * parseFloat(value.RWNAME));
                        sumCol1 += (parseFloat(value.T1) * parseFloat(value.RWNAME));
                        sumCol2 += (parseFloat(value.T2) * parseFloat(value.RWNAME));
                        sumCol3 += (parseFloat(value.T3) * parseFloat(value.RWNAME));
                        sumCol4 += (parseFloat(value.T4) * parseFloat(value.RWNAME));
                        sumCol5 += (parseFloat(value.T5) * parseFloat(value.RWNAME));
                        sumCol6 += (parseFloat(value.T6) * parseFloat(value.RWNAME));
                        sumCol7 += (parseFloat(value.T7) * parseFloat(value.RWNAME));
                        sumCol8 += (parseFloat(value.T8) * parseFloat(value.RWNAME));
                    }
                });
                valData += "</tbody>";
                valData += "<tfoot style=\"background-color:C6D9F1; font-weight:bold;\">";
                valData += "<tr>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">Биелэлтийн дүн /хувь/</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + ((parseFloat(sumCol0) / (parseFloat(totalCol0) * parseFloat(100))) * parseFloat(100)).toFixed(1) + "%</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + ((parseFloat(sumCol1) / (parseFloat(totalCol1) * parseFloat(100))) * parseFloat(100)).toFixed(1) + "%</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + ((parseFloat(sumCol2) / (parseFloat(totalCol2) * parseFloat(100))) * parseFloat(100)).toFixed(1) + "%</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + ((parseFloat(sumCol3) / (parseFloat(totalCol3) * parseFloat(100))) * parseFloat(100)).toFixed(1) + "%</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + ((parseFloat(sumCol4) / (parseFloat(totalCol4) * parseFloat(100))) * parseFloat(100)).toFixed(1) + "%</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + ((parseFloat(sumCol5) / (parseFloat(totalCol5) * parseFloat(100))) * parseFloat(100)).toFixed(1) + "%</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + ((parseFloat(sumCol6) / (parseFloat(totalCol6) * parseFloat(100))) * parseFloat(100)).toFixed(1) + "%</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + ((parseFloat(sumCol7) / (parseFloat(totalCol7) * parseFloat(100))) * parseFloat(100)).toFixed(1) + "%</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + ((parseFloat(sumCol8) / (parseFloat(totalCol8) * parseFloat(100))) * parseFloat(100)).toFixed(1) + "%</td>";
                valData += "</tr>";
                valData += "</tfoot>";
                valData += "</table>";
                $("#divpTab4t1Datatable").html(valData);
                if ($("#pTab4t1Datatable td:contains(NaN%)").html() == "NaN%") {
                    $('#pTab4t1Datatable td:contains(NaN%)').html('-');
                    //if ($("#pTab4Datatable td:contains(0)").index($("#pTab4Datatable td:contains(0)").closest('tr').find('td')) > 0) $('#pTab4Datatable td:contains(0)').html('-');
                }
                hideLoader('loaderTab4t1');
            },
            failure: function (response) {
                alert(response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab4t1SelectYearHalf").change(function () {
        dataBindTab4t1Datatable();
        $('#divpTab4t1YearHalf').text($(this).val().replace('1', 'эхний хагас').replace('2', 'сүүлийн хагас'));
    });
    $("#pTab4t1SelectYear").change(function () {
        dataBindTab4t1Datatable();
        if ($('#pTab4t1SelectYear option:selected').val() == $('#pTab4t1SelectYear2 option:selected').val()) $('#divpTab4t1Year').text($(this).val());
        $('#divpTab4t1Year').text($('#pTab4t1SelectYear option:selected').val() + '-' + $('#pTab4t1SelectYear2 option:selected').val());
    });
    $("#pTab4t1SelectYear2").change(function () {
        if (parseInt($('#pTab4t1SelectYear option:selected').val()) > parseInt($('#pTab4t1SelectYear2 option:selected').val())) {
            alert('Сүүлийн огноо өмнөх огнооноос их буюу тэнцүү байна!');
        }
        else {
            dataBindTab4t1Datatable();
            if ($('#pTab4t1SelectYear option:selected').val() == $('#pTab4t1SelectYear2 option:selected').val()) $('#divpTab4t1Year').text($(this).val());
            $('#divpTab4t1Year').text($('#pTab4t1SelectYear option:selected').val() + '-' + $('#pTab4t1SelectYear2 option:selected').val());
        }
    });
    $("#pTab4t1Refresh").click(function () {
        $('#pTab4t1SelectYearHalf').val($('#indexCurrentYearHalf').text());
        $('#pTab4t1SelectYear').val($('#indexCurrentYear').text());
        dataBindTab4t1Datatable();
        $('#divpTab4t1Year').text($('#indexCurrentYear').text());
        $('#divpTab4t1YearHalf').text($('#indexCurrentYearHalf').text().replace('1', 'эхний хагас').replace('2', 'сүүлийн хагас'));
    });
    //tab4t2
    function dataBindTab4t2Datatable() {
        var valData = '';
        var togtooltype = "";
        showLoader('loaderTab4t2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TogtoolTab4t2Datatable",
            data: '{"yr":"' + $('#pTab4t2SelectYear option:selected').val() + '", "yr2":"' + $('#pTab4t2SelectYear2 option:selected').val() + '","yrhf":"' + $('#pTab4t2SelectYearHalf option:selected').val() + '", "type":"' + $('#pTab4t2SelectType option:selected').val() + '", "eval":"' + $('#pTab4t2SelectEval option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table id=\"togtoolTab4t2Datatable\" style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\"><thead style=\"background-color:C6D9F1;\">";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">#</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Батлагдсан огноо</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Дугаар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Төлөвлөгөөний дугаар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Биелүүлэх хугацаа</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хэрэгжилтийн явц</th>";
                valData += "</tr>";
                valData += "</thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (togtooltype != value.SORTABLE) {
                        valData += "<tr>";
                        valData += "<td colspan=\"6\" style=\"border: 1px solid #000; padding:5px; text-align:left; font-weight:bold; font-style:italic;\">" + value.SORTABLE + ". " + replaceDatabaseToDisplay(value.TOGTOOL_TYPE_NAME) + "</td>";
                        valData += "</tr>";
                        togtooltype = value.SORTABLE;
                    }
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.ROWNO + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.SUCCES_DATE + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + replaceDatabaseToDisplay(value.TOGTOOL_NO) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + replaceDatabaseToDisplay(value.ZAALT_NO) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.DONE_DATE + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.EVAL + "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                $("#divpTab4t2Datatable").html(valData);
                hideLoader('loaderTab4t2');
            },
            failure: function (response) {
                alert(response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab4t2SelectYearHalf").change(function () {
        dataBindTab4t2Datatable();
        $('#divpTab4t2YearHalf').text($(this).val().replace('1', 'эхний хагас').replace('2', 'сүүлийн хагас'));
    });
    $("#pTab4t2SelectYear").change(function () {
        dataBindTab4t2Datatable();
        if ($('#pTab4t2SelectYear option:selected').val() == $('#pTab4t2SelectYear2 option:selected').val()) $('#divpTab4t2Year').text($(this).val());
        $('#divpTab4t2Year').text($('#pTab4t2SelectYear option:selected').val() + '-' + $('#pTab4t2SelectYear2 option:selected').val());
    });
    $("#pTab4t2SelectYear2").change(function () {
        if (parseInt($('#pTab4t2SelectYear option:selected').val()) > parseInt($('#pTab4t2SelectYear2 option:selected').val())) {
            alert('Сүүлийн огноо өмнөх огнооноос их буюу тэнцүү байна!');
        }
        else {
            dataBindTab4t2Datatable();
            if ($('#pTab4t2SelectYear option:selected').val() == $('#pTab4t2SelectYear2 option:selected').val()) $('#divpTab4t2Year').text($(this).val());
            $('#divpTab4t2Year').text($('#pTab4t2SelectYear option:selected').val() + '-' + $('#pTab4t2SelectYear2 option:selected').val());
        }        
    });
    $("#pTab4t2SelectType").change(function () {
        dataBindTab4t2Datatable();
    });
    $("#pTab4t2SelectEval").change(function () {
        dataBindTab4t2Datatable();
    });
    $("#pTab4t2Refresh").click(function () {
        $('#pTab4t2SelectYearHalf').val($('#indexCurrentYearHalf').text());
        $('#pTab4t2SelectYear').val($('#indexCurrentYear').text());
        dataBindTab4t2Datatable();
        $('#divpTab4t2Year').text($('#indexCurrentYear').text());
        $('#divpTab4t2YearHalf').text($('#indexCurrentYearHalf').text().replace('1', 'эхний хагас').replace('2', 'сүүлийн хагас'));
    });
    //tab4t3
    function dataBindTab4t3Datatable() {
        var valData = '';
        var togtooltype = "", togtoolid = "";
        showLoader('loaderTab4t3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TogtoolTab4t3Datatable",
            data: '{"yr":"' + $('#pTab4t3SelectYear option:selected').val() + '", "yr2":"' + $('#pTab4t3SelectYear2 option:selected').val() + '","yrhf":"' + $('#pTab4t3SelectYearHalf option:selected').val() + '", "type":"' + $('#pTab4t3SelectType option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table id=\"togtoolTab4t3Datatable\" style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\"><thead style=\"background-color:C6D9F1;\">";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">#</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Шийдвэрийн огноо, дугаар, товч утга</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Зүйл, заалтын дугаар, агуулга</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хэрэгжилтийн явц</th>";
                valData += "</tr>";
                valData += "</thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (togtooltype != value.SORTABLE) {
                        valData += "<tr>";
                        valData += "<td colspan=\"4\" style=\"border: 1px solid #000; padding:5px; text-align:left; font-weight:bold; font-style:italic;\">" + value.SORTABLE + ". " + replaceDatabaseToDisplay(value.TOGTOOL_TYPE_NAME) + "</td>";
                        valData += "</tr>";
                        togtooltype = value.SORTABLE;
                    }
                    if (togtoolid != value.TOGTOOL_ID) {
                        valData += "<tr>";
                        valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.ROWNO+ "</td>";
                        valData += "<td rowspan=\"" + value.CNT + "\" style=\"border: 1px solid #000; padding:5px;\">" + value.SUCCES_DATE + " Дугаар " + replaceDatabaseToDisplay(value.TOGTOOL_NO) + "<br/>" + replaceDatabaseToDisplay(value.AKT_NAME) + "</td>";
                        valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + replaceDatabaseToDisplay(value.ZAALT_NO) + ". " + replaceDatabaseToDisplay(value.NAME) + "</td>";
                        valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + replaceDatabaseToDisplay(value.IMPL + value.IMPL1 + value.IMPL2 + value.IMPL3 + value.IMPL4 + value.IMPL5) + "</td>";
                        valData += "</tr>";
                        togtoolid = value.TOGTOOL_ID;
                    }
                    else {
                        valData += "<tr>";
                        valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.ROWNO+ "</td>";
                        valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + replaceDatabaseToDisplay(value.ZAALT_NO) + ". " + replaceDatabaseToDisplay(value.NAME) + "</td>";
                        valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + replaceDatabaseToDisplay(value.IMPL + value.IMPL1 + value.IMPL2 + value.IMPL3 + value.IMPL4 + value.IMPL5) + "</td>";
                        valData += "</tr>";
                        togtoolid = value.TOGTOOL_ID;
                    }
                });
                valData += "</tbody>";
                valData += "</table>";
                $("#divpTab4t3Datatable").html(valData);
                hideLoader('loaderTab4t3');
            },
            failure: function (response) {
                alert(response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab4t3SelectYearHalf").change(function () {
        dataBindTab4t3Datatable();
        $('#divpTab4t3YearHalf').text($(this).val().replace('1', 'эхний хагас').replace('2', 'сүүлийн хагас'));
    });
    $("#pTab4t3SelectYear").change(function () {
        dataBindTab4t3Datatable();
        if ($('#pTab4t3SelectYear option:selected').val() == $('#pTab4t3SelectYear2 option:selected').val()) $('#divpTab4t3Year').text($(this).val());
        $('#divpTab4t3Year').text($('#pTab4t3SelectYear option:selected').val() + '-' + $('#pTab4t3SelectYear2 option:selected').val());
    });
    $("#pTab4t3SelectYear2").change(function () {
        if (parseInt($('#pTab4t3SelectYear option:selected').val()) > parseInt($('#pTab4t3SelectYear2 option:selected').val())) {
            alert('Сүүлийн огноо өмнөх огнооноос их буюу тэнцүү байна!');
        }
        else {
            dataBindTab4t3Datatable();
            if ($('#pTab4t3SelectYear option:selected').val() == $('#pTab4t3SelectYear2 option:selected').val()) $('#divpTab4t3Year').text($(this).val());
            $('#divpTab4t3Year').text($('#pTab4t3SelectYear option:selected').val() + '-' + $('#pTab4t3SelectYear2 option:selected').val());
        }
    });
    $("#pTab4t3SelectType").change(function () {
        dataBindTab4t3Datatable();
    });
    $("#pTab4t3Refresh").click(function () {
        $('#pTab4t3SelectYearHalf').val($('#indexCurrentYearHalf').text());
        $('#pTab4t3SelectYear').val($('#indexCurrentYear').text());
        dataBindTab4t3Datatable();
        $('#divpTab4t3Year').text($('#indexCurrentYear').text());
        $('#divpTab4t3YearHalf').text($('#indexCurrentYearHalf').text().replace('1', 'эхний хагас').replace('2', 'сүүлийн хагас'));
    });
    //tab4t4
    function dataBindTab4t4Datatable() {
        var valData = '';
        var togtooltype = "", togtoolid = "";
        showLoader('loaderTab4t4');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TogtoolTab4t4Datatable",
            data: '{"yr":"' + $('#pTab4t4SelectYear option:selected').val() + '", "yr2":"' + $('#pTab4t4SelectYear2 option:selected').val() + '","yrhf":"' + $('#pTab4t4SelectYearHalf option:selected').val() + '", "type":"' + $('#pTab4t4SelectType option:selected').val() + '", "eval":"' + $('#pTab4t4SelectEval option:selected').val() + '", "isimpl":"' + $('#pTab4t4SelectIsImpl option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table id=\"togtoolTab4t4Datatable\" style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\"><thead style=\"background-color:C6D9F1; font-weight:bold;\">";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">#</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Эрх зүйн актын нэр, огноо, дугаар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хяналтад байгаа заалтыг хэрэгжүүлэх талаар төлөвлөсөн арга хэмжээ</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хэрэгжилтийн явц, гарсан үр дүн</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Үнэлгээ<br/>/хувь/</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хүчингүй болсон буюу хяналтаас хассан тухай тэмдэглэл/ өөрчлөлт оруулах тухай санал, дүгнэлт</th>";
                valData += "</tr>";
                valData += "</thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (togtooltype != value.SORTABLE) {
                        valData += "<tr>";
                        valData += "<td colspan=\"7\" style=\"border: 1px solid #000; padding:5px; text-align:left; font-weight:bold; font-style:italic;\">" + value.SORTABLE + ". " + replaceDatabaseToDisplay(value.TOGTOOL_TYPE_NAME) + "</td>";
                        valData += "</tr>";
                        togtooltype = value.SORTABLE;
                    }
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.ROWNO + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.SUCCES_DATE + " Дугаар " + replaceDatabaseToDisplay(value.TOGTOOL_NO) + "<br/>" + replaceDatabaseToDisplay(value.AKT_NAME) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + replaceDatabaseToDisplay(value.ZAALT_NO) + ". " + replaceDatabaseToDisplay(value.ZAALT_NAME) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + replaceDatabaseToDisplay(value.IMPL) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.EVAL + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\"></td>";
                    valData += "</tr>";
                    togtoolid = value.TOGTOOL_ID;
                });
                valData += "</tbody>";
                valData += "</table>";
                $("#divpTab4t4Datatable").html(valData.replace(/none/g, ''));
                hideLoader('loaderTab4t4');
            },
            failure: function (response) {
                alert(response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab4t4SelectYearHalf").change(function () {
        dataBindTab4t4Datatable();
        $('#divpTab4t4YearHalf').text($(this).val().replace('1', 'эхний хагас').replace('2', 'сүүлийн хагас'));
    });
    $("#pTab4t4SelectYear").change(function () {
        dataBindTab4t4Datatable();
        if ($('#pTab4t4SelectYear option:selected').val() == $('#pTab4t4SelectYear2 option:selected').val()) $('#divpTab4t4Year').text($(this).val());
        $('#divpTab4t4Year').text($('#pTab4t4SelectYear option:selected').val() + '-' + $('#pTab4t4SelectYear2 option:selected').val());
    });
    $("#pTab4t4SelectYear2").change(function () {
        if (parseInt($('#pTab4t4SelectYear option:selected').val()) > parseInt($('#pTab4t4SelectYear2 option:selected').val())) {
            alert('Сүүлийн огноо өмнөх огнооноос их буюу тэнцүү байна!');
        }
        else {
            dataBindTab4t4Datatable();
            if ($('#pTab4t4SelectYear option:selected').val() == $('#pTab4t4SelectYear2 option:selected').val()) $('#divpTab4t4Year').text($(this).val());
            $('#divpTab4t4Year').text($('#pTab4t4SelectYear option:selected').val() + '-' + $('#pTab4t4SelectYear2 option:selected').val());
        }
    });
    $("#pTab4t4SelectType").change(function () {
        dataBindTab4t4Datatable();
    });
    $("#pTab4t4SelectEval").change(function () {
        dataBindTab4t4Datatable();
    });
    $("#pTab4t4Refresh").click(function () {
        $('#pTab4t4SelectYearHalf').val($('#indexCurrentYearHalf').text());
        $('#pTab4t4SelectYear').val($('#indexCurrentYear').text());
        dataBindTab4t4Datatable();
        $('#divpTab4t4Year').text($('#indexCurrentYear').text());
        $('#divpTab4t4YearHalf').text($('#indexCurrentYearHalf').text().replace('1', 'эхний хагас').replace('2', 'сүүлийн хагас'));
    });
    $("#pTab4t4SelectIsImpl").change(function () {
        dataBindTab4t4Datatable();
    });
    //tab4t5
    function dataBindTab4t5Datatable() {
        var sumCol1 = 0, sumCol2 = 0, sumCol3 = 0, sumCol4 = 0, sumCol5 = 0, sumCol6 = 0, sumCol7 = 0, sumCol8 = 0, sumCol9 = 0, sumCol10 = 0, sumCol11 = 0, sumCol12 = 0, sumCol13 = 0, cntgazarcnt=0;
        var valData = "";
        showLoader('loaderTab4t5');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TogtoolTab4t5Datatable",
            data: '{"yr":"' + $('#pTab4t5SelectYear option:selected').val() + '", "yr2":"' + $('#pTab4t5SelectYear2 option:selected').val() + '","yrhf":"' + $('#pTab4t5SelectYearHalf option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table id=\"togtoolTab4t5Datatable\" style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\">";
                valData += "<thead style=\"background-color:C6D9F1;\">";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">#</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Газрын нэр</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хяналтад авсан нийт шийдвэрийн тоо</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хяналтад авсан нийт зүйл заалтын тоо</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">100%</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">90%</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">80%</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">70%</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">50%</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">30%</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">10%</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">0%</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">-</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">ХБ</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Биелэлтийн хувь</th>";
                valData += "</tr>";
                valData += "</thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.ROWNO + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.BR_NAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.CNT1 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.CNT2 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.CNT100 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.CNT90 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.CNT80 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.CNT70 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.CNT50 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.CNT30 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.CNT10 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.CNT0 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.CNTNONE + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.CNT999 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.AVGPER + " %</td>";
                    valData += "</tr>";

                    sumCol1 += parseFloat(value.CNT1);
                    sumCol2 += parseFloat(value.CNT2);
                    sumCol3 += parseFloat(value.CNT100);
                    sumCol4 += parseFloat(value.CNT90);
                    sumCol5 += parseFloat(value.CNT80);
                    sumCol6 += parseFloat(value.CNT70);
                    sumCol7 += parseFloat(value.CNT50);
                    sumCol8 += parseFloat(value.CNT30);
                    sumCol9 += parseFloat(value.CNT10);
                    sumCol10 += parseFloat(value.CNT0);
                    sumCol11 += parseFloat(value.CNTNONE);
                    sumCol12 += parseFloat(value.CNT999);
                    sumCol13 += parseFloat(value.AVGPER);
                    cntgazarcnt++;
                });
                valData += "</tbody>";
                valData += "<tfoot style=\"background-color:C6D9F1; font-weight:bold;\">";
                valData += "<tr>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\" colspan=\"2\">ДҮН</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + sumCol1.toFixed(1) + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + sumCol2.toFixed(1) + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + sumCol3.toFixed(1) + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + sumCol4.toFixed(1) + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + sumCol5.toFixed(1) + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + sumCol6.toFixed(1) + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + sumCol7.toFixed(1) + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + sumCol8.toFixed(1) + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + sumCol9.toFixed(1) + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + sumCol10.toFixed(1) + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + sumCol11.toFixed(1) + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + sumCol12.toFixed(1) + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + (sumCol13 / parseFloat(cntgazarcnt)).toFixed(1) + "</td>";
                valData += "</tr>";
                valData += "</tfoot>";
                valData += "</table>";
                $("#divpTab4t5Datatable").html(valData);
                if ($("#pTab4t5Datatable td:contains(NaN%)").html() == "NaN%") {
                    $('#pTab4t5Datatable td:contains(NaN%)').html('-');
                    //if ($("#pTab4Datatable td:contains(0)").index($("#pTab4Datatable td:contains(0)").closest('tr').find('td')) > 0) $('#pTab4Datatable td:contains(0)').html('-');
                }
                hideLoader('loaderTab4t5');
            },
            failure: function (response) {
                alert(response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab4t5SelectYearHalf").change(function () {
        dataBindTab4t5Datatable();
        $('#divpTab4t5YearHalf').text($(this).val().replace('1', 'эхний хагас').replace('2', 'сүүлийн хагас'));
    });
    $("#pTab4t5SelectYear").change(function () {
        dataBindTab4t5Datatable();
        if ($('#pTab4t5SelectYear option:selected').val() == $('#pTab4t5SelectYear2 option:selected').val()) $('#divpTab4t5Year').text($(this).val());
        $('#divpTab4t5Year').text($('#pTab4t5SelectYear option:selected').val() + '-' + $('#pTab4t5SelectYear2 option:selected').val());
    });
    $("#pTab4t5SelectYear2").change(function () {
        if (parseInt($('#pTab4t5SelectYear option:selected').val()) > parseInt($('#pTab4t5SelectYear2 option:selected').val())) {
            alert('Сүүлийн огноо өмнөх огнооноос их буюу тэнцүү байна!');
        }
        else {
            dataBindTab4t5Datatable();
            if ($('#pTab4t5SelectYear option:selected').val() == $('#pTab4t5SelectYear2 option:selected').val()) $('#divpTab4t5Year').text($(this).val());
            $('#divpTab4t5Year').text($('#pTab4t5SelectYear option:selected').val() + '-' + $('#pTab4t5SelectYear2 option:selected').val());
        }
    });
    $("#pTab4t5Refresh").click(function () {
        $('#pTab4t5SelectYearHalf').val($('#indexCurrentYearHalf').text());
        $('#pTab4t5SelectYear').val($('#indexCurrentYear').text());
        dataBindTab4t5Datatable();
        $('#divpTab4t5Year').text($('#indexCurrentYear').text());
        $('#divpTab4t5YearHalf').text($('#indexCurrentYearHalf').text().replace('1', 'эхний хагас').replace('2', 'сүүлийн хагас'));
    });
    //tab4t6
    function dataBindTab4t6Datatable() {
        var valData = "";
        showLoader('loaderTab4t6');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TogtoolTab4t6Datatable",
            data: '{"yr":"' + $('#pTab4t6SelectYear option:selected').val() + '", "yrhf":"' + $('#pTab4t6SelectYearHalf option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $("#divpTab4t6Datatable").html(data.d);
                $('#pTab4t6Year').html($('#pTab4t6SelectYear option:selected').val());
                $('#pTab4t6YearHalf').html($('#pTab4t6SelectYearHalf option:selected').text());
                hideLoader('loaderTab4t6');
            },
            failure: function (response) {
                alert(response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab4t6SelectYear, #pTab4t6SelectYearHalf").change(function () {
        dataBindTab4t6Datatable();
    });
    
    
    
    




    $('#pTab1ModalInputSuccessdate, #pTab1ModalInputReceivedate, #pTab1ModalInputDonedate, #pTab2ModalInputEnddate').datepicker({
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