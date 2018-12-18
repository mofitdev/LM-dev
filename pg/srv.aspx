<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="srv.aspx.cs" Inherits="LMWebApp.pg.srv" %>

<style>
    .nameWrapper {
      list-style:none;
      display:inline-block;
      margin: 5px 20px 20px 20px;
    }
     .nameWrapper>label {
      border-bottom:dashed 1px #c7c7c7;
    }
      .nameWrapper li {
      list-style:none;
    }
   .nameWrapper ul {
             margin:0 0 0 10px;
             padding:0;
    }
    .poll_item li{
        margin:0 0 0 0;
        text-align:center;
    }
    .poll_an_wrapper {
        margin:20px 20px 0 20px;
    }
    .question_item ul{
         display:inline-block !important;
         list-style:none;
    }
</style>
<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
    <h1 class="page-title txt-color-blueDark">
    <i class="fa-fw fa fa-home"></i> > Удирдлага, хамт олны үнэлгээ
    </h1>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
            <ul class="nav nav-tabs bordered">
                <li id="srvBossToHeadTitle" runat="server" class="active" onclick="pDatabindTabs(this)">
                    <a data-toggle="tab" href="#srvTab1">
                        <%--Яамны удирдлага газрын дарга нарыг үнэлэх--%>Газрын дарга нарыг үнэлэх
                    </a>
                </li>
                <li id="srvHeadToSubHeadTitle" runat="server" onclick="pDatabindTabs(this)">
                    <a data-toggle="tab" href="#srvTab2">
                        <%--Газрын дарга хэлтсийн дарга нарыг үнэлэх--%>Хэлтсийн дарга нарыг үнэлэх
                    </a>
                </li>
                <li id="srvStaffToStaffTitle" runat="server" onclick="pDatabindTabs(this)">
                    <a data-toggle="tab" href="#srvTab3">
                        Хамт олны үнэлгээ
                    </a>
                </li>
                <li id="srvStaffToHeadTitle" runat="server" onclick="pDatabindTabs(this)">
                    <a data-toggle="tab" href="#srvTab4">
                        Мэргэжилтэн газар хэлтсийн дарга нарыг үнэлэх
                    </a>
                </li>
                <li id="pTab5Li" runat="server" onclick="pDatabindTabs(this)" class="pull-right">
                    <a data-toggle="tab" href="#srvTab5">
                        <i class="fa fa-fw fa-lg fa-wrench"></i> Тохиргоо
                    </a>
                </li>
            </ul>
            <div id="srvTabContent" class="tab-content">
                <div id="srvTab1" runat="server" class="tab-pane active">
                    <ul class="nav nav-tabs bordered">
                        <li id="pTab1t1Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#srvTab1t1">Тохиргоо</a>
                        </li>
                        <li id="pTab1t2Li" runat="server" onclick="pDatabindTabs(this)" class="active">
                            <a data-toggle="tab" href="#srvTab1t2">Үнэлгээ</a>
                        </li>
                        <li id="pTab1t3Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#srvTab1t3">Тайлан</a>
                        </li>
                    </ul>
                    <div id="srvTab1Content" runat="server" class="tab-content">
                        <div id="srvTab1t1" runat="server" class="tab-pane">
                            <div style="width:50%; float:left; margin-right:10px;">
                                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                    <header>
                                        <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                        <h2>Удирдлагаас газрын дарга нарыг үнэлэх асуултууд</h2>
                                        <div class="widget-toolbar">
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                <button class="btn btn-primary btn-xs" type="submit" data-target="#srvQuestionModal" data-toggle="modal" onclick="showAddEditQuestionModal(this,1,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                            </div> 
                                        </div>
                                    </header>
                                    <div>
                                        <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                        <div class="Colvis TableTools" style="width:100px; top:6px; z-index:5; right:125px;">
                                            <select id="srvTab1t1QuestionIsActive" name="srvTab1t1AnswerIsActive" class="form-control" style="padding:1px;">
                                                <option value="">Бүгд</option>
                                                <option value="1">Идэвхтэй</option>
                                                <option value="0">Идэвхгүй</option>
                                            </select>
                                        </div>
                                        <div class="Colvis TableTools" style="right:230px; top:4px; z-index:5; margin-top:7px;"><label>Төрөл: </label></div>
                                        <div id="loaderTab1t1Question" class="search-background">
                                            <img width="64" height="" src="img/loading.gif"/>
                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                        </div>
                                        <div id="divBindTab1t1QuestionTable" class="widget-body no-padding">
                                            
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                            <div style="width:49%; float:left;">
                                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                    <header>
                                        <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                        <h2>Удирдлагаас газрын дарга нарыг үнэлэх хариултууд</h2>
                                        <div class="widget-toolbar">
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                <button class="btn btn-primary btn-xs" type="submit" data-target="#srvAnswerModal" data-toggle="modal" onclick="showAddEditAnswerModal(this,1,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                            </div> 
                                        </div>
                                    </header>
                                    <div>
                                        <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                        <div class="Colvis TableTools" style="width:100px; top:6px; z-index:5; right:125px;">
                                            <select id="srvTab1t1AnswerIsActive" name="srvTab1t1AnswerIsActive" class="form-control" style="padding:1px;">
                                                <option value="">Бүгд</option>
                                                <option value="1">Идэвхтэй</option>
                                                <option value="0">Идэвхгүй</option>
                                            </select>
                                        </div>
                                        <div class="Colvis TableTools" style="right:230px; top:4px; z-index:5; margin-top:7px;"><label>Төрөл: </label></div>
                                        <div id="loaderTab1t1Answer" class="search-background">
                                            <img width="64" height="" src="img/loading.gif"/>
                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                        </div>
                                        <div id="divBindTab1t1AnswerTable" class="widget-body no-padding">
                                            
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="srvTab1t2" runat="server" class="tab-pane active">
                            <div style="width:100%;">
                                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                    <header>
                                        <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                        <h2><span id="srvTab1t2CurrentYear" runat="server">0000</span> оны <span id="srvTab1t2CurrentHalfYear" runat="server">00</span> хагас жилийн удирдлагаас өгсөн газрын дарга нарын үнэлгээ </h2>
                                        <div class="widget-toolbar">
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                <select id="srvTab1t2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                            </div> 
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                <select id="srvTab1t2SelectHalfYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">Эхний хагас жил</option><option value="2">Сүүлийн хагас жил</option></select>
                                            </div> 
                                        </div>
                                    </header>
                                    <div>
                                        <div id="loaderTab1t2" class="search-background">
                                            <img width="64" height="" src="img/loading.gif"/>
                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                        </div>
                                        <div id="divBindTab1t2Table" runat="server" class="smart-form">
                                     
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="srvTab1t3" runat="server" class="tab-pane fade">
                            <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                <div style="width:70%; float:left;">
                                    <div style="width:60px; float:left; margin-right:10px;"><select id="srvTab1t3SelectYear" name="srvTab1t3SelectYear" runat="server" class="form-control" style="padding:1px"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select></div>
                                    <div style="width:100px; float:left; margin-right:10px;"><select id="srvTab1t3SelectHalfYear" name="srvTab1t3SelectHalfYear" runat="server" class="form-control" style="padding:1px"><option value="1">Эхний хагас жил</option><option value="2">Сүүлийн хагас жил</option></select></div>
                                    <div style="width:40px; float:left; margin-top:7px;">Газар:</div>
                                    <div style="width:90px; float:left; margin-right:10px;"><select id="srvTab1t3SelectGazar" name="srvTab1t3SelectGazar" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select></div>
                                </div>
                                <div style="text-align:right; width:30%; float:left;">
                                    <div class="btn-group pull-right">
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divsrvTab1t3', 'ГД нарын үнэлгээ')">
                                            <i class="fa fa-file-word-o"></i>
                                        </a>
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divsrvTab1t3')">
                                            <i class="fa fa-print"></i>
                                        </a>
                                    </div>
                                </div> 
                            </div>
                            <div id="loaderTab1t3" class="search-background">
                                <label>
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </label>
                            </div>
                            <div id="divsrvTab1t3" runat="server" class="reports" style="margin:0 10px 10px 10px;">                        
                                <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                    <label id="divsrvTab1t3Year" runat="server" style="font-weight:bold;">0000</label> оны <label id="divsrvTab1t3HalfYear" runat="server" style="font-weight:bold;">0000</label> хагас жилийн яамны удирдлагаас газрын дарга нарыг үнэлсэн үнэлгээ  
                                </div>
                                <div id="divsrvTab1t3Datatable" runat="server" style="display:block;"></div>              
                            </div>
                        </div>
                    </div>                    
                </div>
                <div id="srvTab2" runat="server" class="tab-pane">
                    <ul class="nav nav-tabs bordered">
                        <li id="pTab2t1Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#srvTab2t1">Тохиргоо</a>
                        </li>
                        <li id="pTab2t2Li" runat="server" onclick="pDatabindTabs(this)" class="active">
                            <a data-toggle="tab" href="#srvTab2t2">Үнэлгээ</a>
                        </li>
                        <li id="pTab2t3Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#srvTab2t3">Тайлан</a>
                        </li>
                    </ul>
                    <div id="srvTab2Content" runat="server" class="tab-content">
                        <div id="srvTab2t1" runat="server" class="tab-pane fade">
                            <div style="width:50%; float:left; margin-right:10px;">
                                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                    <header>
                                        <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                        <h2>Газрын дарга нар хэлтсийн дарга нарыг үнэлэх асуултууд</h2>
                                        <div class="widget-toolbar">
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                <button class="btn btn-primary btn-xs" type="submit" data-target="#srvQuestionModal" data-toggle="modal" onclick="showAddEditQuestionModal(this,2,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                            </div> 
                                        </div>
                                    </header>
                                    <div>
                                        <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                        <div class="Colvis TableTools" style="width:100px; top:6px; z-index:5; right:125px;">
                                            <select id="srvTab2t1QuestionIsActive" name="srvTab2t1QuestionIsActive" class="form-control" style="padding:1px;">
                                                <option value="">Бүгд</option>
                                                <option value="1">Идэвхтэй</option>
                                                <option value="0">Идэвхгүй</option>
                                            </select>
                                        </div>
                                        <div class="Colvis TableTools" style="right:230px; top:4px; z-index:5; margin-top:7px;"><label>Төрөл: </label></div>
                                        <div id="loaderTab2t1Question" class="search-background">
                                            <img width="64" height="" src="img/loading.gif"/>
                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                        </div>
                                        <div id="divBindTab2t1QuestionTable" class="widget-body no-padding">
                                            
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                            <div style="width:49%; float:left;">
                                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                    <header>
                                        <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                        <h2>Удирдлагаас газрын дарга нарыг үнэлэх хариултууд</h2>
                                        <div class="widget-toolbar">
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                <button class="btn btn-primary btn-xs" type="submit" data-target="#srvAnswerModal" data-toggle="modal" onclick="showAddEditAnswerModal(this,2,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                            </div> 
                                        </div>
                                    </header>
                                    <div>
                                        <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                        <div class="Colvis TableTools" style="width:100px; top:6px; z-index:5; right:125px;">
                                            <select id="srvTab2t1AnswerIsActive" name="srvTab2t1AnswerIsActive" class="form-control" style="padding:1px;">
                                                <option value="">Бүгд</option>
                                                <option value="1">Идэвхтэй</option>
                                                <option value="0">Идэвхгүй</option>
                                            </select>
                                        </div>
                                        <div class="Colvis TableTools" style="right:230px; top:4px; z-index:5; margin-top:7px;"><label>Төрөл: </label></div>
                                        <div id="loaderTab2t1Answer" class="search-background">
                                            <img width="64" height="" src="img/loading.gif"/>
                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                        </div>
                                        <div id="divBindTab2t1AnswerTable" class="widget-body no-padding">
                                            
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="srvTab2t2" runat="server" class="tab-pane active">
                            <div style="width:100%;">
                                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                    <header>
                                        <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                        <h2><span id="srvTab2t2CurrentYear" runat="server">0000</span> оны <span id="srvTab2t2CurrentHalfYear" runat="server">00</span> хагас жилийн газрын даргаас өгсөн хэлтсийн дарга нарын үнэлгээ </h2>
                                        <div class="widget-toolbar">
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                <select id="srvTab2t2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                            </div> 
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                <select id="srvTab2t2SelectHalfYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">Эхний хагас жил</option><option value="2">Сүүлийн хагас жил</option></select>
                                            </div>
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                <select id="srvTab2t2SelectGazar" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option></select>
                                            </div> 
                                        </div>
                                    </header>
                                    <div>
                                        <div id="loaderTab2t2" class="search-background">
                                            <img width="64" height="" src="img/loading.gif"/>
                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                        </div>
                                        <div id="divBindTab2t2Table" runat="server" class="smart-form">
                                     
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="srvTab2t3" runat="server" class="tab-pane fade">
                            <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                <div style="width:70%; float:left;">
                                    <div style="width:60px; float:left; margin-right:10px;"><select id="srvTab2t3SelectYear" name="srvTab2t3SelectYear" runat="server" class="form-control" style="padding:1px"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select></div>
                                    <div style="width:100px; float:left; margin-right:10px;"><select id="srvTab2t3SelectHalfYear" name="srvTab2t3SelectHalfYear" runat="server" class="form-control" style="padding:1px"><option value="1">Эхний хагас жил</option><option value="2">Сүүлийн хагас жил</option></select></div>
                                    <div style="width:40px; float:left; margin-top:7px;">Газар:</div>
                                    <div style="width:90px; float:left; margin-right:10px;"><select disabled="disabled" id="srvTab2t3SelectGazar" name="srvTab2t3SelectGazar" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select></div>
                                    <div style="width:50px; float:left; margin-top:7px;">Хэлтэс:</div>
                                    <div style="width:90px; float:left; margin-right:10px;"><select id="srvTab2t3SelectHeltes" name="srvTab2t3SelectHeltes" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select></div>
                                </div>
                                <div style="text-align:right; width:30%; float:left;">
                                    <div class="btn-group pull-right">
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divsrvTab2t3', 'ГД-с ХД-д өгсөн үнэлгээ')">
                                            <i class="fa fa-file-word-o"></i>
                                        </a>
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divsrvTab2t3')">
                                            <i class="fa fa-print"></i>
                                        </a>
                                    </div>
                                </div> 
                            </div>
                            <div id="loaderTab2t3" class="search-background">
                                <label>
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </label>
                            </div>
                            <div id="divsrvTab2t3" runat="server" class="reports" style="margin:0 10px 10px 10px;">                        
                                <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                    <label id="divsrvTab2t3Year" runat="server" style="font-weight:bold;">0000</label> оны <label id="divsrvTab2t3HalfYear" runat="server" style="font-weight:bold;">0000</label> хагас жилийн газрын даргаас хэлтсийн дарга нарыг үнэлсэн үнэлгээ  
                                </div>
                                <div id="divsrvTab2t3Datatable" runat="server" style="display:block;"></div>           
                            </div>
                        </div>
                    </div>
                </div>
                <div id="srvTab3" runat="server" class="tab-pane">
                    <ul class="nav nav-tabs bordered">
                        <li id="pTab3t1Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#srvTab3t1">Тохиргоо</a>
                        </li>
                        <li id="pTab3t2Li" runat="server" onclick="pDatabindTabs(this)" class="active">
                            <a data-toggle="tab" href="#srvTab3t2">Үнэлгээ</a>
                        </li>
                        <li id="pTab3t3Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#srvTab3t3">Тайлан</a>
                        </li>
                        <li id="pTab3t4Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#srvTab3t4">Дэлгэрэнгүй тайлан</a>
                        </li>
                    </ul>
                    <div id="srvTab3Content" runat="server" class="tab-content">
                        <div id="srvTab3t1" runat="server" class="tab-pane">
                            <div style="width:50%; float:left; margin-right:10px;">
                                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                    <header>
                                        <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                        <h2>Мэргэжилтэн хамт олноо үнэлэх асуултууд</h2>
                                        <div class="widget-toolbar">
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                <button class="btn btn-primary btn-xs" type="submit" data-target="#srvQuestionModal" data-toggle="modal" onclick="showAddEditQuestionModal(this,3,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                            </div> 
                                        </div>
                                    </header>
                                    <div>
                                        <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                        <div class="Colvis TableTools" style="width:100px; top:6px; z-index:5; right:125px;">
                                            <select id="srvTab3t1QuestionIsActive" name="srvTab3t1QuestionIsActive" class="form-control" style="padding:1px;">
                                                <option value="">Бүгд</option>
                                                <option value="1">Идэвхтэй</option>
                                                <option value="0">Идэвхгүй</option>
                                            </select>
                                        </div>
                                        <div class="Colvis TableTools" style="right:230px; top:4px; z-index:5; margin-top:7px;"><label>Төрөл: </label></div>
                                        <div id="loaderTab3t1Question" class="search-background">
                                            <img width="64" height="" src="img/loading.gif"/>
                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                        </div>
                                        <div id="divBindTab3t1QuestionTable" class="widget-body no-padding">
                                            
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                            <div style="width:49%; float:left;">
                                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                    <header>
                                        <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                        <h2>Мэргэжилтэн хамт олноо үнэлэх хариултууд</h2>
                                        <div class="widget-toolbar">
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                <button class="btn btn-primary btn-xs" type="submit" data-target="#srvAnswerModal" data-toggle="modal" onclick="showAddEditAnswerModal(this,3,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                            </div> 
                                        </div>
                                    </header>
                                    <div>
                                        <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                        <div class="Colvis TableTools" style="width:100px; top:6px; z-index:5; right:125px;">
                                            <select id="srvTab3t1AnswerIsActive" name="srvTab3t1AnswerIsActive" class="form-control" style="padding:1px;">
                                                <option value="">Бүгд</option>
                                                <option value="1">Идэвхтэй</option>
                                                <option value="0">Идэвхгүй</option>
                                            </select>
                                        </div>
                                        <div class="Colvis TableTools" style="right:230px; top:4px; z-index:5; margin-top:7px;"><label>Төрөл: </label></div>
                                        <div id="loaderTab3t1Answer" class="search-background">
                                            <img width="64" height="" src="img/loading.gif"/>
                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                        </div>
                                        <div id="divBindTab3t1AnswerTable" class="widget-body no-padding">
                                            
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="srvTab3t2" runat="server" class="tab-pane active">
                            <div style="width:100%;">
                                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                    <header>
                                        <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                        <h2><span id="srvTab3t2CurrentYear" runat="server">0000</span> оны <span id="srvTab3t2CurrentHalfYear" runat="server"></span> хагас жилийн мэргэжилтэн хамт олноо үнэлэх үнэлгээ </h2>
                                        
                                        <div class="widget-toolbar">                                            
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                <select id="srvTab3t2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                            </div> 
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                <select id="srvTab3t2SelectHalfYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">Эхний хагас жил</option><option value="2">Сүүлийн хагас жил</option></select>
                                            </div> 
                                        </div>
                                        <div class="widget-toolbar">
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                Хэлтэс:
                                            </div>
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                <select id="srvTab3t2SelectHeltes" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="0">Бүгд</option></select>
                                            </div> 
                                        </div>
                                        <div class="widget-toolbar">
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                Газар:
                                            </div>
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                <select id="srvTab3t2SelectGazar" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="0">Бүгд</option></select>
                                            </div> 
                                        </div>
                                    </header>
                                    <div>
                                        <div id="loaderTab3t2" class="search-background">
                                            <img width="64" height="" src="img/loading.gif"/>
                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                        </div>
                                        <div id="divBindTab3t2Table" runat="server" class="smart-form">
                                     
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="srvTab3t3" runat="server" class="tab-pane">
                            <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                <div style="width:70%; float:left;">
                                    <div style="width:65px; float:left; margin-right:10px;"><select id="srvTab3t3SelectYear" name="srvTab3t3SelectYear" runat="server" class="form-control" style="padding:1px"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select></div>
                                    <div style="width:145px; float:left; margin-right:10px;"><select id="srvTab3t3SelectHalfYear" name="srvTab3t3SelectHalfYear" runat="server" class="form-control" style="padding:1px"><option value="1">Эхний хагас жил</option><option value="2">Сүүлийн хагас жил</option></select></div>
                                    <div style="width:40px; float:left; margin-top:7px;">Газар:</div>
                                    <div style="width:90px; float:left; margin-right:10px;"><select id="srvTab3t3SelectGazar" name="srvTab3t3SelectGazar" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select></div>
                                    <div style="width:50px; float:left; margin-top:7px;">Хэлтэс:</div>
                                    <div style="width:90px; float:left; margin-right:10px;"><select id="srvTab3t3SelectHeltes" name="srvTab3t3SelectHeltes" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select></div>
                                    <div style="width:60px; float:left; margin-top:7px;">Ажилтан:</div>
                                    <div style="width:130px; float:left; margin-right:10px;"><select id="srvTab3t3SelectStaff" name="srvTab3t3SelectStaff" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select></div>
                                </div>
                                <div style="text-align:right; width:30%; float:left;">
                                    <div class="btn-group pull-right">
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divsrvTab3t3', 'Хамт олны үнэлгээ')">
                                            <i class="fa fa-file-word-o"></i>
                                        </a>
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divsrvTab3t3')">
                                            <i class="fa fa-print"></i>
                                        </a>
                                    </div>
                                </div> 
                            </div>
                            <div id="loaderTab3t3" class="search-background">
                                <label>
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </label>
                            </div>
                            <div id="divsrvTab3t3" runat="server" class="reports" style="margin:0 10px 10px 10px;">                        
                                <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                    <label id="divsrvTab3t3Year" runat="server" style="font-weight:bold;">0000</label> оны <label id="divsrvTab3t3HalfYear" runat="server" style="font-weight:bold;"></label> хагас жилийн мэргэжилтэн хамт олноо үнэлэх үнэлгээ  
                                </div>
                                <div id="divsrvTab3t3Datatable" runat="server" style="display:block;"></div>                 
                            </div>
                        </div>
                        <div id="srvTab3t4" runat="server" class="tab-pane">
                            <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                <div style="width:70%; float:left;">
                                    <div style="width:65px; float:left; margin-right:10px;"><select id="srvTab3t4SelectYear" name="srvTab3t4SelectYear" runat="server" class="form-control" style="padding:1px"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select></div>
                                    <div style="width:145px; float:left; margin-right:10px;"><select id="srvTab3t4SelectHalfYear" name="srvTab3t4SelectHalfYear" runat="server" class="form-control" style="padding:1px"><option value="1">Эхний хагас жил</option><option value="2">Сүүлийн хагас жил</option></select></div>
                                    <div style="width:40px; float:left; margin-top:7px;">Газар:</div>
                                    <div style="width:90px; float:left; margin-right:10px;"><select id="srvTab3t4SelectGazar" name="srvTab3t4SelectGazar" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select></div>
                                    <div style="width:50px; float:left; margin-top:7px;">Хэлтэс:</div>
                                    <div style="width:90px; float:left; margin-right:10px;"><select id="srvTab3t4SelectHeltes" name="srvTab3t4SelectHeltes" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select></div>
                                </div>
                                <div style="text-align:right; width:30%; float:left;">
                                    <div class="btn-group pull-right">
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divsrvTab3t4', 'Хамт олны үнэлгээ дэлгэрэнгүй')">
                                            <i class="fa fa-file-word-o"></i>
                                        </a>
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divsrvTab3t4')">
                                            <i class="fa fa-print"></i>
                                        </a>
                                    </div>
                                </div> 
                            </div>
                            <div id="loaderTab3t4" class="search-background">
                                <label>
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </label>
                            </div>
                            <div id="divsrvTab3t4" runat="server" class="reports" style="margin:0 10px 10px 10px;">                        
                                <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                    <label id="divsrvTab3t4Year" runat="server" style="font-weight:bold;">0000</label> оны <label id="divsrvTab3t4HalfYear" runat="server" style="font-weight:bold;"></label> хагас жилийн мэргэжилтэн хамт олноо үнэлэх үнэлгээ дэлгэрэнгүй
                                </div>
                                <div id="divsrvTab3t4Datatable" runat="server" style="display:block;"></div>                 
                            </div>
                        </div>
                    </div>                    
                </div>
                <div id="srvTab4" runat="server" class="tab-pane">
                    <ul class="nav nav-tabs bordered">
                        <li id="pTab4t1Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#srvTab4t1">Тохиргоо</a>
                        </li>
                        <li id="pTab4t2Li" runat="server" onclick="pDatabindTabs(this)" class="active">
                            <a data-toggle="tab" href="#srvTab4t2">Үнэлгээ</a>
                        </li>
                        <li id="pTab4t3Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#srvTab4t3">Тайлан</a>
                        </li>
                    </ul>
                    <div id="srvTab4Content" runat="server" class="tab-content">
                        <div id="srvTab4t1" runat="server" class="tab-pane">
                            <div style="width:50%; float:left; margin-right:10px;">
                                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                    <header>
                                        <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                        <h2>Мэргэжилтэн газар хэлтсийн дарга нарыг асуултууд</h2>
                                        <div class="widget-toolbar">
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                <button class="btn btn-primary btn-xs" type="submit" data-target="#srvQuestionModal" data-toggle="modal" onclick="showAddEditQuestionModal(this,4,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                            </div> 
                                        </div>
                                    </header>
                                    <div>
                                        <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                        <div class="Colvis TableTools" style="width:100px; top:6px; z-index:5; right:125px;">
                                            <select id="srvTab4t1QuestionIsActive" name="srvTab4t1QuestionIsActive" class="form-control" style="padding:1px;">
                                                <option value="">Бүгд</option>
                                                <option value="1">Идэвхтэй</option>
                                                <option value="0">Идэвхгүй</option>
                                            </select>
                                        </div>
                                        <div class="Colvis TableTools" style="right:230px; top:4px; z-index:5; margin-top:7px;"><label>Төрөл: </label></div>
                                        <div id="loaderTab4t1Question" class="search-background">
                                            <img width="64" height="" src="img/loading.gif"/>
                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                        </div>
                                        <div id="divBindTab4t1QuestionTable" class="widget-body no-padding">
                                            
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                            <div style="width:49%; float:left;">
                                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                    <header>
                                        <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                        <h2>Мэргэжилтэн газар хэлтсийн дарга нарыг үнэлэх хариултууд</h2>
                                        <div class="widget-toolbar">
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                <button class="btn btn-primary btn-xs" type="submit" data-target="#srvAnswerModal" data-toggle="modal" onclick="showAddEditAnswerModal(this,4,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                            </div> 
                                        </div>
                                    </header>
                                    <div>
                                        <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                        <div class="Colvis TableTools" style="width:100px; top:6px; z-index:5; right:125px;">
                                            <select id="srvTab4t1AnswerIsActive" name="srvTab4t1AnswerIsActive" class="form-control" style="padding:1px;">
                                                <option value="">Бүгд</option>
                                                <option value="1">Идэвхтэй</option>
                                                <option value="0">Идэвхгүй</option>
                                            </select>
                                        </div>
                                        <div class="Colvis TableTools" style="right:230px; top:4px; z-index:5; margin-top:7px;"><label>Төрөл: </label></div>
                                        <div id="loaderTab4t1Answer" class="search-background">
                                            <img width="64" height="" src="img/loading.gif"/>
                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                        </div>
                                        <div id="divBindTab4t1AnswerTable" class="widget-body no-padding">
                                            
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="srvTab4t2" runat="server" class="tab-pane active">
                            <div style="width:100%;">
                                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                    <header>
                                        <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                        <h2><span id="srvTab4t2CurrentYear" runat="server">0000</span> оны <span id="srvTab4t2CurrentHalfYear" runat="server"></span> хагас жилийн мэргэжилтэн газар хэлтсийн дарга нарыг үнэлэх үнэлгээ </h2>
                                        <div class="widget-toolbar">
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                <select id="srvTab4t2SelectGazar" runat="server" class="form-control" style="padding:0 0; height:26px;" disabled></select>
                                            </div> 
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                <select id="srvTab4t2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                            </div> 
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                <select id="srvTab4t2SelectHalfYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">Эхний хагас жил</option><option value="2">Сүүлийн хагас жил</option></select>
                                            </div> 
                                        </div>
                                    </header>
                                    <div>
                                        <div id="loaderTab4t2" class="search-background">
                                            <img width="64" height="" src="img/loading.gif"/>
                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                        </div>
                                        <div id="divBindTab4t2Table" runat="server" class="smart-form">
                                     
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="srvTab4t3" runat="server" class="tab-pane">
                            <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                <div style="width:70%; float:left;">
                                    <div style="width:65px; float:left; margin-right:10px;"><select id="srvTab4t3SelectYear" name="srvTab4t3SelectYear" runat="server" class="form-control" style="padding:1px"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select></div>
                                    <div style="width:145px; float:left; margin-right:10px;"><select id="srvTab4t3SelectHalfYear" name="srvTab4t3SelectHalfYear" runat="server" class="form-control" style="padding:1px"><option value="1">Эхний хагас жил</option><option value="2">Сүүлийн хагас жил</option></select></div>
                                    <div style="width:40px; float:left; margin-top:7px;">Газар:</div>
                                    <div style="width:90px; float:left; margin-right:10px;"><select disabled="disabled" id="srvTab4t3SelectGazar" name="srvTab4t3SelectGazar" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select></div>
                                    <div style="width:50px; float:left; margin-top:7px;">Хэлтэс:</div>
                                    <div style="width:90px; float:left; margin-right:10px;"><select id="srvTab4t3SelectHeltes" name="srvTab4t3SelectHeltes" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select></div>
                                </div>
                                <div style="text-align:right; width:30%; float:left;">
                                    <div class="btn-group pull-right">
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divsrvTab4t3', 'Мэргэжилтэн ГД,ХД-д өгсөн үнэлгээ')">
                                            <i class="fa fa-file-word-o"></i>
                                        </a>
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divsrvTab4t3')">
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
                            <div id="divsrvTab4t3" runat="server" class="reports" style="margin:0 10px 10px 10px;">                        
                                <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                    <label id="divsrvTab4t3Year" runat="server" style="font-weight:bold;">0000</label> оны <label id="divsrvTab4t3HalfYear" runat="server" style="font-weight:bold;"></label> хагас жилийн мэргэжилтэн газар хэлтсийн дарга нарыг үнэлэх үнэлгээ  
                                </div>
                                <div id="divsrvTab4t3Datatable" runat="server" style="display:block;"></div>               
                            </div>
                        </div>
                    </div>                    
                </div>
                <div id="srvTab5" runat="server" class="tab-pane">
                    <article class="col-xs-12 col-sm-12 col-md-6 col-lg-4 sortable-grid ui-sortable">
                        <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                            <header>
                                <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                <h2>Удирдлагаас ГД нарыг үнэлэх</h2>
                                <div class="widget-toolbar">
                                    <button class="btn btn btn-primary btn-xs" data-target="#pTab5t1EmailModal" data-toggle="modal" onclick="showTab5t1EmailModal('1')"><i class="fa fa-envelope"></i> Имэйл явуулах</button>
                                </div>
                                <div class="widget-toolbar">
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <select id="srvTab5t1Year" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                    </div> 
                                </div>
                            </header>
                            <div>
                                <div id="loaderTab5t1" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divBindTab5t1Table" class="widget-body no-padding">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th class="text-center" style="width:55px;">Он</th>
                                                <th class="text-center">Хагас жил</th>
                                                <th class="text-center" style="width:85px;">Хаах/нээх</th>
                                            </tr>
                                        </thead>
                                        <tbody id="pTab5t1Tbody" runat="server">
                                        </tbody>
                                    </table>
                                </div>                                        
                            </div>
                        </div>
                    </article>
                    <article class="col-xs-12 col-sm-12 col-md-6 col-lg-4 sortable-grid ui-sortable">
                        <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                            <header>
                                <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                <h2>ГДарга ХДарга нарыг үнэлэх</h2>
                                <div class="widget-toolbar">
                                    <button class="btn btn btn-primary btn-xs" data-target="#pTab5t1EmailModal" data-toggle="modal" onclick="showTab5t1EmailModal('2')"><i class="fa fa-envelope"></i> Имэйл явуулах</button>
                                </div>
                                <div class="widget-toolbar">
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <select id="srvTab5t2Year" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                    </div> 
                                </div>
                            </header>
                            <div>
                                <div id="loaderTab5t2" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divBindTab5t2Table" class="widget-body no-padding">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th class="text-center" style="width:55px;">Он</th>
                                                <th class="text-center">Хагас жил</th>
                                                <th class="text-center" style="width:85px;">Хаах/нээх</th>
                                            </tr>
                                        </thead>
                                        <tbody id="pTab5t2Tbody" runat="server">

                                        </tbody>
                                    </table>
                                </div>                                        
                            </div>
                        </div>
                    </article>
                    <article class="col-xs-12 col-sm-12 col-md-6 col-lg-4 sortable-grid ui-sortable">
                        <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                            <header>
                                <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                <h2>Хамт олны үнэлгээ</h2>
                                <div class="widget-toolbar">
                                    <button class="btn btn btn-primary btn-xs" data-target="#pTab5t1EmailModal" data-toggle="modal" onclick="showTab5t1EmailModal('3')"><i class="fa fa-envelope"></i> Имэйл явуулах</button>
                                </div>
                                <div class="widget-toolbar">
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <select id="srvTab5t3Year" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                    </div> 
                                </div>
                            </header>
                            <div>
                                <div id="loaderTab5t3" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divBindTab5t3Table" class="widget-body no-padding">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th class="text-center" style="width:55px;">Он</th>
                                                <th class="text-center">Хагас жил</th>
                                                <th class="text-center" style="width:85px;">Хаах/нээх</th>
                                            </tr>
                                        </thead>
                                        <tbody id="pTab5t3Tbody" runat="server">

                                        </tbody>
                                    </table>   
                                </div>                                        
                            </div>
                        </div>
                    </article>
                    <article class="col-xs-12 col-sm-12 col-md-6 col-lg-4 sortable-grid ui-sortable hide">
                        <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                            <header>
                                <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                <h2>Мэргэжилтэн ГД, ХД нарыг үнэлэх</h2>
                                <div class="widget-toolbar">
                                    <div class="btn-group options" style="margin-right:0px !important;">
                                        <select id="srvTab5t4Year" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                    </div> 
                                </div>
                            </header>
                            <div>
                                <div id="loaderTab5t4" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divBindTab5t4Table" class="widget-body no-padding">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th class="text-center" style="width:55px;">Он</th>
                                                <th class="text-center">Хагас жил</th>
                                                <th class="text-center" style="width:85px;">Хаах/нээх</th>
                                            </tr>
                                        </thead>
                                        <tbody id="pTab5t4Tbody" runat="server">

                                        </tbody>
                                    </table>    
                                </div>                                        
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </article>
    </div>
</section>
<div id="srvQuestionModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="srvQuestionModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" ><span id="srvQuestionModalHeaderLabel1"></span>&nbsp;<span id="srvQuestionModalHeaderLabel2"></span></h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div id="srvTypeID" class="form-group hide"></div>
                            <div id="srvQuestionID" class="form-group hide"></div>
                            <div class="form-group">
                                <textarea id="srvQuestionName" name="srvQuestionName" class="form-control" required="" placeholder="Асуултын нэр" rows="4"></textarea>
                            </div>                        
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                    <button id="srvQuestionSave" class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
                </div>
            </form>
        </div>
    </div>
</div>
<div id="srvAnswerModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="srvAnswerModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" ><span id="srvAnswerModalHeaderLabel1"></span>&nbsp;<span id="srvAnswerModalHeaderLabel2"></span></h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div id="srvAnswerTypeID" class="form-group hide"></div>
                            <div id="srvAnswerID" class="form-group hide"></div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;"> 
                                <label class="col-md-2 control-label">Хувь</label>
                                <div class="col-md-10">                                  
                                    <select id="srvAnswerPer" name="srvAnswerPer" class="form-control"><option value="0">- Сонго -</option><option>10</option><option>20</option><option>30</option><option>40</option><option>50</option><option>60</option><option>70</option><option>80</option><option>90</option><option>100</option></select>
                                </div>
                            </div>
                            <div class="form-group">
                                <textarea id="srvAnswerName" name="srvAnswerName" class="form-control" required="" placeholder="Хариултын нэр" rows="3"></textarea>
                            </div>                        
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                    <button id="srvAnswerSave" class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
                </div>
            </form>
        </div>
    </div>
</div>
<div id="pTab5t1EmailModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="pTab5t1EmailModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" ><span id="pTab5t1EmailModalHeaderLabel1"></span>&nbsp;имэйл явуулах</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div id="TypeID" class="form-group hide"></div>
                            <div class="form-group">
                                <textarea id="pTab5t1EmailModalInputName" name="pTab5t1EmailModalInputName" class="form-control" required="" placeholder="Утга" rows="3"></textarea>
                            </div>                        
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                    <button id="pTab5t1EmailModalBtnSave" class="btn btn-success btn-sm" type="submit"><span class="fa fa-paper-plane"></span> Явуулах </button>
                </div>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript">
    //pageSetUp();
    var globalAjaxVar = null;
    var pagefunction = function () {
        var valLiId = $('#srvBossToHeadTitle').closest('ul').find('.active').attr('id');
        if (valLiId == 'srvBossToHeadTitle') {
            valLiId = $('#pTab1t1Li').closest('ul').find('.active').attr('id');
            if (valLiId == 'pTab1t1Li') {
                if ($('#srvTab1t1').html() != "Таньд хандах эрх байхгүй байна!") {
                    dataBindTab1t1QuestionDatatable();
                    dataBindTab1t1AnswerDatatable();
                }
            }
            else if (valLiId == 'pTab1t2Li') {
                if ($('#srvTab1t2').html() != "Таньд хандах эрх байхгүй байна!") {
                    dataBindTab1t2Datatable();
                }
            }
            else if (valLiId == 'pTab1t3Li') {
                if ($('#srvTab1t3').html() != "Таньд хандах эрх байхгүй байна!") {
                    dataBindTab1t3DataTableFirst();
                }
            }
        }
        else if (valLiId == 'srvHeadToSubHeadTitle') {
            valLiId = $('#pTab2t1Li').closest('ul').find('.active').attr('id');
            if (valLiId == 'pTab2t1Li') {
                if ($('#srvTab2t1').html() != "Таньд хандах эрх байхгүй байна!") {
                    dataBindTab2t1QuestionDatatable();
                    dataBindTab2t1AnswerDatatable();
                }
            }
            else if (valLiId == 'pTab2t2Li') {
                if ($('#srvTab2t2').html() != "Таньд хандах эрх байхгүй байна!") {
                    dataBindTab2t2DataTableFirst();
                }
            }
            else if (valLiId == 'pTab2t3Li') {
                if ($('#srvTab2t3').html() != "Таньд хандах эрх байхгүй байна!") {
                    dataBindTab2t3DataTableFirst();
                }
            }
        }
        else if (valLiId == 'srvStaffToStaffTitle') {
            valLiId = $('#pTab3t1Li').closest('ul').find('.active').attr('id');
            if (valLiId == 'pTab3t1Li') {
                if ($('#srvTab3t1').html() != "Таньд хандах эрх байхгүй байна!") {
                    dataBindTab3t1QuestionDatatable();
                    dataBindTab3t1AnswerDatatable();
                }
            }
            else if (valLiId == 'pTab3t2Li') {
                if ($('#srvTab3t2').html() != "Таньд хандах эрх байхгүй байна!") {
                    dataBindTab3t2DataTableFirst();
                }
            }
            else if (valLiId == 'pTab3t3Li') {
                if ($('#srvTab3t3').html() != "Таньд хандах эрх байхгүй байна!") {
                    dataBindTab3t3DataTableFirst();
                }
            }
            else if (valLiId == 'pTab3t4Li') {
                if ($('#srvTab3t4').html() != "Таньд хандах эрх байхгүй байна!") {
                    dataBindTab3t4DataTableFirst();
                }
            }
        }
        else if (valLiId == 'srvStaffToHeadTitle') {
            valLiId = $('#pTab4t1Li').closest('ul').find('.active').attr('id');
            if (valLiId == 'pTab4t1Li') {
                if ($('#srvTab4t1').html() != "Таньд хандах эрх байхгүй байна!") {
                    dataBindTab4t1QuestionDatatable();
                    dataBindTab4t1AnswerDatatable();
                }
            }
            else if (valLiId == 'pTab4t2Li') {
                if ($('#srvTab4t2').html() != "Таньд хандах эрх байхгүй байна!") {
                    dataBindTab4t2DataTableFirst();
                }
            }
            else if (valLiId == 'pTab4t3Li') {
                if ($('#srvTab4t3').html() != "Таньд хандах эрх байхгүй байна!") {
                    dataBindTab4t3DataTableFirst();
                }
            }
        }
        else if (valLiId == 'pTab5Li') {
            dataBindTab5t1Datatable();
            dataBindTab5t2Datatable();
            dataBindTab5t3Datatable();
            dataBindTab5t4Datatable();
        }
    }
    function pDatabindTabs(el) {
        if ($.trim($(el).attr('id')) == 'srvBossToHeadTitle') {
            if ($.trim($('#srvTab1t2').html()) != "Таньд хандах эрх байхгүй байна!") {
                if ($.trim($('#divBindTab1t2Table').html()) == "") {
                    dataBindTab1t2Datatable();
                }
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab1t1Li') {
            if ($.trim($('#srvTab1t1').html()) != "Таньд хандах эрх байхгүй байна!") {
                if ($.trim($('#divBindTab1t1QuestionTable').html()) == "") {
                    dataBindTab1t1QuestionDatatable();
                    dataBindTab1t1AnswerDatatable();
                }
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab1t2Li') {
            if ($.trim($('#srvTab1t2').html()) != "Таньд хандах эрх байхгүй байна!") {
                if ($.trim($('#divBindTab1t2Table').html()) == "") {
                    dataBindTab1t2Datatable();
                }
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab1t3Li') {
            if ($.trim($('#srvTab1t3').html()) != "Таньд хандах эрх байхгүй байна!") {
                if ($.trim($('#divsrvTab3t3Datatable').html()) == "") {
                    dataBindTab1t3DataTableFirst();
                }
            }
        }
        else if ($.trim($(el).attr('id')) == 'srvHeadToSubHeadTitle') {
            if ($.trim($('#srvTab2t2').html()) != "Таньд хандах эрх байхгүй байна!") {
                if ($.trim($('#divBindTab2t2Table').html()) == "") {
                    dataBindTab2t2DataTableFirst();
                }
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab2t1Li') {
            if ($.trim($('#srvTab2t1').html()) != "Таньд хандах эрх байхгүй байна!") {
                if ($.trim($('#divBindTab2t1QuestionTable').html()) == "") {
                    dataBindTab2t1QuestionDatatable();
                    dataBindTab2t1AnswerDatatable();
                }
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab2t2Li') {
            if ($.trim($('#srvTab2t2').html()) != "Таньд хандах эрх байхгүй байна!") {
                if ($.trim($('#divBindTab2t2Table').html()) == "") {
                    dataBindTab2t2DataTableFirst();
                }
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab2t3Li') {
            if ($.trim($('#srvTab2t3').html()) != "Таньд хандах эрх байхгүй байна!") {
                if ($.trim($('#divsrvTab2t3Datatable').html()) == "") {
                    dataBindTab2t3DataTableFirst();
                }
            }
        }
        else if ($.trim($(el).attr('id')) == 'srvStaffToStaffTitle') {
            if ($.trim($('#srvTab3t2').html()) != "Таньд хандах эрх байхгүй байна!") {
                if ($.trim($('#divBindTab3t2Table').html()) == "") {
                    dataBindTab3t2DataTableFirst();
                }
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab3t1Li') {
            if ($.trim($('#srvTab3t1').html()) != "Таньд хандах эрх байхгүй байна!") {
                if ($.trim($('#divBindTab3t1QuestionTable').html()) == "") {
                    dataBindTab3t1QuestionDatatable();
                    dataBindTab3t1AnswerDatatable();
                }
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab3t2Li') {
            if ($.trim($('#srvTab3t2').html()) != "Таньд хандах эрх байхгүй байна!") {
                if ($.trim($('#divBindTab3t2Table').html()) == "") {
                    dataBindTab3t2DataTableFirst();
                }
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab3t3Li') {
            if ($.trim($('#srvTab3t3').html()) != "Таньд хандах эрх байхгүй байна!") {
                if ($.trim($('#divsrvTab3t3Datatable').html()) == "") {
                    dataBindTab3t3DataTableFirst();
                }
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab3t4Li') {
            if ($.trim($('#srvTab3t4').html()) != "Таньд хандах эрх байхгүй байна!") {
                if ($.trim($('#divsrvTab3t4Datatable').html()) == "") {
                    dataBindTab3t4DataTableFirst();
                }
            }
        }
        else if ($.trim($(el).attr('id')) == 'srvStaffToHeadTitle') {
            if ($.trim($('#srvTab4t2').html()) != "Таньд хандах эрх байхгүй байна!") {
                if ($.trim($('#divBindTab4t2Table').html()) == "") {
                    dataBindTab4t2DataTableFirst();
                }
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab4t1Li') {
            if ($.trim($('#srvTab4t1').html()) != "Таньд хандах эрх байхгүй байна!") {
                if ($.trim($('#divBindTab4t1QuestionTable').html()) == "") {
                    dataBindTab4t1QuestionDatatable();
                    dataBindTab4t1AnswerDatatable();
                }
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab4t2Li') {
            if ($.trim($('#srvTab4t2').html()) != "Таньд хандах эрх байхгүй байна!") {
                if ($.trim($('#divBindTab4t2Table').html()) == "") {
                    dataBindTab4t2DataTableFirst();
                }
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab4t3Li') {
            if ($.trim($('#srvTab4t3').html()) != "Таньд хандах эрх байхгүй байна!") {
                if ($.trim($('#divsrvTab4t3Datatable').html()) == "") {
                    dataBindTab4t3DataTableFirst();
                }
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab5Li') {
            if ($.trim($('#pTab5t1Tbody').html()) == "") {
                dataBindTab5t1Datatable();
                dataBindTab5t2Datatable();
                dataBindTab5t3Datatable();
                dataBindTab5t4Datatable();
            }
        }
    }
    var pagedestroy = function () {
        if (globalAjaxVar != null) {
            globalAjaxVar.abort();
            globalAjaxVar = null;
        }
    }
    pagefunction();
    
    //tab1
    ///////tab1t1  
    function dataBindTab1t1QuestionDatatable() {
        var valData = '';
        showLoader('loaderTab1t1Question');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/SrvQuestionDatatable",
            data: '{"type":"1", "isactive":"' + $('#srvTab1t1QuestionIsActive option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table id=\"srvTab1t1QuestionDatatable\" class=\"table table-striped table-bordered table-hover smart-form\" width=\"100%\"><thead><tr><th>#</th><th>Асуултын нэр</th><th>Идэвхтэй эсэх</th><th></th></tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\""+value.ID+"\">";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td>" + value.NAME + "</td>";
                    valData += "<td><label class=\"checkbox\"><input"+value.IS_ACTIVE+" type=\"checkbox\" name=\"checkbox\" onclick=\"srvQuestionClick(this)\"/><i></i></label></td>";
                    valData += "<td>";
                    valData += '<div class="btn-group">';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditQuestionModal(this, 1,\'засах\');" data-target="#srvQuestionModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteQuestionModal(this,1);"><i class="fa fa-trash-o"></i></button>';
                    valData += '</div>';
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_srvTab1t1QuestionDatatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#srvTab1t1QuestionDatatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_srvTab1t1QuestionDatatable) {responsiveHelper_srvTab1t1QuestionDatatable = new ResponsiveDatatablesHelper($('#srvTab1t1QuestionDatatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_srvTab1t1QuestionDatatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_srvTab1t1QuestionDatatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"20px\", \"bSortable\": false },{ \"sWidth\": \"45px\", \"bSortable\": false }]});";
                valData += "<\/script>";
                $("#divBindTab1t1QuestionTable").html(valData);
                hideLoader('loaderTab1t1Question');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab1t1AnswerDatatable() {
        var valData = '';
        showLoader('loaderTab1t1Answer');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/SrvAnswerDatatable",
            data: '{"type":"1", "isactive":"' + $('#srvTab1t1AnswerIsActive option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table id=\"srvTab1t1AnswerDatatable\" class=\"table table-striped table-bordered table-hover smart-form\" aria-describedby=\"dt_basic_info\"><thead><tr><th>#</th><th>Асуултын нэр</th><th>Хувь</th><th>Идэвхтэй эсэх</th><th></th></tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td>" + value.NAME + "</td>";
                    valData += "<td>" + value.PER + "</td>";
                    valData += "<td><label class=\"checkbox\"><input" + value.IS_ACTIVE + " type=\"checkbox\" name=\"checkbox\" onclick=\"srvAnswerClick(this)\"/><i></i></label></td>";
                    valData += "<td>";
                    valData += '<div class="btn-group">';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditAnswerModal(this, 1,\'засах\');" data-target="#srvAnswerModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteAnswerModal(this,1);"><i class="fa fa-trash-o"></i></button>';
                    valData += '</div>';
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_srvTab1t1AnswerDatatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#srvTab1t1AnswerDatatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_srvTab1t1AnswerDatatable) {responsiveHelper_srvTab1t1AnswerDatatable = new ResponsiveDatatablesHelper($('#srvTab1t1AnswerDatatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_srvTab1t1AnswerDatatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_srvTab1t1AnswerDatatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"20px\" },{ \"sWidth\": \"20px\", \"bSortable\": false },{ \"sWidth\": \"45px\", \"bSortable\": false }]});";
                valData += "<\/script>";
                $("#divBindTab1t1AnswerTable").html(valData);
                hideLoader('loaderTab1t1Answer');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#srvTab1t1QuestionIsActive").change(function () {
        dataBindTab1t1QuestionDatatable();
    });
    $("#srvTab1t1AnswerIsActive").change(function () {
        dataBindTab1t1AnswerDatatable();
    });
    ///////tab1t2 
    function dataBindTab1t2Datatable() {
        var valData = '';
        showLoader('loaderTab1t2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT COUNT(1) as CNT FROM TBL_SRV_CLOSED WHERE YR=' + $("#srvTab1t2SelectYear option:selected").val() + ' AND SRV_TYPE_ID=1"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == "0") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/SrvAnswerList",
                        data: '{"type": "1"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            var arrAnswerTotalListName = new Array(0);
                            var arrAnswerTotalListPer = new Array(0);
                            $($.parseJSON(data.d)).each(function (index, value) {
                                arrAnswerTotalListName = new Array(value.NAMELIST.split(',').length);
                                arrAnswerTotalListPer = new Array(value.PERLIST.split(',').length);
                                arrAnswerTotalListName = value.NAMELIST.split(',');
                                arrAnswerTotalListPer = value.PERLIST.split(',');
                            });
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/SrvTab1t2Datatable",
                                data: '{"yr":"' + $("#srvTab1t2SelectYear option:selected").val() + '", "yrhf":"' + $("#srvTab1t2SelectHalfYear option:selected").val() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    valData = '';
                                    var isDisabled = '';
                                    var arrstid = new Array(0);
                                    var arrstname = new Array(0);
                                    var arranswerid = new Array(0);
                                    var arrischeck = new Array(0);
                                    if ($("#srvTab1t2SelectYear option:selected").val() != $('#indexCurrentYear').html() || $("#srvTab1t2SelectHalfYear option:selected").val() != $('#indexCurrentYearHalf').html()) {
                                        isDisabled = " disabled=\"disabled\"";
                                    }
                                    $($.parseJSON(data.d)).each(function (index, value) {
                                        arrstid = new Array(value.STIDLIST.split('~').length);
                                        arrstname = new Array(value.STNAMELIST.split('~').length);
                                        arrstid = value.STIDLIST.split('~');
                                        arrstname = value.STNAMELIST.split('~');

                                        valData += "<div class=\"question_item\">Асуулт: <b>" + value.QNAME + "</b> <button" + isDisabled + " class=\"btn btn-primary\" type=\"submit\" style=\"padding:3px;\" onclick=\"srvSave(this,'" + value.QID + "','" + value.STIDLIST.replace(/~/g, ',') + "','" + value.SRVTYPE + "')\"><i class=\"fa fa-save\"></i> Хадгалах</button></div>";
                                        valData += "<ul id=\"" + value.SRVTYPE + "-" + value.QID + "\">";
                                        valData += "<li class=\"nameWrapper\" style=\"margin-left:0; margin-right:0;\"><ul class=\"smartform poll_item\"><label>&nbsp;</label>";
                                        for (var i = 0; i<arrAnswerTotalListName.length; i++){
                                            valData += "<li style=\"height: 25px; text-align:left;\">" + arrAnswerTotalListName[i] + " <span class=\"pull-right\">/" + arrAnswerTotalListPer[i] + "%/</span></li>";
                                        }
                                        valData += "</ul></li>";
                                        for (var i = 0; i < arrstid.length; i++) {
                                            valData += "<li class=\"nameWrapper\"><label>" + arrstname[i] + "</label>";
                                            valData += "<ul class=\"smartform poll_item\">";
                                            arranswerid = new Array(value.ANSWERIDLISTLIST.split('~')[i].split(',').length);
                                            arrischeck = new Array(value.ISCHECKLISTLIST.split('~')[i].split(',').length);
                                            arranswerid = value.ANSWERIDLISTLIST.split('~')[i].split(',');
                                            arrischeck = value.ISCHECKLISTLIST.split('~')[i].split(',');
                                            for (var y = 0; y < arranswerid.length; y++) {
                                                if (arrischeck[y] == "0") valData += "<li><label class=\"radio\"><input" + isDisabled + " type=\"radio\" value=\"" + arranswerid[y] + "\" name=\"" + value.QID + "-" + arrstid[i] + "\"/><i></i>" + arrAnswerTotalListPer[y] + "</label></li>";
                                                else valData += "<li><label class=\"radio\"><input" + isDisabled + " checked=\"checked\" type=\"radio\" value=\"" + arranswerid[y] + "\" name=\"" + value.QID + "-" + arrstid[i] + "\"/><i></i>" + arrAnswerTotalListPer[y] + "</label></li>";
                                            }
                                            valData += "</ul>";
                                            valData += "</li>";
                                        }
                                        valData += "</ul>";
                                    });
                                    if (valData == '') valData = '<div>Илэрц алга...</div>';
                                    $("#divBindTab1t2Table").html(valData);
                                    $("#srvTab1t2CurrentYear").text($("#srvTab1t2SelectYear option:selected").val());
                                    $("#srvTab1t2CurrentHalfYear").text($("#srvTab1t2SelectHalfYear option:selected").val());
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
                }
                else {
                    $("#divBindTab1t2Table").html($('#srvTab1t2SelectYear').val() + ' оны үнэлгээ хаагдсан байна. ТХЭУГ-ДАХШҮХ-д хандана уу...');
                    hideLoader('loaderTab1t2');
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
    function srvSave(el, questionid, stafflist, srvtype) {
        var valYr = "";
        var valYrHf = "";
        var valQrtr = "";
        if (srvtype == "1") {
            valYr = $('#srvTab1t2SelectYear option:selected').val();
            valYrHf = $('#srvTab1t2SelectHalfYear option:selected').val();
            valQrtr = '0';
        }
        else if (srvtype == "2") {
            valYr = $('#srvTab2t2SelectYear option:selected').val();
            valYrHf = $('#srvTab2t2SelectHalfYear option:selected').val();
            valQrtr = '0';
        }
        else if (srvtype == "3") {
            valYr = $('#srvTab3t2SelectYear option:selected').val();
            valYrHf = $('#srvTab3t2SelectHalfYear option:selected').val();
            valQrtr = '0';
        }
        else if (srvtype == "4") {
            valYr = $('#srvTab4t2SelectYear option:selected').val();
            valYrHf = $('#srvTab4t2SelectHalfYear option:selected').val();
            valQrtr = '0';
        }

        var stafflist1 = "";
        var staffevallist1 = "";
        var arrstafflist = stafflist.split(',');
        var arrstafflist1 = "";

        var arrstafflist2 = Array();

        for (var i = 0; i < arrstafflist.length; i++) {
            if ($('#' + srvtype + '-' + questionid).find('li').find("input[name=" + questionid + "-" + arrstafflist[i] + "]:checked").prop("checked") == true) {
                stafflist1 += arrstafflist[i] + ",";
                staffevallist1 += arrstafflist[i] + "-" + $('#' + srvtype + '-' + questionid).find('li').find("input[name=" + questionid + "-" + arrstafflist[i] + "]:checked").val() + ",";
            }
        }
        arrstafflist1 = stafflist1.slice(0, -1).split(',');

        $.each(arrstafflist, function (i, val) {
            if ($.inArray(val, arrstafflist1) < 0)
                arrstafflist2.push(val);
        });
        if (arrstafflist2.length == 0) {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/SRV_INSUPT",
                data: '{"P_STAFFEVALLIST":"' + staffevallist1.slice(0, -1) + '", "P_QUESTION_ID":"' + questionid + '", "P_SRV_TYPE_ID":"' + srvtype + '", "P_YR":"' + valYr + '", "P_YR_HF":"' + valYrHf + '", "P_QRTR":"' + valQrtr + '", "P_STAFFID":"' + $('#indexUserId').html() + '"}',
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
        }
        else {
            alert('Үнэлгээг дутуу оруулсан байна. Бүрэн оруулна уу!');
        }
    }
    $("#srvTab1t2SelectYear").change(function () {
        dataBindTab1t2Datatable();
    });
    $("#srvTab1t2SelectHalfYear").change(function () {
        dataBindTab1t2Datatable();
    });

    ////////tab1t3
    function dataBindTab1t3DataTableFirst() {
        var userGazarId = $('#indexUserGazarId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr": "' + $('#srvTab1t3SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                })
                $('#srvTab1t3SelectGazar').html(valData);
                $('#srvTab1t3SelectGazar').val(userGazarId);
                if (!funcCheckRoles('1,2')) {
                    $('#srvTab1t3SelectGazar').prop('disabled', true);
                }
                dataBindTab1t3Datatable();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab1t3Datatable() {
        var valData = '';
        showLoader('loaderTab1t3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/SrvTab1t3Datatable",
            data: '{"yr":"' + $("#srvTab1t3SelectYear option:selected").val() + '", "yrhf":"' + $("#srvTab1t3SelectHalfYear option:selected").val() + '", "brid":"' + $("#srvTab1t3SelectGazar option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                var per = 0;
                var pnt = 0;
                var i = 0;
                valData += "<table id=\"srvTab1t3Datatable\" style=\"border:1px solid #000; border-collapse:collapse; font-family:'Times New Roman'; font-size:13px; width:100%\"><thead>";
                valData += "<tr style=\"background-color:lightgray;\">";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Газрын нэр</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Газрын дарга</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Асуулт</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хувь</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Үнэлгээ</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Оноо</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.BR_NAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.STNAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + replaceDatabaseToDisplay(value.QUESTION_NAME) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\"><span class=\"badge " + value.PERCOLOR + "\">" + parseFloat(value.PER).toFixed(1) + "</span></td>";
                    if (parseFloat(value.PER) > 90) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Маш сайн</td>";
                    else if (parseFloat(value.PER) > 80 && parseFloat(value.PER) <= 90) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Сайн</td>";
                    else if (parseFloat(value.PER) > 70 && parseFloat(value.PER) <= 80) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хангалттай</td>";
                    else if (parseFloat(value.PER) > 60 && parseFloat(value.PER) <= 70) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Сайжруулах шаардлагатай</td>";
                    else if (parseFloat(value.PER) <= 60) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хангалтгүй</td>";
                    else valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\"></td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.POINT + "</td>";
                    valData += "</tr>";
                    per += parseFloat(value.PER);
                    pnt += parseFloat(value.POINT);
                    i++;
                });
                valData += "</tbody>";
                valData += "<tfoot>";
                valData += "<tr style=\"background-color:lightgray;\">";
                valData += "<td colspan=\"3\" style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">НИЙТ ДҮН</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + parseFloat(per / i).toFixed(2) + "</td>";
                if (parseFloat(per / i) > 90) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Маш сайн</td>";
                else if (parseFloat(per / i) > 80 && parseFloat(per / i) <= 90) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Сайн</td>";
                else if (parseFloat(per / i) > 70 && parseFloat(per / i) <= 80) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хангалттай</td>";
                else if (parseFloat(per / i) > 60 && parseFloat(per / i) <= 70) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Сайжруулах шаардлагатай</td>";
                else if (parseFloat(per / i) <= 60) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хангалтгүй</td>";
                else valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\"></td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + parseFloat(pnt / i).toFixed(2) + "</td>";
                valData += "</tr>";
                valData += "</tfoot>";
                valData += "</table>";
                $("#divsrvTab1t3Datatable").html(valData);
                $('#divsrvTab1t3Year').html($("#srvTab1t3SelectYear option:selected").val());
                $('#divsrvTab1t3HalfYear').html($("#srvTab1t3SelectHalfYear option:selected").text());
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
    $("#srvTab1t3SelectGazar").change(function () {
        dataBindTab1t3Datatable();
    });
    $("#srvTab1t3SelectYear").change(function () {
        dataBindTab1t3DataTableFirst();
    });
    $("#srvTab1t3SelectHalfYear").change(function () {
        dataBindTab1t3Datatable();
    });

    //tab2
    ///////tab2t1 
    function dataBindTab2t1QuestionDatatable() {
        showLoader('loaderTab2t1Question');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/SrvQuestionDatatable",
            data: '{"type":"2", "isactive":"' + $('#srvTab2t1QuestionIsActive option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table id=\"srvTab2t1QuestionDatatable\" class=\"table table-striped table-bordered table-hover smart-form\" width=\"100%\"><thead><tr><th>#</th><th>Асуултын нэр</th><th>Идэвхтэй эсэх</th><th></th></tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td>" + value.NAME + "</td>";
                    valData += "<td><label class=\"checkbox\"><input" + value.IS_ACTIVE + " type=\"checkbox\" name=\"checkbox\" onclick=\"srvQuestionClick(this)\"/><i></i></label></td>";
                    valData += "<td>";
                    valData += '<div class="btn-group">';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditQuestionModal(this, 2,\'засах\');" data-target="#srvQuestionModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteQuestionModal(this,2);"><i class="fa fa-trash-o"></i></button>';
                    valData += '</div>';
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_srvTab2t1QuestionDatatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#srvTab2t1QuestionDatatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_srvTab2t1QuestionDatatable) {responsiveHelper_srvTab2t1QuestionDatatable = new ResponsiveDatatablesHelper($('#srvTab2t1QuestionDatatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_srvTab2t1QuestionDatatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_srvTab2t1QuestionDatatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"20px\", \"bSortable\": false },{ \"sWidth\": \"45px\", \"bSortable\": false }]});";
                valData += "<\/script>";
                $("#divBindTab2t1QuestionTable").html(valData);
                hideLoader('loaderTab2t1Question');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab2t1AnswerDatatable() {
        showLoader('loaderTab2t1Answer');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/SrvAnswerDatatable",
            data: '{"type":"2", "isactive":"' + $('#srvTab2t1AnswerIsActive option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table id=\"srvTab2t1AnswerDatatable\" class=\"table table-striped table-bordered table-hover smart-form\" aria-describedby=\"dt_basic_info\"><thead><tr><th>#</th><th>Асуултын нэр</th><th>Хувь</th><th>Идэвхтэй эсэх</th><th></th></tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td>" + value.NAME + "</td>";
                    valData += "<td>" + value.PER + "</td>";
                    valData += "<td><label class=\"checkbox\"><input" + value.IS_ACTIVE + " type=\"checkbox\" name=\"checkbox\" onclick=\"srvAnswerClick(this)\"/><i></i></label></td>";
                    valData += "<td>";
                    valData += '<div class="btn-group">';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditAnswerModal(this, 2,\'засах\');" data-target="#srvAnswerModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteAnswerModal(this,2);"><i class="fa fa-trash-o"></i></button>';
                    valData += '</div>';
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_srvTab2t1AnswerDatatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#srvTab2t1AnswerDatatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_srvTab2t1AnswerDatatable) {responsiveHelper_srvTab2t1AnswerDatatable = new ResponsiveDatatablesHelper($('#srvTab2t1AnswerDatatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_srvTab2t1AnswerDatatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_srvTab2t1AnswerDatatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"20px\" },{ \"sWidth\": \"20px\", \"bSortable\": false },{ \"sWidth\": \"45px\", \"bSortable\": false }]});";
                valData += "<\/script>";
                $("#divBindTab2t1AnswerTable").html(valData);
                hideLoader('loaderTab2t1Answer');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#srvTab2t1QuestionIsActive").change(function () {
        dataBindTab2t1QuestionDatatable();
    });
    $("#srvTab2t1AnswerIsActive").change(function () {
        dataBindTab2t1AnswerDatatable();
    });
    ///////tab2t2 
    function dataBindTab2t2DataTableFirst() {
        var userGazarId = $('#indexUserGazarId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr": "' + $('#srvTab2t2SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                })
                $('#srvTab2t2SelectGazar').html(valData);
                $('#srvTab2t2SelectGazar').val(userGazarId);
                if (!funcCheckRoles('1')) {
                    $('#srvTab2t2SelectGazar').prop('disabled', true);
                }
                else {
                    $('#srvTab2t2SelectGazar').prop('disabled', false);
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                    data: '{"qry": "SELECT COUNT(1) as CNT FROM TBL_SRV_CLOSED WHERE YR=' + $('#srvTab2t2SelectYear option:selected').val() + ' AND SRV_TYPE_ID=2"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        if (data.d == "0") {
                            dataBindTab2t2Datatable();
                        }
                        else $("#divBindTab2t2Table").html($('#srvTab2t2SelectYear').val() + ' оны үнэлгээ хаагдсан байна. ТХЭУГ-ДАХШҮХ-д хандана уу...');
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
    function dataBindTab2t2Datatable() {
        var valData = '';
        showLoader('loaderTab2t2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT COUNT(1) as CNT FROM TBL_SRV_CLOSED WHERE YR=' + $("#srvTab2t2SelectYear option:selected").val() + ' AND SRV_TYPE_ID=2"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == "0") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/SrvAnswerList",
                        data: '{"type": "2"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            var arrAnswerTotalListName = new Array(0);
                            var arrAnswerTotalListPer = new Array(0);
                            $($.parseJSON(data.d)).each(function (index, value) {
                                arrAnswerTotalListName = new Array(value.NAMELIST.split(',').length);
                                arrAnswerTotalListPer = new Array(value.PERLIST.split(',').length);
                                arrAnswerTotalListName = value.NAMELIST.split(',');
                                arrAnswerTotalListPer = value.PERLIST.split(',');
                            });
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/SrvTab2t2Datatable",
                                data: '{"yr":"' + $("#srvTab2t2SelectYear option:selected").val() + '", "yrhf":"' + $("#srvTab2t2SelectHalfYear option:selected").val() + '", "gazarid":"' + $("#srvTab2t2SelectGazar option:selected").val() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    valData = '';
                                    var isDisabled = '';
                                    var arrstid = new Array(0);
                                    var arrstname = new Array(0);
                                    var arranswerid = new Array(0);
                                    var arrischeck = new Array(0);
                                    if ($("#srvTab2t2SelectYear option:selected").val() != $('#indexCurrentYear').html() || $("#srvTab2t2SelectHalfYear option:selected").val() != $('#indexCurrentYearHalf').html()) {
                                        isDisabled = " disabled=\"disabled\"";
                                    }
                                    $($.parseJSON(data.d)).each(function (index, value) {
                                        arrstid = new Array(value.STIDLIST.split('~').length);
                                        arrstname = new Array(value.STNAMELIST.split('~').length);
                                        arrstid = value.STIDLIST.split('~');
                                        arrstname = value.STNAMELIST.split('~');

                                        valData += "<div class=\"question_item\">Асуулт: <b>" + value.QNAME + "</b> <button" + isDisabled + " class=\"btn btn-primary\" type=\"submit\" style=\"padding:3px;\" onclick=\"srvSave(this,'" + value.QID + "','" + value.STIDLIST.replace(/~/g, ',') + "','" + value.SRVTYPE + "')\"><i class=\"fa fa-save\"></i> Хадгалах</button></div>";
                                        valData += "<ul id=\"" + value.SRVTYPE + "-" + value.QID + "\">";

                                        valData += "<li class=\"nameWrapper\" style=\"margin-left:0; margin-right:0;\"><ul class=\"smartform poll_item\"><label>&nbsp;</label>";
                                        for (var i = 0; i < arrAnswerTotalListName.length; i++) {
                                            valData += "<li style=\"height: 25px; text-align:left;\">" + arrAnswerTotalListName[i] + " <span class=\"pull-right\">/" + arrAnswerTotalListPer[i] + "%/</span></li>";
                                        }
                                        valData += "</ul></li>";

                                        for (var i = 0; i < arrstid.length; i++) {
                                            valData += "<li class=\"nameWrapper\"><label>" + arrstname[i] + "</label>";
                                            valData += "<ul class=\"smartform poll_item\">";
                                            arranswerid = new Array(value.ANSWERIDLISTLIST.split('~')[i].split(',').length);
                                            arrischeck = new Array(value.ISCHECKLISTLIST.split('~')[i].split(',').length);
                                            arranswerid = value.ANSWERIDLISTLIST.split('~')[i].split(',');
                                            arrischeck = value.ISCHECKLISTLIST.split('~')[i].split(',');
                                            for (var y = 0; y < arranswerid.length; y++) {
                                                if (arrischeck[y] == "0") valData += "<li><label class=\"radio\"><input" + isDisabled + " type=\"radio\" value=\"" + arranswerid[y] + "\" name=\"" + value.QID + "-" + arrstid[i] + "\"/><i></i>" + arrAnswerTotalListPer[y] + "</label></li>";
                                                else valData += "<li><label class=\"radio\"><input" + isDisabled + " checked=\"checked\" type=\"radio\" value=\"" + arranswerid[y] + "\" name=\"" + value.QID + "-" + arrstid[i] + "\"/><i></i>" + arrAnswerTotalListPer[y] + "</label></li>";
                                            }
                                            valData += "</ul>";
                                            valData += "</li>";
                                        }
                                        valData += "</ul>";
                                    });
                                    if (valData == '') valData = '<div>Илэрц алга...</div>';
                                    $("#divBindTab2t2Table").html(valData);
                                    $("#srvTab2t2CurrentYear").text($("#srvTab2t2SelectYear option:selected").val());
                                    $("#srvTab2t2CurrentHalfYear").text($("#srvTab2t2SelectHalfYear option:selected").val());
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
                else {
                    $("#divBindTab2t2Table").html($('#srvTab2t2SelectYear option:selected').val() + ' оны ' + $('#srvTab2t2SelectHalfYear option:selected').text() + '-н үнэлгээ хаагдсан байна. ТХЭУГ-ДАХШҮХ-д хандана уу...');
                    hideLoader('loaderTab2t2');
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
    $("#srvTab2t2SelectYear").change(function () {
        dataBindTab2t2DataTableFirst();
    });
    $("#srvTab2t2SelectHalfYear").change(function () {
        dataBindTab2t2Datatable();
    });
    $("#srvTab2t2SelectGazar").change(function () {
        dataBindTab2t2Datatable();
    });
    ////////tab2t3
    function dataBindTab2t3DataTableFirst() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr": "' + $('#srvTab2t3SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                })
                $('#srvTab2t3SelectGazar').html(valData);
                $('#srvTab2t3SelectGazar').val(userGazarId);
                if (!funcCheckRoles('1')) {
                    $('#srvTab2t3SelectGazar').prop('disabled', true);
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                    data: '{"yr": "' + $('#srvTab2t3SelectYear option:selected').val() + '", "gazar": "' + $("#srvTab2t3SelectGazar option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        })
                        $("#srvTab2t3SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                        $("#srvTab2t3SelectHeltes").val(userHeltesId);
                        if (!funcCheckRoles('3')) {
                            $('#srvTab2t3SelectHeltes').prop('disabled', true);
                        }
                        dataBindTab2t3Datatable();
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
    function dataBindTab2t3Datatable() {
        var valData = '';
        showLoader('loaderTab2t3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/SrvTab2t3Datatable",
            data: '{"yr":"' + $("#srvTab2t3SelectYear option:selected").val() + '", "yrhf":"' + $("#srvTab2t3SelectHalfYear option:selected").val() + '", "gazarid":"' + $("#srvTab2t3SelectGazar option:selected").val() + '", "heltesid":"' + $("#srvTab2t3SelectHeltes option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                var per = 0;
                var pnt = 0;
                var i = 0;
                valData += "<table id=\"srvTab2t3Datatable\" style=\"border:1px solid #000; border-collapse:collapse; font-family:'Times New Roman'; font-size:13px; width:100%\"><thead><tr style=\"background-color:lightgray;\">";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Газрын нэр</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хэлтсийн дарга</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Асуулт</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хувь</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Үнэлгээ</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Оноо</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.BR_NAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.STNAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + replaceDatabaseToDisplay(value.QUESTION_NAME) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\"><span class=\"badge " + value.PERCOLOR + "\">" + parseFloat(value.PER).toFixed(1) + "</span></td>";
                    if (parseFloat(value.PER) > 90) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Маш сайн</td>";
                    else if (parseFloat(value.PER) > 80 && parseFloat(value.PER) <= 90) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Сайн</td>";
                    else if (parseFloat(value.PER) > 70 && parseFloat(value.PER) <= 80) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хангалттай</td>";
                    else if (parseFloat(value.PER) > 60 && parseFloat(value.PER) <= 70) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Сайжруулах шаардлагатай</td>";
                    else if (parseFloat(value.PER) <= 60) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хангалтгүй</td>";
                    else valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\"></td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.POINT + "</td>";
                    valData += "</tr>";
                    per += parseFloat(value.PER);
                    pnt += parseFloat(value.POINT);
                    i++;
                });
                valData += "</tbody>";
                valData += "<tfoot>";
                valData += "<tr style=\"background-color:lightgray;\">";
                valData += "<td colspan=\"3\" style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">НИЙТ ДҮН</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + parseFloat(per / i).toFixed(2) + "</td>";
                if (parseFloat(per / i) > 90) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Маш сайн</td>";
                else if (parseFloat(per / i) > 80 && parseFloat(per / i) <= 90) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Сайн</td>";
                else if (parseFloat(per / i) > 70 && parseFloat(per / i) <= 80) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хангалттай</td>";
                else if (parseFloat(per / i) > 60 && parseFloat(per / i) <= 70) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Сайжруулах шаардлагатай</td>";
                else if (parseFloat(per / i) <= 60) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хангалтгүй</td>";
                else valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\"></td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + parseFloat(pnt / i).toFixed(2) + "</td>";
                valData += "</tr>";
                valData += "</tfoot>";
                valData += "</table>";
                $("#divsrvTab2t3Datatable").html(valData);
                $('#divsrvTab2t3Year').html($("#srvTab2t3SelectYear option:selected").val());
                $('#divsrvTab2t3HalfYear').html($("#srvTab2t3SelectHalfYear option:selected").text());
                hideLoader('loaderTab2t3');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#srvTab2t3SelectGazar").change(function () {
        if ($("#srvTab2t3SelectGazar option:selected").val() == "") {
            $("#srvTab2t3SelectHeltes").html("<option selected value=\"\">Бүгд</option>");
            $("#srvTab2t3SelectHeltes").prop("disabled", true);
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr": "' + $('#srvTab2t3SelectYear option:selected').val() + '", "gazar": "' + $("#srvTab2t3SelectGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    })
                    $("#srvTab2t3SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                    $("#srvTab2t3SelectHeltes").prop("disabled", false);
                    dataBindTab2t3Datatable();
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
    $("#srvTab2t3SelectHeltes, #srvTab2t3SelectHalfYear").change(function () {
        dataBindTab2t3Datatable();
    });
    $("#srvTab2t3SelectYear").change(function () {
        dataBindTab2t3DataTableFirst();
    });

    //tab3
    ///////tab3t1 
    function dataBindTab3t1QuestionDatatable() {
        showLoader('loaderTab3t1Question');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/SrvQuestionDatatable",
            data: '{"type":"3", "isactive":"' + $('#srvTab3t1QuestionIsActive option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table id=\"srvTab3t1QuestionDatatable\" class=\"table table-striped table-bordered table-hover smart-form\" width=\"100%\"><thead><tr><th>#</th><th>Асуултын нэр</th><th>Идэвхтэй эсэх</th><th></th></tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td>" + value.NAME + "</td>";
                    valData += "<td><label class=\"checkbox\"><input" + value.IS_ACTIVE + " type=\"checkbox\" name=\"checkbox\" onclick=\"srvQuestionClick(this)\"/><i></i></label></td>";
                    valData += "<td>";
                    valData += '<div class="btn-group">';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditQuestionModal(this, 3,\'засах\');" data-target="#srvQuestionModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteQuestionModal(this,3);"><i class="fa fa-trash-o"></i></button>';
                    valData += '</div>';
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_srvTab3t1QuestionDatatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#srvTab3t1QuestionDatatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_srvTab3t1QuestionDatatable) {responsiveHelper_srvTab3t1QuestionDatatable = new ResponsiveDatatablesHelper($('#srvTab3t1QuestionDatatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_srvTab3t1QuestionDatatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_srvTab3t1QuestionDatatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"20px\", \"bSortable\": false },{ \"sWidth\": \"45px\", \"bSortable\": false }]});";
                valData += "<\/script>";
                $("#divBindTab3t1QuestionTable").html(valData);
                hideLoader('loaderTab3t1Question');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab3t1AnswerDatatable() {
        showLoader('loaderTab3t1Answer');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/SrvAnswerDatatable",
            data: '{"type":"3", "isactive":"' + $('#srvTab3t1AnswerIsActive option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table id=\"srvTab3t1AnswerDatatable\" class=\"table table-striped table-bordered table-hover smart-form\" aria-describedby=\"dt_basic_info\"><thead><tr><th>#</th><th>Асуултын нэр</th><th>Хувь</th><th>Идэвхтэй эсэх</th><th></th></tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td>" + value.NAME + "</td>";
                    valData += "<td>" + value.PER + "</td>";
                    valData += "<td><label class=\"checkbox\"><input" + value.IS_ACTIVE + " type=\"checkbox\" name=\"checkbox\" onclick=\"srvAnswerClick(this)\"/><i></i></label></td>";
                    valData += "<td>";
                    valData += '<div class="btn-group">';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditAnswerModal(this, 3,\'засах\');" data-target="#srvAnswerModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteAnswerModal(this,3);"><i class="fa fa-trash-o"></i></button>';
                    valData += '</div>';
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_srvTab3t1AnswerDatatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#srvTab3t1AnswerDatatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_srvTab3t1AnswerDatatable) {responsiveHelper_srvTab3t1AnswerDatatable = new ResponsiveDatatablesHelper($('#srvTab3t1AnswerDatatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_srvTab3t1AnswerDatatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_srvTab3t1AnswerDatatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"20px\" },{ \"sWidth\": \"20px\", \"bSortable\": false },{ \"sWidth\": \"45px\", \"bSortable\": false }]});";
                valData += "<\/script>";
                $("#divBindTab3t1AnswerTable").html(valData);
                hideLoader('loaderTab3t1Answer');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#srvTab3t1QuestionIsActive").change(function () {
        dataBindTab3t1QuestionDatatable();
    });
    $("#srvTab3t1AnswerIsActive").change(function () {
        dataBindTab3t1AnswerDatatable();
    });
    ///////tab3t2 
    function dataBindTab3t2DataTableFirst() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr": "' + $('#srvTab3t2SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                })
                $('#srvTab3t2SelectGazar').html(valData);
                $('#srvTab3t2SelectGazar').val(userGazarId);
                if (!funcCheckRoles('1')) {
                    $('#srvTab3t2SelectGazar').prop('disabled', true);
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                    data: '{"yr": "' + $('#srvTab3t2SelectYear option:selected').val() + '", "gazar": "' + $("#srvTab3t2SelectGazar option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        })
                        $("#srvTab3t2SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                        //if (!funcCheckRoles('3')) {
                            $("#srvTab3t2SelectHeltes").val(userHeltesId);
                            $('#srvTab3t2SelectHeltes').prop('disabled', true);
                        //}
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                            data: '{"qry": "SELECT COUNT(1) as CNT FROM TBL_SRV_CLOSED WHERE YR=' + $('#srvTab3t2SelectYear option:selected').val() + ' AND SRV_TYPE_ID=3"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                if (data.d == "0") {
                                    dataBindTab3t2Datatable();
                                }
                                else $("#divBindTab3t2Table").html($('#srvTab3t2SelectYear').val() + ' оны үнэлгээ хаагдсан байна. ТХЭУГ-ДАХШҮХ-д хандана уу...');
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
    function dataBindTab3t2Datatable() {
        var valData = '';
        showLoader('loaderTab3t2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT COUNT(1) as CNT FROM TBL_SRV_CLOSED WHERE YR=' + $("#srvTab3t2SelectYear option:selected").val() + ' AND INTERVAL=' + $("#srvTab3t2SelectHalfYear option:selected").val() + ' AND SRV_TYPE_ID=3"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == "0") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/SrvAnswerList",
                        data: '{"type": "3"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            var arrAnswerTotalListName = new Array(0);
                            var arrAnswerTotalListPer = new Array(0);
                            $($.parseJSON(data.d)).each(function (index, value) {
                                arrAnswerTotalListName = new Array(value.NAMELIST.split(',').length);
                                arrAnswerTotalListPer = new Array(value.PERLIST.split(',').length);
                                arrAnswerTotalListName = value.NAMELIST.split(',');
                                arrAnswerTotalListPer = value.PERLIST.split(',');
                            });
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/SrvTab3t2Datatable",
                                data: '{"yr":"' + $("#srvTab3t2SelectYear option:selected").val() + '", "yrhf":"' + $("#srvTab3t2SelectHalfYear option:selected").val() + '", "gazarid":"' + $("#srvTab3t2SelectGazar option:selected").val() + '", "heltesid":"' + $("#srvTab3t2SelectHeltes option:selected").val() + '", "st_id":"' + $('#indexUserId').html() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    valData = '';
                                    var isDisabled = '';
                                    var arrstid = new Array(0);
                                    var arrstname = new Array(0);
                                    var arranswerid = new Array(0);
                                    var arrischeck = new Array(0);
                                    if ($("#srvTab3t2SelectYear option:selected").val() != $('#indexCurrentYear').html() || $("#srvTab3t2SelectHalfYear option:selected").val() != $('#indexCurrentYearHalf').html()) {
                                        isDisabled = " disabled=\"disabled\"";
                                    }
                                    $($.parseJSON(data.d)).each(function (index, value) {
                                        arrstid = new Array(value.STIDLIST.split('~').length);
                                        arrstname = new Array(value.STNAMELIST.split('~').length);
                                        arrstid = value.STIDLIST.split('~');
                                        arrstname = value.STNAMELIST.split('~');

                                        valData += "<div class=\"question_item\">Асуулт: <b>" + value.QNAME + "</b> <button" + isDisabled + " class=\"btn btn-primary\" type=\"submit\" style=\"padding:3px;\" onclick=\"srvSave(this,'" + value.QID + "','" + value.STIDLIST.replace(/~/g, ',') + "','" + value.SRVTYPE + "')\"><i class=\"fa fa-save\"></i> Хадгалах</button></div>";
                                        valData += "<ul id=\"" + value.SRVTYPE + "-" + value.QID + "\">";

                                        valData += "<li class=\"nameWrapper\" style=\"margin-left:0; margin-right:0;\"><ul class=\"smartform poll_item\"><label>&nbsp;</label>";
                                        for (var i = 0; i < arrAnswerTotalListName.length; i++) {
                                            valData += "<li style=\"height: 25px; text-align:left;\">" + arrAnswerTotalListName[i] + " <span class=\"pull-right\">/" + arrAnswerTotalListPer[i] + "%/</span></li>";
                                        }
                                        valData += "</ul></li>";

                                        for (var i = 0; i < arrstid.length; i++) {
                                            valData += "<li class=\"nameWrapper\"><label>" + arrstname[i] + "</label>";
                                            valData += "<ul class=\"smartform poll_item\">";
                                            arranswerid = new Array(value.ANSWERIDLISTLIST.split('~')[i].split(',').length);
                                            arrischeck = new Array(value.ISCHECKLISTLIST.split('~')[i].split(',').length);
                                            arranswerid = value.ANSWERIDLISTLIST.split('~')[i].split(',');
                                            arrischeck = value.ISCHECKLISTLIST.split('~')[i].split(',');
                                            for (var y = 0; y < arranswerid.length; y++) {
                                                if (arrischeck[y] == "0") valData += "<li><label class=\"radio\"><input" + isDisabled + " type=\"radio\" value=\"" + arranswerid[y] + "\" name=\"" + value.QID + "-" + arrstid[i] + "\"/><i></i>" + arrAnswerTotalListPer[y] + "</label></li>";
                                                else valData += "<li><label class=\"radio\"><input" + isDisabled + " checked=\"checked\" type=\"radio\" value=\"" + arranswerid[y] + "\" name=\"" + value.QID + "-" + arrstid[i] + "\"/><i></i>" + arrAnswerTotalListPer[y] + "</label></li>";
                                            }
                                            valData += "</ul>";
                                            valData += "</li>";
                                        }
                                        valData += "</ul>";
                                    });
                                    if (valData == '') valData = '<div>Илэрц алга...</div>';
                                    $("#divBindTab3t2Table").html(valData);
                                    $("#srvTab3t2CurrentYear").text($("#srvTab3t2SelectYear option:selected").val());
                                    $("#srvTab3t2CurrentHalfYear").text($("#srvTab3t2SelectHalfYear option:selected").text());
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
                else {
                    $("#divBindTab3t2Table").html($('#srvTab3t2SelectYear option:selected').val() + ' оны ' + $('#srvTab3t2SelectHalfYear option:selected').text() + '-н үнэлгээ хаагдсан байна. ТХЭУГ-ДАХШҮХ-д хандана уу...');
                    hideLoader('loaderTab3t2');
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
    $("#srvTab3t2SelectYear").change(function () {
        dataBindTab3t2DataTableFirst();
    });
    $("#srvTab3t2SelectHalfYear, #srvTab3t2SelectHeltes").change(function () {
        dataBindTab3t2Datatable();
    });
    $("#srvTab3t2SelectGazar").change(function () {
        //if ($("#srvTab3t2SelectGazar option:selected").val() == "") {
        //    $("#srvTab3t2SelectHeltes").html("<option value=\"\">Бүгд</option>");
        //    $("#srvTab3t2SelectHeltes").prop("disabled", true);
        //    dataBindTab3t2Datatable();
        //}
        //else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr": "' + $('#srvTab3t2SelectYear option:selected').val() + '", "gazar": "' + $("#srvTab3t2SelectGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    })
                    $("#srvTab3t2SelectHeltes").html(valData);
                    $("#srvTab3t2SelectHeltes").prop("disabled", false);
                    dataBindTab3t2Datatable();
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
        //}
    });
    ////////tab3t3
    function dataBindTab3t3DataTableFirst() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr": "' + $('#srvTab3t3SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                })
                $('#srvTab3t3SelectGazar').html(valData);
                $('#srvTab3t3SelectGazar').val(userGazarId);
                if (!funcCheckRoles('1')) {
                    $('#srvTab3t3SelectGazar').prop('disabled', true);
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                    data: '{"yr": "' + $('#srvTab3t3SelectYear option:selected').val() + '", "gazar": "' + $("#srvTab3t3SelectGazar option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        })
                        $("#srvTab3t3SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                        $("#srvTab3t3SelectHeltes").val(userHeltesId);
                        if (!funcCheckRoles('3')) {
                            $('#srvTab3t3SelectHeltes').prop('disabled', true);
                            
                        }
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/GetStaffListForDDL",
                            data: '{"yr": "' + $('#srvTab3t3SelectYear option:selected').val() + '", "gazar": "' + $("#srvTab3t3SelectGazar option:selected").val() + '", "heltes":"' + $("#srvTab3t3SelectHeltes option:selected").val() + '"}',
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
                                $("#srvTab3t3SelectStaff").html('<option value="">Бүгд</option>' + valData);
                                $("#srvTab3t3SelectStaff").val($('#indexUserId').html());
                                if (!funcCheckRoles('5')) {
                                    $('#srvTab3t3SelectStaff').prop('disabled', true);
                                }
                                dataBindTab3t3Datatable();
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
    function dataBindTab3t3Datatable() {
        var valData = '';
        showLoader('loaderTab3t3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/SrvTab3t3Datatable",
            data: '{"yr":"' + $("#srvTab3t3SelectYear option:selected").val() + '", "yrhf":"' + $("#srvTab3t3SelectHalfYear option:selected").val() + '", "gazarid":"' + $("#srvTab3t3SelectGazar option:selected").val() + '", "heltesid":"' + $("#srvTab3t3SelectHeltes option:selected").val() + '", "staffid":"' + $("#srvTab3t3SelectStaff option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                var per = 0;
                var i = 0;
                valData += "<table id=\"srvTab3t3Datatable\" style=\"border:1px solid #000; border-collapse:collapse; font-family:'Times New Roman'; font-size:13px; width:100%\"><thead><tr style=\"background-color:lightgray;\">";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">#</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Газар нэгж</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Ажилтан</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Асуулт</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хувь</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Үнэлгээ</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.ROWNO + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + replaceDatabaseToDisplay(value.NEGJ) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + replaceDatabaseToDisplay(value.ST_NAME) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + replaceDatabaseToDisplay(value.QUESTION_NAME) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\"><span class=\"badge " + value.PERCOLOR + "\">" + value.AVGPER + "</span></td>";
                    if (parseFloat(value.AVGPER) > 90) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Маш сайн</td>";
                    else if (parseFloat(value.AVGPER) > 80 && parseFloat(value.AVGPER) <= 90) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Сайн</td>";
                    else if (parseFloat(value.AVGPER) > 70 && parseFloat(value.AVGPER) <= 80) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хангалттай</td>";
                    else if (parseFloat(value.AVGPER) > 60 && parseFloat(value.AVGPER) <= 70) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Сайжруулах шаардлагатай</td>";
                    else if (parseFloat(value.AVGPER) <= 60) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хангалтгүй</td>";
                    else valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\"></td>";
                    valData += "</tr>";
                    per += parseFloat(value.AVGPER);
                    i++;
                });
                valData += "</tbody>";
                valData += "<tfoot>";
                valData += "<tr style=\"background-color:lightgray;\">";
                valData += "<td colspan=\"4\" style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">НИЙТ ДҮН</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + parseFloat(per / i).toFixed(2) + "</td>";
                if (parseFloat(per / i) > 90) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Маш сайн</td>";
                else if (parseFloat(per / i) > 80 && parseFloat(per / i) <= 90) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Сайн</td>";
                else if (parseFloat(per / i) > 70 && parseFloat(per / i) <= 80) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хангалттай</td>";
                else if (parseFloat(per / i) > 60 && parseFloat(per / i) <= 70) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Сайжруулах шаардлагатай</td>";
                else if (parseFloat(per / i) <= 60) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хангалтгүй</td>";
                else valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\"></td>";
                valData += "</tr>";
                valData += "</tfoot>";
                valData += "</table>";
                $("#divsrvTab3t3Datatable").html(valData);
                $("#divsrvTab3t3Year").text($("#srvTab3t3SelectYear option:selected").val());
                $("#divsrvTab3t3HalfYear").text($("#srvTab3t3SelectHalfYear option:selected").text());
                hideLoader('loaderTab3t3');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#srvTab3t3SelectYear").change(function () {
        dataBindTab3t3DataTableFirst();
    });
    $("#srvTab3t3SelectHalfYear, #srvTab3t3SelectStaff").change(function () {
        dataBindTab3t3Datatable();
    });
    $("#srvTab3t3SelectHeltes").change(function () {
        if ($("#srvTab3t3SelectHeltes option:selected").val() == "") {
            $("#srvTab3t3SelectStaff").html("<option value=\"\">Бүгд</option>");
            $("#srvTab3t3SelectStaff").prop("disabled", true);
            dataBindTab3t3Datatable();
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetStaffListForDDL",
                data: '{"yr": "' + $('#srvTab3t3SelectYear option:selected').val() + '", "gazar": "' + $("#srvTab3t3SelectGazar option:selected").val() + '", "heltes":"' + $("#srvTab3t3SelectHeltes option:selected").val() + '"}',
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
                    $("#srvTab3t3SelectStaff").html('<option value="">Бүгд</option>' + valData);
                    $("#srvTab3t3SelectStaff").prop("disabled", false);
                    dataBindTab3t3Datatable();
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
    $("#srvTab3t3SelectGazar").change(function () {
        if ($("#srvTab3t3SelectGazar option:selected").val() == "") {
            $("#srvTab3t3SelectHeltes").html("<option selected value=\"\">Бүгд</option>");
            $("#srvTab3t3SelectHeltes").prop("disabled", true);
            $("#srvTab3t3SelectStaff").html("<option selected value=\"\">Бүгд</option>");
            $("#srvTab3t3SelectStaff").prop("disabled", true);
            dataBindTab3t3Datatable();
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr": "' + $('#srvTab3t3SelectYear option:selected').val() + '", "gazar": "' + $("#srvTab3t3SelectGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    })
                    $("#srvTab3t3SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                    $("#srvTab3t3SelectHeltes").prop("disabled", false);
                    $("#srvTab3t3SelectStaff").html("<option selected value=\"\">Бүгд</option>");
                    $("#srvTab3t3SelectStaff").prop("disabled", true);
                    dataBindTab3t3Datatable();
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
    ////////tab3t4
    function dataBindTab3t4DataTableFirst() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr": "' + $('#srvTab3t4SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                })
                $('#srvTab3t4SelectGazar').html(valData);
                $('#srvTab3t4SelectGazar').val(userGazarId);
                if (!funcCheckRoles('1')) {
                    $('#srvTab3t4SelectGazar').prop('disabled', true);
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                    data: '{"yr": "' + $('#srvTab3t4SelectYear option:selected').val() + '", "gazar": "' + $("#srvTab3t4SelectGazar option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        })
                        $("#srvTab3t4SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                        if (!funcCheckRoles('3')) {
                            $("#srvTab3t4SelectHeltes").val(userHeltesId);
                            $('#srvTab3t4SelectHeltes').prop('disabled', true);
                        }
                        else {
                            $('#srvTab3t4SelectHeltes').prop('disabled', false);
                        }
                        dataBindTab3t4Datatable();
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
    function dataBindTab3t4Datatable() {
        var valData = '';
        showLoader('loaderTab3t4');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/SrvTab3t4Datatable",
            data: '{"yr":"' + $("#srvTab3t4SelectYear option:selected").val() + '", "yrhf":"' + $("#srvTab3t4SelectHalfYear option:selected").val() + '", "gazarid":"' + $("#srvTab3t4SelectGazar option:selected").val() + '", "heltesid":"' + $("#srvTab3t4SelectHeltes option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                var per = 0;
                var i = 0;
                var strgazarid = "", strheltesid = "";
                valData += "<table id=\"srvTab3t4Datatable\" style=\"border:1px solid #000; border-collapse:collapse; font-family:'Times New Roman'; font-size:13px; width:100%\"><thead><tr style=\"background-color:lightgray;\">";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">#</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Газрын нэр</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хэлтсийн нэр</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Ажилтан</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Газрын нийт ажилтан</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хэлтсийн нийт ажилтан</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Үнэлгээнд оролцсон ажилтан</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хувь</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Үнэлгээ</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    if (strgazarid != value.GAZARID) {
                        valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.ROWNO + "</td>";
                        valData += "<td rowspan=\"" + value.GAZARCNT + "\" style=\"border: 1px solid #000; padding:5px;\">" + value.GAZAR + "</td>";
                        if (strheltesid != value.HELTESID) {
                            valData += "<td rowspan=\"" + value.HELTESCNT + "\" style=\"border: 1px solid #000; padding:5px;\">" + value.HELTES + "</td>";
                        }
                        valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.ST_NAME + "</td>";
                        valData += "<td rowspan=\"" + value.GAZARCNT + "\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.GAZARCNT + "</td>";
                        if (strheltesid != value.HELTESID) {
                            valData += "<td rowspan=\"" + value.HELTESCNT + "\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.HELTESCNT + "</td>";
                        }
                    }
                    else {
                        valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.ROWNO + "</td>";
                        if (strheltesid != value.HELTESID) {
                            valData += "<td rowspan=\"" + value.HELTESCNT + "\" style=\"border: 1px solid #000; padding:5px;\">" + value.HELTES + "</td>";
                        }
                        valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.ST_NAME + "</td>";
                        if (strheltesid != value.HELTESID) {
                            valData += "<td rowspan=\"" + value.HELTESCNT + "\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.HELTESCNT + "</td>";
                        }
                    }
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.UGSUNSTAFFCNT + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\"><span class=\"badge " + value.PERCOLOR + "\">" + value.AVGPER + "</span></td>"; if (parseFloat(value.AVGPER) > 90) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Маш сайн</td>";
                    else if (parseFloat(value.AVGPER) > 80 && parseFloat(value.AVGPER) <= 90) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Сайн</td>";
                    else if (parseFloat(value.AVGPER) > 70 && parseFloat(value.AVGPER) <= 80) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хангалттай</td>";
                    else if (parseFloat(value.AVGPER) > 60 && parseFloat(value.AVGPER) <= 70) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Сайжруулах шаардлагатай</td>";
                    else if (parseFloat(value.AVGPER) <= 60) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хангалтгүй</td>";
                    else valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\"></td>";
                    valData += "</tr>";
                    strgazarid = value.GAZARID;
                    strheltesid = value.HELTESID;
                    per += parseFloat(value.AVGPER);
                    i++;
                });
                valData += "</tbody>";
                valData += "<tfoot>";
                valData += "<tr style=\"background-color:lightgray;\">";
                valData += "<td colspan=\"7\" style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">НИЙТ ДҮН</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + (per / i).toFixed() + "</td>";
                if (parseFloat(per / i) > 90) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Маш сайн</td>";
                else if (parseFloat(per / i) > 80 && parseFloat(per / i) <= 90) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Сайн</td>";
                else if (parseFloat(per / i) > 70 && parseFloat(per / i) <= 80) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хангалттай</td>";
                else if (parseFloat(per / i) > 60 && parseFloat(per / i) <= 70) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Сайжруулах шаардлагатай</td>";
                else if (parseFloat(per / i) <= 60) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хангалтгүй</td>";
                else valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\"></td>";
                valData += "</tr>";
                valData += "</tfoot>";
                valData += "</table>";
                $("#divsrvTab3t4Datatable").html(valData);
                $("#divsrvTab3t4Year").text($("#srvTab3t4SelectYear option:selected").val());
                $("#divsrvTab3t4HalfYear").text($("#srvTab3t4SelectHalfYear option:selected").text());
                hideLoader('loaderTab3t4');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#srvTab3t4SelectYear").change(function () {
        dataBindTab3t4DataTableFirst();
    });
    $("#srvTab3t4SelectHalfYear, #srvTab3t4SelectHeltes").change(function () {
        dataBindTab3t4Datatable();
    });
    $("#srvTab3t4SelectGazar").change(function () {
        if ($("#srvTab3t4SelectGazar option:selected").val() == "") {
            $("#srvTab3t4SelectHeltes").html("<option selected value=\"\">Бүгд</option>");
            $("#srvTab3t4SelectHeltes").prop("disabled", true);
            dataBindTab3t4Datatable();
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr": "' + $('#srvTab3t4SelectYear option:selected').val() + '", "gazar": "' + $("#srvTab3t4SelectGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    })
                    $("#srvTab3t4SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                    $("#srvTab3t4SelectHeltes").prop("disabled", false);
                    dataBindTab3t4Datatable();
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

    //tab4
    ///////tab4t1 
    function dataBindTab4t1QuestionDatatable() {
        showLoader('loaderTab4t1Question');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/SrvQuestionDatatable",
            data: '{"type":"4", "isactive":"' + $('#srvTab4t1QuestionIsActive option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table id=\"srvTab4t1QuestionDatatable\" class=\"table table-striped table-bordered table-hover smart-form\" width=\"100%\"><thead><tr><th>#</th><th>Асуултын нэр</th><th>Идэвхтэй эсэх</th><th></th></tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td>" + value.NAME + "</td>";
                    valData += "<td><label class=\"checkbox\"><input" + value.IS_ACTIVE + " type=\"checkbox\" name=\"checkbox\" onclick=\"srvQuestionClick(this)\"/><i></i></label></td>";
                    valData += "<td>";
                    valData += '<div class="btn-group">';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditQuestionModal(this, 4,\'засах\');" data-target="#srvQuestionModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteQuestionModal(this,4);"><i class="fa fa-trash-o"></i></button>';
                    valData += '</div>';
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_srvTab4t1QuestionDatatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#srvTab4t1QuestionDatatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_srvTab4t1QuestionDatatable) {responsiveHelper_srvTab4t1QuestionDatatable = new ResponsiveDatatablesHelper($('#srvTab4t1QuestionDatatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_srvTab4t1QuestionDatatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_srvTab4t1QuestionDatatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"20px\", \"bSortable\": false },{ \"sWidth\": \"45px\", \"bSortable\": false }]});";
                valData += "<\/script>";
                $("#divBindTab4t1QuestionTable").html(valData);
                hideLoader('loaderTab4t1Question');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab4t1AnswerDatatable() {
        showLoader('loaderTab4t1Answer');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/SrvAnswerDatatable",
            data: '{"type":"4", "isactive":"' + $('#srvTab4t1AnswerIsActive option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table id=\"srvTab4t1AnswerDatatable\" class=\"table table-striped table-bordered table-hover smart-form\" aria-describedby=\"dt_basic_info\"><thead><tr><th>#</th><th>Асуултын нэр</th><th>Хувь</th><th>Идэвхтэй эсэх</th><th></th></tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td>" + value.NAME + "</td>";
                    valData += "<td>" + value.PER + "</td>";
                    valData += "<td><label class=\"checkbox\"><input" + value.IS_ACTIVE + " type=\"checkbox\" name=\"checkbox\" onclick=\"srvAnswerClick(this)\"/><i></i></label></td>";
                    valData += "<td>";
                    valData += '<div class="btn-group">';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showAddEditAnswerModal(this, 4,\'засах\');" data-target="#srvAnswerModal" data-toggle="modal"><i class="fa fa-pencil"></i></button>';
                    valData += '<button type="button" class="btn btn-default btn-xs" onclick="showDeleteAnswerModal(this,4);"><i class="fa fa-trash-o"></i></button>';
                    valData += '</div>';
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_srvTab4t1AnswerDatatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#srvTab4t1AnswerDatatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_srvTab4t1AnswerDatatable) {responsiveHelper_srvTab4t1AnswerDatatable = new ResponsiveDatatablesHelper($('#srvTab4t1AnswerDatatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_srvTab4t1AnswerDatatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_srvTab4t1AnswerDatatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" },null,{ \"sWidth\": \"20px\" },{ \"sWidth\": \"20px\", \"bSortable\": false },{ \"sWidth\": \"45px\", \"bSortable\": false }]});";
                valData += "<\/script>";
                $("#divBindTab4t1AnswerTable").html(valData);
                hideLoader('loaderTab4t1Answer');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#srvTab4t1QuestionIsActive").change(function () {
        dataBindTab4t1QuestionDatatable();
    });
    $("#srvTab4t1AnswerIsActive").change(function () {
        dataBindTab4t1AnswerDatatable();
    });
    ///////tab4t2 
    function dataBindTab4t2DataTableFirst() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr": "' + $('#srvTab4t2SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                })
                $('#srvTab4t2SelectGazar').html(valData);
                $('#srvTab4t2SelectGazar').val(userGazarId);
                if (!funcCheckRoles('1')) {
                    $('#srvTab4t2SelectGazar').prop('disabled', true);
                }
                dataBindTab4t2Datatable();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab4t2Datatable() {
        var valData = '';
        showLoader('loaderTab4t2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/SrvTab4t2Datatable",
            data: '{"yr":"' + $("#srvTab4t2SelectYear option:selected").val() + '", "yrhf":"' + $("#srvTab4t2SelectHalfYear option:selected").val() + '", "gazarid":"' + $("#srvTab4t2SelectGazar option:selected").val() + '", "st_id":"' + $('#indexUserId').html() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                var isDisabled = '';
                var arrstid = new Array(0);
                var arrstname = new Array(0);
                var arranswerid = new Array(0);
                var arrischeck = new Array(0);
                if ($("#srvTab4t2SelectYear option:selected").val() != $('#indexCurrentYear').html() || $("#srvTab4t2SelectHalfYear option:selected").val() != $('#indexCurrentYearHalf').html()) {
                    isDisabled = " disabled=\"disabled\"";
                }
                $($.parseJSON(data.d)).each(function (index, value) {
                    arrstid = new Array(value.STIDLIST.split('~').length);
                    arrstname = new Array(value.STNAMELIST.split('~').length);
                    arrstid = value.STIDLIST.split('~');
                    arrstname = value.STNAMELIST.split('~');

                    valData += "<div class=\"question_item\">Асуулт: <b>" + value.QNAME + "</b> <button" + isDisabled + " class=\"btn btn-primary\" type=\"submit\" style=\"padding:3px;\" onclick=\"srvSave(this,'" + value.QID + "','" + value.STIDLIST.replace(/~/g, ',') + "','" + value.SRVTYPE + "')\"><i class=\"fa fa-save\"></i> Хадгалах</button></div>";
                    valData += "<ul id=\"" + value.SRVTYPE + "-" + value.QID + "\">";
                    for (var i = 0; i < arrstid.length; i++) {
                        valData += "<li class=\"nameWrapper\"><label>" + arrstname[i] + "</label>";
                        valData += "<ul class=\"smartform poll_item\">";
                        arranswerid = new Array(value.ANSWERIDLISTLIST.split('~')[i].split(',').length);
                        arrischeck = new Array(value.ISCHECKLISTLIST.split('~')[i].split(',').length);
                        arranswerid = value.ANSWERIDLISTLIST.split('~')[i].split(',');
                        arrischeck = value.ISCHECKLISTLIST.split('~')[i].split(',');
                        for (var y = 0; y < arranswerid.length; y++) {
                            if (arrischeck[y] == "0") valData += "<li><label class=\"radio\"><input" + isDisabled + " type=\"radio\" value=\"" + arranswerid[y] + "\" name=\"" + value.QID + "-" + arrstid[i] + "\"/><i></i>" + (y + 1).toString() + "</label></li>";
                            else valData += "<li><label class=\"radio\"><input" + isDisabled + " checked=\"checked\" type=\"radio\" value=\"" + arranswerid[y] + "\" name=\"" + value.QID + "-" + arrstid[i] + "\"/><i></i>" + (y + 1).toString() + "</label></li>";
                        }
                        valData += "</ul>";
                        valData += "</li>";
                    }
                    valData += "</ul>";
                });
                if (valData == '') valData = '<div>Илэрц алга...</div>';
                $("#divBindTab4t2Table").html(valData);
                $("#srvTab4t2CurrentYear").text($("#srvTab4t2SelectYear option:selected").val());
                $("#srvTab4t2CurrentHalfYear").text($("#srvTab4t2SelectHalfYear option:selected").text());
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
    $("#srvTab4t2SelectYear").change(function () {
        dataBindTab4t2DataTableFirst();
    });
    $("#srvTab4t2SelectHalfYear").change(function () {
        dataBindTab4t2Datatable();
    });
    $("#srvTab4t2SelectGazar").change(function () {
        dataBindTab4t2Datatable();
    });
    ///////tab4t3
    function dataBindTab4t3DataTableFirst() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr": "' + $('#srvTab4t3SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                })
                $('#srvTab4t3SelectGazar').html(valData);
                $('#srvTab4t3SelectGazar').val(userGazarId);
                if (!funcCheckRoles('1')) {
                    $('#srvTab4t3SelectGazar').prop('disabled', true);
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                    data: '{"yr": "' + $('#srvTab4t3SelectYear option:selected').val() + '", "gazar": "' + $("#srvTab4t3SelectGazar option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        })
                        $("#srvTab4t3SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                        if (!funcCheckRoles('3')) {
                            $("#srvTab4t3SelectHeltes").val(userHeltesId);
                            $('#srvTab4t3SelectHeltes').prop('disabled', true);                            
                        }
                        else {
                            $('#srvTab4t3SelectHeltes').prop('disabled', false);
                        }
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                            data: '{"qry": "SELECT COUNT(1) as CNT FROM TBL_SRV_CLOSED WHERE YR=' + $('#srvTab4t2SelectYear option:selected').val() + ' AND SRV_TYPE_ID=4"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                if (data.d == "0") {
                                    dataBindTab4t2Datatable();
                                }
                                else $("#divBindTab4t2Table").html($('#srvTab4t2SelectYear').val() + ' оны үнэлгээ хаагдсан байна. ТХЭУГ-ДАХШҮХ-д хандана уу...');
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
    function dataBindTab4t3Datatable() {
        var valData = '';
        showLoader('loaderTab4t3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/SrvTab4t3Datatable",
            data: '{"yr":"' + $("#srvTab4t3SelectYear option:selected").val() + '", "yrhf":"' + $("#srvTab4t3SelectHalfYear option:selected").val() + '", "gazarid":"' + $("#srvTab4t3SelectGazar option:selected").val() + '", "heltesid":"' + $("#srvTab4t3SelectHeltes option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                var per = 0;
                var i = 0;
                var strgazarid = "", strheltesid = "";
                valData += "<table id=\"srvTab4t3Datatable\" style=\"border:1px solid #000; border-collapse:collapse; font-family:'Times New Roman'; font-size:13px; width:100%\"><thead><tr style=\"background-color:lightgray;\">";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">#</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Газрын нэр</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хэлтсийн нэр</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Нэр</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хувь</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (strgazarid != value.GAZARID) {
                        strTableVal += "<tr>";
                        strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.ROWNO + "</td>";
                        strTableVal += "<td rowspan=\"" + value.GAZARCNT + "\" style=\"border: 1px solid #000; padding:5px;\">" + value.GAZARNAME + "</td>";
                        if (strheltesid != value.HELTESID) {
                            strTableVal += "<td rowspan=\"" + value.HELTESCNT + "\" style=\"border: 1px solid #000; padding:5px;\">" + value.HELTESNAME + "</td>";
                            strheltesid = value.HELTESID;
                        }
                        strTableVal += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.ST_NAME + "</td>";
                        strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\"><span class=\"badge " + value.PERCOLOR + "\">" + value.AVGPER + "</span></td>";
                        strTableVal += "</tr>";
                        strgazarid = value.GAZARID;
                    }
                    else {
                        strTableVal += "<tr>";
                        strTableVal += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.ROWNO + "</td>";
                        if (strheltesid != value.HELTESID) {
                            strTableVal += "<td rowspan=\"" + value.HELTESCNT + "\" style=\"border: 1px solid #000; padding:5px;\">" + value.HELTESNAME + "</td>";
                            strheltesid = value.HELTESID;
                        }
                        strTableVal += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.ST_NAME + "</td>";
                        strTableVal += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\"><span class=\"badge " + value.PERCOLOR + "\">" + value.AVGPER + "</span></td>";
                        strTableVal += "</tr>";
                        strgazarid = value.GAZARID;
                    }
                    strgazarid = value.GAZARID;
                    strheltesid = value.HELTESID;
                    per += parseFloat(value.AVGPER);
                    i++;
                });
                valData += "</tbody>";
                valData += "<tfoot>";
                valData += "<tr style=\"background-color:lightgray;\">";
                valData += "<td colspan=\"4\" style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">НИЙТ ДҮН</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; font-weight:bold;\">" + (per / i).toFixed() + "</td>";
                valData += "</tr>";
                valData += "</tfoot>";
                valData += "</table>";
                $("#divsrvTab4t3Datatable").html(valData);
                $("#divsrvTab4t3Year").text($("#srvTab4t3SelectYear option:selected").val());
                $("#divsrvTab4t3HalfYear").text($("#srvTab4t3SelectHalfYear option:selected").text());
                hideLoader('loaderTab4t3');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#srvTab4t3SelectYear").change(function () {
        dataBindTab4t3DataTableFirst();
    });
    $("#srvTab4t3SelectHalfYear, #srvTab4t3SelectHeltes").change(function () {
        dataBindTab4t3Datatable();
    });
    $("#srvTab4t3SelectGazar").change(function () {
        if ($("#srvTab4t3SelectGazar option:selected").val() == "") {
            $("#srvTab4t3SelectHeltes").html("<option selected value=\"\">Бүгд</option>");
            $("#srvTab4t3SelectHeltes").prop("disabled", true);
            dataBindTab4t3Datatable();
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr": "' + $('#srvTab4t3SelectYear option:selected').val() + '", "gazar": "' + $("#srvTab4t3SelectGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    })
                    $("#srvTab4t3SelectHeltes").html('<option value="">Бүгд</option>' + valData);
                    $("#srvTab4t3SelectHeltes").prop("disabled", false);
                    dataBindTab4t3Datatable();
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

    //tab5
    function dataBindTab5t1Datatable() {
        var valData = '', valChecked=' checked="checked"';
        showLoader('loaderTab5t1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT RTRIM(xmlagg (xmlelement (e, INTERVAL || \',\') ORDER BY INTERVAL).extract(\'//text()\'), \',\') INTERVALLIST FROM TBL_SRV_CLOSED WHERE YR=' + $('#srvTab5t1Year option:selected').val() + ' AND SRV_TYPE_ID=1"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                for (var i = 1; i <= 2; i++) {
                    valChecked=' checked="checked"';
                    valData += '<tr>';
                    valData += '<td class="text-center">' + $('#srvTab5t1Year option:selected').val() + '</td>';
                    valData += '<td class="text-center">' + i.toString().replace('1', 'Эхний').replace('2', 'Сүүлийн') + ' хагас жил</td>';
                    for (var y = 0; y < data.d.split(',').length; y++) {
                        if (parseInt(i) == parseInt(data.d.split(',')[y])) valChecked = '';
                    }
                    valData += '<td class="text-center" data-value="' + i + '"><span class="onoffswitch"><input id="onoffCheckboxTab5t1Qrtr' + i + '" name="onoffCheckboxTab5t1Qrtr' + i + '" type="checkbox"' + valChecked + ' class="onoffswitch-checkbox" onclick="saveIsClosedTab5t(this, 1,' + $('#srvTab5t1Year option:selected').val() + ',' + i + ');"><label class="onoffswitch-label" for="onoffCheckboxTab5t1Qrtr' + i + '"><span class="onoffswitch-inner" data-swchon-text="ON" data-swchoff-text="OFF"></span><span class="onoffswitch-switch"></span></label></span></td>';
                    valData += '</tr>';
                }
                $("#pTab5t1Tbody").html(valData);
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
    $("#srvTab5t1Year").change(function () {
        dataBindTab5t1Datatable();
    });
    function dataBindTab5t2Datatable() {
        var valData = '', valChecked = ' checked="checked"';
        showLoader('loaderTab5t2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT RTRIM(xmlagg (xmlelement (e, INTERVAL || \',\') ORDER BY INTERVAL).extract(\'//text()\'), \',\') INTERVALLIST FROM TBL_SRV_CLOSED WHERE YR=' + $('#srvTab5t2Year option:selected').val() + ' AND SRV_TYPE_ID=2"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                for (var i = 1; i <= 2; i++) {
                    valChecked = ' checked="checked"';
                    valData += '<tr>';
                    valData += '<td class="text-center">' + $('#srvTab5t2Year option:selected').val() + '</td>';
                    valData += '<td class="text-center">' + i.toString().replace('1', 'Эхний').replace('2', 'Сүүлийн') + ' хагас жил</td>';
                    for (var y = 0; y < data.d.split(',').length; y++) {
                        if (parseInt(i) == parseInt(data.d.split(',')[y])) valChecked = '';
                    }
                    valData += '<td class="text-center" data-value="' + i + '"><span class="onoffswitch"><input id="onoffCheckboxTab5t2Qrtr' + i + '" name="onoffCheckboxTab5t2Qrtr' + i + '" type="checkbox"' + valChecked + ' class="onoffswitch-checkbox" onclick="saveIsClosedTab5t(this, 2,' + $('#srvTab5t2Year option:selected').val() + ',' + i + ');"><label class="onoffswitch-label" for="onoffCheckboxTab5t2Qrtr' + i + '"><span class="onoffswitch-inner" data-swchon-text="ON" data-swchoff-text="OFF"></span><span class="onoffswitch-switch"></span></label></span></td>';
                    valData += '</tr>';
                }
                $("#pTab5t2Tbody").html(valData);
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
    $("#srvTab5t2Year").change(function () {
        dataBindTab5t2Datatable();
    });
    function dataBindTab5t3Datatable() {
        var valData = '', valChecked = ' checked="checked"';
        showLoader('loaderTab5t3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT RTRIM(xmlagg (xmlelement (e, INTERVAL || \',\') ORDER BY INTERVAL).extract(\'//text()\'), \',\') INTERVALLIST FROM TBL_SRV_CLOSED WHERE YR=' + $('#srvTab5t3Year option:selected').val() + ' AND SRV_TYPE_ID=3"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                for (var i = 1; i <= 2; i++) {
                    valChecked = ' checked="checked"';
                    valData += '<tr>';
                    valData += '<td class="text-center">' + $('#srvTab5t3Year option:selected').val() + '</td>';
                    valData += '<td class="text-center">' + i.toString().replace('1', 'Эхний').replace('2', 'Сүүлийн') + ' хагас жил</td>';
                    for (var y = 0; y < data.d.split(',').length; y++) {
                        if (parseInt(i) == parseInt(data.d.split(',')[y])) valChecked = '';
                    }
                    valData += '<td class="text-center" data-value="' + i + '"><span class="onoffswitch"><input id="onoffCheckboxTab5t3Yrhf' + i + '" name="onoffCheckboxTab5t3Yrhf' + i + '" type="checkbox"' + valChecked + ' class="onoffswitch-checkbox" onclick="saveIsClosedTab5t(this, 3,' + $('#srvTab5t3Year option:selected').val() + ',' + i + ');"><label class="onoffswitch-label" for="onoffCheckboxTab5t3Yrhf' + i + '"><span class="onoffswitch-inner" data-swchon-text="ON" data-swchoff-text="OFF"></span><span class="onoffswitch-switch"></span></label></span></td>';
                    valData += '</tr>';
                }
                $("#pTab5t3Tbody").html(valData);
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
    $("#srvTab5t3Year").change(function () {
        dataBindTab5t3Datatable();
    });
    function dataBindTab5t4Datatable() {
        var valData = '', valChecked = ' checked="checked"';
        showLoader('loaderTab5t4');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT RTRIM(xmlagg (xmlelement (e, INTERVAL || \',\') ORDER BY INTERVAL).extract(\'//text()\'), \',\') INTERVALLIST FROM TBL_SRV_CLOSED WHERE YR=' + $('#srvTab5t4Year option:selected').val() + ' AND SRV_TYPE_ID=4"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                for (var i = 1; i <= 2; i++) {
                    valChecked = ' checked="checked"';
                    valData += '<tr>';
                    valData += '<td class="text-center">' + $('#srvTab5t4Year option:selected').val() + '</td>';
                    valData += '<td class="text-center">' + i.toString().replace('1', 'Эхний').replace('2', 'Сүүлийн') + ' хагас жил</td>';
                    for (var y = 0; y < data.d.split(',').length; y++) {
                        if (parseInt(i) == parseInt(data.d.split(',')[y])) valChecked = '';
                    }
                    valData += '<td class="text-center" data-value="' + i + '"><span class="onoffswitch"><input id="onoffCheckboxTab5t4Yrhf' + i + '" name="onoffCheckboxTab5t4Yrhf' + i + '" type="checkbox"' + valChecked + ' class="onoffswitch-checkbox" onclick="saveIsClosedTab5t(this, 4,' + $('#srvTab5t4Year option:selected').val() + ',' + i + ');"><label class="onoffswitch-label" for="onoffCheckboxTab5t4Yrhf' + i + '"><span class="onoffswitch-inner" data-swchon-text="ON" data-swchoff-text="OFF"></span><span class="onoffswitch-switch"></span></label></span></td>';
                    valData += '</tr>';
                }
                $("#pTab5t4Tbody").html(valData);
                hideLoader('loaderTab5t4');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#srvTab5t4Year").change(function () {
        dataBindTab5t4Datatable();
    });
    function saveIsClosedTab5t(el, srvtype, yr, interval) {
        var valIsSubmit = '0';
        if (!$(el).prop('checked')) {
            valIsSubmit = '1';
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
            data: '{"qry": "DELETE FROM TBL_SRV_CLOSED WHERE YR=' + yr + ' AND INTERVAL=' + interval + ' AND SRV_TYPE_ID=' + srvtype + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function () {
                if (valIsSubmit == '1') {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                        data: '{"qry": "INSERT INTO TBL_SRV_CLOSED (YR, INTERVAL, SRV_TYPE_ID) VALUES (' + yr + ', ' + interval + ', ' + srvtype + ')"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            smallBox('Сонгосон мэдээлэл', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                    smallBox('Сонгосон мэдээлэл', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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

    function showAddEditQuestionModal(el, type, isinsupt) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT NAME FROM TBL_SRV_TYPE WHERE ID=' + type + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $("#srvQuestionModalHeaderLabel1").text(data.d + ' асуулт');
                $('#srvQuestionModalHeaderLabel2').text(isinsupt);
                if (isinsupt == 'нэмэх') {
                    $('#srvQuestionID').text("");
                    $('#srvQuestionName').val("");
                }
                else {
                    $('#srvQuestionID').text($(el).closest('tr').attr('data-id'));
                    $('#srvQuestionName').val($(el).closest('tr').find('td:eq(1)').html());
                }
                $('#srvTypeID').text(type);
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function showAddEditAnswerModal(el, type, isinsupt) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT NAME FROM TBL_SRV_TYPE WHERE ID=' + type + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $("#srvAnswerModalHeaderLabel1").text(data.d + ' асуулт');
                $('#srvAnswerModalHeaderLabel2').text(isinsupt);
                if (isinsupt == 'нэмэх') {
                    $('#srvAnswerID').text("");
                    $('#srvAnswerName').val("");
                    $('#srvAnswerPer').val(0);
                }
                else {
                    $('#srvAnswerID').text($(el).closest('tr').attr('data-id'));
                    $('#srvAnswerName').val($(el).closest('tr').find('td:eq(1)').html());
                    $('#srvAnswerPer').val($(el).closest('tr').find('td:eq(2)').html());
                }
                $('#srvAnswerTypeID').text(type);
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function showDeleteQuestionModal(el, type) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_SRV WHERE SRV_QUESTION_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != "0") {
                    alert("Энэ асуултанд хамааралтай үнэлгээ орсон тул устгах боломжгүй байна!");
                }
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "\"" + $(el).closest('tr').find('td:eq(1)').html() + "\" асуултыг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"DELETE FROM TBL_SRV_QUESTION WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (msg) {
                                    if (type == '1') dataBindTab1t1QuestionDatatable();
                                    else if (type == '2') dataBindTab2t1QuestionDatatable();
                                    smallBox('Сонгосон асуулт', 'Амжилттай устлаа...', '#659265', 3000);
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
    function showDeleteAnswerModal(el, type) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_SRV WHERE SRV_ANSWER_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != "0") {
                    alert("Энэ хариултад хамааралтай үнэлгээ орсон тул устгах боломжгүй байна!");
                }
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "\"" + $(el).closest('tr').find('td:eq(1)').html() + "\" хариултыг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"DELETE FROM TBL_SRV_ANSWER WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    if (type == '1') dataBindTab1t1AnswerDatatable();
                                    else if (type == '2') dataBindTab2t1AnswerDatatable();
                                    smallBox('Сонгосон хариулт', 'Амжилттай устлаа...', '#659265', 3000);
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

    $('#srvQuestionModalForm').bootstrapValidator({
        fields: {
            srvQuestionName: {
                group: '.col-md-12',
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
            var qry = '';
            if ($("#srvQuestionModalHeaderLabel2").html() == "нэмэх") {
                qry = 'INSERT INTO TBL_SRV_QUESTION VALUES(TBLLASTID(\'TBL_SRV_QUESTION\'), \'' + replaceDisplayToDatabase($.trim($('#srvQuestionName').val())) + '\', 1, ' + $('#srvTypeID').text() + ')';
            }
            else {
                qry = 'UPDATE TBL_SRV_QUESTION SET NAME=\'' + replaceDisplayToDatabase($.trim($('#srvQuestionName').val())) + '\' WHERE ID=' + $("#srvQuestionID").text();
            }
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                data: '{"qry":"' + qry + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    if ($('#srvTypeID').text() == '1') dataBindTab1t1QuestionDatatable();
                    else if ($('#srvTypeID').text() == '2') dataBindTab2t1QuestionDatatable();
                    else if ($('#srvTypeID').text() == '3') dataBindTab3t1QuestionDatatable();
                    else if ($('#srvTypeID').text() == '4') dataBindTab4t1QuestionDatatable();
                    $('#srvQuestionModal').modal('hide');
                    smallBox('Асуулт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
    $('#srvAnswerModalForm').bootstrapValidator({
        fields: {
            srvAnswerPer: {
                group: '.form-group',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            srvAnswerName: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    stringLength: {
                        max: 100,
                        message: 'Уртдаа 100 тэмдэгт авна'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            var qry = '';
            if ($("#srvQuestionModalHeaderLabel2").html() == "нэмэх") {
                qry = 'INSERT INTO TBL_SRV_ANSWER VALUES(TBLLASTID(\'TBL_SRV_ANSWER\'), \'' + $.trim($('#srvAnswerName').val()) + '\', ' + $('#srvAnswerPer option:selected').val() + ', 1, ' + $('#srvAnswerTypeID').text() + ')';
            }
            else {
                qry = 'UPDATE TBL_SRV_ANSWER SET NAME=\'' + $.trim($('#srvAnswerName').val()) + '\', PER=' + $('#srvAnswerPer option:selected').val() + ' WHERE ID=' + $("#srvAnswerID").text();
            }
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                data: '{"qry":"' + qry + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    if ($('#srvAnswerTypeID').text() == '1') dataBindTab1t1AnswerDatatable();
                    else if ($('#srvAnswerTypeID').text() == '2') dataBindTab2t1AnswerDatatable();
                    else if ($('#srvAnswerTypeID').text() == '3') dataBindTab3t1AnswerDatatable();
                    else if ($('#srvAnswerTypeID').text() == '4') dataBindTab4t1AnswerDatatable();
                    $('#srvAnswerModal').modal('hide');
                    smallBox('Хариулт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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

    function srvQuestionClick(el) {
        if ($(el).prop('checked')) qry = 'UPDATE TBL_SRV_QUESTION SET IS_ACTIVE=1 WHERE ID=' + $(el).closest('tr').attr('data-id');
        else qry = 'UPDATE TBL_SRV_QUESTION SET IS_ACTIVE=0 WHERE ID=' + $(el).closest('tr').attr('data-id');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
            data: '{"qry": "' + qry + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function () {
                smallBox('Сонгосон асуулт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function srvAnswerClick(el) {
        if ($(el).prop('checked')) qry = 'UPDATE TBL_SRV_ANSWER SET IS_ACTIVE=1 WHERE ID=' + $(el).closest('tr').attr('data-id');
        else qry = 'UPDATE TBL_SRV_ANSWER SET IS_ACTIVE=0 WHERE ID=' + $(el).closest('tr').attr('data-id');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
            data: '{"qry": "' + qry + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function () {
                smallBox('Сонгосон хариулт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }


    //tab5 email sending
    function showTab5t1EmailModal(tp) {
        if (tp == '1') {
            $('#pTab5t1EmailModalHeaderLabel1').html('Удирдлагаас ГД нарыг үнэлэх');
        }
        else if (tp == '2') {
            $('#pTab5t1EmailModalHeaderLabel1').html('ГДарга ХДарга нарыг үнэлэх');
        }
        else if (tp == '2') {
            $('#pTab5t1EmailModalHeaderLabel1').html('Хамт олны үнэлгээ');
        }
        $('#pTab5t1EmailModalInputName').val('');
        $('#TypeID').html(tp);

    }
    $('#pTab5t1EmailModalForm').bootstrapValidator({
        fields: {
            pTab5t1EmailModalInputName: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            $("#pTab5t1EmailModalBtnSave").html('<i class="fa fa-refresh fa-spin"></i> Явуулах');
            $("#pTab5t1EmailModalBtnSave").prop('disabled', true);
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/srvSendMail",
                data: '{"tp":"' + $("#TypeID").html() + '", "body":"' + replaceDisplayToDatabase($.trim($('#pTab5t1EmailModalInputName').val())) + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    $('#pTab5t1EmailModalBtnSave').html('<i class="fa fa-paper-plane"></i> Явуулах');
                    $('#pTab5t1EmailModalBtnSave').prop("disabled", false);
                    $('#pTab5t1EmailModal').modal('hide');
                    smallBox('Имэйл', 'Амжилттай явлаа', '#659265', 3000);
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
</script>