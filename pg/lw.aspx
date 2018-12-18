<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lw.aspx.cs" Inherits="LMWebApp.pg.lw" %>
<style>
    #lwTab6ModalDatatable tr {
    width: 100%;
    display: inline-table;
    }

    #lwTab6ModalDatatable table{
     height:300px; 
    }
    #lwTab6ModalDatatable tbody{
      overflow-y: scroll;
      height: 610px;
      width: 100%;
      position: absolute;
    }

    #lwTab6ModalUlZaaltDesc ul, #lwTab6ModalUlZaaltDesc2 ul {
        list-style-type: none;
        margin: 0;
        padding: 0 !important;
    }

    #lwTab6ModalUlZaaltDesc li, #lwTab6ModalUlZaaltDesc2 li {
        display: inline;
        padding-left:3px;
    }
</style>
<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
    <h1 class="page-title txt-color-blueDark">
    <i class="fa-fw fa fa-home"></i>
    > ХУУЛЬ ТОГТООМЖИЙН ХЭРЭГЖИЛТ
    </h1>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <ul class="nav nav-tabs bordered">
                <li id="lwTab2Li" class="active" onclick="lwDatabindTabs(this)">
                    <a data-toggle="tab" href="#lwTab2">
                        <i class="fa fa-fw fa-lg fa-list "></i>
                        Эрх зүйн акт
                    </a>
                </li>
                <li id="lwTab3Li" onclick="lwDatabindTabs(this)">
                    <a data-toggle="tab" href="#lwTab3">
                        <i class="fa fa-fw fa-lg fa-list "></i>
                        Заалт
                    </a>
                </li>
                <li id="lwTab6Li" onclick="lwDatabindTabs(this)">
                    <a data-toggle="tab" href="#lwTab6">
                        <i class="fa fa-fw fa-lg fa-table"></i>
                        Зорилт
                    </a>
                </li>
                <li id="lwTab7Li" onclick="lwDatabindTabs(this)">
                    <a data-toggle="tab" href="#lwTab7">
                        <i class="fa fa-fw fa-lg fa-table"></i>
                        Үйл ажиллагаа
                    </a>
                </li>
                <li id="lwTab5Li" onclick="lwDatabindTabs(this)">
                    <a data-toggle="tab" href="#lwTab5">
                        <i class="fa fa-fw fa-lg fa-file-text "></i>
                        Тайлан
                    </a>
                </li>
                <li id="lwTab1Li" class="pull-right hide" onclick="lwDatabindTabs(this)">
                    <a data-toggle="tab" href="#lwTab1">
                        <i class="fa fa-fw fa-lg fa-wrench "></i>
                        Төрөл
                    </a>
                </li>
                <li id="lwTab8Li" onclick="lwDatabindTabs(this)" class="pull-right">
                    <a data-toggle="tab" href="#lwTab8">
                        <i class="fa fa-fw fa-lg fa-wrench "></i>
                        Индекс
                    </a>
                </li>
                <li id="lwTab4Li" onclick="lwDatabindTabs(this)" class="pull-right">
                    <a data-toggle="tab" href="#lwTab4">
                        Үйл ажиллагаа /ХУУЧИН/
                    </a>
                </li>
            </ul>
            <div id="lwTabContent" class="tab-content">
                <div id="lwTab1" class="tab-pane">
                    <div class="jarviswidget jarviswidget-color-blue" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> 
                                <i class="fa fa-table"></i> 
                            </span>
                            <h2> Төрөл </h2>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div class="Colvis TableTools" style="width:62px; right:120px; top:8px; z-index:5; margin-top:1px;">
                                <button id="lwTab1AddBtn" runat="server" class="btn btn-primary btn-xs" type="button" data-target="#lwTab1Modal" data-toggle="modal" onclick="showAddEditTab1(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                            </div>
                            <div id="loaderTab1" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="divBindTab1Table" class="widget-body no-padding"></div>
                        </div>
                    </div>
                </div>
                <div id="lwTab2" class="tab-pane active">
                    <div class="jarviswidget jarviswidget-color-blue" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> 
                                <i class="fa fa-table"></i> 
                            </span>
                            <h2> Эрх зүйн акт </h2>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div class="Colvis TableTools" style="width:133px; right:475px; top:8px; z-index:5; margin-top:1px; display:none;">
                                <button id="lwTab2ImportTushaalSaid" class="btn btn-warning btn-xs" type="button"><i class="fa fa-download"></i> СС-н тушаал татах</button>
                            </div>
                            <div class="Colvis TableTools" style="width:148px; right:475px; top:8px; z-index:5; margin-top:1px; display:none;">
                                <button id="lwTab2ImportTushaalTNBD" class="btn btn-warning btn-xs" type="button"><i class="fa fa-download"></i> ТНБД-н тушаал татах</button>
                            </div>
                            <div class="Colvis TableTools" style="width:62px; right:405px; top:8px; z-index:5; margin-top:1px;">
                                <button id="lwTab2AddBtn" runat="server" class="btn btn-primary btn-xs" type="button" data-target="#lwTab2Modal" data-toggle="modal" onclick="showAddEditTab2(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                            </div>
                            <div class="Colvis TableTools" style="width:50px; right:351px; top:8px; z-index:5; margin-top:1px;">
                                Төрөл:
                            </div>
                            <div class="Colvis TableTools" style="width:230px; right:125px; top:3px; z-index:5; margin-top:1px;">
                                <select id="lwTab2SelectType" name="lwTab2SelectType" class="form-control" style="padding:1px;"><option value="">Бүгд</option></select>
                            </div>
                            <div id="loaderTab2" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="divBindTab2Table" class="widget-body no-padding"></div>
                        </div>
                    </div>
                </div>
                <div id="lwTab3" class="tab-pane">
                    <div class="jarviswidget jarviswidget-color-blue" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> 
                                <i class="fa fa-table"></i> 
                            </span>
                            <h2> Заалт </h2>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <button id="lwTab3AddBtn" runat="server" class="btn btn-primary btn-xs" type="button" data-target="#lwTab3Modal" data-toggle="modal" onclick="showAddEditTab3(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                </div> 
                            </div>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div class="Colvis TableTools" style="width:133px; right:430px; top:8px; z-index:5; margin-top:1px; display:none;">
                                <button id="lwTab3ImportTushaalSaid" class="btn btn-warning btn-xs" type="button"><i class="fa fa-download"></i> СС-н тушаалын заалт татах</button>
                            </div>
                            <div class="Colvis TableTools" style="width:148px; right:430px; top:8px; z-index:5; margin-top:1px; display:none;">
                                <button id="lwTab3ImportTushaalTNBD" class="btn btn-warning btn-xs" type="button"><i class="fa fa-download"></i> ТНБД-н тушаалын заалт татах</button>
                            </div>
                            <div class="Colvis TableTools" style="width:50px; left:225px; top:8px; z-index:5; margin-top:1px;">
                                Төрөл:
                            </div>
                            <div class="Colvis TableTools" style="width:200px; left:270px; top:4px; z-index:5; margin-top:1px;">
                                <select id="lwTab3SelectType" name="lwTab3SelectType" class="form-control" style="padding:1px;"><option value="">Бүгд</option></select>
                            </div>
                            <div class="Colvis TableTools" style="width:60px; left:480px; top:8px; z-index:5; margin-top:1px; line-height: 13px; text-align: right;">
                                Эрх зүйн акт:
                            </div>
                            <div class="Colvis TableTools" style="width:200px; left:545px; top:4px; z-index:5; margin-top:1px;">
                                <select id="lwTab3SelectLaw" name="lwTab3SelectLaw" class="form-control" style="padding:1px;" disabled><option value="">Бүгд</option></select>
                            </div>
                            <div class="Colvis TableTools" style="width:65px;right:125px; top:0px; z-index:5; margin-top:5px;">
                                <select id="lwTab3SelectHeltes" name="lwTab3SelectHeltes" runat="server" class="form-control" style="padding:1px" disabled="disabled"><option value="">Бүгд</option></select>
                            </div>
                            <div class="Colvis TableTools" style="right:195px; top:0px; z-index:5; margin-top:10px;">
                                Хэлтэс:
                            </div>
                            <div class="Colvis TableTools" style="width:80px;right:245px; top:0px; z-index:5; margin-top:5px;">
                                <select id="lwTab3SelectGazar" name="lwTab3SelectGazar" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select>
                            </div>
                            <div class="Colvis TableTools" style="right:330px; top:0px; z-index:5; margin-top:10px;">
                                Газар:
                            </div>
                            <div id="loaderTab3" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="divBindTab3Table" class="widget-body no-padding"></div>
                        </div>
                    </div>
                </div>
                <div id="lwTab4" class="tab-pane">
                    <div class="jarviswidget jarviswidget-color-blue" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> 
                                <i class="fa fa-table"></i> 
                            </span>
                            <h2> Үйл ажиллагаа </h2>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div class="Colvis TableTools" style="width:62px; right:640px; top:8px; z-index:5; margin-top:1px;">
                                <button id="lwTab4AddBtn" runat="server" class="btn btn-primary btn-xs" type="button" data-target="#lwTab4Modal" data-toggle="modal" onclick="showAddEditTab4(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                            </div>
                            <div class="Colvis TableTools" style="width:50px; right:271px; top:8px; z-index:5; margin-top:1px;">
                                Төрөл:
                            </div>
                            <div class="Colvis TableTools" style="width:150px; right:120px; top:3px; z-index:5; margin-top:1px;">
                                <select id="lwTab4SelectType" name="lwTab4SelectType" class="form-control" style="padding:1px;"><option value="">Бүгд</option></select>
                            </div>
                            <div class="Colvis TableTools" style="width:65px;right:325px; top:0px; z-index:5; margin-top:5px;">
                                <select id="lwTab4SelectHeltes" name="lwTab4SelectHeltes" runat="server" class="form-control" style="padding:1px" disabled="disabled"><option value="">Бүгд</option></select>
                            </div>
                            <div class="Colvis TableTools" style="right:395px; top:0px; z-index:5; margin-top:10px;">
                                Хэлтэс:
                            </div>
                            <div class="Colvis TableTools" style="width:80px;right:445px; top:0px; z-index:5; margin-top:5px;">
                                <select id="lwTab4SelectGazar" name="lwTab4SelectGazar" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select>
                            </div>
                            <div class="Colvis TableTools" style="right:530px; top:0px; z-index:5; margin-top:10px;">
                                Газар:
                            </div>
                            <div class="Colvis TableTools" style="width:61px;right:575px; top:0px; z-index:5; margin-top:5px;">
                                <select id="lwTab4SelectYear" name="lwTab4SelectYear" runat="server" class="form-control" style="padding:1px"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                            </div>
                            <div id="loaderTab4" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="divBindTab4Table" class="widget-body no-padding"></div>
                        </div>
                    </div>
                </div>
                <div id="lwTab5" class="tab-pane">
                    <ul class="nav nav-tabs bordered">                           
                        <li id="lwTab5t1Li" onclick="lwDatabindTabs(this)" class="active">
                            <a data-toggle="tab" href="#lwTab5t1">Үйл ажиллагаа төлөвлөгөө</a>
                        </li>
                        <li id="lwTab5t2Li" onclick="lwDatabindTabs(this)">
                            <a data-toggle="tab" href="#lwTab5t2">Газар болон заалтын тоо</a>
                        </li>
                        <li id="lwTab5t3Li" onclick="lwDatabindTabs(this)">
                            <a data-toggle="tab" href="#lwTab5t3">Зорилттой холбогдсон заалт /газраар/</a>
                        </li>
                    </ul>
                    <div id="lwTab5Content" class="tab-content">
                        <div id="lwTab5t1" class="tab-pane active">
                            <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                <div style="width:80%; float:left;">
                                    <div style="width:65px; float:left; margin-right:10px;"><select id="lwTab5t1SelectYear" runat="server" class="form-control" style="padding:1px"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select></div>
                                    <div style="width:30px; float:left; margin-right:10px; padding-top:8px;">Газар: </div>
                                    <div style="width:90px; float:left; margin-right:10px;"><select id="lwTab5t1SelectGazar" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select></div>
                                    <div style="width:40px; float:left; margin-right:10px; padding-top:8px;">Хэлтэс: </div>
                                    <div style="width:90px; float:left; margin-right:10px;"><select id="lwTab5t1SelectHeltes" runat="server" class="form-control" style="padding:1px" disabled="disabled"><option value="">Бүгд</option></select></div>
                                    <div style="width:33px; float:left; margin-right:10px; padding-top:8px;">Төрөл: </div>
                                    <div style="width:150px; float:left; margin-right:10px;"><select id="lwTab5t1SelectType" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select></div>
                                </div>
                                <div style="text-align:right; width:20%; float:left;">
                                    <div class="btn-group pull-right">
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divlwTab5t1', 'Сарын төлөвлөгөөний хэрэгжилт (газруудаар)')">
                                            <i class="fa fa-file-word-o"></i>
                                        </a>
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="top" data-original-title="Хэвлэх" onclick="PrintElem('#divlwTab5t1')">
                                            <i class="fa fa-print"></i>
                                        </a>
                                    </div>
                                    <%--<img id="lwTab5t1ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" onclick="exportPdf('#divlwTab5t1')"/>
                                    <img id="lwTab5t1ExportWord" src="../img/word-icon.png" style="cursor: pointer;" onclick="exportWord('#divlwTab5t1', 'Сарын төлөвлөгөөний хэрэгжилт (газруудаар)')" />
                                    <img id="lwTab5t1ExportExcel" src="../img/excel-icon.png" style="cursor: pointer;" onclick="exportExcel('#divlwTab5t1')" />
                                    <button id="lwTab5t1Print" class="btn btn-info btn-sm" type="button" onclick="PrintElem('#divlwTab5t1')"><span class="fa fa-print"></span> Хэвлэх </button>
                                    <button id="lwTab5t1Refresh" class="btn btn-info btn-sm" type="button"><span class="fa fa-refresh"></span> </button>--%>
                                </div>
                            </div>
                            <div id="loaderTab5t1" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="divlwTab5t1" runat="server" class="reports">
                                <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                    Үйл ажиллагааны төлөвлөгөө /<label id="lwTab5t1Year" runat="server"></label> он/
                                </div>
                                <div id="divlw5t1Table" runat="server"></div>                                    
                            </div> 
                        </div>
                        <div id="lwTab5t2" class="tab-pane">
                            <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                <div style="width:80%; float:left;">
                                    &nbsp;
                                 </div>
                                <div style="text-align:right; width:20%; float:left;">
                                    <div class="btn-group pull-right">
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divlwTab5t2', 'Газар болон заалтын тоо')">
                                            <i class="fa fa-file-word-o"></i>
                                        </a>
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Хэвлэх" onclick="PrintElem('#divlwTab5t2')">
                                            <i class="fa fa-print"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div id="loaderTab5t2" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="divlwTab5t2" runat="server" class="reports">
                                <div style="text-align: center; font-weight: bold; font-size: 11pt; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                    ГАЗАР БОЛОН ЗААЛТЫН ТОО
                                </div>
                                <div id="divlw5t2Table" runat="server"></div>                                    
                            </div>
                        </div>
                        <div id="lwTab5t3" class="tab-pane">
                            <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                <div style="width:80%; float:left;">
                                    <div style="width:65px; float:left; margin-right:10px;"><select id="lwTab5t3SelectYear" runat="server" class="form-control" style="padding:1px"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select></div>
                                    <div style="width:30px; float:left; margin-right:10px; padding-top:8px;">Газар: </div>
                                    <div style="width:90px; float:left; margin-right:10px;"><select id="lwTab5t3SelectGazar" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select></div>
                                    <div style="width:40px; float:left; margin-right:10px; padding-top:8px;">Хэлтэс: </div>
                                    <div style="width:90px; float:left; margin-right:10px;"><select id="lwTab5t3SelectHeltes" runat="server" class="form-control" style="padding:1px" disabled="disabled"><option value="">Бүгд</option></select></div>
                                </div>
                                <div style="text-align:right; width:20%; float:left;">
                                    <div class="btn-group pull-right">
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divlwTab5t3', 'Зорилттой холбогдсон заалт')">
                                            <i class="fa fa-file-word-o"></i>
                                        </a>
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Хэвлэх" onclick="PrintElem('#divlwTab5t3')">
                                            <i class="fa fa-print"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div id="loaderTab5t3" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="divlwTab5t3" runat="server" class="reports">
                                <div style="text-align: center; font-weight: bold; font-size: 11pt; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                    ЗОРИЛТТОЙ ХОЛБОГДСОН ЗААЛТ /ГАЗРААР/
                                </div>
                                <div id="divlw5t3Table" runat="server"></div>                                    
                            </div>
                             
                        </div>
                    </div>
                </div>
                <div id="lwTab6" class="tab-pane">
                    <div class="jarviswidget jarviswidget-color-blue" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> 
                                <i class="fa fa-table"></i> 
                            </span>
                            <h2> Зорилт </h2>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <button id="lwTab6AddBtn" runat="server" class="btn btn-primary btn-xs" type="button" data-target="#lwTab6Modal" data-toggle="modal" onclick="showAddEditTab6(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                </div> 
                            </div>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div class="Colvis TableTools" style="width:65px;right:125px; top:0px; z-index:5; margin-top:5px;">
                                <select id="lwTab6SelectHeltes" name="lwTab6SelectHeltes" runat="server" class="form-control" style="padding:1px" disabled="disabled"><option value="">Бүгд</option></select>
                            </div>
                            <div class="Colvis TableTools" style="right:195px; top:0px; z-index:5; margin-top:10px;">
                                Хэлтэс:
                            </div>
                            <div class="Colvis TableTools" style="width:80px;right:245px; top:0px; z-index:5; margin-top:5px;">
                                <select id="lwTab6SelectGazar" name="lwTab6SelectGazar" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select>
                            </div>
                            <div class="Colvis TableTools" style="right:330px; top:0px; z-index:5; margin-top:10px;">
                                Газар:
                            </div>
                            <div class="Colvis TableTools" style="width:61px;right:375px; top:0px; z-index:5; margin-top:5px;">
                                <select id="lwTab6SelectYear" name="lwTab6SelectYear" runat="server" class="form-control" style="padding:1px"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                            </div>
                            <div class="Colvis TableTools" style="width:148px; right:435px; top:8px; z-index:5; margin-top:1px;">
                                <button id="lwTab6ImportPrevYear" class="btn btn-warning btn-xs" type="button"><i class="fa fa-download"></i> Өмнөх оноос татах</button>
                            </div>
                            <div class="Colvis TableTools" style="width:148px; right:635px; top:8px; z-index:5; margin-top:1px;">
                                <button id="lwTab6ImportStratZorilt" class="btn btn-warning btn-xs" type="button"><i class="fa fa-download"></i> Стратегийн зорилтоос татах</button>
                            </div>
                            <div id="loaderTab6" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="divBindTab6Table" class="widget-body no-padding"></div>
                        </div>
                    </div>
                </div>
                <div id="lwTab7" class="tab-pane">
                    <div class="jarviswidget jarviswidget-color-blue" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> 
                                <i class="fa fa-table"></i> 
                            </span>
                            <h2> Үйл ажиллагаа </h2>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <button id="lwTab7AddBtn" runat="server" class="btn btn-primary btn-xs" type="button" data-target="#lwTab7Modal" data-toggle="modal" onclick="showAddEditTab7(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                </div> 
                            </div>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div class="Colvis TableTools" style="width:65px;right:125px; top:0px; z-index:5; margin-top:5px;">
                                <select id="lwTab7SelectHeltes" name="lwTab7SelectHeltes" runat="server" class="form-control" style="padding:1px" disabled="disabled"><option value="">Бүгд</option></select>
                            </div>
                            <div class="Colvis TableTools" style="right:195px; top:0px; z-index:5; margin-top:10px;">
                                Хэлтэс:
                            </div>
                            <div class="Colvis TableTools" style="width:80px;right:245px; top:0px; z-index:5; margin-top:5px;">
                                <select id="lwTab7SelectGazar" name="lwTab7SelectGazar" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select>
                            </div>
                            <div class="Colvis TableTools" style="right:330px; top:0px; z-index:5; margin-top:10px;">
                                Газар:
                            </div>
                            <div class="Colvis TableTools" style="width:61px;right:375px; top:0px; z-index:5; margin-top:5px;">
                                <select id="lwTab7SelectYear" name="lwTab7SelectYear" runat="server" class="form-control" style="padding:1px"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                            </div>
                            <div class="Colvis TableTools" style="width:148px; right:435px; top:8px; z-index:5; margin-top:1px;">
                                <button id="lwTab7ImportPrevYear" class="btn btn-warning btn-xs" type="button"><i class="fa fa-download"></i> Өмнөх оноос татах</button>
                            </div>
                            <div id="loaderTab7" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="divBindTab7Table" class="widget-body no-padding"></div>
                        </div>
                    </div>
                </div>
                <div id="lwTab8" class="tab-pane">
                    <div class="jarviswidget jarviswidget-color-blue" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> 
                                <i class="fa fa-table"></i> 
                            </span>
                            <h2> Индекс </h2>
                            <div class="widget-toolbar">  
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <button id="lwTab8AddBtn" runat="server" class="btn btn-primary btn-xs" type="button" data-target="#lwTab8Modal" data-toggle="modal" onclick="showAddEditTab8(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                </div> 
                            </div>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div class="Colvis TableTools" style="width:65px;right:125px; top:0px; z-index:5; margin-top:5px;">
                                <select id="lwTab8SelectType" name="lwTab8SelectType" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option><option value="1">1</option><option value="2">2</option><option value="3">3</option></select>
                            </div>
                            <div class="Colvis TableTools" style="right:195px; top:0px; z-index:5; margin-top:10px;">
                                Төрөл:
                            </div>
                            <div id="loaderTab8" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="divBindTab8Table" class="widget-body no-padding"></div>
                        </div>
                    </div>
                </div>
            </div>
        </article>
    </div>
</section>
<div id="lwTab1Modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="lwTab1ModalForm">
                <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			        <h4 class="modal-title">Төрөл&nbsp;<span id="lwTab1ModalHeaderLabel"></span></h4>
		        </div>
		        <div class="modal-body">
                    <div id="tab1ID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-12">
                                    <label class="control-label">*Нэр</label>
									<input id="lwTab1ModalInputName" name="lwTab1ModalInputName" type="text" class="form-control" placeholder="Нэр" />
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
<div id="lwTab2Modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="lwTab2ModalForm">
                <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			        <h4 class="modal-title">Төрөл&nbsp;<span id="lwTab2ModalHeaderLabel"></span></h4>
		        </div>
		        <div class="modal-body">
                    <div id="tab2ID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-8">
                                    <label class="control-label">*Төрөл</label>
									<select id="lwTab2ModalSelectType" name="lwTab2ModalSelectType" class="form-control"><option value="">- Сонго -</option></select>
                                </div>
                                <div class="col-md-4">
                                    <label class="control-label">*Батлагдсан огноо</label>
                                    <input id="lwTab2ModalInputDate" name="lwTab2ModalInputDate" type="text" class="form-control" placeholder="Огноо" />
                                </div>
                            </div>
						</div>
					</fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-12">
                                    <label class="control-label">*Нэр</label>
                                    <textarea id="lwTab2ModalInputName" name="lwTab2ModalInputName" class="form-control" placeholder="Нэр" rows="3"></textarea>
                                </div>
                            </div>
						</div>
					</fieldset>
                    <fieldset>
                        <div class="form-group" style="margin:10px 0 0 0; display:block; overflow:hidden;">
                            <div class="col-md-2" style="font-size:13px;">
                                Хавсралт файл:
                            </div>
                            <div class="col-md-10" style="font-style:italic;padding-left: 0;">
                                <a id="lwTab2ModalAttachBtn" class="btn btn-link btn-xs" href="javascript:void(0);" style="padding:0px; border:none;" download="">Файл хавсаргаагүй байна...</a>
                            </div>
                        </div>
                        <div class="form-group" style="margin:0; display:block; overflow:hidden;">
                            <div class="col-md-2">
                                <a id="lwTab2ModalAttachDelete" class="btn btn-link btn-xs" href="javascript:void(0);"><i class="fa fa-trash-o"></i> файл устгах</a>
                            </div>
                            <div class="col-md-10" style="padding-left: 0;">
                                <input id="lwTab2ModalAttachInput" type="file" class="btn btn-default">
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
<div id="lwTab3Modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="lwTab3ModalForm">
                <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			        <h4 class="modal-title">Заалт&nbsp;<span id="lwTab3ModalHeaderLabel"></span></h4>
		        </div>
		        <div class="modal-body">
                    <div id="tab3ID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-12">
                                    <label class="control-label">*Төрөл</label>
									<select id="lwTab3ModalSelectType" name="lwTab3ModalSelectType" class="form-control"><option value="">- Сонго -</option></select>
                                </div>
                            </div>
						</div>
					</fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-12">
                                    <label class="control-label">*Эрх зүйн акт</label>
									<select id="lwTab3ModalSelectLaw" name="lwTab3ModalSelectLaw" class="form-control" disabled><option value="">- Сонго -</option></select>
                                </div>
                            </div>
						</div>
					</fieldset>
                    <fieldset id="lwTab3ModalImportExcelDiv" class="hide">
						<div class="form-group">
                            <div class="row">
								<div class="col-md-10">
                                    <div class="alert alert-info fade in" style="margin-bottom: 2px;">
				                        <i class="fa-fw fa fa-info"></i>
				                        Сонгосон эрх зүйн актад хамааралтай заалт ороогүй тул та заалтаа эксэлээс татаж оруулах боломжтой!
			                        </div>
                                </div>
                                <div class="col-md-2">
                                    <a id="lwTab3ModalButtonDownloadExcel" href="../files/importexcel/template/LawZaaltRecords.xls" class="btn btn-link btn-block" download="">
                                         <i class="fa fa-file-excel-o"></i>&nbsp;&nbsp;Загвар татах
                                    </a>
                                </div>
                            </div>
                            <div class="row">
								<div class="col-md-10">
                                    <input id="lwTab3ModalInputImportExcel" type="file" class="btn btn-default" style="width:100%;"/>
                                </div>
                                <div class="col-md-2">
                                    <button id="lwTab3ModalButtonImportExcel" type="button" class="btn btn-primary btn-block">
								        <span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах
							        </button>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-4">
                                    <label class="control-label">*Дугаар</label>
									<input id="lwTab3ModalInputNo" name="lwTab3ModalInputNo" type="text" class="form-control" placeholder="Дугаар" />
                                </div>
                                <div class="col-md-8">
                                    <label class="control-label">*Нэр</label>
                                    <textarea id="lwTab3ModalInputName" name="lwTab3ModalInputName" class="form-control" placeholder="Нэр" rows="3"></textarea>
                                </div>
                            </div>
						</div>
					</fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-3">
                                    <label class="control-label">Хүн өдөр</label>
                                    <input id="lwTab3ModalInputPersonday" name="lwTab3ModalInputPersonday" type="text" class="form-control" placeholder="Хүн өдөр" />
                                </div>
                                <div class="col-md-9">
                                    <div class="row">
								        <div class="col-md-12">
                                            <label class="control-label">*Нэгж</label>
                                        </div>
								        <div id="lwTab3ModalSelect2BranchListDiv" class="col-md-12">
                                    
                                        </div>
                                    </div>
                                </div>
                            </div>
						</div>
					</fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-2">
                                    <label class="control-label">АБТ-д тусах эсэх</label>
                                    <div class="checkbox">
										<label>
											<input id="lwTab3ModalInputIsjobdesc" type="checkbox" class="checkbox style-0">
											<span>Тийм</span>
										</label>
									</div>
                                </div>
                                <div class="col-md-3">
                                    <label class="control-label">Жил/төлөвлөгөөнд тусах эсэх</label>
                                    <div class="checkbox">
										<label>
											<input id="lwTab3ModalInputIsplanyr" type="checkbox" class="checkbox style-0">
											<span>Тийм</span>
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
                                    <label class="control-label">Тайлбар</label>
                                    <textarea id="lwTab3ModalInputDescription" name="lwTab3ModalInputDescription" class="form-control" placeholder="Тайлбар" rows="3"></textarea>
                                </div>
                            </div>
						</div>
					</fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-12">
                                    <label class="control-label">Индекс 1</label>
                                </div>
								<div id="lwTab3ModalSelect2Index1ListDiv" class="col-md-12">
                                    
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-12">
                                    <label class="control-label">Индекс 2</label>
                                </div>
								<div id="lwTab3ModalSelect2Index2ListDiv" class="col-md-12">
                                    
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-12">
                                    <label class="control-label">Индекс 3</label>
                                </div>
								<div id="lwTab3ModalSelect2Index3ListDiv" class="col-md-12">
                                    
                                </div>
                            </div>
                        </div>
                    </fieldset>
		        </div>
		        <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Болих</button>
			        <button id="lwTab3ModalFormButton" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах</button>
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
<div id="lwTab4Modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="lwTab4ModalForm">
                <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			        <h4 class="modal-title">Үйл ажиллагаа&nbsp;<span id="lwTab4ModalHeaderLabel"></span></h4>
		        </div>
		        <div class="modal-body">
                    <div id="tab4ID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-12">
                                    <label class="control-label">*Төрөл</label>
									<select id="lwTab4ModalSelectType" name="lwTab4ModalSelectType" class="form-control"><option value="">- Сонго -</option></select>
                                </div>
                            </div>
						</div>
					</fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-12">
                                    <label class="control-label">*Эрх зүйн акт</label>
									<select id="lwTab4ModalSelectLaw" name="lwTab4ModalSelectLaw" class="form-control" disabled><option value="">- Сонго -</option></select>
                                </div>
                            </div>
						</div>
					</fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-12">
                                    <label class="control-label">*Заалт</label>
									<select id="lwTab4ModalSelectZaalt" name="lwTab4ModalSelectZaalt" class="form-control" disabled><option value="">- Сонго -</option></select>
                                </div>
                            </div>
						</div>
					</fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-12">
                                    <label class="control-label">*Дугаар</label>
									<input id="lwTab4ModalInputNo" name="lwTab4ModalInputNo" type="text" class="form-control" placeholder="Дугаар" />
                                </div>
                            </div>
						</div>
					</fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-12">
                                    <label class="control-label">*Нэр</label>
									<input id="lwTab4ModalInputName" name="lwTab4ModalInputName" type="text" class="form-control" placeholder="Нэр" />
                                </div>
                            </div>
						</div>
					</fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
								<div class="col-md-12">
                                    <label class="control-label">*Газар,хэлтэс</label>
                                </div>
								<div id="lwTab4ModalSelect2BranchListDiv" class="col-md-12">
                                    
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
<div id="lwTab6Modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="lwTab6ModalForm">
                <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			        <h4 class="modal-title">Зорилт&nbsp;<span id="lwTab6ModalHeaderLabel"></span></h4>
		        </div>
		        <div class="modal-body">
                    <div id="tab6ID" class="hide"></div>
                    <div class="row">
                        <div class="col-md-12">
                            <fieldset>
						        <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <label class="control-label">*Он</label>
                                            <select id="lwTab6ModalSelectYear" name="lwTab6ModalSelectYear" runat="server" class="form-control" style="padding:1px"><option value="">- Сонго -</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                        </div>
                                        <div class="col-md-7">
                                            <label class="control-label">*Нэгж</label>
                                            <select id="lwTab6ModalSelectGazar" name="lwTab6ModalSelectGazar" runat="server" class="form-control" style="padding:1px" disabled="disabled"><option value="">Бүгд</option></select>
                                        </div>
                                        <div class="col-md-3">
                                            <label class="control-label">*Дугаар</label>
									        <input id="lwTab6ModalInputNo" name="lwTab6ModalInputNo" type="text" class="form-control" placeholder="Дугаар" />
                                        </div>
                                    </div>
                                    <div class="row">
								        <div class="col-md-12">
                                            <label class="control-label">*Нэр</label>
                                            <textarea id="lwTab6ModalInputName" name="lwTab6ModalInputName" class="form-control" placeholder="Нэр" rows="3"></textarea>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div style="margin-top:10px; border-bottom:1px solid #DDD; text-align:right;">
                                                <i>Заалттай холбох</i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <label class="control-label">*Төрөл</label>
                                            <select id="lwTab6ModalSelectLawtype" name="lwTab6ModalSelectLawtype" runat="server" class="form-control" style="padding:1px"><option value="">- Сонго -</option></select>
                                        </div>
                                        <%--<div class="col-md-2">
                                            <label class="control-label">*Он</label>
                                            <select id="lwTab6ModalSelectLawZaaltYear" name="lwTab6ModalSelectLawZaaltYear" runat="server" class="form-control" style="padding:1px"><option value="">- Сонго -</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                        </div>--%>
                                        <div class="col-md-2">
                                            <label class="control-label">*Газар</label>
                                            <select id="lwTab6ModalSelectLawzaaltGazar" name="lwTab6ModalSelectLawzaaltGazar" runat="server" class="form-control" style="padding:1px" disabled><option value="">- Бүгд -</option></select>
                                        </div>
                                        <div class="col-md-2">
                                            <label class="control-label">*Хэлтэс</label>
                                            <select id="lwTab6ModalSelectLawzaaltHeltes" name="lwTab6ModalSelectLawzaaltHeltes" runat="server" class="form-control" style="padding:1px" disabled><option value="">- Бүгд -</option></select>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <label class="control-label">*Эрх зүйн акт</label>
                                            <select id="lwTab6ModalSelectLaw" name="lwTab6ModalSelectLaw" runat="server" class="form-control" style="padding:1px" disabled><option value="">- Сонго -</option></select>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="text-left" style="display:block; overflow:hidden;"><small><i>Сонгосон заалт</i></small></div>
                                            <div style="display:block; overflow:hidden;">
                                                <ul id="lwTab6ModalUlZaaltDesc" style="padding:0;">
                                                    <li><span class="label label-default">1.1.1</span><span class="hide">1</span></li><li><span class="label label-default">1.1.2</span><span class="hide">2</span></li>
                                                </ul>
                                            </div>
                                            <div class="text-right" style="display:block; overflow:hidden;"><small><i>Заалттай холбох</i></small></div>
                                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                                <header>
                                                    <span class="widget-icon"> <i class="fa fa-table"></i> Заалт</span>
                                                </header>
                                                <div>
                                                    <div id="lwTab6ModalLoader1" class="search-background">
                                                        <img width="64" height="" src="img/loading.gif"/>
                                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                                    </div>
                                                    <div class="widget-body no-padding" style="height:645px;">
                                                        <table id="lwTab6ModalDatatable" class="table table-striped table-hover">
                                            
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                    </div>
		        </div>
		        <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Болих</button>
			        <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах</button>
		        </div>
            </form>
        </div>
	</div>
</div>
<div id="lwTab7Modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="lwTab7ModalForm">
                <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			        <h4 class="modal-title">Үйл ажиллагаа&nbsp;<span id="lwTab7ModalHeaderLabel"></span></h4>
		        </div>
		        <div class="modal-body">
                    <div id="tab7ID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-4">
                                    <label class="control-label">*Он</label>
                                    <select id="lwTab7ModalSelectYear" name="lwTab7ModalSelectYear" runat="server" class="form-control" style="padding:1px"><option value="">- Сонго -</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div>
                                <div class="col-md-4">
                                    <label class="control-label">*Газар</label>
                                    <select id="lwTab7ModalSelectGazar" name="lwTab7ModalSelectGazar" runat="server" class="form-control" style="padding:1px" disabled><option value="">- Бүгд -</option></select>
                                </div>
                                <div class="col-md-4">
                                    <label class="control-label">*Хэлтэс</label>
                                    <select id="lwTab7ModalSelectHeltes" name="lwTab7ModalSelectHeltes" runat="server" class="form-control" style="padding:1px" disabled><option value="">- Бүгд -</option></select>
                                </div>
                            </div>
                            <div class="row">
								<div class="col-md-12">
                                    <label class="control-label">*Зорилт</label>
									<select id="lwTab7ModalSelectZorilt" name="lwTab7ModalSelectZorilt" class="form-control" disabled><option value="">- Сонго -</option></select>
                                </div>
                            </div>
                            <div class="row">
								<div class="col-md-2">
                                    <label class="control-label">*Дугаар</label>
									<input id="lwTab7ModalInputNo" name="lwTab7ModalInputNo" type="text" class="form-control" placeholder="Дугаар" />
                                </div>
                                <div class="col-md-10">
                                    <label class="control-label">*Нэр</label>
                                    <textarea id="lwTab7ModalInputName" name="lwTab7ModalInputName" class="form-control" placeholder="Нэр" rows="3"></textarea>
                                </div>
                            </div>
						</div>
					</fieldset>
		        </div>
		        <div class="modal-footer">
                    <div class="row">
                        <div class="col-md-12">
			                <button type="button" class="btn btn-default" data-dismiss="modal">Болих</button>
			                <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах</button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12" style="margin-top:10px;">
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>Нэмсэн үйл ажиллагаа</th>
                                    </tr>
                                </thead>
                                <tbody id="pTab7InsertedZorilt">

                                </tbody>
                            </table>
                        </div>
                    </div>
		        </div>
            </form>
        </div>
	</div>
</div>
<div id="lwTab8Modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="lwTab8ModalForm">
                <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			        <h4 class="modal-title">Индекс&nbsp;<span id="lwTab8ModalHeaderLabel"></span></h4>
		        </div>
		        <div class="modal-body">
                    <div id="tab8ID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-4">
                                    <label class="control-label">*Төрөл</label>
                                    <select id="lwTab8ModalSelectType" name="lwTab8ModalSelectType" runat="server" class="form-control" style="padding:1px"><option value="">- Сонго -</option><option value="1">1</option><option value="2">2</option><option value="3">3</option></select>
                                </div>
                                <div class="col-md-8">
                                    <label class="control-label">*Дугаар</label>
                                    <input id="lwTab8ModalInputNo" name="lwTab6ModalInputNo" type="text" class="form-control" placeholder="Дугаар" />
                                </div>
                            </div>
						</div>
					</fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Тайлбар</label>
                                    <textarea id="lwTab8ModalInputName" name="lwTab7ModalInputName" class="form-control" placeholder="Нэр" rows="3"></textarea>
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
<script>
    pageSetUp();
    var globalAjaxVar = null;
    var pagefunction = function () {
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/LwTab2TypeListForDDL",
            data: '{}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.ID + '">' + value.NAME + '</option>';
                });
                $("#lwTab2SelectType, #lwTab3SelectType, #lwTab4SelectType, #lwTab5SelectType, #lwTab7SelectType, #lwTab5t1SelectType").html(valData);
                $("#lwTab6ModalSelectLawtype").html('<option value="">- Сонго -</option>'+valData);
                $("#lwTab2ModalSelectType, #lwTab3ModalSelectType, #lwTab4ModalSelectType, #lwTab7ModalSelectType").html('<option value="">- Сонго -</option>'+valData);
                if ($('#lwTab1Li').attr('class') == 'active') {
                    dataBindTab1Datatable();
                }
                else if ($('#lwTab2Li').attr('class') == 'active') {
                    dataBindTab2Datatable();
                }
                else if ($('#lwTab3Li').attr('class') == 'active') {
                    lwTab3SetFirstControls();
                }
                else if ($('#lwTab4Li').attr('class') == 'active') {
                    dataBindTab4Datatable();
                }
                else if ($('#lwTab5Li').attr('class') == 'active') {
                    lwTab5SetFirstControls();
                }
                else if ($('#lwTab6Li').attr('class') == 'active') {
                    lwTab6SetFirstControls();
                }
                else if ($('#lwTab7Li').attr('class') == 'active') {
                    lwTab7SetFirstControls();
                }
                else if ($('#lwTab8Li').attr('class') == 'active') {
                    dataBindTab8Datatable();
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
    function lwDatabindTabs(el) {
        if ($.trim($(el).attr('id')) == 'lwTab1Li') {
            if ($.trim($('#divBindTab1Table').html()) == "") {
                dataBindTab1Datatable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'lwTab2Li') {
            if ($.trim($('#divBindTab2Table').html()) == "") {
                dataBindTab2Datatable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'lwTab3Li') {
            if ($.trim($('#divBindTab3Table').html()) == "") {
                lwTab3SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'lwTab4Li') {
            if ($.trim($('#divBindTab4Table').html()) == "") {
                lwTab4SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'lwTab5Li') {
            if ($.trim($('#divlw5t1Table').html()) == "") {
                lwTab5SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'lwTab5t1Li') {
            if ($.trim($('#divlw5t1Table').html()) == "") {
                lwTab5t1SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'lwTab5t2Li') {
            if ($.trim($('#divlw5t2Table').html()) == "") {
                dataBindTab5t2Datatable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'lwTab5t3Li') {
            if ($.trim($('#divlw5t3Table').html()) == "") {
                lwTab5t3SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'lwTab6Li') {
            if ($.trim($('#divBindTab6Table').html()) == "") {
                lwTab6SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'lwTab7Li') {
            if ($.trim($('#divBindTab7Table').html()) == "") {
                lwTab7SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'lwTab8Li') {
            if ($.trim($('#divBindTab8Table').html()) == "") {
                dataBindTab8Datatable();
            }
        }
    }
    //таб1
    function dataBindTab1Datatable() {
        var valData = '', isDisabled=' disabled="disabled"';
        showLoader('loaderTab1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/LwTab1Datatable",
            data: '{}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (funcCheckRoles('1,39')) {
                    isDisabled = '';
                }
                valData = "";
                valData = "<table id=\"lwTab1Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th>Нэр</th>";
                valData += "<th>&nbsp;</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td><a" + isDisabled + "style=\"cursor:pointer; margin-right:8px;\" onclick=\"showAddEditTab1(this,'засах');\" data-target=\"#lwTab1Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></a><a" + isDisabled + " style=\"cursor:pointer;\" onclick=\"showDeleteTab1(this);\"><i class=\"fa fa-trash-o\"></i></a></td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_lwTab1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#lwTab1Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_lwTab1Datatable) {responsiveHelper_lwTab1Datatable = new ResponsiveDatatablesHelper($('#lwTab1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_lwTab1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_lwTab1Datatable.respond();}, \"aoColumns\": [null, { \"sWidth\": \"25px\" }]});";
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
        $('#lwTab1ModalHeaderLabel').text(isinsupt);
        if (isinsupt == 'нэмэх') {
            $('#tab1ID').text("");
            $('#lwTab1ModalInputName').val("");
        }
        else {
            $('#tab1ID').text($(el).closest('tr').attr('data-id'));
            $('#lwTab1ModalInputName').val($(el).closest('tr').find('td:eq(0)').text());
        }
    }
    function showDeleteTab1(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_LAW WHERE LAW_TYPE_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == "0") {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: $(el).closest('tr').find('td:eq(1)').text() + " дугаартай төрлийг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"DELETE FROM TBL_LAW_TYPE WHERE ID=' + $(el).closest('tr').find('td:eq(0)').text() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab1Datatable();
                                    smallBox('Төрөл', 'Амжилттай удтгагдлаа', '#659265', 3000);
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
                else alert($(el).closest('tr').find('td:eq(2)').text() + ' -д хамааралтай Эрх зүйн акт орсон тул устгах боломжгүй байна!');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $('#lwTab1ModalForm').bootstrapValidator({
        fields: {
            lwTab1ModalInputName: {
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
            if ($('#lwTab1ModalHeaderLabel').text() == 'нэмэх') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"INSERT INTO TBL_LAW_TYPE (ID, NAME) VALUES (TBLLASTID(\'TBL_LAW_TYPE\'), \'' + $.trim($('#lwTab1ModalInputName').val()) + '\')"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab1Datatable();
                        $('#lwTab1Modal').modal('hide');
                        smallBox('Төрөл', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
                    data: '{"qry":"UPDATE TBL_LAW_TYPE SET NAME=\'' + $.trim($('#lwTab1ModalInputName').val()) + '\' WHERE ID=' + $('#tab1ID').text() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab1Datatable();
                        $('#lwTab1Modal').modal('hide');
                        smallBox('Төрөл', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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

    //таб2
    function dataBindTab2Datatable() {
        var valData = '', isDisabled=' disabled="disabled"';
        showLoader('loaderTab2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/LwTab2Datatable",
            data: '{"tp":"' + $('#lwTab2SelectType option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (funcCheckRoles('1,39')) {
                    isDisabled = '';
                }
                valData = "";
                valData = "<table id=\"lwTab2Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Батлагдсан огноо</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Эрх зүйн акт</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хавсралт</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Засварлах</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хаах</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\" data-lawtypeid=\"" + value.LAW_TYPE_ID + "\">";
                    valData += "<td>" + value.DT + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td>";
                    if (value.FILENAME != "") {
                        valData += "<div class=\"btn-group\">";
                        valData += "<a href=\"../files/lw/" + value.FILENAME + "\" class=\"btn btn-default btn-xs\" download title=\"Хавсаргасан файл татах\"><i class=\"fa fa-download\"></i></a>";
                        valData += "<a href=\"../pg/lwTab2AttachShowModal.aspx?filename=" + value.FILENAME + "\" class=\"btn btn-default btn-xs\" data-target=\"#lwTab2AttachShowModal\" data-toggle=\"modal\"><i class=\"fa fa-eye\"></i></a>";
                        valData += "</div>";
                    }
                    valData += "</td>";
                    valData += "<td>";
                    valData += "<div class=\"btn-group\">";
                    valData += "<button" + isDisabled + " type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab2(this,'засах');\" data-target=\"#lwTab2Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                    valData += "<button" + isDisabled + " type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab2(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                    valData += "</div>";
                    valData += "</td>";
                    valData += "<td style=\"text-align:center; vertical-align:middle;\">";
                    valData += "<span class=\"onoffswitch\"><input" + isDisabled + " id=\"onoffCheckbox" + value.ID + "\" name=\"onoffCheckbox" + value.ID + "\" type=\"checkbox\" " + value.ISCLOSED + " class=\"onoffswitch-checkbox\" onclick=\"saveIsClosed(this);\"><label class=\"onoffswitch-label\" for=\"onoffCheckbox" + value.ID + "\"><span class=\"onoffswitch-inner\" data-swchon-text=\"ON\" data-swchoff-text=\"OFF\"></span><span class=\"onoffswitch-switch\"></span></label></span>";
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_lwTab2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#lwTab2Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_lwTab2Datatable) {responsiveHelper_lwTab2Datatable = new ResponsiveDatatablesHelper($('#lwTab2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_lwTab2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_lwTab2Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"73px\" }, null,{ \"sWidth\": \"50px\" },{ \"sWidth\": \"47px\", \"bSortable\": false }, { \"sWidth\": \"15px\", \"bSortable\": false }]});";
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
        $('#lwTab2ModalHeaderLabel').text(isinsupt);
        if (isinsupt == 'нэмэх') {
            $('#tab2ID').text("");
            $('#lwTab2ModalSelectType').val('');
            $('#lwTab2ModalInputName').val('');
            $('#lwTab2ModalInputDate').val('');
            $('#lwTab2ModalAttachBtn').html('Файл хавсаргаагүй байна...');
            $('#lwTab2ModalAttachBtn').attr('href', 'javascript:void(0);');
            $('#lwTab2ModalAttachInput').val('');
        }
        else {
            $('#tab2ID').text($(el).closest('tr').attr('data-id'));
            $('#lwTab2ModalSelectType').val($(el).closest('tr').attr('data-lawtypeid'));
            $('#lwTab2ModalInputName').val($(el).closest('tr').find('td:eq(1)').html());
            $('#lwTab2ModalInputDate').val($(el).closest('tr').find('td:eq(0)').html());
        }
    }
    function showDeleteTab2(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_LAWZAALT WHERE LAW_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == "0") {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: $(el).closest('tr').find('td:eq(2)').text() + " дугаартай хуулийг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"DELETE FROM TBL_LAW WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab2Datatable();
                                    smallBox('Эрх зүйн акт', 'Амжилттай устгагдлаа', '#659265', 3000);
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
                else alert('Сонгосон эрх зүйн актад хамааралтай заалт орсон тул устгах боломжгүй байна!');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#lwTab2ModalAttachInput").change(function () {
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
            $('#lwTab2ModalAttachBtn').html($(this).val().split('\\').pop());
        }
        else alert(errMsg);
    });
    $("#lwTab2ModalAttachDelete").click(function () {
        if ($('#lwTab2ModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
            $.SmartMessageBox({
                title: "Анхааруулга!",
                content: "Та устгахдаа итгэлтэй байна уу?",
                buttons: '[Үгүй][Тийм]'
            }, function (ButtonPressed) {
                if (ButtonPressed === "Тийм") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/DeleteFile",
                        data: '{"filename":"~/files/lw/' + $('#lwTab2ModalAttachBtn').html() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            $('#lwTab2ModalAttachBtn').html('Файл хавсаргаагүй байна...');
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
    $("#lwTab2SelectType").change(function () {
        if ($("#lwTab2SelectType option:selected").val() == '6') {
            $('#lwTab2ImportTushaalSaid').parent().css('display', 'block');
            $('#lwTab2ImportTushaalTNBD').parent().css('display', 'none');
        }
        else if ($("#lwTab2SelectType option:selected").val() == '7') {
            $('#lwTab2ImportTushaalSaid').parent().css('display', 'none');
            $('#lwTab2ImportTushaalTNBD').parent().css('display', 'block');
        }
        else {
            $('#lwTab2ImportTushaalSaid').parent().css('display', 'none');
            $('#lwTab2ImportTushaalTNBD').parent().css('display', 'none');
        }
        dataBindTab2Datatable();
    });
    $('#lwTab2ModalForm').bootstrapValidator({
        //feedbackIcons: {
        //    valid: 'glyphicon glyphicon-ok',
        //    invalid: 'glyphicon glyphicon-remove',
        //    validating: 'glyphicon glyphicon-refresh'
        //},
        fields: {
            lwTab2ModalSelectType: {
                group: '.col-md-8',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            lwTab2ModalInputDate:{
                group: '.col-md-4',
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    date: {
                        format: 'YYYY-MM-DD',
                        message: 'Огноо зөв оруулна уу /жил-сар-өдөр/'
                    }
                }
            },
            lwTab2ModalInputName: {
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
            var filename = 'null';
            var filenameF = '';
            if ($('#lwTab2ModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') filename = '\'' + $.trim($('#lwTab2ModalAttachBtn').html()) + '\'';
            if ($('#lwTab2ModalHeaderLabel').text() == 'нэмэх') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                    data: '{"qry":"SELECT TBLLASTID(\'TBL_LAW\') FROM DUAL"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        if ($('#lwTab2ModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
                            filename = '\'ЭрхЗүйнАкт-' + data.d + '.' + $('#lwTab2ModalAttachInput').val().split('.').pop() + '\'';
                            filenameF = 'ЭрхЗүйнАкт-' + data.d + '.' + $('#lwTab2ModalAttachInput').val().split('.').pop() + '';
                        }
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                            data: '{"qry":"INSERT INTO TBL_LAW (ID, LAW_TYPE_ID, NAME, DT, FILENAME) VALUES (TBLLASTID(\'TBL_LAW\'), ' + $('#lwTab2ModalSelectType option:selected').val() + ', \'' + $.trim($('#lwTab2ModalInputName').val()) + '\', \'' + $.trim($('#lwTab2ModalInputDate').val()) + '\', ' + filename + ')"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function () {
                                if ($('#lwTab2ModalAttachInput').val() != '') {
                                    var valMaxId = '';
                                    globalAjaxVar = $.ajax({
                                        type: "POST",
                                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                        data: '{"qry":"SELECT NVL(MAX(ID),1) FROM TBL_LAW"}',
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function (data) {
                                            valMaxId = data.d;
                                            var uploadfiles = $("#lwTab2ModalAttachInput").get(0);
                                            var uploadedfiles = uploadfiles.files;
                                            var fromdata = new FormData();
                                            fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                                            var choice = {};
                                            choice.url = "pg/UploadFile.ashx?folder=lw&filename=" + filenameF;
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
                                dataBindTab2Datatable();
                                $('#lwTab2Modal').modal('hide');
                                smallBox('Эрх зүйн акт', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
                if ($('#lwTab2ModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
                    filename = '\'ЭрхЗүйнАкт-' + $('#tab2ID').text() + '.' + $('#lwTab2ModalAttachInput').val().split('.').pop() + '\'';
                    filenameF = 'ЭрхЗүйнАкт-' + $('#tab2ID').text() + '.' + $('#lwTab2ModalAttachInput').val().split('.').pop() + '';
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"UPDATE TBL_LAW SET LAW_TYPE_ID=' + $('#lwTab2ModalSelectType option:selected').val() + ', NAME=\'' + $.trim($('#lwTab2ModalInputName').val()) + '\', DT=\'' + $.trim($('#lwTab2ModalInputDate').val()) + '\', FILENAME=' + filename + ' WHERE ID=' + $('#tab2ID').text() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        if ($('#lwTab2ModalAttachInput').val() != '') {
                            var uploadfiles = $("#lwTab2ModalAttachInput").get(0);
                            var uploadedfiles = uploadfiles.files;
                            var fromdata = new FormData();
                            fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                            var choice = {};
                            choice.url = "pg/UploadFile.ashx?folder=lw&filename=" + filenameF;
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
                        dataBindTab2Datatable();
                        $('#lwTab2Modal').modal('hide');
                        smallBox('Эрх зүйн акт', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
    function saveIsClosed(el) {
        var valIsSubmit = '0';
        if (!$(el).prop('checked')) {
            valIsSubmit = '1';
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
            data: '{"qry":"UPDATE TBL_LAW SET ISCLOSED=' + valIsSubmit + ' WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function () {
                smallBox('Сонгосон эрх зүйн акт', 'Амжилттай хаагдлаа...', '#659265', 3000);
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#lwTab2ImportTushaalSaid").click(function () {
        $("#lwTab2ImportTushaalSaid").html('<i class="fa fa-refresh fa-spin"></i>');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) as CNT FROM TBL_TUSHAAL WHERE ISIMPORTEDLAW=0 AND TUSHAAL_TYPE=3"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (confirm('Эрх зүйн актад татагдаагүй Сангийн сайдын '+data.d+' тушаал байна! Та эдгээр тушаалыг татах уу?')) {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/LwTab2ImportTushaal",
                        data: '{"tushaaltype":"' + $('#lwTab2SelectType option:selected').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            $("#lwTab2ImportTushaalSaid").html('<i class="fa fa-download"></i> СС-н тушаал татах');
                            alert(data.d);
                            dataBindTab2Datatable();
                            smallBox('Эрх зүйн акт', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
                    $("#lwTab2ImportTushaalSaid").html('<i class="fa fa-download"></i> СС-н тушаал татах');
                    // Do nothing!
                }
            },
            failure: function (response) {
                $("#lwTab2ImportTushaalSaid").html('<i class="fa fa-download"></i> СС-н тушаал татах');
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                $("#lwTab2ImportTushaalSaid").html('<i class="fa fa-download"></i> СС-н тушаал татах');
                window.location = '../#pg/error500.aspx';
            }
        });
    });
    $("#lwTab2ImportTushaalTNBD").click(function () {
        $("#lwTab2ImportTushaalTNBD").html('<i class="fa fa-refresh fa-spin"></i>');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) as CNT FROM TBL_TUSHAAL WHERE ISIMPORTEDLAW=0 AND TUSHAAL_TYPE=2"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (confirm('Эрх зүйн актад татагдаагүй ТНБД-н ' + data.d + ' тушаал байна! Та эдгээр тушаалыг татах уу?')) {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/LwTab2ImportTushaal",
                        data: '{"tushaaltype":"' + $('#lwTab2SelectType option:selected').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            $("#lwTab2ImportTushaalTNBD").html('<i class="fa fa-download"></i> ТНБД-н тушаал татах');
                            alert(data.d);
                            dataBindTab2Datatable();
                            smallBox('Эрх зүйн акт', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
                    $("#lwTab2ImportTushaalTNBD").html('<i class="fa fa-download"></i> ТНБД-н тушаал татах');
                    // Do nothing!
                }
            },
            failure: function (response) {
                $("#lwTab2ImportTushaalTNBD").html('<i class="fa fa-download"></i> ТНБД-н тушаал татах');
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                $("#lwTab2ImportTushaalTNBD").html('<i class="fa fa-download"></i> ТНБД-н тушаал татах');
                window.location = '../#pg/error500.aspx';
            }
        });
    });

    //таб3
    function dataBindTab3SelectLaw() {
        var valData = '';
        if ($('#lwTab3ModalSelectType option:selected').val() == '') {
            $('#lwTab3ModalSelectLaw').html('<option value="">-Сонго-</option>');
            $('#lwTab3ModalSelectLaw').prop('disabled', true);
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/LwTab3LawListForDDL",
                data: '{"tp":"' + $('#lwTab3ModalSelectType option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.ID + '">' + value.NAME + '</option>';
                    });
                    if (valData == '') valData += "<option value=\"99745707\"><i>Мэдээлэл алга...</i></option>";
                    $('#lwTab3ModalSelectLaw').html("<option value=\"\">- Сонго -</option>" + valData);
                    $('#lwTab3ModalSelectLaw').prop('disabled', false);
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
    function lwTab3SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr":"' + $('#indexCurrentYear').text() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#lwTab3SelectGazar").html('<option value="">Бүгд</option>' + valData);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/LwTab3LawListForDDL",
                    data: '{"tp":"' + $('#lwTab3SelectType option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.ID + '">' + value.NAME + '</option>';
                        });
                        if (valData == '') valData += "<option value=\"99745707\"><i>Мэдээлэл алга...</i></option>";
                        $('#lwTab3SelectLaw').html(valData);
                        $('#lwTab3SelectLaw').prop('disabled', false);
                        dataBindTab3Datatable();
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
    function dataBindTab3Datatable() {
        var valData = '', isDisabled = ' disabled="disabled"';
        showLoader('loaderTab3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/LwTab3Datatable",
            data: '{"tp":"' + $('#lwTab3SelectType option:selected').val() + '", "law":"' + $('#lwTab3SelectLaw option:selected').val() + '", "yr":"' + $('#indexCurrentYear').text() + '", "gazar":"' + $('#lwTab3SelectGazar option:selected').val() + '", "heltes":"' + $('#lwTab3SelectHeltes option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (funcCheckRoles('1,39')) {
                    isDisabled = '';
                }
                valData = '';
                valData = "<table id=\"lwTab3Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                valData += "<tr>";
                //valData += "<th>Хууль</th>";
                valData += "<th>№</th>";
                valData += "<th>Нэр</th>";
                valData += "<th>Нэгж</th>";
                valData += "<th>АБТ</th>";
                valData += "<th>ЖТө</th>";
                valData += "<th>Х/ө</th>";
                valData += "<th>Индекс 1</th>";
                valData += "<th>Индекс 2</th>";
                valData += "<th>Индекс 3</th>";
                valData += "<th>&nbsp;</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.LAWZAALT_ID + "\" data-typeid=\"" + value.LAW_TYPE_ID + "\" data-lawid=\"" + value.LAW_ID + "\" data-brlistid=\"" + value.NEGJLISTID + "\">";
                    //valData += "<td>" + replaceDatabaseToDisplay(value.LAW) + "</td>";
                    valData += "<td>" + value.NO + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td>" + value.NEGJLISTNAME + "</td>";
                    valData += "<td onmouseover=\"lwTab3IsJobdescOnMouseOverFunc(this)\" onmouseout=\"lwTab3IsJobdescOnMouseOutFunc(this)\" onclick=\"lwTab3IsJobdescOnClickFunc(this)\">" + value.ISJOBDESC + "</td>";
                    valData += "<td onmouseover=\"lwTab3IsPlanyrOnMouseOverFunc(this)\" onmouseout=\"lwTab3IsPlanyrOnMouseOutFunc(this)\" onclick=\"lwTab3IsPlanyrOnClickFunc(this)\">" + value.ISPLANYR + "</td>";
                    valData += "<td>" + value.PERSONDAY + "</td>";
                    valData += "<td data-id=\"" + value.INDEX1LISTID + "\">" + value.INDEX1LISTNO + "</td>";
                    valData += "<td data-id=\"" + value.INDEX2LISTID + "\">" + value.INDEX2LISTNO + "</td>";
                    valData += "<td data-id=\"" + value.INDEX3LISTID + "\">" + value.INDEX3LISTNO + "</td>";
                    valData += "<td>";
                    valData += "<div class=\"btn-group\">";
                    valData += "<button" + isDisabled + " type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab3(this,'засах');\" data-target=\"#lwTab3Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                    valData += "<button" + isDisabled + " type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab3(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                    valData += "<a href=\"pg/lwTab3ModalInfo.aspx?id=" + value.LAWZAALT_ID + "&yr=" + $('#indexCurrentYear').text() + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTab3ModalInfo\" data-toggle=\"modal\"><i class=\"fa fa-info\"></i></button>";
                    valData += "</div>";
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_lwTab3Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#lwTab3Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_lwTab3Datatable) {responsiveHelper_lwTab3Datatable = new ResponsiveDatatablesHelper($('#lwTab3Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_lwTab3Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_lwTab3Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"25px\", \"sClass\": \"text-center\" }, null, { \"sWidth\": \"100px\" }, { \"sWidth\": \"10px\", \"sClass\": \"text-center\" }, { \"sWidth\": \"10px\", \"sClass\": \"text-center\" }, { \"sWidth\": \"30px\", \"sClass\": \"text-center\" }, null, null, null, { \"sWidth\": \"62px\", \"bSortable\": false }]});<\/script>";
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
    function showAddEditTab3(el, isinsupt) {
        var valData = '';
        $('#lwTab3ModalHeaderLabel').text(isinsupt);
        $('#lwTab3ModalImportExcelDiv').attr('class', 'hide');
        $('#lwTab3ModalInputImportExcel').val('');
        $('#lwTab3ModalFormButton').removeAttr('disabled');
        if (isinsupt == 'нэмэх') {
            $('#tab3ID').text("");
            $('#lwTab3ModalSelectType').val('');
            $('#lwTab3ModalSelectLaw').html('<option value=\"\">- Сонго -</option>');
            $('#lwTab3ModalSelectLaw').prop('disabled',true);
            $('#lwTab3ModalInputNo').val('');
            $('#lwTab3ModalInputName').val('');
            $('#lwTab3ModalInputPersonday').val('');
            dataBindTab3BranchListSelect2($('#indexCurrentYear').text(), '');
            $('#lwTab3ModalInputIsjobdesc, #lwTab3ModalInputIsplanyr').prop('checked', false);
            $('#lwTab3ModalInputDescription').val('');
            dataBindTab3IndexListSelect2('1', '');
            dataBindTab3IndexListSelect2('2', '');
            dataBindTab3IndexListSelect2('3', '');
        }
        else {
            $('#tab3ID').text($(el).closest('tr').attr('data-id'));
            $('#lwTab3ModalSelectType').val($(el).closest('tr').attr('data-typeid'));
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/LwTab3LawListForDDL",
                data: '{"tp":"' + $('#lwTab3ModalSelectType option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.ID + '">' + value.NAME + '</option>';
                    });
                    if (valData == '') valData += "<option value=\"99745707\"><i>Мэдээлэл алга...</i></option>";
                    $('#lwTab3ModalSelectLaw').html("<option value=\"\">- Сонго -</option>" + valData);
                    $('#lwTab3ModalSelectLaw').prop('disabled', false);
                    $('#lwTab3ModalSelectLaw').val($(el).closest('tr').attr('data-lawid'));
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });            
            $('#lwTab3ModalInputNo').val($(el).closest('tr').find('td:eq(0)').text());
            $('#lwTab3ModalInputName').val($(el).closest('tr').find('td:eq(1)').text());
            $('#lwTab3ModalInputPersonday').val($(el).closest('tr').find('td:eq(5)').text());
            dataBindTab3BranchListSelect2($('#indexCurrentYear').text(), $(el).closest('tr').attr('data-brlistid'));
            $('#lwTab3ModalInputIsjobdesc, #lwTab3ModalInputIsplanyr').prop('checked', false);
            if ($(el).closest('tr').find('td:eq(3)').text() == '✔') $('#lwTab3ModalInputIsjobdesc').prop('checked', true);
            if ($(el).closest('tr').find('td:eq(4)').text() == '✔') $('#lwTab3ModalInputIsplanyr').prop('checked', true);
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"SELECT DESCRIPTION FROM TBL_LAWZAALT WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    $('#lwTab3ModalInputDescription').val(data.d);
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
            dataBindTab3IndexListSelect2('1', $(el).closest('tr').find('td:eq(6)').attr('data-id'));
            dataBindTab3IndexListSelect2('2', $(el).closest('tr').find('td:eq(7)').attr('data-id'));
            dataBindTab3IndexListSelect2('3', $(el).closest('tr').find('td:eq(8)').attr('data-id'));
        }
    }
    function showDeleteTab3(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_LAWZORILT_LAWZAALT WHERE LAWZAALT_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == "0") {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: $(el).closest('tr').find('td:eq(3)').text() + " дугаартай заалтыг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/LAWZAALT_DELETE",
                                data: '{"P_ID":"' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab3Datatable();
                                    smallBox('Заалт', 'Амжилттай удтгагдлаа', '#659265', 3000);
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
                else alert('Сонгосон заалтад хамааралтай зорилт орсон тул устгах боломжгүй байна!');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab3BranchListSelect2(yr, selectedList) {
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetNegjListForSelect2",
            data: '{"yr":"' + yr + '", "selectedList":"' + selectedList + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valOptGroup = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (value.GAZAR_ID != valOptGroup) {
                        if (valOptGroup != '') valData += '</optgroup>';
                        valData += '<optgroup label="' + value.GAZAR_NAME + '">';
                    }
                    valData += "<option" + value.ISSELECTED + " value=\"" + value.HELTES_ID + "\" title=\"" + value.HELTES_NAME + "\">" + value.HELTES_NAMEINIT + "</option>";
                    valOptGroup = value.GAZAR_ID;
                });
                $("#lwTab3ModalSelect2BranchListDiv").html("<select id=\"lwTab3ModalSelect2BranchList\" name=\"lwTab3ModalSelect2BranchList\" multiple=\"multiple\" style=\"width:100%\">" + valData + "</select><script>$(\"#lwTab3ModalSelect2BranchList\").select2();<\/script>");
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab3IndexListSelect2(tp, selectedList) {
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/LwTab3IndexListForSelect2",
            data: '{"tp":"' + tp + '", "selectedList":"' + selectedList + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += "<option" + value.ISSELECTED + " value=\"" + value.ID + "\">" + value.NAME + "</option>";
                    });
                });
                $("#lwTab3ModalSelect2Index" + tp + "ListDiv").html("<select id=\"lwTab3ModalSelect2Index" + tp + "List\" name=\"lwTab3ModalSelect2Index" + tp + "List\" multiple=\"multiple\" style=\"width:100%\">" + valData + "</select><script>$(\"#lwTab3ModalSelect2Index" + tp + "List\").select2();<\/script>");
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#lwTab3SelectType").change(function () {
        var valData = '';
        if ($("#lwTab3SelectType option:selected").val() == '6') {
            $('#lwTab3ImportTushaalSaid').parent().css('display', 'block');
            $('#lwTab3ImportTushaalTNBD').parent().css('display', 'none');
        }
        else if ($("#lwTab3SelectType option:selected").val() == '7') {
            $('#lwTab3ImportTushaalSaid').parent().css('display', 'none');
            $('#lwTab3ImportTushaalTNBD').parent().css('display', 'block');
        }
        else {
            $('#lwTab3ImportTushaalSaid').parent().css('display', 'none');
            $('#lwTab3ImportTushaalTNBD').parent().css('display', 'none');
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/LwTab3LawListForDDL",
            data: '{"tp":"' + $('#lwTab3SelectType option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.ID + '">' + value.NAME + '</option>';
                });
                if (valData == '') valData += "<option value=\"99745707\"><i>Мэдээлэл алга...</i></option>";
                $('#lwTab3SelectLaw').html(valData);
                $('#lwTab3SelectLaw').prop('disabled', false);
                dataBindTab3Datatable();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    });
    $("#lwTab3SelectLaw").change(function () {
        dataBindTab3Datatable();
    });
    $("#lwTab3ModalSelectType").change(function () {
        dataBindTab3SelectLaw();
    });
    $("#lwTab3SelectGazar").change(function () {
        dataBindTab3HeltesList();
    });
    $("#lwTab3SelectHeltes").change(function () {
        dataBindTab3Datatable();
    });
    function dataBindTab3HeltesList() {
        var valData = '';
        if ($("#lwTab3SelectGazar option:selected").val() == "") {
            $("#lwTab3SelectHeltes").html("<option selected value=\"\">Бүгд</option>");
            $("#lwTab3SelectHeltes").prop("disabled", true);
            dataBindTab3Datatable();
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr":"' + $('#indexCurrentYear').text() + '", "gazar":"' + $("#lwTab3SelectGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    });
                    $("#lwTab3SelectHeltes").html(valData);
                    $("#lwTab3SelectHeltes").prop("disabled", false);
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
    }
    $('#lwTab3ModalForm').bootstrapValidator({
        //feedbackIcons: {
        //    valid: 'glyphicon glyphicon-ok',
        //    invalid: 'glyphicon glyphicon-remove',
        //    validating: 'glyphicon glyphicon-refresh'
        //},
        fields: {
            lwTab3ModalSelectType: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Төрөл сонгоно уу'
                    }
                }
            },
            lwTab3ModalSelectLaw: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Эрх зүйн акт сонгоно уу'
                    }
                }
            },
            lwTab3ModalInputNo: {
                group: '.col-md-4',
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
            lwTab3ModalInputName: {
                group: '.col-md-8',
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    stringLength: {
                        max: 1000,
                        message: 'Нэр уртдаа 1000 тэмдэгт авна'
                    }
                }
            },
            lwTab3ModalInputPersonday: {
                group: '.col-md-3',
                validators: {
                    stringLength: {
                        max: 3,
                        message: 'Нэр уртдаа 3 тэмдэгт авна'
                    },
                    numeric: {
                        message: 'Зөвхөн тоон тэмдэгт орно'
                    }
                }
            },
            lwTab3ModalInputDescription: {
                group: '.col-md-12',
                validators: {
                    stringLength: {
                        max: 1000,
                        message: 'Нэр уртдаа 1000 тэмдэгт авна'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            var brlist = 'none', valIsjobdesc = '0', valIsplanyr = '0', indexlist = '';
            if ($('#lwTab3ModalSelect2BranchList').val() != null) brlist = $('#lwTab3ModalSelect2BranchList').val();
            if ($('#lwTab3ModalInputIsjobdesc').is(':checked')) valIsjobdesc = '1';
            if ($('#lwTab3ModalInputIsplanyr').is(':checked')) valIsplanyr = '1';
            if ($('#lwTab3ModalSelect2Index1List').val() != null) {
                if (indexlist != '') indexlist += ',';
                indexlist += $('#lwTab3ModalSelect2Index1List').val();
            }
            if ($('#lwTab3ModalSelect2Index2List').val() != null) {
                if (indexlist != '') indexlist += ',';
                indexlist += $('#lwTab3ModalSelect2Index2List').val();
            }
            if ($('#lwTab3ModalSelect2Index3List').val() != null) {
                if (indexlist != '') indexlist += ',';
                indexlist += $('#lwTab3ModalSelect2Index3List').val();
            }
            if (indexlist == '') indexlist = 'none';
            if ($('#lwTab3ModalHeaderLabel').text() == 'нэмэх') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/LAWZAALT_INSERT",
                    data: '{"P_LAW_ID":"' + $('#lwTab3ModalSelectLaw option:selected').val() + '", "P_NO":"' + $.trim($('#lwTab3ModalInputNo').val()) + '", "P_NAME":"' + $.trim($('#lwTab3ModalInputName').val()) + '", "P_PERSONDAY":"' + $.trim($('#lwTab3ModalInputPersonday').val()) + '", "P_BRLIST":"' + brlist + '", "P_ISJOBDESC":"' + valIsjobdesc + '", "P_ISPLANYR":"' + valIsplanyr + '", "P_DESCRIPTION":"' + $.trim($('#lwTab3ModalInputDescription').val()) + '", "P_INDEXLIST":"' + indexlist + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab3Datatable();
                        $('#lwTab3Modal').modal('hide');
                        smallBox('Заалт', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
                    url: "../ws/ServiceMain.svc/LAWZAALT_UPDATE",
                    data: '{"P_ID":"' + $('#tab3ID').text() + '", "P_LAW_ID":"' + $('#lwTab3ModalSelectLaw option:selected').val() + '", "P_NO":"' + $.trim($('#lwTab3ModalInputNo').val()) + '", "P_NAME":"' + $.trim($('#lwTab3ModalInputName').val()) + '", "P_PERSONDAY":"' + $.trim($('#lwTab3ModalInputPersonday').val()) + '", "P_BRLIST":"' + brlist + '", "P_ISJOBDESC":"' + valIsjobdesc + '", "P_ISPLANYR":"' + valIsplanyr + '", "P_DESCRIPTION":"' + $.trim($('#lwTab3ModalInputDescription').val()) + '", "P_INDEXLIST":"' + indexlist + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab3Datatable();
                        $('#lwTab3Modal').modal('hide');
                        smallBox('Заалт', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
    $("#lwTab3ModalSelectLaw").change(function () {
        if ($('#lwTab3ModalSelectLaw option:selected').val() == '') {
            $('#lwTab3ModalImportExcelDiv').attr('class','hide');
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"SELECT COUNT(1) as CNT FROM TBL_LAWZAALT WHERE LAW_ID=' + $('#lwTab3ModalSelectLaw option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    if (data.d == '0') {
                        $('#lwTab3ModalImportExcelDiv').removeClass('hide');
                    }
                    else {
                        $('#lwTab3ModalImportExcelDiv').removeClass('hide');
                        //$('#lwTab3ModalImportExcelDiv').attr('class', 'hide');
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
    $("#lwTab3ModalInputImportExcel").change(function () {
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
            if (valE != 'xls') {
                errMsg += 'Файлын төрөл зөвшөөрөгдөөгүй төрөл байна. /xls/\n';
                $(this).val('');
            }
            else fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
        }
        else alert(errMsg);
    });
    $("#lwTab3ModalButtonImportExcel").click(function () {
        $("#lwTab3ModalButtonImportExcel").html('<i class="fa fa-refresh fa-spin"></i> Хадгалах');        
        var uploadfiles = $("#lwTab3ModalInputImportExcel").get(0);
        var uploadedfiles = uploadfiles.files;
        var fromdata = new FormData();
        fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
        var choice = {};
        choice.url = "pg/UploadFile.ashx?folder=importexcel&filename=LawZaaltRecords.xls";
        choice.type = "POST";
        choice.data = fromdata;
        choice.contentType = false;
        choice.processData = false;
        choice.success = function (result) {
            if (result != "1") {
                alert('Файл хуулхад алдаа гарлаа');
                $("#lwTab3ModalButtonImportExcel").html('<span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах');
            }
            else {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/LwExcelBulkUpload",
                    data: '{"lawid":"' + $('#lwTab3ModalSelectLaw option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        alert(data.d);
                        $("#lwTab3ModalButtonImportExcel").html('<span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах');
                        dataBindTab3Datatable();
                        $('#lwTab3Modal').modal('hide');
                        smallBox('Заалт', 'Амжилттай хадгалагдлаа', '#659265', 3000);
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        window.location = '../#pg/error500.aspx';
                    }
                });
            }
        };
        choice.error = function (err) { alert('Файл хадгалахад алдаа гарлаа: ' + err.statusText); };
        $.ajax(choice);
        event.preventDefault();
    });
    function lwTab3IsJobdescOnMouseOverFunc(el) {
        if ($(el).html() == '✔') {
            $(el).html('✖').css('color', '#999').css('background', '#f9f2f4').css('cursor', 'pointer');
        }
        else {
            $(el).html('✔').css('color', '#999').css('background', '#f9f2f4').css('cursor', 'pointer');
        }
    }
    function lwTab3IsJobdescOnMouseOutFunc(el) {
        if ($(el).attr('class') != 'saved') {
            if ($(el).html() == '✔') {
                $(el).html('').removeAttr('style');
            }
            else {
                $(el).html('✔').removeAttr('style');
            }
        }
        $(el).removeAttr('class');
    }
    function lwTab3IsJobdescOnClickFunc(el) {
        var valIsSubmit = '0';
        if ($(el).html() == '✔') {
            valIsSubmit = '1';
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
            data: '{"qry":"UPDATE TBL_LAWZAALT SET ISJOBDESC=' + valIsSubmit + ' WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function () {
                smallBox('Сонгосон заалтын АБТ', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                if (valIsSubmit == '1') {
                    $(el).html('✔').removeAttr('style');
                }
                else {
                    $(el).html('').removeAttr('style');
                }
                $(el).attr('class','saved');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function lwTab3IsPlanyrOnMouseOverFunc(el) {
        if ($(el).html() == '✔') {
            $(el).html('✖').css('color', '#999').css('background', '#f9f2f4').css('cursor', 'pointer');
        }
        else {
            $(el).html('✔').css('color', '#999').css('background', '#f9f2f4').css('cursor', 'pointer');
        }
    }
    function lwTab3IsPlanyrOnMouseOutFunc(el) {
        if ($(el).attr('class') != 'saved') {
            if ($(el).html() == '✔') {
                $(el).html('').removeAttr('style');
            }
            else {
                $(el).html('✔').removeAttr('style');
            }
        }
        $(el).removeAttr('class');
    }
    function lwTab3IsPlanyrOnClickFunc(el) {
        var valIsSubmit = '0';
        if ($(el).html() == '✔') {
            valIsSubmit = '1';
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
            data: '{"qry":"UPDATE TBL_LAWZAALT SET ISPLANYR=' + valIsSubmit + ' WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function () {
                smallBox('Сонгосон заалтын АБТ', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                if (valIsSubmit == '1') {
                    $(el).html('✔').removeAttr('style');
                }
                else {
                    $(el).html('').removeAttr('style');
                }
                $(el).attr('class', 'saved');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#lwTab3ImportTushaalSaid").click(function () {
        $("#lwTab3ImportTushaalSaid").html('<i class="fa fa-refresh fa-spin"></i>');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) CNT FROM TBL_TUSHAAL_ZAALT a INNER JOIN TBL_TUSHAAL b ON a.TUSHAAL_ID=b.ID INNER JOIN TBL_LAW c ON a.TUSHAAL_ID=c.TUSHAAL_ID WHERE a.ISIMPORTEDLAW=0 AND b.TUSHAAL_TYPE=3"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (confirm('Эрх зүйн актадад татагдаад заалтад татагдаагүй Сангийн сайдын ' + data.d + ' тушаалын заалт байна! Та эдгээр тушаалын заалтыг татах уу? /Эрх зүйн актад тушаал татагдаж байж тушаалын заалт татагдана!/')) {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/LwTab3ImportTushaalZaalt",
                        data: '{"tushaaltype":"' + $('#lwTab3SelectType option:selected').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            $("#lwTab3ImportTushaalSaid").html('<i class="fa fa-download"></i> СС-н тушаалын заалт татах');
                            alert(data.d);
                            dataBindTab3Datatable();
                            smallBox('Заалт', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
                    $("#lwTab3ImportTushaalSaid").html('<i class="fa fa-download"></i> СС-н тушаалын заалт татах');
                    // Do nothing!
                }
            },
            failure: function (response) {
                $("#lwTab3ImportTushaalSaid").html('<i class="fa fa-download"></i> СС-н тушаалын заалт татах');
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                $("#lwTab3ImportTushaalSaid").html('<i class="fa fa-download"></i> СС-н тушаалын заалт татах');
                window.location = '../#pg/error500.aspx';
            }
        });
    });
    $("#lwTab3ImportTushaalTNBD").click(function () {
        $("#lwTab3ImportTushaalTNBD").html('<i class="fa fa-refresh fa-spin"></i>');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) CNT FROM TBL_TUSHAAL_ZAALT a INNER JOIN TBL_TUSHAAL b ON a.TUSHAAL_ID=b.ID INNER JOIN TBL_LAW c ON a.TUSHAAL_ID=c.TUSHAAL_ID WHERE a.ISIMPORTEDLAW=0 AND b.TUSHAAL_TYPE=2"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (confirm('Эрх зүйн актадад татагдаад заалтад татагдаагүй ТНБД-н ' + data.d + ' тушаалын заалт байна! Та эдгээр тушаалын заалтыг татах уу? /Эрх зүйн актад тушаал татагдаж байж тушаалын заалт татагдана!/')) {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/LwTab3ImportTushaalZaalt",
                        data: '{"tushaaltype":"' + $('#lwTab3SelectType option:selected').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            $("#lwTab3ImportTushaalSaid").html('<i class="fa fa-download"></i> ТНБД-н тушаалын заалт татах');
                            alert(data.d);
                            dataBindTab3Datatable();
                            smallBox('Заалт', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
                    $("#lwTab3ImportTushaalSaid").html('<i class="fa fa-download"></i> ТНБД-н тушаалын заалт татах');
                    // Do nothing!
                }
            },
            failure: function (response) {
                $("#lwTab3ImportTushaalSaid").html('<i class="fa fa-download"></i> ТНБД-н тушаалын заалт татах');
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                $("#lwTab3ImportTushaalSaid").html('<i class="fa fa-download"></i> ТНБД-н тушаалын заалт татах');
                window.location = '../#pg/error500.aspx';
            }
        });
    });
    //таб4
    function dataBindTab4SelectLaw() {
        var valData = '';
        if ($('#lwTab4ModalSelectType option:selected').val() == '') {
            $('#lwTab4ModalSelectLaw').html('<option value="">-Сонго-</option>');
            $('#lwTab4ModalSelectLaw').prop('disabled', true);
            $('#lwTab4ModalSelectZaalt').html('<option value="">-Сонго-</option>');
            $('#lwTab4ModalSelectZaalt').prop('disabled', true);
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/LwTab3LawListForDDL",
                data: '{"tp":"' + $('#lwTab4ModalSelectType option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.ID + '">' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                    });
                    if (valData == '') valData += "<option value=\"99745707\"><i>Мэдээлэл алга...</i></option>";
                    $('#lwTab4ModalSelectLaw').html("<option value=\"\">- Сонго -</option>" + valData);
                    $('#lwTab4ModalSelectLaw').prop('disabled', false);
                    $('#lwTab4ModalSelectZaalt').html('<option value="">-Сонго-</option>');
                    $('#lwTab4ModalSelectZaalt').prop('disabled', true);
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
    function dataBindTab4SelectZaalt() {
        var valData = '';
        if ($('#lwTab4ModalSelectLaw option:selected').val() == '') {
            $('#lwTab4ModalSelectZaalt').html('<option value="">-Сонго-</option>');
            $('#lwTab4ModalSelectZaalt').prop('disabled', true);
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/LwTab4ZaaltListForDDL",
                data: '{"lw":"' + $('#lwTab4ModalSelectLaw option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.ID + '">' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                    });
                    $('#lwTab4ModalSelectZaalt').html('<option value="">-Сонго-</option>' + valData);
                    $('#lwTab4ModalSelectZaalt').prop('disabled', false);
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
    function dataBindTab4Datatable() {
        var valData = '', isDisabled = ' disabled="disabled"';
        showLoader('loaderTab4');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/LwTab4Datatable",
            data: '{"tp":"' + $('#lwTab4SelectType option:selected').val() + '", "yr":"' + $('#lwTab4SelectYear option:selected').val() + '", "gazar":"' + $('#lwTab4SelectGazar option:selected').val() + '", "heltes":"' + $('#lwTab4SelectHeltes option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (funcCheckRoles('1,39')) {
                    isDisabled = '';
                }
                valData = '';
                valData = "<table id=\"lwTab4Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th class=\"hide\">ID</th>";
                valData += "<th class=\"hide\">LAWZAALT_ID</th>";
                valData += "<th class=\"hide\">LAW_ID</th>";
                valData += "<th class=\"hide\">LAW_TYPE_ID</th>";
                valData += "<th>Хууль</th>";
                valData += "<th>Заалт</th>";
                valData += "<th>№</th>";
                valData += "<th>Нэр</th>";
                valData += "<th class=\"hide\">HELTES_ID</th>";
                valData += "<th class=\"hide\">GAZAR_ID</th>";
                valData += "<th>Хариуцах газар</th>";
                valData += "<th>Хариуцах хэлтэс</th>";
                valData += "<th>&nbsp;</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td class=\"hide\">" + value.LAWZAALTDESC_ID + "</td>";
                    valData += "<td class=\"hide\">" + value.LAWZAALT_ID + "</td>";
                    valData += "<td class=\"hide\">" + value.LAW_ID + "</td>";
                    valData += "<td class=\"hide\">" + value.LAW_TYPE_ID + "</td>";
                    valData += "<td>" + value.LAW + "</td>";
                    valData += "<td>" + value.LAWZAALT + "</td>";
                    valData += "<td>" + value.NO + "</td>";
                    valData += "<td>" + value.NAME + "</td>";
                    valData += "<td class=\"hide\">" + value.HELTES_ID + "</td>";
                    valData += "<td class=\"hide\">" + value.GAZAR_ID + "</td>";
                    valData += "<td>" + value.GAZAR_NAME.replace("none", "-") + "</td>";
                    valData += "<td>" + value.HELTES_NAME.replace("none", "-") + "</td>";
                    valData += "<td><a" + isDisabled + " style=\"cursor:pointer; margin-right:8px;\" onclick=\"showAddEditTab4(this,'засах');\" data-target=\"#lwTab4Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></a><a" + isDisabled + " style=\"cursor:pointer;\" onclick=\"showDeleteTab4(this);\"><i class=\"fa fa-trash-o\"></i></a></td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_lwTab4Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#lwTab4Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_lwTab4Datatable) {responsiveHelper_lwTab4Datatable = new ResponsiveDatatablesHelper($('#lwTab4Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_lwTab4Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_lwTab4Datatable.respond();}}).rowGrouping({iGroupingColumnIndex: 4,bExpandableGrouping: true, iGroupingColumnIndex2: 5,bExpandableGrouping2: true});";
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
    $("#lwTab4SelectType").change(function () {
        dataBindTab4Datatable();
    });
    $("#lwTab4ModalSelectType").change(function () {
        dataBindTab4SelectLaw();
    });
    $("#lwTab4ModalSelectLaw").change(function () {
        dataBindTab4SelectZaalt();
    });
    function showAddEditTab4(el, isinsupt) {
        var valData = '';
        $('#lwTab4ModalHeaderLabel').text(isinsupt);
        if (isinsupt == 'нэмэх') {
            $('#tab4ID').text("");
            $('#lwTab4ModalSelectType').val('');
            $('#lwTab4ModalSelectLaw').val('');
            $('#lwTab4ModalSelectZaalt').val('');
            $('#lwTab4ModalInputNo').val('');
            $('#lwTab4ModalInputName').val('');
            dataBindTab4BranchListSelect2($('#indexCurrentYear').text(), '');
        }
        else {
            $('#tab4ID').text($(el).closest('tr').find('td:eq(0)').text());
            $('#lwTab4ModalSelectType').val($(el).closest('tr').find('td:eq(3)').text());
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/LwTab3LawListForDDL",
                data: '{"tp":"' + $('#lwTab4ModalSelectType option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.ID + '">' + value.NAME + '</option>';
                    });
                    if (valData == '') valData += "<option value=\"99745707\"><i>Мэдээлэл алга...</i></option>";
                    $('#lwTab4ModalSelectLaw').html("<option value=\"\">- Сонго -</option>" + valData);
                    $('#lwTab4ModalSelectLaw').prop('disabled', false);
                    $('#lwTab4ModalSelectLaw').val($(el).closest('tr').find('td:eq(2)').text());
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/LwTab4ZaaltListForDDL",
                        data: '{"lw":"' + $('#lwTab4ModalSelectLaw option:selected').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            valData = '';
                            $($.parseJSON(data.d)).each(function (index, value) {
                                valData += '<option value="' + value.ID + '">' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                            });
                            $('#lwTab4ModalSelectZaalt').html('<option value="">-Сонго-</option>' + valData);
                            $('#lwTab4ModalSelectZaalt').prop('disabled', false);
                            $('#lwTab4ModalSelectZaalt').val($(el).closest('tr').find('td:eq(1)').text());
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
            $('#lwTab4ModalInputNo').val($(el).closest('tr').find('td:eq(4)').text());
            $('#lwTab4ModalInputName').val($(el).closest('tr').find('td:eq(5)').text());
            dataBindTab4BranchListSelect2($('#indexCurrentYear').text(), $(el).closest('tr').find('td:eq(6)').text());
        }
    }
    function showDeleteTab4(el) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: $(el).closest('tr').find('td:eq(4)').text() + " дугаартай Үйл ажиллагааг устгах уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/LAWZAALTDESC_DELETE",
                    data: '{"P_ID":"' + $(el).closest('tr').find('td:eq(0)').text() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab4Datatable();
                        smallBox('Үйл ажиллагаа', 'Амжилттай удтгагдлаа', '#659265', 3000);
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
    function dataBindTab4BranchListSelect2(yr, selectedList) {
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetNegjListForSelect2",
            data: '{"yr":"' + yr + '", "selectedList":"' + selectedList + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valOptGroup = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (value.GAZAR_ID != valOptGroup) {
                        if (valOptGroup != '') valData += '</optgroup>';
                        valData += '<optgroup label="' + value.GAZAR_NAME + '">';
                    }
                    valData += "<option" + value.ISSELECTED + " value=\"" + value.HELTES_ID + "\" title=\"" + value.HELTES_NAME + "\">" + value.HELTES_NAMEINIT + "</option>";
                    valOptGroup = value.GAZAR_ID;
                });
                $("#lwTab4ModalSelect2BranchListDiv").html("<select id=\"lwTab4ModalSelect2BranchList\" name=\"lwTab4ModalSelect2BranchList\" multiple=\"multiple\" style=\"width:100%\">" + valData + "</select><script>$(\"#lwTab4ModalSelect2BranchList\").select2();<\/script>");
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function lwTab4SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr":"' + $('#lwTab4SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#lwTab4SelectGazar").html('<option value="">Бүгд</option>'+valData);
                ////$('#planmTab1SelectGazar').val(userGazarId);
                //globalAjaxVar = $.ajax({
                //    type: "POST",
                //    url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                //    data: '{"yr":"' + $('#lwTab4SelectYear option:selected').val() + '", "gazar":"' + $("#lwTab4SelectGazar option:selected").val() + '"}',
                //    contentType: "application/json; charset=utf-8",
                //    dataType: "json",
                //    success: function (data) {
                //      valData = '';
                //      $($.parseJSON(data.d)).each(function (index, value) {
                //          valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                //      });
                //        $("#lwTab4SelectHeltes").html('<option value="">Бүгд</option>'+valData);
                //        dataBindTab1Datatable();
                //        dataBindTab2SelectType();
                //    },
                //failure: function (response) {
                //    alert('FAILURE: ' + response.d);
                //},
                //error: function (xhr, status, error) {
                //    window.location = '../#pg/error500.aspx';
                //}
                //});
                dataBindTab4Datatable();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#lwTab4SelectYear").change(function () {
        lwTab4SetFirstControls();
    });
    $("#lwTab4SelectGazar").change(function () {
        dataBindTab4HeltesList();
    });
    $("#lwTab4SelectHeltes").change(function () {
        dataBindTab4Datatable();
    });
    function dataBindTab4HeltesList() {
        var valData = '';
        if ($("#lwTab4SelectGazar option:selected").val() == "") {
            $("#lwTab4SelectHeltes").html("<option selected value=\"\">Бүгд</option>");
            $("#lwTab4SelectHeltes").prop("disabled", true);
            dataBindTab4Datatable();
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr":"' + $('#lwTab4SelectYear option:selected').val() + '", "gazar":"' + $("#lwTab4SelectGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    });
                    $("#lwTab4SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                    $("#lwTab4SelectHeltes").prop("disabled", false);
                    dataBindTab4Datatable();
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
    $('#lwTab4ModalForm').bootstrapValidator({
        //feedbackIcons: {
        //    valid: 'glyphicon glyphicon-ok',
        //    invalid: 'glyphicon glyphicon-remove',
        //    validating: 'glyphicon glyphicon-refresh'
        //},
        fields: {
            lwTab4ModalSelectType: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Төрөл сонгоно уу'
                    }
                }
            },
            lwTab4ModalSelectLaw: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Эрх зүйн акт сонгоно уу'
                    }
                }
            },
            lwTab4ModalSelectZaalt: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Заалт сонгоно уу'
                    }
                }
            },
            lwTab4ModalInputNo: {
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
            lwTab4ModalInputName: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Нэр оруулна уу'
                    },
                    stringLength: {
                        max: 1000,
                        message: 'Нэр уртдаа 1000 тэмдэгт авна'
                    }
                }
            }
            //lwTab4ModalSelect2BranchList: {
            //    group: '.col-md-12',
            //    validators:{
            //        notEmpty: {
            //            message: 'Газар хэлтэс сонгоно уу'
            //        }
            //    }
            //}
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            var isUpdate = "";
            if ($("#lwTab4ModalHeaderLabel").html() == "засах") isUpdate = " AND ID!=" + $("#tab4ID").text();
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"SELECT COUNT(NO) FROM TBL_LAWZAALTDESC WHERE LAWZAALT_ID=' + $('#lwTab4ModalSelectZaalt option:selected').val() + ' AND NO=' + $.trim($('#lwTab4ModalInputNo').val()) + isUpdate + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    if (data.d == "0") {
                        var brlist = "none";
                        if ($('#lwTab4ModalSelect2BranchList').val() != null) brlist = $('#lwTab4ModalSelect2BranchList').val();
                        if ($('#lwTab4ModalHeaderLabel').text() == 'нэмэх') {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/LAWZAALTDESC_INSERT",
                                data: '{"P_LAWZAALT_ID":"' + $('#lwTab4ModalSelectZaalt option:selected').val() + '", "P_NO":"' + $.trim($('#lwTab4ModalInputNo').val()) + '", "P_NAME":"' + $.trim($('#lwTab4ModalInputName').val()) + '", "P_BRLIST":"' + brlist + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab4Datatable();
                                    $('#lwTab4Modal').modal('hide');
                                    smallBox('Үйл ажиллагаа', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
                                url: "../ws/ServiceMain.svc/LAWZAALTDESC_UPDATE",
                                data: '{"P_LAWZAALT_ID":"' + $('#lwTab4ModalSelectZaalt option:selected').val() + '", "P_NO":"' + $.trim($('#lwTab4ModalInputNo').val()) + '", "P_NAME":"' + $.trim($('#lwTab4ModalInputName').val()) + '", "P_BRLIST":"' + brlist + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab4Datatable();
                                    $('#lwTab4Modal').modal('hide');
                                    smallBox('Үйл ажиллагаа', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
                    else alert($.trim($('#lwTab4ModalInputNo').val()) + ' дугаартай Үйл ажиллагаа орсон байна.');
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

    //таб5
    function lwTab5SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr":"' + $('#lwTab5t1SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#lwTab5t1SelectGazar").html('<option value="">Бүгд</option>' + valData);
                dataBindTab5t1Datatable();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    //tab5t1
    function lwTab5t1SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr":"' + $('#lwTab5t1SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#lwTab5t1SelectGazar").html('<option value="">Бүгд</option>' + valData);
                dataBindTab5t1Datatable();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab5t1Datatable() {
        var valData = '';
        showLoader('loaderTab5t1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/LwTab5t1Datatable",
            data: '{"tp":"' + $('#lwTab5t1SelectType option:selected').val() + '", "yr":"' + $('#lwTab5t1SelectYear option:selected').val() + '", "gazar":"' + $('#lwTab5t1SelectGazar option:selected').val() + '", "heltes":"' + $('#lwTab5t1SelectHeltes option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                var law = "", zaalt="";
                valData = "<table id=\"lwTab5t1Datatable\" style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\"><thead style=\"background-color:C6D9F1;\">";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">№</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Нэр</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хариуцах газар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хариуцах хэлтэс</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (law != value.LAW_ID) {
                        valData += "<tr>";
                        valData += "<td colspan=\"4\" style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold; font-style:italic;\">" + replaceDatabaseToDisplay(value.LAW) + "</td>";
                        valData += "</tr>";
                        law = value.LAW_ID;
                        zaalt = "";
                    }
                    if (zaalt != value.LAWZAALT_ID) {
                        valData += "<tr>";
                        valData += "<td colspan=\"4\" style=\"border: 1px solid #000; padding:5px; text-align:left; font-weight:bold; font-style:italic;\">" + replaceDatabaseToDisplay(value.LAWZAALT) + "</td>";
                        valData += "</tr>";
                        zaalt = value.LAWZAALT_ID;
                    }
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.NO + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.GAZAR_NAME.replace("none", "-") + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.HELTES_NAME.replace("none", "-") + "</td>";
                });
                valData += "</tr>";
                valData += "</tbody>";
                valData += "</table>";
                $("#divlw5t1Table").html(valData);
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
    $("#lwTab5t1SelectType").change(function () {
        dataBindTab5t1Datatable();
    });
    $("#lwTab5t1SelectYear").change(function () {
        lwTab5t1SetFirstControls();
        $('#lwTab5t1Year').html($("#lwTab5t1SelectYear option:selected").val());
    });
    $("#lwTab5t1SelectGazar").change(function () {
        dataBindTab5t1HeltesList();
    });
    $("#lwTab5t1SelectHeltes").change(function () {
        dataBindTab5t1Datatable();
    });
    function dataBindTab5t1HeltesList() {
        var valData = '';
        if ($("#lwTab5t1SelectGazar option:selected").val() == "") {
            $("#lwTab5t1SelectHeltes").html("<option selected value=\"\">Бүгд</option>");
            $("#lwTab5t1SelectHeltes").prop("disabled", true);
            dataBindTab5t1Datatable();
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr":"' + $('#lwTab5t1SelectYear option:selected').val() + '", "gazar":"' + $("#lwTab5t1SelectGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    });
                    $("#lwTab5t1SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                    $("#lwTab5t1SelectHeltes").prop("disabled", false);
                    dataBindTab5t1Datatable();
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
    //tab5t2
    function dataBindTab5t2Datatable() {
        var valData = '';
        showLoader('loaderTab5t2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/LwTab5t2Datatable",
            data: '{"yr":"' + $('#indexCurrentYear').text() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData = "<table id=\"lwTab5t2Datatable\" style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 50%;\"><thead style=\"background-color:C6D9F1;\">";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Нэгж</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Холбогдсон заалтын тоо</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.NEGJNAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.ZAALTCNT + "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody></table>";
                $("#divlw5t2Table").html(valData);
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
    //tab5t3
    function lwTab5t3SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr":"' + $('#lwTab5t3SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#lwTab5t3SelectGazar").html('<option value="">Бүгд</option>' + valData);
                dataBindTab5t3Datatable();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab5t3Datatable() {
        var valData = '';
        showLoader('loaderTab5t3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/LwTab5t3Datatable",
            data: '{"yr":"' + $('#lwTab5t3SelectYear option:selected').val() + '", "gazar":"' + $('#lwTab5t3SelectGazar option:selected').val() + '", "heltes":"' + $('#lwTab5t3SelectHeltes option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                var strZoriltId = '';
                valData = "<table id=\"lwTab5t3Datatable\" style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\"><thead style=\"background-color:C6D9F1;\">";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">#</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:150px;\">Нэгж</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Заалт</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (strZoriltId != value.ZORILT_ID) {
                        valData += "<tr>";
                        valData += "<td colspan=\"3\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + replaceDatabaseToDisplay(value.ZORILT_DATA) + "</td>";
                        valData += "</tr>";
                    }
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.ROWNO + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + value.NEGJNAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + replaceDatabaseToDisplay(value.LAWZAALT_NAME) + "</td>";
                    valData += "</tr>";
                    strZoriltId = value.ZORILT_ID;
                });
                valData += "</tbody></table>";
                $("#divlw5t3Table").html(valData);
                hideLoader('loaderTab5t3');
                //$('#lwTab5t3Year').html($("#lwTab5t3SelectYear option:selected").val());
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#lwTab5t3SelectYear").change(function () {
        lwTab5t3SetFirstControls();
    });
    $("#lwTab5t3SelectGazar").change(function () {
        dataBindTab5t3HeltesList();
    });
    $("#lwTab5t3SelectHeltes").change(function () {
        dataBindTab5t3Datatable();
    });
    function dataBindTab5t3HeltesList() {
        var valData = '';
        if ($("#lwTab5t3SelectGazar option:selected").val() == "") {
            $("#lwTab5t3SelectHeltes").html("<option selected value=\"\">Бүгд</option>");
            $("#lwTab5t3SelectHeltes").prop("disabled", true);
            dataBindTab5t3Datatable();
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr":"' + $('#lwTab5t3SelectYear option:selected').val() + '", "gazar":"' + $("#lwTab5t3SelectGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    });
                    $("#lwTab5t3SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                    $("#lwTab5t3SelectHeltes").prop("disabled", false);
                    dataBindTab5t3Datatable();
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

    //tab6
    function lwTab6SetFirstControls() {
        var valData = '';
        if ($('#lwTab6SelectYear option:selected').val() == '') {
            $("#lwTab6SelectGazar").html('<option value="">Бүгд</option>');
            $("#lwTab6SelectGazar").prop('disabled', true);
            $("#lwTab6SelectHeltes").html('<option value="">Бүгд</option>');
            $("#lwTab6SelectHeltes").prop('disabled', true);
            dataBindTab6Datatable();
        }
        else {
            var userGazarId = $('#indexUserGazarId').text();
            var userHeltesId = $('#indexUserHeltesId').text();
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetGazarListForDDL",
                data: '{"yr":"' + $('#lwTab6SelectYear option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    });
                    $("#lwTab6SelectGazar").html('<option value="">Бүгд</option>' + valData);
                    $("#lwTab6ModalSelectLawzaaltGazar").html('<option value="">- Бүгд -</option>' + valData);
                    $("#lwTab6ModalSelectLawzaaltGazar").prop("disabled", false);

                    ////$('#lwTab6SelectGazar').val(userGazarId);
                    //globalAjaxVar = $.ajax({
                    //    type: "POST",
                    //    url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                    //    data: '{"yr":"' + $('#lwTab6SelectYear option:selected').val() + '", "gazar":"' + $("#lwTab6SelectGazar option:selected").val() + '"}',
                    //    contentType: "application/json; charset=utf-8",
                    //    dataType: "json",
                    //    success: function (data) {
                    //      valData = '';
                    //      $($.parseJSON(data.d)).each(function (index, value) {
                    //      valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    //      });
                    //        $("#lwTab6SelectHeltes").html(valData);
                    //        dataBindTab6Datatable();
                    //    },
                    //failure: function (response) {
                    //    alert('FAILURE: ' + response.d);
                    //},
                    //error: function (xhr, status, error) {
                    //    window.location = '../#pg/error500.aspx';
                    //}
                    //});
                    dataBindTab6Datatable();
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
    function dataBindTab6Datatable() {
        var valData = '', isDisabled = ' disabled="disabled"';
        showLoader('loaderTab6');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/LwTab6Datatable",
            data: '{"yr":"' + $('#lwTab6SelectYear option:selected').val() + '", "gazar":"' + $('#lwTab6SelectGazar option:selected').val() + '", "heltes":"' + $('#lwTab6SelectHeltes option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (funcCheckRoles('1,39')) {
                    isDisabled = '';
                }
                valData = '';
                valData = "<table id=\"lwTab6Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th>Нэгж</th>";
                valData += "<th>Зорилт</th>";
                valData += "<th>Холбогдох заалт</th>";
                valData += "<th>&nbsp;</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.LAWZORILT_ID + "\" data-zaaltidlist=\"" + value.ZAALTIDLIST + "\" data-brid=\"" + value.BR_ID + "\">";
                    valData += "<td>" + value.NEGJ + "</td>";
                    valData += "<td>" + value.NO + ". " + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td>" + value.ZAALTNOLIST + "</td>";
                    valData += "<td><a" + isDisabled + " style=\"cursor:pointer; margin-right:8px;\" onclick=\"showAddEditTab6(this,'засах');\" data-target=\"#lwTab6Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></a><a" + isDisabled + " style=\"cursor:pointer;\" onclick=\"showDeleteTab6(this);\"><i class=\"fa fa-trash-o\"></i></a></td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_lwTab6Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#lwTab6Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_lwTab6Datatable) {responsiveHelper_lwTab6Datatable = new ResponsiveDatatablesHelper($('#lwTab6Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_lwTab6Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_lwTab6Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"95px\" }, null, { \"sWidth\": \"110px\" }, { \"sWidth\": \"35px\" }]});";
                valData += "<\/script>";
                $("#divBindTab6Table").html(valData);
                hideLoader('loaderTab6');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function showAddEditTab6(el, isinsupt) {
        var valData = '', valOptGroup = '';
        $('#lwTab6ModalHeaderLabel').text(isinsupt);
        if (isinsupt == 'нэмэх') {
            $('#tab6ID').text("");
            $('#lwTab6ModalSelectYear').val('');
            $("#lwTab6ModalSelectGazar").html("<option value=\"\">- Сонго -</option>");
            $("#lwTab6ModalSelectGazar").prop("disabled", true);
            $('#lwTab6ModalInputNo').val('');
            $('#lwTab6ModalInputName').val('');
            $('#lwTab6ModalSelectLawtype').val('');
            $("#lwTab6ModalSelectLaw").html("<option value=\"\">- Сонго -</option>");
            $("#lwTab6ModalSelectLaw").prop("disabled", true);
            $('#lwTab6ModalUlZaaltDesc').html('');
            dataBindTab6ModalDatatable();
        }
        else {
            $('#tab6ID').text($(el).closest('tr').attr('data-id'));
            $('#lwTab6ModalSelectYear').val($('#lwTab6SelectYear option:selected').val());
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetNegjListForDDL",
                data: '{"yr":"' + $('#lwTab6ModalSelectYear option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    valOptGroup = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        if (valOptGroup != value.GAZAR_ID) {
                            if (valOptGroup != "") valData += "</optgroup>";
                            valData += "<optgroup label=\"" + value.GAZAR_NAME + "\">";
                        }
                        valData += "<option value=\"" + value.HELTES_ID + "\" title=\"" + value.HELTES_NAME + "\">" + value.HELTES_NAMEINIT + "</option>";
                        valOptGroup = value.GAZAR_ID;
                    });
                    $("#lwTab6ModalSelectGazar").html('<option value=\"\">- Сонго -</option>' + valData);
                    $("#lwTab6ModalSelectGazar").prop("disabled", false);
                    $("#lwTab6ModalSelectGazar").val($(el).closest('tr').attr('data-brid'));
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
            $('#lwTab6ModalInputNo').val($(el).closest('tr').find('td:eq(1)').html().split('.')[0]);
            $('#lwTab6ModalInputName').val($(el).closest('tr').find('td:eq(1)').html().replace($(el).closest('tr').find('td:eq(1)').html().split('.')[0]+'. ', ''));
            $('#lwTab6ModalSelectLawtype').val('');
            $("#lwTab6ModalSelectLaw").html("<option value=\"\">- Сонго -</option>");
            $("#lwTab6ModalSelectLaw").prop("disabled", true);
            $('#lwTab6ModalUlZaaltDesc').html('');
            for (var i = 0; i < $(el).closest('tr').attr('data-zaaltidlist').split(',').length; i++) {
                if ($(el).closest('tr').attr('data-zaaltidlist').split(',')[i] != 'none') {
                    $('#lwTab6ModalUlZaaltDesc').append('<li><span class="label label-default">' + $(el).closest('tr').find('td:eq(2)').text().split(',')[i] + '</span><span class="hide">' + $(el).closest('tr').attr('data-zaaltidlist').split(',')[i] + '</span></li>');
                }
            }
            dataBindTab6ModalDatatable();
        }
    }
    function showDeleteTab6(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_LAWWORK WHERE LAWZORILT_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == "0") {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон зорилтыг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/LAWZORILT_DELETE",
                                data: '{"P_ID":"' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab6Datatable();
                                    smallBox('Зорилт', 'Амжилттай удтгагдлаа', '#659265', 3000);
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
                else alert('Сонгосон зорилтод хамааралтай үйл ажиллагаа орсон тул устгах боломжгүй байна.');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }

    function lwTab6ModalClickZaaltDesc(el) {
        if ($(el).find('i').attr('class').split('-')[1] == 'plus') {
            $('#lwTab6ModalUlZaaltDesc').append('<li><span class="label label-default">' + $(el).closest('tr').attr('data-no') + '</span><span class="hide">' + $(el).closest('tr').attr('data-id') + '</span></li>');
            $(el).removeClass('btn-primary').addClass('btn-danger');
            $(el).find('i').removeClass('fa-plus').addClass('fa-minus');
            $(el).closest('tr').addClass('success');
        }
        else {
            $('#lwTab6ModalUlZaaltDesc > li').each(function () {
                if ($.trim($(this).find('span:eq(1)').text()) == $.trim($(el).closest('tr').attr('data-id'))) {
                    $(this).remove();
                    $(el).removeClass('btn-danger').addClass('btn-primary');
                    $(el).find('i').removeClass('fa-minus').addClass('fa-plus');
                    $(el).closest('tr').removeClass('success');
                    return false;
                }
            });
        }
    }
    function lwTab6ModalZaaltDatatableTrOnMouseOver(el) {
        $(el).find('td:eq(1)').find('a').removeClass('hide');
    }
    function lwTab6ModalZaaltDatatableTrOnMouseOut(el) {
        $(el).find('td:eq(1)').find('a').addClass('hide');
    }
    $('#lwTab6ModalForm').bootstrapValidator({
        fields: {
            lwTab6ModalSelectYear: {
                group: '.col-md-2',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            lwTab6ModalSelectGazar: {
                group: '.col-md-6',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            lwTab6ModalInputNo: {
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
            lwTab6ModalInputName: {
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
            //if ($.trim($('#lwTab6ModalUlZaaltDesc').html()) == "") alert('Заалтаас заавал сонгоно уу!');
            //else {
            var isUpdate = "";
            if ($("#lwTab6ModalHeaderLabel").html() == "засах") {
                isUpdate = " AND ID!=" + $.trim($('#tab6ID').text());
            }
            var zaaltlist = "none";
            $('#lwTab6ModalUlZaaltDesc > li').each(function () {
                if (zaaltlist == "none") zaaltlist = $('span:eq(1)', this).html();
                else zaaltlist += ',' + $('span:eq(1)', this).html();
            });
            if ($("#lwTab6ModalHeaderLabel").html() == "нэмэх") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/LAWZORILT_INSERT",
                    data: '{"P_YR":"' + $('#lwTab6ModalSelectYear option:selected').val() + '", "P_BR_ID":"' + $('#lwTab6ModalSelectGazar option:selected').val() + '", "P_NO":"' + $.trim($('#lwTab6ModalInputNo').val()) + '", "P_NAME":"' + replaceDisplayToDatabase($.trim($('#lwTab6ModalInputName').val())) + '", "P_LAWZAALT_LIST":"' + zaaltlist + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab6Datatable();
                        $('#lwTab6Modal').modal('hide');
                        smallBox('Зорилт', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
                    url: "../ws/ServiceMain.svc/LAWZORILT_UPDATE",
                    data: '{"P_ID":"' + $.trim($('#tab6ID').text()) + '", "P_YR":"' + $('#lwTab6ModalSelectYear option:selected').val() + '", "P_BR_ID":"' + $('#lwTab6ModalSelectGazar option:selected').val() + '", "P_NO":"' + $.trim($('#lwTab6ModalInputNo').val()) + '", "P_NAME":"' + replaceDisplayToDatabase($.trim($('#lwTab6ModalInputName').val())) + '", "P_LAWZAALT_LIST":"' + zaaltlist + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab6Datatable();
                        $('#lwTab6Modal').modal('hide');
                        smallBox('Зорилт', 'Амжилттай хадгалагдлаа', '#659265', 3000);
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        window.location = '../#pg/error500.aspx';
                    }
                });
            }
            //}
        }
    });
    $("#lwTab6SelectYear").change(function () {
        lwTab6SetFirstControls();
    });
    $("#lwTab6SelectGazar").change(function () {
        var valData = '';
        if ($("#lwTab6SelectGazar option:selected").val() == "") {
            $("#lwTab6SelectHeltes").html("<option value=\"\">Бүгд</option>");
            $("#lwTab6SelectHeltes").prop("disabled", true);
            dataBindTab6Datatable();
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr":"' + $('#lwTab6SelectYear option:selected').val() + '", "gazar":"' + $("#lwTab6SelectGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    });
                    $("#lwTab6SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                    $("#lwTab6SelectHeltes").prop("disabled", false);
                    dataBindTab6Datatable();
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
    $("#lwTab6SelectHeltes").change(function () {
        dataBindTab6Datatable();
    });
    $("#lwTab6ModalSelectYear").change(function () {
        var valData = '', valOptGroup = '';
        if ($("#lwTab6ModalSelectYear option:selected").val() == "") {
            $("#lwTab6ModalSelectGazar").html("<option value=\"\">- Сонго -</option>");
            $("#lwTab6ModalSelectGazar").prop("disabled", true);
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetNegjListForDDL",
                data: '{"yr":"' + $('#lwTab6ModalSelectYear option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    valOptGroup = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        if (valOptGroup != value.GAZAR_ID) {
                            if (valOptGroup != "") valData += "</optgroup>";
                            valData += "<optgroup label=\"" + value.GAZAR_NAME + "\">";
                        }
                        valData += "<option value=\"" + value.HELTES_ID + "\" title=\"" + value.HELTES_NAME + "\">" + value.HELTES_NAMEINIT + "</option>";
                        valOptGroup = value.GAZAR_ID;
                    });
                    $("#lwTab6ModalSelectGazar").html('<option value=\"\">- Сонго -</option>' + valData);
                    $("#lwTab6ModalSelectGazar").prop("disabled", false);
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
    function dataBindTab6ModalSelectLaw() {
        var valData = '';
        if ($('#lwTab6ModalSelectLawtype option:selected').val() == '') {
            $('#lwTab6ModalSelectLaw').html('<option value="">- Сонго -</option>');
            $('#lwTab6ModalSelectLaw').prop('disabled', true);
            $('#lwTab6ModalSelectLaw').val('');
            dataBindTab6ModalDatatable();
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/LwTab6ModalLawListForDDL",
                data: '{"tp":"' + $('#lwTab6ModalSelectLawtype option:selected').val() + '", "yr":"' + $('#indexCurrentYear').text() + '", "gazar":"' + $('#lwTab6ModalSelectLawzaaltGazar option:selected').val() + '", "heltes":"' + $('#lwTab6ModalSelectLawzaaltHeltes option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += "<option value=\"" + value.ID + "\">" + replaceDatabaseToDisplay(value.NAME) + "</option>";
                    });
                    $('#lwTab6ModalSelectLaw').html("<option value=\"\">- Сонго -</option>"+valData);
                    $('#lwTab6ModalSelectLaw').prop('disabled', false);
                    dataBindTab6ModalDatatable();
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
    $("#lwTab6ModalSelectLawtype").change(function () {
        dataBindTab6ModalSelectLaw();
    });
    $("#lwTab6ModalSelectLaw").change(function () {
        dataBindTab6ModalDatatable();
    });
    $("#lwTab6ModalSelectLawzaaltGazar").change(function () {
        var valData = '';
        if ($("#lwTab6ModalSelectLawzaaltGazar option:selected").val() == '') {
            $("#lwTab6ModalSelectLawzaaltHeltes").html("<option value=\"\">- Бүгд -</option>");
            $("#lwTab6ModalSelectLawzaaltHeltes").prop("disabled", true);
            dataBindTab6ModalSelectLaw();
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr":"' + $('#indexCurrentYear').html() + '", "gazar":"' + $("#lwTab6ModalSelectLawzaaltGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    });
                    $("#lwTab6ModalSelectLawzaaltHeltes").html('<option value="">- Бүгд -</option>' + valData);
                    $("#lwTab6ModalSelectLawzaaltHeltes").prop("disabled", false);
                    dataBindTab6ModalSelectLaw();
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
    $("#lwTab6ModalSelectLawzaaltHeltes").change(function () {
        dataBindTab6ModalSelectLaw();
    });
    function dataBindTab6ModalDatatable() {
        var valData = '';
        if ($('#lwTab6ModalSelectLaw option:selected').val() == '') {
            $('#lwTab6ModalDatatable').html('');
        }
        else {
            showLoader('lwTab6ModalLoader1');
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/LwTab6ModalZaaltDatatable",
                data: '{"law":"' + $('#lwTab6ModalSelectLaw option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    valData = "<tbody>";
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += "<tr onmouseover=\"lwTab6ModalZaaltDatatableTrOnMouseOver(this)\" onmouseout=\"lwTab6ModalZaaltDatatableTrOnMouseOut(this)\" data-id=\"" + value.ID + "\" data-no=\"" + value.NO + "\">";
                        valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                        valData += "<td style=\"width:43px;\"><a href=\"javascript:void(0);\" class=\"btn btn-primary btn-xs hide\" onclick=\"lwTab6ModalClickZaaltDesc(this)\"><i class=\"fa fa-plus\"></i></a></td>";
                        valData += "</tr>";
                    });
                    valData += "</tbody>";
                    $("#lwTab6ModalDatatable").html(valData);
                    var arrVals = [];
                    var valI = 0;
                    $('#lwTab6ModalUlZaaltDesc > li').each(function () {
                        arrVals.push($(this).find('span:eq(1)').text());
                    });
                    for (var i = 0; i < arrVals.length; i++) {
                        $('#lwTab6ModalDatatable > tbody  > tr').each(function () {
                            if ($(this).attr('data-id') == arrVals[i]) {
                                $(this).addClass('success');
                                $('td:eq(1)', this).find('a').removeClass('btn-primary').addClass('btn-danger');
                                $('td:eq(1)', this).find('a').find('i').removeClass('fa-plus').addClass('fa-minus');
                                return false;
                            }
                        });
                    }
                    hideLoader('lwTab6ModalLoader1');
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
    $("#lwTab6ImportPrevYear").click(function () {
        $("#lwTab6ImportPrevYear").html('<i class="fa fa-refresh fa-spin"></i>');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) CNT FROM TBL_LAWZORILT WHERE YR=' + (parseInt($('#lwTab6SelectYear option:selected').val()) - 1).toString() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (confirm((parseInt($('#lwTab6SelectYear option:selected').val())).toString() + ' оны зорилтод ' + (parseInt($('#lwTab6SelectYear option:selected').val()) - 1).toString() + ' оны '+data.d+' ширхэг зорилтыг татахад итгэлтэй байна уу! /Давхардалыг сайн шалгана уу!/')) {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/LwTab6ImportPrevYear",
                        data: '{"yr":"' + $('#lwTab6SelectYear option:selected').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            $("#lwTab6ImportPrevYear").html('<i class="fa fa-download"></i> Өмнөх оноос татах');
                            alert(data.d);
                            dataBindTab6Datatable();
                            smallBox('Зорилт', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
                    $("#lwTab6ImportPrevYear").html('<i class="fa fa-download"></i> Өмнөх оноос татах');
                }
            },
            failure: function (response) {
                $("#lwTab6ImportPrevYear").html('<i class="fa fa-download"></i> Өмнөх оноос татах');
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                $("#lwTab6ImportPrevYear").html('<i class="fa fa-download"></i> Өмнөх оноос татах');
                window.location = '../#pg/error500.aspx';
            }
        });
    });
    $("#lwTab6ImportStratZorilt").click(function () {
        var valGazar = '', valHeltes = '';
        if ($('#lwTab6SelectGazar option:selected').val() != '') valGazar = ' AND c.BR_ID=' + $('#lwTab6SelectGazar option:selected').val();
        if ($('#lwTab6SelectHeltes option:selected').val() != '') valHeltes = ' AND b.BR_ID=' + $('#lwTab6SelectHeltes option:selected').val();
        $("#lwTab6ImportStratZorilt").html('<i class="fa fa-refresh fa-spin"></i>');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) as CNT FROM TBL_FUNC_ACTION a INNER JOIN TBL_FUNC_ACTION_BR b ON a.ID=b.FUNC_ACTION_ID INNER JOIN TBL_FUNC_STRAT c ON a.FUNC_STRAT_ID=c.ID WHERE a.IS_PLANED=1 AND c.YR=' + $('#lwTab6SelectYear option:selected').val() + valGazar + valHeltes + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (confirm($('#lwTab6SelectYear option:selected').val() + ' оны зорилтод ' + $('#lwTab6SelectYear option:selected').val() + ' оны ' + data.d + ' ширхэг стратегийн зорилтыг татахад итгэлтэй байна уу! /Давхардалыг сайн шалгана уу!/')) {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/LwTab6ImportStratZorilt",
                        data: '{"yr":"' + $('#lwTab6SelectYear option:selected').val() + '", "gazar":"' + $('#lwTab6SelectGazar option:selected').val() + '", "heltes":"' + $('#lwTab6SelectHeltes option:selected').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            $("#lwTab6ImportStratZorilt").html('<i class="fa fa-download"></i> Стратегийн зорилтоос татах');
                            alert(data.d);
                            dataBindTab6Datatable();
                            smallBox('Зорилт', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
                    $("#lwTab6ImportStratZorilt").html('<i class="fa fa-download"></i> Стратегийн зорилтоос татах');
                }
            },
            failure: function (response) {
                $("#lwTab6ImportStratZorilt").html('<i class="fa fa-download"></i> Стратегийн зорилтоос татах');
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                $("#lwTab6ImportStratZorilt").html('<i class="fa fa-download"></i> Стратегийн зорилтоос татах');
                window.location = '../#pg/error500.aspx';
            }
        });
    });
    //tab7
    function lwTab7SetFirstControls() {
        var valData = '';
        if ($('#lwTab7SelectYear option:selected').val() == '') {
            $("#lwTab7SelectGazar").html('<option value="">Бүгд</option>');
            $("#lwTab7SelectGazar").prop('disabled', true);
            $("#lwTab7SelectHeltes").html('<option value="">Бүгд</option>');
            $("#lwTab7SelectHeltes").prop('disabled', true);
            dataBindTab7Datatable();
        }
        else {
            var userGazarId = $('#indexUserGazarId').text();
            var userHeltesId = $('#indexUserHeltesId').text();
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetGazarListForDDL",
                data: '{"yr":"' + $('#lwTab7SelectYear option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    });
                    $("#lwTab7SelectGazar").html('<option value="">Бүгд</option>' + valData);
                    dataBindTab7Datatable();
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
    function dataBindTab7Datatable() {
        var valData = '', isDisabled = ' disabled="disabled"';
        showLoader('loaderTab7');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/LwTab7Datatable",
            data: '{"yr":"' + $('#lwTab7SelectYear option:selected').val() + '", "gazar":"' + $('#lwTab7SelectGazar option:selected').val() + '", "heltes":"' + $('#lwTab7SelectHeltes option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (funcCheckRoles('1,39')) {
                    isDisabled = '';
                }
                valData = '';
                valData = "<table id=\"lwTab7Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th>Нэгж</th>";
                valData += "<th>Үйл ажиллагаа</th>";
                valData += "<th>&nbsp;</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\" data-zoriltid=\"" + value.LAWZORILT_ID + "\" data-gazarid=\"" + value.GAZARID + "\" data-heltesid=\"" + value.HELTESID + "\">";
                    valData += "<td>" + value.NEGJ + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td><a" + isDisabled + " style=\"cursor:pointer; margin-right:8px;\" onclick=\"showAddEditTab7(this,'засах');\" data-target=\"#lwTab7Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></a><a" + isDisabled + " style=\"cursor:pointer;\" onclick=\"showDeleteTab7(this);\"><i class=\"fa fa-trash-o\"></i></a></td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_lwTab7Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#lwTab7Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_lwTab7Datatable) {responsiveHelper_lwTab7Datatable = new ResponsiveDatatablesHelper($('#lwTab7Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_lwTab7Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_lwTab7Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"95px\" }, null, { \"sWidth\": \"35px\" }]});";
                valData += "<\/script>";
                $("#divBindTab7Table").html(valData);
                hideLoader('loaderTab7');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function showAddEditTab7(el, isinsupt) {
        $('#lwTab7ModalHeaderLabel').text(isinsupt);
        $('#pTab7InsertedZorilt').html('');
        var valData = '', valOptGroup = '';
        if (isinsupt == 'нэмэх') {
            $('#tab7ID').text("");
            $('#lwTab7ModalSelectYear').val('');
            $("#lwTab7ModalSelectGazar").html("<option value=\"\">- Сонго -</option>");
            $("#lwTab7ModalSelectGazar").prop("disabled", true);
            $("#lwTab7ModalSelectHeltes").html("<option value=\"\">- Сонго -</option>");
            $("#lwTab7ModalSelectHeltes").prop("disabled", true);
            $('#lwTab7ModalSelectZorilt').val('');
            $('#lwTab7ModalInputNo').val('');
            $('#lwTab7ModalInputName').val('');
        }
        else {
            $('#tab7ID').text($(el).closest('tr').attr('data-id'));
            $('#lwTab7ModalSelectYear').val($('#lwTab7SelectYear option:selected').val());
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetNegjListForDDL",
                data: '{"yr":"' + $('#lwTab7ModalSelectYear option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    valOptGroup = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        if (valOptGroup != value.GAZAR_ID) {
                            if (valOptGroup != "") valData += "</optgroup>";
                            valData += "<optgroup label=\"" + value.GAZAR_NAME + "\">";
                        }
                        valData += "<option value=\"" + value.HELTES_ID + "\" title=\"" + value.HELTES_NAME + "\">" + value.HELTES_NAMEINIT + "</option>";
                        valOptGroup = value.GAZAR_ID;
                    });
                    $("#lwTab7ModalSelectGazar").html('<option value="">- Сонго -</option>' + valData);
                    $("#lwTab7ModalSelectGazar").prop("disabled", false);
                    $("#lwTab7ModalSelectGazar").val($(el).closest('tr').attr('data-gazarid'));
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                        data: '{"yr":"' + $('#lwTab7ModalSelectYear option:selected').val() + '", "gazar":"' + $("#lwTab7ModalSelectGazar option:selected").val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            valData = '';
                            $($.parseJSON(data.d)).each(function (index, value) {
                                valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                            });
                            $("#lwTab7ModalSelectHeltes").html('<option value="">- Сонго -</option>' + valData);
                            $("#lwTab7ModalSelectHeltes").prop("disabled", false);
                            $("#lwTab7ModalSelectHeltes").val($(el).closest('tr').attr('data-heltesid'));
                            $("#lwTab7ModalSelectZorilt").prop("disabled", true);
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/LwTab7ModalZoriltListForDDL",
                                data: '{"yr":"' + $('#lwTab7ModalSelectYear option:selected').val() + '", "gazar":"' + $("#lwTab7ModalSelectGazar option:selected").val() + '", "heltes":"' + $("#lwTab7ModalSelectHeltes option:selected").val() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    valData = '';
                                    valOptGroup = '';
                                    $($.parseJSON(data.d)).each(function (index, value) {
                                        if (valOptGroup != value.NEGJID) {
                                            if (valOptGroup != "") valData += "</optgroup>";
                                            valData += "<optgroup label=\"" + value.NEGJNAME + "\">";
                                        }
                                        valData += "<option value=\"" + value.ID + "\">" + value.NAME + "</option>";
                                        valOptGroup = value.NEGJID;
                                    });
                                    $("#lwTab7ModalSelectZorilt").html('<option value="">- Сонго -</option>' + valData);
                                    $("#lwTab7ModalSelectZorilt").prop("disabled", false);
                                    $("#lwTab7ModalSelectZorilt").val($(el).closest('tr').attr('data-zoriltid'));
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
            $('#lwTab7ModalInputNo').val($(el).closest('tr').find('td:eq(1)').html().split('.')[0]);
            $('#lwTab7ModalInputName').val($(el).closest('tr').find('td:eq(1)').html().replace($(el).closest('tr').find('td:eq(1)').html().split('.')[0] + '. ', ''));
        }
    }
    function showDeleteTab7(el) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Сонгосон үйл ажиллагааг устгах уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"DELETE FROM TBL_LAWWORK WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab7Datatable();
                        smallBox('Үйл ажиллагаа', 'Амжилттай удтгагдлаа', '#659265', 3000);
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
    $("#lwTab7SelectYear").change(function () {
        lwTab7SetFirstControls();
    });
    $("#lwTab7SelectGazar").change(function () {
        var valData = '';
        if ($("#lwTab7SelectGazar option:selected").val() == "") {
            $("#lwTab7SelectHeltes").html("<option value=\"\">Бүгд</option>");
            $("#lwTab7SelectHeltes").prop("disabled", true);
            dataBindTab7Datatable();
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr":"' + $('#lwTab7SelectYear option:selected').val() + '", "gazar":"' + $("#lwTab7SelectGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    });
                    $("#lwTab7SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                    $("#lwTab7SelectHeltes").prop("disabled", false);
                    dataBindTab7Datatable();
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
    $("#lwTab7SelectHeltes").change(function () {
        dataBindTab7Datatable();
    });
    $('#lwTab7ModalForm').bootstrapValidator({
        fields: {
            lwTab7ModalSelectYear: {
                group: '.col-md-4',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            lwTab7ModalSelectGazar: {
                group: '.col-md-4',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            lwTab7ModalSelectHeltes: {
                group: '.col-md-4',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            lwTab7ModalInputNo: {
                group: '.col-md-2',
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
            lwTab7ModalInputName: {
                group: '.col-md-10',
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
            var isUpdate = '';
            if ($("#lwTab7ModalHeaderLabel").html() == "засах") isUpdate = " AND ID!=" + $("#tab7ID").text();
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"SELECT COUNT(NO) FROM TBL_LAWWORK WHERE LAWZORILT_ID=' + $('#lwTab7ModalSelectZorilt option:selected').val() + ' AND NO=' + $.trim($('#lwTab7ModalInputNo').val()) + isUpdate + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    if (data.d == "0") {
                        if ($('#lwTab7ModalHeaderLabel').text() == 'нэмэх') {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"INSERT INTO TBL_LAWWORK (ID, LAWZORILT_ID, NO, NAME) VALUES (TBLLASTID(\'TBL_LAWWORK\'), ' + $('#lwTab7ModalSelectZorilt option:selected').val() + ', ' + $.trim($('#lwTab7ModalInputNo').val()) + ', \'' + $.trim($('#lwTab7ModalInputName').val()) + '\')"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab7Datatable();
                                    $('#pTab7InsertedZorilt').append('<tr><td class="text-left">' + $('#lwTab7ModalSelectZorilt option:selected').text().split('.')[0] + '.' + $.trim($('#lwTab7ModalInputNo').val()) + '. ' + $.trim($('#lwTab7ModalInputName').val()) + '</td></tr>');
                                    $('#lwTab7ModalInputNo, #lwTab7ModalInputName').val('');
                                    smallBox('Үйл ажиллагаа', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
                                data: '{"qry":"UPDATE TBL_LAW SET LAWZORILT_ID=' + $('#lwTab7ModalSelectZorilt option:selected').val() + ', NO=' + $.trim($('#lwTab7ModalInputNo').val()) + ', NAME=\'' + $.trim($('#lwTab7ModalInputName').val()) + '\' WHERE ID=' + $('#tab7ID').text() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab7Datatable();
                                    $('#lwTab7Modal').modal('hide');
                                    smallBox('Үйл ажиллагаа', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
                    else alert($('#lwTab7ModalSelectYear option:selected').val() + ' оны "' + $('#lwTab7ModalSelectZorilt option:selected').text()+'" зорилтын хүрээнд ' + $.trim($('#lwTab7ModalInputNo').val()) + ' дугаартай үйл ажиллагаа орсон байна.');
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
    $("#lwTab7ModalSelectYear").change(function () {
        var valData = '';
        if ($("#lwTab7ModalSelectYear option:selected").val() == "") {
            $("#lwTab7ModalSelectGazar").html('<option value="">- Сонго -</option>');
            $("#lwTab7ModalSelectGazar").prop("disabled", true);
            $("#lwTab7ModalSelectHeltes").html('<option value="">- Сонго -</option>');
            $("#lwTab7ModalSelectHeltes").prop("disabled", true);
            $("#lwTab7ModalSelectZorilt").html('<option value="">- Сонго -</option>');
            $("#lwTab7ModalSelectZorilt").prop("disabled", true);
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetGazarListForDDL",
                data: '{"yr":"' + $('#lwTab7ModalSelectYear option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    });
                    $("#lwTab7ModalSelectGazar").html('<option value="">- Сонго -</option>' + valData);
                    $("#lwTab7ModalSelectGazar").prop("disabled", false);
                    $("#lwTab7ModalSelectHeltes").html('<option value="">- Сонго -</option>');
                    $("#lwTab7ModalSelectHeltes").prop("disabled", true);
                    $("#lwTab7ModalSelectZorilt").html('<option value="">- Сонго -</option>');
                    $("#lwTab7ModalSelectZorilt").prop("disabled", true);
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
    $("#lwTab7ModalSelectGazar").change(function () {
        var valData = '';
        if ($("#lwTab7ModalSelectGazar option:selected").val() == "") {
            $("#lwTab7ModalSelectHeltes").html('<option value="">- Сонго -</option>');
            $("#lwTab7ModalSelectHeltes").prop("disabled", true);
            $("#lwTab7ModalSelectZorilt").html('<option value="">- Сонго -</option>');
            $("#lwTab7ModalSelectZorilt").prop("disabled", true);
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr":"' + $('#lwTab7ModalSelectYear option:selected').val() + '", "gazar":"' + $("#lwTab7ModalSelectGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    });
                    $("#lwTab7ModalSelectHeltes").html('<option value="">- Сонго -</option>' + valData);
                    $("#lwTab7ModalSelectHeltes").prop("disabled", false);
                    $("#lwTab7ModalSelectZorilt").html('<option value="">- Сонго -</option>');
                    $("#lwTab7ModalSelectZorilt").prop("disabled", true);
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
    $("#lwTab7ModalSelectHeltes").change(function () {
        var valData = '', valOptGroup = '';
        if ($("#lwTab7ModalSelectHeltes option:selected").val() == "") {
            $("#lwTab7ModalSelectZorilt").html('<option value="">- Сонго -</option>');
            $("#lwTab7ModalSelectZorilt").prop("disabled", true);
        }
        else {
            $("#lwTab7ModalSelectZorilt").prop("disabled", true);
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/LwTab7ModalZoriltListForDDL",
                data: '{"yr":"' + $('#lwTab7ModalSelectYear option:selected').val() + '", "gazar":"' + $("#lwTab7ModalSelectGazar option:selected").val() + '", "heltes":"' + $("#lwTab7ModalSelectHeltes option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    valOptGroup = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        if (valOptGroup != value.NEGJID) {
                            if (valOptGroup != "") valData += "</optgroup>";
                            valData += "<optgroup label=\"" + value.NEGJNAME + "\">";
                        }
                        valData += "<option value=\"" + value.ID + "\">" + value.NAME + "</option>";
                        valOptGroup = value.NEGJID;
                    });
                    $("#lwTab7ModalSelectZorilt").html('<option value="">- Сонго -</option>' + valData);
                    $("#lwTab7ModalSelectZorilt").prop("disabled", false);
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
    $("#lwTab7ImportPrevYear").click(function () {
        $("#lwTab7ImportPrevYear").html('<i class="fa fa-refresh fa-spin"></i>');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) as CNT FROM TBL_LAWWORK a INNER JOIN TBL_LAWZORILT b ON a.LAWZORILT_ID=b.ID WHERE b.YR=' + (parseInt($('#lwTab7SelectYear option:selected').val()) - 1).toString() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (confirm((parseInt($('#lwTab7SelectYear option:selected').val())).toString() + ' оны үйл ажиллагаанд ' + (parseInt($('#lwTab7SelectYear option:selected').val()) - 1).toString() + ' оны ' + data.d + ' ширхэг үйл ажиллагааг татахад итгэлтэй байна уу! /Давхардалыг сайн шалгана уу!, Үйл ажиллагааг өмнөх оноос татахдаа зорилтоо татаж байж оруулна уу!/')) {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/LwTab7ImportPrevYear",
                        data: '{"yr":"' + $('#lwTab7SelectYear option:selected').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            $("#lwTab7ImportPrevYear").html('<i class="fa fa-download"></i> Өмнөх оноос татах');
                            alert(data.d);
                            dataBindTab7Datatable();
                            smallBox('Үйл ажиллагаа', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
                    smallBox('Үйл ажиллагаа', 'Амжилттай хадгалагдлаа', '#659265', 3000);
                    // Do nothing!
                }
            },
            failure: function (response) {
                smallBox('Үйл ажиллагаа', 'Амжилттай хадгалагдлаа', '#659265', 3000);
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                smallBox('Үйл ажиллагаа', 'Амжилттай хадгалагдлаа', '#659265', 3000);
                window.location = '../#pg/error500.aspx';
            }
        });
    });
    //tab8
    function dataBindTab8Datatable() {
        var valData = '', isDisabled = ' disabled="disabled"';
        showLoader('loaderTab8');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/LwTab8Datatable",
            data: '{"tp":"' + $('#lwTab8SelectType option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (funcCheckRoles('1,39')) {
                    isDisabled = '';
                }
                valData = '';
                valData = "<table id=\"lwTab8Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th>Төрөл</th>";
                valData += "<th>Дугаар</th>";
                valData += "<th>Тайлбар</th>";
                valData += "<th>&nbsp;</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td>" + value.INDEXTYPE + "</td>";
                    valData += "<td>" + value.NO + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td>";
                    valData += "<div class=\"btn-group\">";
                    valData += "<button" + isDisabled + " type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab8(this,'засах');\" data-target=\"#lwTab8Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                    valData += "<button" + isDisabled + " type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab8(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                    valData += "</div>";
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_lwTab8Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#lwTab8Datatable').dataTable({\"bSort\":false,\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_lwTab8Datatable) {responsiveHelper_lwTab8Datatable = new ResponsiveDatatablesHelper($('#lwTab8Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_lwTab8Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_lwTab8Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"25px\" }, null, null,{ \"sWidth\": \"47px\" }]});";
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
    }
    function showAddEditTab8(el, isinsupt) {
        $('#lwTab8ModalHeaderLabel').text(isinsupt);
        if (isinsupt == 'нэмэх') {
            $('#tab8ID').text("");
            $('#lwTab8ModalSelectType, #lwTab8ModalInputNo, #lwTab8ModalInputName').val('');
        }
        else {
            $('#tab8ID').text($(el).closest('tr').attr('data-id'));
            $('#lwTab8ModalSelectType').val($(el).closest('tr').find('td:eq(0)').html());
            $('#lwTab8ModalInputNo').val($(el).closest('tr').find('td:eq(1)').html());
            $('#lwTab8ModalInputName').val($(el).closest('tr').find('td:eq(2)').html());
        }
    }
    function showDeleteTab8(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_LAWZAALT_INDEX WHERE LAWZAALTINDEX=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == "0") {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон "+$(el).closest('tr').find('td:eq(1)').text() + " дугаартай индексийг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"DELETE FROM TBL_LAWZAALTINDEX WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab8Datatable();
                                    smallBox('Сонгосон индекс', 'Амжилттай устгагдлаа', '#659265', 3000);
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
                else alert('Сонгосон индексэд хамааралтай заалт орсон тул устгах боломжгүй байна!');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#lwTab8SelectType").change(function () {
        dataBindTab8Datatable();
    });
    $('#lwTab8ModalForm').bootstrapValidator({
        //feedbackIcons: {
        //    valid: 'glyphicon glyphicon-ok',
        //    invalid: 'glyphicon glyphicon-remove',
        //    validating: 'glyphicon glyphicon-refresh'
        //},
        fields: {
            lwTab8ModalSelectType: {
                group: '.col-md-4',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            lwTab8ModalInputNo: {
                group: '.col-md-8',
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
            lwTab8ModalInputName: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    stringLength: {
                        max: 250,
                        message: 'Уртдаа 250 тэмдэгт авна'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            if ($('#lwTab8ModalHeaderLabel').text() == 'нэмэх') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"INSERT INTO TBL_LAWZAALTINDEX (ID, INDEXTYPE, NO, NAME) VALUES (TBLLASTID(\'TBL_LAWZAALTINDEX\'), ' + $('#lwTab8ModalSelectType option:selected').val() + ', \'' + replaceDisplayToDatabase($.trim($('#lwTab8ModalInputNo').val())) + '\', \'' + replaceDisplayToDatabase($.trim($('#lwTab8ModalInputName').val())) + '\')"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab8Datatable();
                        $('#lwTab8Modal').modal('hide');
                        smallBox('Индекс', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
                    data: '{"qry":"UPDATE TBL_LAWZAALTINDEX SET INDEXTYPE=' + $('#lwTab8ModalSelectType option:selected').val() + ', NO=\'' + replaceDisplayToDatabase($.trim($('#lwTab8ModalInputNo').val())) + '\', NAME=\'' + replaceDisplayToDatabase($.trim($('#lwTab8ModalInputName').val())) + '\' WHERE ID=' + $('#tab8ID').text() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab8Datatable();
                        $('#lwTab8Modal').modal('hide');
                        smallBox('Индекс', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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

    $('#lwTab2ModalInputDate').datepicker({
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
