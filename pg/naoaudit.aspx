<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="naoaudit.aspx.cs" Inherits="LMWebApp.pg.naoaudit" %>
<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
    <h1 class="page-title txt-color-blueDark">
    <i class="fa-fw fa fa-home"></i>
    <span id="pageUrlModuleName" runat="server">> Хөндлөнгийн аудитын тайлан</span>
    </h1>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
            <ul class="nav nav-tabs bordered">
                <li id="naoauditTab5Li" runat="server">
                    <a data-toggle="tab" href="#naoauditTab5">
                        <i class="fa fa-fw fa-lg fa-table"></i>
                        Хөндлөнгийн аудитын тайлан
                    </a>
                </li>
                <li id="naoauditTab6Li" runat="server" class="pull-right">
                    <a data-toggle="tab" href="#naoauditTab6">
                        <i class="fa fa-fw fa-lg fa-wrench"></i>
                        Зөвлөмжийн төрөл
                    </a>
                </li>
                <li id="naoauditTab1Li" runat="server" class="active">
                    <a data-toggle="tab" href="#naoauditTab1">
                        <i class="fa fa-fw fa-lg fa-table"></i>
                        Зөвлөмж
                    </a>
                </li>
                <li id="naoauditTab2Li" runat="server">
                    <a data-toggle="tab" href="#naoauditTab2">
                        <i class="fa fa-fw fa-lg fa-table"></i>
                        Арга хэмжээ
                    </a>
                </li>
                <li id="naoauditTab3Li" runat="server">
                    <a data-toggle="tab" href="#naoauditTab3">
                        <i class="glyphicon glyphicon-stats"></i>
                        Биелэлт | Үнэлгээ
                    </a>
                </li>
                <li id="naoauditTab4Li" runat="server">
                    <a data-toggle="tab" href="#naoauditTab4">
                        <i class="fa fa-fw fa-lg fa-file-text "></i>
                        Тайлан
                    </a>
                </li>
            </ul>
            <div id="naoauditTabContent" class="tab-content">
                <div id="naoauditTab1" runat="server" class="tab-pane active">
                    <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> <i class="fa fa-table"></i></span>
                            <h2><span id="naoauditCurrentYear1" runat="server">0000</span> оны зөвлөмж </h2>
                            <div class="widget-toolbar">
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="naoauditTab1SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div> 
                            </div>
                        </header>
                        <div>
                            <div id="divnaoauditTab1Add" runat="server" class="Colvis TableTools"  style="right:125px; top:5px; z-index:5;">
                                <button id="naoauditTab1Add" runat="server" class="ColVis_Button TableTools_Button ColVis_MasterButton btn btn btn-primary btn-sm" data-target="#naoauditTab1Modal" data-toggle="modal"><i class="fa fa-plus"></i> Нэмэх</button>
                            </div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div id="loaderTab1" class="search-background">
                                <label>
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                                </label>
                            </div>
                            <div id="naoauditTab1DatatableDiv" class="widget-body no-padding">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div id="naoauditTab2" runat="server" class="tab-pane">
                    <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                            <h2><span id="naoauditCurrentYear2" runat="server">0000</span> оны Хэрэгжүүлэх арга хэмжээ</h2>
                            <div class="widget-toolbar">
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="naoauditTab2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div> 
                            </div>
                        </header>
                        <div>
                            <div id="divnaoauditTab2Add" runat="server" class="Colvis TableTools"  style="right:270px; top:5px; z-index:5;">
                                <button id="naoauditTab2Add" runat="server" class="ColVis_Button TableTools_Button ColVis_MasterButton btn btn btn-primary btn-sm" data-target="#naoauditTab2Modal" data-toggle="modal"><i class="fa fa-plus"></i> Нэмэх</button>
                            </div>
                            <div class="Colvis TableTools" style="right: 125px;top: 5px;z-index: 5;width: 85px;"><select id="naoauditTab2SelectGazar" runat="server" name="naoauditTab2SelectGazar" class="form-control" style="padding:0 0; height:32px;"></select></div>
                            <div class="Colvis TableTools" style="right:220px; top:5px; z-index:5; margin-top:7px;"><label>Газар: </label></div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div id="loaderTab2" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="naoauditTab2DatatableDiv" class="widget-body no-padding">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div id="naoauditTab3" runat="server" class="tab-pane">
                    <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                            <h2><span id="naoauditCurrentYear3" runat="server">0000</span> оны <span id="naoauditCurrentQuarter1" runat="server">00</span> улиралын ҮАГЗ-ын хурлаас гарсан шийдвэрийн биелэлт</h2>
                            <div class="widget-toolbar">
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="naoauditTab3SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="naoauditTab3SelectQuarter" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">улирал 1</option><option value="2">улирал 2</option><option value="3">улирал 3</option><option value="4">улирал 4</option></select>
                                </div> 
                            </div>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right: 125px;top: 5px;z-index: 5;width: 85px;"><select id="naoauditTab3SelectGazar" runat="server" name="naoauditTab3SelectGazar" class="form-control" style="padding:0 0; height:32px;"></select></div>
                            <div class="Colvis TableTools" style="right:220px; top:5px; z-index:5; margin-top:7px;"><label>Газар: </label></div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div class="Colvis TableTools" style="left:240px; top:0px; z-index:5; margin-top:2px; width: 170px;">
                                <img id="naoauditTab3ClickImpl1" src="../img/green-circle.png" width="15" style="cursor:pointer;" />Биелэлт тайлагнасан<br />
                                <img id="naoauditTab3ClickImpl0" src="../img/red-circle.png" width="15" style="cursor:pointer;" />Биелэлт тайлагнаагүй
                            </div>
                            <div id="loaderTab3" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="naoauditTab3DatatableDiv" class="widget-body no-padding">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div id="naoauditTab4" runat="server" class="tab-pane">
                    <ul class="nav nav-tabs bordered">
                        <li class="active">
                            <a data-toggle="tab" href="#naoauditTab4t1">Тайлан 1</a>
                        </li>
                        <li>
                            <a data-toggle="tab" href="#naoauditTab4t2">Хэрэгжилтийн дэлгэрэнгүй тайлан</a>
                        </li>
                    </ul>
                    <div id="naoauditTab4Content" runat="server" class="tab-content">
                        <div id="naoauditTab4t1" class="tab-pane active">
                            <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                <div style="width:70%; float:left;">
                                    <div style="width:125px; float:left; margin-right:10px;"><select id="naoauditTab4t1SelectQuarter" name="naoauditTab4t1SelectQuarter" runat="server" class="form-control" style="padding:1px"><option value="1">улирал 1</option><option value="2">улирал 2</option><option value="3">улирал 3</option><option value="4">улирал 4</option></select></div>
                                    <div style="width:60px; float:left; margin-right:10px;"><select id="naoauditTab4t1SelectYear" name="naoauditTab4t1SelectYear" runat="server" class="form-control" style="padding:1px"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option></select></div>
                                </div>
                                <div style="text-align:right; width:30%; float:left;">
                                    <img id="naoauditTab4t1ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" title="PDF руу татах" onclick="exportPdf('#divnaoauditTab4t1')" />
                                    <img id="naoauditTab4t1ExportWord" src="../img/word-icon.png" style="cursor:pointer;" title="Word руу татах" onclick="exportWord('#divnaoauditTab4t1')"/>
                                    <img id="naoauditTab4t1ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" title="Excel руу татах" onclick="exportExcel('#divnaoauditTab4t1')"/>
                                    <button id="naoauditTab4t1Print" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divnaoauditTab4t1')"><span class="fa fa-print"></span> Хэвлэх </button>
                                    <button id="naoauditTab4t1Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                                </div>
                            </div>
                            <div id="loaderTab4t1" class="search-background">
                                <label>
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </label>
                            </div> 
                            <div id="divnaoauditTab4t1" runat="server" class="reports" style="margin:0 10px 10px 10px; font-size: 14px;">     
                                <div style="text-align:center; font-weight:bold;">
                                    ҮНДЭСНИЙ АУДИТЫН ГАЗРЫН ХУРЛААС ГАРГАСАН ЗӨВЛӨМЖИЙН ХЭРЭГЖИЛТЭД ДҮН ШИНЖИЛГЭЭ ХИЙСЭН ТУХАЙ ТАНИЛЦУУЛГА
                                </div>                   
                                <div style="text-align:right; margin:0; font-weight:bold;">
                                    <label id="divtogtoolTab4t1Year1" runat="server" style="font-weight:bold;">0000</label> оны <label id="divtogtoolTab4t1Quarter1" runat="server" style="font-weight:bold;">00</label> улирал
                                </div>
                                <div style="text-align:left;">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    Үндэсний аудитын газар 
                                    <label id="divtogtoolTab4t1Year2" runat="server" style="font-weight:bold;">0000</label> 
                                    онд <label id="divtogtoolTab4t1HuraldaanCnt1" runat="server" style="font-weight:bold;">0</label> 
                                    удаа хуралдаж 
                                    <label id="divtogtoolTab4t1AsuudalCnt1" runat="server" style="font-weight:bold;">0</label> 
                                    асуудал хэлэлцэн нийт 
                                    <label id="divtogtoolTab4t1TotalZuwlumjCnt1" runat="server" style="font-weight:bold;">0</label> 
                                    зөвлөмж гаргасан бөгөөд хэрэгжилтийн хугацаа болсон үнэлэх боломжтой 
                                    <label id="divtogtoolTab4t1ActiveZuwlumjCnt1" runat="server" style="font-weight:bold;">0</label> 
                                    зөвлөмжийн хэрэгжилт үнэлгээнд хамрагдлаа.<br />
                                    <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    Нийт өгөгдсөн дүгнэлт, зөвлөмжийг багцлан үзэхэд 
                                    <label id="divtogtoolTab4t1AsuudalList1" runat="server">TEXT</label> 
                                    зөвлөмж тус тус өгөгдсөн байна.<br />--%>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    Үндэсний аудитын газраас өгөгдсөн зөвлөмжийн хэрэгжилтийн байдалд хяналт-шинжилгээ, үнэлгээ хийхэд, зөвлөмжийн хэрэгжилт дундажаар 
                                    <label id="divtogtoolTab4t1TotalAuditPer1" runat="server" style="font-weight:bold;">00.0</label> 
                                    хувийн биелэлттэй буюу хангалттай бус дүн гарлаа. Үүнээс яамны дотоод бүтцийн <b>нэгжүүдийн хувьд</b> 
                                    <label id="divtogtoolTab4t1MofAuditPer1" runat="server" style="font-weight:bold;">00.0</label> 
                                    <b>%</b>, Дотоод аудит явуулахад хамрагдсан бусад төсвийн ерөнхийлөн захирагчдын  төсөвт байгууллагуудад өгсөн  зөвлөмжийн биелэлт 
                                    <label id="divtogtoolTab4t1MofOtherPer1" runat="server" style="font-weight:bold;">00.0</label> 
                                    <b>%</b> -тайгаар тус тус үнэлэгдсэн байна.<br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    Үнэлэгдсэн зөвлөмжийн: 
                                    <label id="divtogtoolTab4t1Per100Cnt1" runat="server" style="font-weight:bold;">00</label> 
                                    асуудал нь бүрэн хэрэгжсэн, 
                                    <label id="divtogtoolTab4t1Per90Cnt1" runat="server" style="font-weight:bold;">00</label> 
                                    асуудал нь 90 хувийн, 
                                    <label id="divtogtoolTab4t1Per80Cnt1" runat="server" style="font-weight:bold;">00</label> 
                                    асуудал нь 80 хувийн, 
                                    <label id="divtogtoolTab4t1Per70Cnt1" runat="server" style="font-weight:bold;">00</label> 
                                    асуудал нь 70 хувийн, 
                                    <label id="divtogtoolTab4t1Per50Cnt1" runat="server" style="font-weight:bold;">00</label> 
                                    асуудал нь 50 хувийн, 
                                    <label id="divtogtoolTab4t1Per30Cnt1" runat="server" style="font-weight:bold;">00</label> 
                                    асуудал нь 30 хувийн, 
                                    <label id="divtogtoolTab4t1Per10Cnt1" runat="server" style="font-weight:bold;">00</label> 
                                    асуудал нь 10 хувийн, 
                                    <label id="divtogtoolTab4t1Per0Cnt1" runat="server" style="font-weight:bold;">00</label> 
                                    асуудал нь 0 хувийн, 
                                    <label id="divtogtoolTab4t1PerNoneCnt1" runat="server" style="font-weight:bold;">00</label> 
                                    асуудал нь үнэлээгүй, биелэлттэй байна. Харин үнэлэгдээгүй ажлуудын хувьд тус газраас шийдвэрлэх боломжгүй мөн хугацаандаа зөвлөмжийн биелэлтийг ирүүлээгүйтэй холбоотой ажлууд байна. 
                                </div>
                                <div id="divtogtoolTab4t1PieChart1" runat="server" style="display:block;"></div>  
                                <div style="text-align:center; font-weight:bold;">
                                    Яамны дотоод бүтцийн нэгжийн хувьд
                                </div>      
                                <div id="divtogtoolTab4t1Datatable1" runat="server" style="display:block;"></div>  
                                <br /> 
                                <div style="text-align:center; font-weight:bold;">
                                    Дотоод аудит явуулахад хамрагдсан бусад төсвийн ерөнхийлөн захирагчдын төсөвт байгууллагуудад өгсөн  дүгнэлт, зөвлөмжийн биелэлт
                                </div>      
                                <div id="divtogtoolTab4t1Datatable2" runat="server" style="display:block;"></div>        
                            </div>
                        </div>
                        <div id="naoauditTab4t2" class="tab-pane">
                            <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                <div style="width:70%; float:left;">
                                    <div style="width:125px; float:left; margin-right:10px;"><select id="naoauditTab4t2SelectQuarter" name="naoauditTab4t2SelectQuarter" runat="server" class="form-control" style="padding:1px"><option value="1">улирал 1</option><option value="2">улирал 2</option><option value="3">улирал 3</option><option value="4">улирал 4</option></select></div>
                                    <div style="width:60px; float:left; margin-right:10px;"><select id="naoauditTab4t2SelectYear" name="naoauditTab4t2SelectYear" runat="server" class="form-control" style="padding:1px"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option></select></div>
                                    <div style="width:70px; float:left; margin-right:10px;margin-top: 4px;line-height: 12px;">Тайлангийн төрөл:</div>
                                    <div style="width:250px; float:left; margin-right:10px;"><select id="naoauditTab4t2SelectType" name="naoauditTab4t2SelectType" runat="server" class="form-control" style="padding:1px"><option value="all">Бүгд</option></select></div>
                                </div>
                                <div style="text-align:right; width:30%; float:left;">
                                    <img id="naoauditTab4t2ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" title="PDF руу татах" onclick="exportPdf('#divnaoauditTab4t2')" />
                                    <img id="naoauditTab4t2ExportWord" src="../img/word-icon.png" style="cursor:pointer;" title="Word руу татах" onclick="exportWord('#divnaoauditTab4t2')"/>
                                    <img id="naoauditTab4t2ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" title="Excel руу татах" onclick="exportExcel('#divnaoauditTab4t2')"/>
                                    <button id="naoauditTab4t2Print" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divnaoauditTab4t2')"><span class="fa fa-print"></span> Хэвлэх </button>
                                    <button id="naoauditTab4t2Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                                </div>
                            </div>
                            <div id="loaderTab4t2" class="search-background">
                                <label>
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </label>
                            </div>
                            <div id="divnaoauditTab4t2" runat="server" class="reports" style="margin:0 10px 10px 10px; font-size: 14px;">  
                                <div style="text-align:center; font-weight:bold;">
                                    ( <label id="divtogtoolTab4t2Year1" runat="server" style="font-weight:bold;">0000</label> оны <label id="divtogtoolTab4t2Quarter1" runat="server" style="font-weight:bold;">00</label> дугаар улирлын байдлаар)
                                </div>
                                <div id="divtogtoolTab4t2Datatable1" runat="server" style="display:block;"></div>  
                            </div> 
                        </div>
                    </div>
                </div>
                <div id="naoauditTab5" runat="server" class="tab-pane">
                    <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> <i class="fa fa-table"></i></span>
                            <h2> Тайлангийн төрөл </h2>
                        </header>
                        <div>
                            <div id="divnaoauditTab5Add" runat="server" class="Colvis TableTools"  style="right:125px; top:5px; z-index:5;">
                                <button id="naoauditTab5Add" runat="server" class="ColVis_Button TableTools_Button ColVis_MasterButton btn btn btn-primary btn-sm" data-target="#naoauditTab5Modal" data-toggle="modal"><i class="fa fa-plus"></i> Нэмэх</button>
                            </div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div id="loaderTab5" class="search-background">
                                <label>
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                                </label>
                            </div>
                            <div id="naoauditTab5DatatableDiv" class="widget-body no-padding">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div id="naoauditTab6" runat="server" class="tab-pane">
                    <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> <i class="fa fa-table"></i></span>
                            <h2> Зөвлөмжийн төрөл</h2>
                        </header>
                        <div>
                            <div id="divnaoauditTab6Add" runat="server" class="Colvis TableTools"  style="right:125px; top:5px; z-index:5;">
                                <button id="naoauditTab6Add" runat="server" class="ColVis_Button TableTools_Button ColVis_MasterButton btn btn btn-primary btn-sm" data-target="#naoauditTab6Modal" data-toggle="modal"><i class="fa fa-plus"></i> Нэмэх</button>
                            </div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div id="loaderTab6" class="search-background">
                                <label>
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                                </label>
                            </div>
                            <div id="naoauditTab6DatatableDiv" class="widget-body no-padding">
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </article>
    </div>
</section>
<div id="naoauditTab1Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="naoauditTab1ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Зөвлөмж&nbsp;<span id="naoauditTab1ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <div class="col-md-12">
                            <div id="issueID" class="form-group hide"></div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <div class="col-md-3" style="padding: 0;">
                                    <label>Он</label> 
                                    <select id="naoauditTab1ModalSelectYear" runat="server" class="form-control"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div>
                                <div class="col-md-9" style="padding: 0 0 0 13px;">
                                    <label>Зөвлөмжийн төрөл</label>
                                    <select id="naoauditTab1ModalSelectNaoType2" runat="server" class="form-control"></select>
                                </div> 
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label>Тайлангийн төрөл</label>
                                <select id="naoauditTab1ModalSelectNaoType" runat="server" class="form-control"></select>
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label>Дугаар</label>
                                <input class="form-control" id="naoauditTab1ModalInputNo" name="naoauditTab1ModalInputNo" maxlength="3" type="text" placeholder="Дугаар">
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label>Зөвлөмжийн нэр</label>
                                <textarea class="form-control" id="naoauditTab1ModalInputName" name="naoauditTab1ModalInputName" placeholder="Зөвлөмжийн нэр" rows="6" maxlength="1000"></textarea>
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label>Хавсралт файл</label>
                                <div id="naoauditTab1ModalAttachmentTableDiv" class="col-sm-12" style="padding:0px;">
                                    <table id="naoauditTab1ModalAttachmentTable" border="0" cellpadding="0" cellspacing="0" style="font-size:14px;">
                                        <tbody>
                                            
                                        </tbody>
                                    </table>
                                </div>
                                <div id="naoauditTab1ModalAttachmentInputDiv" class="col-md-12" style="padding:0px;">
									<input type="file" class="btn btn-default" id="naoauditTab1ModalAttachmentInput" onchange="naoauditTab1ModalAttachmentAddFile(this)"/>
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
<div id="naoauditTab2Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="naoauditTab2ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Хэрэгжүүлэх арга хэмжээ&nbsp;<span id="naoauditTab2ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <div class="col-md-12">
                            <div id="decisionID" class="form-group hide"></div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label>Хуралдсан он</label>
                                <select id="naoauditTab2ModalYear" name="naoauditTab2ModalYear" class="form-control">
                                    <option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option>
                                </select>
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label>Зөвлөмж</label>
                                <select id="naoauditTab2ModalIssue" name="naoauditTab2ModalIssue" class="form-control" disabled></select>
                                <input id="naoauditTab2ModalIssueLoader" class="form-control ui-autocomplete-loading" placeholder="" type="text" style="display:none;">
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label>Дугаар</label>
                                <input class="form-control" id="naoauditTab2ModalInputNo" name="naoauditTab2ModalInputNo" maxlength="3" type="text" placeholder="Дугаар">
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label>Хэрэгжүүлэх арга хэмжээ</label>
                                <textarea class="form-control" id="naoauditTab2ModalInputName" name="naoauditTab2ModalInputName" placeholder="Хэрэгжүүлэх арга хэмжээ" rows="6" maxlength="1000"></textarea>
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
							    <label>Хариуцах газар</label>
                                <div id="divnaoauditTab2ModalSelect2Gazarlist">

                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                    <button id="naoauditTab2ModalBtnSave" class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
                </div>
            </form>
        </div>
    </div>
</div>
<div id="naoauditTab3Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> × </button>
                <h4 class="modal-title" >ДАЗ-ын хурлаас гарсан шийдвэрийн биелэлт&nbsp;<span id="togtoolTab3ModalHeaderLabel"></span></h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div id="decisionTab3ID" class="form-group hide"></div> 
                        <div class="form-group" style="margin-bottom:0px;">
                            Он: <label id="naoauditImplModalCurrentYr" runat="server"></label>&nbsp;|&nbsp;<label id="naoauditImplModalCurrentQrtr" runat="server"></label>
                        </div> 
                        <div class="form-group" style="height:auto;">
                            Зөвлөмжийн төрөл: <label id="naoauditTab3ModalLabelNaoType"></label><br />
                            Зөвлөмж: <label id="naoauditTab3ModalLabelZuwlumj"></label><br />
                            Хэрэгжүүлэх арга хэмжээ: <label id="naoauditTab3ModalLabelArgahemjee"></label><br />
                            Хэрэгжүүлэх газар: <label id="naoauditTab3ModalLabelGazar"></label>
                        </div>
                        <div class="form-group" style="height:20px;">
                            <label class="col-md-2 control-label">Биелэлт</label>
                        </div>
                        <div class="form-group" style="margin:0px; display:block; overflow:hidden;">
                            <div class="col-md-12"> 
                                <div style="width:100%; display: block; overflow: hidden; padding-bottom: 5px;">
                                    <div style="width:15%; float:right; text-align:right;">
                                        Тэмдэгт: <label id="naoauditTab3ImplModalCharLength" runat="server">0</label>/12000
                                    </div>
                                    <div style="width:17%; float:right; text-align:right;">
                                        <button id="naoauditImplDelete" type="button" class="btn btn-labeled btn-danger" style="font-size: 12px; margin-top: -5px;">
                                            <span class="btn-label" style="padding: 3px 7px 3px 5px;">
                                                <i class="fa fa-trash-o"></i>
                                            </span>Биелэлт устгах
                                        </button>
                                    </div> 
                                    <div style="width:24%; float:right; text-align:right;">
                                        <button id="naoauditImplDownload" type="button" class="btn btn-labeled btn-warning" style="font-size: 12px; margin-top: -3px;">
                                            <span class="btn-label" style="padding: 3px 7px 3px 5px; width: 21px; height: 21px;">
                                                <i class="glyphicon glyphicon-download-alt"></i>
                                            </span>Өмнөх улиралаас татах
                                        </button>
                                    </div> 
                                </div>
                                <textarea id="naoauditTab3ImplModalImpl" name="naoauditTab3ImplModalImpl"></textarea>
                                <script>
                                    CKEDITOR.replace('naoauditTab3ImplModalImpl', {
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

                                    var editor = CKEDITOR.instances.naoauditTab3ImplModalImpl;
                                    editor.on('key', function (evt) {
                                        $("#naoauditTab3ImplModalCharLength").text(replaceDisplayToDatabase($.trim(evt.editor.getData())).length);
                                    }, editor.element.$);
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                <button id="naoauditTab3ImplSave" class="btn btn-success btn-sm" type="button"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
            </div>
        </div>
    </div>
</div>
<div id="naoauditTab5Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="naoauditTab5ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Зөвлөмжийн төрөл &nbsp;<span id="naoauditTab5ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <div class="col-md-12">
                            <div id="naoAuditTypeID" class="form-group hide"></div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label>Дугаар</label>
                                <input class="form-control" id="naoauditTab5ModalInputNo" name="naoauditTab5ModalInputNo" maxlength="3" type="text" placeholder="Дугаар">
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label>Зөвлөмжийн төрөл</label>
                                <textarea class="form-control" id="naoauditTab5ModalInputName" name="naoauditTab5ModalInputName" placeholder="Зөвлөмжийн төрөл" rows="6" maxlength="1000"></textarea>
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
<div id="naoauditTab6Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="naoauditTab6ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Зөвлөмжийн төрөл 2 &nbsp;<span id="naoauditTab6ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <div class="col-md-12">
                            <div id="naoAuditType2ID" class="form-group hide"></div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label>Дугаар</label>
                                <input class="form-control" id="naoauditTab6ModalInputNo" name="naoauditTab6ModalInputNo" maxlength="3" type="text" placeholder="Дугаар">
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label>Зөвлөмжийн төрөл</label>
                                <textarea class="form-control" id="naoauditTab6ModalInputName" name="naoauditTab6ModalInputName" placeholder="Зөвлөмжийн төрөл 2" rows="6" maxlength="1000"></textarea>
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
    //pageSetUp();
    var globalAjaxVar = null;
    var pagefunction = function () {
        dataBindTab5Datatable();
        dataBindTab6Datatable();
        dataBindTab1Datatable();
        naoauditTab2SetFirstControls();
        naoauditTab3SetFirstControls();
        dataBindTab4T2Data1();
    }
    var pagedestroy = function () {
        if (globalAjaxVar != null) {
            globalAjaxVar.abort();
            globalAjaxVar = null;
        }
    }
    pagefunction();

    //$(document).ready(function () {
    //    dataBindTab5Datatable();
    //    dataBindTab6Datatable();
    //    dataBindTab1Datatable();
    //    naoauditTab2SetFirstControls();
    //    naoauditTab3SetFirstControls();

    //    //dataBindTab2GazarDll();
    //    //dataBindTab2Datatable();
    //    //dataBindTab3Datatable();
    //    //dataBindTab4T1Data1();
    //    dataBindTab4T2Data1();
    //});
    //Tab1
    function dataBindTab1NaoTypeDll() {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/naoaudit_naoauditTab2NaoTypeForDll",
            data: '{}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#naoauditTab1ModalSelectNaoType").html(msg.d);
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
    function dataBindTab1NaoType2Dll() {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/naoaudit_naoauditTab2NaoType2ForDll",
            data: '{}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#naoauditTab1ModalSelectNaoType2").html(msg.d);
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
    function dataBindTab1Datatable() {
        showLoader('loaderTab1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/naoaudit_naoauditTab1Datatable",
            data: '{yr:"' + $("#naoauditTab1SelectYear option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#naoauditTab1DatatableDiv").html(replaceDatabaseToDisplay(msg.d));
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
    $("#naoauditTab1Add").click(function () {
        $('#naoauditTab1ModalSelectYear').val($('#naoauditTab1SelectYear option:selected').val());
        $("#naoauditTab1ModalHeaderLabel").html("нэмэх");
        $('#naoauditTab1ModalSelectNaoType').val(0);
        $('#naoauditTab1ModalSelectNaoType2').val(0);
        $("#naoauditTab1ModalInputNo").val("");
        $('#naoauditTab1ModalInputName').val("");
        $('#naoauditTab1ModalAttachmentTable').find('tbody').html("");
        $('#naoauditTab1ModalAttachmentInput').val("");
        $('#naoauditTab1ModalAttachmentTableDiv').css("display", "none");
        $('#naoauditTab1ModalAttachmentInputDiv').css("display", "block");
    });
    function showEditNaoauditTab1Modal(el) {
        $('#naoauditTab1ModalSelectYear').val($('#naoauditTab1SelectYear option:selected').val());
        $("#naoauditTab1ModalHeaderLabel").html("засах");
        $('#issueID').text($(el).closest('tr').find('td:eq(0)').html());
        $('#naoauditTab1ModalSelectNaoType').val($(el).closest('tr').find('td:eq(1)').html());
        $('#naoauditTab1ModalSelectNaoType2').val($(el).closest('tr').find('td:eq(2)').html());
        $('#naoauditTab1ModalInputNo').val($(el).closest('tr').find('td:eq(3)').text());
        $('#naoauditTab1ModalInputName').val($(el).closest('tr').find('td:eq(4)').text());
        if ($(el).closest('tr').find('td:eq(5) a').length != 0) {
            $('#naoauditTab1ModalAttachmentTable').find('tbody').html("<tr><td><a class=\"btn btn-link btn-xs\" href=\"" + $(el).closest('tr').find('td:eq(5)').find('a').attr('href') + "\" style=\"padding:0px; border:none;\" download>" + $(el).closest('tr').find('td:eq(5)').find('a').attr('href').split('/').pop() + "</a></td><td style=\"padding-left:10px\"><a href=\"javascript:void(0);\" class=\"btn btn-link btn-xs\" onclick=\"naoAuditTab1ModalAttachmentRemoveRow(this)\"><i class=\"fa fa-trash-o\"></i> устгах</a></td></tr>");
            $('#naoauditTab1ModalAttachmentInput').val("");
            $('#naoauditTab1ModalAttachmentTableDiv').css("display", "block");
            $('#naoauditTab1ModalAttachmentInputDiv').css("display", "none");
        }
        else {
            $('#naoauditTab1ModalAttachmentTable').find('tbody').html("");
            $('#naoauditTab1ModalAttachmentInput').val("");
            $('#naoauditTab1ModalAttachmentTableDiv').css("display", "none");
            $('#naoauditTab1ModalAttachmentInputDiv').css("display", "block");
        }
    }
    function showDeleteNaoauditTab1Modal(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteScalar",
            data: '{qry:"SELECT COUNT(ID) FROM TBL_AUDIT_DECISION WHERE AUDIT_ISSUE_ID=' + $(el).closest('tr').find('td:eq(0)').html() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    if (arrMsg[1] != "0") {
                        alert("Сонгосон зөвлөмжид хамааралтай арга хэмжээ орсон тул устгах боломжгүй байна!");
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
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"DELETE FROM TBL_AUDIT_ISSUE WHERE ID=' + $(el).closest('tr').find('td:eq(0)').text() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        var varMsg = msg.d;
                                        var arrMsg = varMsg.split("~");
                                        if (arrMsg[0] == "0") { $('#naoauditTab1Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindTab1Datatable();
                                            $('#naoauditTab1Modal').modal('hide');
                                            $.smallBox({
                                                title: "Зөвлөмж",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай устгагдлаа...</i>",
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
    function naoauditTab1ModalAttachmentAddFile(el) {
        var uploadfiles = $(el).get(0);
        var uploadedfiles = uploadfiles.files;
        var fromdata = new FormData();
        for (var i = 0; i < uploadedfiles.length; i++) {
            fromdata.append(uploadedfiles[i].name, uploadedfiles[i]);
        }
        var choice = {};
        choice.url = "pg/NaoAuditUploadFile.ashx";
        choice.type = "POST";
        choice.data = fromdata;
        choice.contentType = false;
        choice.processData = false;
        choice.success = function (result) {
            if (result == "1") {
                $('#naoauditTab1ModalAttachmentTable').find('tbody').html("<tr><td><a class=\"btn btn-link btn-xs\" href=\"../files/naoaudit/" + $(el).val().split('\\').pop() + "\" style=\"padding:0px; border:none;\" download>" + $(el).val().split('\\').pop() + "</a></td><td style=\"padding-left:10px\"><a href=\"javascript:void(0);\" class=\"btn btn-link btn-xs\" onclick=\"naoAuditTab1ModalAttachmentRemoveRow(this)\"><i class=\"fa fa-trash-o\"></i> устгах</a></td></tr>");
                $('#naoauditTab1ModalAttachmentTableDiv').css("display", "block");
                $('#naoauditTab1ModalAttachmentInputDiv').css("display", "none");
                $.smallBox({
                    title: "Сонгосон файл",
                    content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хуулагдлаа...</i>",
                    color: "#659265",
                    iconSmall: "fa fa-check fa-2x fadeInRight animated",
                    timeout: 1000
                });
            }
            else {
                alert('errrrr');
                alert(result);
            }
        };
        choice.error = function (err) { alert('err:' + err.statusText); };
        $.ajax(choice);
        event.preventDefault();
    }
    function naoAuditTab1ModalAttachmentRemoveRow(el) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Та устгахдаа итгэлтэй байна уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/DeleteFile",
                    data: '{filename:"~/files/naoaudit/' + $(el).closest('tr').find('td:eq(0)').find('a').html() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        $(el).closest('tr').remove();
                        $.smallBox({
                            title: "Сонгосон файл",
                            content: "<i class='fa fa-clock-o'></i> <i>Амжилттай устгагдлаа...</i>",
                            color: "#659265",
                            iconSmall: "fa fa-check fa-2x fadeInRight animated",
                            timeout: 1000
                        });
                        if ($('#naoauditTab1ModalAttachmentTable tr').length == 0) {
                            $('#naoauditTab1ModalAttachmentInput').val("");
                            $('#naoauditTab1ModalAttachmentTableDiv').css("display", "none");
                            $('#naoauditTab1ModalAttachmentInputDiv').css("display", "block");
                        }
                        else {
                            $('#naoauditTab1ModalAttachmentTableDiv').css("display", "block");
                            $('#naoauditTab1ModalAttachmentInputDiv').css("display", "none");
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
    $('#naoauditTab1ModalForm').submit(function (e) {
        if (!$('#naoauditTab1ModalSelectNaoType').valid() || !$('#naoauditTab1ModalSelectNaoType2').valid() || !$('#naoauditTab1ModalInputNo').valid() || !$('#naoauditTab1ModalInputName').valid()) {
            e.preventDefault();
        }
        else {
            var isUpdate = "";
            if ($("#naoauditTab1ModalHeaderLabel").html() == "засах") isUpdate = " AND ID!=" + $("#issueID").text();
            //globalAjaxVar = $.ajax({
            //    type: "POST",
            //    url: "ws.aspx/WSOracleExecuteScalar",
            //    data: '{qry:"SELECT COUNT(NO) FROM TBL_AUDIT_ISSUE WHERE DT=\'' + $.trim($('#naoauditTab1ModalInputDate').val()) + '\' AND NO=' + $.trim($('#naoauditTab1ModalInputNo').val()) + isUpdate + '"}',
            //    contentType: "application/json; charset=utf-8",
            //    dataType: "json",
            //    success: function (msg) {
            //        var varMsg = msg.d;
            //        var arrMsg = varMsg.split("~");
            //        if (arrMsg[0] == "0") { $('#naoauditTab1Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
            //        else {
            //            if (arrMsg[1] == "0") {
            var filename = "none";
            var donedate = "none";
            if ($('#naoauditTab1ModalAttachmentTable tr').length != 0) filename = $('#naoauditTab1ModalAttachmentTable').find('tr').find('td').find('a').html();
            if ($("#naoauditTab1ModalHeaderLabel").html() == "нэмэх") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/WSOracleExecuteNonQuery",
                    data: '{qry:"INSERT INTO TBL_AUDIT_ISSUE (ID, AUDIT_TYPE_ID, YR, NO, NAME, FILE_NAME, AUDIT_NAO_TYPE_ID, AUDIT_NAO_TYPE2_ID, CREATED_STAFFID, CREATED_DATE) VALUES (TBLLASTID(\'TBL_AUDIT_ISSUE\'), 2, ' + $('#naoauditTab1ModalSelectYear option:selected').val() + ', ' + $.trim($('#naoauditTab1ModalInputNo').val()) + ', \'' + replaceDisplayToDatabase($.trim($('#naoauditTab1ModalInputName').val())) + '\', REPLACE(\'' + filename + '\',\'none\',null), ' + $('#naoauditTab1ModalSelectNaoType option:selected').val() + ', ' + $('#naoauditTab1ModalSelectNaoType2 option:selected').val() + ', ' + '<%= Session["LM_UserID"] %>' + ', sysdate)"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        var varMsg = msg.d;
                        var arrMsg = varMsg.split("~");
                        if (arrMsg[0] == "0") { $('#naoauditTab1Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                        else {
                            dataBindTab1Datatable();
                            $('#naoauditTab1Modal').modal('hide');
                            $.smallBox({
                                title: "ДАЗ-ын хуралд хэлэлцсэн асуудал",
                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
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
            else {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/WSOracleExecuteNonQuery",
                    data: '{qry:"UPDATE TBL_AUDIT_ISSUE SET YR=' + $('#naoauditTab1ModalSelectYear option:selected').val() + ', DT=\'' + $.trim($('#naoauditTab1ModalInputDate').val()) + '\', NO=' + $.trim($('#naoauditTab1ModalInputNo').val()) + ', NAME=\'' + replaceDisplayToDatabase($.trim($('#naoauditTab1ModalInputName').val())) + '\', FILE_NAME=REPLACE(\'' + filename + '\',\'none\',null), AUDIT_NAO_TYPE_ID=' + $('#naoauditTab1ModalSelectNaoType option:selected').val() + ', AUDIT_NAO_TYPE2_ID=' + $('#naoauditTab1ModalSelectNaoType2 option:selected').val() + ', MODIFY_STAFFID=' + '<%= Session["LM_UserID"] %>' + ', MODIFY_DATE=sysdate WHERE ID=' + $('#issueID').text() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        var varMsg = msg.d;
                        var arrMsg = varMsg.split("~");
                        if (arrMsg[0] == "0") { $('#naoauditTab1Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                        else {
                            dataBindTab1Datatable();
                            $('#naoauditTab1Modal').modal('hide');
                            $.smallBox({
                                title: "ДАЗ-ын хуралд хэлэлцсэн асуудал",
                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай засагдлаа...</i>",
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
        //}
        //else alert($("#naoauditTab1ModalInputDate").val() + " огноо дээр \"" + $("#naoauditTab1ModalInputNo").val() + "\" дугаартай хэлэлцсэн асуудал орсон байна!");
        //        }
        //    },
        //    failure: function (response) {
        //        alert(response.d);
        //    }
        //});            
        }
    });
    $("#naoauditTab1SelectYear").change(function () {
        dataBindTab1Datatable();
        $("#naoauditCurrentYear1").text($(this).val());
    });

    //Tab2
    function naoauditTab2SetFirstControls() {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/naoaudit_naoauditTab2ForDll",
            data: '{yr:"' + $('#naoauditTab2SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#naoauditTab2SelectGazar").html(msg.d);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/planm_planmCheckRole",
                    data: '{stid:"' + '<%= Session["LM_UserID"] %>' + '", roles:"1,20"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        if (msg.d == "0") {
                            var userGazarId = '';
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "ws.aspx/user_getGazarId",
                                data: '{userId:"' + '<%= Session["LM_UserID"] %>' + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (msg) {
                                    userGazarId = msg.d;
                                    $('#naoauditTab2SelectGazar').val(userGazarId);
                                    $('#naoauditTab2SelectGazar').prop('disabled', true);
                                    dataBindTab2Datatable();
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
                        else dataBindTab2Datatable();
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
    function dataBindTab2Datatable() {
        showLoader('loaderTab2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/naoaudit_naoauditTab2Datatable",
            data: '{yr:"' + $('#naoauditTab2SelectYear option:selected').val() + '", gazar:"' + $("#naoauditTab2SelectGazar option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#naoauditTab2DatatableDiv").html(msg.d);
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
    function dataBindTab2ModalIssueList(vall) {
        $('#naoauditTab2ModalIssue').css("display", "none");
        $('#naoauditTab2ModalIssueLoader').css("display", "block");
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/naoaudit_naoauditTab2IssueListForDDL",
            data: '{yr:"' + $('#naoauditTab2ModalYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#naoauditTab2ModalIssue").html(msg.d);
                $('#naoauditTab2ModalIssueLoader').css("display", "none");
                $('#naoauditTab2ModalIssue').css("display", "block");
                $('#naoauditTab2ModalIssue').prop('disabled', false);
                $("#naoauditTab2ModalIssue").val(vall);
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
    function dataBindTab2ModalGazarlist(selectedList) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/naoaudit_naoauditTab2GazarSelec2ForDLL",
            data: '{selectedList:"' + selectedList + '", yr:"' + $('#naoauditTab2SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divnaoauditTab2ModalSelect2Gazarlist").html(msg.d);
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
    $("#naoauditTab2Add").click(function () {
        $("#naoauditTab2ModalHeaderLabel").html("нэмэх");
        $("#naoauditTab2ModalYear").val($('#indexCurrentYear').text());
        dataBindTab2ModalIssueList(0);
        $("#naoauditTab2ModalInputNo").val("");
        $('#naoauditTab2ModalInputName').val("");
        dataBindTab2ModalGazarlist("none");
    });
    function showEditNaoauditTab2Modal(el) {
        $("#naoauditTab2ModalHeaderLabel").html("засах");
        $('#decisionID').text($(el).closest('tr').find('td:eq(0)').html());
        $("#naoauditTab2ModalYear").val($(el).closest('tr').find('td:eq(1)').text());
        dataBindTab2ModalIssueList($(el).closest('tr').find('td:eq(2)').text());
        $("#naoauditTab2ModalInputNo").val($(el).closest('tr').find('td:eq(4)').text());
        $('#naoauditTab2ModalInputName').val($(el).closest('tr').find('td:eq(5)').text());
        dataBindTab2ModalGazarlist($(el).closest('tr').find('td:eq(6)').html());
    }
    function showDeleteNaoauditTab2Modal(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteScalar",
            data: '{qry:"SELECT COUNT(ID) FROM TBL_AUDIT_IMPL WHERE AUDIT_DECISION_ID=' + $(el).closest('tr').find('td:eq(0)').html() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    if (arrMsg[1] != "0") {
                        alert("Энэ гарсан шийдвэрт хамааралтай биелэлт орсон тул устгах боломжгүй байна!");
                    }
                    else {
                        $.SmartMessageBox({
                            title: "Анхааруулга!",
                            content: "\"" + $(el).closest('tr').find('td:eq(2)').text() + " " + $(el).closest('tr').find('td:eq(4)').text() + ". " + $(el).closest('tr').find('td:eq(5)').text() + "\" гарсан шийдвэрийг устгах уу?",
                            buttons: '[Үгүй][Тийм]'
                        }, function (ButtonPressed) {
                            if (ButtonPressed === "Тийм") {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/AUDIT_DECISION_DELETE",
                                    data: '{P_ID:"' + $(el).closest('tr').find('td:eq(0)').html() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") window.location = "../#pg/error500.aspx";
                                        else {
                                            dataBindTab1Datatable();
                                            $.smallBox({
                                                title: "Сонгосон шийдвэр",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай устгагдлаа...</i>",
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
    $("#naoauditTab2ModalYear").change(function () {
        dataBindTab2ModalIssueList(0);
    });
    $("#naoauditTab2SelectGazar").change(function () {
        dataBindTab2Datatable();
    });
    $("#naoauditTab2SelectYear").change(function () {
        naoauditTab2SetFirstControls();
        $("#naoauditCurrentYear2").text($(this).val());
    });
    $('#naoauditTab2ModalForm').submit(function (e) {
        if (!$('#naoauditTab2ModalIssue').valid() || !$('#naoauditTab2ModalInputNo').valid() || !$('#naoauditTab2ModalInputName').valid() || !$('#naoauditTab2ModalSelect2Gazarlist').valid()) {
            e.preventDefault();
        }
        else {
            var isUpdate = "";
            if ($("#naoauditTab2ModalHeaderLabel").html() == "засах") isUpdate = " AND ID!=" + $("#decisionID").text();
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteScalar",
                data: '{qry:"SELECT COUNT(NO) FROM TBL_AUDIT_DECISION WHERE AUDIT_ISSUE_ID=' + $('#naoauditTab2ModalIssue').val() + ' AND NO=' + $.trim($('#naoauditTab2ModalInputNo').val()) + isUpdate + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    var varMsg = msg.d;
                    var arrMsg = varMsg.split("~");
                    if (arrMsg[0] == "0") { $('#naoauditTab2Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                    else {
                        if (arrMsg[1] == "0") {
                            if ($("#naoauditTab2ModalHeaderLabel").html() == "нэмэх") {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/AUDIT_DECISION_INSERT",
                                    data: '{P_AUDIT_ISSUE_ID:"' + $('#naoauditTab2ModalIssue').val() + '", P_NO:"' + $.trim($('#naoauditTab2ModalInputNo').val()) + '", P_NAME:"' + replaceDisplayToDatabase($.trim($('#naoauditTab2ModalInputName').val())) + '", P_BRANCHLIST:"' + $.trim($('#naoauditTab2ModalSelect2Gazarlist').val()) + '", P_STAFFID:"' + '<%= Session["LM_UserID"] %>' + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindTab2Datatable();
                                            $('#naoauditTab2Modal').modal('hide');
                                            $.smallBox({
                                                title: "ДАЗ-ын хурлаас гарсан шийдвэр",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
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
                            else {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/AUDIT_DECISION_UPDATE",
                                    data: '{P_ID:"' + $("#decisionID").text() + '", P_AUDIT_ISSUE_ID:"' + $('#naoauditTab2ModalIssue').val() + '", P_NO:"' + $.trim($('#naoauditTab2ModalInputNo').val()) + '", P_NAME:"' + replaceDisplayToDatabase($.trim($('#naoauditTab2ModalInputName').val())) + '", P_BRANCHLIST:"' + $.trim($('#naoauditTab2ModalSelect2Gazarlist').val()) + '", P_STAFFID:"' + '<%= Session["LM_UserID"] %>' + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindTab2Datatable();
                                            $('#naoauditTab2Modal').modal('hide');
                                            $.smallBox({
                                                title: "ДАЗ-ын хурлаас гарсан шийдвэр",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай засагдлаа...</i>",
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
                        }
                        else alert($('#naoauditTab2ModalIssue').text() + " хэлэлцсэн асуудалын хүрээнд \"" + $("#naoauditTab2ModalInputNo").val() + "\" дугаартай гарсан шийдвэр орсон байна!");
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
    //Tab3
    function naoauditTab3SetFirstControls() {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/naoaudit_naoauditTab2ForDll",
            data: '{yr:"' + $('#naoauditTab3SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#naoauditTab3SelectGazar").html(msg.d);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/planm_planmCheckRole",
                    data: '{stid:"' + '<%= Session["LM_UserID"] %>' + '", roles:"1,20"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        if (msg.d == "0") {
                            var userGazarId = '';
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "ws.aspx/user_getGazarId",
                                data: '{userId:"' + '<%= Session["LM_UserID"] %>' + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (msg) {
                                    userGazarId = msg.d;
                                    $('#naoauditTab3SelectGazar').val(userGazarId);
                                    $('#naoauditTab3SelectGazar').prop('disabled', true);
                                    dataBindTab3Datatable();
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
                        else dataBindTab3Datatable();
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
    function dataBindTab3Datatable() {
        showLoader('loaderTab3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/naoaudit_naoauditTab3Datatable",
            data: '{yr:"' + $("#naoauditTab3SelectYear option:selected").val() + '", qrtr:"' + $("#naoauditTab3SelectQuarter option:selected").val() + '", gazar:"' + $("#naoauditTab3SelectGazar option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#naoauditTab3DatatableDiv").html(replaceDatabaseToDisplay(msg.d));
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
    $("#naoauditTab3SelectYear").change(function () {
        naoauditTab3SetFirstControls();
        $("#naoauditCurrentYear3").text($(this).val());
    });
    $("#naoauditTab3SelectQuarter").change(function () {
        dataBindTab3Datatable();
        $("#naoauditCurrentQuarter1").text($(this).val());
    });
    $("#naoauditTab3SelectGazar").change(function () {
        dataBindTab3Datatable();
    });
    function showAddEditNaoauditTab3Modal(el) {
        $('#togtoolTab3ModalHeaderLabel').text($(el).attr('title').split(' ')[1]);
        $('#decisionTab3ID').text($(el).closest('tr').find('td:eq(0)').text());
        $('#naoauditTab3ModalLabelNaoType').text($('#group-id-naoauditTab3Datatable_' + $(el).closest('tr').attr("data-group")).find('td').html());
        $('#naoauditTab3ModalLabelZuwlumj').text($(el).closest('tr').find('td:eq(1)').text());
        $('#naoauditTab3ModalLabelArgahemjee').text($(el).closest('tr').find('td:eq(2)').text() + '. ' + $(el).closest('tr').find('td:eq(3)').text());
        $('#naoauditTab3ModalLabelGazar').text($(el).closest('tr').find('td:eq(4)').text());
        if ($('#naoauditTab3SelectQuarter option:selected').val() > 1) { $('#naoauditImplDownload').css('display', 'block'); }
        else { $('#naoauditImplDownload').css('display', 'none'); }
        $('#naoauditImplModalCurrentYr').text($('#naoauditTab3SelectYear option:selected').val());
        $('#naoauditImplModalCurrentQrtr').text($('#naoauditTab3SelectQuarter option:selected').text());
        if ($(el).attr('title').split(' ')[1] == "оруулах") {
            CKEDITOR.instances.naoauditTab3ImplModalImpl.setData("");
            $('#naoauditTab3ImplModalCharLength').text("0");
        }
        else {
            var myimpl = '';
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteScalar",
                data: '{qry:"SELECT IMPL FROM TBL_AUDIT_IMPL WHERE AUDIT_DECISION_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND YR=' + $('#naoauditTab3SelectYear option:selected').val() + ' AND QRTR=' + $('#naoauditTab3SelectQuarter option:selected').val() + '"}',
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
                            data: '{qry:"SELECT IMPL1 FROM TBL_AUDIT_IMPL WHERE AUDIT_DECISION_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND YR=' + $('#naoauditTab3SelectYear option:selected').val() + ' AND QRTR=' + $('#naoauditTab3SelectQuarter option:selected').val() + '"}',
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
                                        data: '{qry:"SELECT IMPL2 FROM TBL_AUDIT_IMPL WHERE AUDIT_DECISION_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND YR=' + $('#naoauditTab3SelectYear option:selected').val() + ' AND QRTR=' + $('#naoauditTab3SelectQuarter option:selected').val() + '"}',
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
                                                    data: '{qry:"SELECT IMPL3 FROM TBL_AUDIT_IMPL WHERE AUDIT_DECISION_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND YR=' + $('#naoauditTab3SelectYear option:selected').val() + ' AND QRTR=' + $('#naoauditTab3SelectQuarter option:selected').val() + '"}',
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
                                                                data: '{qry:"SELECT IMPL4 FROM TBL_AUDIT_IMPL WHERE AUDIT_DECISION_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND YR=' + $('#naoauditTab3SelectYear option:selected').val() + ' AND QRTR=' + $('#naoauditTab3SelectQuarter option:selected').val() + '"}',
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
                                                                            data: '{qry:"SELECT IMPL5 FROM TBL_AUDIT_IMPL WHERE AUDIT_DECISION_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND YR=' + $('#naoauditTab3SelectYear option:selected').val() + ' AND QRTR=' + $('#naoauditTab3SelectQuarter option:selected').val() + '"}',
                                                                            contentType: "application/json; charset=utf-8",
                                                                            dataType: "json",
                                                                            success: function (msg) {
                                                                                var varMsg = msg.d;
                                                                                var arrMsg = varMsg.split("~");
                                                                                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                                                                                else {
                                                                                    myimpl += arrMsg[1];
                                                                                    CKEDITOR.instances.naoauditTab3ImplModalImpl.setData(replaceDatabaseToDisplay(myimpl));
                                                                                    $("#naoauditTab3ImplModalCharLength").text(myimpl.length);
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
    }
    $("#naoauditTab3ImplSave").click(function () {
        if ($.trim(CKEDITOR.instances.naoauditTab3ImplModalImpl.getData()) == "") {
            alert("ДАЗ-ын хурлаас гарсан шийдвэрийн биелэлт заавал оруулна уу!");
        }
        else {
            if (replaceDisplayToDatabase($.trim(CKEDITOR.instances.naoauditTab3ImplModalImpl.getData())).length > 12000) {
                $("#naoauditTab3ImplModalCharLength").text(replaceDisplayToDatabase($.trim(CKEDITOR.instances.naoauditTab3ImplModalImpl.getData())).length);
                alert("ДАЗ-ын хурлаас гарсан шийдвэрийн биелэлт уртдаа 12000 тэмдэгт авна!");
            }
            else {
                var impl = "", impl1 = "", impl2 = "", impl3 = "", impl4 = "", impl5 = "";
                impl = replaceDisplayToDatabase($.trim(CKEDITOR.instances.naoauditTab3ImplModalImpl.getData())).substr(0, 2000);
                impl1 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.naoauditTab3ImplModalImpl.getData())).substr(2000, 2000);
                impl2 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.naoauditTab3ImplModalImpl.getData())).substr(4000, 2000);
                impl3 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.naoauditTab3ImplModalImpl.getData())).substr(6000, 2000);
                impl4 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.naoauditTab3ImplModalImpl.getData())).substr(8000, 2000);
                impl5 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.naoauditTab3ImplModalImpl.getData())).substr(10000, 2000);
                if (impl.length == 0) impl = "none";
                if (impl1.length == 0) impl1 = "none";
                if (impl2.length == 0) impl2 = "none";
                if (impl3.length == 0) impl3 = "none";
                if (impl4.length == 0) impl4 = "none";
                if (impl5.length == 0) impl5 = "none";
                if ($("#togtoolTab3ModalHeaderLabel").html() == "оруулах") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "ws.aspx/WSOracleExecuteNonQuery",
                        data: '{qry:"INSERT INTO TBL_AUDIT_IMPL (ID, YR, QRTR, AUDIT_DECISION_ID, IMPL, IMPL1, IMPL2, IMPL3, IMPL4, IMPL5, IMPL_CREATED_STAFFID, IMPL_CREATED_DATE, EVAL_CREATED_STAFFID, EVAL_CREATED_DATE) VALUES (TBLLASTID(\'TBL_AUDIT_IMPL\'), ' + $('#naoauditTab3SelectYear option:selected').val() + ', ' + $('#naoauditTab3SelectQuarter option:selected').val() + ', ' + $("#decisionTab3ID").text() + ', REPLACE(\'' + impl + '\',\'none\',null), REPLACE(\'' + impl1 + '\',\'none\',null), REPLACE(\'' + impl2 + '\',\'none\',null), REPLACE(\'' + impl3 + '\',\'none\',null), REPLACE(\'' + impl4 + '\',\'none\',null), REPLACE(\'' + impl5 + '\',\'none\',null), ' + '<%= Session["LM_UserID"] %>' + ', sysdate, ' + '<%= Session["LM_UserID"] %>' + ', sysdate)"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (msg) {
                            if (msg.d == "0") { $('#naoauditTab3Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                            else {
                                $('#naoauditTab3Datatable > tbody  > tr').each(function () {
                                    if ($('td:eq(0)', this).html() == $('#decisionTab3ID').text()) {
                                        $('td:eq(4)', this).html($.trim(CKEDITOR.instances.naoauditTab3ImplModalImpl.getData()));
                                        $('td:eq(5)', this).find('img').attr("src", "../img/green-circle.png");
                                        $('td:eq(5)', this).find('img').attr("alt", "Биелэлт засах");
                                        return false;
                                    }
                                });
                                $('#naoauditTab3Modal').modal('hide');
                                $.smallBox({
                                    title: "Хэрэгжүүлэх арга хэмжээний биелэлт",
                                    content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
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
                else {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "ws.aspx/WSOracleExecuteNonQuery",
                        data: '{qry:"UPDATE TBL_AUDIT_IMPL SET IMPL=REPLACE(\'' + impl + '\',\'none\',null), IMPL1=REPLACE(\'' + impl1 + '\',\'none\',null), IMPL2=REPLACE(\'' + impl2 + '\',\'none\',null), IMPL3=REPLACE(\'' + impl3 + '\',\'none\',null), IMPL4=REPLACE(\'' + impl4 + '\',\'none\',null), IMPL5=REPLACE(\'' + impl5 + '\',\'none\',null), IMPL_MODIFY_STAFFID=' + '<%= Session["LM_UserID"] %>' + ', IMPL_MODIFY_DATE=sysdate WHERE YR=' + $('#naoauditTab3SelectYear option:selected').val() + ' AND QRTR=' + $('#naoauditTab3SelectQuarter option:selected').val() + ' AND AUDIT_DECISION_ID=' + $("#decisionTab3ID").text() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (msg) {
                            if (msg.d == "0") { $('#naoauditTab3Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                            else {
                                $('#naoauditTab3Datatable > tbody  > tr').each(function () {
                                    if ($('td:eq(0)', this).html() == $('#decisionTab3ID').text()) {
                                        $('td:eq(4)', this).html($.trim(CKEDITOR.instances.naoauditTab3ImplModalImpl.getData()));
                                        $('td:eq(5)', this).find('img').attr("src", "../img/green-circle.png");
                                        $('td:eq(5)', this).find('img').attr("alt", "Биелэлт засах");
                                        return false;
                                    }
                                });
                                $('#naoauditTab3Modal').modal('hide');
                                $.smallBox({
                                    title: "Хэрэгжүүлэх арга хэмжээний биелэлт",
                                    content: "<i class='fa fa-clock-o'></i> <i>Амжилттай засагдлаа...</i>",
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
            }
        }
    });
    function saveEval(me) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteScalar",
            data: '{qry:"SELECT COUNT(ID) FROM TBL_AUDIT_IMPL WHERE AUDIT_DECISION_ID=' + $(me).closest('tr').find('td:eq(0)').html() + ' AND YR=' + $('#naoauditTab3SelectYear option:selected').val() + ' AND QRTR=' + $('#naoauditTab3SelectQuarter option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    if (arrMsg[1] == "0") {
                        $(me).val('none');
                        alert('Биелэлт ороогүй тул үнэлэх боломжгүй байна!');
                    }
                    else {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "ws.aspx/WSOracleExecuteNonQuery",
                            data: '{qry:"UPDATE TBL_AUDIT_IMPL SET EVAL=' + $(me).val().replace('none', 'null') + ', EVAL_MODIFY_STAFFID=' + '<%= Session["LM_UserID"] %>' + ', EVAL_MODIFY_DATE=sysdate WHERE AUDIT_DECISION_ID=' + $(me).closest('tr').find('td:eq(0)').html() + ' AND YR=' + $('#naoauditTab3SelectYear option:selected').val() + ' AND QRTR=' + $('#naoauditTab3SelectQuarter option:selected').val() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                                else {
                                    $.smallBox({
                                        title: "ДАЗ-ын хурлаас гарсан шийдвэрийн үнэлгээ",
                                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
                                        color: "#659265",
                                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                        timeout: 1000
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
    //tab4t1
    $("#naoauditTab4t1SelectYear").change(function () {
        $('#divtogtoolTab4t1Year1').text($(this).val());
        $('#divtogtoolTab4t1Year2').text($(this).val());
        dataBindTab4T1Data1();
    });
    $("#naoauditTab4t1SelectQuarter").change(function () {
        $('#divtogtoolTab4t1Quarter1').text($(this).val());
        dataBindTab4T1Data1();
    });
    function dataBindTab4T1Data1() {
        var selectedYear = $("#naoauditTab4t1SelectYear option:selected").val();
        var selectedQuarter = $("#naoauditTab4t1SelectQuarter option:selected").val();
        showLoader('loaderTab4t1');
        var qrtrqry = "";
        if ($('#naoauditTab4t1SelectQuarter option:selected').val() == "1") qrtrqry = " AND (TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 1)";
        else if ($('#naoauditTab4t1SelectQuarter option:selected').val() == "2") qrtrqry = " AND (TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 1 OR TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 2)";
        else if ($('#naoauditTab4t1SelectQuarter option:selected').val() == "3") qrtrqry = " AND (TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 1 OR TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 2 OR TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 3)";
        else if ($('#naoauditTab4t1SelectQuarter option:selected').val() == "4") qrtrqry = " AND (TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 1 OR TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 2 OR TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 3 OR TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 4)";
        var qry = "";
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteScalar",
            data: '{qry:"SELECT ( SELECT COUNT(DT) DTCNT FROM TBL_AUDIT_ISSUE WHERE TO_NUMBER(TO_CHAR(TO_DATE(DT,\'yyyy-mm-dd\'),\'yyyy\'))=' + selectedYear + ' )||\'~\'||( SELECT COUNT(ID) as ASUUDALCNT FROM TBL_AUDIT_ISSUE WHERE TO_NUMBER(TO_CHAR(TO_DATE(DT,\'yyyy-mm-dd\'),\'yyyy\'))=' + selectedYear + ' )||\'~\'||( SELECT COUNT(a.ID) as ZUWLUMJCNT FROM TBL_AUDIT_DECISION a INNER JOIN TBL_AUDIT_ISSUE b ON a.AUDIT_ISSUE_ID=b.ID WHERE TO_NUMBER(TO_CHAR(TO_DATE(b.DT,\'yyyy-mm-dd\'),\'yyyy\'))=' + selectedYear + ' )||\'~\'||( SELECT COUNT(a.ID) as ACTIVEZUWLUMJCNT FROM TBL_AUDIT_DECISION a INNER JOIN TBL_AUDIT_ISSUE b ON a.AUDIT_ISSUE_ID=b.ID WHERE TO_NUMBER(TO_CHAR(TO_DATE(b.DT,\'yyyy-mm-dd\'),\'yyyy\'))=' + selectedYear + qrtrqry + ' ) as ACTIVEZUWLUMJCNT FROM DUAL"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    $('#divtogtoolTab4t1HuraldaanCnt1').text(arrMsg[1]);
                    $('#divtogtoolTab4t1AsuudalCnt1').text(arrMsg[2]);
                    $('#divtogtoolTab4t1TotalZuwlumjCnt1').text(arrMsg[3]);
                    $('#divtogtoolTab4t1ActiveZuwlumjCnt1').text(arrMsg[4]);
                    //alert($("#naoauditTab4t1SelectYear option:selected").val());
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "ws.aspx/naoaudit_naoauditTab4T1Datatable1",
                        data: '{yr:"' + selectedYear + '", qrtr:"' + selectedQuarter + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (msg) {
                            $("#divtogtoolTab4t1Datatable1").html(msg.d);
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "ws.aspx/naoaudit_naoauditTab4T1Datatable2",
                                data: '{yr:"' + selectedYear + '", qrtr:"' + selectedQuarter + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (msg) {
                                    $("#divtogtoolTab4t1Datatable2").html(msg.d);
                                    dataBindTab4T1Data0();
                                    hideLoader('loaderTab4t1');
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
    function dataBindTab4T1Data0() {
        var cnt = 0;
        var per100 = 0;
        var per90 = 0;
        var per80 = 0;
        var per70 = 0;
        var per50 = 0;
        var per30 = 0;
        var per10 = 0;
        var per0 = 0;
        var pernone = 0;

        var tbl1Per = 0;
        var tbl1cnt = 0;
        $('#divtogtoolTab4t1Datatable1').find('table').find('tbody > tr').each(function (index) {
            cnt += parseInt($('td:eq(1)', this).html());
            per100 += parseInt($('td:eq(2)', this).html());
            per90 += parseInt($('td:eq(3)', this).html());
            per80 += parseInt($('td:eq(4)', this).html());
            per70 += parseInt($('td:eq(5)', this).html());
            per50 += parseInt($('td:eq(6)', this).html());
            per30 += parseInt($('td:eq(7)', this).html());
            per10 += parseInt($('td:eq(8)', this).html());
            per0 += parseInt($('td:eq(9)', this).html());
            pernone += parseInt($('td:eq(10)', this).html());
            tbl1Per = parseFloat(tbl1Per) + parseFloat($('td:eq(11)', this).find('span').html().split(' ')[0]);
            tbl1cnt++;

        });
        var tbl2Per = 0;
        var tbl2cnt = 0;
        $('#divtogtoolTab4t1Datatable2').find('table').find('tbody > tr').each(function (index) {
            cnt += parseInt($('td:eq(1)', this).html());
            per100 += parseInt($('td:eq(2)', this).html());
            per90 += parseInt($('td:eq(3)', this).html());
            per80 += parseInt($('td:eq(4)', this).html());
            per70 += parseInt($('td:eq(5)', this).html());
            per50 += parseInt($('td:eq(6)', this).html());
            per30 += parseInt($('td:eq(7)', this).html());
            per10 += parseInt($('td:eq(8)', this).html());
            per0 += parseInt($('td:eq(9)', this).html());
            pernone += parseInt($('td:eq(10)', this).html());
            tbl2Per = parseFloat(tbl2Per) + parseFloat($('td:eq(11)', this).find('span').html().split(' ')[0]);
            tbl2cnt++;
        });
        $('#divtogtoolTab4t1TotalAuditPer1').text(((tbl1Per + tbl2Per) / (tbl1cnt + tbl2cnt)).toFixed(1).toString().replace('NaN', '0.0'));
        $('#divtogtoolTab4t1MofAuditPer1').text((tbl1Per / tbl1cnt).toFixed(1).toString().replace('NaN', '0.0'));
        $('#divtogtoolTab4t1MofOtherPer1').text((tbl2Per / tbl2cnt).toFixed(1).toString().replace('NaN', '0.0'));

        $('#divtogtoolTab4t1Per100Cnt1').text(per100);
        $('#divtogtoolTab4t1Per90Cnt1').text(per90);
        $('#divtogtoolTab4t1Per80Cnt1').text(per80);
        $('#divtogtoolTab4t1Per70Cnt1').text(per70);
        $('#divtogtoolTab4t1Per50Cnt1').text(per50);
        $('#divtogtoolTab4t1Per30Cnt1').text(per30);
        $('#divtogtoolTab4t1Per10Cnt1').text(per10);
        $('#divtogtoolTab4t1Per0Cnt1').text(per0);
        $('#divtogtoolTab4t1PerNoneCnt1').text(pernone);

        drawChartPieChart1([
          ['EvalType', 'Count'],
          ['Бүрэн хэрэгжсэн', per100],
          ['90 хувь', per90],
          ['80 хувь', per80],
          ['70 хувь', per70],
          ['50 хувь', per50],
          ['30 хувь', per30],
          ['10 хувь', per10],
          ['0 хувь', per0],
          ['Үнэлээгүй', pernone]
        ]);
    }
    $("#naoauditTab4t1Refresh").click(function () {
        $("#naoauditTab4t1SelectYear").val($("#indexCurrentYear").html());
        $("#naoauditTab4t1SelectQuarter").val($("#indexCurrentQuarter").html());
        $("#divtogtoolTab4t1Year1").text($("#indexCurrentYear").html());
        $("#divtogtoolTab4t1Year2").text($("#indexCurrentYear").html());
        $("#divtogtoolTab4t1Quarter1").text($("#indexCurrentQuarter").html());
        dataBindTab4T1Data1();
    });
    //tab4t2
    $("#naoauditTab4t2SelectYear").change(function () {
        $('#divtogtoolTab4t2Year1').text($(this).val());
        dataBindTab4T2Data1();
    });
    $("#naoauditTab4t2SelectQuarter").change(function () {
        $('#divtogtoolTab4t2Quarter1').text($(this).val());
        dataBindTab4T2Data1();
    });
    $("#naoauditTab4t2SelectType").change(function () {
        dataBindTab4T2Data1();
    });
    function dataBindTab4T2Data1() {
        showLoader('loaderTab4t2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/naoaudit_naoauditTab4T2Datatable1",
            data: '{yr:"' + $("#naoauditTab4t2SelectYear option:selected").val() + '", qrtr:"' + $("#naoauditTab4t2SelectQuarter option:selected").val() + '", type:"' + $("#naoauditTab4t2SelectType option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divtogtoolTab4t2Datatable1").html(replaceDatabaseToDisplay(msg.d));
                hideLoader('loaderTab4t2');
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
    $("#naoauditTab4t2Refresh").click(function () {
        $("#naoauditTab4t2SelectYear").val($("#indexCurrentYear").html());
        $("#naoauditTab4t2SelectQuarter").val($("#indexCurrentQuarter").html());
        $("#divtogtoolTab4t2Year1").text($("#indexCurrentYear").html());
        $("#divtogtoolTab4t2Quarter1").text($("#indexCurrentQuarter").html());
        dataBindTab4T2Data1();
    });

    //Tab5
    function dataBindTab5Datatable() {
        showLoader('loaderTab5');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/naoaudit_naoauditTab5Datatable",
            data: '{}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#naoauditTab5DatatableDiv").html(msg.d);
                dataBindTab1NaoTypeDll();
                hideLoader('loaderTab5');
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
    $("#naoauditTab5Add").click(function () {
        $("#naoauditTab5ModalHeaderLabel").html("нэмэх");
        $("#naoauditTab5ModalInputNo").val("");
        $('#naoauditTab5ModalInputName').val("");
    });
    function showEditNaoauditTab5Modal(el) {
        $("#naoauditTab5ModalHeaderLabel").html("засах");
        $('#naoAuditTypeID').text($(el).closest('tr').find('td:eq(0)').html());
        $('#naoauditTab5ModalInputNo').val($(el).closest('tr').find('td:eq(1)').text());
        $('#naoauditTab5ModalInputName').val($(el).closest('tr').find('td:eq(2)').text());
    }
    function showDeleteNaoauditTab5Modal(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteScalar",
            data: '{qry:"SELECT COUNT(ID) FROM TBL_AUDIT_ISSUE WHERE AUDIT_NAO_TYPE_ID=' + $(el).closest('tr').find('td:eq(0)').html() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    if (arrMsg[1] != "0") {
                        alert("Сонгосон тайлангийн төрөлд хамааралтай зөвлөмж орсон тул устгах боломжгүй байна!");
                    }
                    else {
                        $.SmartMessageBox({
                            title: "Анхааруулга!",
                            content: "Сонгосон тайлангийн төрөлийг устгах уу?",
                            buttons: '[Үгүй][Тийм]'
                        }, function (ButtonPressed) {
                            if (ButtonPressed === "Тийм") {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"DELETE FROM TBL_AUDIT_NAO_TYPE WHERE ID=' + $(el).closest('tr').find('td:eq(0)').text() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        var varMsg = msg.d;
                                        var arrMsg = varMsg.split("~");
                                        if (arrMsg[0] == "0") { $('#naoauditTab5Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindTab5Datatable();
                                            $('#naoauditTab5Modal').modal('hide');
                                            $.smallBox({
                                                title: "Сонгосон тайлангийн төрөл",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай устгагдлаа...</i>",
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
    $('#naoauditTab5ModalForm').submit(function (e) {
        if (!$('#naoauditTab5ModalInputNo').valid() || !$('#naoauditTab5ModalInputName').valid()) {
            e.preventDefault();
        }
        else {
            var isUpdate = "";
            if ($("#naoauditTab5ModalHeaderLabel").html() == "засах") isUpdate = " AND ID!=" + $("#naoAuditTypeID").text();
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteScalar",
                data: '{qry:"SELECT COUNT(NO) FROM TBL_AUDIT_NAO_TYPE WHERE NO=' + $.trim($('#naoauditTab5ModalInputNo').val()) + isUpdate + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    var varMsg = msg.d;
                    var arrMsg = varMsg.split("~");
                    if (arrMsg[0] == "0") { $('#naoauditTab5Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                    else {
                        if (arrMsg[1] == "0") {
                            if ($("#naoauditTab5ModalHeaderLabel").html() == "нэмэх") {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"INSERT INTO TBL_AUDIT_NAO_TYPE (ID, NO, NAME) VALUES (TBLLASTID(\'TBL_AUDIT_NAO_TYPE\'), ' + $.trim($('#naoauditTab5ModalInputNo').val()) + ', \'' + replaceDisplayToDatabase($.trim($('#naoauditTab5ModalInputName').val())) + '\')"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        var varMsg = msg.d;
                                        var arrMsg = varMsg.split("~");
                                        if (arrMsg[0] == "0") { $('#naoauditTab5Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindTab5Datatable();
                                            $('#naoauditTab5Modal').modal('hide');
                                            $.smallBox({
                                                title: "Тайлангийн төрөл",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
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
                            else {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"UPDATE TBL_AUDIT_NAO_TYPE SET NO=' + $.trim($('#naoauditTab5ModalInputNo').val()) + ', NAME=\'' + replaceDisplayToDatabase($.trim($('#naoauditTab5ModalInputName').val())) + '\' WHERE ID=' + $('#naoAuditTypeID').text() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        var varMsg = msg.d;
                                        var arrMsg = varMsg.split("~");
                                        if (arrMsg[0] == "0") { $('#naoauditTab5Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindTab5Datatable();
                                            $('#naoauditTab5Modal').modal('hide');
                                            $.smallBox({
                                                title: "Тайлангийн төрөл",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай засагдлаа...</i>",
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
                        }
                        else alert($("#naoauditTab5ModalInputNo").val() + " дугаартай зөвлөмжийн төрөл орсон байна!");
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

    //Tab6
    function dataBindTab6Datatable() {
        showLoader('loaderTab6');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/naoaudit_naoauditTab6Datatable",
            data: '{}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#naoauditTab6DatatableDiv").html(msg.d);
                dataBindTab1NaoType2Dll();
                hideLoader('loaderTab6');
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
    $("#naoauditTab6Add").click(function () {
        $("#naoauditTab6ModalHeaderLabel").html("нэмэх");
        $("#naoauditTab6ModalInputNo").val("");
        $('#naoauditTab6ModalInputName').val("");
    });
    function showEditNaoauditTab6Modal(el) {
        $("#naoauditTab6ModalHeaderLabel").html("засах");
        $('#naoAuditType2ID').text($(el).closest('tr').find('td:eq(0)').html());
        $('#naoauditTab6ModalInputNo').val($(el).closest('tr').find('td:eq(1)').text());
        $('#naoauditTab6ModalInputName').val($(el).closest('tr').find('td:eq(2)').text());
    }
    function showDeleteNaoauditTab6Modal(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteScalar",
            data: '{qry:"SELECT COUNT(ID) FROM TBL_AUDIT_ISSUE WHERE AUDIT_NAO_TYPE2_ID=' + $(el).closest('tr').find('td:eq(0)').html() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    if (arrMsg[1] != "0") {
                        alert("Сонгосон зөвлөмжийн төрөлд хамааралтай зөвлөмж орсон тул устгах боломжгүй байна!");
                    }
                    else {
                        $.SmartMessageBox({
                            title: "Анхааруулга!",
                            content: "Сонгосон зөвлөмжийн төрөлийг устгах уу?",
                            buttons: '[Үгүй][Тийм]'
                        }, function (ButtonPressed) {
                            if (ButtonPressed === "Тийм") {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"DELETE FROM TBL_AUDIT_NAO_TYPE2 WHERE ID=' + $(el).closest('tr').find('td:eq(0)').text() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        var varMsg = msg.d;
                                        var arrMsg = varMsg.split("~");
                                        if (arrMsg[0] == "0") { $('#naoauditTab6Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindTab6Datatable();
                                            $('#naoauditTab6Modal').modal('hide');
                                            $.smallBox({
                                                title: "Сонгосон зөвлөмжийн төрөл",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай устгагдлаа...</i>",
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
    $('#naoauditTab6ModalForm').submit(function (e) {
        if (!$('#naoauditTab6ModalInputNo').valid() || !$('#naoauditTab6ModalInputName').valid()) {
            e.preventDefault();
        }
        else {
            var isUpdate = "";
            if ($("#naoauditTab6ModalHeaderLabel").html() == "засах") isUpdate = " AND ID!=" + $("#naoAuditType2ID").text();
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteScalar",
                data: '{qry:"SELECT COUNT(NO) FROM TBL_AUDIT_NAO_TYPE2 WHERE NO=' + $.trim($('#naoauditTab6ModalInputNo').val()) + isUpdate + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    var varMsg = msg.d;
                    var arrMsg = varMsg.split("~");
                    if (arrMsg[0] == "0") { $('#naoauditTab6Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                    else {
                        if (arrMsg[1] == "0") {
                            if ($("#naoauditTab6ModalHeaderLabel").html() == "нэмэх") {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"INSERT INTO TBL_AUDIT_NAO_TYPE2 (ID, NO, NAME) VALUES (TBLLASTID(\'TBL_AUDIT_NAO_TYPE2\'), ' + $.trim($('#naoauditTab6ModalInputNo').val()) + ', \'' + replaceDisplayToDatabase($.trim($('#naoauditTab6ModalInputName').val())) + '\')"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        var varMsg = msg.d;
                                        var arrMsg = varMsg.split("~");
                                        if (arrMsg[0] == "0") { $('#naoauditTab6Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindTab6Datatable();
                                            $('#naoauditTab6Modal').modal('hide');
                                            $.smallBox({
                                                title: "Зөвлөмжийн төрөл",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
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
                            else {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"UPDATE TBL_AUDIT_NAO_TYPE2 SET NO=' + $.trim($('#naoauditTab6ModalInputNo').val()) + ', NAME=\'' + replaceDisplayToDatabase($.trim($('#naoauditTab6ModalInputName').val())) + '\' WHERE ID=' + $('#naoAuditType2ID').text() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        var varMsg = msg.d;
                                        var arrMsg = varMsg.split("~");
                                        if (arrMsg[0] == "0") { $('#naoauditTab6Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindTab6Datatable();
                                            $('#naoauditTab6Modal').modal('hide');
                                            $.smallBox({
                                                title: "Зөвлөмжийн төрөл",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай засагдлаа...</i>",
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
                        }
                        else alert($("#naoauditTab6ModalInputNo").val() + " дугаартай зөвлөмжийн төрөл орсон байна!");
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

    //google.load("visualization", "1", { packages: ["corechart"] });
    function drawChartPieChart1(arrData) {
        var data = google.visualization.arrayToDataTable(arrData);
        var options = {
            pieSliceText: 'value',
            title: 'Дотоод аудитын дүгнэлт зөвлөмжийн биелэлт',
            pieStartAngle: 100,
            width: 1100, height: 400
        };
        var chart = new google.visualization.PieChart(document.getElementById('divtogtoolTab4t1PieChart1'));
        chart.draw(data, options);
    }

    //loadScript("js/plugin/bootstrap-wizard/jquery.bootstrap.wizard.min.js", runBootstrapWizard);
    function runBootstrapWizard() {
        var $validatorIssue = $("#naoauditTab1ModalForm").validate({
            rules: {
                naoauditTab1ModalSelectNaoType: {
                    required: true,
                    min: 1
                },
                naoauditTab1ModalSelectNaoType2: {
                    required: true,
                    min: 1
                },
                naoauditTab1ModalInputNo: {
                    required: true,
                    number: true,
                    maxlength: 3
                },
                naoauditTab1ModalInputName: {
                    required: true,
                    maxlength: 1000
                }
            },
            messages: {
                naoauditTab1ModalSelectNaoType: {
                    required: "Тайлангийн төрөл заавал сонгоно уу",
                    min: "Тайлангийн төрөл заавал сонгоно уу"
                },
                naoauditTab1ModalSelectNaoType2: {
                    required: "Зөвлөмжийн төрөл заавал сонгоно уу",
                    min: "Зөвлөмжийн төрөл заавал сонгоно уу"
                },
                naoauditTab1ModalInputNo: {
                    required: "Дугаар заавал оруулна уу",
                    number: "Дугаар зөвхөн тоо орно",
                    maxlength: "Дугаар уртдаа 3 тэмдэгт авна"
                },
                naoauditTab1ModalInputName: {
                    required: "Хэлэлцсэн асуудал заавал оруулна уу",
                    maxlength: "Хэлэлцсэн асуудал уртдаа 1000 тэмдэгт авна"
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
        var $validatorDecision = $("#naoauditTab2ModalForm").validate({
            rules: {
                naoauditTab2ModalIssue: {
                    required: true,
                    min: 1
                },
                naoauditTab2ModalInputNo: {
                    required: true,
                    number: true,
                    maxlength: 3
                },
                naoauditTab2ModalInputName: {
                    required: true,
                    maxlength: 1000
                },
                naoauditTab2ModalSelect2Gazarlist: {
                    required: true
                }
            },
            messages: {
                naoauditTab2ModalIssue: {
                    required: "Зөвлөмж заавал сонгоно уу",
                    min: "Зөвлөмж заавал сонгоно уу"
                },
                naoauditTab2ModalInputNo: {
                    required: "Дугаар заавал оруулна уу",
                    number: "Дугаар зөвхөн тоо орно",
                    maxlength: "Дугаар уртдаа 3 тэмдэгт авна"
                },
                naoauditTab2ModalInputName: {
                    required: "Хэрэгжүүлэх арга хэмжээ заавал оруулна уу",
                    maxlength: "Хэрэгжүүлэх арга хэмжээ уртдаа 1000 тэмдэгт авна"
                },
                naoauditTab2ModalSelect2Gazarlist: "Хариуцах газраа заавал сонгоно уу"
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
        var $validatorModalNaoAuditType = $("#naoauditTab5ModalForm").validate({
            rules: {
                naoauditTab5ModalInputNo: {
                    required: true,
                    number: true,
                    maxlength: 3
                },
                naoauditTab5ModalInputName: {
                    required: true,
                    maxlength: 1000
                }
            },
            messages: {
                naoauditTab5ModalInputNo: {
                    required: "Дугаар заавал оруулна уу",
                    number: "Дугаар зөвхөн тоо орно",
                    maxlength: "Дугаар уртдаа 3 тэмдэгт авна"
                },
                naoauditTab5ModalInputName: {
                    required: "Тайлангийн төрөл заавал оруулна уу",
                    maxlength: "Тайлангийн төрөл уртдаа 1000 тэмдэгт авна"
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
        var $validatorModalNaoAuditType2 = $("#naoauditTab6ModalForm").validate({
            rules: {
                naoauditTab6ModalInputNo: {
                    required: true,
                    number: true,
                    maxlength: 3
                },
                naoauditTab6ModalInputName: {
                    required: true,
                    maxlength: 1000
                }
            },
            messages: {
                naoauditTab6ModalInputNo: {
                    required: "Дугаар заавал оруулна уу",
                    number: "Дугаар зөвхөн тоо орно",
                    maxlength: "Дугаар уртдаа 3 тэмдэгт авна"
                },
                naoauditTab6ModalInputName: {
                    required: "Зөвлөмжийн төрөл заавал оруулна уу",
                    maxlength: "Зөвлөмжийн төрөл уртдаа 1000 тэмдэгт авна"
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

    $('#naoauditImplDelete').click(function () {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Та биелэлт устгахдаа итгэлтэй байна уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/WSOracleExecuteNonQuery",
                    data: '{qry:"DELETE FROM TBL_AUDIT_IMPL WHERE AUDIT_DECISION_ID=' + $("#decisionTab3ID").text() + ' AND YR=' + $('#naoauditTab3SelectYear option:selected').val() + ' AND QRTR=' + $('#naoauditTab3SelectQuarter option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        if (msg.d == "0") window.location = "../#pg/error500.aspx";
                        else {
                            CKEDITOR.instances.naoauditTab3ImplModalImpl.setData("");
                            $("#naoauditTab3ImplModalCharLength").text("0");
                            $('#naoauditTab3Datatable > tbody  > tr').each(function () {
                                if ($('td:eq(0)', this).html() == $('#decisionTab3ID').text()) {
                                    $('td:eq(4)', this).html($.trim(CKEDITOR.instances.naoauditTab3ImplModalImpl.getData()));
                                    $('td:eq(5)', this).find('img').attr("src", "../img/red-circle.png");
                                    $('td:eq(5)', this).find('img').attr("alt", "Биелэлт оруулах");
                                    return false;
                                }
                            });
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
    $('#naoauditImplDownload').click(function () {
        var impl = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteScalar",
            data: '{qry:"SELECT IMPL FROM TBL_AUDIT_IMPL WHERE YR=' + $('#naoauditTab3SelectYear option:selected').val() + ' AND QRTR=' + (parseInt($('#naoauditTab3SelectQuarter option:selected').val()) - 1) + ' AND AUDIT_DECISION_ID=' + $('#decisionTab3ID').text() + '"}',
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
                        data: '{qry:"SELECT IMPL1 FROM TBL_AUDIT_IMPL WHERE YR=' + $('#naoauditTab3SelectYear option:selected').val() + ' AND QRTR=' + (parseInt($('#naoauditTab3SelectQuarter option:selected').val()) - 1) + ' AND AUDIT_DECISION_ID=' + $('#decisionTab3ID').text() + '"}',
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
                                    data: '{qry:"SELECT IMPL2 FROM TBL_AUDIT_IMPL WHERE YR=' + $('#naoauditTab3SelectYear option:selected').val() + ' AND QRTR=' + (parseInt($('#naoauditTab3SelectQuarter option:selected').val()) - 1) + ' AND AUDIT_DECISION_ID=' + $('#decisionTab3ID').text() + '"}',
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
                                                data: '{qry:"SELECT IMPL3 FROM TBL_AUDIT_IMPL WHERE YR=' + $('#naoauditTab3SelectYear option:selected').val() + ' AND QRTR=' + (parseInt($('#naoauditTab3SelectQuarter option:selected').val()) - 1) + ' AND AUDIT_DECISION_ID=' + $('#decisionTab3ID').text() + '"}',
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
                                                            data: '{qry:"SELECT IMPL4 FROM TBL_AUDIT_IMPL WHERE YR=' + $('#naoauditTab3SelectYear option:selected').val() + ' AND QRTR=' + (parseInt($('#naoauditTab3SelectQuarter option:selected').val()) - 1) + ' AND AUDIT_DECISION_ID=' + $('#decisionTab3ID').text() + '"}',
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
                                                                        data: '{qry:"SELECT IMPL5 FROM TBL_AUDIT_IMPL WHERE YR=' + $('#naoauditTab3SelectYear option:selected').val() + ' AND QRTR=' + (parseInt($('#naoauditTab3SelectQuarter option:selected').val()) - 1) + ' AND AUDIT_DECISION_ID=' + $('#decisionTab3ID').text() + '"}',
                                                                        contentType: "application/json; charset=utf-8",
                                                                        dataType: "json",
                                                                        success: function (msg) {
                                                                            var varMsg = msg.d;
                                                                            var arrMsg = varMsg.split("~");
                                                                            if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                                                                            else {
                                                                                impl += arrMsg[1];
                                                                                CKEDITOR.instances.naoauditTab3ImplModalImpl.setData(replaceDatabaseToDisplay(impl));
                                                                                $('#naoauditTab3ImplModalCharLength').text(impl.length);
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
    $('.datepicker').datepicker({
        changeMonth: false,
        changeYear: false,
        dateFormat: 'yy-mm-dd',
        prevText: '<i class="fa fa-chevron-left"></i>',
        nextText: '<i class="fa fa-chevron-right"></i>'
    });
</script>
