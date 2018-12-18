<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eg.aspx.cs" Inherits="LMWebApp.pg.eg" %>
<style type="text/css">
    .eg-ddl-eval {
        font-size:12px;
    }
    .eg-txta-eval-desc {
        font-size:12px;
    }
    .reporttable thead tr th {
        text-align:center;
        vertical-align:middle;
    }    
    .dataTables_info {
        padding:0px;
     }
    .paging_bootstrap_full {
        padding: 0 10px 0 0;
    }  
</style>
<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
    <h1 class="page-title txt-color-blueDark">
    <i class="fa-fw fa fa-home"></i>
    <span>> Үндсэн чиглэл</span>
    </h1>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <label style="position: absolute; padding-top: 15px; text-align: right; right: 310px; font-style:italic;">Биелэлтийн үнэлгээний дундаж хувь:</label><label id="egImplTotalPer" style="position: absolute; padding-top: 15px; text-align: right; right: 275px; font-style:italic; font-weight:bold;">0 %</label><label style="position: absolute; padding-top: 15px; text-align: right; right: 200px; font-style:italic;">/шүүлтээр/</label>
        <ul class="nav nav-tabs bordered">
            <li id="egTab1HeadLi1" runat="server" onclick="egDatabindTabs(this)">
                <a data-toggle="tab" href="#egTab1">
                    Бодлого
                </a>
            </li>
            <li id="egTab1HeadLi2" runat="server" onclick="egDatabindTabs(this)">
                <a data-toggle="tab" href="#egTab2">
                    Зорилт
                </a>
            </li>
            <li id="egTab1HeadLi3" runat="server" class="active" onclick="egDatabindTabs(this)">
                <a data-toggle="tab" href="#egTab3">
                    <b style="font-size:14px">Төлөвлөгөө</b>
                </a>
            </li>
            <li id="egTab1HeadLi4" runat="server" onclick="egDatabindTabs(this)">
                <a data-toggle="tab" href="#egTab4">
                    <i class="fa fa-fw fa-lg fa-bar-chart-o "></i>
                   <b style="font-size:14px">Биелэлт</b>
                </a>
            </li>
            <li id="egTab1HeadLi5" runat="server" onclick="egDatabindTabs(this)">
                <a data-toggle="tab" href="#egTab5">
                    <i class="fa fa-fw fa-lg fa-file-text "></i>
                    <b style="font-size:14px">Товчоо</b>
                </a>
            </li>
            <li id="egTab1HeadLi6" runat="server" onclick="egDatabindTabs(this)">
                <a data-toggle="tab" href="#egTab6">
                    <i class="fa fa-fw fa-lg fa-file-text "></i>
                    <b style="font-size:14px">Тайлан</b>
                </a>
            </li>
        </ul>   
        <div id="egTabContent" class="tab-content">
            <div id="egTab1" runat="server" class="tab-pane">
                <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                    <header>
                        <span class="widget-icon">
                            <i class="fa fa-table"></i>
                        </span>
                        <h2>Үндсэн чиглэлийн бодлого</h2>
                    </header>
                    <div>
                        <div class="Colvis TableTools" style="right:205px; top:5px; z-index:5;">
                            <button id="egTab1Add" runat="server" class="ColVis_Button TableTools_Button ColVis_MasterButton btn btn btn-primary btn-sm" data-target="#egPolicyModal" data-toggle="modal"><i class="fa fa-plus"></i> Нэмэх</button>
                        </div>
                        <div class="Colvis TableTools" style="width:70px; top:5px; z-index:5; right:125px;">
                            <select id="egTab1SelectYear" runat="server" name="egTab1SelectYear" class="form-control" style="padding:1px;">
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
            <div id="egTab2" runat="server" class="tab-pane">
                <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                    <header>
                        <span class="widget-icon">
                            <i class="fa fa-table"></i>
                        </span>
                        <h2>Үндсэн чиглэлийн зорилт</h2>
                    </header>
                    <div>
                        <div class="Colvis TableTools" style="right:205px; top:5px; z-index:5;"><button id="egTab2Add" runat="server" class="ColVis_Button TableTools_Button ColVis_MasterButton btn btn btn-primary btn-sm" data-target="#egObjectModal" data-toggle="modal"><i class="fa fa-plus"></i> Нэмэх</button></div>
                        <div class="Colvis TableTools" style="width:70px; top:5px; z-index:5; right:125px;">
                            <select id="egTab2SelectYear" runat="server" name="egTab2SelectYear" class="form-control" style="padding:1px;">
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
            <div id="egTab3" runat="server" class="tab-pane active">
                <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                    <header>
                        <span class="widget-icon">
                            <i class="fa fa-table"></i>
                        </span>
                        <h2>Үндсэн чиглэлийн арга хэмжээ</h2>
                    </header>
                    <div>
                        <div class="Colvis TableTools" style="width:140px; right:420px; top:8px; z-index:5; margin-top:1px;">
                            <button id="egTab6t1PrintModalShow" runat="server" class="btn btn-labeled btn-warning" type="button" data-target="#egTab6t1PrintModal" data-toggle="modal"><span class="btn-label" style="padding: 0px 7px 3px 5px;"><i class="fa fa-file-text"></i></span>Хэвлэх|Татах</button>
                        </div>
                        <div class="Colvis TableTools" style="right:350px; top:5px; z-index:5;"><button id="egTab3Add" runat="server" class="ColVis_Button TableTools_Button ColVis_MasterButton btn btn btn-primary btn-sm" data-target="#egWorkModal" data-toggle="modal"><i class="fa fa-plus"></i> Нэмэх</button></div>
                        <div class="Colvis TableTools" style="width:70px; top:5px; z-index:5; right:125px;"><select id="egTab3SelectYear" runat="server" name="egTab3SelectYear" class="form-control" style="padding:1px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select></div>
                        <div class="Colvis TableTools" style="width:85px; top:5px; z-index:7; right:205px;"><select id="egTab3SelectTeam" name="egTab3SelectTeam" class="form-control" style="padding:1px;"><option value="all" selected="selected">Бүгд</option><option value="0">Дангаар</option><option value="1">Хамтран</option></select></div>
                        <div class="Colvis TableTools" style="right:295px; top:5px; z-index:5; margin-top:7px;"><label>СС хийх: </label></div>
                        <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
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
            <div id="egTab4" runat="server" class="tab-pane">
                <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                    <header>
                        <span class="widget-icon">
                            <i class="fa fa-table"></i>
                        </span>
                        <h2>Үндсэн чиглэлийн биелэлт</h2>
                    </header>
                    <div>
                        <div class="Colvis TableTools" style="width:80px; top:5px; z-index:7; right:670px;"><select id="egTab4SelectBranch" runat="server" name="egTab4SelectBranch" class="form-control" style="padding:1px;"><option value="0">Бүгд</option></select><i></i></label></span></div>
                        <div class="Colvis TableTools" style="width:100px; top:5px; z-index:7; right:510px;"><select id="egTab4SelectEva" runat="server" name="egTab4SelectEva" class="form-control" style="padding:1px;"><option value="all">Нийт</option><option style="background-color:#CCEEFF;font-weight: 700;" value="-">Үнэлээгүй</option><option value="0" style="background-color:#FF0000; font-weight: 700;">0 %</option><option value="10" style="background-color:#FF0000; font-weight: 700;">10 %</option><option value="30" style="background-color:#FF0000; font-weight: 700;">30 %</option><option value="50" style="background-color:#FFFF00; font-weight: 700;">50 %</option><option value="70" style="background-color:#FFFF00; font-weight: 700;">70 %</option><option value="80" style="background-color:#00FF00; font-weight: 700;">80 %</option><option value="90" style="background-color:#00FF00; font-weight: 700;">90 %</option><option value="100" style="background-color:#00FF00; font-weight: 700;">100 %</option></select><i></i></label></span></div>
                        <div class="Colvis TableTools" style="width:150px; top:5px; z-index:7; right:200px;"><select id="egTab4SelectYearHalf" runat="server" name="egTab4SelectYearHalf" class="form-control" style="padding:1px;"><option value="1">Эхний хагас жил</option><option value="2">Сүүлийн хагас жил</option></select><i></i></label></span></div>
                        <div class="Colvis TableTools" style="width:70px; top:5px; z-index:5; right:120px;"><select id="egTab4SelectYear" runat="server" name="egTab4SelectYear" class="form-control" style="padding:1px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select><i></i></label></span></div>
                        <div class="Colvis TableTools" style="width:85px; top:5px; z-index:7; right:360px;"><select id="egTab4SelectTeam" name="egTab4SelectTeam" class="form-control" style="padding:1px;"><option value="all" selected="selected">Бүгд</option><option value="0">Дангаар</option><option value="1">Хамтран</option></select><i></i></label></span></div>
                        <div class="Colvis TableTools" style="right:450px; top:4px; z-index:5; margin-top:7px;"><label>СС хийх: </label></div>
                        <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                        <div class="Colvis TableTools" style="right:615px; top:4px; z-index:5; margin-top:7px;"><label>Үнэлгээ: </label></div>
                        <div class="Colvis TableTools" style="right:755px; top:4px; z-index:5; margin-top:7px;"><label>Газар: </label></div>
                        <div class="Colvis TableTools" style="right:880px; top:0px; z-index:5; margin-top:2px;">
                            <img id="egTab4ClickImpl1" src="../img/green-circle.png" width="15" style="cursor:pointer;" />Биелэлт тайлагнасан<br />
                            <img id="egTab4ClickImpl0" src="../img/red-circle.png" width="15" style="cursor:pointer;" />Биелэлт тайлагнаагүй
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
            <div id="egTab5" runat="server" class="tab-pane">
                <ul class="nav nav-tabs bordered">
                    <li class="active">
                        <a data-toggle="tab" href="#egTab5t1">Хэрэгжилт</a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#egTab5t2">Хэрэгжилт (газруудаар)</a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#egTab5t3">Удаашралтай ажлын жагсаалт</a>
                    </li>
                </ul>
                <div id="egTab5Content" class="tab-content">
                    <div id="egTab5t1" class="tab-pane active">
                        <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                            <div style="width:70%; float:left;">
                                <div style="width:150px; float:left; margin-right:10px;"><select id="egTab5t1SelectYearHalf" runat="server" class="form-control" style="padding:1px"><option value="1">Эхний хагас жил</option><option value="2">Сүүлийн хагас жил</option></select></div>
                                <div style="width:65px; float:left; margin-right:10px;"><select id="egTab5t1SelectYear" runat="server" class="form-control" style="padding:1px"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select></div>
                            </div>
                            <div style="text-align:right; width:30%; float:left;">
                                <img id="egTab5t1ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" title="PDF руу татах" onclick="exportPdf('#divegTab5t1')" />
                                <img id="egTab5t1ExportWord" src="../img/word-icon.png" style="cursor:pointer;" title="Word руу татах" onclick="exportWord('#divegTab5t1', 'ҮЧ-н хэрэгжилт <% Response.Write(egTab5t1SelectYear.Items[egTab5t1SelectYear.SelectedIndex].Text + " " + egTab5t1SelectYearHalf.Items[egTab5t1SelectYearHalf.SelectedIndex].Text); %>')"/>
                                <img id="egTab5t1ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" title="Excel руу татах" onclick="exportExcel('#divegTab5t1')"/>
                                <button id="egTab5t1Print" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divegTab5t1')"><span class="fa fa-print"></span> Хэвлэх </button>
                                <button id="egTab5t1Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                            </div>
                        </div>
                        <div id="loaderTab51" class="search-background">
                            <label>
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                            </label>
                        </div>
                        <div id="divegTab5t1" runat="server" class="reports">
                            <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px; font-family: Arial, serif;">
                                МОНГОЛ УЛСЫН ЭДИЙН ЗАСАГ, НИЙГМИЙГ ХӨГЖҮҮЛЭХ <label id="egTab5t1Year" runat="server" style="font-weight:bold;">0000</label> ОНЫ ҮНДСЭН ЧИГЛЭЛИЙН ХЭРЭГЖИЛТИЙН БАЙДАЛ <br /> (<label id="egTab5t1YearHalf" runat="server" style="font-weight:bold;">Ehnii hagas</label> БАЙДЛААР)
                            </div>
                            <div id="divegTab5t1Table" runat="server"></div>                                
                        </div>
                    </div>
                    <div id="egTab5t2" class="tab-pane">
                        <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                            <div style="width:70%; float:left;">
                                <div style="width:150px; float:left; margin-right:10px;"><select id="egTab5t2SelectYearHalf" runat="server" class="form-control" style="padding:1px"><option value="1">Эхний хагас жил</option><option value="2">Сүүлийн хагас жил</option></select></div>
                                <div style="width:65px; float:left; margin-right:10px;"><select id="egTab5t2SelectYear" runat="server" class="form-control" style="padding:1px"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select></div>
                                <div style="width:30px; float:left; margin-right:10px; padding-top:8px;">Газар: </div>
                                <div style="width:90px; float:left; margin-right:10px;"><select id="egTab5t2SelectBranch" runat="server" class="form-control" style="padding:1px"><option value="all">Бүгд</option></select></div>
                            </div>
                            <div style="text-align:right; width:30%; float:left;">
                                <img id="egTab5t2ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" onclick="exportPdf('#divegTab5t2')"/>
                                <img id="egTab5t2ExportWord" src="../img/word-icon.png" style="cursor:pointer;" onclick="exportWord('#divegTab5t2', 'ҮЧ-н хэрэгжилт (газруудаар) <% Response.Write(egTab5t2SelectYear.Items[egTab5t2SelectYear.SelectedIndex].Text + " " + egTab5t2SelectYearHalf.Items[egTab5t2SelectYearHalf.SelectedIndex].Text); %>')" />
                                <img id="egTab5t2ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" onclick="exportExcel('#divegTab5t2')" />
                                <button id="egTab5t2Print" class="btn btn-info btn-sm" type="button" onclick="PrintElem('#divegTab5t2')"><span class="fa fa-print"></span> Хэвлэх </button>
                                <button id="egTab5t2Refresh" class="btn btn-info btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                            </div>
                        </div>
                        <div id="loaderTab52" class="search-background">
                            <label>
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                            </label>
                        </div>
                        <div id="divegTab5t2" runat="server" class="reports">
                            <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px; font-family: Arial, serif;">
                                МОНГОЛ УЛСЫН ЭДИЙН ЗАСАГ, НИЙГМИЙГ ХӨГЖҮҮЛЭХ <label id="egTab5t2Year" runat="server" style="font-weight:bold;">0000</label> ОНЫ ҮНДСЭН ЧИГЛЭЛИЙН ХЭРЭГЖИЛТИЙН БАЙДАЛ (ГАЗРУУДААР) <br />(<label id="egTab5t2YearHalf" runat="server" style="font-weight:bold;">ehnii hagas</label> БАЙДЛААР)
                            </div>
                            <div id="divegTab5t2Table" runat="server"></div>                                    
                        </div>
                    </div>
                    <div id="egTab5t3" class="tab-pane">
                        <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                            <div style="width:70%; float:left;">
                                <div style="width:150px; float:left; margin-right:10px;"><select id="egTab5t3SelectYearHalf" runat="server" class="form-control" style="padding:1px"><option value="1">Эхний хагас жил</option><option value="2">Сүүлийн хагас жил</option></select></div>
                                <div style="width:65px; float:left; margin-right:10px;"><select id="egTab5t3SelectYear" runat="server" class="form-control" style="padding:1px"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select></div>
                                <div style="width:30px; float:left; margin-right:10px; padding-top:8px;">Газар: </div>
                                <div style="width:90px; float:left; margin-right:10px;"><select id="egTab5t3SelectBranch" runat="server" class="form-control" style="padding:1px"><option value="all">Бүгд</option></select></div>
                                <div style="width:40px; float:left; margin-right:10px; padding-top:8px;">Үнэлгээ: </div>
                                <div style="width:65px; float:left; margin-right:10px;"><select id="egTab5t3SelectEva" runat="server" class="form-control" style="padding:1px"><option value="all">Бүгд</option><option value="0">0 %</option><option value="10">10 %</option><option value="30">30 %</option><option value="50">50 %</option><option value="70">70 %</option></select></div>
                            </div>
                            <div style="text-align:right; width:30%; float:left;">
                                <img id="egTab5t3ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" onclick="exportPdf('#divegTab5t3')" />
                                <img id="egTab5t3ExportWord" src="../img/word-icon.png" style="cursor:pointer;" onclick="exportWord('#divegTab5t3', 'ҮЧ-н удаашралтай ажлын жагсаалт <% Response.Write(egTab5t3SelectYear.Items[egTab5t3SelectYear.SelectedIndex].Text + " " + egTab5t3SelectYearHalf.Items[egTab5t3SelectYearHalf.SelectedIndex].Text); %>')" />
                                <img id="egTab5t3ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" onclick="exportExcel('#divegTab5t3')" />
                                <button id="egTab5t3Print" class="btn btn-info btn-sm" type="button" onclick="PrintElem('#divegTab5t3')"><span class="fa fa-print"></span> Хэвлэх </button>
                                <button id="egTab5t3Refresh" class="btn btn-info btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                            </div>
                        </div>
                        <div id="loaderTab53" class="search-background">
                            <label>
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                            </label>
                        </div>
                        <div id="divegTab5t3" runat="server" class="reports">
                            <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px; font-family: Arial, serif;">
                                МОНГОЛ УЛСЫН ЭДИЙН ЗАСАГ, НИЙГМИЙГ ХӨГЖҮҮЛЭХ <label id="egTab5t3Year" runat="server" style="font-weight:bold;">0000</label> ОНЫ ҮНДСЭН ЧИГЛЭЛИЙН ХЭРЭГЖИЛТ НЬ УДААШРАЛТАЙ БАЙГАА АРГА ХЭМЖЭЭНИЙ ТУХАЙ (0-70 ХУВЬ) <br />(<label id="egTab5t3YearHalf" runat="server" style="font-weight:bold;">ehnii hagas</label> БАЙДЛААР)
                            </div>
                            <div id="divegTab5t3Table" runat="server"></div>                                    
                        </div>
                    </div>
                </div>    
            </div>
            <div id="egTab6" runat="server" class="tab-pane">
                <ul class="nav nav-tabs bordered">
                    <li class="active">
                        <a data-toggle="tab" href="#egTab6t2">ХШҮ-ний тайлан</a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#egTab6t3">Хэрэгжилтийн тайлан (хүснэгтээр)</a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#egTab6t4">Хэрэгжилтийн дэлгэрэнгүй тайлан</a>
                    </li>
                </ul>
                <div id="egTab6Content" class="tab-content">
                    <div id="egTab6t2" class="tab-pane active">
                        <div style="display:block; overflow:hidden;">
                            <div style="float:left; display:block; width:75%">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:50%; float:left;">
                                        <div style="width:65px; float:left; margin-right:10px;"><select id="egTab6t2SelectYear" runat="server" class="form-control" style="padding:1px"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select></div>
                                        <div style="width:150px; float:left; margin-right:10px;"><select id="egTab6t2SelectYearHalf" runat="server" class="form-control" style="padding:1px"><option value="1">Эхний хагас жил</option><option value="2">Сүүлийн хагас жил</option></select></div>
                                   </div>
                                    <div style="text-align:right; width:50%; float:left;">
                                        <img id="egTab6t2ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" title="PDF руу татах" onclick="exportPdf('#divegTab6t2')" />
                                        <img id="egTab6t2ExportWord" src="../img/word-icon.png" style="cursor:pointer;" title="Word руу татах" onclick="exportWord('#divegTab6t2', 'ҮЧ-н ХШҮ-ний тайлан <% Response.Write(egTab6t2SelectYear.Items[egTab6t2SelectYear.SelectedIndex].Text + " " + egTab6t2SelectYearHalf.Items[egTab6t2SelectYearHalf.SelectedIndex].Text); %>')" />
                                        <img id="egTab6t2ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" title="Excel руу татах" onclick="exportExcel('#divegTab6t2')" />
                                        <button id="egTab6t2Print" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divegTab6t2')"><span class="fa fa-print"></span> Хэвлэх </button>
                                        <button id="egTab6t2Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                                    </div>
                                </div>
                                <div id="loaderTab62" class="search-background">
                                    <label>
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                                    </label>
                                </div>
                                <div id="divegTab6t2" runat="server" class="reports">
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px; font-family: Arial, serif;">
                                        МОНГОЛ УЛСЫН ЭДИЙН ЗАСАГ, НИЙГМИЙГ <label id="egTab6t2Year" runat="server" style="font-weight:bold;">0000</label> ОНД ХӨГЖҮҮЛЭХ ҮНДСЭН ЧИГЛЭЛИЙГ ХЭРЭГЖҮҮЛЭХ АРГА ХЭМЖЭЭНИЙ ТӨЛӨВЛӨГӨӨНД САНГИЙН САЙДЫН ХАРИУЦАН ХЭРЭГЖҮҮЛЭХ АРГА ХЭМЖЭЭНИЙ ХЭРЭГЖИЛТЭД ХИЙСЭН ХЯНАЛТ-ШИНЖИЛГЭЭ, ҮНЭЛГЭЭНИЙ ТАЙЛАН<br/><br />(<label id="egTab6t2Year2" runat="server" style="font-weight:bold;">0000</label> оны <label id="egTab6t2YearHalf" runat="server" style="font-weight:bold;">ehnii hagas</label> байдлаар )
                                    </div>
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Монгол Улсын эдийн засаг, нийгмийг <label id="egTab6t2Year3" runat="server">2014</label> онд хөгжүүлэх үндсэн чиглэлийг хэрэгжүүлэх төлөвлөгөөнд Сангийн сайдын дангаар болон бусад сайдтай хамтран хэрэгжүүлэх арга хэмжээний төлөвлөгөөг Сангийн сайдын <label id="egTab6t2Tushaal" runat="server"></label> дугаар тушаалаар баталсан бөгөөд Сангийн сайдын дангаар хэрэгжүүлэх <label id="egTab6t2WorkTeam0" runat="server">0</label>, бусад сайдтай хамтран хэрэгжүүлэх <label id="egTab6t2WorkTeam1" runat="server">0</label>, нийт <label id="egTab6t2WorkTeam" runat="server">0</label> зорилт, арга хэмжээ тусгагдсан байна.</p>
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Монгол Улсын Засгийн газрын <label id="egTab6t2Togtool" runat="server"></label> тогтоолоор баталсан журмын дагуу “Монгол Улсын эдийн засаг, нийгмийг <label id="egTab6t2Year4" runat="server">0000</label> онд хөгжүүлэх Үндсэн чиглэл”-ийг хэрэгжүүлэх төлөвлөгөөнд Сангийн сайдын хариуцан хэрэгжүүлэх арга хэмжээний хэрэгжилтэд <label id="egTab6t2Year5" runat="server">0000</label> оны <label id="egTab6t2YearHalf2" runat="server">ehnii hagas</label> хяналт-шинжилгээ, үнэлгээ хийхэд хэрэгжилт <label id="egTab6t2TotalPercent" runat="server">0</label> хувийн биелэлттэй байна.</p>
                                    <div id="divegTab6t2Table1" runat="server">
                                       
                                    </div>
                                    <br />
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Үндсэн чиглэлийн хэрэгжилтийн байдлыг газруудаар гаргавал:</b></p>
                                    <div id="divegTab6t2Table2" runat="server">
                                       
                                    </div>
                                    <br />
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Хэрэгжилт удаашралтай байгаа арга хэмжээнүүд:</b></p>
                                    <div id="divegTab6t2Table3" runat="server">
                                    
                                    </div>
                                    <br />
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Дүгнэлт:</b></p>
                                    <div id="divegTab6t2Dugnelt" runat="server">
                                    
                                    </div>
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Зөвлөмж:</b></p>
                                    <div id="divegTab6t2Zuvlumj" runat="server">
                                    
                                    </div>
                                    <br />
                                    <div style="text-align:center; font-weight:bold;">
                                        ТӨСВИЙН ХЯНАЛТ, ЭРСДЭЛИЙН  УДИРДЛАГЫН ГАЗАР
                                    </div>
                                </div>
                            </div>
                            <div style="float:left; display:block; width:25%">
                                <div style="display:block; overflow:hidden; margin-top:10px; margin-left:20px;">Тушаал</div>
                                <div style="display:block; overflow:hidden; margin-left:20px;">
                                    <div style="float:left; display:block; width:90%"><textarea id="egTab6t2InputTushaal" runat="server" class="form-control" rows="2" style="padding:1px;"></textarea></div>
                                    <div style="float:left; display:block; width:10%"><button id="egTab6t2BtnTushaal" title="Тушаалын нэр оруулах" class="btn btn-default btn-circle btn-sm" type="button" style="vertical-align:top; margin-left:3px;"><span class="fa fa-check"></span></button></div>
                                </div>
                                <div style="display:block; overflow:hidden; margin-top:10px; margin-left:20px;">Тогтоол</div>
                                <div style="display:block; overflow:hidden; margin-left:20px;">
                                    <div style="float:left; display:block; width:90%"><textarea id="egTab6t2InputTogtool" runat="server" class="form-control" rows="2" style="padding:1px;"></textarea></div>
                                    <div style="float:left; display:block; width:10%"><button id="egTab6t2BtnTogtool" title="Тогтоолын нэр оруулах" class="btn btn-default btn-circle btn-sm" type="button" style="vertical-align:top; margin-left:3px;"><span class="fa fa-check"></span></button></div>
                                </div>
                                <div style="display:block; overflow:hidden; margin-top:10px; margin-left:20px;">Дүгнэлт</div>
                                <div style="display:block; overflow:hidden; margin-left:20px;">
                                    <div style="float:left; display:block; width:90%">
                                        <textarea id="egTab6t2InputDugnelt" runat="server" class="form-control" rows="2" style="padding:1px;"></textarea>
                                        <script>
                                            CKEDITOR.replace('egTab6t2InputDugnelt', {
                                                toolbar: [

                                                ]
                                            });
                                        </script>
                                    </div>
                                    <div style="float:left; display:block; width:10%"><button id="egTab6t2BtnDugnelt" title="Дүгнэлт оруулах" class="btn btn-default btn-circle btn-sm" type="button" style="vertical-align:top; margin-left:3px;"><span class="fa fa-check"></span></button></div>
                                </div>
                                <div style="display:block; overflow:hidden; margin-top:10px; margin-left:20px;">Зөвлөмж</div>
                                <div style="display:block; overflow:hidden; margin-left:20px;">
                                    <div style="float:left; display:block; width:90%">
                                        <textarea id="egTab6t2InputZuvlumj" runat="server" class="form-control" rows="2" style="padding:1px;"></textarea>
                                        <script>
                                            CKEDITOR.replace('egTab6t2InputZuvlumj', {
                                                toolbar: [

                                                ]
                                            });
                                        </script>
                                    </div>
                                    <div style="float:left; display:block; width:10%"><button id="egTab6t2BtnZuvlumj" title="Зөвлөмж оруулах" class="btn btn-default btn-circle btn-sm" type="button" style="vertical-align:top; margin-left:3px;"><span class="fa fa-check"></span></button></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="egTab6t3" class="tab-pane">
                        <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                            <div style="width:70%; float:left;">
                                <div style="width:65px; float:left; margin-right:10px;"><select id="egTab6t3SelectYear" runat="server" class="form-control" style="padding:1px"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select></div>
                                <div style="width:150px; float:left; margin-right:10px;"><select id="egTab6t3SelectYearHalf" runat="server" class="form-control" style="padding:1px"><option value="1">Эхний хагас жил</option><option value="2">Сүүлийн хагас жил</option></select></div>
                                <div style="width:30px; float:left; margin-right:10px; padding-top:8px;">Газар: </div>
                                <div style="width:90px; float:left; margin-right:10px;"><select id="egTab6t3SelectBranch" runat="server" class="form-control" style="padding:1px"><option value="all">Бүгд</option></select></div>
                            </div>
                            <div style="text-align:right; width:30%; float:left;">
                                <img id="egTab6t3ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" title="PDF руу татах" onclick="exportPdf('#divegTab6t3')" />
                                <img id="egTab6t3ExportWord" src="../img/word-icon.png" style="cursor:pointer;" title="Word руу татах" onclick="exportWord('#divegTab6t3', 'ҮЧ-н хэрэгжилтийн тайлан (хүснэгтээр) <% Response.Write(egTab6t3SelectYear.Items[egTab6t3SelectYear.SelectedIndex].Text + " " + egTab6t3SelectYearHalf.Items[egTab6t3SelectYearHalf.SelectedIndex].Text); %>')" />
                                <img id="egTab6t3ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" title="Excel руу татах" onclick="exportExcel('#divegTab6t3')" />
                                <button id="egTab6t3Print" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divegTab6t3')"><span class="fa fa-print"></span> Хэвлэх </button>
                                <button id="egTab6t3Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                            </div>
                        </div>
                        <div id="loaderTab63" class="search-background">
                            <label>
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                            </label>
                        </div>
                        <div id="divegTab6t3" runat="server" class="reports">                                    
                            <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px; font-family: Arial, serif;">
                                МОНГОЛ УЛСЫН ЭДИЙН ЗАСАГ, НИЙГМИЙГ <label id="egTab6t3Year" runat="server" style="font-weight:bold;">0000</label> ОНД ХӨГЖҮҮЛЭХ ҮНДСЭН ЧИГЛЭЛИЙГ ХЭРЭГЖҮҮЛЭХ АРГА ХЭМЖЭЭНИЙ ТӨЛӨВЛӨГӨӨНД САНГИЙН САЙДЫН ХАРИУЦАН ХЭРЭГЖҮҮЛЭХ АРГА ХЭМЖЭЭНИЙ БИЕЛЭЛТ<br/><br />(<label id="egTab6t3Year2" runat="server" style="font-weight:bold;">0000</label> оны <label id="egTab6t3YearHalf" runat="server" style="font-weight:bold;">ehnii hagas</label> байдлаар )
                            </div>
                            <div id="divegTab6t3Table" runat="server">
                                        
                            </div>
                        </div>
                    </div>
                    <div id="egTab6t4" class="tab-pane">
                        <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                            <div style="width:70%; float:left;">
                                <div style="width:65px; float:left; margin-right:10px;"><select id="egTab6t4SelectYear" runat="server" class="form-control" style="padding:1px"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select></div>
                                <div style="width:150px; float:left; margin-right:10px;"><select id="egTab6t4SelectYearHalf" runat="server" class="form-control" style="padding:1px"><option value="1">Эхний хагас жил</option><option value="2">Сүүлийн хагас жил</option></select></div>
                                <div style="width:30px; float:left; margin-right:10px; padding-top:8px;">Газар: </div>
                                <div style="width:90px; float:left; margin-right:10px;"><select id="egTab6t4SelectBranch" runat="server" class="form-control" style="padding:1px"><option value="all">Бүгд</option></select></div>
                                <div style="width:55px; float:left; margin-right:10px; padding-top:8px;">СС хийх: </div>
                                <div style="width:90px; float:left; margin-right:10px;"><select id="egTab6t4SelectTeam" runat="server" class="form-control" style="padding:1px"><option value="all">Бүгд</option><option value="1">Дангаар</option><option value="0">Хамтран</option></select></div>
                            </div>
                            <div style="text-align:right; width:30%; float:left;">
                                <img id="egTab6t4ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" title="PDF руу татах" onclick="exportPdf('#divegTab6t4')" />
                                <img id="egTab6t4ExportWord" src="../img/word-icon.png" style="cursor:pointer;" title="Word руу татах" onclick="exportWord('#divegTab6t4', 'ҮЧ-н хэрэгжилтийн дэлгэрэнгүй тайлан <% Response.Write(egTab6t4SelectYear.Items[egTab6t4SelectYear.SelectedIndex].Text + " " + egTab6t4SelectYearHalf.Items[egTab6t4SelectYearHalf.SelectedIndex].Text); %>')" />
                                <img id="egTab6t4ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" title="Excel руу татах" onclick="exportExcel('#divegTab6t4')" />
                                <button id="egTab6t4Print" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divegTab6t4')"><span class="fa fa-print"></span> Хэвлэх</button>
                                <button id="egTab6t4Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                            </div>
                        </div>
                        <div id="loaderTab64" class="search-background">
                            <label>
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                            </label>
                        </div>
                        <div id="divegTab6t4" runat="server" class="reports">
                            <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px; font-family: Arial, serif;">
                                МОНГОЛ УЛСЫН ЭДИЙН ЗАСАГ, НИЙГМИЙГ <label id="egTab6t4Year" runat="server" style="font-weight:bold;">0000</label> ОНД ХӨГЖҮҮЛЭХ ҮНДСЭН ЧИГЛЭЛИЙГ ХЭРЭГЖҮҮЛЭХ АРГА ХЭМЖЭЭНИЙ ТӨЛӨВЛӨГӨӨНД САНГИЙН САЙДЫН ХАРИУЦАН ХЭРЭГЖҮҮЛЭХ АРГА ХЭМЖЭЭНИЙ БИЕЛЭЛТ<br/><br />(<label id="egTab6t4Year2" runat="server" style="font-weight:bold;">0000</label> оны <label id="egTab6t4YearHalf" runat="server" style="font-weight:bold;">ehnii hagas</label> байдлаар )
                            </div>
                            <div id="divegTab6t4Table1" runat="server">
                                       
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </article>   
    </div>    
</section>
<div id="egPolicyModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="egPolicyModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >ҮЧ-ийн бодлого&nbsp;<span id="egPolicyModalHeaderLabel">нэмэх</span></h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div id="egPolicyID" class="form-group hide"></div>                        
                            <div class="form-group">
                                Он: <label id="egPolicyModalCurrentYr" runat="server"></label>
                            </div>
                            <div class="form-group">
                                <input id="egPolicyModalPolicyno" name="egPolicyModalPolicyno" class="form-control" type="text" placeholder="Дугаар"/>
                            </div>
                            <div class="form-group">
                                <textarea id="egPolicyModalPolicyname" name="egPolicyModalPolicyname" class="form-control" required="" placeholder="Бодлого" rows="4"></textarea>
                            </div>                        
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                    <button id="egPolicySave" class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
                </div>
            </form>
        </div>
    </div>
</div>
<div id="egObjectModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="egObjectModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> × </button>
                    <h4 class="modal-title" >ҮЧ-ийн зорилт&nbsp;<span id="egObjectModalHeaderLabel">нэмэх</span></h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div id="egObjectID" class="form-group hide"></div> 
                            <div class="form-group">
                                Он: <label id="egObjectModalCurrentYr" runat="server"></label>
                            </div>
                            <div class="form-group">  
                                <select id="egObjectModalPolicy" name="egObjectModalPolicy" class="form-control"></select>
                            </div>
                            <div class="form-group"> 
                                <input id="egObjectModalObjectno" name="egObjectModalObjectno" class="form-control" type="text" placeholder="Дугаар"/>
                            </div>
                            <div class="form-group"> 
                                <textarea id="egObjectModalObjectname" name="egObjectModalObjectname" class="form-control" required="" placeholder="Зорилт" rows="4"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                    <button id="egObjectSave" class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
                </div>
            </form>
        </div>
    </div>
</div>
<div id="egWorkModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="egWorkModalForm">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> × </button>
                <h4 class="modal-title" >ҮЧ-ийн арга хэмжээ&nbsp;<span id="egWorkModalHeaderLabel">нэмэх</span></h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div id="egWorkID" class="form-group hide"></div> 
                        <div class="form-group">
                            Он: <label id="egWorkModalCurrentYr" runat="server"></label>
                        </div>
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;"> 
                            <label class="col-md-2 control-label">СС хийх</label>
                            <div class="col-md-10">                                  
                                <select id="egWorkModalTeam" name="egWorkModalTeam" class="form-control">
                                    <option value="">- СС хийх сонго -</option>
                                    <option value="0">Дангаар</option>
                                    <option value="1">Хамтран</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;"> 
                            <label class="col-md-2 control-label">Бодлого</label>
                            <div class="col-md-10">                                  
                                <select id="egWorkModalPolicy" name="egWorkModalPolicy" class="form-control"></select>
                            </div>
                        </div>
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                            <label class="col-md-2 control-label">Зорилт</label>
                            <div class="col-md-10">                               
                                <select id="egWorkModalObject" name="egWorkModalObject" class="form-control" disabled><option value="0">- Бодлого сонго -</option></select>
                            </div>
                        </div>
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                            <label class="col-md-2 control-label">Арга хэмжээ</label>
                            <div class="col-md-2">
                                <input id="egWorkModalWorkNo" name="egWorkModalWorkNo" class="form-control" type="text" required="" placeholder="Дугаар" value=""/>
                            </div>
                            <div class="col-md-8">
                                <textarea id="egWorkModalWorkName" name="egWorkModalWorkName" class="form-control" required="" placeholder="Арга хэмжээ" rows="2"></textarea>
                            </div>
                        </div> 
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                            <label class="col-md-2 control-label">Шалгуур үзүүлэлт</label>
                            <div class="col-md-10">
                                <textarea id="egWorkModalCriteria" name="egWorkModalCriteria" class="form-control" required="" placeholder="Шалгуур үзүүлэлт" rows="2"></textarea>
                            </div>
                        </div>
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                            <label class="col-md-2 control-label">Хүрэх түвшин</label>
                            <div class="col-md-10">
                                <textarea id="egWorkModalResult" name="egWorkModalResult" class="form-control" required="" placeholder="Хүрэх түвшин" rows="2"></textarea>
                            </div>
                        </div>
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                            <label class="col-md-2 control-label">Хөрөнгийн хэмжээ, эх үүсвэр</label>
                            <div class="col-md-10">
                                <textarea id="egWorkModalStock" name="egWorkModalStock" class="form-control" required="" placeholder="Хөрөнгийн хэмжээ, эх үүсвэр" rows="2"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
							<label class="col-md-2 control-label">Хариуцах яамд</label>
                            <div class="col-md-10">
                                <div id="divegWorkModalYamlist">

                                </div>
                            </div> 
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
							<label class="col-md-2 control-label">Хэрэгжүүлэх газар</label>
                            <div class="col-md-10">
                                <div id="divegWorkModalGazarlist">

                                </div>
                            </div> 
                        </div>
                    </div>
                    <div class="col-md-12" style="display:none;">
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
							<label class="col-md-2 control-label">Холбох ҮХЦБ</label>
                            <div class="col-md-10">
                                <div id="divegWorkModalNDSList">

                                </div>
                            </div> 
                        </div>
                    </div>                    
                    <div class="col-md-12" style="display:none;">
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
							<label class="col-md-2 control-label">Холбох ЗГҮАХ</label>
                            <div class="col-md-10">
                                <div id="divegWorkModalGAPList">

                                </div>
                            </div> 
                        </div>
                    </div>                            
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                <button id="egWorkSave" class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
            </div>
            </form>
        </div>
    </div>
</div>
<div id="egImplModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="egImplModalForm">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> × </button>
                    <h4 class="modal-title" >ҮЧ-ийн биелэлт&nbsp;<span id="egImplModalHeaderLabel">нэмэх</span></h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div id="egImplID" class="form-group hide"></div> 
                        <div class="form-group" style="margin-bottom:15px;">
                            Он: <label id="egImplModalCurrentYr" runat="server"></label>&nbsp;|&nbsp;<label id="egImplModalCurrentHalfYr" runat="server"></label><label id="egImplModalCurrentHalfYr_Hide" runat="server" Class="hide"></label>
                        </div> 
                        <div class="form-group" style="margin-bottom:15px;">
                            <label id="egImplModalWork" runat="server"></label>
                        </div>
                        <div class="form-group" style="margin-bottom:15px; display:block; overflow:hidden;"> 
                            <label class="col-md-2 control-label">Хүрсэн түвшин</label>
                            <div class="col-md-10">                                  
                                <textarea id="egImplModalResulted" name="egImplModalResulted" class="form-control" placeholder="Хүрсэн түвшин" rows="2"></textarea>
                            </div>
                        </div>
                        <div class="form-group" style="height:20px;">
                            <label class="col-md-2 control-label">Биелэлт</label>
                        </div>
                        <div class="form-group" style="margin:0px; display:block; overflow:hidden;">
                            <div class="col-md-12"> 
                                <div style="width:100%; display: block; overflow: hidden; padding-bottom: 5px;">
                                    <div style="width:15%; float:right; text-align:right;">
                                        Тэмдэгт: <label id="egImplModalCharLength" runat="server">0</label>/12000
                                    </div>
                                    <div style="width:17%; float:right; text-align:right;">
                                        <button id="egImplDelete" type="button" class="btn btn-labeled btn-danger" style="font-size: 12px; margin-top: -5px;">
                                            <span class="btn-label" style="padding: 3px 7px 3px 5px; width: 21px; height: 21px;">
                                                <i class="fa fa-trash-o"></i>
                                            </span>Биелэлт устгах
                                        </button>
                                    </div>                                    
                                    <div style="width:24%; float:right; text-align:right;">
                                        <button id="egImplDownload" type="button" class="btn btn-labeled btn-warning" style="font-size: 12px; margin-top: -3px;">
                                            <span class="btn-label" style="padding: 3px 7px 3px 5px; width: 21px; height: 21px;">
                                                <i class="glyphicon glyphicon-download-alt"></i>
                                            </span>Өмнөх хагас жилээс татах
                                        </button>
                                    </div>  
                                </div>
                                <textarea id="egImplModalImpl" name="egImplModalImpl"></textarea>
                                <script>
                                    CKEDITOR.replace('egImplModalImpl', {
                                        toolbar: [
                                            { name: 'document', groups: [ 'mode', 'document', 'doctools' ], items: [ 'Source', '-', 'Preview', 'Print'] },
	                                        { name: 'clipboard', groups: [ 'clipboard', 'undo' ], items: [ 'Cut', 'Copy', 'Paste', '-', 'Undo', 'Redo' ] },
	                                        { name: 'editing', groups: [ 'find', 'selection', 'spellchecker' ], items: [ 'Find', 'Replace'] },
	                                        { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ], items: [ 'Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript'] },
	                                        { name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'bidi' ], items: [ 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'] },
	                                         { name: 'insert', items: [ 'Image', 'Flash', 'Table', 'SpecialChar'] },
	                                        { name: 'styles', items: [ 'Styles', 'Format', 'Font', 'FontSize' ] },
	                                        { name: 'colors', items: [ 'TextColor', 'BGColor' ] },
	                                        { name: 'tools', items: [ 'Maximize'] }
                                        ]

                                    });

                                    var editor = CKEDITOR.instances.egImplModalImpl;
                                    editor.on('key', function (evt) {
                                        $("#egImplModalCharLength").text(replaceDisplayToDatabase($.trim(evt.editor.getData())).length);
                                    }, editor.element.$);
                                </script>
                            </div>
                        </div>
                    </div>
                </div>                
            </div>
            <div class="modal-footer">
                <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                <button id="egImplSave" class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
            </div>
            </form>
        </div>
    </div>
</div>
<div id="egTab6t1PrintModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog" style="width:90%;">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                <h4 class="modal-title" >Үндсэн чиглэлийн төлөвлөгөө</h4>
            </div>
            <div class="modal-body" style="padding-bottom:0px;">
                <div class="row">
                    <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                        <div style="width:70%; float:left;">
                            <div style="width:65px; float:left; margin-right:10px;"><select id="egTab6t1SelectYear" runat="server" class="form-control" style="padding:1px"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select></div>
                            <div style="width:50px; float:left; margin-right:10px; padding-top:8px;">СС хийх: </div>
                            <div style="width:90px; float:left; margin-right:10px;"><select id="egTab6t1SelectTeam" runat="server" class="form-control" style="padding:1px"><option value="all" selected>Бүгд</option><option value="0">Дангаар</option><option value="1">Хамтран</option></select></div>
                            <div style="width:30px; float:left; margin-right:10px; padding-top:8px;">Газар: </div>
                            <div style="width:90px; float:left; margin-right:10px;"><select id="egTab6t1SelectBranch" runat="server" class="form-control" style="padding:1px"><option value="all">Бүгд</option></select></div>
                        </div>
                        <div style="text-align:right; width:30%; float:left;">
                            <img id="egTab6t1ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" title="PDF руу татах" onclick="exportPdf('#divegTab6t1')" />
                            <img id="egTab6t1ExportWord" src="../img/word-icon.png" style="cursor:pointer;" title="Word руу татах" onclick="exportWord('#divegTab6t1', 'ҮЧ-н төлөвлөгөө <% Response.Write(egTab6t1SelectYear.Items[egTab6t1SelectYear.SelectedIndex].Text); %>')" />
                            <img id="egTab6t1ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" title="Excel руу татах" onclick="exportExcel('#divegTab6t1')" />
                            <button id="egTab6t1Print" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divegTab6t1')"><span class="fa fa-print"></span> Хэвлэх </button>
                            <button id="egTab6t1Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                        </div>
                    </div>
                    <div id="loaderTab61" class="search-background">
                        <label>
                            <img width="64" height="" src="img/loading.gif"/>
                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                        </label>
                    </div>
                    <div id="divegTab6t1" runat="server" class="reports">
                        <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px; font-family: Arial, serif;">
                            МОНГОЛ УЛСЫН ЭДИЙН ЗАСАГ, НИЙГМИЙГ <label id="egTab6t1Year" runat="server" style="font-weight:bold;">0000</label> ОНД ХӨГЖҮҮЛЭХ ҮНДСЭН ЧИГЛЭЛИЙГ ХЭРЭГЖҮҮЛЭХ ТӨЛӨВЛӨГӨӨНД САНГИЙН САЙДЫН <label id="egTab6t1Team" runat="server" style="font-weight:bold;">ДАНГААР ХАРИУЦАХ</label> ЗОРИЛТ, АРГА ХЭМЖЭЭНИЙ ХУВААРЬ
                        </div>
                        <div id="divegTab6t1Table" runat="server"></div>
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
        //showLoader('loaderTab3');
        //globalAjaxVar = $.ajax({
        //    type: "POST",
        //    url: "ws.aspx/eg_GetEGWorkTable",
        //    data: '{cyr:"' + $("#egWorkModalCurrentYr").html() + '",yr:"' + $("#egTab3SelectYear option:selected").text() + '", tm:"' + $("#egTab3SelectTeam option:selected").val() + '", PMN:"' + $("#egPolicyPermissionDiv").text() + '"}',
        //    contentType: "application/json; charset=utf-8",
        //    dataType: "json",
        //    success: function (msg) {
        //        $("#divBindWorkTable").html(msg.d);
        //        hideLoader('loaderTab3');
        //        showLoader('loaderTab1');
        //        globalAjaxVar = $.ajax({
        //            type: "POST",
        //            url: "ws.aspx/eg_GetEGPolicyTable",
        //            data: '{cyr:"' + $("#egPolicyModalCurrentYr").html() + '",yr:"' + $("#egTab1SelectYear option:selected").text() + '", PMN:"' + $("#egPolicyPermissionDiv").text() + '"}',
        //            contentType: "application/json; charset=utf-8",
        //            dataType: "json",
        //            success: function (msg) {
        //                $("#divBindPolicyTable").html(msg.d);
        //                hideLoader('loaderTab1');
        //                showLoader('loaderTab2');
        //                globalAjaxVar = $.ajax({
        //                    type: "POST",
        //                    url: "ws.aspx/eg_GetEGObjectTable",
        //                    data: '{cyr:"' + $("#egObjectModalCurrentYr").html() + '",yr:"' + $("#egTab2SelectYear option:selected").text() + '", PMN:"' + $("#egPolicyPermissionDiv").text() + '"}',
        //                    contentType: "application/json; charset=utf-8",
        //                    dataType: "json",
        //                    success: function (msg) {
        //                        $("#divBindObjectTable").html(msg.d);
        //                        hideLoader('loaderTab2');
        //                        showLoader('loaderTab4');
        //                        globalAjaxVar = $.ajax({
        //                            type: "POST",
        //                            url: "ws.aspx/eg_GetEGImplTable",
        //                            data: '{cyr:"' + $("#egImplModalCurrentYr").html() + '",yr:"' + $("#egTab4SelectYear option:selected").text() + '", tm:"' + $("#egTab4SelectTeam option:selected").val() + '", chyr:"' + $("#indexCurrentYearHalf").html() + '", hyr:"' + $("#egTab4SelectYearHalf option:selected").val() + '", brid:"' + $("#egTab4SelectBranch option:selected").val() + '", impl:"all", eval:"' + $("#egTab4SelectEva option:selected").val() + '", PMN:"' + $("#egPolicyPermissionDiv").text() + '"}',
        //                            contentType: "application/json; charset=utf-8",
        //                            dataType: "json",
        //                            success: function (msg) {
        //                                $("#divBindImplTable").html(replaceDatabaseToDisplay(msg.d));
        //                                hideLoader('loaderTab4');
        //                                var pCnt = 0;
        //                                var pValTotal = 0;
        //                                if ($('#egTab4Datatable').children('thead').children('tr').children('th').length == 11) {
        //                                    $('#egTab4Datatable > tbody > tr').each(function () {
        //                                        var pVal = $('td:eq(9) select option:selected', this).val();
        //                                        if (pVal != "none") {
        //                                            pCnt++;
        //                                            pValTotal = parseInt(pValTotal) + parseInt(pVal);
        //                                        }
        //                                    });
        //                                }
        //                                else {
        //                                    $('#egTab4Datatable > tbody > tr').each(function () {
        //                                        var pVal = $('td:eq(7) select option:selected', this).val();
        //                                        if ($(this).find('td:eq(0)').attr('colspan') != "9") {
        //                                            if (pVal != "none") {
        //                                                pCnt++;
        //                                                pValTotal = parseInt(pValTotal) + parseInt(pVal);
        //                                            }
        //                                        }
        //                                    });
        //                                }
        //                                $('#egImplTotalPer').text((parseInt(pValTotal) / parseInt(pCnt)) + ' %');
        //                                $('#egImplTotalPer').text($('#egImplTotalPer').text().replace("NaN %", "0 %"));
        //                                globalAjaxVar = $.ajax({
        //                                    type: "POST",
        //                                    url: "ws.aspx/GetPolicyListForDDL",
        //                                    data: '{yr:"' + $("#egPolicyModalCurrentYr").html() + '", end_yr:"' + $("#egPolicyModalCurrentYr").html() + '",type:"3"}',
        //                                    contentType: "application/json; charset=utf-8",
        //                                    dataType: "json",
        //                                    success: function (msg) {
        //                                        var varMsg = msg.d;
        //                                        var arrMsg = varMsg.split("~");
        //                                        if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
        //                                        else { $("#egObjectModalPolicy").html("<option value=\"0\">- Бодлого сонго -</option>" + arrMsg[1]); $("#egWorkModalPolicy").html("<option value=\"\">- Бодлого сонго -</option>" + arrMsg[1]); }
        //                                    },
        //                                    failure: function (response) {
        //                                        alert('FAILURE: ' + response.d);
        //                                    },
        //                                    error: function (xhr, status, error) {
        //                                        var err = eval("(" + xhr.responseText + ")");
        //                                        if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
        //                                        else window.location = '../#pg/error500.aspx';
        //                                    }
        //                                });
        //                            },
        //                            failure: function (response) {
        //                                alert('FAILURE: ' + response.d);
        //                            },
        //                            error: function (xhr, status, error) {
        //                                var err = eval("(" + xhr.responseText + ")");
        //                                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
        //                                else window.location = '../#pg/error500.aspx';
        //                            }
        //                        });
        //                    },
        //                    failure: function (response) {
        //                        alert('FAILURE: ' + response.d);
        //                    },
        //                    error: function (xhr, status, error) {
        //                        var err = eval("(" + xhr.responseText + ")");
        //                        if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
        //                        else window.location = '../#pg/error500.aspx';
        //                    }
        //                });
        //            },
        //            failure: function (response) {
        //                alert('FAILURE: ' + response.d);
        //            },
        //            error: function (xhr, status, error) {
        //                var err = eval("(" + xhr.responseText + ")");
        //                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
        //                else window.location = '../#pg/error500.aspx';
        //            }
        //        });
        //    },
        //    failure: function (response) {
        //        alert('FAILURE: ' + response.d);
        //    },
        //    error: function (xhr, status, error) {
        //        var err = eval("(" + xhr.responseText + ")");
        //        if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
        //        else window.location = '../#pg/error500.aspx';
        //    }
        //});
        if ($('#egTab1HeadLi1').attr('class') == 'active') {
            dataBindPolicyTable();
            dataBindPolicyDDLs();
        }
        else if ($('#egTab1HeadLi2').attr('class') == 'active') {
            dataBindObjectTable();
        }
        else if ($('#egTab1HeadLi3').attr('class') == 'active') {
            dataBindWorkTable();
            dataBindWorkModalGazarlist("none");
            dataBindWorkModalGAPList("none");
            dataBindWorkModalNDSList("none");
            dataBindTab6t1SetFirstControls();
        }
        else if ($('#egTab1HeadLi4').attr('class') == 'active') {
            dataBindTab4SetFirstControls();
        }
        else if ($('#egTab1HeadLi5').attr('class') == 'active') {
            dataBindTab5t1Table();
            dataBindTab5t2SetFirstControls();
            dataBindTab5t3SetFirstControls();
        }
        else if ($('#egTab1HeadLi6').attr('class') == 'active') {
            dataBindTab6t2Datas();
            dataBindTab6t3SetFirstControls();
            dataBindTab6t4SetFirstControls();
        }
    }
    var pagedestroy = function () {
        if (globalAjaxVar != null) {
            globalAjaxVar.abort();
            globalAjaxVar = null;
        }
    }
    pagefunction();
    function egDatabindTabs(el) {
        if ($.trim($(el).attr('id')) == 'egTab1HeadLi1') {
            if ($.trim($('#divBindPolicyTable').html()) == "") {
                dataBindPolicyTable();
                dataBindPolicyDDLs();
            }
        }
        else if ($.trim($(el).attr('id')) == 'egTab1HeadLi2') {
            if ($.trim($('#divBindObjectTable').html()) == "") {
                dataBindObjectTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'egTab1HeadLi3') {
            if ($.trim($('#divBindWorkTable').html()) == "") {
                dataBindWorkTable();
                dataBindWorkModalGazarlist("none");
                dataBindWorkModalGAPList("none");
                dataBindWorkModalNDSList("none");
                dataBindTab6t1SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'egTab1HeadLi4') {
            if ($.trim($('#divBindImplTable').html()) == "") {
                dataBindTab4SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'egTab1HeadLi5') {
            if ($.trim($('#divegTab5t1Table').html()) == "") {
                dataBindTab5t1Table();
                dataBindTab5t2SetFirstControls();
                dataBindTab5t3SetFirstControls();
            }
        }
        else if ($.trim($(el).attr('id')) == 'egTab1HeadLi6') {
            if ($.trim($('#divegTab6t2Table1').html()) == "") {
                dataBindTab6t2Datas();
                dataBindTab6t3SetFirstControls();
                dataBindTab6t4SetFirstControls();
            }
        }
    }
    //tab6t1
    function dataBindTab6t1SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/globalGetGazarListForDDL",
            data: '{yr:"' + $('#egTab6t1SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#egTab6t1SelectBranch").html(msg.d);
                dataBindTab6t1Table();
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
            data: '{yr:"' + $('#egTab4SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#egTab4SelectBranch").html(msg.d);
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
    //tab5t2
    function dataBindTab5t2SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/globalGetGazarListForDDL",
            data: '{yr:"' + $('#egTab5t2SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#egTab5t2SelectBranch").html(msg.d);
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
            data: '{yr:"' + $('#egTab5t3SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#egTab5t3SelectBranch").html(msg.d);
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
    //tab6t3
    function dataBindTab6t3SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/globalGetGazarListForDDL",
            data: '{yr:"' + $('#egTab6t3SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#egTab6t3SelectBranch").html(msg.d);
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
    //tab6t4
    function dataBindTab6t4SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/globalGetGazarListForDDL",
            data: '{yr:"' + $('#egTab6t4SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#egTab6t4SelectBranch").html(msg.d);
                dataBindTab6t4Table();
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
            url: "ws.aspx/eg_GetEGPolicyTable",
            data: '{cyr:"' + $("#egPolicyModalCurrentYr").html() + '",yr:"' + $("#egTab1SelectYear option:selected").text() + '", PMN:"' + $("#egPolicyPermissionDiv").text() + '"}',
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
    function dataBindObjectTable() {
        showLoader('loaderTab2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/eg_GetEGObjectTable",
            data: '{cyr:"' + $("#egObjectModalCurrentYr").html() + '",yr:"' + $("#egTab2SelectYear option:selected").text() + '", PMN:"' + $("#egPolicyPermissionDiv").text() + '"}',
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
        //showLoader('loaderTab3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/eg_GetEGWorkTable",
            data: '{cyr:"' + $("#egWorkModalCurrentYr").html() + '",yr:"' + $("#egTab3SelectYear option:selected").text() + '", tm:"' + $("#egTab3SelectTeam option:selected").val() + '", PMN:"' + $("#egPolicyPermissionDiv").text() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divBindWorkTable").html(msg.d);
                //hideLoader('loaderTab3');
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
            url: "ws.aspx/eg_GetEGImplTable",
            data: '{cyr:"' + $("#egImplModalCurrentYr").html() + '",yr:"' + $("#egTab4SelectYear option:selected").text() + '", tm:"' + $("#egTab4SelectTeam option:selected").val() + '", chyr:"' + $("#indexCurrentYearHalf").html() + '", hyr:"' + $("#egTab4SelectYearHalf option:selected").val() + '", brid:"' + $("#egTab4SelectBranch option:selected").val() + '", impl:"' + impl + '", eval:"' + $("#egTab4SelectEva option:selected").val() + '", PMN:"' + $("#egPolicyPermissionDiv").text() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divBindImplTable").html(replaceDatabaseToDisplay(msg.d));
                hideLoader('loaderTab4');

                var pCnt = 0;
                var pValTotal = 0;
                if ($('#egTab4Datatable').children('thead').children('tr').children('th').length == 11) {
                    $('#egTab4Datatable > tbody > tr').each(function () {
                        var pVal = $('td:eq(9) select option:selected', this).val();
                        if (pVal != "none") {
                            pCnt++;
                            pValTotal = parseInt(pValTotal) + parseInt(pVal);
                        }
                    });
                }
                else {
                    $('#egTab4Datatable > tbody > tr').each(function () {
                        var pVal = $('td:eq(7) select option:selected', this).val();
                        if ($(this).find('td:eq(0)').attr('colspan') != "9") {
                            if (pVal != "none") {
                                pCnt++;
                                pValTotal = parseInt(pValTotal) + parseInt(pVal);
                            }
                        }
                    });
                }
                $('#egImplTotalPer').text((parseInt(pValTotal) / parseInt(pCnt)) + ' %');
                $('#egImplTotalPer').text($('#egImplTotalPer').text().replace("NaN %","0 %"));
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
            data: '{yr:"' + $("#egPolicyModalCurrentYr").html() + '", end_yr:"' + $("#egPolicyModalCurrentYr").html() + '",type:"3"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else { $("#egObjectModalPolicy").html("<option value=\"0\">- Бодлого сонго -</option>" + arrMsg[1]); $("#egWorkModalPolicy").html("<option value=\"\">- Бодлого сонго -</option>" + arrMsg[1]); }
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
            data: '{id:"' + $("#egWorkModalPolicy option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    $('#egWorkModalObject').prop('disabled', false);
                    $("#egWorkModalObject").html("<option value=\"0\">- Зорилт сонго -</option>" + arrMsg[1]);
                    $("#egWorkModalObject").val(objId);
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
            data: '{selectedList:"' + selectedList + '", type:"3", yr:"' + $('#indexCurrentYear').html() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    $("#divegWorkModalYamlist").html(arrMsg[1]);
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
            data: '{selectedList:"' + selectedList + '", type:"3", yr:"' + $('#egTab3SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    $("#divegWorkModalGazarlist").html(arrMsg[1]);
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
    function dataBindWorkModalNDSList(selectedList) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/GetMultiSelectList",
            data: '{type:"1", selectedList:"' + selectedList + '", stid:"none"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    $("#divegWorkModalNDSList").html("<select id=\"egWorkModalNDSList\" name=\"egWorkModalNDSList\" multiple=\"multiple\" style=\"width:100%\">" + arrMsg[1]);
                    $("#divegWorkModalNDSList").append("</select><script>$(\"#egWorkModalNDSList\").select2();<\/script>");
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
                    $("#divegWorkModalGAPList").html("<select id=\"egWorkModalGAPList\" name=\"egWorkModalGAPList\" multiple=\"multiple\" style=\"width:100%\">" + arrMsg[1]);
                    $("#divegWorkModalGAPList").append("</select><script>$(\"#egWorkModalGAPList\").select2();<\/script>");
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
    function dataBindTab5t1Table() {
        showLoader('loaderTab51');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/eg_GetTab5t1Table",
            data: '{yr:"' + $("#egTab5t1SelectYear option:selected").text() + '", hyr:"' + $("#egTab5t1SelectYearHalf option:selected").val() + '", type:"3"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divegTab5t1Table").html(msg.d);
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
            url: "ws.aspx/eg_GetTab5t2Table",
            data: '{yr:"' + $("#egTab5t2SelectYear option:selected").text() + '", hyr:"' + $("#egTab5t2SelectYearHalf option:selected").val() + '", type:"3", brid:"' + $("#egTab5t2SelectBranch option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divegTab5t2Table").html(msg.d);
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
            url: "ws.aspx/eg_GetTab5t3Table",
            data: '{yr:"' + $("#egTab5t3SelectYear option:selected").text() + '", hyr:"' + $("#egTab5t3SelectYearHalf option:selected").val() + '", type:"3", brid:"' + $("#egTab5t3SelectBranch option:selected").val() + '", eval:"' + $("#egTab5t3SelectEva option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divegTab5t3Table").html(msg.d);
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
            url: "ws.aspx/eg_GetTab6t1Table",
            data: '{yr:"' + $("#egTab6t1SelectYear option:selected").val() + '", team:"' + $("#egTab6t1SelectTeam option:selected").val() + '", brid:"' + $("#egTab6t1SelectBranch option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divegTab6t1Table").html(msg.d);
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
    function dataBindTab6t2Datas()
    {
        showLoader('loaderTab62');
        $("#egTab6t2Year").text($("#egTab6t2SelectYear option:selected").val());
        $("#egTab6t2Year2").text($("#egTab6t2SelectYear option:selected").val());
        $("#egTab6t2Year3").text($("#egTab6t2SelectYear option:selected").val());
        $("#egTab6t2Year4").text($("#egTab6t2SelectYear option:selected").val());
        $("#egTab6t2Year5").text($("#egTab6t2SelectYear option:selected").val());
        $("#egTab6t2YearHalf").text($("#egTab6t2SelectYearHalf option:selected").val().replace("1", "эхний хагас жилийн").replace("2", "сүүлийн хагас жилийн"));
        $("#egTab6t2YearHalf2").text($("#egTab6t2SelectYearHalf option:selected").val().replace("1", "эхний хагас жилийн").replace("2", "сүүлийн хагас жилийн"));
        $("#egTab6t2Tushaal").text($("#egTab6t2InputTushaal").val());
        $("#egTab6t2Togtool").text($("#egTab6t2InputTogtool").val());
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/eg_GetTab6t1Datas",
            data: '{yr:"' + $("#egTab6t2SelectYear option:selected").val() + '", hyr:"' + $("#egTab6t2SelectYearHalf option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                $("#egTab6t2WorkTeam0").html(arrMsg[0]);
                $("#egTab6t2WorkTeam1").html(arrMsg[1]);
                $("#egTab6t2WorkTeam").html(parseInt(arrMsg[0]) + parseInt(arrMsg[1]));
                $("#egTab6t2TotalPercent").html(arrMsg[2]);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/eg_GetTab5t1Table",
                    data: '{yr:"' + $("#egTab6t2SelectYear option:selected").text() + '", hyr:"' + $("#egTab6t2SelectYearHalf option:selected").val() + '", type:"3"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        $("#divegTab6t2Table1").html(msg.d);
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "ws.aspx/eg_GetTab5t2Table",
                            data: '{yr:"' + $("#egTab6t2SelectYear option:selected").val() + '", hyr:"' + $("#egTab6t2SelectYearHalf option:selected").val() + '", type:"3", brid:"0"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                $("#divegTab6t2Table2").html(msg.d);
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/eg_GetTab5t3Table",
                                    data: '{yr:"' + $("#egTab6t2SelectYear option:selected").val() + '", hyr:"' + $("#egTab6t2SelectYearHalf option:selected").val() + '", type:"3", brid:"0", eval:"all"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        $("#divegTab6t2Table3").html(msg.d);
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
            url: "ws.aspx/eg_GetTab6t3Table",
            data: '{yr:"' + $("#egTab6t3SelectYear option:selected").text() + '", hyr:"' + $("#egTab6t3SelectYearHalf option:selected").val() + '", type:"3", brid:"' + $("#egTab6t3SelectBranch option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divegTab6t3Table").html(msg.d);
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
    function dataBindTab6t4Table() {
        showLoader('loaderTab64');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/eg_GetTab6t4Table",
            data: '{yr:"' + $("#egTab6t4SelectYear option:selected").text() + '", hyr:"' + $("#egTab6t4SelectYearHalf option:selected").val() + '", team:"' + $("#egTab6t4SelectTeam option:selected").val() + '", type:"3", brid:"' + $("#egTab6t4SelectBranch option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divegTab6t4Table1").html(replaceDatabaseToDisplay(msg.d));
                hideLoader('loaderTab64');
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
    
    $('#egWorkModalObject').prop('disabled', true);
    $("#egWorkModalPolicy").change(function () {
        if ($("#egWorkModalPolicy option:selected").val() == "0") {
            $('#egWorkModalObject').html("<option value=\"0\">- Бодлого сонго -</option>");
            $('#egWorkModalObject').prop('disabled', true);
        }
        else {
            dataBindWorkModalObjectDDL(0);
        }
    });

    function saveEval(me) {        
        var varMsg = $(me).closest("tr").attr("id");
        var arrMsg = varMsg.split("-");
        var qry = "";
        if ($(me).val() == "none") qry = "UPDATE TBL_WORK_IMPLEVAL SET EVAL=null WHERE WORK_ID=" + arrMsg[1] + " AND YR=" + $('#egTab4SelectYear option:selected').val() + " AND YR_H=" + $('#egTab4SelectYearHalf option:selected').val();
        else qry = "UPDATE TBL_WORK_IMPLEVAL SET EVAL=" + $(me).val() + " WHERE WORK_ID=" + arrMsg[1] + " AND YR=" + $('#egTab4SelectYear option:selected').val() + " AND YR_H=" + $('#egTab4SelectYearHalf option:selected').val();
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
                        title: "ҮЧ-ийн биелэлтийн үнэлгээ",
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
    function saveEvalDesc(txtareaid)
    {
        var varMsg = $("#" + txtareaid).closest("tr").attr("id");
        var arrMsg = varMsg.split("-");
        var qry = "";
        if ($.trim($("#" + txtareaid).val()) == "") qry = "UPDATE TBL_WORK_IMPLEVAL SET EVAL_DESC=null WHERE WORK_ID=" + arrMsg[1] + " AND YR=" + $('#egTab4SelectYear option:selected').val() + " AND YR_H=" + $('#egTab4SelectYearHalf option:selected').val();
        else qry = "UPDATE TBL_WORK_IMPLEVAL SET EVAL_DESC=\'" + $.trim($("#" + txtareaid).val()) + "\' WHERE WORK_ID=" + arrMsg[1] + " AND YR=" + $('#egTab4SelectYear option:selected').val() + " AND YR_H=" + $('#egTab4SelectYearHalf option:selected').val();
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
                        title: "ҮЧ-ийн биелэлтийн үнэлгээний тайлбар",
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

    $("#egTab1SelectYear").change(function () {
        if ($("#egTab1SelectYear option:selected").text() == $("#egPolicyModalCurrentYr").html()) $("#egTab1Add").removeClass('hide');
        else $("#egTab1Add").addClass('hide');
        dataBindPolicyTable();
    });
    $("#egTab2SelectYear").change(function () {
        if ($("#egTab2SelectYear option:selected").text() == $("#egObjectModalCurrentYr").html()) $("#egTab2Add").removeClass('hide');
        else $("#egTab2Add").addClass('hide');
        dataBindObjectTable();
    });
    $("#egTab3SelectYear").change(function () {
        if ($("#egTab3SelectYear option:selected").text() == $("#egWorkModalCurrentYr").html()) $("#egTab3Add").removeClass('hide');
        else $("#egTab3Add").addClass('hide');
        dataBindWorkTable();
    });
    $("#egTab3SelectTeam").change(function () {
        dataBindWorkTable();
    });
    $("#egTab4SelectYear").change(function () {
        dataBindTab4SetFirstControls();
    });
    $("#egTab4SelectTeam").change(function () {
        dataBindImplTable('all');
    });
    $("#egTab4SelectYearHalf").change(function () {
        dataBindImplTable('all');
    });
    $("#egTab4SelectEva").change(function () {
        dataBindImplTable('all');
    });
    $("#egTab4SelectBranch").change(function () {
        dataBindImplTable('all');
    });
    $("#egTab4ClickImpl1").click(function () {
        dataBindImplTable('1');
    });
    $("#egTab4ClickImpl0").click(function () {
        dataBindImplTable('0');
    });
    
    $("#egTab5t1SelectYear").change(function () {
        $("#egTab5t1Year").html($("#egTab5t1SelectYear option:selected").val());
        dataBindTab5t1Table();
    });
    $("#egTab5t1SelectYearHalf").change(function () {
        $("#egTab5t1Year").html($("#egTab5t1SelectYear option:selected").val());
        $("#egTab5t1YearHalf").html($("#egTab5t1SelectYearHalf option:selected").val().replace("1", "ЭХНИЙ ХАГАС ЖИЛИЙН").replace("2", "СҮҮЛИЙН ХАГАС ЖИЛИЙН"));
        dataBindTab5t1Table();
    });
    $("#egTab5t2SelectYear").change(function () {
        $("#egTab5t2Year").html($("#egTab5t2SelectYear option:selected").val());
        dataBindTab5t2SetFirstControls();
    });
    $("#egTab5t2SelectYearHalf").change(function () {
        $("#egTab5t2Year").html($("#egTab5t2SelectYear option:selected").val());
        $("#egTab5t2YearHalf").html($("#egTab5t2SelectYearHalf option:selected").val().replace("1", "ЭХНИЙ ХАГАС ЖИЛИЙН").replace("2", "СҮҮЛИЙН ХАГАС ЖИЛИЙН"));
        dataBindTab5t2Table();
    });
    $("#egTab5t2SelectBranch").change(function () {
        $("#egTab5t2Year").html($("#egTab5t2SelectYear option:selected").val());
        $("#egTab5t2YearHalf").html($("#egTab5t2SelectYearHalf option:selected").val().replace("1", "ЭХНИЙ ХАГАС ЖИЛИЙН").replace("2", "СҮҮЛИЙН ХАГАС ЖИЛИЙН"));
        dataBindTab5t2Table();
    });
    $("#egTab5t3SelectYear").change(function () {
        $("#egTab5t3Year").html($("#egTab5t3SelectYear option:selected").val());
        dataBindTab5t3SetFirstControls();
    });
    $("#egTab5t3SelectYearHalf").change(function () {
        $("#egTab5t3Year").html($("#egTab5t3SelectYear option:selected").val());
        $("#egTab5t3YearHalf").html($("#egTab5t3SelectYearHalf option:selected").val().replace("1", "ЭХНИЙ ХАГАС ЖИЛИЙН").replace("2", "СҮҮЛИЙН ХАГАС ЖИЛИЙН"));
        dataBindTab5t3Table();
    });
    $("#egTab5t3SelectBranch").change(function () {
        $("#egTab5t3Year").html($("#egTab5t3SelectYear option:selected").val());
        $("#egTab5t3YearHalf").html($("#egTab5t3SelectYearHalf option:selected").val().replace("1", "ЭХНИЙ ХАГАС ЖИЛИЙН").replace("2", "СҮҮЛИЙН ХАГАС ЖИЛИЙН"));
        dataBindTab5t3Table();
    });
    $("#egTab5t3SelectEva").change(function () {
        $("#egTab5t3Year").html($("#egTab5t3SelectYear option:selected").val());
        $("#egTab5t3YearHalf").html($("#egTab5t3SelectYearHalf option:selected").val().replace("1", "ЭХНИЙ ХАГАС ЖИЛИЙН").replace("2", "СҮҮЛИЙН ХАГАС ЖИЛИЙН"));
        dataBindTab5t3Table();
    });
    $("#egTab6t1SelectYear").change(function () {
        $("#egTab6t1Year").html($("#egTab6t1SelectYear option:selected").val());
        dataBindTab6t1SetFirstControls();
    });
    $("#egTab6t1SelectTeam").change(function () {
        if ($("#egTab6t1SelectTeam option:selected").val() == "0") $("#egTab6t1Team").html("ДАНГААР ХАРИУЦАХ");
        else $("#egTab6t1Team").html("БУСАД САЙДТАЙ ХАМТРАН ХЭРЭГЖҮҮЛЭХ");        
        dataBindTab6t1Table();
    });
    $("#egTab6t1SelectBranch").change(function () {
        dataBindTab6t1Table();
    });
    $("#egTab6t2SelectYear").change(function () {
        dataBindTab6t2Datas();
    });
    $("#egTab6t2SelectYearHalf").change(function () {
        dataBindTab6t2Datas();
    });
    $("#egTab6t2BtnTushaal").click(function () {
        $("#egTab6t2Tushaal").text($("#egTab6t2InputTushaal").val());
    });
    $("#egTab6t2BtnTogtool").click(function () {
        $("#egTab6t2Togtool").text($("#egTab6t2InputTogtool").val());
    });
    $("#egTab6t2BtnDugnelt").click(function () {
        $("#divegTab6t2Dugnelt").html($.trim(CKEDITOR.instances.egTab6t2InputDugnelt.getData()));
    });
    $("#egTab6t2BtnZuvlumj").click(function () {
        $("#divegTab6t2Zuvlumj").html($.trim(CKEDITOR.instances.egTab6t2InputZuvlumj.getData()));
    });
    $("#egTab6t3SelectYear").change(function () {
        $("#egTab6t3Year").text($("#egTab6t3SelectYear option:selected").val());
        $("#egTab6t3Year2").text($("#egTab6t3SelectYear option:selected").val());
        $("#egTab6t3YearHalf").text($("#egTab6t3SelectYearHalf option:selected").val().replace("1", "эхний хагас жилийн").replace("2", "сүүлийн хагас жилийн"));
        dataBindTab6t3SetFirstControls();
    });
    $("#egTab6t3SelectYearHalf").change(function () {
        $("#egTab6t3Year").text($("#egTab6t3SelectYear option:selected").val());
        $("#egTab6t3Year2").text($("#egTab6t3SelectYear option:selected").val());
        $("#egTab6t3YearHalf").text($("#egTab6t3SelectYearHalf option:selected").val().replace("1", "эхний хагас жилийн").replace("2", "сүүлийн хагас жилийн"));
        dataBindTab6t3Table();
    });
    $("#egTab6t3SelectBranch").change(function () {
        dataBindTab6t3Table();
    });
    $("#egTab6t4SelectYear").change(function () {
        $("#egTab6t4Year").html($("#egTab6t4SelectYear option:selected").val());
        $("#egTab6t4Year2").html($("#egTab6t4SelectYear option:selected").val());        
        dataBindTab6t4SetFirstControls();
    });
    $("#egTab6t4SelectYearHalf").change(function () {
        if ($("#egTab6t4SelectYearHalf option:selected").val() == "1") $("#egTab6t4YearHalf").html("эхний хагас жилийн");
        else if ($("#egTab6t4SelectYearHalf option:selected").val() == "2") $("#egTab6t4YearHalf").html("сүүлийн хагас жилийн");
        dataBindTab6t4Table();
    });
    $("#egTab6t4SelectBranch").change(function () {
        dataBindTab6t4Table();
    });
    $("#egTab6t4SelectTeam").change(function () {
        dataBindTab6t4Table();
    });

    $("#egTab5t1Refresh").click(function () {
        $("#egTab5t1SelectYear").val($('#egWorkModalCurrentYr').html());
        $("#egTab5t1SelectYearHalf").val($('#indexCurrentYearHalf').html());
        $("#egTab5t1Year").html($("#egTab5t1SelectYear option:selected").val());
        $("#egTab5t1YearHalf").html($("#egTab5t1SelectYearHalf option:selected").val().replace("1", "ЭХНИЙ ХАГАС ЖИЛИЙН").replace("2", "СҮҮЛИЙН ХАГАС ЖИЛИЙН"));
        dataBindTab5t1Table();
    });
    $("#egTab5t2Refresh").click(function () {
        $("#egTab5t2SelectYear").val($('#egWorkModalCurrentYr').html());
        $("#egTab5t2SelectYearHalf").val($('#indexCurrentYearHalf').html());
        $("#egTab5t2SelectBranch").val(0);
        $("#egTab5t2Year").html($("#egTab5t2SelectYear option:selected").val());
        $("#egTab5t2YearHalf").html($("#egTab5t2SelectYearHalf option:selected").val().replace("1", "ЭХНИЙ ХАГАС ЖИЛИЙН").replace("2", "СҮҮЛИЙН ХАГАС ЖИЛИЙН"));
        dataBindTab5t2Table();
    });
    $("#egTab5t3Refresh").click(function () {
        $("#egTab5t3SelectYear").val($('#egWorkModalCurrentYr').html());
        $("#egTab5t3SelectYearHalf").val($('#indexCurrentYearHalf').html());
        $("#egTab5t3SelectBranch").val(0);
        $("#egTab5t3SelectEva").val('all');
        $("#egTab5t3Year").html($("#egTab5t3SelectYear option:selected").val());
        $("#egTab5t3YearHalf").html($("#egTab5t3SelectYearHalf option:selected").val().replace("1", "ЭХНИЙ ХАГАС ЖИЛИЙН").replace("2", "СҮҮЛИЙН ХАГАС ЖИЛИЙН"));
        dataBindTab5t3Table();
    });
    $("#egTab6t1Refresh").click(function () {
        $("#egTab6t1SelectYear").val($('#egWorkModalCurrentYr').html());
        $("#egTab6t1Year").html($("#egTab6t1SelectYear").val());
        if ($("#egTab6t1SelectYear option:selected").val() == "0") $("#egTab6t1Team").html("ДАНГААР ХАРИУЦАХ");
        else $("#egTab6t1Team").html("БУСАД САЙДТАЙ ХАМТРАН ХЭРЭГЖҮҮЛЭХ");
        $("#egTab6t1SelectBranch").val(0);
        dataBindTab6t1Table();
    });
    $("#egTab6t2Refresh").click(function () {
        $("#egTab6t2SelectYear").val($('#egWorkModalCurrentYr').html());
        $("#egTab6t2SelectYearHalf").val($('#indexCurrentYearHalf').html());
        dataBindTab6t2Datas();
    });
    $("#egTab6t3Refresh").click(function () {
        $("#egTab6t3SelectYear").val($('#egWorkModalCurrentYr').html());
        $("#egTab6t3SelectYearHalf").val($('#indexCurrentYearHalf').html());
        $("#egTab6t3Year").text($("#egTab6t3SelectYear option:selected").val());
        $("#egTab6t3Year2").text($("#egTab6t3SelectYear option:selected").val());
        $("#egTab6t3YearHalf").text($("#egTab6t3SelectYearHalf option:selected").val().replace("1", "эхний хагас жилийн").replace("2", "сүүлийн хагас жилийн"));
        $("#egTab6t3SelectBranch").val(0);
        dataBindTab6t3Table();
    });
    $("#egTab6t4Refresh").click(function () {
        $("#egTab6t4SelectYear").val($('#egWorkModalCurrentYr').html());
        $("#egTab6t4SelectYearHalf").val($('#indexCurrentYearHalf').html());
        $("#egTab6t4Year").text($("#egTab6t4SelectYear option:selected").val());
        $("#egTab6t4YearHalf").text($("#egTab6t4SelectYearHalf option:selected").val().replace("1", "эхний хагас жилийн").replace("2", "сүүлийн хагас жилийн"));
        $("#egTab6t4SelectBranch").val(0);
        dataBindTab6t4Table();
    });

    $("#egTab1Add").click(function () {
        $("#egPolicyModalHeaderLabel").html("нэмэх");
        $("#egPolicyModalPolicyno").val("");
        $("#egPolicyModalPolicyname").val("");
        $("#egPolicyID").val("");
    });
    $("#egTab2Add").click(function () {
        $("#egObjectModalHeaderLabel").html("нэмэх");
        $("#egObjectModalObjectno").val("");
        $("#egObjectModalObjectname").val("");
        $("#egObjectID").val("");
        $("#egObjectModalPolicy")[0].selectedIndex = 0;
    });
    $("#egTab3Add").click(function () {
        $("#egWorkModalHeaderLabel").html("нэмэх");
        $("#egWorkModalTeam")[0].selectedIndex = 0;
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/GetPolicyListForDDL",
            data: '{yr:"' + $("#egTab3SelectYear option:selected").val() + '", end_yr:"' + $("#egTab3SelectYear option:selected").val() + '",type:"3"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else { $("#egWorkModalPolicy").html("<option value=\"\">- Бодлого сонго -</option>" + arrMsg[1]); }
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
        //$("#egWorkModalPolicy")[0].selectedIndex = 0;
        $("#egWorkModalObject").html("");
        $('#egWorkModalObject').prop('disabled', true);
        $("#egWorkModalWorkNo").val("");
        $("#egWorkModalWorkName").val("");
        $("#egWorkModalCriteria").val("");
        $("#egWorkModalResult").val("");
        $("#egWorkModalStock").val("");
        dataBindWorkModalYamlist("none");
        dataBindWorkModalGazarlist("none");
        dataBindWorkModalNDSList("none");
        dataBindWorkModalGAPList("none");
    });
    function egTab4Add(id) {
        $("#egImplModalHeaderLabel").html("нэмэх");
        $("#egImplModalResulted").val("");
        CKEDITOR.instances.egImplModalImpl.setData("");
        $("#egImplModalCharLength").text('0');
        $("#egImplID").text($("#egTab4DatatableRowID-" + id + " td:eq(1)").html());
        $("#egImplModalWork").text("Арга хэмжээ: " + $("#egTab4DatatableRowID-" + id + " td:eq(2)").html());

        $('#egImplModalCurrentYr').text($('#egTab4SelectYear option:selected').val());
        $('#egImplModalCurrentHalfYr').text($('#egTab4SelectYearHalf option:selected').text());
        $('#egImplModalCurrentHalfYr_Hide').text($('#egTab4SelectYearHalf option:selected').val());
        if ($('#egTab4SelectYearHalf option:selected').val() > 1) $('#egImplDownload').css('display', 'block');
        else $('#egImplDownload').css('display', 'none');
    }

    function showEditPolicyModal(id) {
        $("#egPolicyModalPolicyno").val($("#egTab1DatatableRowID-" + id + " td:eq(2)").html());
        $("#egPolicyModalPolicyname").val($("#egTab1DatatableRowID-" + id + " td:eq(3)").html());
        $("#egPolicyID").text($("#egTab1DatatableRowID-" + id + " td:eq(0)").html());
        $("#egPolicyModalHeaderLabel").html("засах");
    }
    function showEditObjectModal(id) {
        $("#egObjectModalPolicy").val($("#egTab2DatatableRowID-" + id + " td:eq(2)").html());
        $("#egObjectModalObjectno").val($("#egTab2DatatableRowID-" + id + " td:eq(5)").html());
        $("#egObjectModalObjectname").val($("#egTab2DatatableRowID-" + id + " td:eq(6)").html());
        $("#egObjectID").text($("#egTab2DatatableRowID-" + id + " td:eq(1)").html());
        $("#egObjectModalHeaderLabel").html("засах");
    }
    function showEditWorkModal(id) {
        $("#egWorkID").text($("#egTab3DatatableRowID-" + id + " td:eq(0)").html());
        $("#egWorkModalHeaderLabel").html("засах");
        $("#egWorkModalTeam").val($("#egTab3DatatableRowID-" + id + " td:eq(1)").html());
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/GetPolicyListForDDL",
            data: '{yr:"' + $("#egTab3SelectYear option:selected").val() + '", end_yr:"' + $("#egTab3SelectYear option:selected").val() + '",type:"3"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    $("#egWorkModalPolicy").html("<option value=\"\">- Бодлого сонго -</option>" + arrMsg[1]);
                    $("#egWorkModalPolicy").val($("#egTab3DatatableRowID-" + id + " td:eq(2)").html());
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
            data: '{id:"' + $("#egTab3DatatableRowID-" + id + " td:eq(2)").html() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    $('#egWorkModalObject').prop('disabled', false);
                    $("#egWorkModalObject").html("<option value=\"0\">- Зорилт сонго -</option>" + arrMsg[1]);
                    $("#egWorkModalObject").val($("#egTab3DatatableRowID-" + id + " td:eq(3)").html());
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
        //dataBindWorkModalObjectDDL($("#egTab3DatatableRowID-" + id + " td:eq(3)").html());
        //$("#egWorkModalObject").val($("#egTab3DatatableRowID-" + id + " td:eq(3)").html());
        $("#egWorkModalWorkNo").val($("#egTab3DatatableRowID-" + id + " td:eq(4)").html());
        $("#egWorkModalWorkName").val($("#egTab3DatatableRowID-" + id + " td:eq(5)").html());
        $("#egWorkModalCriteria").val($("#egTab3DatatableRowID-" + id + " td:eq(7)").html());
        $("#egWorkModalResult").val($("#egTab3DatatableRowID-" + id + " td:eq(8)").html());
        $("#egWorkModalStock").val($("#egTab3DatatableRowID-" + id + " td:eq(10)").html());
        dataBindWorkModalYamlist($("#egTab3DatatableRowID-" + id + " td:eq(14)").html());
        dataBindWorkModalGazarlist($("#egTab3DatatableRowID-" + id + " td:eq(9)").html());
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
                    dataBindWorkModalNDSList(arrMsg[1]);
                    dataBindWorkModalGAPList(arrMsg[2]);
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

        $("#egImplID").text($("#egTab4DatatableRowID-" + id + " td:eq(1)").html());
        $("#egImplModalHeaderLabel").html("засах");
        $("#egImplModalResulted").val($("#egTab4DatatableRowID-" + id + " td:eq(5)").html());
        $("#egImplModalWork").text("Арга хэмжээ: " + $("#egTab4DatatableRowID-" + id + " td:eq(2)").html());

        $('#egImplModalCurrentYr').text($('#egTab4SelectYear option:selected').val());
        $('#egImplModalCurrentHalfYr').text($('#egTab4SelectYearHalf option:selected').text());
        $('#egImplModalCurrentHalfYr_Hide').text($('#egTab4SelectYearHalf option:selected').val());

        if ($('#egTab4SelectYearHalf option:selected').val() > 1) $('#egImplDownload').css('display', 'block');
        else $('#egImplDownload').css('display', 'none');
        var myimpl = "";
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteScalar",
            data: '{qry:"SELECT IMPL FROM TBL_WORK_IMPLEVAL WHERE WORK_ID=' + id + ' AND YR=' + $('#egTab4SelectYear option:selected').val() + ' AND YR_H=' + $('#egTab4SelectYearHalf option:selected').val() + '"}',
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
                        data: '{qry:"SELECT IMPL1 FROM TBL_WORK_IMPLEVAL WHERE WORK_ID=' + id + ' AND YR=' + $('#egTab4SelectYear option:selected').val() + ' AND YR_H=' + $('#egTab4SelectYearHalf option:selected').val() + '"}',
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
                                    data: '{qry:"SELECT IMPL2 FROM TBL_WORK_IMPLEVAL WHERE WORK_ID=' + id + ' AND YR=' + $('#egTab4SelectYear option:selected').val() + ' AND YR_H=' + $('#egTab4SelectYearHalf option:selected').val() + '"}',
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
                                                data: '{qry:"SELECT IMPL3 FROM TBL_WORK_IMPLEVAL WHERE WORK_ID=' + id + ' AND YR=' + $('#egTab4SelectYear option:selected').val() + ' AND YR_H=' + $('#egTab4SelectYearHalf option:selected').val() + '"}',
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
                                                            data: '{qry:"SELECT IMPL4 FROM TBL_WORK_IMPLEVAL WHERE WORK_ID=' + id + ' AND YR=' + $('#egTab4SelectYear option:selected').val() + ' AND YR_H=' + $('#egTab4SelectYearHalf option:selected').val() + '"}',
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
                                                                        data: '{qry:"SELECT IMPL5 FROM TBL_WORK_IMPLEVAL WHERE WORK_ID=' + id + ' AND YR=' + $('#egTab4SelectYear option:selected').val() + ' AND YR_H=' + $('#egTab4SelectYearHalf option:selected').val() + '"}',
                                                                        contentType: "application/json; charset=utf-8",
                                                                        dataType: "json",
                                                                        success: function (msg) {
                                                                            var varMsg = msg.d;
                                                                            var arrMsg = varMsg.split("~");
                                                                            if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                                                                            else {
                                                                                myimpl += arrMsg[1];
                                                                                CKEDITOR.instances.egImplModalImpl.setData(replaceDatabaseToDisplay(myimpl));
                                                                                $("#egImplModalCharLength").text(myimpl.length);
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
                        alert("Бодлого: \"" + $("#egTab1DatatableRowID-" + id + " td:eq(2)").html() + ". " + $("#egTab1DatatableRowID-" + id + " td:eq(3)").html() + "\" -д хамааралтай зорилт орсон тул устгах боломжгүй байна!");
                    }
                    else {
                        $.SmartMessageBox({
                            title: "Анхааруулга!",
                            content: "\"" + $("#egTab1DatatableRowID-" + id + " td:eq(2)").html() + ". " + $("#egTab1DatatableRowID-" + id + " td:eq(3)").html() + "\" бодлогыг устгах уу?",
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
                                            $('#egPolicyModal').modal('hide');
                                            $.smallBox({
                                                title: "Сонгосон ҮЧ-ийн бодлого",
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
                        alert("Зорилт: \"" + $("#egTab2DatatableRowID-" + id + " td:eq(3)").html() + ". " + $("#egTab2DatatableRowID-" + id + " td:eq(5)").html() + ". " + $("#egTab2DatatableRowID-" + id + " td:eq(6)").html() + "\" -д хамааралтай арга хэмжээ орсон тул устгах боломжгүй байна!");
                    }
                    else {
                        $.SmartMessageBox({
                            title: "Анхааруулга!",
                            content: "\"" + $("#egTab2DatatableRowID-" + id + " td:eq(3)").html() + ". " + $("#egTab2DatatableRowID-" + id + " td:eq(5)").html() + ". " + $("#egTab2DatatableRowID-" + id + " td:eq(6)").html() + "\"зорилтыг устгах уу?",
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
                                            $('#egObjectModal').modal('hide');
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
                        alert("Арга хэмжээ: \"" + $("#egTab3DatatableRowID-" + id + " td:eq(6)").html() + "\" -д хамааралтай жилийн төлөвлөгөө, биелэлт, үнэлгээ, бусад хөтөлбөртэй холбогдож орсон тул устгах боломжгүй байна!");
                    }
                    else {
                        $.SmartMessageBox({
                            title: "Анхааруулга!",
                            content: "\"" + $("#egTab3DatatableRowID-" + id + " td:eq(6)").html() + "\" арга хэмжээг устгах уу?",
                            buttons: '[Үгүй][Тийм]'
                        }, function (ButtonPressed) {
                            if (ButtonPressed === "Тийм") {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"DELETE FROM TBL_WORK WHERE ID=' + id + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") window.location = "../#pg/error500.aspx";
                                        else {
                                            dataBindWorkTable();
                                            $('#egWorkModal').modal('hide');
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

    loadScript("js/plugin/bootstrap-wizard/jquery.bootstrap.wizard.min.js", runBootstrapWizard);
    function runBootstrapWizard() {
        var $validator = $("#egPolicyModalForm").validate({
            rules: {
                egPolicyModalPolicyno: {
                    required: true,
                    maxlength: 10
                },
                egPolicyModalPolicyname: {
                    required: true,
                    maxlength: 250
                }
            },
            messages: {
                egPolicyModalPolicyno: {
                    required: "Бодлогын дугаар заавал оруулна уу",
                    maxlength: "Бодлогын дугаар уртдаа 10 тэмдэгт авна"
                },
                egPolicyModalPolicyname: {
                    required: "Бодлогын нэр заавал оруулна уу",
                    maxlength: "Бодлогын нэр уртдаа 250 тэмдэгт авна"
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

        var $validatorWork = $("#egObjectModalForm").validate({
            rules: {
                egObjectModalPolicy: {
                    required: true,
                    min: 1
                },
                egObjectModalObjectno: {
                    required: true,
                    number: true,
                    maxlength: 3
                },
                egObjectModalObjectname: {
                    required: true,
                    maxlength:250
                }
            },
            messages: {
                egObjectModalPolicy: {
                    required: "Бодлого заавал сонгоно уу",
                    min: "Бодлого заавал сонгоно уу"
                },
                egObjectModalObjectno: {
                    required: "Зорилтын дугаар заавал оруулна уу",
                    number: "Зорилтын дугаар зөвхөн тоо орно",
                    maxlength: "Зорилтын дугаар уртдаа 3 тэмдэгт авна"
                },
                egObjectModalObjectname: {
                    required: "Зорилтын нэр заавал оруулна уу",
                    maxlength: "Зорилтын нэр уртдаа 250 тэмдэгт авна"
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

        var $validatorObject = $("#egWorkModalForm").validate({
            rules: {
                egWorkModalTeam: {
                    required: true
                },
                egWorkModalPolicy: {
                    required: true
                },
                egWorkModalObject: {
                    required: true,
                    min: 1
                },
                egWorkModalWorkNo: {
                    required: true,
                    number: true,
                    maxlength: 3
                },
                egWorkModalWorkName: {
                    required: true,
                    maxlength: 1000
                },
                egWorkModalResult: {
                    required: true,
                    maxlength: 1000
                },
                egWorkModalGazarlist: {
                    required: true
                },
                egWorkModalYamlist: {
                    required: true
                },
                egWorkModalCriteria: {
                    required: true,
                    maxlength: 1000
                },
                egWorkModalStock: {
                    required: false,
                    maxlength: 1000
                }
            },
            messages: {
                egWorkModalTeam: "СС хийх заавал сонгоно уу",
                egWorkModalPolicy: "Бодлого заавал сонгоно уу",
                egWorkModalObject: {
                    required: "Зорилт заавал сонгоно уу",
                    min: "Зорилт заавал сонгоно уу" 
                },
                egWorkModalWorkNo: {
                    required:"Арга хэмжээний дугаар заавал оруулна уу",
                    number:"Арга хэмжээний дугаар зөвхөн тоо орно",
                    maxlength: "Арга хэмжээний дугаар уртдаа 3 тэмдэгт авна"
                },
                egWorkModalWorkName: {
                    required:"Арга хэмжээ заавал оруулна уу",
                    maxlength: "Арга хэмжээний нэр уртдаа 1000 тэмдэгт авна"
                },
                egWorkModalResult: {
                    required: "Хүрэх түвшин заавал оруулна уу",
                    maxlength: "Хүрэх түвшин уртдаа 1000 тэмдэгт авна"
               },
                egWorkModalGazarlist: "Хэрэгжүүлэх газраа заавал сонгоно уу",
                egWorkModalYamlist: "Хариуцах яам заавал сонгоно уу",
                egWorkModalCriteria: {
                    required: "Шалгуур үзүүлэлт заавал оруулна уу",
                    maxlength: "Шалгуур үзүүлэлт уртдаа 1000 тэмдэгт авна"
                },
                egWorkModalStock: {
                    maxlength: "Хөрөнгийн хэмжээ, эх үүсвэр уртдаа 1000 тэмдэгт авна"
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

        var $egImplModalForm = $("#egImplModalForm").validate({
            rules: {
                egImplModalResulted: {
                    required: true,
                    maxlength: 1000
                }
            },
            messages: {
                egImplModalResulted: {
                    required:"Хүрсэн түвшин заавал оруулна уу",
                    maxlength: "Хүрсэн түвшин уртдаа 1000 тэмдэгт авна"
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
   
    $('#egPolicyModalForm').submit(function (e) {
        if (!$('#egPolicyModalPolicyno').valid() || !$('#egPolicyModalPolicyname').valid()) {
            e.preventDefault();
        }
        else {
            var isUpdate = "";
            if ($("#egPolicyModalHeaderLabel").html() == "засах") isUpdate = " AND ID!=" + $("#egPolicyID").text();
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteScalar",
                data: '{qry:"SELECT COUNT(NO) FROM TBL_POL WHERE POLIMPL_ID=3 AND YR=(SELECT YR FROM TBL_SYSSET WHERE ACTIVE=1) AND END_YR=(SELECT YR FROM TBL_SYSSET WHERE ACTIVE=1) AND NO=\'' + $.trim($('#egPolicyModalPolicyno').val())+'\'' + isUpdate + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    var varMsg = msg.d;
                    var arrMsg = varMsg.split("~");
                    if (arrMsg[0] == "0") { $('#egPolicyModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                    else {
                        if (arrMsg[1] == "0") {
                            if ($("#egPolicyModalHeaderLabel").html() == "нэмэх") {                
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"INSERT INTO TBL_POL VALUES(TBLLASTID(\'TBL_POL\'), 3, \'' + replaceDisplayToDatabase($.trim($('#egPolicyModalPolicyno').val())) + '\', \'' + replaceDisplayToDatabase($.trim($('#egPolicyModalPolicyname').val())) + '\', (SELECT YR FROM TBL_SYSSET WHERE ACTIVE=1), (SELECT YR FROM TBL_SYSSET WHERE ACTIVE=1))"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") { $('#egPolicyModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindPolicyTable();
                                            dataBindPolicyDDLs();
                                            $('#egPolicyModal').modal('hide');
                                            $.smallBox({
                                                title: "ҮЧ-ийн бодлого",
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
                                qry = 'UPDATE TBL_POL SET NO=\'' + replaceDisplayToDatabase($.trim($('#egPolicyModalPolicyno').val())) + '\', NAME=\'' + replaceDisplayToDatabase($.trim($('#egPolicyModalPolicyname').val())) + '\' WHERE ID=' + $("#egPolicyID").text();
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"' + qry + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") { $('#egPolicyModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindPolicyTable();
                                            dataBindPolicyDDLs();
                                            $('#egPolicyModal').modal('hide');
                                            $.smallBox({
                                                title: "Сонгосон ҮЧ-ийн бодлого",
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
                        else alert($("#egPolicyModalCurrentYr").text() + " оны Үндсэн Чиглэлд " + $.trim($('#egPolicyModalPolicyno').val()) + " дугаартай бодлого орсон байна!");
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
    $('#egObjectModalForm').submit(function (e) {
        if (!$('#egObjectModalObjectno').valid() || !$('#egObjectModalObjectname').valid() || !$('#egObjectModalPolicy').valid()) {
            e.preventDefault();
        }
        else {
            var isUpdate = "";
            if ($("#egObjectModalHeaderLabel").html() == "засах") isUpdate = " AND ID!=" + $("#egObjectID").text();
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteScalar",
                data: '{qry:"SELECT COUNT(NO) FROM TBL_OBJ WHERE POL_ID=' + $("#egObjectModalPolicy").val() + ' AND NO=' + $.trim($('#egObjectModalObjectno').val()) + isUpdate + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    var varMsg = msg.d;
                    var arrMsg = varMsg.split("~");
                    if (arrMsg[0] == "0") { $('#egObjectModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                    else {
                        if (arrMsg[1] == "0") {
                            if ($("#egObjectModalHeaderLabel").html() == "нэмэх") {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"INSERT INTO TBL_OBJ VALUES(TBLLASTID(\'TBL_OBJ\'), ' + $("#egObjectModalPolicy").val() + ', ' + $.trim($('#egObjectModalObjectno').val()) + ', \'' + replaceDisplayToDatabase($.trim($('#egObjectModalObjectname').val())) + '\')"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") { $('#egObjectModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindObjectTable();
                                            $('#egObjectModal').modal('hide');
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
                                qry = 'UPDATE TBL_OBJ SET POL_ID=' + $('#egObjectModalPolicy').val() + ', NO=' + $.trim($('#egObjectModalObjectno').val()) + ', NAME=\'' + replaceDisplayToDatabase($.trim($('#egObjectModalObjectname').val())) + '\' WHERE ID=' + $("#egObjectID").text();
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"' + qry + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") { $('#egObjectModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindObjectTable();
                                            $('#egObjectModal').modal('hide');
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
                        else alert($("#egObjectModalCurrentYr").text() + " оны Үндсэн Чиглэлд \"" + $("#egObjectModalPolicy option:selected").text() + "\" бодлогын хүрээнд " + $.trim($('#egObjectModalObjectno').val()) + " дугаартай зорилт орсон байна!");
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
    $('#egWorkModalForm').submit(function (e) {
        if (!$('#egWorkModalTeam').valid() || !$('#egWorkModalPolicy').valid() || !$('#egWorkModalObject').valid() || !$('#egWorkModalWorkNo').valid() || !$('#egWorkModalWorkName').valid() || !$('#egWorkModalResult').valid() || !$('#egWorkModalGazarlist').valid() || !$('#egWorkModalYamlist').valid() || !$('#egWorkModalCriteria').valid() || !$('#egWorkModalStock').valid()) {
            e.preventDefault();
        }
        else {
            var isUpdate = "";
            if ($("#egWorkModalHeaderLabel").html() == "засах") isUpdate = " AND ID!=" + $("#egWorkID").text();
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteScalar",
                data: '{qry:"SELECT COUNT(WORK_NO) FROM TBL_WORK WHERE OBJ_ID=' + $("#egWorkModalObject").val() + ' AND WORK_NO=' + $.trim($("#egWorkModalWorkNo").val()) + isUpdate + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    var varMsg = msg.d;
                    var arrMsg = varMsg.split("~");
                    if (arrMsg[0] == "0") { $('#egWorkModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                    else {
                        if (arrMsg[1] == "0") {
                            var brlist = "none", egndsgaplist = "none", yamlist = "none";
                            if ($('#egWorkModalYamlist').val() != null) yamlist = $('#egWorkModalYamlist').val();
                            if ($('#egWorkModalGazarlist').val() != null) brlist = $('#egWorkModalGazarlist').val();
                            if ($('#egWorkModalNDSList').val() != null) egndsgaplist = $('#egWorkModalNDSList').val();
                            if ($('#egWorkModalGAPList').val() != null) {
                                if (egndsgaplist != "none") egndsgaplist += "," + $('#egWorkModalGAPList').val();
                                else egndsgaplist = $('#egWorkModalGAPList').val();
                            }
                            if ($("#egWorkModalHeaderLabel").html() == "нэмэх") {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/Work_Insert",
                                    data: '{P_POLIMPLID:"3",P_OBJID:"' + $("#egWorkModalObject").val() + '",P_WORKNO:"' + $.trim($("#egWorkModalWorkNo").val()) + '",P_WORKNAME:"' + replaceDisplayToDatabase($.trim($('#egWorkModalWorkName').val())) + '",P_RESULT:"' + replaceDisplayToDatabase($.trim($('#egWorkModalResult').val())) + '",P_TEAM:"' + $('#egWorkModalTeam').val() + '",P_STRTYR:"' + $('#egWorkModalCurrentYr').html() + '",P_ENDYR:"' + $('#egWorkModalCurrentYr').html() + '",P_STAFFID:"' + $.trim($('#indexUserId').html()) + '",P_BRLIST:"' + brlist + '",P_EGNDSGAPLIST:"' + egndsgaplist + '", P_CRITERIA:"' + replaceDisplayToDatabase($.trim($('#egWorkModalCriteria').val())) + '", P_YAMLIST:"' + yamlist + '", P_STOCK:"' + replaceDisplayToDatabase($.trim($('#egWorkModalStock').val())) + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") { $('#egWorkModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindWorkTable();
                                            $('#egWorkModal').modal('hide');
                                            $.smallBox({
                                                title: "ҮЧ-ийн арга хэмжээ",
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
                                    data: '{P_WORKID:"' + $("#egWorkID").text() + '",P_POLIMPLID:"3",P_OBJID:"' + $("#egWorkModalObject").val() + '",P_WORKNO:"' + $.trim($("#egWorkModalWorkNo").val()) + '",P_WORKNAME:"' + replaceDisplayToDatabase($.trim($('#egWorkModalWorkName').val())) + '",P_RESULT:"' + replaceDisplayToDatabase($.trim($('#egWorkModalResult').val())) + '",P_TEAM:"' + $('#egWorkModalTeam').val() + '",P_STRTYR:"' + $('#egWorkModalCurrentYr').html() + '",P_ENDYR:"' + $('#egWorkModalCurrentYr').html() + '",P_STAFFID:"' + $.trim($('#indexUserId').html()) + '",P_BRLIST:"' + brlist + '",P_EGNDSGAPLIST:"' + egndsgaplist + '", P_CRITERIA:"' + replaceDisplayToDatabase($.trim($('#egWorkModalCriteria').val())) + '", P_YAMLIST:"' + yamlist + '", P_STOCK:"' + replaceDisplayToDatabase($.trim($('#egWorkModalStock').val())) + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") { $('#egWorkModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindWorkTable();
                                            $('#egWorkModal').modal('hide');
                                            $.smallBox({
                                                title: "Сонгосон ҮЧ-ийн арга хэмжээ",
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
                        else alert($("#egWorkModalCurrentYr").text() + " оны Үндсэн Чиглэлд \"" + $("#egWorkModalObject option:selected").text() + "\" зорилтын хүрээнд " + $.trim($("#egWorkModalWorkNo").val()) + " дугаартай арга хэмжээ орсон байна!");
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
    $('#egImplModalForm').submit(function (e) {
        if (!$('#egImplModalResulted').valid()) {
            e.preventDefault();
        }
        else
        {
            if ($.trim(CKEDITOR.instances.egImplModalImpl.getData()) == "") {
                alert("ҮЧ-ийн арга хэмжээний биелэлт заавал оруулна уу!");
            }
            else {
                if (replaceDisplayToDatabase($.trim(CKEDITOR.instances.egImplModalImpl.getData())).length > 12000) {
                    $("#egImplModalCharLength").text(replaceDisplayToDatabase($.trim(CKEDITOR.instances.egImplModalImpl.getData())).length);
                    alert("ҮЧ-ийн арга хэмжээний биелэлт уртдаа 12000 тэмдэгт авна!");
                }
                else {
                    var impl = "", impl1 = "", impl2 = "", impl3 = "", impl4 = "", impl5 = "";
                    var qry = "", brlist = "none", egndsgaplist = "none";
                    impl = replaceDisplayToDatabase($.trim(CKEDITOR.instances.egImplModalImpl.getData())).substr(0, 2000);
                    impl1 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.egImplModalImpl.getData())).substr(2000, 2000);
                    impl2 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.egImplModalImpl.getData())).substr(4000, 2000);
                    impl3 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.egImplModalImpl.getData())).substr(6000, 2000);
                    impl4 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.egImplModalImpl.getData())).substr(8000, 2000);
                    impl5 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.egImplModalImpl.getData())).substr(10000, 2000);
                    if (impl.length == 0) impl = "none";
                    if (impl1.length == 0) impl1 = "none";
                    if (impl2.length == 0) impl2 = "none";
                    if (impl3.length == 0) impl3 = "none";
                    if (impl4.length == 0) impl4 = "none";
                    if (impl5.length == 0) impl5 = "none";
                    if ($("#egImplModalHeaderLabel").html() == "нэмэх") {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "ws.aspx/WSOracleExecuteNonQuery",
                            data: '{qry:"INSERT INTO TBL_WORK_IMPLEVAL (ID, YR, YR_H, WORK_ID, IMPL, IMPL1, IMPL2, IMPL3, IMPL4, IMPL5, RESULT, IMPL_MODIFY_STAFFID, IMPL_MODIFY_DATE) VALUES (TBLLASTID(\'TBL_WORK_IMPLEVAL\'), ' + $('#egTab4SelectYear option:selected').val() + ', ' + $('#egTab4SelectYearHalf option:selected').val() + ', ' + $("#egImplID").text() + ', REPLACE(\'' + impl + '\',\'none\',null), REPLACE(\'' + impl1 + '\',\'none\',null), REPLACE(\'' + impl2 + '\',\'none\',null), REPLACE(\'' + impl3 + '\',\'none\',null), REPLACE(\'' + impl4 + '\',\'none\',null), REPLACE(\'' + impl5 + '\',\'none\',null), \'' + $.trim($("#egImplModalResulted").val()) + '\', ' + $.trim($('#indexUserId').html()) + ', to_char(sysdate,\'yyyy-MM-dd\'))"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                if (msg.d == "0") { $('#egImplModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                else {
                                    $('#egTab4Datatable > tbody  > tr').each(function () {
                                        if ($('td:eq(1)', this).html() == $('#egImplID').text()) {
                                            $('td:eq(6)', this).html($.trim(CKEDITOR.instances.egImplModalImpl.getData()));
                                            $('td:eq(7)', this).find('img').attr("src", "../img/green-circle.png");
                                            $('td:eq(7)', this).find('img').attr("alt", "Биелэлт засах");
                                            $('td:eq(7)', this).find('img').attr("onclick", "showEditImplModal(" + $("#egImplID").text() + ")");
                                            $('td:eq(8)', this).find('select').prop("disabled", false);
                                            $('td:eq(9)', this).find('div').find('textarea').prop("disabled", false);
                                            return false;
                                        }
                                    });
                                    //dataBindImplTable('all');
                                    //$("#egTab4Datatable tr td:contains('" + $("#egImplID").text() + "')").parent().find("td:eq(7)").find('img').attr("src", "../img/green-circle.png");
                                    //$("#egTab4Datatable tr td:contains('" + $("#egImplID").text() + "')").parent().find("td:eq(7)").find('img').attr("alt", "Биелэлт засах");
                                    //$("#egTab4Datatable tr td:contains('" + $("#egImplID").text() + "')").parent().find("td:eq(7)").find('img').attr("onclick", "showEditImplModal(" + $("#egImplID").text() + ")");
                                    //$("#egTab4Datatable tr td:contains('" + $("#egImplID").text() + "')").parent().find("td:eq(6)").html(replaceDatabaseToDisplay(impl + impl1 + impl2 + impl3 + impl4 + impl5));
                                    //$("#egTab4Datatable tr td:contains('" + $("#egImplID").text() + "')").parent().find("td:eq(8)").find('select').prop("disabled", false);
                                    //$("#egTab4Datatable tr td:contains('" + $("#egImplID").text() + "')").parent().find("td:eq(8)").find('div').find('textarea').prop("disabled", false);
                                    $('#egImplModal').modal('hide');
                                    $.smallBox({
                                        title: "ҮЧ-ийн арга хэмжээний биелэлт",
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
                            data: '{qry:"UPDATE TBL_WORK_IMPLEVAL SET IMPL=REPLACE(\'' + impl + '\',\'none\',null), IMPL1=REPLACE(\'' + impl1 + '\',\'none\',null), IMPL2=REPLACE(\'' + impl2 + '\',\'none\',null), IMPL3=REPLACE(\'' + impl3 + '\',\'none\',null), IMPL4=REPLACE(\'' + impl4 + '\',\'none\',null), IMPL5=REPLACE(\'' + impl5 + '\',\'none\',null), RESULT=\'' + $.trim($("#egImplModalResulted").val()) + '\', IMPL_MODIFY_STAFFID=' + $.trim($('#indexUserId').html()) + ', IMPL_MODIFY_DATE=to_char(sysdate,\'yyyy-MM-dd\') WHERE WORK_ID=' + $("#egImplID").text() + ' AND YR=' + $('#egTab4SelectYear option:selected').val() + ' AND YR_H=' + $('#egTab4SelectYearHalf option:selected').val() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                if (msg.d == "0") { $('#egImplModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                else {
                                    $('#egTab4Datatable > tbody  > tr').each(function () {
                                        if ($('td:eq(1)', this).html() == $('#egImplID').text()) {
                                            $('td:eq(6)', this).html($.trim(CKEDITOR.instances.egImplModalImpl.getData()));
                                            $('td:eq(7)', this).find('img').attr("src", "../img/green-circle.png");
                                            $('td:eq(7)', this).find('img').attr("alt", "Биелэлт засах");
                                            $('td:eq(7)', this).find('img').attr("onclick", "showEditImplModal(" + $("#egImplID").text() + ")");
                                            $('td:eq(8)', this).find('select').prop("disabled", false);
                                            $('td:eq(9)', this).find('div').find('textarea').prop("disabled", false);
                                            return false;
                                        }
                                    });
                                    //dataBindImplTable('all');
                                    //$("#egTab4Datatable tr td:contains('" + $("#egImplID").text() + "')").parent().find("td:eq(7)").find('img').attr("src", "../img/green-circle.png");
                                    //$("#egTab4Datatable tr td:contains('" + $("#egImplID").text() + "')").parent().find("td:eq(7)").find('img').attr("alt", "Биелэлт засах");
                                    //$("#egTab4Datatable tr td:contains('" + $("#egImplID").text() + "')").parent().find("td:eq(7)").find('img').attr("onclick", "showEditImplModal(" + $("#egImplID").text() + ")");
                                    //$("#egTab4Datatable tr td:contains('" + $("#egImplID").text() + "')").parent().find("td:eq(6)").html(replaceDatabaseToDisplay(impl + impl1 + impl2 + impl3 + impl4 + impl5));
                                    $('#egImplModal').modal('hide');
                                    $.smallBox({
                                        title: "Сонгосон ҮЧ-ийн арга хэмжээний биелэлт",
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
        }
    });
    $('#egImplDelete').click(function () {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Та биелэлт устгахдаа итгэлтэй байна уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/WSOracleExecuteNonQuery",
                    data: '{qry:"DELETE FROM TBL_WORK_IMPLEVAL WHERE WORK_ID=' + $("#egImplID").text() + ' AND YR=' + $('#egTab4SelectYear option:selected').val() + ' AND YR_H=' + $('#egTab4SelectYearHalf option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        if (msg.d == "0") window.location = "../#pg/error500.aspx";
                        else {
                            CKEDITOR.instances.egImplModalImpl.setData("");
                            $("#egImplModalCharLength").text("0");
                            $("#egTab4Datatable tr td:contains('" + $("#egImplID").text() + "')").parent().find("td:eq(7)").find('img').attr("src", "../img/red-circle.png");
                            $("#egTab4Datatable tr td:contains('" + $("#egImplID").text() + "')").parent().find("td:eq(7)").find('img').attr("alt", "Биелэлт оруулах");
                            $("#egTab4Datatable tr td:contains('" + $("#egImplID").text() + "')").parent().find("td:eq(7)").find('img').attr("onclick", "egTab4Add(" + $("#egImplID").text() + ")");
                            $("#egTab4Datatable tr td:contains('" + $("#egImplID").text() + "')").parent().find("td:eq(6)").html('');
                            $("#egTab4Datatable tr td:contains('" + $("#egImplID").text() + "')").parent().find("td:eq(8)").find('select').prop("disabled", false);
                            $("#egTab4Datatable tr td:contains('" + $("#egImplID").text() + "')").parent().find("td:eq(8)").find('div').find('textarea').prop("disabled", false);
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
    $('#egImplDownload').click(function () {
        var impl = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteScalar",
            data: '{qry:"SELECT IMPL FROM TBL_WORK_IMPLEVAL WHERE YR=' + $('#egTab4SelectYear option:selected').val() + ' AND YR_H=' + (parseInt($('#egTab4SelectYearHalf option:selected').val()) - 1) + ' AND WORK_ID=' + $('#egImplID').text() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    impl += arrMsg[1];
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "ws.aspx/WSOracleExecuteScalar",
                        data: '{qry:"SELECT IMPL1 FROM TBL_WORK_IMPLEVAL WHERE YR=' + $('#egTab4SelectYear option:selected').val() + ' AND YR_H=' + (parseInt($('#egTab4SelectYearHalf option:selected').val()) - 1) + ' AND WORK_ID=' + $('#egImplID').text() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (msg) {
                            var varMsg = msg.d;
                            var arrMsg = varMsg.split("~");
                            if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                            else {
                                impl += arrMsg[1];
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteScalar",
                                    data: '{qry:"SELECT IMPL2 FROM TBL_WORK_IMPLEVAL WHERE YR=' + $('#egImplModalCurrentYr').text() + ' AND YR_H=' + (parseInt($('#egTab4SelectYearHalf option:selected').val()) - 1) + ' AND WORK_ID=' + $('#egImplID').text() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        var varMsg = msg.d;
                                        var arrMsg = varMsg.split("~");
                                        if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                                        else {
                                            impl += arrMsg[1];
                                            globalAjaxVar = $.ajax({
                                                type: "POST",
                                                url: "ws.aspx/WSOracleExecuteScalar",
                                                data: '{qry:"SELECT IMPL3 FROM TBL_WORK_IMPLEVAL WHERE YR=' + $('#egImplModalCurrentYr').text() + ' AND YR_H=' + (parseInt($('#egTab4SelectYearHalf option:selected').val()) - 1) + ' AND WORK_ID=' + $('#egImplID').text() + '"}',
                                                contentType: "application/json; charset=utf-8",
                                                dataType: "json",
                                                success: function (msg) {
                                                    var varMsg = msg.d;
                                                    var arrMsg = varMsg.split("~");
                                                    if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                                                    else {
                                                        impl += arrMsg[1];
                                                        globalAjaxVar = $.ajax({
                                                            type: "POST",
                                                            url: "ws.aspx/WSOracleExecuteScalar",
                                                            data: '{qry:"SELECT IMPL4 FROM TBL_WORK_IMPLEVAL WHERE YR=' + $('#egImplModalCurrentYr').text() + ' AND YR_H=' + (parseInt($('#egTab4SelectYearHalf option:selected').val()) - 1) + ' AND WORK_ID=' + $('#egImplID').text() + '"}',
                                                            contentType: "application/json; charset=utf-8",
                                                            dataType: "json",
                                                            success: function (msg) {
                                                                var varMsg = msg.d;
                                                                var arrMsg = varMsg.split("~");
                                                                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                                                                else {
                                                                    impl += arrMsg[1];
                                                                    globalAjaxVar = $.ajax({
                                                                        type: "POST",
                                                                        url: "ws.aspx/WSOracleExecuteScalar",
                                                                        data: '{qry:"SELECT IMPL5 FROM TBL_WORK_IMPLEVAL WHERE YR=' + $('#egImplModalCurrentYr').text() + ' AND YR_H=' + (parseInt($('#egTab4SelectYearHalf option:selected').val()) - 1) + ' AND WORK_ID=' + $('#egImplID').text() + '"}',
                                                                        contentType: "application/json; charset=utf-8",
                                                                        dataType: "json",
                                                                        success: function (msg) {
                                                                            var varMsg = msg.d;
                                                                            var arrMsg = varMsg.split("~");
                                                                            if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                                                                            else {
                                                                                impl += arrMsg[1];
                                                                                CKEDITOR.instances.egImplModalImpl.setData(replaceDatabaseToDisplay(impl));
                                                                                $('#egImplModalCharLength').text(impl.length);
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
    });

    
</script>