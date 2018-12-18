<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nds.aspx.cs" Inherits="LMWebApp.pg.nds" %>
<style type="text/css">
    .nds-ddl-eval {
        font-size:12px;
    }
    .nds-txta-eval-desc {
        font-size:12px;
    }
</style>
<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
    <h1 class="page-title txt-color-blueDark">
    <i class="fa-fw fa fa-home"></i>
    <span>> Үндэсний хөгжлийн цогц бодлого</span>
    </h1>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
        <label style="position: absolute; padding-top: 15px; text-align: right; right: 310px; font-style:italic;">Биелэлтийн үнэлгээний дундаж хувь:</label><label id="ndsImplTotalPer" style="position: absolute; padding-top: 15px; text-align: right; right: 275px; font-style:italic; font-weight:bold;">0 %</label><label style="position: absolute; padding-top: 15px; text-align: right; right: 200px; font-style:italic;">/шүүлтээр/</label>
        <ul class="nav nav-tabs bordered">
            <li id="ndsTab1HeadLi1" runat="server" onclick="ndsDatabindTabs(this)">
                <a data-toggle="tab" href="#ndsTab1">
                    Бодлого
                </a>
            </li>
            <li id="ndsTab1HeadLi2" runat="server" onclick="ndsDatabindTabs(this)">
                <a data-toggle="tab" href="#ndsTab2">
                    Зорилт
                </a>
            </li>
            <li id="ndsTab1HeadLi3" runat="server" class="active" onclick="ndsDatabindTabs(this)">
                <a data-toggle="tab" href="#ndsTab3">
                    <b style="font-size:14px">Төлөвлөгөө</b>
                </a>
            </li>
            <li id="ndsTab1HeadLi4" runat="server" onclick="ndsDatabindTabs(this)">
                <a data-toggle="tab" href="#ndsTab4">
                    <i class="fa fa-fw fa-lg fa-bar-chart-o "></i>
                   <b style="font-size:14px">Биелэлт</b>
                </a>
            </li>
            <li id="ndsTab1HeadLi5" runat="server" onclick="ndsDatabindTabs(this)">
                <a data-toggle="tab" href="#ndsTab5">
                    <i class="fa fa-fw fa-lg fa-file-text "></i>
                    <b style="font-size:14px">Товчоо</b>
                </a>
            </li>
            <li id="ndsTab1HeadLi6" runat="server" onclick="ndsDatabindTabs(this)">
                <a data-toggle="tab" href="#ndsTab6">
                    <i class="fa fa-fw fa-lg fa-file-text "></i>
                    <b style="font-size:14px">Тайлан</b>
                </a>
            </li>
        </ul>
        <div id="ndsTabContent" class="tab-content">
            <div id="ndsTab1" runat="server" class="tab-pane">
                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                    <header>
                        <span class="widget-icon">
                            <i class="fa fa-table"></i>
                        </span>
                        <h2>ҮХЦБ бодлого</h2>
                    </header>
                    <div>
                        <div class="Colvis TableTools"  style="right:130px; top:5px; z-index:5;">
                                <button id="ndsTab1Add" runat="server" class="ColVis_Button TableTools_Button ColVis_MasterButton btn btn btn-primary btn-sm" data-target="#ndsPolicyModal" data-toggle="modal"><i class="fa fa-plus"></i> Нэмэх</button>
                        </div>
                        <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                        <div id="loaderTab1" class="search-background">
                            <label>
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                            </label>
                        </div>
                        <div id="divBindPolicyTable" runat="server" class="widget-body no-padding">
                            
                        </div>
                    </div>
                </div>
            </div>
            <div id="ndsTab2" runat="server" class="tab-pane">
                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                    <header>
                        <span class="widget-icon">
                            <i class="fa fa-table"></i>
                        </span>
                        <h2>ҮХЦБ зорилт</h2>
                    </header>
                    <div>
                        <div class="Colvis TableTools" style="right:130px; top:5px; z-index:5;"><button id="ndsTab2Add" runat="server" class="ColVis_Button TableTools_Button ColVis_MasterButton btn btn btn-primary btn-sm" data-target="#ndsObjectModal" data-toggle="modal"><i class="fa fa-plus"></i> Нэмэх</button></div>
                        <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                        <div id="loaderTab2" class="search-background">
                            <label>
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                            </label>
                        </div>
                        <div id="divBindObjectTable" runat="server" class="widget-body no-padding">
                            
                        </div>
                    </div>
                </div>  
            </div>
            <div id="ndsTab3" runat="server" class="tab-pane active">
                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                    <header>
                        <span class="widget-icon">
                            <i class="fa fa-table"></i>
                        </span>
                        <h2>ҮХЦБ арга хэмжээ</h2>
                    </header>
                    <div>
                        <div class="Colvis TableTools" style="width:140px; right:505px; top:8px; z-index:5; margin-top:1px;">
                            <button id="ndsTab6t1PrintModalShow" runat="server" class="btn btn-labeled btn-warning" type="button" data-target="#ndsTab6t1PrintModal" data-toggle="modal"><span class="btn-label" style="padding: 0px 7px 3px 5px;"><i class="fa fa-file-text"></i></span>Хэвлэх|Татах</button>
                        </div>
                        <div class="Colvis TableTools" style="right:435px; top:5px; z-index:5;"><button id="ndsTab3Add" runat="server" class="ColVis_Button TableTools_Button ColVis_MasterButton btn btn btn-primary btn-sm" data-target="#ndsWorkModal" data-toggle="modal"><i class="fa fa-plus"></i> Нэмэх</button></div>
                        <div class="Colvis TableTools" style="width:105px; top:5px; z-index:5; right:120px;"><select id="ndsTab3SelectYear" name="ndsTab3SelectYear" class="form-control" style="padding:1px;"><option value="all-all" selected="selected">Нийт</option><option value="2007-2021">Бүх үе шат</option><option value="2007-2015">1-р үе шат</option><option value="2016-2021">2-р үе шат</option></select></div>
                        <div class="Colvis TableTools" style="width:85px; top:5px; z-index:7; right:285px;"><select id="ndsTab3SelectTeam" name="ndsTab3SelectTeam" class="form-control" style="padding:1px;"><option value="all" selected="selected">Бүгд</option><option value="0">Дангаар</option><option value="1">Хамтран</option></select></div>
                        <div class="Colvis TableTools" style="right:375px; top:5px; z-index:5; margin-top:7px;"><label>СС хийх: </label></div>
                        <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                        <div class="Colvis TableTools" style="right:230px; top:4px; z-index:5; margin-top:7px;"><label>Үе шат: </label></div>
                        <div id="loaderTab3" class="search-background">
                            <label>
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                            </label>
                        </div>
                        <div id="divBindWorkTable" runat="server" class="widget-body no-padding">
                            
                        </div>
                    </div>
                </div>
            </div>
            <div id="ndsTab4" runat="server" class="tab-pane">
                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                    <header>
                        <span class="widget-icon">
                            <i class="fa fa-table"></i>
                        </span>
                        <h2>ҮХЦБ биелэлт</h2>
                    </header>
                    <div>
                        <div class="Colvis TableTools" style="width:80px; top:5px; z-index:7; right:525px;"><select id="ndsTab4SelectBranch" runat="server" name="ndsTab4SelectBranch" class="form-control" style="padding:1px;"><option value="0">Бүгд</option></select></div>
                        <div class="Colvis TableTools" style="width:100px; top:5px; z-index:7; right:365px;"><select id="ndsTab4SelectEva" runat="server" name="ndsTab4SelectEva" class="form-control" style="padding:1px;"><option value="all">Нийт</option><option style="background-color:#CCEEFF;font-weight: 700;" value="-">Үнэлээгүй</option><option value="0" style="background-color:#FF0000; font-weight: 700;">0 %</option><option value="10" style="background-color:#FF0000; font-weight: 700;">10 %</option><option value="30" style="background-color:#FF0000; font-weight: 700;">30 %</option><option value="50" style="background-color:#FFFF00; font-weight: 700;">50 %</option><option value="70" style="background-color:#FFFF00; font-weight: 700;">70 %</option><option value="80" style="background-color:#00FF00; font-weight: 700;">80 %</option><option value="90" style="background-color:#00FF00; font-weight: 700;">90 %</option><option value="100" style="background-color:#00FF00; font-weight: 700;">100 %</option></select></div>
                        <div class="Colvis TableTools" style="width:70px; top:5px; z-index:5; right:120px;"><select id="ndsTab4SelectYear" runat="server" name="ndsTab4SelectYear" class="form-control" style="padding:1px;"><option value="2014" selected="selected">2014</option><option value="2015">2015</option></select></div>
                        <div class="Colvis TableTools" style="width:105px; top:5px; z-index:7; right:200px;"><select id="ndsTab4SelectShat" name="ndsTab4SelectTeam" class="form-control" style="padding:1px;"><option value="all-all" selected="selected">Нийт</option><option value="2007-2021">Бүх үе шат</option><option value="2007-2015">1-р үе шат</option><option value="2016-2021">2-р үе шат</option></select></div>
                        <div class="Colvis TableTools" style="right:310px; top:4px; z-index:5; margin-top:7px;"><label>Үе шат: </label></div>
                        <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                        <div class="Colvis TableTools" style="right:466px; top:4px; z-index:5; margin-top:7px;"><label>Үнэлгээ: </label></div>
                        <div class="Colvis TableTools" style="right:607px; top:4px; z-index:5; margin-top:7px;"><label>Газар: </label></div>
                        <div class="Colvis TableTools" style="right:655px; top:0px; z-index:5; margin-top:2px;">
                            <img id="ndsTab4ClickImpl1" src="../img/green-circle.png" width="15" style="cursor:pointer" />Биелэлт тайлагнасан<br />
                            <img id="ndsTab4ClickImpl0" src="../img/red-circle.png" width="15" style="cursor:pointer" />Биелэлт тайлагнаагүй
                        </div>
                        <div id="loaderTab4" class="search-background">
                            <label>
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                            </label>
                        </div>
                        <div id="divBindImplTable" runat="server" class="widget-body no-padding">
                            
                        </div>
                    </div>
                </div>
            </div>
            <div id="ndsTab5" runat="server" class="tab-pane">
                <ul class="nav nav-tabs bordered">
                    <li class="active">
                        <a data-toggle="tab" href="#ndsTab5t1">Хэрэгжилт</a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#ndsTab5t2">Хэрэгжилт (газруудаар)</a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#ndsTab5t3">Удаашралтай ажлын жагсаалт</a>
                    </li>
                </ul>
                <div id="ndsTab5Content" class="tab-content">
                    <div id="ndsTab5t1" class="tab-pane active">
                        <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                            <div style="width:70%; float:left;">
                                <div style="width:65px; float:left; margin-right:10px;"><select id="ndsTab5t1SelectYear" runat="server" class="form-control" style="padding:1px"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select></div>
                                <div style="width:45px; float:left; margin-right:10px; padding-top:8px;">Үе шат: </div>
                                <div style="width:100px; float:left; margin-right:10px;"><select id="ndsTab5t1SelectShat" runat="server" class="form-control" style="padding:1px"><option value="0000-0000" selected>Бүгд</option><option value="2007-2021">Бүх үе шат</option><option value="2007-2015">1-р үе шат</option><option value="2016-2021">2-р үе шат</option></select></div>
                           </div>
                            <div style="text-align:right; width:30%; float:left;">
                                <img id="ndsTab5t1ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" title="PDF руу татах" onclick="exportPdf('#divndsTab5t1')" />
                                <img id="ndsTab5t1ExportWord" src="../img/word-icon.png" style="cursor:pointer;" title="Word руу татах" onclick="exportWord('#divndsTab5t1', 'ҮХЦБ-н хэрэгжилт <% Response.Write(ndsTab5t1SelectYear.Items[ndsTab5t1SelectYear.SelectedIndex].Text); %>')"/>
                                <img id="ndsTab5t1ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" title="Excel руу татах" onclick="exportExcel('#divndsTab5t1')"/>
                                <button id="ndsTab5t1Print" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divndsTab5t1')"><span class="fa fa-print"></span> Хэвлэх </button>
                                <button id="ndsTab5t1Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                            </div>
                        </div>
                        <div id="loaderTab51" class="search-background">
                            <label>
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                            </label>
                        </div>
                        <div id="divndsTab5t1" runat="server" class="reports">
                            <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px; font-family: Arial, serif;">
                                ҮНДСЭНИЙ ХӨГЖЛИЙН ЦОГЦ БОДЛОГЫН ХҮРЭЭНД САНГИЙН САЙДЫН ХАРИУЦАН ХЭРЭГЖҮҮЛЭХ ЗОРИЛТЫН ХЭРЭГЖИЛТ
                            </div>
                            <div id="divndsTab5t1Table" runat="server"></div>                                
                        </div>
                    </div>
                    <div id="ndsTab5t2" class="tab-pane fade">
                        <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                            <div style="width:70%; float:left;">
                                <div style="width:65px; float:left; margin-right:10px;"><select id="ndsTab5t2SelectYear" runat="server" class="form-control" style="padding:1px"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select></div>
                                <div style="width:45px; float:left; margin-right:10px; padding-top:8px;">Үе шат: </div>
                                <div style="width:100px; float:left; margin-right:10px;"><select id="ndsTab5t2SelectShat" runat="server" class="form-control" style="padding:1px"><option value="0000-0000" selected>Бүгд</option><option value="2007-2021">Бүх үе шат</option><option value="2007-2015">1-р үе шат</option><option value="2016-2021">2-р үе шат</option></select></div>
                                <div style="width:45px; float:left; margin-right:10px; padding-top:8px;">Газар: </div>
                                <div style="width:100px; float:left; margin-right:10px;"><select id="ndsTab5t2SelectBranch" runat="server" class="form-control" style="padding:1px"><option value="all">Бүгд</option></select></div>
                           </div>
                            <div style="text-align:right; width:30%; float:left;">
                                <img id="ndsTab5t2ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" onclick="exportPdf('#divndsTab5t2')"/>
                                <img id="ndsTab5t2ExportWord" src="../img/word-icon.png" style="cursor:pointer;" onclick="exportWord('#divndsTab5t2', 'ҮХЦБ-н хэрэгжилт (газруудаар) <% Response.Write(ndsTab5t2SelectYear.Items[ndsTab5t2SelectYear.SelectedIndex].Text); %>')" />
                                <img id="ndsTab5t2ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" onclick="exportExcel('#divndsTab5t2')" />
                                <button id="ndsTab5t2Print" class="btn btn-info btn-sm" type="button" onclick="PrintElem('#divndsTab5t2')"><span class="fa fa-print"></span> Хэвлэх </button>
                                <button id="ndsTab5t2Refresh" class="btn btn-info btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                            </div>
                        </div>
                        <div id="loaderTab52" class="search-background">
                            <label>
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                            </label>
                        </div>
                        <div id="divndsTab5t2" runat="server" class="reports">
                            <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px; font-family: Arial, serif;">
                                ҮНДСЭНИЙ ХӨГЖЛИЙН ЦОГЦ БОДЛОГЫН ХҮРЭЭНД САНГИЙН САЙДЫН ХАРИУЦАН ХЭРЭГЖҮҮЛЭХ ЗОРИЛТЫН ХЭРЭГЖИЛТ (ГАЗРУУДААР)
                            </div>
                            <div id="divndsTab5t2Table" runat="server"></div>                                    
                        </div>
                    </div>
                    <div id="ndsTab5t3" class="tab-pane fade">
                        <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                            <div style="width:70%; float:left;">
                                <div style="width:65px; float:left; margin-right:10px;"><select id="ndsTab5t3SelectYear" runat="server" class="form-control" style="padding:1px"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select></div>
                                <div style="width:45px; float:left; margin-right:10px; padding-top:8px;">Үе шат: </div>
                                <div style="width:100px; float:left; margin-right:10px;"><select id="ndsTab5t3SelectShat" runat="server" class="form-control" style="padding:1px"><option value="0000-0000" selected>Бүгд</option><option value="2007-2021">Бүх үе шат</option><option value="2007-2015">1-р үе шат</option><option value="2016-2021">2-р үе шат</option></select></div>
                                <div style="width:45px; float:left; margin-right:10px; padding-top:8px;">Газар: </div>
                                <div style="width:100px; float:left; margin-right:10px;"><select id="ndsTab5t3SelectBranch" runat="server" class="form-control" style="padding:1px"><option value="all">Бүгд</option></select></div>
                                <div style="width:50px; float:left; margin-right:10px; padding-top:8px;">Үнэлгээ: </div>
                                <div style="width:100px; float:left; margin-right:10px;"><select id="ndsTab5t3SelectEva" runat="server" class="form-control" style="padding:1px"><option value="all">Бүгд</option><option value="0">0 %</option><option value="10">10 %</option><option value="30">30 %</option><option value="50">50 %</option><option value="70">70 %</option></select></div>
                           </div>
                            <div style="text-align:right; width:30%; float:left;">
                                <img id="ndsTab5t3ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" onclick="exportPdf('#divndsTab5t3')" />
                                <img id="ndsTab5t3ExportWord" src="../img/word-icon.png" style="cursor:pointer;" onclick="exportWord('#divndsTab5t3', 'ҮХЦБ-н удаашралтай ажлын жагсаалт <% Response.Write(ndsTab5t3SelectYear.Items[ndsTab5t3SelectYear.SelectedIndex].Text); %>')" />
                                <img id="ndsTab5t3ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" onclick="exportExcel('#divndsTab5t3')" />
                                <button id="ndsTab5t3Print" class="btn btn-info btn-sm" type="button" onclick="PrintElem('#divndsTab5t3')"><span class="fa fa-print"></span> Хэвлэх </button>
                                <button id="ndsTab5t3Refresh" class="btn btn-info btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                            </div>
                        </div>
                        <div id="loaderTab53" class="search-background">
                            <label>
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                            </label>
                        </div>
                        <div id="divndsTab5t3" runat="server" class="reports">
                            <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px; font-family: Arial, serif;">
                                МОНГОЛ УЛСЫН ЭДИЙН ЗАСАГ НИЙГМИЙГ ХӨГЖҮҮЛЭХ <label id="ndsTab5t3Year" runat="server">0000</label> ОНЫ ҮНДСЭН ЧИГЛЭЛИЙН ХЭРЭГЖИЛТ НЬ УДААШРАЛТАЙ БАЙГАА АРГА ХЭМЖЭЭНИЙ ТУХАЙ (0-70 ХУВЬ)
                            </div>
                            <div id="divndsTab5t3Table" runat="server"></div>                                    
                        </div>
                    </div>
                </div>    
            </div>
            <div id="ndsTab6" runat="server" class="tab-pane">
                <ul class="nav nav-tabs bordered">
                    <li class="active">
                        <a data-toggle="tab" href="#ndsTab6t2">ХШҮ-ний товч тайлан</a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#ndsTab6t3">Хэрэгжилтийн дэлгэрэнгүй тайлан</a>
                    </li>
                </ul>
                <div id="ndsTab6Content" class="tab-content">
                    <div id="ndsTab6t2" class="tab-pane active">
                        <div style="display:block; overflow:hidden;">
                            <div style="float:left; display:block; width:75%">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:50%; float:left;">
                                        <div style="width:65px; float:left; margin-right:10px;"><select id="ndsTab6t2SelectYear" runat="server" class="form-control" style="padding:1px"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select></div>
                                        <div style="width:45px; float:left; margin-right:10px; padding-top:8px;">Үе шат: </div>
                                        <div style="width:100px; float:left; margin-right:10px;"><select id="ndsTab6t2SelectShat" runat="server" class="form-control" style="padding:1px"><option value="0000-0000" selected>Бүгд</option><option value="2007-2021">Бүх үе шат</option><option value="2007-2015">1-р үе шат</option><option value="2016-2021">2-р үе шат</option></select></div>
                                   </div>
                                    <div style="text-align:right; width:50%; float:left;">
                                        <img id="ndsTab6t2ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" title="PDF руу татах" onclick="exportPdf('#divndsTab6t2')" />
                                        <img id="ndsTab6t2ExportWord" src="../img/word-icon.png" style="cursor:pointer;" title="Word руу татах" onclick="exportWord('#divndsTab6t2', 'ҮХЦБ-н ХШҮ-ний тайлан (газруудаар) <% Response.Write(ndsTab6t2SelectYear.Items[ndsTab6t2SelectYear.SelectedIndex].Text); %>')" />
                                        <img id="ndsTab6t2ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" title="Excel руу татах" onclick="exportExcel('#divndsTab6t2')" />
                                        <button id="ndsTab6t2ExportPrint" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divndsTab6t2')"><span class="fa fa-print"></span> Хэвлэх </button>
                                        <button id="ndsTab6t2ExportRefresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                                    </div>
                                </div>                                
                                <div id="loaderTab62" class="search-background">
                                    <label>
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                                    </label>
                                </div>
                                <div id="divndsTab6t2" runat="server" class="reports">
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px; font-family: Arial, serif;">
                                        МОНГОЛ УЛСЫН “МЯНГАНЫ ХӨГЖЛИЙН ЗОРИЛТОД СУУРИЛСАН ҮНДЭСНИЙ ХӨГЖЛИЙН ЦОГЦ БОДЛОГО”-ЫН ХҮРЭЭНД САНГИЙН САЙДЫН ХАРИУЦАН ХЭРЭГЖҮҮЛЭХ ЗОРИЛТ, АРГА ХЭМЖЭЭНИЙ ХЭРЭГЖИЛТЭД ХИЙСЭН ХЯНАЛТ-ШИНЖИЛГЭЭ, ҮНЭЛГЭЭНИЙ ТАЙЛАН <br/>(<label id="ndsTab6t2Year" runat="server">0000</label> оны байдлаар )
                                    </div>
                                    <p style="text-align:justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Монгол Улсын “Мянганы хөгжлийн зорилтод суурилсан Үндэсний хөгжлийн цогц бодлого”-ын хүрээнд Сангийн сайдын хариуцан хэрэгжүүлэх арга хэмжээний төлөвлөгөөг Сангийн сайдын <label id="ndsTab6t2Tushaal" runat="server"></label> дугаар тушаалаар батлуулсан бөгөөд түүнд Сангийн сайдын хариуцан хэрэгжүүлэх <label id="ndsTab6t2WorkWorkCnt" runat="server">0</label> бодлого зорилт тусгагдсан бөгөөд Улсын төсвийн бодлогын хүрээнд <label id="ndsTab6t2WorkCntPolList" runat="server"></label> ажил тусгагдсан байна.</p>
                                    <p style="text-align:justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Монгол Улсын Засгийн газрын <label id="ndsTab6t2Togtool" runat="server"></label> дугаар тогтоолоор батлагдсан журмын дагуу “Монгол Улсын мянганы хөгжлийн зорилтод суурилсан Үндэсний хөгжлийн цогц бодлого”-ын хүрээнд Сангийн сайдын хариуцан хэрэгжүүлэх арга хэмжээний хэрэгжилтэд <label id="ndsTab6t2Year2" runat="server">0000</label> оны байдлаар хяналт-шинжилгээ, үнэлгээ хийхэд хэрэгжилт <label id="ndsTab6t2TotalPercent" runat="server">0</label> хувийн биелэлттэй байна.</p>
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Зорилт, арга хэмжээний хэрэгжилт тус бүрийг авч үзвэл дараах байдалтай байна. Үүнд: </b></p>
                                    <div id="divndsTab6t2Table1" runat="server">
                                        
                                    </div>
                                    <br />
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Үндэсний хөгжлийн цогц бодлогын хэрэгжилтийн байдлыг газруудаар гаргавал:</b></p>
                                    <div id="divndsTab6t2Table2" runat="server">
                                        
                                    </div>
                                    <br />
                                    <p style="text-align:justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Хяналт-шинжилгээ, үнэлгээний дүнгээс үзэхэд, Сангийн сайдын дангаар хэрэгжүүлэх арга хэмжээний биелэлт бусад Сайдтай хамтран хэрэгжүүлэх арга хэмжээний биелэлттэй харьцуулахад хангалттай сайн хэрэгжиж байна. Иймд цаашид бусад Сайдтай хамтран хэрэгжүүлэх арга хэмжээг хэрэгжүүлэхэд анхаарч ажиллах шаардлагатай байна.</p>
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label id="ndsTab6t2Tab3Desc" runat="server"></label> Үүнд:</p>
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Хэрэгжилт удаашралтай байгаа арга хэмжээнүүд:</b></p>
                                    <div id="divndsTab6t2Table3" runat="server">
                                       
                                    </div>
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Дүгнэлт:</b></p>
                                    <div id="divndsTab6t2Dugnelt" runat="server">
                                    
                                    </div>
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Зөвлөмж:</b></p>
                                    <div id="divndsTab6t2Zuvlumj" runat="server">
                                    
                                    </div>
                                    <div style="text-align:center; font-weight:bold;">ТӨСВИЙН ХЯНАЛТ, ЭРСДЭЛИЙН УДИРДЛАГЫН ГАЗАР</div>
                                </div>
                            </div>
                            <div style="float:left; display:block; width:25%">
                                <div style="display:block; overflow:hidden; margin-top:10px; margin-left:20px;">Тушаал</div>
                                <div style="display:block; overflow:hidden; margin-left:20px;">
                                    <div style="float:left; display:block; width:90%"><textarea id="ndsTab6t2InputTushaal" runat="server" class="form-control" rows="2" style="padding:1px;"></textarea></div>
                                    <div style="float:left; display:block; width:10%"><button id="ndsTab6t2BtnTushaal" title="Тушаалын нэр оруулах" class="btn btn-default btn-circle btn-sm" type="button" style="vertical-align:top; margin-left:3px;"><span class="fa fa-check"></span></button></div>
                                </div>
                                <div style="display:block; overflow:hidden; margin-top:10px; margin-left:20px;">Тогтоол</div>
                                <div style="display:block; overflow:hidden; margin-left:20px;">
                                    <div style="float:left; display:block; width:90%"><textarea id="ndsTab6t2InputTogtool" runat="server" class="form-control" rows="2" style="padding:1px;"></textarea></div>
                                    <div style="float:left; display:block; width:10%"><button id="ndsTab6t2BtnTogtool" title="Тогтоолын нэр оруулах" class="btn btn-default btn-circle btn-sm" type="button" style="vertical-align:top; margin-left:3px;"><span class="fa fa-check"></span></button></div>
                                </div>
                                <div style="display:block; overflow:hidden; margin-top:10px; margin-left:20px;">Дүгнэлт</div>
                                <div style="display:block; overflow:hidden; margin-left:20px;">
                                    <div style="float:left; display:block; width:90%">
                                        <textarea id="ndsTab6t2InputDugnelt" runat="server" class="form-control" rows="2" style="padding:1px;"></textarea>
                                        <script>
                                            CKEDITOR.replace('ndsTab6t2InputDugnelt', {
                                                toolbar: [

                                                ]
                                            });
                                        </script>
                                    </div>
                                    <div style="float:left; display:block; width:10%"><button id="ndsTab6t2BtnDugnelt" title="Дүгнэлт оруулах" class="btn btn-default btn-circle btn-sm" type="button" style="vertical-align:top; margin-left:3px;"><span class="fa fa-check"></span></button></div>
                                </div>
                                <div style="display:block; overflow:hidden; margin-top:10px; margin-left:20px;">Зөвлөмж</div>
                                <div style="display:block; overflow:hidden; margin-left:20px;">
                                    <div style="float:left; display:block; width:90%">
                                        <textarea id="ndsTab6t2InputZuvlumj" runat="server" class="form-control" rows="2" style="padding:1px;"></textarea>
                                        <script>
                                            CKEDITOR.replace('ndsTab6t2InputZuvlumj', {
                                                toolbar: [
                                                    
                                                ]
                                            });
                                        </script>
                                    </div>
                                    <div style="float:left; display:block; width:10%"><button id="ndsTab6t2BtnZuvlumj" title="Зөвлөмж оруулах" class="btn btn-default btn-circle btn-sm" type="button" style="vertical-align:top; margin-left:3px;"><span class="fa fa-check"></span></button></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="ndsTab6t3" class="tab-pane">
                        <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                            <div style="width:70%; float:left;">
                                <div style="width:65px; float:left; margin-right:10px;"><select id="ndsTab6t3SelectYear" runat="server" class="form-control" style="padding:1px"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select></div>
                                <div style="width:45px; float:left; margin-right:10px; padding-top:8px;">Үе шат: </div>
                                <div style="width:100px; float:left; margin-right:10px;"><select id="ndsTab6t3SelectShat" runat="server" class="form-control" style="padding:1px"><option value="0000-0000" selected>Бүгд</option><option value="2007-2021">Бүх үе шат</option><option value="2007-2015">1-р үе шат</option><option value="2016-2021">2-р үе шат</option></select></div>
                                <div style="width:45px; float:left; margin-right:10px; padding-top:8px;">Газар: </div>
                                <div style="width:100px; float:left; margin-right:10px;"><select id="ndsTab6t3SelectBranch" runat="server" class="form-control" style="padding:1px"><option value="all">Бүгд</option></select></div>
                           </div>
                            <div style="text-align:right; width:30%; float:left;">
                                <img id="ndsTab6t3ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" title="PDF руу татах" onclick="exportPdf('#divndsTab6t3')" />
                                <img id="ndsTab6t3ExportWord" src="../img/word-icon.png" style="cursor:pointer;" title="Word руу татах" onclick="exportWord('#divndsTab6t3', 'ҮХЦБ-н хэрэгжилтийн дэлгэрэнгүй тайлан <% Response.Write(ndsTab6t3SelectYear.Items[ndsTab6t3SelectYear.SelectedIndex].Text); %>')" />
                                <img id="ndsTab6t3ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" title="Excel руу татах" onclick="exportExcel('#divndsTab6t3')" />
                                <button id="ndsTab6t3Print" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divndsTab6t3')"><span class="fa fa-print"></span> Хэвлэх </button>
                                <button id="ndsTab6t3Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                            </div>
                        </div>
                        <div id="loaderTab63" class="search-background">
                            <label>
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                            </label>
                        </div>
                        <div id="divndsTab6t3" runat="server" class="reports">
                            <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px; font-family: Arial, serif;">
                                МОНГОЛ УЛСЫН “МЯНГАНЫ ХӨГЖЛИЙН ЗОРИЛТОД СУУРИЛСАН ҮНДЭСНИЙ ХӨГЖЛИЙН ЦОГЦ БОДЛОГО”-ЫН ХҮРЭЭНД САНГИЙН САЙДЫН ХАРИУЦАН ХЭРЭГЖҮҮЛЭХ ЗОРИЛТ, АРГА ХЭМЖЭЭНИЙ ХЭРЭГЖИЛТ <br/>(<label id="ndsTab6t3Year" runat="server">0000</label> оны байдлаар )
                            </div>
                            <div id="divndsTab6t3Table" runat="server">
                                        
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </article>   
    </div>    
</section>

<div id="ndsPolicyModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="ndsPolicyModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >ҮХЦБ-ийн бодлого&nbsp;<span id="ndsPolicyModalHeaderLabel">нэмэх</span></h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div id="ndsPolicyID" class="form-group hide"></div>
                            <div class="form-group">
                                <input id="ndsPolicyModalPolicyno" name="ndsPolicyModalPolicyno" class="form-control" type="text" placeholder="Дугаар"/>
                            </div>
                            <div class="form-group">
                                <textarea id="ndsPolicyModalPolicyname" name="ndsPolicyModalPolicyname" class="form-control" required="" placeholder="Бодлого" rows="4"></textarea>
                            </div>                        
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                    <button id="ndsPolicySave" class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
                </div>
            </form>
        </div>
    </div>
</div>
<div id="ndsObjectModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="ndsObjectModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> × </button>
                    <h4 class="modal-title" >ҮЧ-ийн зорилт&nbsp;<span id="ndsObjectModalHeaderLabel">нэмэх</span></h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div id="ndsObjectID" class="form-group hide"></div>
                            <div class="form-group">  
                                <select id="ndsObjectModalPolicy" name="ndsObjectModalPolicy" class="form-control"></select>
                            </div>
                            <div class="form-group"> 
                                <input id="ndsObjectModalObjectno" name="ndsObjectModalObjectno" class="form-control" type="text" placeholder="Дугаар"/>
                            </div>
                            <div class="form-group"> 
                                <textarea id="ndsObjectModalObjectname" name="ndsObjectModalObjectname" class="form-control" required="" placeholder="Зорилт" rows="4"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                    <button id="ndsObjectSave" class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
                </div>
            </form>
        </div>
    </div>
</div>
<div id="ndsWorkModal" class="modal fade" aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="ndsWorkModalForm">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> × </button>
                <h4 class="modal-title" >ҮХЦБ-ийн арга хэмжээ&nbsp;<span id="ndsWorkModalHeaderLabel">нэмэх</span></h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div id="ndsWorkID" class="form-group hide"></div> 
                        <%--<div class="form-group">
                            Он: <label id="ndsWorkModalCurrentYr" runat="server"></label>
                        </div>--%>
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;"> 
                            <label class="col-md-2 control-label">СС хийх</label>
                            <div class="col-md-10">                                  
                                <select id="ndsWorkModalTeam" name="ndsWorkModalTeam" class="form-control">
                                    <option value="">- СС хийх сонго -</option>
                                    <option value="0">Дангаар</option>
                                    <option value="1">Хамтран</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;"> 
                            <label class="col-md-2 control-label">Үе шат</label>
                            <div class="col-md-10">                                  
                                <select id="ndsWorkModalYear" name="ndsWorkModalYear" class="form-control">
                                    <option value="">- Үе шат сонго -</option>
                                    <option value="2007-2021">Бүх үе шат /2007-2021/</option>
                                    <option value="2007-2015">1-р үе шат /2007-2015/</option>
                                    <option value="2016-2021">2-р үе шат /2016-2021/</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;"> 
                            <label class="col-md-2 control-label">Бодлого</label>
                            <div class="col-md-10">                                  
                                <select id="ndsWorkModalPolicy" name="ndsWorkModalPolicy" class="form-control"></select>
                            </div>
                        </div>
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                            <label class="col-md-2 control-label">Зорилт</label>
                            <div class="col-md-10">                               
                                <select id="ndsWorkModalObject" name="ndsWorkModalObject" class="form-control" disabled><option value="0">- Бодлого сонго -</option></select>
                            </div>
                        </div>
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                            <label class="col-md-2 control-label">Арга хэмжээ</label>
                            <div class="col-md-2">
                                <input id="ndsWorkModalWorkNo" name="ndsWorkModalWorkNo" class="form-control" type="text" required="" placeholder="Дугаар" value=""/>
                            </div>
                            <div class="col-md-8">
                                <textarea id="ndsWorkModalWorkName" name="ndsWorkModalWorkName" class="form-control" required="" placeholder="Арга хэмжээ" rows="2"></textarea>
                            </div>
                        </div>
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                            <label class="col-md-2 control-label">Шалгуур үзүүлэлт</label>
                            <div class="col-md-10">
                                <textarea id="ndsWorkModalCriteria" name="ndsWorkModalCriteria" class="form-control" required="" placeholder="Шалгуур үзүүлэлт" rows="2"></textarea>
                            </div>
                        </div>
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                            <label class="col-md-2 control-label">Хүрэх үр дүн</label>
                            <div class="col-md-10">
                                <textarea id="ndsWorkModalResult" name="ndsWorkModalResult" class="form-control" required="" placeholder="Хүрэх үр дүн" rows="2"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
							<label class="col-md-2 control-label">Хариуцах яамд</label>
                            <div class="col-md-10">
                                <div id="divndsWorkModalYamlist">

                                </div>
                            </div> 
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
							<label class="col-md-2 control-label">Хариуцах газар</label>
                            <div class="col-md-10">
                                <div id="divndsWorkModalGazarlist">

                                </div>
                            </div> 
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
							<label class="col-md-2 control-label">Холбох ЗГҮАХ</label>
                            <div class="col-md-10">
                                <div id="divndsWorkModalGAPList">

                                </div>
                            </div> 
                        </div>
                    </div>                    
                    <div class="col-md-12">
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
							<label class="col-md-2 control-label">Холбох ҮЧ</label>
                            <div class="col-md-10">
                                <div id="divndsWorkModalEGList">

                                </div>
                            </div> 
                        </div>
                    </div>                            
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                <button id="ndsWorkSave" class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
            </div>
            </form>
        </div>
    </div>
</div>
<div id="ndsImplModal" class="modal fade" aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> × </button>
                    <h4 class="modal-title" >ҮХЦБ-ийн биелэлт&nbsp;<span id="ndsImplModalHeaderLabel">нэмэх</span></h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div id="ndsImplID" class="form-group hide"></div> 
                        <div class="form-group" style="margin-bottom:15px;">
                            Он: <label id="ndsImplModalCurrentYr" runat="server"></label>
                        </div> 
                        <div class="form-group" style="margin-bottom:15px;">
                            <label id="ndsImplModalWork" runat="server"></label>
                        </div>
                        <div class="form-group" style="height:20px;">
                            <label class="col-md-2 control-label">Биелэлт</label>
                        </div>
                        <div class="form-group" style="margin:0px; display:block; overflow:hidden;">
                            <div class="col-md-12">   
                                <div style="width:100%; display: block; overflow: hidden; padding-bottom: 5px;">
                                    <div style="width:15%; float:right; text-align:right;">
                                        Тэмдэгт: <label id="ndsImplModalCharLength" runat="server">0</label>/12000
                                    </div>
                                    <div style="width:85%; float:right; text-align:right;">
                                        <button id="ndsImplDelete" type="button" class="btn btn-labeled btn-danger" style="font-size: 12px; margin-top: -5px;">
                                            <span class="btn-label" style="padding: 3px 7px 3px 5px;">
                                                <i class="fa fa-trash-o"></i>
                                            </span>Биелэлт устгах
                                        </button>
                                    </div>                                    
                                </div> 
                                <textarea id="ndsImplModalImpl" name="ndsImplModalImpl"></textarea>
                                <script>
                                    CKEDITOR.replace('ndsImplModalImpl', {
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
                                    var editor = CKEDITOR.instances.ndsImplModalImpl;
                                    editor.on('key', function (evt) {
                                        $("#ndsImplModalCharLength").text(replaceDisplayToDatabase($.trim(evt.editor.getData())).length);
                                    }, editor.element.$);
                                </script>
                            </div>
                        </div>
                    </div>
                </div>                
            </div>
            <div class="modal-footer">
                <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                <button id="ndsImplSave" class="btn btn-success btn-sm" type="button"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
            </div>
        </div>
    </div>
</div>
<div id="ndsTab6t1PrintModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog" style="width:90%;">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                <h4 class="modal-title" >Үндэсний хөгжлийн цогц бодлогын төлөвлөгөө</h4>
            </div>
            <div class="modal-body" style="padding-bottom:0px;">
                <div class="row">
                    <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                        <div style="width:70%; float:left;">
                            <div style="width:50px; float:left; margin-right:10px; padding-top:8px;">Үе шат: </div>
                            <div style="width:90px; float:left; margin-right:10px;"><select id="ndsTab6t1SelectYear" runat="server" class="form-control" style="padding:1px"><option value="0000-0000" selected>Бүгд</option><option value="2007-2021">Бүх үе шат</option><option value="2007-2015">1-р үе шат</option><option value="2016-2021">2-р үе шат</option></select></div>
                            <div style="width:30px; float:left; margin-right:10px; padding-top:8px;">Газар: </div>
                            <div style="width:90px; float:left; margin-right:10px;"><select id="ndsTab6t1SelectBranch" runat="server" class="form-control" style="padding:1px"><option value="0">Бүгд</option></select></div>
                        </div>
                        <div style="text-align:right; width:30%; float:left;">
                            <img id="ndsTab6t1ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" title="PDF руу татах" onclick="exportPdf('#divndsTab6t1')" />
                            <img id="ndsTab6t1ExportWord" src="../img/word-icon.png" style="cursor:pointer;" title="Word руу татах" onclick="exportWord('#divndsTab6t1', 'ҮХЦБ-н төлөвлөгөө')" />
                            <img id="ndsTab6t1ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" title="Excel руу татах" onclick="exportExcel('#divndsTab6t1')" />
                            <button id="ndsTab6t1ExportPrint" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divndsTab6t1')"><span class="fa fa-print"></span> Хэвлэх </button>
                            <button id="ndsTab6t1ExportRefresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                        </div>
                    </div>
                    <div id="loaderTab61" class="search-background">
                        <label>
                            <img width="64" height="" src="img/loading.gif"/>
                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                        </label>
                    </div>
                    <div id="divndsTab6t1" runat="server" class="reports">
                        <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px; font-family: Arial, serif;">
                            МОНГОЛ УЛСЫН “МЯНГАНЫ ХӨГЖЛИЙН ЗОРИЛТОД СУУРИЛСАН ҮНДЭСНИЙ ХӨГЖЛИЙН ЦОГЦ БОДЛОГО”-ЫН ХҮРЭЭНД САНГИЙН САЙДЫН ХАРИУЦАН ХЭРЭГЖҮҮЛЭХ ЗОРИЛТ, АРГА ХЭМЖЭЭНИЙ ХЭРЭГЖИЛТИЙГ ХАРИУЦАН ЗОХИОН БАЙГУУЛАХ ХУВААРЬ
                        </div>
                        <div id="divndsTab6t1Table" runat="server">
                                        
                        </div>                       
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    pageSetUp();
    var globalAjaxVar = null;
    var pagefunction = function () {
        if ($('#ndsTab1HeadLi1').attr('class') == 'active') {
            dataBindPolicyTable();
            dataBindPolicyDDLs();
        }
        else if ($('#ndsTab1HeadLi2').attr('class') == 'active') {
            dataBindObjectTable();
        }
        else if ($('#ndsTab1HeadLi3').attr('class') == 'active') {
            dataBindWorkTable();
            dataBindWorkModalGazarlist("none");
            dataBindWorkModalGAPList("none");
            dataBindWorkModalEGList("none");
            dataBindTab6t1Table();
        }
        else if ($('#ndsTab1HeadLi4').attr('class') == 'active') {
            dataBindTab4SetFirstControls();
        }
        else if ($('#ndsTab1HeadLi5').attr('class') == 'active') {
            dataBindTab5t1Table();
            dataBindTab5t2SetFirstControls();
            dataBindTab5t3SetFirstControls();
        }
        else if ($('#ndsTab1HeadLi6').attr('class') == 'active') {
            dataBindTab6t2Datas();
            dataBindTab6t3SetFirstControls();
        }
        $('#ndsWorkModalObject').prop('disabled', true);
    }
    var pagedestroy = function () {
        if (globalAjaxVar != null) {
            globalAjaxVar.abort();
            globalAjaxVar = null;
        }
    }
    pagefunction();
    function ndsDatabindTabs(el) {
        if ($.trim($(el).attr('id')) == 'ndsTab1HeadLi1') {
            if ($.trim($('#divBindPolicyTable').html()) == "") {
                dataBindPolicyTable();
                dataBindPolicyDDLs();
            }
        }
        else if ($.trim($(el).attr('id')) == 'ndsTab1HeadLi2') {
            if ($.trim($('#divBindObjectTable').html()) == "") {
                dataBindObjectTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'ndsTab1HeadLi3') {
            if ($.trim($('#divBindWorkTable').html()) == "") {
                dataBindWorkTable();
                dataBindWorkModalGazarlist("none");
                dataBindWorkModalGAPList("none");
                dataBindWorkModalEGList("none");
                dataBindTab6t1Table();
            }
        }
        else if ($.trim($(el).attr('id')) == 'ndsTab1HeadLi4') {
            if ($.trim($('#divBindImplTable').html()) == "") {
                dataBindTab4SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'ndsTab1HeadLi5') {
            if ($.trim($('#divndsTab5t1Table').html()) == "") {
                dataBindTab5t1Table();
                dataBindTab5t2SetFirstControls();
                dataBindTab5t3SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'ndsTab1HeadLi6') {
            if ($.trim($('#divndsTab6t2Table1').html()) == "") {
                dataBindTab6t2Datas();
                dataBindTab6t3SetFirstControls();
            }
        }
    }

    //tab5t2
    function dataBindTab5t2SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/globalGetGazarListForDDL",
            data: '{yr:"' + $('#ndsTab5t2SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#ndsTab5t2SelectBranch").html(msg.d);
                dataBindTab5t2Table();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    //tab5t3
    function dataBindTab5t3SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/globalGetGazarListForDDL",
            data: '{yr:"' + $('#ndsTab5t3SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#ndsTab5t3SelectBranch").html(msg.d);
                dataBindTab5t3Table();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    //tab4
    function dataBindTab4SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/globalGetGazarListForDDL",
            data: '{yr:"' + $('#ndsTab4SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#ndsTab4SelectBranch").html(msg.d);
                dataBindImplTable('all');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    //tab6t3
    function dataBindTab6t3SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/globalGetGazarListForDDL",
            data: '{yr:"' + $('#ndsTab6t3SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#ndsTab6t3SelectBranch").html(msg.d);
                dataBindTab6t3Table();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }


    function dataBindPolicyTable() {
        showLoader('loaderTab1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/nds_GetNDSPolicyTable",
            data: '{}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divBindPolicyTable").html(msg.d);
                hideLoader('loaderTab1');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindPolicyDDLs() {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/GetPolicyListForDDL",
            data: '{yr:"2007", end_yr:"2021", type:"1"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else { $("#ndsObjectModalPolicy").html("<option value=\"0\">- Бодлого сонго -</option>" + arrMsg[1]); $("#ndsWorkModalPolicy").html("<option value=\"0\">- Бодлого сонго -</option>" + arrMsg[1]); }
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindObjectTable() {
        showLoader('loaderTab2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/nds_GetNDSObjectTable",
            data: '{}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divBindObjectTable").html(msg.d);
                hideLoader('loaderTab2');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindWorkTable() {
        showLoader('loaderTab3');
        var varMsg = $("#ndsTab3SelectYear option:selected").val();
        var arrMsg = varMsg.split("-");
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/nds_GetNDSWorkTable",
            data: '{yr:"' + arrMsg[0] + '",end_yr:"' + arrMsg[1] + '", tm:"' + $('#ndsTab3SelectTeam option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divBindWorkTable").html(msg.d);
                hideLoader('loaderTab3');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindWorkModalObjectDDL(objId) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/GetObjectListForDDL",
            data: '{id:"' + $("#ndsWorkModalPolicy option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    $('#ndsWorkModalObject').prop('disabled', false);
                    $("#ndsWorkModalObject").html("<option value=\"0\">- Зорилт сонго -</option>" + arrMsg[1]);
                    $("#ndsWorkModalObject").val(objId);
                }
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindWorkModalYamlist(selectedList) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/GetYamListForDDL",
            data: '{selectedList:"' + selectedList + '", type:"1", yr:"' + $('#indexCurrentYear').html() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    $("#divndsWorkModalYamlist").html(arrMsg[1]);
                }
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindWorkModalGazarlist(selectedList) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/GetBranchListForDDL",
            data: '{selectedList:"' + selectedList + '", type:"1", yr:"' + $('#indexCurrentYear').html() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    $("#divndsWorkModalGazarlist").html(arrMsg[1]);
                }
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindWorkModalGAPList(selectedList) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/GetMultiSelectList",
            data: '{type:"2", selectedList:"' + selectedList + '", stid:"none"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    $("#divndsWorkModalGAPList").html("<select id=\"ndsWorkModalGAPList\" name=\"ndsWorkModalgapList\" multiple=\"multiple\" style=\"width:100%\">" + arrMsg[1]);
                    $("#divndsWorkModalGAPList").append("</select><script>$(\"#ndsWorkModalGAPList\").select2();<\/script>");
                }
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindWorkModalEGList(selectedList) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/GetMultiSelectList",
            data: '{type:"3", selectedList:"' + selectedList + '", stid:"none"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    $("#divndsWorkModalEGList").html("<select id=\"ndsWorkModalEGList\" name=\"ndsWorkModalEGList\" multiple=\"multiple\" style=\"width:100%\">" + arrMsg[1]);
                    $("#divndsWorkModalEGList").append("</select><script>$(\"#ndsWorkModalEGList\").select2();<\/script>");
                }
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindImplTable(impl) {
        showLoader('loaderTab4');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/nds_GetNDSImplTable",
            data: '{yr:"' + $("#ndsTab4SelectYear option:selected").text() + '", shat:"' + $("#ndsTab4SelectShat option:selected").val() + '", brid:"' + $("#ndsTab4SelectBranch option:selected").val() + '", impl:"' + impl + '", eval:"' + $("#ndsTab4SelectEva option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divBindImplTable").html(replaceDatabaseToDisplay(msg.d));
                hideLoader('loaderTab4');

                var pCnt = 0;
                var pValTotal = 0;
                if ($('#ndsTab4Datatable').children('thead').children('tr').children('th').length == 9) {
                    $('#ndsTab4Datatable > tbody > tr').each(function () {
                        var pVal = $('td:eq(7) select option:selected', this).val();
                        if (pVal != "none") {
                            pCnt++;
                            pValTotal = parseInt(pValTotal) + parseInt(pVal);
                        }
                    });
                }
                else {
                    $('#ndsTab4Datatable > tbody > tr').each(function () {
                        var pVal = $('td:eq(5) select option:selected', this).val();
                        if ($(this).find('td:eq(0)').attr('colspan') != "7") {
                            if (pVal != "none") {
                                pCnt++;
                                pValTotal = parseInt(pValTotal) + parseInt(pVal);
                            }
                        }
                    });
                }
                $('#ndsImplTotalPer').text((parseInt(pValTotal) / parseInt(pCnt)) + ' %');
                $('#ndsImplTotalPer').text($('#ndsImplTotalPer').text().replace("NaN %", "0 %"));
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab5t1Table() {
        showLoader('loaderTab51');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/nds_GetTab5t1Table",
            data: '{strt_yr:"' + $("#ndsTab5t1SelectShat option:selected").val().split("-")[0] + '", end_yr:"' + $("#ndsTab5t1SelectShat option:selected").val().split("-")[1] + '", type:"1", yr:"' + $("#ndsTab5t1SelectYear option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divndsTab5t1Table").html(msg.d);
                hideLoader('loaderTab51');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab5t2Table() {
        showLoader('loaderTab52');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/nds_GetTab5t2Table",
            data: '{strt_yr:"' + $("#ndsTab5t2SelectShat option:selected").val().split("-")[0] + '", end_yr:"' + $("#ndsTab5t2SelectShat option:selected").val().split("-")[1] + '", type:"1", yr:"' + $("#ndsTab5t2SelectYear option:selected").val() + '", brid:"' + $("#ndsTab5t2SelectBranch option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divndsTab5t2Table").html(msg.d);
                hideLoader('loaderTab52');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab5t3Table() {
        showLoader('loaderTab53');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/nds_GetTab5t3Table",
            data: '{strt_yr:"' + $("#ndsTab5t3SelectShat option:selected").val().split("-")[0] + '", end_yr:"' + $("#ndsTab5t3SelectShat option:selected").val().split("-")[1] + '", type:"1", yr:"' + $("#ndsTab5t3SelectYear option:selected").val() + '", brid:"' + $("#ndsTab5t3SelectBranch option:selected").val() + '", eval:"' + $("#ndsTab5t3SelectEva option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divndsTab5t3Table").html(msg.d);
                hideLoader('loaderTab53');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab6t1Table() {
        showLoader('loaderTab61');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/nds_GetTab6t1Table",
            data: '{strt_yr:"' + $("#ndsTab6t1SelectYear option:selected").val().split("-")[0] + '", end_yr:"' + $("#ndsTab6t1SelectYear option:selected").val().split("-")[1] + '", type:"1", brid:"' + $("#ndsTab6t1SelectBranch option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divndsTab6t1Table").html(msg.d);
                hideLoader('loaderTab61');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab6t2Datas() {
        showLoader('loaderTab62');
        $("#ndsTab6t2Year").text($("#ndsTab6t2SelectYear option:selected").val());
        $("#ndsTab6t2Year2").text($("#ndsTab6t2SelectYear option:selected").val());
        $("#ndsTab6t2Tushaal").text($("#ndsTab6t2InputTushaal").val());
        $("#ndsTab6t2Togtool").text($("#ndsTab6t2InputTogtool").val());
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/nds_GetTab6t2Datas",
            data: '{strt_yr:"' + $("#ndsTab6t2SelectShat option:selected").val().split("-")[0] + '", end_yr:"' + $("#ndsTab6t2SelectShat option:selected").val().split("-")[1] + '", type:"1", yr:"' + $("#ndsTab6t2SelectYear option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                $("#ndsTab6t2WorkWorkCnt").html(arrMsg[0]);
                $("#ndsTab6t2WorkCntPolList").html(arrMsg[1]);
                $("#ndsTab6t2TotalPercent").html(arrMsg[2]);
                $("#ndsTab6t2Tab3Desc").html(arrMsg[3]);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/nds_GetTab5t1Table",
                    data: '{strt_yr:"' + $("#ndsTab6t2SelectShat option:selected").val().split("-")[0] + '", end_yr:"' + $("#ndsTab6t2SelectShat option:selected").val().split("-")[1] + '", type:"1", yr:"' + $("#ndsTab6t2SelectYear option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        $("#divndsTab6t2Table1").html(msg.d);
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "ws.aspx/nds_GetTab5t2Table",
                            data: '{strt_yr:"' + $("#ndsTab6t2SelectShat option:selected").val().split("-")[0] + '", end_yr:"' + $("#ndsTab6t2SelectShat option:selected").val().split("-")[1] + '", type:"1", yr:"' + $("#ndsTab6t2SelectYear option:selected").val() + '", brid:"0"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                $("#divndsTab6t2Table2").html(msg.d);
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/nds_GetTab5t3Table",
                                    data: '{strt_yr:"' + $("#ndsTab6t2SelectShat option:selected").val().split("-")[0] + '", end_yr:"' + $("#ndsTab6t2SelectShat option:selected").val().split("-")[1] + '", type:"1", yr:"' + $("#ndsTab6t2SelectYear option:selected").val() + '", brid:"0", eval:"all"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        $("#divndsTab6t2Table3").html(msg.d);
                                        hideLoader('loaderTab62');
                                    },
                                    failure: function (response) {
                                        alert('FAILURE: ' + response.d);
                                    },
                                    error: function (xhr, status, error) {
                                        var err = eval("(" + xhr.responseText + ")");
                                        if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                        else window.location = '../#pg/error500.aspx';
                                    }
                                });
                            },
                            failure: function (response) {
                                alert('FAILURE: ' + response.d);
                            },
                            error: function (xhr, status, error) {
                                var err = eval("(" + xhr.responseText + ")");
                                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                else window.location = '../#pg/error500.aspx';
                            }
                        });
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        var err = eval("(" + xhr.responseText + ")");
                        if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                        else window.location = '../#pg/error500.aspx';
                    }
                });

            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
        
        
        
    }
    function dataBindTab6t3Table() {
        showLoader('loaderTab63');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/nds_GetTab6t3Table",
            data: '{strt_yr:"' + $("#ndsTab6t3SelectShat option:selected").val().split("-")[0] + '", end_yr:"' + $("#ndsTab6t3SelectShat option:selected").val().split("-")[1] + '", type:"1", yr:"' + $("#ndsTab6t3SelectYear option:selected").val() + '", brid:"' + $("#ndsTab6t3SelectBranch option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divndsTab6t3Table").html(replaceDatabaseToDisplay(msg.d));
                hideLoader('loaderTab63');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }


    $("#ndsWorkModalPolicy").change(function () {
        if ($("#ndsWorkModalPolicy option:selected").val() == "0") {
            $('#ndsWorkModalObject').html("<option value=\"0\">- Зорилт сонго -</option>");
            $('#ndsWorkModalObject').prop('disabled', true);
        }
        else {
            dataBindWorkModalObjectDDL(0);
        }
    });

    $("#ndsTab1Add").click(function () {
        $("#ndsPolicyModalHeaderLabel").html("нэмэх");
        $("#ndsPolicyModalPolicyno").val("");
        $("#ndsPolicyModalPolicyname").val("");
        $("#ndsPolicyID").val("");
    });
    $("#ndsTab2Add").click(function () {
        $("#ndsObjectModalHeaderLabel").html("нэмэх");
        $("#ndsObjectModalObjectno").val("");
        $("#ndsObjectModalObjectname").val("");
        $("#ndsObjectID").val("");
        $("#ndsObjectModalPolicy")[0].selectedIndex = 0;
    });
    $("#ndsTab3Add").click(function () {
        //$('#ndsWorkModal').modal('show');
        $("#ndsWorkModalHeaderLabel").html("нэмэх");
        $("#ndsWorkModalYear")[0].selectedIndex = 0;
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/GetPolicyListForDDL",
            data: '{yr:"2007", end_yr:"2021", type:"1"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    $("#ndsWorkModalPolicy").html("<option value=\"0\">- Бодлого сонго -</option>" + arrMsg[1]);
                    $("#ndsWorkModalPolicy")[0].selectedIndex = 0;
                }
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
        $("#ndsWorkModalObject").html("");
        $('#ndsWorkModalObject').prop('disabled', true);
        $("#ndsWorkModalWorkNo").val("");
        $("#ndsWorkModalWorkName").val("");
        dataBindWorkModalYamlist("none");
        dataBindWorkModalGazarlist("none");
        dataBindWorkModalGAPList("none");
        dataBindWorkModalEGList("none");
    });
    function ndsTab4Add(id) {
        $("#ndsImplModalHeaderLabel").html("нэмэх");
        CKEDITOR.instances.ndsImplModalImpl.setData("");
        $("#ndsImplModalCharLength").text('0');
        $("#ndsImplID").text($("#ndsTab4DatatableRowID-" + id + " td:eq(1)").html());
        $("#ndsImplModalWork").text("Арга хэмжээ: " + $("#ndsTab4DatatableRowID-" + id + " td:eq(2)").html());

        $('#ndsImplModalCurrentYr').text($('#ndsTab4SelectYear option:selected').val());
    }
    $("#ndsTab3SelectYear").change(function () {
        dataBindWorkTable();
    });
    $("#ndsTab3SelectTeam").change(function () {
        dataBindWorkTable();
    });
    $("#ndsTab4SelectShat").change(function () {
        dataBindImplTable('all');
    });
    $("#ndsTab4SelectYear").change(function () {
        dataBindTab4SetFirstControls();
    });
    $("#ndsTab4SelectBranch").change(function () {
        dataBindImplTable('all');
    });
    $("#ndsTab4SelectEva").change(function () {
        dataBindImplTable('all');
    });
    $("#ndsTab4ClickImpl1").click(function () {
        dataBindImplTable('1');
    });
    $("#ndsTab4ClickImpl0").click(function () {
        dataBindImplTable('0');
    });
    $("#ndsTab5t1SelectShat").change(function () {
        dataBindTab5t1Table();
    });
    $("#ndsTab5t1SelectYear").change(function () {
        dataBindTab5t1Table();
    });
    $("#ndsTab5t2SelectShat").change(function () {
        dataBindTab5t2Table();
    });
    $("#ndsTab5t2SelectYear").change(function () {
        dataBindTab5t2SetFirstControls();
    });
    $("#ndsTab5t2SelectBranch").change(function () {
        dataBindTab5t2Table();
    });
    $("#ndsTab5t3SelectShat").change(function () {
        $("#ndsTab5t3Year").html($("#ndsTab5t3SelectYear option:selected").val());
        dataBindTab5t3Table();
    });
    $("#ndsTab5t3SelectYear").change(function () {
        $("#ndsTab5t3Year").html($("#ndsTab5t3SelectYear option:selected").val());
        dataBindTab5t3Table();
    });
    $("#ndsTab5t3SelectBranch").change(function () {
        $("#ndsTab5t3Year").html($("#ndsTab5t3SelectYear option:selected").val());
        dataBindTab5t3SetFirstControls();
    });
    $("#ndsTab5t3SelectEva").change(function () {
        $("#ndsTab5t3Year").html($("#ndsTab5t3SelectYear option:selected").val());
        dataBindTab5t3Table();
    });
    $("#ndsTab6t1SelectYear").change(function () {
        dataBindTab6t1Table();
    });
    $("#ndsTab6t1SelectBranch").change(function () {
        dataBindTab6t1Table();
    });
    $("#ndsTab6t2SelectShat").change(function () {
        dataBindTab6t2Datas();
    });
    $("#ndsTab6t2SelectYear").change(function () {
        dataBindTab6t2Datas();
    });
    $("#ndsTab6t2BtnTushaal").click(function () {
        $("#ndsTab6t2Tushaal").text($("#ndsTab6t2InputTushaal").val());
    });
    $("#ndsTab6t2BtnTogtool").click(function () {
        $("#ndsTab6t2Togtool").text($("#ndsTab6t2InputTogtool").val());
    });
    $("#ndsTab6t2BtnDugnelt").click(function () {
        $("#divndsTab6t2Dugnelt").html($.trim(CKEDITOR.instances.ndsTab6t2InputDugnelt.getData()));
    });
    $("#ndsTab6t2BtnZuvlumj").click(function () {
        $("#divndsTab6t2Zuvlumj").html($.trim(CKEDITOR.instances.ndsTab6t2InputZuvlumj.getData()));
    });
    $("#ndsTab6t3SelectShat").change(function () {
        dataBindTab6t3Table();
    });
    $("#ndsTab6t3SelectYear").change(function () {
        dataBindTab6t3SetFirstControls();
    });
    $("#ndsTab6t3SelectBranch").change(function () {
        dataBindTab6t3Table();
    });

    $("#ndsTab5t1Refresh").click(function () {
        $("#ndsTab5t1SelectShat").val("0000-0000");
        $("#ndsTab5t1SelectYear").val($("#indexCurrentYear").text());
        dataBindTab5t1Table();
    });
    $("#ndsTab5t2Refresh").click(function () {
        $("#ndsTab5t2SelectShat").val("0000-0000");
        $("#ndsTab5t2SelectYear").val($("#indexCurrentYear").text());
        $("#ndsTab5t2SelectBranch").val(0);
        dataBindTab5t2Table();
    });
    $("#ndsTab5t3Refresh").click(function () {
        $("#ndsTab5t3SelectShat").val("0000-0000");
        $("#ndsTab5t3SelectYear").val($("#indexCurrentYear").text());
        $("#ndsTab5t3SelectBranch").val(0);
        $("#ndsTab5t3SelectEva").val('all');
        dataBindTab5t3Table();
    });
    $("#ndsTab6t1Refresh").click(function () {
        $("#ndsTab6t1SelectShat").val("0000-0000");
        $("#ndsTab6t1SelectBranch").val(0);
        dataBindTab6t1Table();
    });
    $("#ndsTab6t2Refresh").click(function () {
        $("#ndsTab6t2SelectShat").val("0000-0000");
        $("#ndsTab6t2SelectYear").val($("#indexCurrentYear").text());
        dataBindTab6t2Datas();
    });
    $("#ndsTab6t3Refresh").click(function () {
        $("#ndsTab6t3SelectShat").val("0000-0000");
        $("#ndsTab6t3SelectYear").val($("#indexCurrentYear").text());
        $("#ndsTab6t3SelectBranch").val(0);
        dataBindTab6t3Table();
    });

    function showEditPolicyModal(id) {
        $("#ndsPolicyModalPolicyno").val($("#ndsTab1DatatableRowID-" + id + " td:eq(2)").html());
        $("#ndsPolicyModalPolicyname").val($("#ndsTab1DatatableRowID-" + id + " td:eq(3)").html());
        $("#ndsPolicyID").text($("#ndsTab1DatatableRowID-" + id + " td:eq(0)").html());
        $("#ndsPolicyModalHeaderLabel").html("засах");
    }
    function showEditObjectModal(id) {
        $("#ndsObjectModalPolicy").val($("#ndsTab2DatatableRowID-" + id + " td:eq(2)").html());
        $("#ndsObjectModalObjectno").val($("#ndsTab2DatatableRowID-" + id + " td:eq(5)").html());
        $("#ndsObjectModalObjectname").val($("#ndsTab2DatatableRowID-" + id + " td:eq(6)").html());
        $("#ndsObjectID").text($("#ndsTab2DatatableRowID-" + id + " td:eq(1)").html());
        $("#ndsObjectModalHeaderLabel").html("засах");
    }
    function showEditWorkModal(id) {
        $("#ndsWorkModalHeaderLabel").html("засах");
        $("#ndsWorkID").text($("#ndsTab3DatatableRowID-" + id + " td:eq(0)").html());
        $("#ndsWorkModalTeam").val($("#ndsTab3DatatableRowID-" + id + " td:eq(1)").html());
        $("#ndsWorkModalYear").val($("#ndsTab3DatatableRowID-" + id + " td:eq(7)").html());
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/GetPolicyListForDDL",
            data: '{yr:"2007", end_yr:"2021", type:"1"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    $("#ndsWorkModalPolicy").html("<option value=\"0\">- Бодлого сонго -</option>" + arrMsg[1]);
                    $("#ndsWorkModalPolicy").val($("#ndsTab3DatatableRowID-" + id + " td:eq(2)").html());
                }
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/GetObjectListForDDL",
            data: '{id:"' + $("#ndsTab3DatatableRowID-" + id + " td:eq(2)").html() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    $('#ndsWorkModalObject').prop('disabled', false);
                    $("#ndsWorkModalObject").html("<option value=\"0\">- Зорилт сонго -</option>" + arrMsg[1]);
                    $("#ndsWorkModalObject").val($("#ndsTab3DatatableRowID-" + id + " td:eq(3)").html());
                }
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
        //dataBindWorkModalObjectDDL($("#ndsTab3DatatableRowID-" + id + " td:eq(3)").html());
        //$("#ndsWorkModalObject").val($("#ndsTab3DatatableRowID-" + id + " td:eq(3)").html());
        $("#ndsWorkModalWorkNo").val($("#ndsTab3DatatableRowID-" + id + " td:eq(4)").html());
        $("#ndsWorkModalWorkName").val($("#ndsTab3DatatableRowID-" + id + " td:eq(5)").html());
        $("#ndsWorkModalCriteria").val($("#ndsTab3DatatableRowID-" + id + " td:eq(9)").html());
        $("#ndsWorkModalResult").val($("#ndsTab3DatatableRowID-" + id + " td:eq(10)").html());
        dataBindWorkModalYamlist($("#ndsTab3DatatableRowID-" + id + " td:eq(14)").html());
        dataBindWorkModalGazarlist($("#ndsTab3DatatableRowID-" + id + " td:eq(8)").html());
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/GetEGNDSGAPDatas",
            data: '{workid:"' + id + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    dataBindWorkModalGAPList(arrMsg[2]);
                    dataBindWorkModalEGList(arrMsg[3]);
                }
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    function showEditImplModal(id) {
        $("#ndsImplID").text($("#ndsTab4DatatableRowID-" + id + " td:eq(1)").html());
        $("#ndsImplModalHeaderLabel").html("засах");
        $("#ndsImplModalWork").text("Арга хэмжээ: " + $("#ndsTab4DatatableRowID-" + id + " td:eq(2)").html());

        $('#ndsImplModalCurrentYr').text($('#ndsTab4SelectYear option:selected').val());

        var myimpl = "";
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteScalar",
            data: '{qry:"SELECT IMPL FROM TBL_WORK_IMPLEVAL WHERE WORK_ID=' + id + ' AND YR=' + $('#ndsTab4SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    myimpl += arrMsg[1];
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "ws.aspx/WSOracleExecuteScalar",
                        data: '{qry:"SELECT IMPL1 FROM TBL_WORK_IMPLEVAL WHERE WORK_ID=' + id + ' AND YR=' + $('#ndsTab4SelectYear option:selected').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (msg) {
                            var varMsg = msg.d;
                            var arrMsg = varMsg.split("~");
                            if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                            else {
                                myimpl += arrMsg[1];
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteScalar",
                                    data: '{qry:"SELECT IMPL2 FROM TBL_WORK_IMPLEVAL WHERE WORK_ID=' + id + ' AND YR=' + $('#ndsTab4SelectYear option:selected').val() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        var varMsg = msg.d;
                                        var arrMsg = varMsg.split("~");
                                        if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                                        else {
                                            myimpl += arrMsg[1];
                                            globalAjaxVar = $.ajax({
                                                type: "POST",
                                                url: "ws.aspx/WSOracleExecuteScalar",
                                                data: '{qry:"SELECT IMPL3 FROM TBL_WORK_IMPLEVAL WHERE WORK_ID=' + id + ' AND YR=' + $('#ndsTab4SelectYear option:selected').val() + '"}',
                                                contentType: "application/json; charset=utf-8",
                                                dataType: "json",
                                                success: function (msg) {
                                                    var varMsg = msg.d;
                                                    var arrMsg = varMsg.split("~");
                                                    if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                                                    else {
                                                        myimpl += arrMsg[1];
                                                        globalAjaxVar = $.ajax({
                                                            type: "POST",
                                                            url: "ws.aspx/WSOracleExecuteScalar",
                                                            data: '{qry:"SELECT IMPL4 FROM TBL_WORK_IMPLEVAL WHERE WORK_ID=' + id + ' AND YR=' + $('#ndsTab4SelectYear option:selected').val() + '"}',
                                                            contentType: "application/json; charset=utf-8",
                                                            dataType: "json",
                                                            success: function (msg) {
                                                                var varMsg = msg.d;
                                                                var arrMsg = varMsg.split("~");
                                                                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                                                                else {
                                                                    myimpl += arrMsg[1];
                                                                    globalAjaxVar = $.ajax({
                                                                        type: "POST",
                                                                        url: "ws.aspx/WSOracleExecuteScalar",
                                                                        data: '{qry:"SELECT IMPL5 FROM TBL_WORK_IMPLEVAL WHERE WORK_ID=' + id + ' AND YR=' + $('#ndsTab4SelectYear option:selected').val() + '"}',
                                                                        contentType: "application/json; charset=utf-8",
                                                                        dataType: "json",
                                                                        success: function (msg) {
                                                                            var varMsg = msg.d;
                                                                            var arrMsg = varMsg.split("~");
                                                                            if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                                                                            else {
                                                                                myimpl += arrMsg[1];
                                                                                CKEDITOR.instances.ndsImplModalImpl.setData(replaceDatabaseToDisplay(myimpl));
                                                                                $("#ndsImplModalCharLength").text(myimpl.length);
                                                                                //$('#ndsImplModal').modal('show');
                                                                            }
                                                                        },
                                                                        failure: function (response) {
                                                                            alert('FAILURE: ' + response.d);
                                                                        },
                                                                        error: function (xhr, status, error) {
                                                                            var err = eval("(" + xhr.responseText + ")");
                                                                            if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                                                            else window.location = '../#pg/error500.aspx';
                                                                        }
                                                                    });
                                                                }
                                                            },
                                                            failure: function (response) {
                                                                alert('FAILURE: ' + response.d);
                                                            },
                                                            error: function (xhr, status, error) {
                                                                var err = eval("(" + xhr.responseText + ")");
                                                                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                                                else window.location = '../#pg/error500.aspx';
                                                            }
                                                        });
                                                    }
                                                },
                                                failure: function (response) {
                                                    alert('FAILURE: ' + response.d);
                                                },
                                                error: function (xhr, status, error) {
                                                    var err = eval("(" + xhr.responseText + ")");
                                                    if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                                    else window.location = '../#pg/error500.aspx';
                                                }
                                            });
                                        }
                                    },
                                    failure: function (response) {
                                        alert('FAILURE: ' + response.d);
                                    },
                                    error: function (xhr, status, error) {
                                        var err = eval("(" + xhr.responseText + ")");
                                        if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                        else window.location = '../#pg/error500.aspx';
                                    }
                                });
                            }
                        },
                        failure: function (response) {
                            alert('FAILURE: ' + response.d);
                        },
                        error: function (xhr, status, error) {
                            var err = eval("(" + xhr.responseText + ")");
                            if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                            else window.location = '../#pg/error500.aspx';
                        }
                    });
                }
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    
    function showDeletePolicyModal(id) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteScalar",
            data: '{qry:"SELECT COUNT(ID) FROM TBL_OBJ WHERE POL_ID=' + id + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    if (arrMsg[1] != "0") {
                        alert("Бодлого: \"" + $("#ndsTab1DatatableRowID-" + id + " td:eq(2)").html() + ". " + $("#ndsTab1DatatableRowID-" + id + " td:eq(3)").html() + "\" -д хамааралтай зорилт орсон тул устгах боломжгүй байна!");
                    }
                    else {
                        $.SmartMessageBox({
                            title: "Анхааруулга!",
                            content: "\"" + $("#ndsTab1DatatableRowID-" + id + " td:eq(2)").html() + ". " + $("#ndsTab1DatatableRowID-" + id + " td:eq(3)").html() + "\" бодлогыг устгах уу?",
                            buttons: '[Үгүй][Тийм]'
                        }, function (ButtonPressed) {
                            if (ButtonPressed === "Тийм") {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"DELETE FROM TBL_POL WHERE ID=' + id + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") window.location = "../#pg/error500.aspx";
                                        else {
                                            dataBindPolicyTable();
                                            dataBindPolicyDDLs();
                                            $('#ndsPolicyModal').modal('hide');
                                            $.smallBox({
                                                title: "Сонгосон ҮХЦБ-ийн бодлого",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай устлаа...</i>",
                                                color: "#659265",
                                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                timeout: 4000
                                            });
                                        }
                                    },
                                    failure: function (response) {
                                        alert('FAILURE: ' + response.d);
                                    },
                                    error: function (xhr, status, error) {
                                        var err = eval("(" + xhr.responseText + ")");
                                        if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                        else window.location = '../#pg/error500.aspx';
                                    }
                                });
                            }
                        });
                    }
                }
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });        
    }
    function showDeleteObjectModal(id) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteScalar",
            data: '{qry:"SELECT COUNT(ID) FROM TBL_WORK WHERE OBJ_ID=' + id + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    if (arrMsg[1] != "0") {
                        alert("Зорилт: \"" + $("#ndsTab2DatatableRowID-" + id + " td:eq(3)").html() + ". " + $("#ndsTab2DatatableRowID-" + id + " td:eq(5)").html() + ". " + $("#ndsTab2DatatableRowID-" + id + " td:eq(6)").html() + "\" -д хамааралтай арга хэмжээ орсон тул устгах боломжгүй байна!");
                    }
                    else {
                        $.SmartMessageBox({
                            title: "Анхааруулга!",
                            content: "\"" + $("#ndsTab2DatatableRowID-" + id + " td:eq(3)").html() + ". " + $("#ndsTab2DatatableRowID-" + id + " td:eq(5)").html() + ". " + $("#ndsTab2DatatableRowID-" + id + " td:eq(6)").html() + "\"зорилтыг устгах уу?",
                            buttons: '[Үгүй][Тийм]'
                        }, function (ButtonPressed) {
                            if (ButtonPressed === "Тийм") {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"DELETE FROM TBL_OBJ WHERE ID=' + id + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") window.location = "../#pg/error500.aspx";
                                        else {
                                            dataBindObjectTable();
                                            $('#ndsObjectModal').modal('hide');
                                            $.smallBox({
                                                title: "Сонгосон ҮЧ-ийн зорилт",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай устлаа...</i>",
                                                color: "#659265",
                                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                timeout: 4000
                                            });
                                        }
                                    },
                                    failure: function (response) {
                                        alert('FAILURE: ' + response.d);
                                    },
                                    error: function (xhr, status, error) {
                                        var err = eval("(" + xhr.responseText + ")");
                                        if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                        else window.location = '../#pg/error500.aspx';
                                    }
                                });
                            }
                        });
                    }
                }
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });        
    }
    function showDeleteWorkModal(id) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteScalar",
            data: '{qry:"SELECT SUM(CNT) AS CNT FROM ( SELECT COUNT(ID) as CNT FROM TBL_EGNDSGAP WHERE WORK_ID2='+id+' UNION ALL SELECT COUNT(ID) as CNT FROM TBL_WORK_IMPLEVAL WHERE WORK_ID='+id+' UNION ALL SELECT COUNT(ID) as CNT FROM TBL_PLANYR_WORK WHERE WORK_ID='+id+' )"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    if (arrMsg[1] != "0") {
                        alert("Арга хэмжээ: \"" + $("#ndsTab3DatatableRowID-" + id + " td:eq(6)").html() + "\" -д хамааралтай жилийн төлөвлөгөө, биелэлт, үнэлгээ, бусад хөтөлбөртэй холбогдож орсон тул устгах боломжгүй байна!");
                    }
                    else {
                        $.SmartMessageBox({
                            title: "Анхааруулга!",
                            content: "\"" + $("#ndsTab3DatatableRowID-" + id + " td:eq(6)").html() + "\" арга хэмжээг устгах уу?",
                            buttons: '[Үгүй][Тийм]'
                        }, function (ButtonPressed) {
                            if (ButtonPressed === "Тийм") {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/Work_Delete",
                                    data: '{P_WORKID:"' + id + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") window.location = "../#pg/error500.aspx";
                                        else {
                                            dataBindWorkTable();
                                            $('#ndsWorkModal').modal('hide');
                                            $.smallBox({
                                                title: "Сонгосон ҮЧ-ийн зорилт",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай устлаа...</i>",
                                                color: "#659265",
                                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                timeout: 4000
                                            });
                                            dataBindImplTable('all');
                                        }
                                    },
                                    failure: function (response) {
                                        alert('FAILURE: ' + response.d);
                                    },
                                    error: function (xhr, status, error) {
                                        var err = eval("(" + xhr.responseText + ")");
                                        if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                        else window.location = '../#pg/error500.aspx';
                                    }
                                });
                            }
                        });
                    }
                }
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
        
    }

    loadScript("js/plugin/bootstrap-wizard/jquery.bootstrap.wizard.min.js", runBootstrapWizard);
    function runBootstrapWizard() {
        var $validatorPolicy = $("#ndsPolicyModalForm").validate({
            rules: {
                ndsPolicyModalPolicyno: {
                    required: true,
                    maxlength: 10
                },
                ndsPolicyModalPolicyname: {
                    required: true,
                    maxlength: 1000
                }
            },
            messages: {
                ndsPolicyModalPolicyno: {
                    required: "Бодлогын дугаар заавал оруулна уу",
                    maxlength: "Бодлогын дугаар утрдаа 10 тэмдэгт орно"
                },
                ndsPolicyModalPolicyname: {
                    required: "Бодлогын нэр заавал оруулна уу",
                    maxlength: "Бодлогын нэр уртдаа 1000 тэмдэгт орно"
                }
            },
            submitHandler: function (form) {
                return false;
            },
            highlight: function (element) {
                $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
            },
            unhighlight: function (element) {
                $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
            },
            errorElement: 'span',
            errorClass: 'help-block',
            errorPlacement: function (error, element) {
                if (element.parent('.input-group').length) {
                    error.insertAfter(element.parent());
                } else {
                    error.insertAfter(element);
                }
            }
        });
        var $validatorObject = $("#ndsObjectModalForm").validate({
            rules: {
                ndsObjectModalPolicy: {
                    required: true,
                    min: 1
                },
                ndsObjectModalObjectno: {
                    required: true,
                    number: true,
                    maxlength: 3
                },
                ndsObjectModalObjectname: {
                    required: true,
                    maxlength: 1000
                }
            },
            messages: {
                ndsObjectModalPolicy: {
                    required: "Бодлого заавал сонгоно уу",
                    min: "Бодлого заавал сонгоно уу"
                },
                ndsObjectModalObjectno: {
                    required: "Зорилтын дугаар заавал оруулна уу",
                    number: "Зорилтын дугаар зөвхөн тоо орно",
                    maxlength: "Зорилтын дугаар уртдаа 3 тэмдэгт авна"
                },
                ndsObjectModalObjectname: {
                    required: "Зорилтын нэр заавал оруулна уу",
                    maxlength: "Зорилтын нэр уртдаа 1000 тэмдэгт авна"
                }
            },
            submitHandler: function (form) {
                return false;
            },
            highlight: function (element) {
                $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
            },
            unhighlight: function (element) {
                $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
            },
            errorElement: 'span',
            errorClass: 'help-block',
            errorPlacement: function (error, element) {
                if (element.parent('.input-group').length) {
                    error.insertAfter(element.parent());
                } else {
                    error.insertAfter(element);
                }
            }
        });
        var $validatorWork = $("#ndsWorkModalForm").validate({
            rules: {
                ndsWorkModalTeam: {
                    required: true
                },
                ndsWorkModalYear: {
                    required: true
                },
                ndsWorkModalPolicy: {
                    required: true,
                    min: 1
                },
                ndsWorkModalObject: {
                    required: true,
                    min: 1
                },
                ndsWorkModalWorkNo: {
                    required: true,
                    number: true,
                    maxlength: 3
                },
                ndsWorkModalWorkName: {
                    required: true,
                    maxlength: 1000
                },
                ndsWorkModalGazarlist: {
                    required: true
                },
                ndsWorkModalYamlist: {
                    required: true
                },
                ndsWorkModalCriteria: {
                    required: true,
                    maxlength: 1000
                },
                ndsWorkModalResult: {
                    required: true,
                    maxlength: 1000
                }
            },
            messages: {
                ndsWorkModalTeam: {
                    required: "СС хийх сонгоно уу"
                },
                ndsWorkModalYear: {
                    required: "Үе шат заавал сонгоно уу"
                },
                ndsWorkModalPolicy: {
                    required: "Бодлого заавал сонгоно уу",
                    min: "Бодлого заавал сонгоно уу"
                },
                ndsWorkModalObject: {
                    required: "Зорилт заавал сонгоно уу",
                    min: "Зорилт заавал сонгоно уу"
                },
                ndsWorkModalWorkNo: {
                    required: "Арга хэмжээний дугаар заавал оруулна уу",
                    number: "Арга хэмжээний дугаар зөвхөн тоо орно",
                    maxlength: "Арга хэмжээний дугаар уртдаа 3 тэмдэгт авна"
                },
                ndsWorkModalWorkName: {
                    required: "Арга хэмжээ заавал оруулна уу",
                    maxlength: "Арга хэмжээний нэр уртдаа 1000 тэмдэгт авна"
                },
                ndsWorkModalGazarlist: "Хариуцах газраа заавал сонгоно уу",
                ndsWorkModalYamlist: "Хариуцах яам заавал сонгоно уу",
                ndsWorkModalCriteria: {
                    required: "Шалгуур үзүүлэлт заавал оруулна уу",
                    maxlength: "Шалгуур үзүүлэлт уртдаа 1000 тэмдэгт авна"
                },
                ndsWorkModalResult: {
                    required: "Хүрэх үр дүн заавал оруулна уу",
                    maxlength: "Хүрэх үр дүн уртдаа 1000 тэмдэгт авна"
                }
            },
            submitHandler: function (form) {
                return false;
            },
            highlight: function (element) {
                $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
            },
            unhighlight: function (element) {
                $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
            },
            errorElement: 'span',
            errorClass: 'help-block',
            errorPlacement: function (error, element) {
                if (element.parent('.input-group').length) {
                    error.insertAfter(element.parent());
                } else {
                    error.insertAfter(element);
                }
            }
        });
    }

    $('#ndsPolicyModalForm').submit(function (e) {
        if (!$('#ndsPolicyModalPolicyno').valid() || !$('#ndsPolicyModalPolicyname').valid()) {
            e.preventDefault();
        }
        else {
            var isUpdate = "";
            if ($("#ndsPolicyModalHeaderLabel").html() == "засах") isUpdate = " AND ID!=" + $("#ndsPolicyID").text();
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteScalar",
                data: '{qry:"SELECT COUNT(NO) FROM TBL_POL WHERE POLIMPL_ID=1 AND YR=2007 AND END_YR=2021 AND NO=\'' + $.trim($('#ndsPolicyModalPolicyno').val())+'\'' + isUpdate + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    var varMsg = msg.d;
                    var arrMsg = varMsg.split("~");
                    if (arrMsg[0] == "0") { $('#ndsPolicyModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                    else {
                        if (arrMsg[1] == "0") {
                            if ($("#ndsPolicyModalHeaderLabel").html() == "нэмэх") {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"INSERT INTO TBL_POL VALUES(TBLLASTID(\'TBL_POL\'), 1, \'' + replaceDisplayToDatabase($.trim($('#ndsPolicyModalPolicyno').val())) + '\', \'' + replaceDisplayToDatabase($.trim($('#ndsPolicyModalPolicyname').val())) + '\', 2007, 2021)"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") { $('#ndsPolicyModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindPolicyTable();
                                            dataBindPolicyDDLs();
                                            $('#ndsPolicyModal').modal('hide');
                                            $.smallBox({
                                                title: "ҮХЦБ-ийн бодлого",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай нэмэгдлээ...</i>",
                                                color: "#659265",
                                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                timeout: 4000
                                            });
                                        }
                                    },
                                    failure: function (response) {
                                        alert('FAILURE: ' + response.d);
                                    },
                                    error: function (xhr, status, error) {
                                        var err = eval("(" + xhr.responseText + ")");
                                        if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                        else window.location = '../#pg/error500.aspx';
                                    }
                                });
                            }
                            else {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"UPDATE TBL_POL SET NO=\'' + replaceDisplayToDatabase($.trim($('#ndsPolicyModalPolicyno').val())) + '\', NAME=\'' + replaceDisplayToDatabase($.trim($('#ndsPolicyModalPolicyname').val())) + '\' WHERE ID=' + $("#ndsPolicyID").text() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") { $('#ndsPolicyModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindPolicyTable();
                                            dataBindPolicyDDLs();
                                            $('#ndsPolicyModal').modal('hide');
                                            $.smallBox({
                                                title: "Сонгосон ҮХЦБ-ийн бодлого",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай засагдлаа...</i>",
                                                color: "#659265",
                                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                timeout: 4000
                                            });
                                        }
                                    },
                                    failure: function (response) {
                                        alert('FAILURE: ' + response.d);
                                    },
                                    error: function (xhr, status, error) {
                                        var err = eval("(" + xhr.responseText + ")");
                                        if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                        else window.location = '../#pg/error500.aspx';
                                    }
                                });
                            }
                        }
                        else alert(" ҮХЦБ-д " + $.trim($('#ndsPolicyModalPolicyno').val()) + " дугаартай бодлого орсон байна!");
                    }
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                    else window.location = '../#pg/error500.aspx';
                }
            });            
        }
    });
    $('#ndsObjectModalForm').submit(function (e) {
        if (!$('#ndsObjectModalObjectno').valid() || !$('#ndsObjectModalObjectname').valid() || !$('#ndsObjectModalPolicy').valid()) {
            e.preventDefault();
        }
        else {
            var isUpdate = "";
            if ($("#ndsObjectModalHeaderLabel").html() == "засах") isUpdate = " AND ID!=" + $("#ndsObjectID").text();
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteScalar",
                data: '{qry:"SELECT COUNT(NO) FROM TBL_OBJ WHERE POL_ID=' + $("#ndsObjectModalPolicy").val() + ' AND NO=' + $.trim($('#ndsObjectModalObjectno').val()) + isUpdate + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    var varMsg = msg.d;
                    var arrMsg = varMsg.split("~");
                    if (arrMsg[0] == "0") { $('#ndsObjectModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                    else {
                        if (arrMsg[1] == "0") {
                            if ($("#ndsObjectModalHeaderLabel").html() == "нэмэх") {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"INSERT INTO TBL_OBJ VALUES(TBLLASTID(\'TBL_OBJ\'), ' + $("#ndsObjectModalPolicy").val() + ', ' + $.trim($('#ndsObjectModalObjectno').val()) + ', \'' + replaceDisplayToDatabase($.trim($('#ndsObjectModalObjectname').val())) + '\')"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") {
                                            $('#ndsObjectModal').modal('hide');
                                            window.location = "../#pg/error500.aspx";
                                        }
                                        else {
                                            dataBindObjectTable();
                                            $('#ndsObjectModal').modal('hide');
                                            $.smallBox({
                                                title: "ҮЧ-ийн зорилт",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай нэмэгдлээ...</i>",
                                                color: "#659265",
                                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                timeout: 4000
                                            });
                                        }
                                    },
                                    failure: function (response) {
                                        alert('FAILURE: ' + response.d);
                                    },
                                    error: function (xhr, status, error) {
                                        var err = eval("(" + xhr.responseText + ")");
                                        if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                        else window.location = '../#pg/error500.aspx';
                                    }
                                });
                            }
                            else {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"UPDATE TBL_OBJ SET POL_ID=' + $('#ndsObjectModalPolicy').val() + ', NO=' + $.trim($('#ndsObjectModalObjectno').val()) + ', NAME=\'' + replaceDisplayToDatabase($.trim($('#ndsObjectModalObjectname').val())) + '\' WHERE ID=' + $("#ndsObjectID").text() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") { $('#ndsObjectModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindObjectTable();
                                            $('#ndsObjectModal').modal('hide');
                                            $.smallBox({
                                                title: "Сонгосон ҮЧ-ийн зорилт",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай засагдлаа...</i>",
                                                color: "#659265",
                                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                timeout: 4000
                                            });
                                        }
                                    },
                                    failure: function (response) {
                                        alert('FAILURE: ' + response.d);
                                    },
                                    error: function (xhr, status, error) {
                                        var err = eval("(" + xhr.responseText + ")");
                                        if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                        else window.location = '../#pg/error500.aspx';
                                    }
                                });
                            }
                        }
                        else alert("ҮХЦБ-д \"" + $("#ndsObjectModalPolicy option:selected").text() + "\" бодлогын хүрээнд " + $.trim($('#ndsObjectModalObjectno').val()) + " дугаартай зорилт орсон байна!");
                    }
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                    else window.location = '../#pg/error500.aspx';
                }
            });            
        }
    });
    $('#ndsWorkModalForm').submit(function (e) {
        if (!$('#ndsWorkModalTeam').valid() || !$('#ndsWorkModalYear').valid() || !$('#ndsWorkModalPolicy').valid() || !$('#ndsWorkModalObject').valid() || !$('#ndsWorkModalWorkNo').valid() || !$('#ndsWorkModalWorkName').valid() || !$('#ndsWorkModalGazarlist').valid() || !$('#ndsWorkModalYamlist').valid() || !$('#ndsWorkModalCriteria').valid() || !$('#ndsWorkModalResult').valid()) {
            e.preventDefault();
        }
        else {
            var isUpdate = "";
            if ($("#ndsWorkModalHeaderLabel").html() == "засах") isUpdate = " AND ID!=" + $("#ndsWorkID").text();
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteScalar",
                data: '{qry:"SELECT COUNT(WORK_NO) FROM TBL_WORK WHERE OBJ_ID=' + $("#ndsWorkModalObject").val() + ' AND WORK_NO=' + $.trim($("#ndsWorkModalWorkNo").val()) + isUpdate + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    var varMsg = msg.d;
                    var arrMsg = varMsg.split("~");
                    if (arrMsg[0] == "0") { $('#ndsWorkModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                    else {
                        if (arrMsg[1] == "0") {
                            var qry = "", brlist = "none", egndsgaplist = "none", arrYear = "", yamlist = "none";
                            if ($('#ndsWorkModalYamlist').val() != null) yamlist = $('#ndsWorkModalYamlist').val();
                            if ($('#ndsWorkModalGazarlist').val() != null) brlist = $('#ndsWorkModalGazarlist').val();
                            if ($('#ndsWorkModalGAPList').val() != null) egndsgaplist = $('#ndsWorkModalGAPList').val();
                            if ($('#ndsWorkModalEGList').val() != null) {
                                if (egndsgaplist != "none") egndsgaplist += "," + $('#ndsWorkModalEGList').val();
                                else egndsgaplist = $('#ndsWorkModalEGList').val();
                            }
                            arrYear = $('#ndsWorkModalYear').val().split("-");
                            if ($("#ndsWorkModalHeaderLabel").html() == "нэмэх") {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/Work_Insert",
                                    data: '{P_POLIMPLID:"1",P_OBJID:"' + $("#ndsWorkModalObject").val() + '",P_WORKNO:"' + $.trim($("#ndsWorkModalWorkNo").val()) + '",P_WORKNAME:"' + replaceDisplayToDatabase($.trim($('#ndsWorkModalWorkName').val())) + '",P_RESULT:"' + replaceDisplayToDatabase($.trim($('#ndsWorkModalResult').val())) + '",P_TEAM:"' + $('#ndsWorkModalTeam option:selected').val() + '",P_STRTYR:"' + arrYear[0] + '",P_ENDYR:"' + arrYear[1] + '",P_STAFFID:"' + $.trim($('#indexUserId').html()) + '",P_BRLIST:"' + brlist + '",P_EGNDSGAPLIST:"' + egndsgaplist + '", P_CRITERIA:"' + replaceDisplayToDatabase($.trim($('#ndsWorkModalCriteria').val())) + '", P_YAMLIST:"' + yamlist + '", P_STOCK:""}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") { $('#ndsWorkModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindWorkTable();
                                            $('#ndsWorkModal').modal('hide');
                                            $.smallBox({
                                                title: "ҮХЦБ-ийн арга хэмжээ",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай нэмэгдлээ...</i>",
                                                color: "#659265",
                                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                timeout: 4000
                                            });
                                            dataBindImplTable('all');
                                        }
                                    },
                                    failure: function (response) {
                                        alert('FAILURE: ' + response.d);
                                    },
                                    error: function (xhr, status, error) {
                                        var err = eval("(" + xhr.responseText + ")");
                                        if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                        else window.location = '../#pg/error500.aspx';
                                    }
                                });
                            }
                            else {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/Work_Update",
                                    data: '{P_WORKID:"' + $("#ndsWorkID").text() + '",P_POLIMPLID:"1",P_OBJID:"' + $("#ndsWorkModalObject").val() + '",P_WORKNO:"' + $.trim($("#ndsWorkModalWorkNo").val()) + '",P_WORKNAME:"' + replaceDisplayToDatabase($.trim($('#ndsWorkModalWorkName').val())) + '",P_RESULT:"' + replaceDisplayToDatabase($.trim($('#ndsWorkModalResult').val())) + '",P_TEAM:"' + $('#ndsWorkModalTeam option:selected').val() + '",P_STRTYR:"' + arrYear[0] + '",P_ENDYR:"' + arrYear[1] + '",P_STAFFID:"' + $.trim($('#indexUserId').html()) + '",P_BRLIST:"' + brlist + '",P_EGNDSGAPLIST:"' + egndsgaplist + '", P_CRITERIA:"' + replaceDisplayToDatabase($.trim($('#ndsWorkModalCriteria').val())) + '", P_YAMLIST:"' + yamlist + '", P_STOCK:""}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") { $('#ndsWorkModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindWorkTable();
                                            $('#ndsWorkModal').modal('hide');
                                            $.smallBox({
                                                title: "Сонгосон ҮХЦБ-ийн арга хэмжээ",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай засагдлаа...</i>",
                                                color: "#659265",
                                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                timeout: 4000
                                            });
                                            dataBindImplTable('all');
                                        }
                                    },
                                    failure: function (response) {
                                        alert('FAILURE: ' + response.d);
                                    },
                                    error: function (xhr, status, error) {
                                        var err = eval("(" + xhr.responseText + ")");
                                        if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                        else window.location = '../#pg/error500.aspx';
                                    }
                                });
                            }
                        }
                        else alert("ҮХЦБ-д \"" + $("#ndsWorkModalObject option:selected").text() + "\" зорилтын хүрээнд " + $.trim($('#ndsWorkModalWorkNo').val()) + " дугаартай арга хэмжээ орсон байна!");
                    }
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                    else window.location = '../#pg/error500.aspx';
                }
            });            
        }
    });

    $('#ndsImplSave').click(function () {
        if ($.trim(CKEDITOR.instances.ndsImplModalImpl.getData()) == "") {
            alert("ҮХЦБ-ийн арга хэмжээний биелэлт заавал оруулна уу!");
        }
        else {
            if (replaceDisplayToDatabase($.trim(CKEDITOR.instances.ndsImplModalImpl.getData())).length > 12000) {
                $("#ndsImplModalCharLength").text(replaceDisplayToDatabase($.trim(CKEDITOR.instances.ndsImplModalImpl.getData())).length);
                alert("ҮХЦБ-ийн арга хэмжээний биелэлт уртдаа 12000 тэмдэгт авна!");
            }
            else {
                var impl = "", impl1 = "", impl2 = "", impl3 = "", impl4 = "", impl5 = "";
                var qry = "", brlist = "none", egndsgaplist = "none";
                impl = replaceDisplayToDatabase($.trim(CKEDITOR.instances.ndsImplModalImpl.getData())).substr(0, 2000);
                impl1 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.ndsImplModalImpl.getData())).substr(2000, 2000);
                impl2 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.ndsImplModalImpl.getData())).substr(4000, 2000);
                impl3 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.ndsImplModalImpl.getData())).substr(6000, 2000);
                impl4 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.ndsImplModalImpl.getData())).substr(8000, 2000);
                impl5 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.ndsImplModalImpl.getData())).substr(10000, 2000);
                if (impl.length == 0) impl = "none";
                if (impl1.length == 0) impl1 = "none";
                if (impl2.length == 0) impl2 = "none";
                if (impl3.length == 0) impl3 = "none";
                if (impl4.length == 0) impl4 = "none";
                if (impl5.length == 0) impl5 = "none";
                if ($("#ndsImplModalHeaderLabel").html() == "нэмэх") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "ws.aspx/WSOracleExecuteNonQuery",
                        data: '{qry:"INSERT INTO TBL_WORK_IMPLEVAL (ID, YR, WORK_ID, IMPL, IMPL1, IMPL2, IMPL3, IMPL4, IMPL5, IMPL_MODIFY_STAFFID, IMPL_MODIFY_DATE) VALUES (TBLLASTID(\'TBL_WORK_IMPLEVAL\'), ' + $('#ndsTab4SelectYear option:selected').val() + ', ' + $("#ndsImplID").text() + ', REPLACE(\'' + impl + '\',\'none\',null), REPLACE(\'' + impl1 + '\',\'none\',null), REPLACE(\'' + impl2 + '\',\'none\',null), REPLACE(\'' + impl3 + '\',\'none\',null), REPLACE(\'' + impl4 + '\',\'none\',null), REPLACE(\'' + impl5 + '\',\'none\',null), ' + $.trim($('#indexUserId').html()) + ', to_char(sysdate,\'yyyy-MM-dd\'))"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (msg) {
                            if (msg.d == "0") { $('#ndsImplModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                            else {
                                $('#ndsTab4Datatable > tbody  > tr').each(function () {
                                    if ($('td:eq(1)', this).text() == $('#ndsImplID').text()) {
                                        $('td:eq(4)', this).html($.trim(CKEDITOR.instances.ndsImplModalImpl.getData()));
                                        $('td:eq(5)', this).find('img').attr("src", "../img/green-circle.png");
                                        $('td:eq(5)', this).find('img').attr("alt", "Биелэлт засах");
                                        $('td:eq(6)', this).find('select').prop("disabled", false);
                                        $('td:eq(7)', this).find('div').find('textarea').prop("disabled", false);
                                        return false;
                                    }
                                });
                                //$("#ndsTab4Datatable tr td:contains('" + $("#ndsImplID").text() + "')").parent().find("td:eq(5)").find('img').attr("src", "../img/green-circle.png");
                                //$("#ndsTab4Datatable tr td:contains('" + $("#ndsImplID").text() + "')").parent().find("td:eq(5)").find('img').attr("alt", "Биелэлт засах");
                                //$("#ndsTab4Datatable tr td:contains('" + $("#ndsImplID").text() + "')").parent().find("td:eq(5)").find('img').attr("onclick", "showEditImplModal(" + $("#ndsImplID").text() + ")");
                                //$("#ndsTab4Datatable tr td:contains('" + $("#ndsImplID").text() + "')").parent().find("td:eq(4)").html(replaceDatabaseToDisplay(impl + impl1 + impl2 + impl3 + impl4 + impl5));
                                //$("#ndsTab4Datatable tr td:contains('" + $("#ndsImplID").text() + "')").parent().find("td:eq(6)").find('select').prop("disabled", false);
                                //$("#ndsTab4Datatable tr td:contains('" + $("#ndsImplID").text() + "')").parent().find("td:eq(7)").find('div').find('textarea').prop("disabled", false);
                                //dataBindImplTable('all');
                                $('#ndsImplModal').modal('hide');
                                $.smallBox({
                                    title: "ҮХЦБ-ийн арга хэмжээний биелэлт",
                                    content: "<i class='fa fa-clock-o'></i> <i>Амжилттай нэмэгдлээ...</i>",
                                    color: "#659265",
                                    iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                    timeout: 4000
                                });
                            }
                        },
                        failure: function (response) {
                            alert('FAILURE: ' + response.d);
                        },
                        error: function (xhr, status, error) {
                            var err = eval("(" + xhr.responseText + ")");
                            if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                            else window.location = '../#pg/error500.aspx';
                        }
                    });
                }
                else {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "ws.aspx/WSOracleExecuteNonQuery",
                        data: '{qry:"UPDATE TBL_WORK_IMPLEVAL SET IMPL=REPLACE(\'' + impl + '\',\'none\',null), IMPL1=REPLACE(\'' + impl1 + '\',\'none\',null), IMPL2=REPLACE(\'' + impl2 + '\',\'none\',null), IMPL3=REPLACE(\'' + impl3 + '\',\'none\',null), IMPL4=REPLACE(\'' + impl4 + '\',\'none\',null), IMPL5=REPLACE(\'' + impl5 + '\',\'none\',null), IMPL_MODIFY_STAFFID=' + $.trim($('#indexUserId').html()) + ', IMPL_MODIFY_DATE=to_char(sysdate,\'yyyy-MM-dd\') WHERE WORK_ID=' + $("#ndsImplID").text() + ' AND YR=' + $('#ndsTab4SelectYear option:selected').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (msg) {
                            if (msg.d == "0") { $('#ndsImplModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                            else {
                                $('#ndsTab4Datatable > tbody  > tr').each(function () {
                                    if ($('td:eq(1)', this).html() == $('#ndsImplID').text()) {
                                        $('td:eq(4)', this).html($.trim(CKEDITOR.instances.ndsImplModalImpl.getData()));
                                        $('td:eq(5)', this).find('img').attr("src", "../img/green-circle.png");
                                        $('td:eq(5)', this).find('img').attr("alt", "Биелэлт засах");
                                        $('td:eq(5)', this).find('img').attr("onclick", "showEditImplModal(" + $("#ndsImplID").text() + ")");
                                        $('td:eq(6)', this).find('select').prop("disabled", false);
                                        $('td:eq(7)', this).find('div').find('textarea').prop("disabled", false);
                                        return false;
                                    }
                                });
                                //$("#ndsTab4Datatable tr td:contains('" + $("#ndsImplID").text() + "')").parent().find("td:eq(5)").find('img').attr("src", "../img/green-circle.png");
                                //$("#ndsTab4Datatable tr td:contains('" + $("#ndsImplID").text() + "')").parent().find("td:eq(5)").find('img').attr("alt", "Биелэлт засах");
                                //$("#ndsTab4Datatable tr td:contains('" + $("#ndsImplID").text() + "')").parent().find("td:eq(5)").find('img').attr("onclick", "showEditImplModal(" + $("#ndsImplID").text() + ")");
                                //$("#ndsTab4Datatable tr td:contains('" + $("#ndsImplID").text() + "')").parent().find("td:eq(4)").html(replaceDatabaseToDisplay(impl + impl1 + impl2 + impl3 + impl4 + impl5));
                                //$("#ndsTab4Datatable tr td:contains('" + $("#ndsImplID").text() + "')").parent().find("td:eq(6)").find('select').prop("disabled", false);
                                //$("#ndsTab4Datatable tr td:contains('" + $("#ndsImplID").text() + "')").parent().find("td:eq(7)").find('div').find('textarea').prop("disabled", false);
                                //dataBindImplTable('all');
                                $('#ndsImplModal').modal('hide');
                                $.smallBox({
                                    title: "Сонгосон ҮХЦБ-ийн арга хэмжээний биелэлт",
                                    content: "<i class='fa fa-clock-o'></i> <i>Амжилттай засагдлаа...</i>",
                                    color: "#659265",
                                    iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                    timeout: 4000
                                });
                            }
                        },
                        failure: function (response) {
                            alert('FAILURE: ' + response.d);
                        },
                        error: function (xhr, status, error) {
                            var err = eval("(" + xhr.responseText + ")");
                            if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                            else window.location = '../#pg/error500.aspx';
                        }
                    });
                }
            }
        }
    });

    function saveEval(me) {
        var varMsg = $(me).closest("tr").attr("id");
        var arrMsg = varMsg.split("-");
        var qry = "";
        if ($(me).val() == "none") qry = "UPDATE TBL_WORK_IMPLEVAL SET EVAL=null WHERE WORK_ID=" + arrMsg[1] + " AND YR=" + $('#ndsTab4SelectYear option:selected').val();
        else qry = "UPDATE TBL_WORK_IMPLEVAL SET EVAL=" + $(me).val() + " WHERE WORK_ID=" + arrMsg[1] + " AND YR=" + $('#ndsTab4SelectYear option:selected').val();
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteNonQuery",
            data: '{qry:"' + qry + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                else {
                    $.smallBox({
                        title: "ҮХЦБ-ийн биелэлтийн үнэлгээ",
                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай засагдлаа...</i>",
                        color: "#659265",
                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                        timeout: 4000
                    });
                    if ($(me).val() == "none") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-blueLight form-control'); $(me).css('border', 'none'); }
                    else if ($(me).val() == "0" || $(me).val() == "10" || $(me).val() == "30") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-red form-control'); $(me).css('border', 'none'); }
                    else if ($(me).val() == "50" || $(me).val() == "70") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-orange form-control'); $(me).css('border', 'none'); }
                    else if ($(me).val() == "80" || $(me).val() == "90" || $(me).val() == "100") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-greenLight form-control'); $(me).css('border', 'none'); }
                }
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    function saveEvalDesc(txtareaid) {
        var varMsg = $("#"+txtareaid).closest("tr").attr("id");
        var arrMsg = varMsg.split("-");
        var qry = "";
        if ($.trim($("#" + txtareaid).val()) == "") qry = "UPDATE TBL_WORK_IMPLEVAL SET EVAL_DESC=null WHERE WORK_ID=" + arrMsg[1] + " AND YR="+$('#ndsTab4SelectYear option:selected').val();
        else qry = "UPDATE TBL_WORK_IMPLEVAL SET EVAL_DESC=\'" + $.trim($("#" + txtareaid).val()) + "\' WHERE WORK_ID=" + arrMsg[1] + " AND YR="+$('#ndsTab4SelectYear option:selected').val();
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteNonQuery",
            data: '{qry:"' + qry + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                else {
                    $.smallBox({
                        title: "ҮХЦБ-ийн биелэлтийн үнэлгээний тайлбар",
                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай засагдлаа...</i>",
                        color: "#659265",
                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                        timeout: 4000
                    });
                }
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                var err = eval("(" + xhr.responseText + ")");
                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                else window.location = '../#pg/error500.aspx';
            }
        });
    }
    $('#ndsImplDelete').click(function () {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Та биелэлт устгахдаа итгэлтэй байна уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/WSOracleExecuteNonQuery",
                    data: '{qry:"DELETE FROM TBL_WORK_IMPLEVAL WHERE WORK_ID=' + $("#ndsImplID").text() + ' AND YR=' + $('#ndsTab4SelectYear option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        if (msg.d == "0") window.location = "../#pg/error500.aspx";
                        else {
                            CKEDITOR.instances.ndsImplModalImpl.setData("");
                            $("#ndsImplModalCharLength").text("0");
                            $("#ndsTab4Datatable tr td:contains('" + $("#ndsImplID").text() + "')").parent().find("td:eq(5)").find('img').attr("src", "../img/red-circle.png");
                            $("#ndsTab4Datatable tr td:contains('" + $("#ndsImplID").text() + "')").parent().find("td:eq(5)").find('img').attr("alt", "Биелэлт оруулах");
                            $("#ndsTab4Datatable tr td:contains('" + $("#ndsImplID").text() + "')").parent().find("td:eq(5)").find('img').attr("onclick", "ndsTab4Add(" + $("#ndsImplID").text() + ")");
                            $("#ndsTab4Datatable tr td:contains('" + $("#ndsImplID").text() + "')").parent().find("td:eq(4)").html('');
                            $("#ndsTab4Datatable tr td:contains('" + $("#ndsImplID").text() + "')").parent().find("td:eq(6)").find('select').prop("disabled", true);
                            $("#ndsTab4Datatable tr td:contains('" + $("#ndsImplID").text() + "')").parent().find("td:eq(7)").find('div').find('textarea').prop("disabled", true);
                            $.smallBox({
                                title: "Биелэлт",
                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай устлаа...</i>",
                                color: "#659265",
                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                timeout: 1000
                            });
                        }
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        var err = eval("(" + xhr.responseText + ")");
                        if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                        else window.location = '../#pg/error500.aspx';
                    }
                });
            }
        });
    });
</script>