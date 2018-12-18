<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="auditexternal.aspx.cs" Inherits="LMWebApp.pg.auditexternal" %>
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    <h1 class="page-title txt-color-blueDark" style="margin-bottom:12px;">
        <i class="fa-fw fa fa-home"></i>
        <span id="pageUrlModuleName" runat="server">> Хөндлөнгийн аудитын тайлан</span>
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
                <li id="pTab5Li" runat="server" onclick="pDatabindTabs(this)" style="width:175px; text-align:center;">
                    <a data-toggle="tab" href="#pTab5" style="color: #356635; background-color: #cde0c4;">
                        <i class="fa fa-fw fa-lg fa-edit"></i>
                        Биелэлт 
                    </a>
                </li>
                <li id="pTab9Li" runat="server" onclick="pDatabindTabs(this)" style="width:175px; text-align:center;">
                    <a data-toggle="tab" href="#pTab9" style="color: #305d8c; background-color: #d6dde7;">
                        <i class="fa fa-fw fa-lg fa-file-text "></i>
                        Тайлан 
                    </a>
                </li>
                <li id="pTab6Li" runat="server" onclick="pDatabindTabs(this)" style="width:175px; text-align:center;">
                    <a data-toggle="tab" href="#pTab6" style="background-color: #3276b1; color: #FFF;">
                        <i class="glyphicon glyphicon-stats"></i>
                        Үнэлгээ
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <div id="pTab1" runat="server" class="tab-pane active">
                    <ul class="nav nav-tabs bordered">
                        <li id="pTab1t1Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab1t1"><i class="fa fa-fw fa-lg fa-table"></i>Хөндлөнгийн аудитын тайлан</a>
                        </li>
                        <li id="pTab1t3Li" runat="server" onclick="pDatabindTabs(this)" class="active">
                            <a data-toggle="tab" href="#pTab1t3"><i class="fa fa-fw fa-lg fa-table"></i>Зөвлөмж / Акт, албан шаардлага</a>
                        </li>
                        <li id="pTab1t4Li" runat="server" onclick="pDatabindTabs(this)" class="pull-right">
                            <a data-toggle="tab" href="#pTab1t4"><i class="fa fa-fw fa-lg fa-wrench"></i>Хамаарах эзэн</a>
                        </li>
                        <li id="pTab1t5Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab1t5"><i class="fa fa-fw fa-lg fa-table"></i>Төлөвлөгөө</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="pTab1t1" class="tab-pane">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-table"></i></span>
                                    <h2>Хөндлөнгийн аудитын тайлан</h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab1SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
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
                        <div id="pTab1t3" class="tab-pane active">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-table"></i></span>
                                    <h2>Зөвлөмж / Акт, албан шаардлага</h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab3SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            Он:
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab3SelectCat" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">Зөвлөмж</option><option value="2">Акт, албан шаардлага</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            Ангилал:
                                        </div> 
                                    </div>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div class="Colvis TableTools"  style="right:130px; top:8px; z-index:5;">
                                        <button id="pTab3Add" runat="server" class="btn btn btn-primary btn-xs" data-target="#pTab3Modal" data-toggle="modal" onclick="showAddEditTab3(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
                                    <div class="Colvis TableTools"  style="right:200px; top:6px; z-index:5; width:200px;">
                                        <select id="pTab3SelectReport" name="pTab3SelectReport" runat="server" class="form-control" style="padding: 1px;">
                                            <option value="">Бүгд</option>
							            </select>
                                    </div>
                                    <div class="Colvis TableTools"  style="right:405px; top:8px; z-index:5; width:110px; line-height:15px; text-align:right;">
                                        Хөндлөнгийн аудитын тайлан:
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
                        <div id="pTab1t4" class="tab-pane">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-table"></i></span>
                                    <h2>Хамаарах эзэн</h2>
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
                        <div id="pTab1t5" class="tab-pane">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-table"></i></span>
                                    <h2>Төлөвлөгөө</h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab1t5SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            Он:
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab1t5SelectCat" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">Зөвлөмж</option><option value="2">Акт, албан шаардлага</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            Ангилал:
                                        </div> 
                                    </div>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div class="Colvis TableTools"  style="right:130px; top:8px; z-index:5;">
                                        <button id="pTab1t5Add" runat="server" class="btn btn btn-primary btn-xs" data-target="#pTab1t5Modal" data-toggle="modal" onclick="showAddEditTab1t5(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
                                    <div class="Colvis TableTools"  style="right:200px; top:6px; z-index:5; width:200px;">
                                        <select id="pTab1t5SelectReport" name="pTab1t5SelectReport" runat="server" class="form-control" style="padding: 1px;">
                                            <option value="">Бүгд</option>
							            </select>
                                    </div>
                                    <div class="Colvis TableTools"  style="right:405px; top:8px; z-index:5; width:110px; line-height:15px; text-align:right;">
                                        Хөндлөнгийн аудитын тайлан:
                                    </div>
                                    <div class="Colvis TableTools"  style="right:520px; top:6px; z-index:5; width:150px;">
                                        <select id="pTab1t5SelectGazar" name="pTab1t5SelectGazar" runat="server" class="form-control" style="padding: 1px;">
                                            <option value="">Бүгд</option>
							            </select>
                                    </div>
                                    <div class="Colvis TableTools"  style="right:675px; top:8px; z-index:5; width:60px; line-height:15px; text-align:right;">
                                        Хариуцах газар:
                                    </div>
                                    <div id="loaderTab1t5" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div id="divBindTab1t5Table" class="widget-body no-padding">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="pTab5" runat="server" class="tab-pane">
                    <ul class="nav nav-tabs bordered">
                        <li id="pTab5t1Li" runat="server" onclick="pDatabindTabs(this)" class="active">
                            <a data-toggle="tab" href="#pTab5t1"><i class="fa fa-fw fa-lg fa-bar-chart-o"></i> Төлөвлөгөөний биелэлт</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="pTab5t1" class="tab-pane active">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-table"></i></span>
                                    <h2>Төлөвлөгөөний биелэлт</h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab5SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab5SelectQuarter" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">Улирал 1</option><option value="2">Улирал 2</option><option value="3">Улирал 3</option><option value="4">Улирал 4</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab5SelectCat" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">Зөвлөмж</option><option value="2">Акт, албан шаардлага</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            Ангилал:
                                        </div> 
                                    </div>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div class="Colvis TableTools"  style="right:125px; top:6px; z-index:5; width:275px;">
                                        <select id="pTab5SelectReport" name="pTab5SelectReport" runat="server" class="form-control" style="padding: 1px;">
                                            <option value="">Бүгд</option>
							            </select>
                                    </div>
                                    <div class="Colvis TableTools"  style="right:405px; top:8px; z-index:5; width:110px; line-height:15px; text-align:right;">
                                        Хөндлөнгийн аудитын тайлан:
                                    </div>
                                    <div class="Colvis TableTools"  style="right:520px; top:6px; z-index:5; width:150px;">
                                        <select id="pTab5SelectGazar" name="pTab5SelectGazar" runat="server" class="form-control" style="padding: 1px;">
                                            <option value="">Бүгд</option>
							            </select>
                                    </div>
                                    <div class="Colvis TableTools"  style="right:675px; top:8px; z-index:5; width:60px; line-height:15px; text-align:right;">
                                        Хариуцах газар:
                                    </div>
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
                </div>
                <div id="pTab6" runat="server" class="tab-pane">
                    <ul class="nav nav-tabs bordered">
                        <li id="pTab6t1Li" runat="server" onclick="pDatabindTabs(this)" class="active">
                            <a data-toggle="tab" href="#pTab6t1"><i class="glyphicon glyphicon-stats"></i> Төлөвлөгөөний үнэлгээ</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="pTab6t1" class="tab-pane active">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-table"></i></span>
                                    <h2>Төлөвлөгөөний үнэлгээ</h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab6SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab6SelectQuarter" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">Улирал 1</option><option value="2">Улирал 2</option><option value="3">Улирал 3</option><option value="4">Улирал 4</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab6SelectCat" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">Зөвлөмж</option><option value="2">Акт, албан шаардлага</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            Ангилал:
                                        </div> 
                                    </div>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div class="Colvis TableTools"  style="right:125px; top:6px; z-index:5; width:275px;">
                                        <select id="pTab6SelectReport" name="pTab6SelectReport" runat="server" class="form-control" style="padding: 1px;">
                                            <option value="">Бүгд</option>
							            </select>
                                    </div>
                                    <div class="Colvis TableTools"  style="right:405px; top:8px; z-index:5; width:110px; line-height:15px; text-align:right;">
                                        Хөндлөнгийн аудитын тайлан:
                                    </div>
                                    <div class="Colvis TableTools"  style="right:520px; top:6px; z-index:5; width:150px;">
                                        <select id="pTab6SelectGazar" name="pTab6SelectGazar" runat="server" class="form-control" style="padding: 1px;">
                                            <option value="">Бүгд</option>
							            </select>
                                    </div>
                                    <div class="Colvis TableTools"  style="right:675px; top:8px; z-index:5; width:60px; line-height:15px; text-align:right;">
                                        Хариуцах газар:
                                    </div>
                                    <div id="loaderTab6" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div id="divBindTab6Table" class="widget-body no-padding">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="pTab9" runat="server" class="tab-pane">
                    <ul class="nav nav-tabs bordered">
                        <li id="pTab9t1Li" runat="server" onclick="pDatabindTabs(this)" class="active">
                            <a data-toggle="tab" href="#pTab9t1">Тайлан</a>
                        </li>
                        <li id="pTab9t2Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab9t2">Тайлан /Нэгжээр/</a>
                        </li>
                        <li id="pTab9t3Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab9t3">Тайлан (Дэл.Төлөвлөгөө)</a>
                        </li>
                        <li id="pTab9t5Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab9t5">Илгээх (Төлөвлөгөө)</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="pTab9t1" class="tab-pane active">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab9t1SelectYear" runat="server" class="form-control" style="padding:1px">
                                                
                                            </select>
                                        </div>
                                        <div style="width:100px; float:left; margin-right:10px;">
                                            <select id="pTab9t1SelectQuarter" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">Улирал 1</option>
                                                <option value="2">Улирал 2</option>
                                                <option value="3">Улирал 3</option>
                                                <option value="4">Улирал 4</option>
                                            </select>
                                        </div>
                                        <div style="width:150px; float:left; margin-right:10px;">
                                            <select id="pTab9t1SelectTurul" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">Зөвлөмж</option>
                                                <option value="3">Зөвлөмжийн төлөвлөгөө</option>
                                                <option value="2">Акт/албан шаардлага</option>
                                                <option value="4">Акт/албан шаардлагын төлөвлөгөө</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab9t1', 'ҮАЗУлиралынҮнэлгээЗөвлөмж')">
                                                <i class="fa fa-file-word-o"></i>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab9t1')">
                                                <i class="fa fa-print"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="loaderTab9t1" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divpTab9t1" class="reports" style="margin:0 10px 10px 10px;">
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                        <label id="pTab9t1Turul" style="font-weight:bold;"></label>-Н ҮНЭЛГЭЭ /ТАЙЛАНГААР/
                                    </div>
                                    <div style="text-align: right;  font-size: 14px; padding-bottom: 3px; text-transform: uppercase; line-height: 5px;">
                                        (<label id="pTab9t1Year" runat="server"></label> 
                                        ОНЫ 
                                        <label id="pTab9t1Quarter" runat="server"></label> 
                                        УЛИРЛЫН БАЙДЛААР)
                                    </div>
                                    <div id="divBindTab9t1Table"></div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab9t2" class="tab-pane">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab9t2SelectYear" runat="server" class="form-control" style="padding:1px">
                                                
                                            </select>
                                        </div>
                                        <div style="width:100px; float:left; margin-right:10px;">
                                            <select id="pTab9t2SelectQuarter" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">Улирал 1</option>
                                                <option value="2">Улирал 2</option>
                                                <option value="3">Улирал 3</option>
                                                <option value="4">Улирал 4</option>
                                            </select>
                                        </div>
                                        <div style="width:150px; float:left; margin-right:10px;">
                                            <select id="pTab9t2SelectTurul" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">Зөвлөмж</option>
                                                <option value="3">Зөвлөмжийн төлөвлөгөө</option>
                                                <option value="2">Акт/албан шаардлага</option>
                                                <option value="4">Акт/албан шаардлагын төлөвлөгөө</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab9t2', 'ҮАЗУлиралынҮнэлгээАкт')">
                                                <i class="fa fa-file-word-o"></i>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab9t2')">
                                                <i class="fa fa-print"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="loaderTab9t2" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divpTab9t2" class="reports" style="margin:0 10px 10px 10px;">
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                        <label id="pTab9t2Turul" style="font-weight:bold;"></label>-Н ҮНЭЛГЭЭ /ГАЗРААР/
                                    </div>
                                    <div style="text-align: right;  font-size: 14px; padding-bottom: 3px; text-transform: uppercase; line-height: 5px;">
                                        (<label id="pTab9t2Year" runat="server"></label> 
                                        ОНЫ 
                                        <label id="pTab9t2Quarter" runat="server"></label> 
                                        УЛИРЛЫН БАЙДЛААР)
                                    </div>
                                    <div id="divBindTab9t2Table"></div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab9t3" class="tab-pane">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab9t3SelectYear" runat="server" class="form-control" style="padding:1px">
                                                
                                            </select>
                                        </div>
                                        <div style="width:100px; float:left; margin-right:10px;">
                                            <select id="pTab9t3SelectQuarter" runat="server" class="form-control" style="padding:1px">
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
                                            <select id="pTab9t3SelectGazar" runat="server" class="form-control" style="padding:1px">
                                                <option value="">Бүгд</option>
                                            </select>
                                        </div>
                                        <div style="width:110px; float:left; margin-right:10px; text-align: right; line-height: 14px;">
                                            Хөндлөнгийн аудитын тайлан:
                                        </div>
                                        <div style="width:200px; float:left; margin-right:10px;">
                                            <select id="pTab9t3SelectReport" runat="server" class="form-control" style="padding:1px">
                                                <option value="">Бүгд</option>
                                            </select>
                                        </div>
                                        <div style="width:50px; float:left; margin-right:10px; text-align: right; margin-top:5px;">
                                            Биелэлт:
                                        </div>
                                        <div style="width:100px; float:left; margin-right:10px;">
                                            <select id="pTab9t3SelectIsImpl" runat="server" class="form-control" style="padding:1px">
                                                <option value="">Бүгд</option>
                                                <option value="1">Тайлагнасан</option>
                                                <option value="0">Тайлагнаагүй</option>
                                            </select>
                                        </div>
                                        <div style="width:150px; float:left; margin-right:10px;">
                                            <select id="pTab9t3SelectTurul" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">Зөвлөмжийн төлөвлөгөө</option>
                                                <option value="2">Акт/албан шаардлагын төлөвлөгөө</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab9t3', 'ҮАЗУлиралынҮнэлгээДэлгэрэнгүйЗөвлөмж')">
                                                <i class="fa fa-file-word-o"></i>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab9t3')">
                                                <i class="fa fa-print"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="loaderTab9t3" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divpTab9t3" class="reports" style="margin:0 10px 10px 10px;">
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                        ТӨЛӨВЛӨГӨӨНИЙ БИЕЛЭЛТ                                        
                                    </div>
                                    <div style="text-align: right; font-size: 14px; padding-bottom: 3px; text-transform: uppercase; line-height: 5px;">
                                        (<label id="pTab9t3Year" runat="server"></label> 
                                        ОНЫ 
                                        <label id="pTab9t3Quarter" runat="server"></label>-Р УЛИРЛЫН БАЙДЛААР)
                                    </div>
                                    <div id="divBindTab9t3Table"></div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab9t5" class="tab-pane">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab9t5SelectYear" runat="server" class="form-control" style="padding:1px">
                                                
                                            </select>
                                        </div>
                                        <div style="width:100px; float:left; margin-right:10px;">
                                            <select id="pTab9t5SelectQuarter" runat="server" class="form-control" style="padding:1px">
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
                                            <select id="pTab9t5SelectGazar" runat="server" class="form-control" style="padding:1px">
                                                <option value="">Бүгд</option>
                                            </select>
                                        </div>
                                        <div style="width:110px; float:left; margin-right:10px; text-align: right; line-height: 14px;">
                                            Хөндлөнгийн аудитын тайлан:
                                        </div>
                                        <div style="width:200px; float:left; margin-right:10px;">
                                            <select id="pTab9t5SelectReport" runat="server" class="form-control" style="padding:1px">
                                                <option value="">Бүгд</option>
                                            </select>
                                        </div>
                                        <div style="width:50px; float:left; margin-right:10px; text-align: right;">
                                            Биелэлт:
                                        </div>
                                        <div style="width:100px; float:left; margin-right:10px;">
                                            <select id="pTab9t5SelectIsImpl" runat="server" class="form-control" style="padding:1px">
                                                <option value="">Бүгд</option>
                                                <option value="1">Тайлагнасан</option>
                                                <option value="0">Тайлагнаагүй</option>
                                            </select>
                                        </div>
                                        <div style="width:150px; float:left; margin-right:10px;">
                                            <select id="pTab9t5SelectTurul" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">Зөвлөмжийн төлөвлөгөө</option>
                                                <option value="2">Акт/албан шаардлагын төлөвлөгөө</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab9t5', 'ҮАЗУлиралынЯвуулдагЗөвлөмж')">
                                                <i class="fa fa-file-word-o"></i>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab9t5')">
                                                <i class="fa fa-print"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="loaderTab9t5" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divpTab9t5" class="reports" style="margin:0 10px 10px 10px;">
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                        ТӨЛӨВЛӨГӨӨНИЙ БИЕЛЭЛТ                                        
                                    </div>
                                    <div style="text-align: right; font-size: 14px; padding-bottom: 3px; text-transform: uppercase; line-height: 5px;">
                                        (<label id="pTab9t5Year" runat="server"></label> 
                                        ОНЫ 
                                        <label id="pTab9t5Quarter" runat="server"></label>-Р УЛИРЛЫН БАЙДЛААР)
                                    </div>
                                    <div id="divBindTab9t5Table"></div>
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
                    <h4 class="modal-title" >Хөндлөнгийн аудитын тайлан&nbsp;<span id="pTab1ModalHeaderLabel"></span></h4>
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
                                    <label class="control-label">Tөлөвлөгөө</label>
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
<div id="pTab2Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="pTab2ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Хамаарах эзэн&nbsp;<span id="pTab2ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pTab2ModalID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Дугаар</label>
									<input id="pTab2ModalInputNo" name="pTab2ModalInputNo" class="form-control" type="text" placeholder="Дугаар" disabled/>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Нэр</label>
									<input id="pTab2ModalInputName" name="pTab2ModalInputName" class="form-control" type="text" placeholder="Нэр"/>
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
                    <h4 class="modal-title" >Зөвлөмж / Акт, албан шаардлага&nbsp;<span id="pTab3ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pTab3ModalID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Хөндлөнгийн аудитын тайлан</label>
									<select id="pTab3ModalSelectReport" name="pTab3ModalSelectReport" runat="server" class="form-control" style="padding: 5px;">
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
                                    <label class="control-label">*Хамаарах эзэн</label>
									<select id="pTab3ModalSelectType" name="pTab3ModalSelectType" runat="server" class="form-control" style="padding: 5px;">
                                        <option value="">- Сонго -</option>
							        </select>
                                </div>
                                <div class="col-md-6">
                                    <label class="control-label">*Ангилал</label>
									<select id="pTab3ModalSelectCat" name="pTab3ModalSelectCat" runat="server" class="form-control" style="padding: 5px;">
                                        <option value="">- Сонго -</option>
                                        <option value="1">Зөвлөмж</option>
                                        <option value="2">Акт, албан шаардлага</option>
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
									<input id="pTab3ModalInputNo" name="pTab3ModalInputNo" class="form-control" type="text" placeholder="Дугаар"/>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Нэр</label>
									<textarea id="pTab3ModalInputName" name="pTab3ModalInputName" class="form-control" required="" placeholder="Нэр" rows="3"></textarea>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-2">
                                    <label class="control-label">*Огноо</label>
									<input id="pTab3ModalInputDt" name="pTab3ModalInputDt" class="form-control" type="text" placeholder="Огноо"/>
                                </div>
                                <div class="col-md-10">
                                    <label class="control-label">*Хариуцах газар (<span id="pTab3ModalSpanGazarYr"></span>)</label>
                                    <div id="pTab3ModalDivSelect2Gazar">

                                    </div>
                                </div>
                            </div>
                            <div id="pTab3ModalDivSelect2Gazar2Div" class="row">
                                <div class="col-md-10 col-md-offset-2">
                                    <label class="control-label">Хариуцах газар /нэгж өөрчлөгдсөн бол/ (<span id="pTab3ModalSpanGazarYr2"></span>)</label>
                                    <div id="pTab3ModalDivSelect2Gazar2">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-sm-12 col-md-12">
									<label class="control-label">Хугацаа</label>
								</div>
                            </div>
                            <div class="row">
                                <div class="col-md-4 col-md-4" style="width:210px;">
									<label class="radio radio-inline no-margin">
										<input id="pTab3ModalRadioIsSuccessdate0" type="radio" name="pTab3ModalRadioIsSuccessdate" value="0" class="radiobox style-2" disabled="disabled">
										<span>Байнга</span>
									</label>
									<label class="radio radio-inline">
										<input id="pTab3ModalRadioIsSuccessdate1" type="radio" name="pTab3ModalRadioIsSuccessdate" value="1" class="radiobox style-2" disabled="disabled" checked="checked">
										<span>Хугацаатай</span>
									</label>
                                </div>
                                <div id="pTab3ModalInputSuccessdateDiv" class="col-md-3 col-md-3" style="padding-left: 0;">
                                    <input id="pTab3ModalInputSuccessdate" name="pTab3ModalInputSuccessdate" class="form-control" type="text" placeholder="Хугацаа"/>
                                </div>
                                <div class="col-md-4 col-md-4">
                                    <label class="radio radio-inline no-margin">
										<input id="pTab3ModalRadioIsActive1" type="radio" name="pTab3ModalRadioIsActive" value="0" class="radiobox style-2"/>
										<span>Идэвхитэй</span>
									</label>
									<label class="radio radio-inline">
										<input id="pTab3ModalRadioIsActive0" type="radio" name="pTab3ModalRadioIsActive" value="1" class="radiobox style-2" />
										<span>Идэвхигүй</span>
									</label>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <div class="form-group" style="margin:10px 0 0 0; display:block; overflow:hidden;">
                            <div class="row">
                                <div class="col-md-2" style="font-size:13px;">
                                    Хавсралт файл:
                                </div>
                                <div class="col-md-10" style="font-style:italic;padding-left: 0;">
                                    <a id="pTab3ModalAttachBtn" class="btn btn-link btn-xs" href="javascript:void(0);" style="padding:0px; border:none;" download="">Файл хавсаргаагүй байна...</a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2">
                                    <a id="pTab3ModalAttachDelete" class="btn btn-link btn-xs" href="javascript:void(0);"><i class="fa fa-trash-o"></i> файл устгах</a>
                                </div>
                                <div class="col-md-10" style="padding-left: 0;">
                                    <input id="pTab3ModalAttachInput" type="file" class="btn btn-default">
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
<div id="pTab5ImplModal" class="modal fade in modalSecond" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            
        </div>
    </div>
</div>
<div id="pTabsAttachShowModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            
        </div>
    </div>
</div>
<div id="pTab7ImplModal" class="modal fade in modalSecond" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            
        </div>
    </div>
</div>

<div id="pTab1t5Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="pTab1t5ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Төлөвлөгөө&nbsp;<span id="pTab1t5ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pTab1t5ModalID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Хөндлөнгийн  аудитын тайлан</label>
									<select id="pTab1t5ModalSelectReport" name="pTab1t5ModalSelectReport" runat="server" class="form-control" style="padding: 5px;">
                                        <option value="">- Сонго -</option>
							        </select>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-2">
                                    <label class="control-label">*Ангилал</label>
									<select id="pTab1t5ModalSelectCat" name="pTab1t5ModalSelectCat" runat="server" class="form-control" style="padding: 1px;">
                                        <option value="">- Сонго -</option>
                                        <option value="1">Зөвлөмж</option>
                                        <option value="2">Акт, албан шаардлага</option>
							        </select>
                                </div>
                                <div class="col-md-10">
                                    <label class="control-label">*Зөвлөмж / Акт, албан шаардлага</label>
									<select id="pTab1t5ModalSelectRec" name="pTab1t5ModalSelectRec" runat="server" class="form-control" style="padding: 5px;" disabled>
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
									<input id="pTab1t5ModalInputNo" name="pTab1t5ModalInputNo" class="form-control" type="text" placeholder="Дугаар"/>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Нэр</label>
									<textarea id="pTab1t5ModalInputName" name="pTab1t5ModalInputName" class="form-control" required="" placeholder="Нэр" rows="3"></textarea>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-9">
                                    <label class="control-label">*Хариуцах газар</label>
                                    <div id="pTab1t5ModalDivSelect2Gazar">

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
        var valData = '', valOptGroup = '';
        var valLiId = $('#pTab1Li').closest('ul').find('.active').attr('id');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditexternalTab3ReportListForDDL",
            data: '{}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<option value=\"" + value.ID + "\">" + value.NO + " | " + replaceDatabaseToDisplay(value.NAME) + "</option>";
                });
                $("#pTab3ModalSelectReport, #pTab1t5ModalSelectReport").html('<option value="">- Сонго -</option>' + valData);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/AuditexternalTab3ReportListRecForDDL",
                    data: '{}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<option value=\"" + value.AUDITEXTERNAL_REPORT_ID + "\">" + value.NO + " | " + replaceDatabaseToDisplay(value.NAME) + "</option>";
                        });
                        $('#pTab3SelectReport, #pTab1t5SelectReport, #pTab5SelectReport, #pTab6SelectReport, #pTab9t3SelectReport, #pTab9t5SelectReport').html('<option value="">Бүгд</option>' + valData);
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/AuditexternalTab3ReportListAktForDDL",
                            data: '{}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += "<option value=\"" + value.AUDITEXTERNAL_REPORT_ID + "\">" + value.NO + " | " + replaceDatabaseToDisplay(value.NAME) + "</option>";
                                });
                                $('#pTab7SelectReport, #pTab8SelectReport').html('<option value="">Бүгд</option>' + valData);
                                $('#pTab3SelectReport option:eq(1), #pTab1t5SelectReport option:eq(1), #pTab5SelectReport option:eq(1), #pTab6SelectReport option:eq(1), #pTab7SelectReport option:eq(1), #pTab8SelectReport option:eq(1)').prop('selected', true);
                                $('#divBindTab3Table, #divBindTab5Table, #divBindTab6Table, #divBindTab7Table, #divBindTab8Table, #divBindTab9t3Table').html('');
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/AuditinternalTab2GazarListForSelect2",
                                    data: '{"selectedList":"", "yr":"' + $('#indexCurrentYear').html() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (data) {
                                        valData = '';
                                        valOptGroup = '';
                                        $($.parseJSON(data.d)).each(function (index, value) {
                                            if (value.BR_TYPE1 != valOptGroup) {
                                                if (valOptGroup != '') valData += '</optgroup>';
                                                valData += '<optgroup label="' + value.BR_TYPE1.replace("3", "СЯ-ны дотоод нэгжүүд").replace("5", "Бусад") + '">';
                                            }
                                            valData += '<option' + value.ISSELECTED + ' value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                                            valOptGroup = value.BR_TYPE1;
                                        });
                                        $("#pTab3SelectGazar, #pTab1t5SelectGazar, #pTab5SelectGazar, #pTab6SelectGazar, #pTab9t3SelectGazar, #pTab9t5SelectGazar").html('<option value="">Бүгд</option>' + valData);
                                        if (valLiId == 'pTab1Li') {
                                            dataBindTab3DataTable();
                                        }
                                        else if (valLiId == 'pTab5Li') {
                                            dataBindTab5DataTable();
                                        }
                                        else if (valLiId == 'pTab6Li') {
                                            dataBindTab6DataTable();
                                        }
                                        else if (valLiId == 'pTab9Li') {
                                            dataBindTab9t1DataTable();
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
                dataBindTab3DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab1t1Li') {
            if ($.trim($('#divBindTab1Table').html()) == "") {
                dataBindTab1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab1t3Li') {
            if ($.trim($('#divBindTab3Table').html()) == "") {
                dataBindTab3DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab1t4Li') {
            if ($.trim($('#divBindTab2Table').html()) == "") {
                dataBindTab2DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab1t5Li') {
            if ($.trim($('#divBindTab1t5Table').html()) == "") {
                dataBindTab1t5DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab5Li') {
            if ($.trim($('#divBindTab5Table').html()) == "") {
                dataBindTab5DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab5t1Li') {
            if ($.trim($('#divBindTab5Table').html()) == "") {
                dataBindTab5DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab6Li') {
            if ($.trim($('#divBindTab6Table').html()) == "") {
                dataBindTab6DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab6t1Li') {
            if ($.trim($('#divBindTab6Table').html()) == "") {
                dataBindTab6DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab9Li') {
            if ($.trim($('#divBindTab9t1Table').html()) == "") {
                dataBindTab9t1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab9t1Li') {
            if ($.trim($('#divBindTab9t1Table').html()) == "") {
                dataBindTab9t1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab9t2Li') {
            if ($.trim($('#divBindTab9t2Table').html()) == "") {
                dataBindTab9t2DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab9t3Li') {
            if ($.trim($('#divBindTab9t3Table').html()) == "") {
                dataBindTab9t3DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab9t5Li') {
            if ($.trim($('#divBindTab9t5Table').html()) == "") {
                dataBindTab9t5DataTable();
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
            url: "../ws/ServiceMain.svc/AuditexternalTab1Datatable",
            data: '{"yr":"' + $('#pTab1SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (!funcCheckRoles('1,36')) {
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
                    valData += "<td>" + value.NO + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td>";
                    if (value.FILENAME != "") {
                        valData += "<div class=\"btn-group\">";
                        valData += "<a href=\"../files/auditexternal/" + value.FILENAME + "\" class=\"btn btn-default btn-xs\" download title=\"Хавсаргасан файл татах\"><i class=\"fa fa-download\"></i></a>";
                        valData += "<a href=\"../pg/auditexternalTabsAttachShowModal.aspx?filename=" + value.FILENAME + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTabsAttachShowModal\" data-toggle=\"modal\"><i class=\"fa fa-eye\"></i></a>";
                        valData += "</div>";
                    }
                    valData += "</td>";
                    valData += "<td>";
                    if (value.FILENAME2 != "") {
                        valData += "<div class=\"btn-group\">";
                        valData += "<a href=\"../files/auditexternal/" + value.FILENAME2 + "\" class=\"btn btn-default btn-xs\" download title=\"Хавсаргасан файл татах\"><i class=\"fa fa-download\"></i></a>";
                        valData += "<a href=\"../pg/auditexternalTabsAttachShowModal.aspx?filename=" + value.FILENAME2 + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTabsAttachShowModal\" data-toggle=\"modal\"><i class=\"fa fa-eye\"></i></a>";
                        valData += "</div>";
                    }
                    valData += "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">" + value.WHONAME + "</td>";
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
            data: '{"qry":"SELECT COUNT(1) FROM TBL_AUDITEXTERNAL_RECOMMEND WHERE AUDITEXTERNAL_REPORT_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') {
                    alert('Сонгосон хөндлөнгийн аудитын тайланд хамааралтай зөвлөмж орсон тул устгах боломжгүй байна!');
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
                                data: '{"qry":"DELETE FROM TBL_AUDITEXTERNAL_REPORT WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab1DataTable();
                                    smallBox('Сонгосон хөндлөнгийн аудит', 'Амжилттай устлаа...', '#659265', 3000);
                                    $('#divBindTab3Table, #divBindTab5Table').html('');
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
                        data: '{"filename":"~/files/auditexternal/' + $('#pTab1ModalAttachBtn').html() + '"}',
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
                        data: '{"filename":"~/files/auditexternal/' + $('#pTab1ModalAttach2Btn').html() + '"}',
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
                    data: '{"qry":"SELECT TBLLASTID(\'TBL_AUDITEXTERNAL_REPORT\') FROM DUAL"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        if ($('#pTab1ModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
                            filename = '\'ХАТТайлан-' + data.d + '.' + $('#pTab1ModalAttachInput').val().split('.').pop() + '\'';
                            filenameF = 'ХАТТайлан-' + data.d + '.' + $('#pTab1ModalAttachInput').val().split('.').pop() + '';
                        }
                        if ($('#pTab1ModalAttach2Btn').html() != 'Файл хавсаргаагүй байна...') {
                            filename2 = '\'ХАТТөлөвлөгөө-' + data.d + '.' + $('#pTab1ModalAttach2Input').val().split('.').pop() + '\'';
                            filename2F = 'ХАТТөлөвлөгөө-' + data.d + '.' + $('#pTab1ModalAttach2Input').val().split('.').pop() + '';
                        }
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                            data: '{"qry":"INSERT INTO TBL_AUDITEXTERNAL_REPORT (ID, YR, MNTH, NO, NAME, FILENAME, FILENAME2, WHONAME, CREATED_STAFFID, CREATED_DATE) VALUES (TBLLASTID(\'TBL_AUDITEXTERNAL_REPORT\'), ' + $('#pTab1ModalSelectYear option:selected').val() + ', ' + $('#pTab1ModalSelectMonth option:selected').val() + ', \'' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputNo').val())) + '\', \'' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputName').val())) + '\', ' + filename + ', ' + filename2 + ', \'' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputWhoname').val())) + '\',' + $('#indexUserId').text() + ', sysdate)"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function () {
                                if ($('#pTab1ModalAttachInput').val() != '') {
                                    var valMaxId = '';
                                    globalAjaxVar = $.ajax({
                                        type: "POST",
                                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                        data: '{"qry":"SELECT NVL(MAX(ID),1) FROM TBL_AUDITEXTERNAL_REPORT"}',
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function (data) {
                                            valMaxId = data.d;
                                            var uploadfiles = $("#pTab1ModalAttachInput").get(0);
                                            var uploadedfiles = uploadfiles.files;
                                            var fromdata = new FormData();
                                            fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                                            var choice = {};
                                            choice.url = "pg/UploadFile.ashx?folder=auditexternal&filename=" + filenameF;
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
                                        data: '{"qry":"SELECT NVL(MAX(ID),1) FROM TBL_AUDITEXTERNAL_REPORT"}',
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function (data) {
                                            valMaxId = data.d;
                                            var uploadfiles = $("#pTab1ModalAttach2Input").get(0);
                                            var uploadedfiles = uploadfiles.files;
                                            var fromdata = new FormData();
                                            fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                                            var choice = {};
                                            choice.url = "pg/UploadFile.ashx?folder=auditexternal&filename=" + filename2F;
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
                                smallBox('Хөндлөнгийн аудитын тайлан', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                                dataBindAllReportDDL();
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
                    filename = '\'ХАТТайлан-' + $("#pTab1ModalID").text() + '.' + $('#pTab1ModalAttachBtn').html().split('.').pop() + '\'';
                    filenameF = 'ХАТТайлан-' + $("#pTab1ModalID").text() + '.' + $('#pTab1ModalAttachInput').val().split('.').pop() + '';
                }
                if ($('#pTab1ModalAttach2Btn').html() != 'Файл хавсаргаагүй байна...') {
                    filename2 = '\'ХАТТөлөвлөгөө-' + $("#pTab1ModalID").text() + '.' + $('#pTab1ModalAttach2Btn').html().split('.').pop() + '\'';
                    filename2F = 'ХАТТөлөвлөгөө-' + $("#pTab1ModalID").text() + '.' + $('#pTab1ModalAttach2Input').val().split('.').pop() + '';
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"UPDATE TBL_AUDITEXTERNAL_REPORT SET YR=' + $('#pTab1ModalSelectYear option:selected').val() + ', MNTH=' + $('#pTab1ModalSelectMonth option:selected').val() + ', NO=\'' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputNo').val())) + '\', NAME=\'' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputName').val())) + '\', FILENAME=' + filename + ', FILENAME2=' + filename2 + ', WHONAME=\'' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputWhoname').val())) + '\', UPDATED_STAFFID=' + $('#indexUserId').text() + ', UPDATED_DATE=sysdate WHERE ID=' + $("#pTab1ModalID").text() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        if ($('#pTab1ModalAttachInput').val() != '') {
                            var uploadfiles = $("#pTab1ModalAttachInput").get(0);
                            var uploadedfiles = uploadfiles.files;
                            var fromdata = new FormData();
                            fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                            var choice = {};
                            choice.url = "pg/UploadFile.ashx?folder=auditexternal&filename=" + filenameF;
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
                            choice.url = "pg/UploadFile.ashx?folder=auditexternal&filename=" + filename2F;
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
                        smallBox('Хөндлөнгийн аудитын тайлан', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                        dataBindAllReportDDL();
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
    function dataBindAllReportDDL() {
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditexternalTab3ReportListForDDL",
            data: '{}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<option value=\"" + value.ID + "\">" + value.NO + " | " + value.NAME + "</option>";
                });
                $("#pTab3ModalSelectReport").html('<option value="">- Сонго -</option>' + valData);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/AuditexternalTab3ReportListRecForDDL",
                    data: '{}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<option value=\"" + value.AUDITEXTERNAL_REPORT_ID + "\">" + value.NO + " | " + replaceDatabaseToDisplay(value.NAME) + "</option>";
                        });
                        $('#pTab3SelectReport, #pTab5SelectReport, #pTab6SelectReport, #pTab9t3SelectReport').html('<option value="">Бүгд</option>' + valData);
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/AuditexternalTab3ReportListAktForDDL",
                            data: '{}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += "<option value=\"" + value.AUDITEXTERNAL_REPORT_ID + "\">" + value.NO + " | " + replaceDatabaseToDisplay(value.NAME) + "</option>";
                                });
                                $('#pTab7SelectReport, #pTab8SelectReport').html('<option value="">Бүгд</option>' + valData);
                                $('#pTab3SelectReport option:eq(1), #pTab5SelectReport option:eq(1), #pTab6SelectReport option:eq(1), #pTab7SelectReport option:eq(1), #pTab8SelectReport option:eq(1)').prop('selected', true);
                                $('#divBindTab3Table, #divBindTab5Table, #divBindTab6Table, #divBindTab7Table, #divBindTab8Table, #divBindTab9t3Table').html('');
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
    //tab2
    function dataBindTab2DataTable() {
        var valData = '';
        var valIsEdit = '1';
        showLoader('loaderTab2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditexternalTab2Datatable",
            data: '{}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (!funcCheckRoles('1,36')) {
                    valIsEdit = '0';
                }
                valData += "<table id=\"pTab2Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                valData += "<thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">№</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Нэр</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Засварлах</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td>" + value.NO + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
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
                valData += "<script>";
                valData += "var responsiveHelper_pTab2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab2Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab2Datatable) {responsiveHelper_pTab2Datatable = new ResponsiveDatatablesHelper($('#pTab2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab2Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null, { \"sWidth\": \"45px\" }]});";
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
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"SELECT NVL(MAX(NO),0)+1 FROM TBL_AUDITEXTERNAL_TYPE"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    $('#pTab2ModalInputNo').val(data.d);
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
            $('#pTab2ModalInputName').val('');
        }
        else if (isinsupt == 'засах') {
            $('#pTab2ModalID').text($(el).closest('tr').attr('data-id'));
            $('#pTab2ModalInputNo').val($(el).closest('tr').find('td:eq(0)').html());
            $('#pTab2ModalInputName').val($(el).closest('tr').find('td:eq(1)').html());
        }
    }
    function showDeleteTab2(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_AUDITEXTERNAL_RECOMMEND WHERE AUDITEXTERNAL_TYPE_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') {
                    alert('Сонгосон хөндлөнгийн аудитын тайланд хамааралтай зөвлөмж орсон тул устгах боломжгүй байна!');
                }
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон Хамаарах эзэн устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"DELETE FROM TBL_AUDITEXTERNAL_TYPE WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab2DataTable();
                                    smallBox('Сонгосон Хамаарах эзэн', 'Амжилттай устлаа...', '#659265', 3000);
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
            if ($('#pTab2ModalHeaderLabel').text() == 'нэмэх') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"INSERT INTO TBL_AUDITEXTERNAL_TYPE (ID, NO, NAME, CREATED_STAFFID, CREATED_DATE) VALUES (TBLLASTID(\'TBL_AUDITEXTERNAL_TYPE\'), ' + $.trim($('#pTab2ModalInputNo').val()) + ', \'' + replaceDisplayToDatabase($.trim($('#pTab2ModalInputName').val())) + '\', ' + $('#indexUserId').text() + ', sysdate)"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab2DataTable();
                        $('#pTab2Modal').modal('hide');
                        smallBox('Хамаарах эзэн', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                    data: '{"qry":"UPDATE TBL_AUDITEXTERNAL_TYPE SET NO=' + $.trim($('#pTab2ModalInputNo').val()) + ', NAME=\'' + replaceDisplayToDatabase($.trim($('#pTab2ModalInputName').val())) + '\', UPDATED_STAFFID=' + $('#indexUserId').text() + ', UPDATED_DATE=sysdate WHERE ID=' + $("#pTab2ModalID").text() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab2DataTable();
                        $('#pTab2Modal').modal('hide');
                        smallBox('Хамаарах эзэн', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
    });
    //tab3
    function dataBindTab3DataTable() {
        var valData = '';
        var valIsEdit = '1';
        showLoader('loaderTab3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditexternalTab3Datatable",
            data: '{"yr":"' + $('#pTab3SelectYear option:selected').val() + '", "reportid":"' + $('#pTab3SelectReport option:selected').val() + '", "gazar":"' + $('#pTab3SelectGazar option:selected').val() + '", "cat":"' + $('#pTab3SelectCat option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (!funcCheckRoles('1,36')) {
                    valIsEdit = '0';
                }
                valData += "<table id=\"pTab3Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                valData += "<thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Огноо</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хөндлөнгийн аудитын тайлан</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хамаарах эзэн</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Зөвлөмжийн дугаар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Зөвлөмжийн утга</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Файл</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах газар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">ХЭХ</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Засварлах</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Идэвхтэй<br>эсэх</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">" + value.DT + "</td>";
                    valData += "<td data-id=\"" + value.AUDITEXTERNAL_REPORT_ID + "\"><b>Тайлангийн дугаар: </b>" + replaceDatabaseToDisplay(value.AUDITEXTERNAL_REPORT_NO) + "<br><b>Тайлангийн нэр: </b>" + replaceDatabaseToDisplay(value.AUDITEXTERNAL_REPORT_NAME) + "</td>";
                    valData += "<td data-id=\"" + value.AUDITEXTERNAL_TYPE_ID + "\">" + value.AUDITEXTERNAL_TYPE_NO + ". " + replaceDatabaseToDisplay(value.AUDITEXTERNAL_TYPE_NAME) + "</td>";
                    valData += "<td class=\"text-center\">" + replaceDatabaseToDisplay(value.NO) + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td>";
                    if (value.FILENAME != "") {
                        valData += "<div class=\"btn-group\">";
                        valData += "<a href=\"../files/auditexternal/" + value.FILENAME + "\" class=\"btn btn-default btn-xs\" download title=\"Хавсаргасан файл татах\"><i class=\"fa fa-download\"></i></a>";
                        valData += "<a href=\"../pg/auditexternalTabsAttachShowModal.aspx?filename=" + value.FILENAME + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTabsAttachShowModal\" data-toggle=\"modal\"><i class=\"fa fa-eye\"></i></a>";
                        valData += "</div>";
                    }
                    valData += "</td>";
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
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab3(this,'засах');\" data-target=\"#pTab3Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab3(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                        valData += "</div>";
                    }
                    valData += "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">";
                    if (valIsEdit == '1') {
                        valData += "<span class=\"onoffswitch\"><input id=\"onoffCheckbox" + value.ID + "\" name=\"onoffCheckbox" + value.ID + "\" type=\"checkbox\" " + value.ISCLOSED + " class=\"onoffswitch-checkbox\" onclick=\"saveIsClosedRec(this);\"><label class=\"onoffswitch-label\" for=\"onoffCheckbox" + value.ID + "\"><span class=\"onoffswitch-inner\" data-swchon-text=\"ON\" data-swchoff-text=\"OFF\"></span><span class=\"onoffswitch-switch\"></span></label></span>";
                    }
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody></table>";
                valData += "<script>";
                valData += "var responsiveHelper_pTab3Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab3Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab3Datatable) {responsiveHelper_pTab3Datatable = new ResponsiveDatatablesHelper($('#pTab3Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab3Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab3Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },{ \"sWidth\": \"75px\" },{ \"sWidth\": \"300px\" }, { \"sWidth\": \"100px\" },{ \"sWidth\": \"30px\" },null, { \"sWidth\": \"50px\" },null,{ \"sWidth\": \"75px\" }, { \"sWidth\": \"45px\" }, { \"sWidth\": \"15px\" }]});";
                valData += "<\/script>";
                $("#divBindTab3Table").html(valData);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/AuditexternalTab3TypeListForDDL",
                    data: '{}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.ID + '" title="' + value.NO + '">' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                        });
                        $("#pTab3ModalSelectType").html('<option value="">- Сонго -</option>' + valData);
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        window.location = '../#pg/error500.aspx';
                    }
                });
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
        $('#pTab3ModalHeaderLabel').text(isinsupt);
        if (isinsupt == 'нэмэх') {
            $('#pTab3ModalID').html('');
            $('#pTab3ModalSelectReport').val('');
            $('#pTab3ModalSelectType').val('');
            $('#pTab3ModalSelectCat').val('');
            $('#pTab3ModalInputNo').val('');
            $('#pTab3ModalInputName').val('');
            $('#pTab3ModalInputDt').val('');
            dataBindTab3ModalGazarListForSelect2('', $('#indexCurrentYear').html());
            $("#pTab3ModalDivSelect2Gazar2").html('');
            $('#pTab3ModalDivSelect2Gazar2Div').addClass('hide');
            $('#pTab3ModalSpanGazarYr').html($('#indexCurrentYear').html());
            $('#pTab3ModalSpanGazarYr2').html('');
            $('input[name="pTab3ModalRadioIsSuccessdate"]').prop('checked', false);
            $('#pTab3ModalRadioIsSuccessdate1').prop('checked', true);
            $('#pTab3ModalInputSuccessdate').val('');
            $('#pTab3ModalInputSuccessdateDiv').css('display','block');
            $('#pTab3ModalAttachBtn').html('Файл хавсаргаагүй байна...');
            $('#pTab3ModalAttachBtn').attr('href', 'javascript:void(0);');
            $('#pTab3ModalAttachInput').val('');
            $('input[name="pTab3ModalRadioIsActive"]').prop('checked', false);
        }
        else if (isinsupt == 'засах') {
            $('#pTab3ModalID').text($(el).closest('tr').attr('data-id'));
            $('#pTab3ModalSelectReport').val($(el).closest('tr').find('td:eq(2)').attr('data-id'));
            $('#pTab3ModalSelectType').val($(el).closest('tr').find('td:eq(3)').attr('data-id'));
            $('#pTab3ModalSelectCat').val($('#pTab3SelectCat option:selected').val());
            $('#pTab3ModalInputNo').val($(el).closest('tr').find('td:eq(4)').html());
            $('#pTab3ModalInputName').val($(el).closest('tr').find('td:eq(5)').html());
            $('#pTab3ModalInputDt').val($(el).closest('tr').find('td:eq(1)').html());
            var valGazarYr = $('#indexCurrentYear').html(), valGazarYr2 = $('#indexCurrentYear').html();
            if ($(el).closest('tr').find('td:eq(7)').attr('data-yr') != '') valGazarYr = $(el).closest('tr').find('td:eq(7)').attr('data-yr');
            if ($(el).closest('tr').find('td:eq(7)').attr('data-yr2') != '') valGazarYr2 = $(el).closest('tr').find('td:eq(7)').attr('data-yr2');
            dataBindTab3ModalGazarListForSelect2($(el).closest('tr').find('td:eq(7)').attr('data-id'), valGazarYr);
            dataBindTab3ModalGazarList2ForSelect2($(el).closest('tr').find('td:eq(7)').attr('data-id2'), valGazarYr2);
            $('#pTab3ModalDivSelect2Gazar2Div').removeClass('hide');
            $('#pTab3ModalSpanGazarYr').html(valGazarYr);
            $('#pTab3ModalSpanGazarYr2').html(valGazarYr2);
            $('input[name="pTab3ModalRadioIsSuccessdate"]').prop('checked', false);
            $('#pTab3ModalInputSuccessdate').val('');
            $('#pTab3ModalInputSuccessdateDiv').css('display', 'none');
            if ($(el).closest('tr').find('td:eq(8)').html() == 'Байнга') {
                $('#pTab3ModalRadioIsSuccessdate0').prop('checked', true);
            }
            else {
                $('#pTab3ModalInputSuccessdateDiv').css('display', 'block');
                $('#pTab3ModalRadioIsSuccessdate1').prop('checked', true);
                $('#pTab3ModalInputSuccessdate').val($(el).closest('tr').find('td:eq(8)').html());
            }
            if ($.trim($(el).closest('tr').find('td:eq(6)').html()) != '') {
                $('#pTab3ModalAttachBtn').html($(el).closest('tr').find('td:eq(6)').find('a').attr('href').split('/').pop());
                $('#pTab3ModalAttachBtn').attr('href', $(el).closest('tr').find('td:eq(6)').find('a').attr('href'));
            }
            $('input[name="pTab3ModalRadioIsActive"]').prop('checked', false);
            if ($(el).closest('tr').find('td:eq(10)').find('input').is(':checked')) {
                $('#pTab3ModalRadioIsActive1').prop('checked', true);
            }
            else $('#pTab3ModalRadioIsActive0').prop('checked', true);
        }
    }
    function showDeleteTab3(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_AUDITEXTERNAL_REC_IMPL WHERE AUDITEXTERNAL_RECOMMEND_ID=' + $(el).closest('tr').attr('data-id') + '"}',
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
                                url: "../ws/ServiceMain.svc/AuditexternalTab3Delete",
                                data: '{"P_ID":"' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab3DataTable();
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
    $("#pTab3SelectYear, #pTab3SelectReport, #pTab3SelectGazar, #pTab3SelectCat").change(function () {
        dataBindTab3DataTable();
    });
    function dataBindTab3ModalGazarListForSelect2(selectedList, yr) {
        var valData = '', valOptGroup = '';
        $("#pTab3ModalDivSelect2Gazar").html('<input class="form-control ui-autocomplete-loading" placeholder="" type="text" disabled="disabled">');
        if (yr != '') {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/AuditinternalTab2GazarListForSelect2",
                data: '{"selectedList":"' + selectedList + '", "yr":"' + yr + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    valOptGroup = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        if (value.BR_TYPE1 != valOptGroup) {
                            if (valOptGroup != '') valData += '</optgroup>';
                            valData += '<optgroup label="' + value.BR_TYPE1.replace("3", "СЯ-ны дотоод нэгжүүд").replace("5", "Бусад") + '">';
                        }
                        valData += '<option' + value.ISSELECTED + ' value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        valOptGroup = value.BR_TYPE1;
                    });
                    $("#pTab3ModalDivSelect2Gazar").html("<select id=\"pTab3ModalSelect2Gazar\" name=\"pTab3ModalSelect2Gazar\" multiple=\"multiple\" style=\"width:100%\" data-placeholder=\"Хариуцах газар сонго\">" + valData + "</select><script>$(\"#pTab3ModalSelect2Gazar\").select2();<\/script>");
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
    function dataBindTab3ModalGazarList2ForSelect2(selectedList, yr) {
        var valData = '', valOptGroup = '';
        $("#pTab3ModalDivSelect2Gazar2").html('<input class="form-control ui-autocomplete-loading" placeholder="" type="text" disabled="disabled">');
        if (yr != '') {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/AuditinternalTab2GazarListForSelect2",
                data: '{"selectedList":"' + selectedList + '", "yr":"' + yr + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    valOptGroup = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        if (value.BR_TYPE1 != valOptGroup) {
                            if (valOptGroup != '') valData += '</optgroup>';
                            valData += '<optgroup label="' + value.BR_TYPE1.replace("3", "СЯ-ны дотоод нэгжүүд").replace("5", "Бусад") + '">';
                        }
                        valData += '<option' + value.ISSELECTED + ' value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        valOptGroup = value.BR_TYPE1;
                    });
                    $("#pTab3ModalDivSelect2Gazar2").html("<select id=\"pTab3ModalSelect2Gazar2\" name=\"pTab3ModalSelect2Gazar2\" multiple=\"multiple\" style=\"width:100%\" data-placeholder=\"Хариуцах газар сонго\">" + valData + "</select><script>$(\"#pTab3ModalSelect2Gazar2\").select2();<\/script>");
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
    $('#pTab3ModalForm').bootstrapValidator({
        fields: {
            pTab3ModalSelectReport: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab3ModalSelectType: {
                group: '.col-md-6',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab3ModalSelectCat: {
                group: '.col-md-6',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab3ModalInputNo: {
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
            },
            pTab3ModalInputName: {
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
            pTab3ModalInputDt: {
                group: '.col-md-2',
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
            pTab3ModalRadioIsSuccessdate: {
                group: '.col-md-4',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab3ModalInputSuccessdate: {
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
            pTab3ModalRadioIsActive: {
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
            var filename = 'null';
            var filenameF = '';
            if ($('#pTab3ModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') filename = '\'' + $.trim($('#pTab3ModalAttachBtn').html()) + '\'';



            if ($('#pTab3ModalSelect2Gazar').val() == null) {
                alert('Хариуцах газар сонгоно уу');
                $('#pTab3ModalForm').find('.modal-footer').find('.btn-success').prop('disabled', false);
            }
            else {
                var valErr = '';
                //if ($('#pTab3ModalInputSuccessdateDiv:visible').length == 1) {
                //    if ($.trim($('#pTab3ModalInputSuccessdate').val()) == '') valErr = 'Хугацаа оруулна уу';
                //}
                if (valErr != '') {
                    alert(valErr);
                    $('#pTab3ModalForm').find('.modal-footer').find('.btn-success').prop('disabled', false);
                }
                else {
                    var brlist = "none", brlist2="none";
                    if ($('#pTab3ModalSelect2Gazar').val() != null) brlist = $('#pTab3ModalSelect2Gazar').val();
                    if ($('#pTab3ModalSelect2Gazar2').val() != null) brlist2 = $('#pTab3ModalSelect2Gazar2').val();
                    if ($("#pTab3ModalHeaderLabel").html() == "нэмэх") {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                            data: '{"qry":"SELECT TBLLASTID(\'TBL_AUDITEXTERNAL_RECOMMEND\') FROM DUAL"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                if ($('#pTab3ModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
                                    filename = '\'ЗөвлөмжТайлан-' + data.d + '.' + $('#pTab3ModalAttachInput').val().split('.').pop() + '\'';
                                    filenameF = 'ЗөвлөмжТайлан-' + data.d + '.' + $('#pTab3ModalAttachInput').val().split('.').pop() + '';
                                }
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/AuditexternalTab3Insert",
                                    data: '{"P_AUDITEXTERNAL_REPORT_ID":"' + $('#pTab3ModalSelectReport option:selected').val() + '", "P_AUDITEXTERNAL_TYPE_ID":"' + $('#pTab3ModalSelectType option:selected').val() + '", "P_NO":"' + replaceDisplayToDatabase($.trim($('#pTab3ModalInputNo').val())) + '", "P_NAME":"' + replaceDisplayToDatabase($.trim($('#pTab3ModalInputName').val())) + '", "P_DT":"' + $.trim($('#pTab3ModalInputDt').val()) + '", "P_BRANCHLIST":"' + brlist + '", "P_STAFFID":"' + $('#indexUserId').html() + '", "P_SUCCESSDATE":"' + $.trim($('#pTab3ModalInputSuccessdate').val()) + '", "P_FILENAME":"' + filenameF + '", "P_AUDITEXTERNAL_CAT_ID":"' + $('#pTab3ModalSelectCat option:selected').val() + '", "P_ISCLOSED":"' + $("input[name='pTab3ModalRadioIsActive']:checked").val() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function () {
                                        var valSelectedReportId = $('#pTab3SelectReport option:selected').val();
                                        globalAjaxVar = $.ajax({
                                            type: "POST",
                                            url: "../ws/ServiceMain.svc/AuditexternalTab3ReportListRecForDDL",
                                            data: '{}',
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function (data) {
                                                if ($('#pTab3ModalAttachInput').val() != '') {
                                                    var valMaxId = '';
                                                    globalAjaxVar = $.ajax({
                                                        type: "POST",
                                                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                        data: '{"qry":"SELECT NVL(MAX(ID),1) FROM TBL_AUDITEXTERNAL_AKT"}',
                                                        contentType: "application/json; charset=utf-8",
                                                        dataType: "json",
                                                        success: function (data) {
                                                            valMaxId = data.d;
                                                            var uploadfiles = $("#pTab3ModalAttachInput").get(0);
                                                            var uploadedfiles = uploadfiles.files;
                                                            var fromdata = new FormData();
                                                            fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                                                            var choice = {};
                                                            choice.url = "pg/UploadFile.ashx?folder=auditexternal&filename=" + filenameF;
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

                                                valData = '';
                                                $($.parseJSON(data.d)).each(function (index, value) {
                                                    valData += "<option value=\"" + value.AUDITEXTERNAL_REPORT_ID + "\">" + value.NO + " | " + replaceDatabaseToDisplay(value.NAME) + "</option>";
                                                });
                                                $('#pTab3SelectReport, #pTab5SelectReport, #pTab6SelectReport, #pTab9t3SelectReport').html('<option value="">Бүгд</option>' + valData);
                                                $('#pTab5SelectReport option:eq(1), #pTab6SelectReport option:eq(1)').prop('selected', true);
                                                $('#divBindTab5Table, #divBindTab6Table, #divBindTab9t3Table').html('');
                                                $('#pTab3SelectReport').val(valSelectedReportId);
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
                        if ($('#pTab3ModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
                            filename = '\'ЗөвлөмжТайлан-' + $("#pTab3ModalID").text() + '.' + $('#pTab3ModalAttachBtn').html().split('.').pop() + '\'';
                            filenameF = 'ЗөвлөмжТайлан-' + $("#pTab3ModalID").text() + '.' + $('#pTab3ModalAttachInput').val().split('.').pop() + '';
                        }
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/AuditexternalTab3Update",
                            data: '{"P_ID":"' + $('#pTab3ModalID').html() + '", "P_AUDITEXTERNAL_REPORT_ID":"' + $('#pTab3ModalSelectReport option:selected').val() + '", "P_AUDITEXTERNAL_TYPE_ID":"' + $('#pTab3ModalSelectType option:selected').val() + '", "P_NO":"' + replaceDisplayToDatabase($.trim($('#pTab3ModalInputNo').val())) + '", "P_NAME":"' + replaceDisplayToDatabase($.trim($('#pTab3ModalInputName').val())) + '", "P_DT":"' + $.trim($('#pTab3ModalInputDt').val()) + '", "P_BRANCHLIST":"' + brlist + '", "P_BRANCHLIST2":"' + brlist2 + '", "P_BRANCHLIST2YR":"' + $('#pTab3ModalSpanGazarYr2').html() + '", "P_STAFFID":"' + $('#indexUserId').html() + '", "P_SUCCESSDATE":"' + $.trim($('#pTab3ModalInputSuccessdate').val()) + '", "P_FILENAME":"' + filenameF + '", "P_AUDITEXTERNAL_CAT_ID":"' + $('#pTab3ModalSelectCat option:selected').val() + '", "P_ISCLOSED":"' + $("input[name='pTab3ModalRadioIsActive']:checked").val() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function () {
                                if ($('#pTab3ModalAttachInput').val() != '') {
                                    var uploadfiles = $("#pTab3ModalAttachInput").get(0);
                                    var uploadedfiles = uploadfiles.files;
                                    var fromdata = new FormData();
                                    fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                                    var choice = {};
                                    choice.url = "pg/UploadFile.ashx?folder=auditexternal&filename=" + filenameF;
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
                    }
                }
            }
        }
    });
    function saveIsClosedRec(el) {
        var valIsSubmit = '0';
        if (!$(el).prop('checked')) {
            valIsSubmit = '1';
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
            data: '{"qry":"UPDATE TBL_AUDITEXTERNAL_RECOMMEND SET ISCLOSED=' + valIsSubmit + ' WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
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
    $('input[name="pTab3ModalRadioIsSuccessdate"]').change(function () {
        if ($('input[name="pTab3ModalRadioIsSuccessdate"]:checked').val() == '1') {
            $('#pTab3ModalInputSuccessdateDiv').css('display', 'block');
        }
        else {
            $('#pTab3ModalInputSuccessdateDiv').css('display', 'none');
            $('#pTab3ModalInputSuccessdate').val('');
        }
    });
    $("#pTab3ModalAttachInput").change(function () {
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
            $('#pTab3ModalAttachBtn').html($(this).val().split('\\').pop());
        }
        else alert(errMsg);
    });
    $("#pTab3ModalAttachDelete").click(function () {
        if ($('#pTab3ModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
            $.SmartMessageBox({
                title: "Анхааруулга!",
                content: "Та устгахдаа итгэлтэй байна уу?",
                buttons: '[Үгүй][Тийм]'
            }, function (ButtonPressed) {
                if (ButtonPressed === "Тийм") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/DeleteFile",
                        data: '{"filename":"~/files/auditexternal/' + $('#pTab3ModalAttachBtn').html() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            $('#pTab3ModalAttachBtn').html('Файл хавсаргаагүй байна...');
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

    

    $('#pTab3ModalInputDt, #pTab3ModalInputSuccessdate').datepicker({
        changeMonth: true,
        changeYear: true,
        dateFormat: 'yy-mm-dd',
        prevText: '<i class="fa fa-chevron-left"></i>',
        nextText: '<i class="fa fa-chevron-right"></i>',
        monthNames: ["1-р сар", "2-р сар", "3-р сар", "4-р сар", "5-р сар", "6-р сар", "7-р сар", "8-р сар", "9-р сар", "10-р сар", "11-р сар", "12-р сар"],
        monthNamesShort: ["1-р сар", "2-р сар", "3-р сар", "4-р сар", "5-р сар", "6-р сар", "7-р сар", "8-р сар", "9-р сар", "10-р сар", "11-р сар", "12-р сар"],
        dayNamesMin: ['Ня', 'Да', 'Мя', 'Лх', 'Пү', 'Ба', 'Бя']
    });
    //tab1t5
    function dataBindTab1t5DataTable() {
        var valData = '';
        var valIsEdit = '1';
        showLoader('loaderTab1t5');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditexternalTab1t5Datatable",
            data: '{"yr":"' + $('#pTab1t5SelectYear option:selected').val() + '", "reportid":"' + $('#pTab1t5SelectReport option:selected').val() + '", "gazar":"' + $('#pTab1t5SelectGazar option:selected').val() + '", "cat":"' + $('#pTab1t5SelectCat option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (!funcCheckRoles('1,36')) {
                    valIsEdit = '0';
                }
                valData += "<table id=\"pTab1t5Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                valData += "<thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хөндлөнгийн аудитын тайлан</th>";
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
                    valData += "<td data-id=\"" + value.AUDITEXTERNAL_REPORT_ID + "\"><b>Тайлангийн дугаар: </b>" + value.AUDITEXTERNAL_REPORT_NO + "<br><b>Тайлангийн нэр: </b>" + replaceDatabaseToDisplay(value.AUDITEXTERNAL_REPORT_NAME) + "</td>";
                    valData += "<td data-id=\"" + value.AUDITEXTERNAL_RECOMMEND_ID + "\"><b>Зөвлөмжийн дугаар: </b>" + value.AUDITEXTERNAL_REC_NO + "<br><b>Зөвлөмжийн нэр: </b>" + replaceDatabaseToDisplay(value.AUDITEXTERNAL_REC_NAME) + "<br><b>Хугацаа: </b>" + value.AUDITEXTERNAL_REC_SUCCESSDATE + "</td>";
                    valData += "<td>" + value.NO + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\" data-id=\"" + value.BRLISTID.replace("none", "") + "\">" + value.BRLISTNAME.replace("none", "") + "</td>";
                    valData += "<td class=\"text-center\">";
                    if (valIsEdit == '1') {
                        valData += "<div class=\"btn-group\">";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab1t5(this,'засах');\" data-target=\"#pTab1t5Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab1t5(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                        valData += "</div>";
                    }
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody></table>";
                valData += "<script>";
                valData += "var responsiveHelper_pTab1t5Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab1t5Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab1t5Datatable) {responsiveHelper_pTab1t5Datatable = new ResponsiveDatatablesHelper($('#pTab1t5Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab1t5Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab1t5Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },{ \"sWidth\": \"300px\" },null, { \"sWidth\": \"30px\" }, null, { \"sWidth\": \"45px\" }, { \"sWidth\": \"45px\" }]});";
                valData += "<\/script>";
                $("#divBindTab1t5Table").html(valData);
                hideLoader('loaderTab1t5');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function showAddEditTab1t5(el, isinsupt) {
        $('#pTab1t5ModalHeaderLabel').text(isinsupt);
        if (isinsupt == 'нэмэх') {
            $('#pTab1t5ModalID').html('');
            $('#pTab1t5ModalSelectReport, #pTab1t5ModalSelectCat, #pTab1t5ModalInputNo, #pTab1t5ModalInputName').val('');
            $('#pTab1t5ModalSelectRec').html('<option value="">- Сонго -</option>');
            $('#pTab1t5ModalSelectRec').prop('disabled', true);
            dataBindTab1t5ModalGazarListForSelect2('', '');
        }
        else if (isinsupt == 'засах') {
            $('#pTab1t5ModalID').text($(el).closest('tr').attr('data-id'));
            $('#pTab1t5ModalSelectReport').val($(el).closest('tr').find('td:eq(1)').attr('data-id'));
            $('#pTab1t5ModalSelectCat').val($('#pTab1t5SelectCat option:selected').val());
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/AuditexternalTab1t5RecommendListForDDL",
                data: '{"reportid": "' + $('#pTab1t5ModalSelectReport option:selected').val() + '", "cat":"' + $('#pTab1t5ModalSelectCat option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    valData += '<option value="">-  Сонго -</option>';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.ID + '">' + replaceDatabaseToDisplay(value.NO) + '. ' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                    });
                    $('#pTab1t5ModalSelectRec').html(valData);
                    $('#pTab1t5ModalSelectRec').prop('disabled', false);
                    $('#pTab1t5ModalSelectRec').val($(el).closest('tr').find('td:eq(2)').attr('data-id'));
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
            $('#pTab1t5ModalInputNo').val($(el).closest('tr').find('td:eq(3)').html());
            $('#pTab1t5ModalInputName').val($(el).closest('tr').find('td:eq(4)').html());
            dataBindTab1t5ModalGazarListForSelect2($(el).closest('tr').find('td:eq(5)').attr('data-id'), $(el).closest('tr').find('td:eq(2)').attr('data-id'));
        }
    }
    function dataBindTab1t5ModalGazarListForSelect2(selectedList, recid) {
        var valData = '', valOptGroup = '';
        $("#pTab1t5ModalDivSelect2Gazar").html('<input class="form-control ui-autocomplete-loading" placeholder="" type="text" disabled="disabled">');
        if (recid != '') {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/AuditexternalTab1t5GazarListForSelect2",
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
                    $("#pTab1t5ModalDivSelect2Gazar").html("<select id=\"pTab1t5ModalSelect2Gazar\" name=\"pTab1t5ModalSelect2Gazar\" multiple=\"multiple\" style=\"width:100%\" data-placeholder=\"Хариуцах газар сонго\">" + valData + "</select><script>$(\"#pTab1t5ModalSelect2Gazar\").select2();<\/script>");
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
        }
        else $("#pTab1t5ModalDivSelect2Gazar").html("<select id=\"pTab1t5ModalSelect2Gazar\" name=\"pTab1t5ModalSelect2Gazar\" multiple=\"multiple\" style=\"width:100%\" data-placeholder=\"Хариуцах газар сонго\" disabled></select><script>$(\"#pTab1t5ModalSelect2Gazar\").select2();<\/script>");
    }
    $("#pTab1t5ModalSelectReport").change(function () {
        $('#pTab1t5ModalSelectRec').prop('disabled', true);
        if ($("#pTab1t5ModalSelectReport option:selected").val() == '') {
            $('#pTab1t5ModalSelectRec').html('<option value="">- Сонго -</option>');
            $('#pTab1t5ModalSelectRec').prop('disabled', true);
            dataBindTab1t5ModalGazarListForSelect2('', '');
        }
        else {
            if ($('#pTab1t5ModalSelectCat option:selected').val() == '') {
                $('#pTab1t5ModalSelectRec').html('<option value="">- Сонго -</option>');
                $('#pTab1t5ModalSelectRec').prop('disabled', true);
                dataBindTab1t5ModalGazarListForSelect2('', '');
            }
            else {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/AuditexternalTab1t5RecommendListForDDL",
                    data: '{"reportid": "' + $('#pTab1t5ModalSelectReport option:selected').val() + '", "cat":"' + $('#pTab1t5ModalSelectCat option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valData += '<option value="">-  Сонго -</option>';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.ID + '">' + replaceDatabaseToDisplay(value.NO) + '. ' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                        });
                        $('#pTab1t5ModalSelectRec').html(valData);
                        $('#pTab1t5ModalSelectRec').prop('disabled', false);
                        dataBindTab1t5ModalGazarListForSelect2('', '');
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
    $("#pTab1t5ModalSelectCat").change(function () {
        $('#pTab1t5ModalSelectRec').prop('disabled', true);
        if ($("#pTab1t5ModalSelectCat option:selected").val() == '') {
            $('#pTab1t5ModalSelectRec').html('<option value="">- Сонго -</option>');
            $('#pTab1t5ModalSelectRec').prop('disabled', true);
            dataBindTab1t5ModalGazarListForSelect2('', '');
        }
        else {
            if ($('#pTab1t5ModalSelectReport option:selected').val() == '') {
                $('#pTab1t5ModalSelectRec').html('<option value="">- Сонго -</option>');
                $('#pTab1t5ModalSelectRec').prop('disabled', true);
                dataBindTab1t5ModalGazarListForSelect2('', '');
            }
            else {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/AuditexternalTab1t5RecommendListForDDL",
                    data: '{"reportid": "' + $('#pTab1t5ModalSelectReport option:selected').val() + '", "cat":"' + $('#pTab1t5ModalSelectCat option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valData += '<option value="">-  Сонго -</option>';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.ID + '">' + replaceDatabaseToDisplay(value.NO) + '. ' + replaceDatabaseToDisplay(value.NAME) + '</option>';
                        });
                        $('#pTab1t5ModalSelectRec').html(valData);
                        $('#pTab1t5ModalSelectRec').prop('disabled', false);
                        dataBindTab1t5ModalGazarListForSelect2('', '');
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
    $("#pTab1t5ModalSelectRec").change(function () {
        dataBindTab1t5ModalGazarListForSelect2('', $("#pTab1t5ModalSelectRec option:selected").val());
    });
    $("#pTab1t5SelectYear, #pTab1t5SelectReport, #pTab1t5SelectGazar, #pTab1t5SelectCat").change(function () {
        dataBindTab1t5DataTable();
    });
    function showDeleteTab1t5(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_AUDITEXTERNAL_PLAN_IMPL WHERE AUDITEXTERNAL_PLAN_ID=' + $(el).closest('tr').attr('data-id') + '"}',
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
                                url: "../ws/ServiceMain.svc/AuditexternalTab1t5Delete",
                                data: '{"P_ID":"' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab1t5DataTable();
                                    smallBox('Сонгосон төлөвлөгөө', 'Амжилттай устлаа...', '#659265', 3000);
                                    $('#divBindTab5Table, #divBindTab6Table, #divBindTab9t1Table, #divBindTab9t2Table, #divBindTab9t3Table, #divBindTab9t5Table').html('');
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
    $('#pTab1t5ModalForm').bootstrapValidator({
        fields: {
            pTab1t5ModalSelectReport: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab1t5ModalSelectCat: {
                group: '.col-md-2',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab1t5ModalSelectRec: {
                group: '.col-md-10',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab1t5ModalInputNo: {
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
            pTab1t5ModalInputName: {
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
            if ($('#pTab1t5ModalSelect2Gazar').val() == null) {
                alert('Хариуцах газар сонгоно уу');
                $('#pTab1t5ModalForm').find('.modal-footer').find('.btn-success').prop('disabled', false);
            }
            else {
                var brlist = "none";
                if ($('#pTab1t5ModalSelect2Gazar').val() != null) brlist = $('#pTab1t5ModalSelect2Gazar').val();
                if ($("#pTab1t5ModalHeaderLabel").html() == "нэмэх") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/AuditexternalTab1t5Insert",
                        data: '{"P_AUDITEXTERNAL_RECOMMEND_ID":"' + $('#pTab1t5ModalSelectRec option:selected').val() + '", "P_NO":"' + replaceDisplayToDatabase($.trim($('#pTab1t5ModalInputNo').val())) + '", "P_NAME":"' + replaceDisplayToDatabase($.trim($('#pTab1t5ModalInputName').val())) + '", "P_BRANCHLIST":"' + brlist + '", "P_STAFFID":"' + $('#indexUserId').html() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            dataBindTab1t5DataTable();
                            $('#pTab1t5Modal').modal('hide');
                            smallBox('Төлөвлөгөө', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                else {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/AuditexternalTab1t5Update",
                        data: '{"P_ID":"' + $('#pTab1t5ModalID').html() + '", "P_AUDITEXTERNAL_RECOMMEND_ID":"' + $('#pTab1t5ModalSelectRec option:selected').val() + '", "P_NO":"' + replaceDisplayToDatabase($.trim($('#pTab1t5ModalInputNo').val())) + '", "P_NAME":"' + replaceDisplayToDatabase($.trim($('#pTab1t5ModalInputName').val())) + '", "P_BRANCHLIST":"' + brlist + '", "P_STAFFID":"' + $('#indexUserId').html() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            dataBindTab1t5DataTable();
                            $('#pTab1t5Modal').modal('hide');
                            smallBox('Төлөвлөгөө', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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

    //tab5
    function dataBindTab5DataTable() {
        var valData = '';
        var implDisabled = "disabled", evalDisabled = " disabled";
        showLoader('loaderTab5');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditexternalTab5Datatable",
            data: '{"yr":"' + $('#pTab5SelectYear option:selected').val() + '", "qrtr":"' + $('#pTab5SelectQuarter option:selected').val() + '", "reportid":"' + $('#pTab5SelectReport option:selected').val() + '", "gazar":"' + $('#pTab5SelectGazar option:selected').val() + '", "cat":"' + $('#pTab5SelectCat option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (funcCheckRoles('1,4')) {
                    implDisabled = "";
                }
                if (funcCheckRoles('1,20')) {
                    implDisabled = ""; evalDisabled = "";
                }
                valData += "<table id=\"pTab5Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                valData += "<thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хөндлөнгийн аудитын тайлан</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Зөвлөмж</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Төл/ дугаар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Төлөвлөгөөний утга</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах газар</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Биелэлт оруулах</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хавсралт файл</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td><b>Тайлангийн дугаар: </b>" + value.AUDITEXTERNAL_REPORT_NO + "<br><b>Тайлангийн нэр: </b>" + replaceDatabaseToDisplay(value.AUDITEXTERNAL_REPORT_NAME) + "</td>";
                    valData += "<td><b>Зөвлөмжийн дугаар: </b>" + value.AUDITEXTERNAL_REC_NO + "<br><b>Зөвлөмжийн нэр: </b>" + replaceDatabaseToDisplay(value.AUDITEXTERNAL_REC_NAME) + "<br><b>Хугацаа: </b>" + value.AUDITEXTERNAL_REC_SUCCESSDATE + "</td>";
                    valData += "<td>" + value.NO + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">" + value.BRLISTNAME.replace("none", "") + "</td>";
                    valData += "<td style=\"text-align:center; vertical-align:middle;\">";
                    if (implDisabled != "disabled") valData += "<a href=\"../pg/auditexternalTab5ImplModal.aspx?id=" + value.ID + "&yr=" + $('#pTab5SelectYear option:selected').val() + "&qrtr=" + $('#pTab5SelectQuarter option:selected').val() + "\" data-target=\"#pTab5ImplModal\" data-toggle=\"modal\" style=\"cursor:pointer\"><i class=\"glyphicon " + value.ISIMPL + " font-xl\"></i></a>";
                    valData += "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">";
                    if (value.FILENAME_IMPL != "") valData += "<a href=\"../files/auditexternal/" + value.FILENAME_IMPL + "\" class=\"btn btn-link btn-xs\" style=\"padding:0px; border:none;\" download title=\"Хавсаргасан файл татах\"><i class=\"fa fa-paperclip fa-lg\"></i></a></td>";
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "<script>";
                valData += "var responsiveHelper_pTab5Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab5Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab5Datatable) {responsiveHelper_pTab5Datatable = new ResponsiveDatatablesHelper($('#pTab5Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab5Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab5Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },{ \"sWidth\": \"300px\" },null, { \"sWidth\": \"30px\" }, null, { \"sWidth\": \"45px\" }, { \"sWidth\": \"52px\" }, { \"sWidth\": \"15px\" }]});";
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
    $("#pTab5SelectYear, #pTab5SelectQuarter, #pTab5SelectReport, #pTab5SelectGazar, #pTab5SelectCat").change(function () {
        dataBindTab5DataTable();
    });

    //tab6
    function dataBindTab6DataTable() {
        var valData = '';
        var implDisabled = "disabled", evalDisabled = " disabled";
        showLoader('loaderTab6');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditexternalTab6Datatable",
            data: '{"yr":"' + $('#pTab6SelectYear option:selected').val() + '", "qrtr":"' + $('#pTab6SelectQuarter option:selected').val() + '", "reportid":"' + $('#pTab6SelectReport option:selected').val() + '", "gazar":"' + $('#pTab6SelectGazar option:selected').val() + '", "cat":"' + $('#pTab6SelectCat option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (funcCheckRoles('1,4')) {
                    implDisabled = "";
                }
                if (funcCheckRoles('1,20')) {
                    implDisabled = ""; evalDisabled = "";
                }
                valData += "<table id=\"pTab6Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                valData += "<thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хөндлөнгийн аудитын тайлан</th>";
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
                    valData += "<td><b>Тайлангийн дугаар: </b>" + value.AUDITEXTERNAL_REPORT_NO + "<br><b>Тайлангийн нэр: </b>" + replaceDatabaseToDisplay(value.AUDITEXTERNAL_REPORT_NAME) + "</td>";
                    valData += "<td><b>Зөвлөмжийн дугаар: </b>" + value.AUDITEXTERNAL_REC_NO + "<br><b>Зөвлөмжийн нэр: </b>" + replaceDatabaseToDisplay(value.AUDITEXTERNAL_REC_NAME) + "<br><b>Хугацаа: </b>" + value.AUDITEXTERNAL_REC_SUCCESSDATE + "</td>";
                    valData += "<td>" + value.NO + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">" + value.BRLISTNAME.replace("none", "") + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.IMPL) + "</td>";
                    valData += "<td style=\"text-align:center;\">" + value.PREVEVAL + "</td>";
                    if (value.EVAL == "") valData += "<td><select" + evalDisabled + " class=\"bg-color-blueLight form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEvalTab6(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                    else {
                        if (value.EVAL == "0") valData += "<td><select" + evalDisabled + " class=\"bg-color-red form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEvalTab6(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "10") valData += "<td><select" + evalDisabled + " class=\"bg-color-red form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEvalTab6(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "30") valData += "<td><select" + evalDisabled + " class=\"bg-color-red form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEvalTab6(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "50") valData += "<td><select" + evalDisabled + " class=\"bg-color-orange form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEvalTab6(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "70") valData += "<td><select" + evalDisabled + " class=\"bg-color-orange form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEvalTab6(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "80") valData += "<td><select" + evalDisabled + " class=\"bg-color-greenLight form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEvalTab6(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "90") valData += "<td><select" + evalDisabled + " class=\"bg-color-greenLight form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEvalTab6(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "100") valData += "<td><select" + evalDisabled + " class=\"bg-color-greenLight form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEvalTab6(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">100 %</option></select></td>";
                    }
                    valData += "</tr>";
                });
                valData += "<script>";
                valData += "var responsiveHelper_pTab6Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab6Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab6Datatable) {responsiveHelper_pTab6Datatable = new ResponsiveDatatablesHelper($('#pTab6Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab6Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab6Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },{ \"sWidth\": \"300px\" },null, { \"sWidth\": \"30px\" }, null, { \"sWidth\": \"45px\" }, { \"sWidth\": \"400px\" }, { \"sWidth\": \"50px\" }, { \"sWidth\": \"65px\" }]});";
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
    $("#pTab6SelectYear, #pTab6SelectQuarter, #pTab6SelectReport, #pTab6SelectGazar, #pTab6SelectCat").change(function () {
        dataBindTab6DataTable();
    });
    function saveEvalTab6(me) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_AUDITEXTERNAL_PLAN_IMPL WHERE AUDITEXTERNAL_PLAN_ID=' + $(me).closest('tr').attr('data-id') + ' AND YR=' + $('#pTab6SelectYear option:selected').val() + ' AND QRTR=' + $('#pTab6SelectQuarter option:selected').val() + ' AND IMPL IS NOT NULL"}',
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
                        data: '{"qry":"UPDATE TBL_AUDITEXTERNAL_PLAN_IMPL SET EVAL=' + $(me).val().replace('none', 'null') + ', EVAL_UPDATED_STAFFID=' + '<%= Session["LM_UserID"] %>' + ', EVAL_UPDATED_DATE=sysdate WHERE AUDITEXTERNAL_PLAN_ID=' + $(me).closest('tr').attr('data-id') + ' AND YR=' + $('#pTab6SelectYear option:selected').val() + ' AND QRTR=' + $('#pTab6SelectQuarter option:selected').val() + '"}',
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

    //Tab9t1
    function dataBindTab9t1DataTable() {
        var valData = "";
        var cnt = 0, cnt100 = 0, cnt90 = 0, cnt80 = 0, cnt70 = 0, cnt50 = 0, cnt30 = 0, cnt10 = 0, cnt0 = 0, cntnone = 0, cntgazarcnt = 0;
        var sumper = 0;
        showLoader('loaderTab9t1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditexternalTab9t1Datatable",
            data: '{"yr":"' + $('#pTab9t1SelectYear option:selected').val() + '", "qrtr":"' + $('#pTab9t1SelectQuarter option:selected').val() + '", "turul":"' + $('#pTab9t1SelectTurul option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = "";
                valData += "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\">";
                valData += "<thead style=\"background-color:C6D9F1;\">";
                valData += "<tr>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хөндлөнгийн аудитын тайлан</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Нийт</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Бүрэн<br>хэрэгжсэн</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Тухайн хугацаанд<br>хэрэгжүүлсэн</th>";
                valData += "<th colspan=\"9\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хэрэгжилтийн хувь</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Биелэлтийн хувь</th>";
                valData += "</tr>";
                if ($('#pTab9t1SelectTurul option:selected').val() == "1" || $('#pTab9t1SelectTurul option:selected').val() == "2") {
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
                else {
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
                    cnt += parseInt(value.AUDITEXTERNAL_RECOMMEND_CNT.replace("-", "0"));
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
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.TYPE_NAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.AUDITEXTERNAL_RECOMMEND_CNT + "</td>";
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

                $('#pTab9t1Year').html($('#pTab9t1SelectYear option:selected').val());
                $('#pTab9t1Quarter').html($('#pTab9t1SelectQuarter option:selected').val());
                $('#pTab9t1Turul').html($('#pTab9t1SelectTurul option:selected').text());
                $("#divBindTab9t1Table").html(valData);
                hideLoader('loaderTab9t1');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab9t1SelectYear, #pTab9t1SelectQuarter, #pTab9t1SelectTurul").change(function () {
        dataBindTab9t1DataTable();
    });
    //Tab9t2
    function dataBindTab9t2DataTable() {
        var valData = "";
        var cnt = 0, cnt100 = 0, cnt90 = 0, cnt80 = 0, cnt70 = 0, cnt50 = 0, cnt30 = 0, cnt10 = 0, cnt0 = 0, cntnone = 0, cntgazarcnt = 0;
        var sumper = 0;
        showLoader('loaderTab9t2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditexternalTab9t2Datatable",
            data: '{"yr":"' + $('#pTab9t2SelectYear option:selected').val() + '", "qrtr":"' + $('#pTab9t2SelectQuarter option:selected').val() + '", "turul":"' + $('#pTab9t2SelectTurul option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\">";
                valData += "<thead style=\"background-color:C6D9F1;\">";
                valData += "<tr>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Газар нэгж</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Нийт</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Бүрэн<br>хэрэгжсэн</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Тухайн хугацаанд<br>хэрэгжүүлсэн</th>";
                valData += "<th colspan=\"9\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хэрэгжилтийн хувь</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Биелэлтийн хувь</th>";
                valData += "</tr>";
                if ($('#pTab9t2SelectTurul option:selected').val() == "1" || $('#pTab9t2SelectTurul option:selected').val() == "2") {
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
                else {
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
                    cnt += parseInt(value.AUDITEXTERNAL_RECOMMEND_CNT.replace("-", "0"));
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
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.AUDITEXTERNAL_RECOMMEND_CNT + "</td>";
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
                $('#pTab9t2Year').html($('#pTab9t2SelectYear option:selected').val());
                $('#pTab9t2Quarter').html($('#pTab9t2SelectQuarter option:selected').val());
                $('#pTab9t2Turul').html($('#pTab9t2SelectTurul option:selected').text());
                $("#divBindTab9t2Table").html(valData);
                hideLoader('loaderTab9t2');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab9t2SelectYear, #pTab9t2SelectQuarter, #pTab9t2SelectTurul").change(function () {
        dataBindTab9t2DataTable();
    });
    //Tab9t3
    function dataBindTab9t3DataTable() {
        var valData = '';
        showLoader('loaderTab9t3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditexternalTab9t3Datatable",
            data: '{"yr":"' + $('#pTab9t3SelectYear option:selected').val() + '", "qrtr":"' + $('#pTab9t3SelectQuarter option:selected').val() + '", "reportid":"' + $('#pTab9t3SelectReport option:selected').val() + '", "gazar":"' + $('#pTab9t3SelectGazar option:selected').val() + '", "isimpl":"' + $('#pTab9t3SelectIsImpl option:selected').val() + '", "turul":"' + $('#pTab9t3SelectTurul option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\">";
                valData += "<thead style=\"background-color:C6D9F1;\">";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:40px;\">#</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:230px;\">Хөндлөнгийн аудитын тайлан</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:120px;\">Хамаарах эзэн</th>";
                if ($('#pTab9t3SelectTurul option:selected').val() == '1') valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Зөвлөмж</th>";
                else if ($('#pTab9t3SelectTurul option:selected').val() == '2') valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Акт/албан шаардлага</th>";
                else valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\"></th>";
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
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\"><b>Тайлангийн дугаар: </b>" + replaceDatabaseToDisplay(value.AUDITEXTERNAL_REPORT_NO) + "<br><b>Тайлангийн нэр: </b>" + replaceDatabaseToDisplay(value.AUDITEXTERNAL_REPORT_NAME) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + replaceDatabaseToDisplay(value.AUDITEXTERNAL_TYPE_NO) + ". " + replaceDatabaseToDisplay(value.AUDITEXTERNAL_TYPE_NAME) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\"><b>Зөвлөмжийн дугаар: </b>" + replaceDatabaseToDisplay(value.AUDITEXTERNAL_RECOMMEND_NO) + "<br><b>Зөвлөмжийн нэр: </b>" + replaceDatabaseToDisplay(value.AUDITEXTERNAL_RECOMMEND_NAME) + "</td>";
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
                $('#pTab9t3Year').html($('#pTab9t3SelectYear option:selected').val());
                $('#pTab9t3Quarter').html($('#pTab9t3SelectQuarter option:selected').val());
                $("#divBindTab9t3Table").html(valData);
                hideLoader('loaderTab9t3');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab9t3SelectYear").change(function () {
        dataBindTab9t3DataTable();
    });
    $("#pTab9t3SelectQuarter, #pTab9t3SelectGazar, #pTab9t3SelectReport, #pTab9t3SelectIsImpl, #pTab9t3SelectTurul").change(function () {
        dataBindTab9t3DataTable();
    });
    //Tab9t5
    function dataBindTab9t5DataTable() {
        var valData = '';
        var strReportId = "";
        var intReportCntr = 1;
        var strTypeId = "";
        showLoader('loaderTab9t5');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AuditexternalTab9t5Datatable",
            data: '{"yr":"' + $('#pTab9t5SelectYear option:selected').val() + '", "qrtr":"' + $('#pTab9t5SelectQuarter option:selected').val() + '", "reportid":"' + $('#pTab9t5SelectReport option:selected').val() + '", "gazar":"' + $('#pTab9t5SelectGazar option:selected').val() + '", "isimpl":"' + $('#pTab9t5SelectIsImpl option:selected').val() + '", "turul":"' + $('#pTab9t5SelectTurul option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (strReportId != value.AUDITEXTERNAL_REPORT_ID) {
                        if (strReportId != "") {
                            valData += "</tbody></table>";
                        }
                        valData += "<br><br><p style=\"text-align:center; font-size:10pt;\"><strong>" + intReportCntr + ". " + replaceDatabaseToDisplay(value.AUDITEXTERNAL_REPORT_NAME) + "<br>(" + replaceDatabaseToDisplay(value.AUDITEXTERNAL_REPORT_NO) + ")</strong></p>";
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
                    if (strTypeId != value.AUDITEXTERNAL_TYPE_ID) {
                        valData += "<tr><td colspan=\"4\" style=\"border: 1px solid #000; padding:5px; text-align:center;\"><i>" + replaceDatabaseToDisplay(value.AUDITEXTERNAL_TYPE_NAME) + "<i></td></tr>";
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
                    strTypeId = value.AUDITEXTERNAL_TYPE_ID;
                    strReportId = value.AUDITEXTERNAL_REPORT_ID;
                });
                valData += "</tbody>";
                valData += "</table>";
                $('#pTab9t5Year').html($('#pTab9t5SelectYear option:selected').val());
                $('#pTab9t5Quarter').html($('#pTab9t5SelectQuarter option:selected').val());
                $("#divBindTab9t5Table").html(valData);
                hideLoader('loaderTab9t5');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab9t5SelectYear").change(function () {
        dataBindTab9t5DataTable();
    });
    $("#pTab9t5SelectQuarter, #pTab9t5SelectGazar, #pTab9t5SelectReport, #pTab9t5SelectIsImpl, #pTab9t5SelectTurul").change(function () {
        dataBindTab9t5DataTable();
    });
</script>
