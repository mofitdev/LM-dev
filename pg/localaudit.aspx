<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="localaudit.aspx.cs" Inherits="LMWebApp.pg.localaudit" %>
<style type="text/css">
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
    <span>> Дотоод аудитын зөвлөмж</span>
    </h1>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
            <ul class="nav nav-tabs bordered">
                <li id="localauditTab1Li" runat="server" class="active">
                    <a data-toggle="tab" href="#localauditTab1">
                        Хэлэлцсэн асуудал
                    </a>
                </li>
                <li id="localauditTab2Li" runat="server">
                    <a data-toggle="tab" href="#localauditTab2">
                        <i class="fa fa-fw fa-lg fa-file-text "></i>
                        Гарсан шийдвэр
                    </a>
                </li>
                <li id="localauditTab3Li" runat="server">
                    <a data-toggle="tab" href="#localauditTab3">
                        <i class="fa fa-fw fa-lg fa-bar-chart-o "></i>
                        Биелэлт | Үнэлгээ
                    </a>
                </li>
                <li id="localauditTab4Li" runat="server">
                    <a data-toggle="tab" href="#localauditTab4">
                        <i class="fa fa-fw fa-lg fa-file-text "></i>
                        Тайлан
                    </a>
                </li>
            </ul>
            <div id="localauditTabContent" class="tab-content">
                <div id="localauditTab1" runat="server" class="tab-pane active">
                    <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> <i class="fa fa-table"></i></span>
                            <h2><span id="localauditCurrentYear1" runat="server">0000</span> оны ДАЗ-ын хуралд хэлэлцсэн асуудал </h2>
                            <div class="widget-toolbar">
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="localauditTab1SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div> 
                            </div>
                        </header>
                        <div>
                            <div id="divlocalauditTab1Add" runat="server" class="Colvis TableTools"  style="right:125px; top:5px; z-index:5;">
                                <button id="localauditTab1Add" runat="server" class="ColVis_Button TableTools_Button ColVis_MasterButton btn btn btn-primary btn-sm" data-target="#localauditTab1Modal" data-toggle="modal"><i class="fa fa-plus"></i> Нэмэх</button>
                            </div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div id="loaderTab1" class="search-background">
                                <label>
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                                </label>
                            </div>
                            <div id="localauditTab1DatatableDiv" class="widget-body no-padding">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div id="localauditTab2" runat="server" class="tab-pane">
                    <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                            <h2><span id="localauditCurrentYear2" runat="server">0000</span> оны ДАЗ-ын хурлаас гарсан шийдвэр</h2>
                            <div class="widget-toolbar">
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="localauditTab2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div> 
                            </div>
                        </header>
                        <div>
                            <div id="divlocalauditTab2Add" runat="server" class="Colvis TableTools"  style="right:270px; top:5px; z-index:5;">
                                <button id="localauditTab2Add" runat="server" class="ColVis_Button TableTools_Button ColVis_MasterButton btn btn btn-primary btn-sm" data-target="#localauditTab2Modal" data-toggle="modal"><i class="fa fa-plus"></i> Нэмэх</button>
                            </div>
                            <div class="Colvis TableTools" style="right: 125px;top: 5px;z-index: 5;width: 85px;"><select id="localauditTab2SelectGazar" name="localauditTab2SelectGazar" class="form-control" style="padding:0 0; height:32px;"></select></div>
                            <div class="Colvis TableTools" style="right:220px; top:5px; z-index:5; margin-top:7px;"><label>Газар: </label></div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div id="loaderTab2" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="localauditTab2DatatableDiv" class="widget-body no-padding">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div id="localauditTab3" runat="server" class="tab-pane">
                    <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                            <h2><span id="localauditCurrentYear3" runat="server">0000</span> оны <span id="localauditCurrentQuarter1" runat="server">00</span> улиралын ДАЗ-ын хурлаас гарсан шийдвэрийн биелэлт</h2>
                            <div class="widget-toolbar">
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="localauditTab3SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div> 
                            </div>
                            <div class="widget-toolbar">
                                <div class="btn-group options" style="margin-right:0px !important;">
                                    <select id="localauditTab3SelectQuarter" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">улирал 1</option><option value="2">улирал 2</option><option value="3">улирал 3</option><option value="4">улирал 4</option></select>
                                </div> 
                            </div>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right: 125px;top: 5px;z-index: 5;width: 85px;"><select id="localauditTab3SelectGazar" name="localauditTab3SelectGazar" class="form-control" style="padding:0 0; height:32px;"></select></div>
                            <div class="Colvis TableTools" style="right:220px; top:5px; z-index:5; margin-top:7px;"><label>Газар: </label></div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div class="Colvis TableTools" style="left:240px; top:0px; z-index:5; margin-top:2px; width: 170px;">
                                <img id="localauditTab3ClickImpl1" src="../img/green-circle.png" width="15" style="cursor:pointer;" />Биелэлт тайлагнасан<br />
                                <img id="localauditTab3ClickImpl0" src="../img/red-circle.png" width="15" style="cursor:pointer;" />Биелэлт тайлагнаагүй
                            </div>
                            <div id="loaderTab3" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="localauditTab3DatatableDiv" class="widget-body no-padding">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div id="localauditTab4" runat="server" class="tab-pane">
                    <ul class="nav nav-tabs bordered">
                        <li class="active">
                            <a data-toggle="tab" href="#localauditTab4t1">Тайлан 1</a>
                        </li>
                        <li>
                            <a data-toggle="tab" href="#localauditTab4t2">Тайлан 2</a>
                        </li>
                    </ul>
                    <div id="localauditTab4Content" runat="server" class="tab-content">
                        <div id="localauditTab4t1" class="tab-pane active">
                            <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                <div style="width:70%; float:left;">
                                    <div style="width:125px; float:left; margin-right:10px;"><select id="localauditTab4t1SelectQuarter" name="localauditTab4t1SelectQuarter" runat="server" class="form-control" style="padding:1px"><option value="1">улирал 1</option><option value="2">улирал 2</option><option value="3">улирал 3</option><option value="4">улирал 4</option></select></div>
                                    <div style="width:60px; float:left; margin-right:10px;"><select id="localauditTab4t1SelectYear" name="localauditTab4t1SelectYear" runat="server" class="form-control" style="padding:1px"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option></select></div>
                                </div>
                                <div style="text-align:right; width:30%; float:left;">
                                    <img id="localauditTab4t1ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" title="PDF руу татах" onclick="exportPdf('#divlocalauditTab4t1')" />
                                    <img id="localauditTab4t1ExportWord" src="../img/word-icon.png" style="cursor:pointer;" title="Word руу татах" onclick="exportWord('#divlocalauditTab4t1')"/>
                                    <img id="localauditTab4t1ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" title="Excel руу татах" onclick="exportExcel('#divlocalauditTab4t1')"/>
                                    <button id="localauditTab4t1Print" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divlocalauditTab4t1')"><span class="fa fa-print"></span> Хэвлэх </button>
                                    <button id="localauditTab4t1Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                                </div>
                            </div>
                            <div id="loaderTab4t1" class="search-background">
                                <label>
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </label>
                            </div> 
                            <div id="divlocalauditTab4t1" runat="server" class="reports" style="margin:0 10px 10px 10px; font-size: 14px;">     
                                <div style="text-align:center; font-weight:bold;">
                                    ДОТООД АУДИТЫН ХОРООНЫ ХУРЛААС ГАРГАСАН ЗӨВЛӨМЖИЙН ХЭРЭГЖИЛТЭД ДҮН ШИНЖИЛГЭЭ ХИЙСЭН ТУХАЙ ТАНИЛЦУУЛГА
                                </div>                   
                                <div style="text-align:right; margin:0; font-weight:bold;">
                                    <label id="divtogtoolTab4t1Year1" runat="server" style="font-weight:bold;">0000</label> оны <label id="divtogtoolTab4t1Quarter1" runat="server" style="font-weight:bold;">00</label> улирал
                                </div>
                                <div style="text-align:left;">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    Дотоод аудитын хороо 
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
                                    Дотоод аудитын хорооноос өгөгдсөн зөвлөмжийн хэрэгжилтийн байдалд хяналт-шинжилгээ, үнэлгээ хийхэд, зөвлөмжийн хэрэгжилт дундажаар 
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
                        <div id="localauditTab4t2" class="tab-pane">
                            <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                <div style="width:70%; float:left;">
                                    <div style="width:125px; float:left; margin-right:10px;"><select id="localauditTab4t2SelectQuarter" name="localauditTab4t2SelectQuarter" runat="server" class="form-control" style="padding:1px"><option value="1">улирал 1</option><option value="2">улирал 2</option><option value="3">улирал 3</option><option value="4">улирал 4</option></select></div>
                                    <div style="width:60px; float:left; margin-right:10px;"><select id="localauditTab4t2SelectYear" name="localauditTab4t2SelectYear" runat="server" class="form-control" style="padding:1px"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option></select></div>
                                </div>
                                <div style="text-align:right; width:30%; float:left;">
                                    <img id="localauditTab4t2ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" title="PDF руу татах" onclick="exportPdf('#divlocalauditTab4t2')" />
                                    <img id="localauditTab4t2ExportWord" src="../img/word-icon.png" style="cursor:pointer;" title="Word руу татах" onclick="exportWord('#divlocalauditTab4t2')"/>
                                    <img id="localauditTab4t2ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" title="Excel руу татах" onclick="exportExcel('#divlocalauditTab4t2')"/>
                                    <button id="localauditTab4t2Print" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divlocalauditTab4t2')"><span class="fa fa-print"></span> Хэвлэх </button>
                                    <button id="localauditTab4t2Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                                </div>
                            </div>
                            <div id="loaderTab4t2" class="search-background">
                                <label>
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </label>
                            </div>
                            <div id="divlocalauditTab4t2" runat="server" class="reports" style="margin:0 10px 10px 10px; font-size: 14px;">  
                                <div style="text-align:center; font-weight:bold;">
                                    Дотоод аудитын хорооны  хурлаар хэлэлцэж, протоколоор өгсөн үүрэг даалгавар, зөвлөмжийн хэрэгжилт ( <label id="divtogtoolTab4t2Year1" runat="server" style="font-weight:bold;">0000</label> оны <label id="divtogtoolTab4t2Quarter1" runat="server" style="font-weight:bold;">00</label> дугаар улирлын байдлаар)
                                </div>
                                <div id="divtogtoolTab4t2Datatable1" runat="server" style="display:block;"></div>  
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </article>
    </div>
</section>
<div id="localauditTab1Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="localauditTab1ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >ДАЗ-ын хуралд хэлэлцсэн асуудал&nbsp;<span id="localauditTab1ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <div class="col-md-12">
                            <div id="issueID" class="form-group hide"></div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <div class="col-md-3">
                                    <label>Он</label> 
                                    <select id="localauditTab1ModalSelectYear" runat="server" class="form-control"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div>
                                <div class="col-md-9">
                                    <label>Хурлаар хэлэлцсэн огноо</label>
                                    <div class="input-group">
                                        <input type="text" id="localauditTab1ModalInputDate" name="localauditTab1ModalInputDate" placeholder="Огноо" class="form-control datepicker datepickerUpdate" >
                                        <span class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </span>
                                    </div> 
                                </div>                                  
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label>Дугаар</label>
                                <input class="form-control" id="localauditTab1ModalInputNo" name="localauditTab1ModalInputNo" maxlength="3" type="text" placeholder="Дугаар">
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label>ДАЗ-ын хуралд хэлэлцсэн асуудал</label>
                                <textarea class="form-control" id="localauditTab1ModalInputName" name="localauditTab1ModalInputName" placeholder="Хэлэлцсэн асуудал" rows="6" maxlength="1000"></textarea>
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label>Хавсралт файл</label>
                                <div id="localauditTab1ModalAttachmentTableDiv" class="col-sm-12" style="padding:0px;">
                                    <table id="localauditTab1ModalAttachmentTable" border="0" cellpadding="0" cellspacing="0" style="font-size:14px;">
                                        <tbody>
                                            
                                        </tbody>
                                    </table>
                                </div>
                                <div id="localauditTab1ModalAttachmentInputDiv" class="col-md-12" style="padding:0px;">
									<input type="file" class="btn btn-default" id="localauditTab1ModalAttachmentInput" onchange="localauditTab1ModalAttachmentAddFile(this)"/>
								</div>
                            </div> 
                        </div>
                    </fieldset>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                    <button id="localauditTab1ModalBtnSave" class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
                </div>
            </form>
        </div>
    </div>
</div>
<div id="localauditTab2Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="localauditTab2ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >ДАЗ-ын хурлаас гарсан шийдвэр&nbsp;<span id="localauditTab2ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <div class="col-md-12">
                            <div id="decisionID" class="form-group hide"></div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label>Хуралдсан он</label>
                                <select id="localauditTab2ModalYear" name="localauditTab2ModalYear" class="form-control">
                                    <option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option>
                                </select>
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label>ДАЗ-ын хуралд хэлэлцсэн асуудал</label>
                                <select id="localauditTab2ModalIssue" name="localauditTab2ModalIssue" class="form-control" disabled></select>
                                <input id="localauditTab2ModalIssueLoader" class="form-control ui-autocomplete-loading" placeholder="" type="text" style="display:none;">
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label>Дугаар</label>
                                <input class="form-control" id="localauditTab2ModalInputNo" name="localauditTab2ModalInputNo" maxlength="3" type="text" placeholder="Дугаар">
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label>ДАЗ-ын хурлаас гарсан шийдвэр</label>
                                <textarea class="form-control" id="localauditTab2ModalInputName" name="localauditTab2ModalInputName" placeholder="Гарсан шийдвэр" rows="6" maxlength="1000"></textarea>
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
							    <label>Хариуцах газар</label>
                                <div id="divlocalauditTab2ModalSelect2Gazarlist">

                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                    <button id="localauditTab2ModalBtnSave" class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
                </div>
            </form>
        </div>
    </div>
</div>
<div id="localauditTab3Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
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
                            Он: <label id="localauditImplModalCurrentYr" runat="server"></label>&nbsp;|&nbsp;<label id="localauditImplModalCurrentQrtr" runat="server"></label>
                        </div> 
                        <div class="form-group" style="height:auto;">
                            Хэлэлцсэн асуудал: <label id="localauditTab3ModalLabelIssue"></label><br />
                            Гарсан шийдвэр: <label id="localauditTab3ModalLabelDecision"></label><br />
                            Хэрэгжүүлэх газар: <label id="localauditTab3ModalLabelGazar"></label>
                        </div>
                        <div class="form-group" style="height:20px;">
                            <label class="col-md-2 control-label">Биелэлт</label>
                        </div>
                        <div class="form-group" style="margin:0px; display:block; overflow:hidden;">
                            <div class="col-md-12"> 
                                <div style="width:100%; display: block; overflow: hidden; padding-bottom: 5px;">
                                    <div style="width:15%; float:right; text-align:right;">
                                        Тэмдэгт: <label id="localauditTab3ImplModalCharLength" runat="server">0</label>/12000
                                    </div>
                                    <div style="width:17%; float:right; text-align:right;">
                                        <button id="localauditImplDelete" type="button" class="btn btn-labeled btn-danger" style="font-size: 12px; margin-top: -5px;">
                                            <span class="btn-label" style="padding: 3px 7px 3px 5px;">
                                                <i class="fa fa-trash-o"></i>
                                            </span>Биелэлт устгах
                                        </button>
                                    </div> 
                                    <div style="width:24%; float:right; text-align:right;">
                                        <button id="localauditImplDownload" type="button" class="btn btn-labeled btn-warning" style="font-size: 12px; margin-top: -3px;">
                                            <span class="btn-label" style="padding: 3px 7px 3px 5px; width: 21px; height: 21px;">
                                                <i class="glyphicon glyphicon-download-alt"></i>
                                            </span>Өмнөх улиралаас татах
                                        </button>
                                    </div> 
                                </div>
                                <textarea id="localauditTab3ImplModalImpl" name="localauditTab3ImplModalImpl"></textarea>
                                <script>
                                    CKEDITOR.replace('localauditTab3ImplModalImpl', {
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

                                    var editor = CKEDITOR.instances.localauditTab3ImplModalImpl;
                                    editor.on('key', function (evt) {
                                        $("#localauditTab3ImplModalCharLength").text(replaceDisplayToDatabase($.trim(evt.editor.getData())).length);
                                    }, editor.element.$);
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                <button id="localauditTab3ImplSave" class="btn btn-success btn-sm" type="button"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    //pageSetUp();
    var globalAjaxVar = null;
    var pagefunction = function () {
        showLoader('loaderTab1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/localaudit_localauditTab1Datatable",
            data: '{yr:"' + $("#localauditTab1SelectYear option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#localauditTab1DatatableDiv").html(msg.d);
                hideLoader('loaderTab1');
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/localaudit_localauditTab2ForDll",
                    data: '{yr:"' + $('#localauditTab2SelectYear option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        $("#localauditTab2SelectGazar").html(msg.d);
                        showLoader('loaderTab2');
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "ws.aspx/localaudit_localauditTab2Datatable",
                            data: '{yr:"' + $("#localauditTab2SelectYear option:selected").val() + '", gazar:"' + $("#localauditTab2SelectGazar option:selected").val() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                $("#localauditTab2DatatableDiv").html(msg.d);
                                hideLoader('loaderTab2');
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/localaudit_localauditTab2ForDll",
                                    data: '{yr:"' + $('#localauditTab3SelectYear option:selected').val() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        $("#localauditTab3SelectGazar").html(msg.d);
                                        showLoader('loaderTab3');
                                        globalAjaxVar = $.ajax({
                                            type: "POST",
                                            url: "ws.aspx/localaudit_localauditTab3Datatable",
                                            data: '{yr:"' + $("#localauditTab3SelectYear option:selected").val() + '", qrtr:"' + $("#localauditTab3SelectQuarter option:selected").val() + '", gazar:"' + $("#localauditTab3SelectGazar option:selected").val() + '"}',
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function (msg) {
                                                $("#localauditTab3DatatableDiv").html(msg.d);
                                                hideLoader('loaderTab3');
                                                var selectedYear = $("#localauditTab4t1SelectYear option:selected").val();
                                                var selectedQuarter = $("#localauditTab4t1SelectQuarter option:selected").val();
                                                showLoader('loaderTab4t1');
                                                var qrtrqry = "";
                                                if ($('#localauditTab4t1SelectQuarter option:selected').val() == "1") qrtrqry = " AND (TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 1)";
                                                else if ($('#localauditTab4t1SelectQuarter option:selected').val() == "2") qrtrqry = " AND (TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 1 OR TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 2)";
                                                else if ($('#localauditTab4t1SelectQuarter option:selected').val() == "3") qrtrqry = " AND (TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 1 OR TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 2 OR TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 3)";
                                                else if ($('#localauditTab4t1SelectQuarter option:selected').val() == "4") qrtrqry = " AND (TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 1 OR TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 2 OR TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 3 OR TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 4)";
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
                                                            //alert($("#localauditTab4t1SelectYear option:selected").val());
                                                            globalAjaxVar = $.ajax({
                                                                type: "POST",
                                                                url: "ws.aspx/localaudit_localauditTab4T1Datatable1",
                                                                data: '{yr:"' + selectedYear + '", qrtr:"' + selectedQuarter + '"}',
                                                                contentType: "application/json; charset=utf-8",
                                                                dataType: "json",
                                                                success: function (msg) {
                                                                    $("#divtogtoolTab4t1Datatable1").html(msg.d);
                                                                    globalAjaxVar = $.ajax({
                                                                        type: "POST",
                                                                        url: "ws.aspx/localaudit_localauditTab4T1Datatable2",
                                                                        data: '{yr:"' + selectedYear + '", qrtr:"' + selectedQuarter + '"}',
                                                                        contentType: "application/json; charset=utf-8",
                                                                        dataType: "json",
                                                                        success: function (msg) {
                                                                            $("#divtogtoolTab4t1Datatable2").html(msg.d);
                                                                            dataBindTab4T1Data0();
                                                                            hideLoader('loaderTab4t1');
                                                                            showLoader('loaderTab4t2');
                                                                            globalAjaxVar = $.ajax({
                                                                                type: "POST",
                                                                                url: "ws.aspx/localaudit_localauditTab4T2Datatable1",
                                                                                data: '{yr:"' + $("#localauditTab4t2SelectYear option:selected").val() + '", qrtr:"' + $("#localauditTab4t2SelectQuarter option:selected").val() + '"}',
                                                                                contentType: "application/json; charset=utf-8",
                                                                                dataType: "json",
                                                                                success: function (msg) {
                                                                                    //$("#divtogtoolTab4t2Datatable1").html(replaceDatabaseToDisplay(msg.d));
                                                                                    $("#divtogtoolTab4t2Datatable1").html(msg.d);
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
    var pagedestroy = function () {
        if (globalAjaxVar != null) {
            globalAjaxVar.abort();
            globalAjaxVar = null;
        }
    }
    pagefunction();
    //$(document).ready(function () {
    //    dataBindTab1Datatable();
    //    localauditTab2SetFirstControls();
    //    localauditTab3SetFirstControls();
    //    //dataBindTab2GazarDll();
    //    //dataBindTab2Datatable();
    //    //dataBindTab3Datatable();
    //    dataBindTab4T1Data1();
    //    dataBindTab4T2Data1();
    //});
    //Tab1
    function dataBindTab1Datatable() {
        showLoader('loaderTab1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/localaudit_localauditTab1Datatable",
            data: '{yr:"' + $("#localauditTab1SelectYear option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#localauditTab1DatatableDiv").html(msg.d);
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
    $("#localauditTab1Add").click(function () {
        $('#localauditTab1ModalSelectYear').val($('#localauditTab1SelectYear option:selected').val());
        $("#localauditTab1ModalHeaderLabel").html("нэмэх");
        $("#localauditTab1ModalInputDate").val("");
        $("#localauditTab1ModalInputNo").val("");
        $('#localauditTab1ModalInputName').val("");
        $('#localauditTab1ModalAttachmentTable').find('tbody').html("");
        $('#localauditTab1ModalAttachmentInput').val("");
        $('#localauditTab1ModalAttachmentTableDiv').css("display", "none");
        $('#localauditTab1ModalAttachmentInputDiv').css("display", "block");
    });
    function showEditLocalauditTab1Modal(el) {
        $('#localauditTab1ModalSelectYear').val($('#localauditTab1SelectYear option:selected').val());
        $("#localauditTab1ModalHeaderLabel").html("засах");
        $('#issueID').text($(el).closest('tr').find('td:eq(0)').html());
        $('#localauditTab1ModalInputDate').val($(el).closest('tr').find('td:eq(2)').text());
        $('#localauditTab1ModalInputNo').val($(el).closest('tr').find('td:eq(3)').text());
        $('#localauditTab1ModalInputName').val($(el).closest('tr').find('td:eq(4)').text());
        if ($(el).closest('tr').find('td:eq(5) a').length != 0) {
            $('#localauditTab1ModalAttachmentTable').find('tbody').html("<tr><td><a class=\"btn btn-link btn-xs\" href=\"" + $(el).closest('tr').find('td:eq(5)').find('a').attr('href') + "\" style=\"padding:0px; border:none;\" download>" + $(el).closest('tr').find('td:eq(5)').find('a').attr('href').split('/').pop() + "</a></td><td style=\"padding-left:10px\"><a href=\"javascript:void(0);\" class=\"btn btn-link btn-xs\" onclick=\"localAuditTab1ModalAttachmentRemoveRow(this)\"><i class=\"fa fa-trash-o\"></i> устгах</a></td></tr>");
            $('#localauditTab1ModalAttachmentInput').val("");
            $('#localauditTab1ModalAttachmentTableDiv').css("display", "block");
            $('#localauditTab1ModalAttachmentInputDiv').css("display", "none");
        }
        else {
            $('#localauditTab1ModalAttachmentTable').find('tbody').html("");
            $('#localauditTab1ModalAttachmentInput').val("");
            $('#localauditTab1ModalAttachmentTableDiv').css("display", "none");
            $('#localauditTab1ModalAttachmentInputDiv').css("display", "block");
        }
    }
    function showDeleteLocalauditTab1Modal(el) {
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
                        alert("Энэ хэлэлцсэн асуудалд хамааралтай шийдвэр орсон тул устгах боломжгүй байна!");
                    }
                    else {
                        $.SmartMessageBox({
                            title: "Анхааруулга!",
                            content: "\"" + $(el).closest('tr').find('td:eq(2)').text() + " " + $(el).closest('tr').find('td:eq(3)').text() + ". " + $(el).closest('tr').find('td:eq(4)').text() + "\" хэлэлцсэн асуудлыг устгах уу?",
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
                                        if (arrMsg[0] == "0") { $('#localauditTab1Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindTab1Datatable();
                                            $('#localauditTab1Modal').modal('hide');
                                            $.smallBox({
                                                title: "ДАЗ-ын хуралд хэлэлцсэн асуудал",
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
                                //globalAjaxVar = $.ajax({
                                //    type: "POST",
                                //    url: "ws.aspx/TOGTOOL_DELETE",
                                //    data: '{P_TOGTOOL_ID:"' + $(el).closest('tr').find('td:eq(0)').html() + '"}',
                                //    contentType: "application/json; charset=utf-8",
                                //    dataType: "json",
                                //    success: function (msg) {
                                //        if (msg.d == "0") window.location = "../#pg/error500.aspx";
                                //        else {
                                //            dataBindTab1Datatable();
                                //            $.smallBox({
                                //                title: "Сонгосон тогтоол",
                                //                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай устлаа...</i>",
                                //                color: "#659265",
                                //                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                //                timeout: 500
                                //            });
                                //        }
                                //    },
                                //failure: function (response) {
                                //    alert('FAILURE: ' + response.d);
                                //},
                                //error: function (xhr, status, error) {
                                //    var err = eval("(" + xhr.responseText + ")");
                                //    if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                //    else window.location = '../#pg/error500.aspx';
                                //}
                                //});
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
    function localauditTab1ModalAttachmentAddFile(el) {
        var uploadfiles = $(el).get(0);
        var uploadedfiles = uploadfiles.files;
        var fromdata = new FormData();
        for (var i = 0; i < uploadedfiles.length; i++) {
            fromdata.append(uploadedfiles[i].name, uploadedfiles[i]);
        }
        var choice = {};
        choice.url = "pg/LocalAuditUploadFile.ashx";
        choice.type = "POST";
        choice.data = fromdata;
        choice.contentType = false;
        choice.processData = false;
        choice.success = function (result) {
            if (result == "1") {
                $('#localauditTab1ModalAttachmentTable').find('tbody').html("<tr><td><a class=\"btn btn-link btn-xs\" href=\"../files/localaudit/" + $(el).val().split('\\').pop() + "\" style=\"padding:0px; border:none;\" download>" + $(el).val().split('\\').pop() + "</a></td><td style=\"padding-left:10px\"><a href=\"javascript:void(0);\" class=\"btn btn-link btn-xs\" onclick=\"localAuditTab1ModalAttachmentRemoveRow(this)\"><i class=\"fa fa-trash-o\"></i> устгах</a></td></tr>");
                $('#localauditTab1ModalAttachmentTableDiv').css("display", "block");
                $('#localauditTab1ModalAttachmentInputDiv').css("display", "none");
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
    function localAuditTab1ModalAttachmentRemoveRow(el) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Та устгахдаа итгэлтэй байна уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/DeleteFile",
                    data: '{filename:"~/files/localaudit/' + $(el).closest('tr').find('td:eq(0)').find('a').html() + '"}',
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
                        if ($('#localauditTab1ModalAttachmentTable tr').length == 0) {
                            $('#localauditTab1ModalAttachmentInput').val("");
                            $('#localauditTab1ModalAttachmentTableDiv').css("display", "none");
                            $('#localauditTab1ModalAttachmentInputDiv').css("display", "block");
                        }
                        else {
                            $('#localauditTab1ModalAttachmentTableDiv').css("display", "block");
                            $('#localauditTab1ModalAttachmentInputDiv').css("display", "none");
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
    $('#localauditTab1ModalForm').submit(function (e) {
        if (!$('#localauditTab1ModalInputDate').valid() || !$('#localauditTab1ModalInputNo').valid() || !$('#localauditTab1ModalInputName').valid()) {
            e.preventDefault();
        }
        else {
            var isUpdate = "";
            if ($("#localauditTab1ModalHeaderLabel").html() == "засах") isUpdate = " AND ID!=" + $("#issueID").text();
            //globalAjaxVar = $.ajax({
            //    type: "POST",
            //    url: "ws.aspx/WSOracleExecuteScalar",
            //    data: '{qry:"SELECT COUNT(NO) FROM TBL_AUDIT_ISSUE WHERE DT=\'' + $.trim($('#localauditTab1ModalInputDate').val()) + '\' AND NO=' + $.trim($('#localauditTab1ModalInputNo').val()) + isUpdate + '"}',
            //    contentType: "application/json; charset=utf-8",
            //    dataType: "json",
            //    success: function (msg) {
            //        var varMsg = msg.d;
            //        var arrMsg = varMsg.split("~");
            //        if (arrMsg[0] == "0") { $('#localauditTab1Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
            //        else {
            //            if (arrMsg[1] == "0") {
                            var filename = "none";
                            var donedate = "none";
                            if ($('#localauditTab1ModalAttachmentTable tr').length != 0) filename = $('#localauditTab1ModalAttachmentTable').find('tr').find('td').find('a').html();
                            if ($("#localauditTab1ModalHeaderLabel").html() == "нэмэх") {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"INSERT INTO TBL_AUDIT_ISSUE (ID, AUDIT_TYPE_ID, YR, DT, NO, NAME, FILE_NAME, CREATED_STAFFID, CREATED_DATE) VALUES (TBLLASTID(\'TBL_AUDIT_ISSUE\'), 1, ' + $('#localauditTab1ModalSelectYear option:selected').val() + ', \'' + $.trim($('#localauditTab1ModalInputDate').val()) + '\', ' + $.trim($('#localauditTab1ModalInputNo').val()) + ', \'' + replaceDisplayToDatabase($.trim($('#localauditTab1ModalInputName').val())) + '\', REPLACE(\'' + filename + '\',\'none\',null), ' + '<%= Session["LM_UserID"] %>' + ', sysdate)"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        var varMsg = msg.d;
                                        var arrMsg = varMsg.split("~");
                                        if (arrMsg[0] == "0") { $('#localauditTab1Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindTab1Datatable();
                                            $('#localauditTab1Modal').modal('hide');
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
                                    data: '{qry:"UPDATE TBL_AUDIT_ISSUE SET YR=' + $('#localauditTab1ModalSelectYear option:selected').val() + ', DT=\'' + $.trim($('#localauditTab1ModalInputDate').val()) + '\', NO=' + $.trim($('#localauditTab1ModalInputNo').val()) + ', NAME=\'' + replaceDisplayToDatabase($.trim($('#localauditTab1ModalInputName').val())) + '\', FILE_NAME=REPLACE(\'' + filename + '\',\'none\',null), MODIFY_STAFFID=' + '<%= Session["LM_UserID"] %>' + ', MODIFY_DATE=sysdate WHERE ID=' + $('#issueID').text() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        var varMsg = msg.d;
                                        var arrMsg = varMsg.split("~");
                                        if (arrMsg[0] == "0") { $('#localauditTab1Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindTab1Datatable();
                                            $('#localauditTab1Modal').modal('hide');
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
                        //else alert($("#localauditTab1ModalInputDate").val() + " огноо дээр \"" + $("#localauditTab1ModalInputNo").val() + "\" дугаартай хэлэлцсэн асуудал орсон байна!");
            //        }
            //    },
            //failure: function (response) {
            //    alert('FAILURE: ' + response.d);
            //},
            //error: function (xhr, status, error) {
            //    var err = eval("(" + xhr.responseText + ")");
            //    if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
            //    else window.location = '../#pg/error500.aspx';
            //}
            //});            
        }
    });
    $("#localauditTab1SelectYear").change(function () {
        dataBindTab1Datatable();
        $("#localauditCurrentYear1").text($(this).val());
    });
    //Tab2
    function localauditTab2SetFirstControls() {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/localaudit_localauditTab2ForDll",
            data: '{yr:"' + $('#localauditTab2SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#localauditTab2SelectGazar").html(msg.d);
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
    function dataBindTab2GazarDll() {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/localaudit_localauditTab2ForDll",
            data: '{yr:"' + $('#localauditTab2SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#localauditTab2SelectGazar").html(msg.d);
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
            url: "ws.aspx/localaudit_localauditTab2Datatable",
            data: '{yr:"' + $("#localauditTab2SelectYear option:selected").val() + '", gazar:"' + $("#localauditTab2SelectGazar option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#localauditTab2DatatableDiv").html(msg.d);
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
    function dataBindTab2ModalIssueList() {
        $('#localauditTab2ModalIssue').css("display", "none");
        $('#localauditTab2ModalIssueLoader').css("display", "block");
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/localaudit_localauditTab2IssueListForDDL",
            data: '{yr:"' + $('#localauditTab2ModalYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#localauditTab2ModalIssue").html(msg.d);
                $('#localauditTab2ModalIssueLoader').css("display", "none");
                $('#localauditTab2ModalIssue').css("display", "block");
                $('#localauditTab2ModalIssue').prop('disabled', false);
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
            url: "ws.aspx/localaudit_localauditTab2GazarSelec2ForDLL",
            data: '{selectedList:"' + selectedList + '", yr:"' + $('#localauditTab2ModalYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divlocalauditTab2ModalSelect2Gazarlist").html(msg.d);
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
    $("#localauditTab2Add").click(function () {
        $("#localauditTab2ModalHeaderLabel").html("нэмэх");
        $("#localauditTab2ModalYear").val($('#localauditTab2SelectYear option:selected').val());
        dataBindTab2ModalIssueList();
        $("#localauditTab2ModalInputNo").val("");
        $('#localauditTab2ModalInputName').val("");
        dataBindTab2ModalGazarlist("none");
    });
    function showEditLocalauditTab2Modal(el) {
        $("#localauditTab2ModalHeaderLabel").html("засах");
        $('#decisionID').text($(el).closest('tr').find('td:eq(0)').html());
        $("#localauditTab2ModalYear").val($(el).closest('tr').find('td:eq(1)').html());
        $("#localauditTab2ModalInputNo").val($(el).closest('tr').find('td:eq(4)').html());
        $('#localauditTab2ModalInputName').val($(el).closest('tr').find('td:eq(5)').html());
        dataBindTab2ModalGazarlist($(el).closest('tr').find('td:eq(6)').html());


        $('#localauditTab2ModalIssue').css("display", "none");
        $('#localauditTab2ModalIssueLoader').css("display", "block");
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/localaudit_localauditTab2IssueListForDDL",
            data: '{yr:"' + $('#localauditTab2ModalYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#localauditTab2ModalIssue").html(msg.d);
                $('#localauditTab2ModalIssueLoader').css("display", "none");
                $('#localauditTab2ModalIssue').css("display", "block");
                $('#localauditTab2ModalIssue').prop('disabled', false);

                $("#localauditTab2ModalIssue").val($(el).closest('tr').find('td:eq(2)').html());
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
    function showDeleteLocalauditTab2Modal(el) {
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
    $("#localauditTab2ModalYear").change(function () {
        dataBindTab2ModalIssueList();
        dataBindTab2ModalGazarlist("none");
    });
    $("#localauditTab2SelectGazar").change(function () {
        dataBindTab2Datatable();
    });
    $("#localauditTab2SelectYear").change(function () {
        localauditTab2SetFirstControls();
        //dataBindTab2Datatable();
        $("#localauditCurrentYear2").text($(this).val());
    });
    $('#localauditTab2ModalForm').submit(function (e) {
        if (!$('#localauditTab2ModalIssue').valid() || !$('#localauditTab2ModalInputNo').valid() || !$('#localauditTab2ModalInputName').valid() || !$('#localauditTab2ModalSelect2Gazarlist').valid()) {
            e.preventDefault();
        }
        else {
            var isUpdate = "";
            if ($("#localauditTab2ModalHeaderLabel").html() == "засах") isUpdate = " AND ID!=" + $("#decisionID").text();
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteScalar",
                data: '{qry:"SELECT COUNT(NO) FROM TBL_AUDIT_DECISION WHERE AUDIT_ISSUE_ID=' + $('#localauditTab2ModalIssue').val() + ' AND NO=' + $.trim($('#localauditTab2ModalInputNo').val()) + isUpdate + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    var varMsg = msg.d;
                    var arrMsg = varMsg.split("~");
                    if (arrMsg[0] == "0") { $('#localauditTab2Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                    else {
                        if (arrMsg[1] == "0") {
                            if ($("#localauditTab2ModalHeaderLabel").html() == "нэмэх") {
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/AUDIT_DECISION_INSERT",
                                    data: '{P_AUDIT_ISSUE_ID:"' + $('#localauditTab2ModalIssue').val() + '", P_NO:"' + $.trim($('#localauditTab2ModalInputNo').val()) + '", P_NAME:"' + replaceDisplayToDatabase($.trim($('#localauditTab2ModalInputName').val())) + '", P_BRANCHLIST:"' + $.trim($('#localauditTab2ModalSelect2Gazarlist').val()) + '", P_STAFFID:"' + '<%= Session["LM_UserID"] %>' + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindTab2Datatable();
                                            $('#localauditTab2Modal').modal('hide');
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
                                    data: '{P_ID:"' + $("#decisionID").text() + '", P_AUDIT_ISSUE_ID:"' + $('#localauditTab2ModalIssue').val() + '", P_NO:"' + $.trim($('#localauditTab2ModalInputNo').val()) + '", P_NAME:"' + replaceDisplayToDatabase($.trim($('#localauditTab2ModalInputName').val())) + '", P_BRANCHLIST:"' + $.trim($('#localauditTab2ModalSelect2Gazarlist').val()) + '", P_STAFFID:"' + '<%= Session["LM_UserID"] %>' + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindTab2Datatable();
                                            $('#localauditTab2Modal').modal('hide');
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
                        else alert($('#localauditTab2ModalIssue').text() + " хэлэлцсэн асуудалын хүрээнд \"" + $("#localauditTab2ModalInputNo").val() + "\" дугаартай гарсан шийдвэр орсон байна!");
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
    function localauditTab3SetFirstControls() {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/localaudit_localauditTab2ForDll",
            data: '{yr:"' + $('#localauditTab3SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#localauditTab3SelectGazar").html(msg.d);
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
    function dataBindTab3GazarDll() {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/localaudit_localauditTab2ForDll",
            data: '{yr:"' + $('#localauditTab3SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#localauditTab3SelectGazar").html(msg.d);
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
            url: "ws.aspx/localaudit_localauditTab3Datatable",
            data: '{yr:"' + $("#localauditTab3SelectYear option:selected").val() + '", qrtr:"' + $("#localauditTab3SelectQuarter option:selected").val() + '", gazar:"' + $("#localauditTab3SelectGazar option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#localauditTab3DatatableDiv").html(msg.d);
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
    $("#localauditTab3SelectYear").change(function () {
        localauditTab3SetFirstControls();
        //dataBindTab3Datatable();
        $("#localauditCurrentYear3").text($(this).val());
    });
    $("#localauditTab3SelectQuarter").change(function () {
        dataBindTab3Datatable();
        $("#localauditCurrentQuarter1").text($(this).val());
    });
    $("#localauditTab3SelectGazar").change(function () {
        dataBindTab3Datatable();
    });
    function showAddEditLocalauditTab3Modal(el) {
        $('#togtoolTab3ModalHeaderLabel').text($(el).attr('title').split(' ')[1]);
        $('#decisionTab3ID').text($(el).closest('tr').find('td:eq(0)').text());
        $('#localauditTab3ModalLabelIssue').text($('#group-id-localauditTab3Datatable_' + $(el).closest('tr').attr("data-group")).find('td').html());
        $('#localauditTab3ModalLabelDecision').text($(el).closest('tr').find('td:eq(2)').text());
        $('#localauditTab3ModalLabelGazar').text($(el).closest('tr').find('td:eq(3)').text());
        if ($('#localauditTab3SelectQuarter option:selected').val() > 1) { $('#localauditImplDownload').css('display', 'block'); }
        else { $('#localauditImplDownload').css('display', 'none'); }
        $('#localauditImplModalCurrentYr').text($('#localauditTab3SelectYear option:selected').val());
        $('#localauditImplModalCurrentQrtr').text($('#localauditTab3SelectQuarter option:selected').text());
        if ($(el).attr('title').split(' ')[1] == "оруулах") {
            CKEDITOR.instances.localauditTab3ImplModalImpl.setData("");
            $('#localauditTab3ImplModalCharLength').text("0");
        }
        else {
            var myimpl = '';
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteScalar",
                data: '{qry:"SELECT IMPL FROM TBL_AUDIT_IMPL WHERE AUDIT_DECISION_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND YR=' + $('#localauditTab3SelectYear option:selected').val() + ' AND QRTR=' + $('#localauditTab3SelectQuarter option:selected').val() + '"}',
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
                            data: '{qry:"SELECT IMPL1 FROM TBL_AUDIT_IMPL WHERE AUDIT_DECISION_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND YR=' + $('#localauditTab3SelectYear option:selected').val() + ' AND QRTR=' + $('#localauditTab3SelectQuarter option:selected').val() + '"}',
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
                                        data: '{qry:"SELECT IMPL2 FROM TBL_AUDIT_IMPL WHERE AUDIT_DECISION_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND YR=' + $('#localauditTab3SelectYear option:selected').val() + ' AND QRTR=' + $('#localauditTab3SelectQuarter option:selected').val() + '"}',
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
                                                    data: '{qry:"SELECT IMPL3 FROM TBL_AUDIT_IMPL WHERE AUDIT_DECISION_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND YR=' + $('#localauditTab3SelectYear option:selected').val() + ' AND QRTR=' + $('#localauditTab3SelectQuarter option:selected').val() + '"}',
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
                                                                data: '{qry:"SELECT IMPL4 FROM TBL_AUDIT_IMPL WHERE AUDIT_DECISION_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND YR=' + $('#localauditTab3SelectYear option:selected').val() + ' AND QRTR=' + $('#localauditTab3SelectQuarter option:selected').val() + '"}',
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
                                                                            data: '{qry:"SELECT IMPL5 FROM TBL_AUDIT_IMPL WHERE AUDIT_DECISION_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND YR=' + $('#localauditTab3SelectYear option:selected').val() + ' AND QRTR=' + $('#localauditTab3SelectQuarter option:selected').val() + '"}',
                                                                            contentType: "application/json; charset=utf-8",
                                                                            dataType: "json",
                                                                            success: function (msg) {
                                                                                var varMsg = msg.d;
                                                                                var arrMsg = varMsg.split("~");
                                                                                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                                                                                else {
                                                                                    myimpl += arrMsg[1];
                                                                                    CKEDITOR.instances.localauditTab3ImplModalImpl.setData(replaceDatabaseToDisplay(myimpl));
                                                                                    $("#localauditTab3ImplModalCharLength").text(myimpl.length);
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
    $("#localauditTab3ImplSave").click(function () {
        if ($.trim(CKEDITOR.instances.localauditTab3ImplModalImpl.getData()) == "") {
            alert("ДАЗ-ын хурлаас гарсан шийдвэрийн биелэлт заавал оруулна уу!");
        }
        else {
            if (replaceDisplayToDatabase($.trim(CKEDITOR.instances.localauditTab3ImplModalImpl.getData())).length > 12000) {
                $("#localauditTab3ImplModalCharLength").text(replaceDisplayToDatabase($.trim(CKEDITOR.instances.localauditTab3ImplModalImpl.getData())).length);
                alert("ДАЗ-ын хурлаас гарсан шийдвэрийн биелэлт уртдаа 12000 тэмдэгт авна!");
            }
            else {
                var impl = "", impl1 = "", impl2 = "", impl3 = "", impl4 = "", impl5 = "";
                impl = replaceDisplayToDatabase($.trim(CKEDITOR.instances.localauditTab3ImplModalImpl.getData())).substr(0, 2000);
                impl1 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.localauditTab3ImplModalImpl.getData())).substr(2000, 2000);
                impl2 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.localauditTab3ImplModalImpl.getData())).substr(4000, 2000);
                impl3 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.localauditTab3ImplModalImpl.getData())).substr(6000, 2000);
                impl4 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.localauditTab3ImplModalImpl.getData())).substr(8000, 2000);
                impl5 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.localauditTab3ImplModalImpl.getData())).substr(10000, 2000);
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
                        data: '{qry:"INSERT INTO TBL_AUDIT_IMPL (ID, YR, QRTR, AUDIT_DECISION_ID, IMPL, IMPL1, IMPL2, IMPL3, IMPL4, IMPL5, IMPL_CREATED_STAFFID, IMPL_CREATED_DATE, EVAL_CREATED_STAFFID, EVAL_CREATED_DATE) VALUES (TBLLASTID(\'TBL_AUDIT_IMPL\'), ' + $('#localauditTab3SelectYear option:selected').val() + ', ' + $('#localauditTab3SelectQuarter option:selected').val() + ', ' + $("#decisionTab3ID").text() + ', REPLACE(\'' + impl + '\',\'none\',null), REPLACE(\'' + impl1 + '\',\'none\',null), REPLACE(\'' + impl2 + '\',\'none\',null), REPLACE(\'' + impl3 + '\',\'none\',null), REPLACE(\'' + impl4 + '\',\'none\',null), REPLACE(\'' + impl5 + '\',\'none\',null), ' + '<%= Session["LM_UserID"] %>' + ', sysdate, ' + '<%= Session["LM_UserID"] %>' + ', sysdate)"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (msg) {
                            if (msg.d == "0") { $('#localauditTab3Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                            else {
                                $('#localauditTab3Datatable > tbody  > tr').each(function () {
                                    if ($('td:eq(0)', this).html() == $('#decisionTab3ID').text()) {
                                        $('td:eq(4)', this).find('img').attr("src", "../img/green-circle.png");
                                        $('td:eq(4)', this).find('img').attr("alt", "Биелэлт засах");
                                        return false;
                                    }
                                });
                                //$("#localauditTab3Datatable tr td:contains('" + $('#decisionTab3ID').text() + "')").parent().find("td:eq(4)").find('img').attr("src", "../img/green-circle.png");
                                //$("#localauditTab3Datatable tr td:contains('" + $('#decisionTab3ID').text() + "')").parent().find("td:eq(4)").find('img').attr("alt", "Биелэлт засах");
                                $('#localauditTab3Modal').modal('hide');
                                $.smallBox({
                                    title: "ДАЗ-ын хурлаас гарсан шийдвэрийн биелэлт",
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
                        data: '{qry:"UPDATE TBL_AUDIT_IMPL SET IMPL=REPLACE(\'' + impl + '\',\'none\',null), IMPL1=REPLACE(\'' + impl1 + '\',\'none\',null), IMPL2=REPLACE(\'' + impl2 + '\',\'none\',null), IMPL3=REPLACE(\'' + impl3 + '\',\'none\',null), IMPL4=REPLACE(\'' + impl4 + '\',\'none\',null), IMPL5=REPLACE(\'' + impl5 + '\',\'none\',null), IMPL_MODIFY_STAFFID=' + '<%= Session["LM_UserID"] %>' + ', IMPL_MODIFY_DATE=sysdate WHERE YR=' + $('#localauditTab3SelectYear option:selected').val() + ' AND QRTR=' + $('#localauditTab3SelectQuarter option:selected').val() + ' AND AUDIT_DECISION_ID=' + $("#decisionTab3ID").text() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (msg) {
                            if (msg.d == "0") { $('#localauditTab3Modal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                            else {
                                $('#localauditTab3Modal').modal('hide');
                                $.smallBox({
                                    title: "ДАЗ-ын хурлаас гарсан шийдвэрийн биелэлт",
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
            data: '{qry:"SELECT COUNT(ID) FROM TBL_AUDIT_IMPL WHERE AUDIT_DECISION_ID=' + $(me).closest('tr').find('td:eq(0)').html() + ' AND YR=' + $('#localauditTab3SelectYear option:selected').val() + ' AND QRTR=' + $('#localauditTab3SelectQuarter option:selected').val() + '"}',
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
                            data: '{qry:"UPDATE TBL_AUDIT_IMPL SET EVAL=' + $(me).val().replace('none', 'null') + ', EVAL_MODIFY_STAFFID=' + '<%= Session["LM_UserID"] %>' + ', EVAL_MODIFY_DATE=sysdate WHERE AUDIT_DECISION_ID=' + $(me).closest('tr').find('td:eq(0)').html() + ' AND YR=' + $('#localauditTab3SelectYear option:selected').val() + ' AND QRTR=' + $('#localauditTab3SelectQuarter option:selected').val() + '"}',
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
    $("#localauditTab4t1SelectYear").change(function () {
        $('#divtogtoolTab4t1Year1').text($(this).val());
        $('#divtogtoolTab4t1Year2').text($(this).val());
        dataBindTab4T1Data1();
    });
    $("#localauditTab4t1SelectQuarter").change(function () {
        $('#divtogtoolTab4t1Quarter1').text($(this).val());
        dataBindTab4T1Data1();
    });
    function dataBindTab4T1Data1() {
        var selectedYear = $("#localauditTab4t1SelectYear option:selected").val();
        var selectedQuarter = $("#localauditTab4t1SelectQuarter option:selected").val();
        showLoader('loaderTab4t1');
        var qrtrqry = "";
        if ($('#localauditTab4t1SelectQuarter option:selected').val() == "1") qrtrqry = " AND (TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 1)";
        else if ($('#localauditTab4t1SelectQuarter option:selected').val() == "2") qrtrqry = " AND (TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 1 OR TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 2)";
        else if ($('#localauditTab4t1SelectQuarter option:selected').val() == "3") qrtrqry = " AND (TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 1 OR TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 2 OR TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 3)";
        else if ($('#localauditTab4t1SelectQuarter option:selected').val() == "4") qrtrqry = " AND (TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 1 OR TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 2 OR TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 3 OR TO_NUMBER(to_char(trunc(TO_DATE(b.DT, 'yyyy-mm-dd'), 'q'), 'q')) = 4)";
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
                    //alert($("#localauditTab4t1SelectYear option:selected").val());
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "ws.aspx/localaudit_localauditTab4T1Datatable1",
                        data: '{yr:"' + selectedYear + '", qrtr:"' + selectedQuarter + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (msg) {
                            $("#divtogtoolTab4t1Datatable1").html(msg.d);
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "ws.aspx/localaudit_localauditTab4T1Datatable2",
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
    $("#localauditTab4t1Refresh").click(function () {
        $("#localauditTab4t1SelectYear").val($("#indexCurrentYear").html());
        $("#localauditTab4t1SelectQuarter").val($("#indexCurrentQuarter").html());
        $("#divtogtoolTab4t1Year1").text($("#indexCurrentYear").html());
        $("#divtogtoolTab4t1Year2").text($("#indexCurrentYear").html());
        $("#divtogtoolTab4t1Quarter1").text($("#indexCurrentQuarter").html());
        dataBindTab4T1Data1();
    });
    //tab4t2
    $("#localauditTab4t2SelectYear").change(function () {
        $('#divtogtoolTab4t2Year1').text($(this).val());
        dataBindTab4T2Data1();
    });
    $("#localauditTab4t2SelectQuarter").change(function () {
        $('#divtogtoolTab4t2Quarter1').text($(this).val());
        dataBindTab4T2Data1();
    });
    function dataBindTab4T2Data1() {
        showLoader('loaderTab4t2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/localaudit_localauditTab4T2Datatable1",
            data: '{yr:"' + $("#localauditTab4t2SelectYear option:selected").val() + '", qrtr:"' + $("#localauditTab4t2SelectQuarter option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                //$("#divtogtoolTab4t2Datatable1").html(replaceDatabaseToDisplay(msg.d));
                $("#divtogtoolTab4t2Datatable1").html(msg.d);
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
    $("#localauditTab4t2Refresh").click(function () {
        $("#localauditTab4t2SelectYear").val($("#indexCurrentYear").html());
        $("#localauditTab4t2SelectQuarter").val($("#indexCurrentQuarter").html());
        $("#divtogtoolTab4t2Year1").text($("#indexCurrentYear").html());
        $("#divtogtoolTab4t2Quarter1").text($("#indexCurrentQuarter").html());
        dataBindTab4T2Data1();
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

    loadScript("js/plugin/bootstrap-wizard/jquery.bootstrap.wizard.min.js", runBootstrapWizard);
    function runBootstrapWizard() {
        var $validatorIssue = $("#localauditTab1ModalForm").validate({
            rules: {
                localauditTab1ModalInputDate: {
                    required: true,
                    date: true
                },
                localauditTab1ModalInputNo: {
                    required: true,
                    number: true,
                    maxlength: 3
                },
                localauditTab1ModalInputName: {
                    required: true,
                    maxlength: 1000
                }
            },
            messages: {
                localauditTab1ModalInputDate: {
                    required: "Хурлаар хэлэлцсэн огноо заавал сонгоно уу",
                    date: "Хурлаар хэлэлцсэн огноол заавал сонгоно уу"
                },
                localauditTab1ModalInputNo: {
                    required: "Дугаар заавал оруулна уу",
                    number: "Дугаар зөвхөн тоо орно",
                    maxlength: "Дугаар уртдаа 3 тэмдэгт авна"
                },
                localauditTab1ModalInputName: {
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
        var $validatorDecision = $("#localauditTab2ModalForm").validate({
            rules: {
                localauditTab2ModalIssue: {
                    required: true,
                    min: 1
                },
                localauditTab2ModalInputNo: {
                    required: true,
                    number: true,
                    maxlength: 3
                },
                localauditTab2ModalInputName: {
                    required: true,
                    maxlength: 1000
                },
                localauditTab2ModalSelect2Gazarlist: {
                    required: true
                }
            },
            messages: {
                localauditTab2ModalIssue: {
                    required: "ДАЗ-ын хуралд хэлэлцсэн асуудал заавал сонгоно уу",
                    min: "ДАЗ-ын хуралд хэлэлцсэн асуудал заавал сонгоно уу"
                },
                localauditTab2ModalInputNo: {
                    required: "Дугаар заавал оруулна уу",
                    number: "Дугаар зөвхөн тоо орно",
                    maxlength: "Дугаар уртдаа 3 тэмдэгт авна"
                },
                localauditTab2ModalInputName: {
                    required: "Гарсан шийдвэр заавал оруулна уу",
                    maxlength: "Гарсан шийдвэр уртдаа 1000 тэмдэгт авна"
                },
                localauditTab2ModalSelect2Gazarlist: "Хариуцах газраа заавал сонгоно уу"
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

    $('#localauditImplDelete').click(function () {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Та биелэлт устгахдаа итгэлтэй байна уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/WSOracleExecuteNonQuery",
                    data: '{qry:"DELETE FROM TBL_AUDIT_IMPL WHERE AUDIT_DECISION_ID=' + $("#decisionTab3ID").text() + ' AND YR=' + $('#localauditTab3SelectYear option:selected').val() + ' AND QRTR=' + $('#localauditTab3SelectQuarter option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        if (msg.d == "0") window.location = "../#pg/error500.aspx";
                        else {
                            CKEDITOR.instances.localauditTab3ImplModalImpl.setData("");
                            $("#localauditTab3ImplModalCharLength").text("0");
                            $('#localauditTab3Datatable > tbody  > tr').each(function () {
                                if ($('td:eq(0)', this).html() == $('#decisionTab3ID').text()) {
                                    $('td:eq(4)', this).find('img').attr("src", "../img/red-circle.png");
                                    $('td:eq(4)', this).find('img').attr("alt", "Биелэлт оруулах");
                                    return false;
                                }
                            });
                            //$("#localauditTab3Datatable tr td:contains('" + $("#decisionTab3ID").text() + "')").parent().find("td:eq(4)").find('img').attr("src", "../img/red-circle.png");
                            //$("#localauditTab3Datatable tr td:contains('" + $("#decisionTab3ID").text() + "')").parent().find("td:eq(4)").find('img').attr("alt", "Биелэлт оруулах");
                            //$("#localauditTab3Datatable tr td:contains('" + $("#decisionTab3ID").text() + "')").parent().find("td:eq(4)").find('img').attr("onclick", "showAddEditLocalauditTab3Modal(this)");
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
    $('#localauditImplDownload').click(function () {
        var impl = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteScalar",
            data: '{qry:"SELECT IMPL FROM TBL_AUDIT_IMPL WHERE YR=' + $('#localauditTab3SelectYear option:selected').val() + ' AND QRTR=' + (parseInt($('#localauditTab3SelectQuarter option:selected').val()) - 1) + ' AND AUDIT_DECISION_ID=' + $('#decisionTab3ID').text() + '"}',
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
                        data: '{qry:"SELECT IMPL1 FROM TBL_AUDIT_IMPL WHERE YR=' + $('#localauditTab3SelectYear option:selected').val() + ' AND QRTR=' + (parseInt($('#localauditTab3SelectQuarter option:selected').val()) - 1) + ' AND AUDIT_DECISION_ID=' + $('#decisionTab3ID').text() + '"}',
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
                                    data: '{qry:"SELECT IMPL2 FROM TBL_AUDIT_IMPL WHERE YR=' + $('#localauditTab3SelectYear option:selected').val() + ' AND QRTR=' + (parseInt($('#localauditTab3SelectQuarter option:selected').val()) - 1) + ' AND AUDIT_DECISION_ID=' + $('#decisionTab3ID').text() + '"}',
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
                                                data: '{qry:"SELECT IMPL3 FROM TBL_AUDIT_IMPL WHERE YR=' + $('#localauditTab3SelectYear option:selected').val() + ' AND QRTR=' + (parseInt($('#localauditTab3SelectQuarter option:selected').val()) - 1) + ' AND AUDIT_DECISION_ID=' + $('#decisionTab3ID').text() + '"}',
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
                                                            data: '{qry:"SELECT IMPL4 FROM TBL_AUDIT_IMPL WHERE YR=' + $('#localauditTab3SelectYear option:selected').val() + ' AND QRTR=' + (parseInt($('#localauditTab3SelectQuarter option:selected').val()) - 1) + ' AND AUDIT_DECISION_ID=' + $('#decisionTab3ID').text() + '"}',
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
                                                                        data: '{qry:"SELECT IMPL5 FROM TBL_AUDIT_IMPL WHERE YR=' + $('#localauditTab3SelectYear option:selected').val() + ' AND QRTR=' + (parseInt($('#localauditTab3SelectQuarter option:selected').val()) - 1) + ' AND AUDIT_DECISION_ID=' + $('#decisionTab3ID').text() + '"}',
                                                                        contentType: "application/json; charset=utf-8",
                                                                        dataType: "json",
                                                                        success: function (msg) {
                                                                            var varMsg = msg.d;
                                                                            var arrMsg = varMsg.split("~");
                                                                            if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                                                                            else {
                                                                                impl += arrMsg[1];
                                                                                CKEDITOR.instances.localauditTab3ImplModalImpl.setData(replaceDatabaseToDisplay(impl));
                                                                                $('#localauditTab3ImplModalCharLength').text(impl.length);
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
