<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gap.aspx.cs" Inherits="LMWebApp.pg.gap" %>
    <style type="text/css">
        .gap-ddl-eval {
            font-size:12px;
        }
        .gap-txta-eval-desc {
            font-size:12px;
        }
        .reporttable {
            font-size:12px;
        }
        .reporttable thead tr th {
            text-align:center;
            vertical-align:middle;
        }
        .dataTable {
             width:100%;
             
        }
    </style>
    <div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
        <h1 class="page-title txt-color-blueDark">
        <i class="fa-fw fa fa-home"></i>
        <span>>ЗГҮАХ-ийн хэрэгжилт </span>
        </h1>
    </div>
<section id="widget-grid">
    <div id="gapindexCurrentYearHalf"  runat="server" class="hide"></div>
    <div style="display:none;" id="ROLE_PMN" runat="server"></div>
    <div style="display:none;" id="gapPolicyPermissionDiv" runat="server"></div>
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <label style="position: absolute; padding-top: 15px; text-align: right; right: 310px; font-style: italic;">Биелэлтийн үнэлгээний дундаж хувь:</label>
            <label id="gapImplTotalPer" style="position: absolute; padding-top: 15px; text-align: center; right: 268px; font-style: italic; font-weight: bold;">0 %</label>
            <label style="position: absolute; padding-top: 15px; text-align: right; right: 200px; font-style: italic;">/шүүлтээр/</label>
        <ul class="nav nav-tabs bordered">
            <li id="gapTabTitle1" runat="server">
                <a data-toggle="tab" href="#gapTab1" >
                    Бодлого
                </a>
            </li>
            <li id="gapTabTitle2" runat="server">
                <a data-toggle="tab" href="#gapTab2" >
                    Зорилт
                </a>
            </li>
            <li class="active" id="gapTabTitle3" runat="server">
                <a data-toggle="tab" href="#gapTab3">
                    <b style="font-size:14px">Төлөвлөгөө</b>
                </a>
            </li>
            <li id="gapTabTitle4" runat="server">
                <a data-toggle="tab" href="#gapTab4">
                    <i class="fa fa-fw fa-lg fa-bar-chart-o "></i>
                   <b style="font-size:14px">Биелэлт</b>
                </a>
            </li>
            <li id="gapTabTitle5" runat="server">
                <a data-toggle="tab" href="#gapTab5">
                    <i class="fa fa-fw fa-lg fa-file-text "></i>
                    <b style="font-size:14px">Товчоо</b>
                </a>
            </li>
            <li id="gapTabTitle6" runat="server">
                <a data-toggle="tab" href="#gapTab6">
                    <i class="fa fa-fw fa-lg fa-file-text "></i>
                    <b style="font-size:14px">Тайлан</b>
                </a>
            </li>
        </ul>   
        <div id="gapTabContent" class="tab-content">
            <div id="gapTab1" runat="server" class="tab-pane fade">
                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                    <header>
                        <span class="widget-icon">
                            <i class="fa fa-table"></i>
                        </span>
                        <h2>ЗГҮАХ-ийн бодлого</h2>
                    </header>
                    <div>
                        <div id="gap_Policy_add" runat="server" class="Colvis TableTools" style="right:305px; top:5px; z-index:5;">
                            <button id="gapTab1Add" class="ColVis_Button TableTools_Button ColVis_MasterButton btn btn btn-primary btn-sm" data-target="#gapPolicyModal" data-toggle="modal"><i class="fa fa-plus"></i> Нэмэх</button>
                        </div>
                        <div class="Colvis TableTools" style="width:150px; top:5px; z-index:1; right:140px;">
                            <select id="gapTab1SelectYear" runat="server" name="gapTab1SelectYear" class="form-control">
                                <option value="2007-2011">2007-2011</option>
                                <option value="2012-2016">2012-2016</option>
                                <option value="2017-2021">2017-2021</option>
                                <option value="2022-2026">2022-2026</option>
                            </select>
                        </div>
                        <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;">
                            <label>Илэрц: </label>
                        </div>
                        <div id="divBindPolicyTable_loader" class="search-background">
                            <img width="64" height="" src="img/loading.gif"/>
                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                        </div>
                        <div id="divBindPolicyTable" runat="server" class="widget-body no-padding">
                                
                        </div>
                    </div>
                </div>
            </div>
            <div id="gapTab2" runat="server" class="tab-pane fade">
                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                    <header>
                        <span class="widget-icon">
                            <i class="fa fa-table"></i>
                        </span>
                        <h2>ЗГҮАХ-ийн зорилт</h2>
                    </header>
                    <div>
                        <div id="Object_add" runat="server" class="Colvis TableTools" style="right:305px; top:5px; z-index:1;">
                            <button id="gapTab2Add" class="ColVis_Button TableTools_Button ColVis_MasterButton btn btn btn-primary btn-sm" data-target="#gapObjectModal" data-toggle="modal"><i class="fa fa-plus"></i> Нэмэх</button>
                        </div>
                        <div class="Colvis TableTools" style="width:150px; top:5px; z-index:1; right:125px;">
                            <select id="gapTab2SelectYear" name="gapTab2SelectYear" runat="server" class="form-control">
                                <option value="2007-2011">2007-2011</option>
                                <option value="2012-2016">2012-2016</option>
                                <option value="2017-2021">2017-2021</option>
                                <option value="2022-2026">2022-2026</option>
                            </select>
                        </div>
                        <div class="Colvis TableTools" style="right:75px; top:4px; z-index:1; margin-top:7px;">
                            <label>Илэрц: </label>
                        </div>
                        <div id="divBindObjectTable_loader" class="search-background">
                            <img width="64" height="" src="img/loading.gif"/>
                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                        </div>
                        <div id="divBindObjectTable" runat="server" class="widget-body no-padding">
                                
                        </div>
                    </div>
                </div> 
            </div>
            <div id="gapTab3" runat="server"  class="tab-pane active">
                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                    <header>
                        <span class="widget-icon">
                            <i class="fa fa-table"></i>
                        </span>
                        <h2>ЗГҮАХ-ийн арга хэмжээ</h2>
                    </header>
                    <div>
                        <div id="Work_add" runat="server" class="Colvis TableTools" style="right:450px; top:5px; z-index:1;"><button id="gapTab3Add" class="ColVis_Button TableTools_Button ColVis_MasterButton btn btn btn-primary btn-sm" data-target="#gapWorkModal" data-toggle="modal"><i class="fa fa-plus"></i> Нэмэх</button></div>
                        <div class="Colvis TableTools" style="width:140px; right:560px; top:8px; z-index:5; margin-top:1px;">
                            <button id="gapTab6t1PrintModalShow" class="btn btn-labeled btn-warning" type="button" data-target="#gapTab6t1PrintModal" data-toggle="modal"><span class="btn-label" style="padding: 0px 7px 3px 5px;"><i class="fa fa-file-text"></i></span>Хэвлэх|Татах</button>
                        </div>
                        <div class="Colvis TableTools" style="width:150px; top:5px; z-index:1; right:130px;">
                            <select id="gapTab3SelectYear" runat="server" name="gapTab3SelectYear" class="form-control">
                                <option  value="2007-2011">2007-2011</option>
                                <option  value="2012-2016">2012-2016</option>
                                <option  value="2017-2021">2017-2021</option>
                                <option  value="2022-2026">2022-2026</option>
                            </select>
                        </div>
                        <div class="Colvis TableTools" style="width:85px; top:5px; z-index:1; right:290px;"><select id="gapTab3SelectTeam" name="gapTab3SelectTeam" class="form-control"><option value="all" selected="selected">Бүгд</option><option value="0">Дангаар</option><option value="1">Хамтран</option></select></div>
                        <div class="Colvis TableTools" style="right:380px; top:5px; z-index:1; margin-top:7px;"><label>СС хийх: </label></div>
                        <div class="Colvis TableTools" style="right:75px; top:4px; z-index:1; margin-top:7px;"><label>Илэрц: </label></div>
                        <div id="divBindWorkTable_loader" class="search-background">
                            <img width="64" height="" src="img/loading.gif"/>
                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                        </div>
                        <div id="divBindWorkTable" runat="server" class="widget-body no-padding">
                                
                        </div>
                    </div>
                </div>
            </div>           
            <div id="gapTab4" runat="server" class="tab-pane fade">
                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                    <header>
                        <span class="widget-icon">
                            <i class="fa fa-table"></i>
                        </span>
                        <h2>ЗГҮАХ-ийн биелэлт</h2>
                    </header>
                    <div>
                        <div class="Colvis TableTools" style="width:150px; top:5px; z-index:7; right:200px;"><select id="gapTab4SelectYearHalf" runat="server" name="gapTab4SelectYearHalf" class="form-control" style="padding:1px;"><option value="1">Эхний хагас жил</option><option value="2">Сүүлийн хагас жил</option></select></div>
                        <div class="Colvis TableTools" style="width:70px; top:5px; z-index:10; right:125px;">
                            <select id="gapTab4SelectYear" name="gapTab4SelectYear" class="form-control" style="padding:1px;">
                                <option value="2013">2013</option>
                                <option value="2014" selected="selected">2014</option>
                                <option value="2015">2015</option>
                                <option value="2016">2016</option>
                                <option value="2017">2017</option>
                                <option value="2018">2018</option>
                                <option value="2019">2019</option>
                                <option value="2020">2020</option>
                                <option value="2021">2021</option>
                            </select>
                        </div>
                        <div class="Colvis TableTools" style="right: 710px; top:4px; z-index:5; margin-top:7px;">
                            Газар:
                        </div>
                        <div class="Colvis TableTools" style="width: 70px; top: 5px; z-index: 6; right: 635px;">
                            <select id="gapTab4SelectGazar" runat="server" class="form-control" style="padding:1px;">
                                <option selected="selected" value="all">Бүгд</option>
                            </select>
                        </div>
                        <div class="Colvis TableTools" style="right: 580px; top:4px; z-index:5; margin-top:7px;">
                            Үнэлгээ:
                        </div>
                        <div class="Colvis TableTools" style="width: 70px; top: 5px; z-index: 8; right: 505px;">
                            <select id="gapTab4SelectEval" name="gapTab4SelectEval" class="form-control" style="padding:1px;">
                                <option selected="selected" value="all">Бүгд</option>
                                <option value="0">0 %</option>
                                <option value="10">10 %</option>
                                <option value="30">30 %</option>
                                <option value="50">50 %</option>
                                <option value="70">70 %</option>
                                <option value="80">80 %</option>
                                <option value="90">90 %</option>
                                <option value="100">100 %</option>
                            </select>
                        </div>
                        <div class="Colvis TableTools" style="width:85px; top:5px; z-index:10; right:355px;"><select id="gapTab4SelectTeam" name="gapTab4SelectTeam" class="form-control" style="padding:1px;"><option value="all" selected="selected">Бүгд</option><option value="0">Дангаар</option><option value="1">Хамтран</option></select></div>
                        <div class="Colvis TableTools" style="right:445px; top:4px; z-index:5; margin-top:7px;"><label>СС хийх: </label></div>
                        <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                        <div class="Colvis TableTools" style="left:240px; top:0px; z-index:5; margin-top:2px;">
                            <img id="gapTab4ClickImpl1" src="../img/green-circle.png" width="15" />Биелэлт тайлагнасан<br />
                            <img id="gapTab4ClickImpl0" src="../img/red-circle.png" width="15" />Биелэлт тайлагнаагүй
                        </div>
                        <div id="divBindImplTable_loader" class="search-background">
                            <img width="64" height="" src="img/loading.gif"/>
                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                        </div>
                        <div id="divBindImplTable" runat="server" class="widget-body no-padding">
                                
                        </div>
                    </div>
                </div>
            </div>
            <div id="gapTab5" runat="server" class="tab-pane fade">
                <ul class="nav nav-tabs bordered">
                    <li class="active">
                        <a data-toggle="tab" href="#gapTab5t1">Хэрэгжилт</a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#gapTab5t2">Хэрэгжилт (газраар)</a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#gapTab5t3">Удаашралтай ажлын жагсаалт</a>
                    </li>
                </ul>
                <div id="gapTab5Content" class="tab-content">
                        <div class="search-background">
                                    <label>
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0;">Уншиж байна !</h2>
                                    </label>
                        </div>
                    <div id="gapTab5t1" class="tab-pane active">
                        <div style="display:block; overflow:hidden;">
                            <div style="float:left; display:block; width:70%">
                                <div style="text-align:right; margin:10px 0 10px 0;">
                                    <img id="gapTab5t1ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" title="PDF руу татах" onclick="exportPdfData('#divgapTab5t1')" />
                                    <img id="gapTab5t1ExportWord" src="../img/word-icon.png" style="cursor:pointer;" title="Word руу татах" onclick="exportWord('#divgapTab5t1', 'ЗГҮАХ-ийн хэрэгжилт <% Response.Write(gapTab5t1SelectYear.Items[gapTab5t1SelectYear.SelectedIndex].Text); %>')"  />
                                    <img id="gapTab5t1ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" title="Excel руу татах" onclick="exportExcel('#divgapTab5t1')" />
                                    <button id="gapTab5t1ExportPrint" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divgapTab5t1')"><span class="fa fa-print"  ></span> Хэвлэх </button>
                                    <button id="gapTab5t1Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                                </div>
                                 <div id="divgapTab5t1Table_loader" class="search-background">
                                        <label>
                                            <img width="64" height="" src="img/loading.gif"/>
                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0;">Уншиж байна !</h2>
                                        </label>
                                    </div>
                                <div id="divgapTab5t1" runat="server" class="reports">

                                    <h2 class="reports_title" style=" font-family:Arial; text-align: center;font-weight: bold;font-size: 14px;padding-bottom: 10px;text-transform: uppercase;line-height: 20px;">
                                        Засгийн газрын <label id="gapTab5t1Year" runat="server"></label>  оны <label id="gapTab5t1YearHalf" ></label> үйл ажиллагааны хөтөлбөрийн хэрэгжилт
                                    </h2>
                                   
                                    <div id="divgapTab5t1Table" runat="server">
  
                                    </div>                                    
                                </div>
                               
                            </div>
                            <div style="float:left; display:block; width:30%">
                                <div style="display: block; overflow: hidden; margin-top: 10px;">
                                    <div style="float:left; display:block; width:20%; margin-top:5px; margin-left:20px;">Жил</div>
                                    <div style="float:left; display:block; width:50%">
                                        <select id="gapTab5t1SelectYear" runat="server" class="form-control">
                                             <option  value="2007-2011">2007-2011</option>
                                             <option  value="2012-2016">2012-2016</option>
                                             <option value="2017-2021">2017-2021</option>
                                             <option  value="2022-2026">2022-2026</option>
                                        </select>
                                    </div>
                                </div>
                                <div style="display: block; overflow: hidden; margin-top: 10px;">
                                    <div style="float:left; display:block; width:20%; margin-top:5px; margin-left:20px;">Хагас жил</div>
                                    <div style="float:left; display:block; width:50%">
                                        <select id="gapTab5t1SelectYearHalf" class="form-control">
                                             <option <%  if (gapindexCurrentYearHalf.InnerHtml == "1") { Response.Write(" selected=\"selected\""); } %>  value="1">Эхний хагас жил</option>
                                             <option <%  if (gapindexCurrentYearHalf.InnerHtml == "2") { Response.Write(" selected=\"selected\""); } %>  value="2">Сүүлийн хагас жил</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="gapTab5t2" class="tab-pane fade">
                        <div style="display:block; overflow:hidden;">
                            <div style="float:left; display:block; width:70%">
                                <div style="text-align:right; margin:10px 0 10px 0;">
                                    <img id="gapTab5t2ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;"  onclick="exportPdf('#divgapTab5t2')" />
                                    <img id="gapTab5t2ExportWord" src="../img/word-icon.png" style="cursor:pointer;" onclick="exportWord('#divgapTab5t2', 'ЗГҮАХ-ийн хэрэгжилт газруудаар <% Response.Write(gapTab5t2SelectYear.Items[gapTab5t2SelectYear.SelectedIndex].Text); %>')"  />
                                    <img id="gapTab5t2ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" onclick="exportExcel('#divgapTab5t2')"/>
                                    <button id="gapTab5t2ExportPrint" class="btn btn-info btn-sm" type="button" onclick="PrintElem('#divgapTab5t2')">
                                        <span class="fa fa-print"></span> Хэвлэх 
                                    </button>
                                    <button id="gapTab5t2Refresh" class="btn btn-info btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                                </div>
                                     <div id="divgapTab5t2_loader" class="search-background">
                                        <label>
                                            <img width="64" height="" src="img/loading.gif"/>
                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0;">Уншиж байна !</h2>
                                        </label>
                                    </div>
                                <div id="divgapTab5t2" runat="server" class="reports">
                                

                                    <h2 class="reports_title" style="text-align: center;  font-family:Arial;font-weight: bold;font-size: 14px;padding-bottom: 10px;text-transform: uppercase;line-height: 20px;">
                                       Засгийн газрын <label id="gapTab5t2Year" runat="server"></label> оны  <label id="gapTab5t2YearHalf"></label> үйл ажиллагааны хөтөлбөрийн хэрэгжилт (газруудаар)
                                    </h2>

                                    <div id="divgapTab5t2Table">
                                        
                                    </div>                                    
                                </div>
                             
                            </div>
                            <div style="float:left; display:block; width:30%">
                                <div style="display: block; overflow: hidden; margin-top: 10px;">
                                    <div style="float:left; display:block; width:20%; margin-top:5px; margin-left:20px;">Жил</div>
                                    <div style="float:left; display:block; width:50%">
                                        <select  id="gapTab5t2SelectYear" runat="server" class="form-control">
                                             <option  value="2007-2011">2007-2011</option>
                                             <option  value="2012-2016">2012-2016</option>
                                             <option  value="2017-2021">2017-2021</option>
                                             <option  value="2022-2026">2022-2026</option>
                                       </select>
                                    </div>
                                </div>
                                 <div style="display: block; overflow: hidden; margin-top: 10px;">
                                    <div style="float:left; display:block; width:20%; margin-top:5px; margin-left:20px;">Хагас жил</div>
                                    <div style="float:left; display:block; width:50%">
                                        <select  id="gapTab5t2SelectYearHalf" class="form-control">
                                             <option  <%  if (gapindexCurrentYearHalf.InnerHtml == "1") { Response.Write(" selected=\"selected\""); } %>  value="1">Эхний хагас жил</option>
                                             <option  <%  if (gapindexCurrentYearHalf.InnerHtml == "2") { Response.Write(" selected=\"selected\""); } %>  value="2">Сүүлийн хагас жил</option>
                                       </select>
                                    </div>
                                </div>
                                <div style="display: block; overflow: hidden; margin-top: 10px;">
                                    <div style="float: left; display: block; width: 20%; margin-top: 5px; margin-left: 20px;">Газар</div>
                                    <div style="float: left; display: block; width: 50%">
                                        <select id="gapTab5t2SelectBranch" runat="server" class="form-control">
                                            <option value="all">Бүгд</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="gapTab5t3" class="tab-pane fade">
                            <div style="display:block; overflow:hidden;">
                            <div style="float:left; display:block; width:70%">
                                <div style="text-align:right; margin:10px 0 10px 0;">
                                    <img id="gapTab5t3ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" onclick="exportPdf('#divgapTab5t3')" />
                                    <img id="gapTab5t3ExportWord" src="../img/word-icon.png" style="cursor:pointer;" onclick="exportWord('#divgapTab5t3', 'ЗГҮАХ-ийн хэрэгжилт нь удаашралтай байгаа арга хэмжээ <% Response.Write(gapTab5t3SelectYear.Items[gapTab5t3SelectYear.SelectedIndex].Text); %>')" />
                                    <img id="gapTab5t3ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" onclick="exportExcel('#divgapTab5t3')" />
                                    <button id="gapTab5t3ExportPrint" class="btn btn-info btn-sm" type="button"  onclick="PrintElem('#divgapTab5t3')">
                                        <span class="fa fa-print"></span> Хэвлэх 
                                    </button>
                                    <button id="gapTab5t3Refresh" class="btn btn-info btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                                </div>
                                  <div id="divgapTab5t3Table_loader" class="search-background">
                                        <label>
                                            <img width="64" height="" src="img/loading.gif"/>
                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0;">Уншиж байна !</h2>
                                        </label>
                                    </div>
                                <div id="divgapTab5t3" runat="server" class="reports" >
                                  
                                    <h2 class="reports_title" style="text-align: center;  font-family:Arial;font-weight: bold;font-size: 14px;padding-bottom: 10px;line-height: 20px; text-transform:none;">
                                       Засгийн газрын  <label id="gapTab5t3Year" runat="server"></label> оны <label id="gapTab5t3YearHalf"></label>  үйл ажиллагааны хөтөлбөрийн хэрэгжилт нь удаашралтай байгаа арга хэмжээний тухай (0-70 хувь)
                                    </h2>
                                    <div id="divgapTab5t3Table" runat="server" >
                                    </div>                                    
                                </div>
                               
                            </div>
                            <div style="float:left; display:block; width:30%">
                                <div style="display: block; overflow: hidden; margin-top: 10px;">
                                    <div style="float:left; display:block; width:20%; margin-top:5px; margin-left:20px;">Жил</div>
                                    <div style="float:left; display:block; width:50%">
                                        <select id="gapTab5t3SelectYear" runat="server" class="form-control">
                                             <option  value="2007-2011">2007-2011</option>
                                             <option  value="2012-2016">2012-2016</option>
                                             <option  value="2017-2021">2017-2021</option>
                                             <option  value="2022-2026">2022-2026</option>
                                        </select>
                                    </div>
                                </div>
                                 <div style="display: block; overflow: hidden; margin-top: 10px;">
                                    <div style="float:left; display:block; width:20%; margin-top:5px; margin-left:20px;">Хагас жил</div>
                                    <div style="float:left; display:block; width:50%">
                                        <select id="gapTab5t3SelectYearHalf" class="form-control">
                                           
                                             <option  <%  if (gapindexCurrentYearHalf.InnerHtml == "1") { Response.Write(" selected=\"selected\""); } %> value="1">Эхний хагас жил</option>
                                             <option  <%  if (gapindexCurrentYearHalf.InnerHtml == "2") { Response.Write(" selected=\"selected\""); } %> value="2">Сүүлийн хагас жил</option>
                                        </select>
                                    </div>
                                </div>
                                <div style="display: block; overflow: hidden; margin-top: 10px;">
                                    <div style="float: left; display: block; width: 20%; margin-top: 5px; margin-left: 20px;">Газар</div>
                                    <div style="float: left; display: block; width: 50%">
                                        <select id="gapTab5t3SelectBranch" runat="server" class="form-control">
                                            <option value="all">Бүгд</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>    
            </div>
            <div id="gapTab6" runat="server" class="tab-pane fade">
                <ul class="nav nav-tabs bordered">
                    <li class="active">
                        <a data-toggle="tab" href="#gapTab6t2">ХШҮ-ний товч тайлан</a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#gapTab6t3">Хэрэгжилтийн дэлгэрэнгүй тайлан</a>
                    </li>
                </ul>
                <div id="gapTab6Content" class="tab-content">
                 
                   
                    <div id="gapTab6t2" class="tab-pane active"> 
                           <div id="gapTab6t2Year2_loader" class="search-background">
                                <label>
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0;">Уншиж байна !</h2>
                                </label>
                          </div>
                        <div style="display:block; overflow:hidden;">
                            <div style="float:left; display:block; width:70%">
                                <div style="text-align:right; margin:10px 0 10px 0;">
                                    <img id="gapTab6t2ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" title="PDF руу татах" onclick="exportPdf('#divgapTab6t2')" />
                                    <img id="gapTab6t2ExportWord" src="../img/word-icon.png" style="cursor:pointer;" title="Word руу татах" onclick="exportWord('#divgapTab6t2', 'ЗГҮАХ-ийн ХШҮ-ний товч тайлан <% Response.Write(gapTab6t2SelectYear.Items[gapTab6t2SelectYear.SelectedIndex].Text); %>')" />
                                    <img id="gapTab6t2ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" title="Excel руу татах" onclick="exportExcel('#divgapTab6t2')" />
                                    <button id="gapTab6t2Print" class="btn btn-primary btn-sm" type="button"  onclick="PrintElem('#divgapTab6t2')"><span class="fa fa-print"></span> Хэвлэх </button>
                                    <button id="gapTab6t2Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                                </div>
                               
                                <div id="divgapTab6t2" runat="server" class="reports"  >
                                 
                                    <h4 class="reports_title" style="text-align: center;  font-family:Arial;font-weight: bold;font-size: 14px;padding-bottom: 10px;text-transform: uppercase;line-height: 20px;">
                                     МОНГОЛ УЛСЫН ЗАСГИЙН ГАЗРЫН <label id="gapTab6t2Year" runat="server">0000</label> ОНЫ ҮЙЛ АЖИЛЛАГААНЫ ХӨТӨЛБӨРИЙГ ХЭРЭГЖҮҮЛЭХ АРГА ХЭМЖЭЭНИЙ ТӨЛӨВЛӨГӨӨНД САНГИЙН САЙДЫН ХАРИУЦАН 
                                        <br />ХЭРЭГЖҮҮЛЭХ АРГА ХЭМЖЭЭНИЙ ХЭРЭГЖИЛТЭД ХИЙСЭН 
                                        ХЯНАЛТ-ШИНЖИЛГЭЭ, ҮНЭЛГЭЭНИЙ ТАЙЛАН
                                        <br/><br />
                                           (<label id="gapTab6t2Year2" runat="server">0000</label> оны <label id="gapTab6t2YearHalf"></label> байдлаар )
                                    </h4>
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       Монгол Улсын Засгийн газрын  <label id="gapTab6t2Year3" runat="server">2014</label> оны үйл ажиллагааны хөтөлбөрийг хэрэгжүүлэх арга хэмжээний төлөвлөгөөнд Сангийн сайдын дангаар болон бусад сайдтай хамтран хэрэгжүүлэх арга хэмжээний төлөвлөгөөг Сангийн сайдын
                                        <label id="gapTab6t2Tushaal" runat="server"></label> дугаар тушаалаар батлуулсан бөгөөд Сангийн сайдын дангаар хэрэгжүүлэх 
                                        <label id="gapTab6t2WorkTeam0" runat="server">0</label>, бусад сайдтай хамтран хэрэгжүүлэх 
                                        <label id="gapTab6t2WorkTeam1" runat="server">0</label>, нийт 
                                        <label id="gapTab6t2WorkTeam" runat="server">0</label> зорилт, арга хэмжээ тусгагдсан байна.</p>
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       Монгол Улсын Засгийн газрын  <label id="gapTab6t2Togtool" runat="server"></label> дугаар тогтоолоор батлагдсан журмын дагуу “Монгол Улсын Засгийн газрын
                                        <label id="gapTab6t2Year4" runat="server">0000</label> оны үйл ажиллагааны хөтөлбөрийг хэрэгжүүлэх төлөвлөгөөнд Сангийн сайдын хариуцан хэрэгжүүлэх арга хэмжээний хэрэгжилтэд  
                                        <label id="gapTab6t2Year5" runat="server">0000</label> оны 
                                        <label id="gapTab6t2YearHalf2" runat="server">эхний хагас</label> байдлаар хяналт-шинжилгээ, үнэлгээ хийхэд хэрэгжилт 
                                        <label id="gapTab6t2TotalPercent" runat="server">0</label> хувийн биелэлттэй байна.</p>
                                   
                                    <div id="divgapTab6t2Table1" >
                                    </div>
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Засгийн газрын үйл ажиллагааны хэрэгжилт газруудаар гаргавал:</b></p>
                                    <div id="divgapTab6t2Table2" >
                                       
                                    </div>
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Хэрэгжилт удаашралтай байгаа арга хэмжээнүүд:</b></p>
                                    <div id="divgapTab6t2Table3" >
                                    
                                    </div>
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Дүгнэлт:</b></p>
                                    <div id="divgapTab6t2Dugnelt" runat="server">
                                    </div>
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Зөвлөмж:</b></p>
                                    <div id="divgapTab6t2Zuvlumj" runat="server">
                                    </div>

                                </div>
                            </div>
                            <div style="float:left; display:block; width:30%">
                                <div style="display:block; overflow:hidden; margin-top:10px;">
                                    <div style="float:left; display:block; width:20%; margin-top:5px; margin-left:20px;">Жил</div>
                                    <div style="float:left; display:block; width:50%">
                                        <select id="gapTab6t2SelectYear" runat="server" class="form-control">
                                             <option  value="2007-2011">2007-2011</option>
                                             <option  value="2012-2016">2012-2016</option>
                                             <option  value="2017-2021">2017-2021</option>
                                             <option  value="2022-2026">2022-2026</option>
                                        </select>
                                    </div>
                                </div>
                                <div style="display:block; overflow:hidden; margin-top:10px;">
                                    <div style="float:left; display:block; width:20%; margin-top:5px; margin-left:20px;">Хагас жил</div>
                                    <div style="float:left; display:block; width:50%">
                                        <select id="gapTab6t2SelectYearHalf"  class="form-control">
                                            <option  <%  if (gapindexCurrentYearHalf.InnerHtml == "1") { Response.Write(" selected=\"selected\""); } %> value="1">Эхний хагас жил</option>
                                            <option  <%  if (gapindexCurrentYearHalf.InnerHtml == "2") { Response.Write(" selected=\"selected\""); } %> value="2">Сүүлийн хагас жил</option>
                                        </select>
                                    </div>
                                </div>
                               
                                <div style="display:block; overflow:hidden; margin-top:10px;">
                                    <div style="float:left; display:block; width:20%; margin-top:5px; margin-left:20px;">Тушаал</div>
                                    <div style="float:left; display:block; width:50%">
                                        <textarea id="gapTab6t2InputTushaal" runat="server" class="form-control" rows="2"></textarea>
                                    </div>
                                    <div style="float:left; display:block; width:10%">
                                        <button id="gapTab6t2BtnTushaal" title="Тушаалын нэр оруулах" class="btn btn-default btn-circle btn-sm" type="button" style="vertical-align: top; margin-left: 3px;">
                                            <span class="fa fa-check"></span>
                                        </button>
                                    </div>
                                </div>
                                <div style="display:block; overflow:hidden; margin-top:10px;">
                                    <div style="float:left; display:block; width:20%; margin-top:5px; margin-left:20px;">Тогтоол</div>
                                    <div style="float:left; display:block; width:50%">
                                        <textarea id="gapTab6t2InputTogtool" runat="server" class="form-control" rows="2"></textarea>
                                    </div>
                                    <div style="float:left; display:block; width:10%">
                                        <button id="gapTab6t2BtnTogtool" title="Тогтоолын нэр оруулах" class="btn btn-default btn-circle btn-sm" type="button" style="vertical-align: top; margin-left: 3px;">
                                            <span class="fa fa-check"></span>
                                        </button>
                                    </div>
                                </div>
                                <div style="display: block; overflow: hidden; margin-top: 10px;">
                                    <div style="float: left; display: block; width: 20%; margin-top: 5px; margin-left: 20px;">Дүгнэлт</div>
                                    <div style="float: left; display: block; width: 60%">
                                        <textarea id="gapTab6t2InputDugnelt" runat="server" class="form-control" rows="4"></textarea></div>
                                        <script>
                                            CKEDITOR.replace('gapTab6t2InputDugnelt', {
                                                toolbar: [

                                                ]
                                            });
                                        </script>
                                    <div style="float: left; display: block; width: 10%">
                                        <button id="gapTab6t2BtnDugnelt" title="Дүгнэлт оруулах" class="btn btn-default btn-circle btn-sm" type="button" style="vertical-align: top; margin-left: 3px;"><span class="fa fa-check"></span></button>
                                    </div>
                                </div>
                                <div style="display: block; overflow: hidden; margin-top: 10px;">
                                    <div style="float: left; display: block; width: 20%; margin-top: 5px; margin-left: 20px;">Зөвлөмж</div>
                                    <div style="float: left; display: block; width: 60%">
                                        <textarea id="gapTab6t2InputZuvlumj" runat="server" class="form-control" rows="4"></textarea></div>
                                        <script>
                                            CKEDITOR.replace('gapTab6t2InputZuvlumj', {
                                                toolbar: [

                                                ]
                                            });
                                        </script>
                                    <div style="float: left; display: block; width: 10%">
                                        <button id="gapTab6t2BtnZuvlumj" title="Зөвлөмж оруулах" class="btn btn-default btn-circle btn-sm" type="button" style="vertical-align: top; margin-left: 3px;"><span class="fa fa-check"></span></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="gapTab6t3" class="tab-pane fade">
                            <div class="search-background">
                                    <label>
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0;">Уншиж байна !</h2>
                                    </label>
                           </div>
                        <div style="display:block; overflow:hidden; margin-top:10px;">
                            <div style="float:left; display:block; width:70%">
                                <div style="text-align:right; margin:10px 0 10px 0;">
                                    <img id="gapTab6t3ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" title="PDF руу татах" onclick="exportPdf('#divgapTab6t3')" />
                                    <img id="gapTab6t3ExportWord" src="../img/word-icon.png" style="cursor:pointer;" title="Word руу татах" onclick="exportWord('#divgapTab6t3', 'ЗГҮАХ-ийн Хэрэгжилтийн дэлгэрэнгүй тайлан <% Response.Write(gapTab6t3SelectYear.Items[gapTab6t3SelectYear.SelectedIndex].Text); %>')" />
                                    <img id="gapTab6t3ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" title="Excel руу татах" onclick="exportExcel('#divgapTab6t3')" />
                                    <button id="gapTab6t3Print" class="btn btn-primary btn-sm" type="button"  onclick="PrintElem('#divgapTab6t3')"><span class="fa fa-print"></span> Хэвлэх </button>
                                    <button id="gapTab6t3Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                                </div>
                                <div id="divgapTab6t3"  class="reports">
                                    <div>
                                       <h4 class="reports_title" style="text-align: center; font-family:Arial;font-weight: bold;font-size: 14px;padding-bottom: 10px;text-transform: uppercase;line-height: 20px;">
                                        МОНГОЛ УЛСЫН ЗАСГИЙН ГАЗРЫН <label id="Tab6t3selectYear" runat="server"> </label> ОНЫ <label id="Tab6t3selectYearHalf"> </label> ҮЙЛ
                                        АЖИЛЛАГААНЫ ХӨТӨЛБӨРИЙГ ХЭРЭГЖҮҮЛЭХ АРГА ХЭМЖЭЭНИЙ  <br />
                                         ТӨЛӨВЛӨГӨӨНД САНГИЙН САЙДЫН ХАРИУЦАН 
                                        ХЭРЭГЖҮҮЛЭХ АРГА ХЭМЖЭЭНИЙ БИЕЛЭЛТ
                                        /<label id="gapTab6t3Year" runat="server">2014</label> оны   
                                           <label id="gapTab6t3HalfYear" runat="server"></label> байдлаар/
                                       </h4> 

                                    </div>
                                    <div id="divgapTab6t3Table" runat="server">
                                    </div>
                                </div>
                            </div>
                            <div style="float:left; display:block; width:30%">
                                <div style="display:block; overflow:hidden; margin-top:10px;">
                                    <div style="float:left; display:block; width:20%; margin-top:5px; margin-left:20px;">Жил</div>
                                    <div style="float:left; display:block; width:50%">
                                        <select class="form-control" id="gapTab6t3SelectYear" runat="server" name="gapTab6t3SelectYear">
                                            <option value="2007-2011">2007-2011</option>
                                            <option value="2012-2016">2012-2016</option>
                                            <option value="2017-2021">2017-2021</option>
                                            <option value="2022-2026">2022-2026</option>
                                    </select>
                                    </div>
                                </div>
                                 <div style="display:block; overflow:hidden; margin-top:10px;">
                                    <div style="float:left; display:block; width:20%; margin-top:5px; margin-left:20px;">Хагас жил</div>
                                    <div style="float:left; display:block; width:50%">
                                        <select id="gapTab6t3SelectYearHalf" class="form-control">
                                            <option  <%  if (gapindexCurrentYearHalf.InnerHtml == "1") { Response.Write(" selected=\"selected\""); } %> value="1">Эхний хагас жил</option>
                                            <option  <%  if (gapindexCurrentYearHalf.InnerHtml == "2") { Response.Write(" selected=\"selected\""); } %> value="2">Сүүлийн хагас жил</option>
                                        </select>
                                    </div>
                                </div>
                                <div style="display: block; overflow: hidden; margin-top: 10px;">
                                    <div style="float: left; display: block; width: 20%; margin-top: 5px; margin-left: 20px;">Газар</div>
                                    <div style="float: left; display: block; width: 50%">
                                        <select name="gapTab6t3SelectGazar" id="gapTab6t3SelectGazar" runat="server" class="form-control">
                                            <option value="all">Бүгд</option>
                                        </select>
                                    </div>
                                </div>
                                <div style="display: block; overflow: hidden; margin-top: 10px;">
                                    <div style="float: left; display: block; width: 20%; margin-top: 5px; margin-left: 20px;">Хэрэгжүүлэх хугацаа</div>
                                    <div style="float: left; display: block; width: 50%">
                                        <select name="gapTab6t3SelectUserYear" id="gapTab6t3SelectUserYear" runat="server" class="form-control">
                                            <option value="all">Бүгд</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </article>    
    </div>
</section>
<%--<script src="../js/pg/gap.js"></script>--%>
<div id="gapPolicyModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="gapPolicyModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >ЗГҮАХ-ийн бодлого&nbsp;<span id="gapPolicyModalHeaderLabel">нэмэх</span></h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div id="gapPolicyID" class="form-group hide"></div>                        
                           <div  class="form-group">
                                Он: <label id="gapPolicyModalCurrentYr" runat="server">2007-2015</label>
                            </div>
                             
                            <div class="form-group">
                                <input id="gapPolicyModalPolicyno" name="gapPolicyModalPolicyno" class="form-control" type="text" placeholder="Дугаар"/>
                            </div>
                            <div class="form-group">
                                <textarea id="gapPolicyModalPolicyname" name="gapPolicyModalPolicyname" class="form-control" required="" placeholder="Бодлого" rows="4"></textarea>
                            </div>                        
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                    <button id="gapPolicySave" class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
                </div>
            </form>
        </div>
    </div>
</div>
<div id="gapObjectModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="gapObjectModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> × </button>
                    <h4 class="modal-title" >ЗГҮАХ-ийн зорилт&nbsp;<span id="gapObjectModalHeaderLabel">нэмэх</span></h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div id="gapObjectID" class="form-group hide"></div> 
                            <div class="form-group">
                                Он: <label id="gapObjectModalCurrentYr" runat="server">2007-2015</label>
                            </div>
                            <div class="form-group">  
                                <select id="gapObjectModalPolicy" name="gapObjectModalPolicy" class="form-control"></select>
                            </div>
                            <div class="form-group"> 
                                <input id="gapObjectModalObjectno" name="gapObjectModalObjectno" class="form-control" type="text" placeholder="Дугаар"/>
                            </div>
                            <div class="form-group"> 
                                <textarea id="gapObjectModalObjectname" name="gapObjectModalObjectname" class="form-control" required="" placeholder="Зорилт" rows="4"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                    <button id="gapObjectSave" class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
                </div>
            </form>
        </div>
    </div>
</div>
<div id="gapWorkModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="gapWorkModalForm">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> × </button>
                <h4 class="modal-title" >ЗГҮАХ-ийн арга хэмжээ&nbsp;<span id="gapWorkModalHeaderLabel">нэмэх</span></h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div id="gapWorkID" class="form-group hide"></div> 
                        <div class="form-group">
                            Он: <label id="gapWorkModalCurrentYr" runat="server">2016</label>
                        </div>
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;"> 
                            <label class="col-md-2 control-label">СС хийх</label>
                            <div class="col-md-10">                                  
                                <select id="gapWorkModalTeam" name="gapWorkModalTeam" class="form-control">
                                    <option value="">- СС хийх сонго -</option>
                                    <option value="0">Дангаар</option>
                                    <option value="1">Хамтран</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;"> 
                            <label class="col-md-2 control-label">Бодлого</label>
                            <div class="col-md-10">                                  
                                <select id="gapWorkModalPolicy" name="gapWorkModalPolicy" class="form-control"></select>
                            </div>
                        </div>
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                            <label class="col-md-2 control-label">Зорилт</label>
                            <div class="col-md-10">                               
                                <select id="gapWorkModalObject" name="gapWorkModalObject" class="form-control"><option value="0">- Бодлого сонго -</option></select>
                            </div>
                        </div>
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                            <label class="col-md-2 control-label">Арга хэмжээ</label>
                            <div class="col-md-2">
                                <input id="gapWorkModalWorkNo" name="gapWorkModalWorkNo" class="form-control" type="text" required="" placeholder="Дугаар" value=""/>
                            </div>
                            <div class="col-md-8">
                                <textarea id="gapWorkModalWorkName" name="gapWorkModalWorkName" class="form-control" required="" placeholder="Арга хэмжээ" rows="2"></textarea>
                            </div>
                        </div> 
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                            <label class="col-md-2 control-label">Хүрэх түвшин</label>
                            <div class="col-md-10">
                                <textarea id="gapWorkModalResult" name="gapWorkModalResult" class="form-control" required="" placeholder="Хүрэх түвшин" rows="2"></textarea>
                            </div>
                        </div>
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                            <label class="col-md-2 control-label">Хөрөнгийн хэмжээ, эх үүсвэр</label>
                            <div class="col-md-10">
                                <textarea id="gapWorkModalStock" name="gapWorkModalStock" class="form-control" required="" placeholder="Хөрөнгийн хэмжээ, эх үүсвэр" rows="2"></textarea>
                            </div>
                        </div>
                    </div>
                      <div class="col-md-12">
                        <div class="form-group" id="div_date_user" style="overflow:hidden; margin-bottom:15px;">
							<label class="col-md-2 control-label">Хэрэгжүүлэх хугацаа</label>
                            <div class="col-md-2">
                                <input id="date_user" class="form-control" type="text">
                            </div> 
                        </div>
                    </div>
                     <div class="col-md-12">
                        <div class="form-group" id="ministry_list" style="display:block; overflow:hidden; margin-bottom:15px;">
							<label class="col-md-2 control-label">Үндсэн хариуцах яам</label>
                            <div class="col-md-10">
                                <div id="divgapWorkModalYamlist">
                                </div>
                            </div> 
                        </div>
                    </div>
                     <div class="col-md-12">
                        <div class="form-group" id="ministry_list2" style="display:block; overflow:hidden; margin-bottom:15px;">
							<label class="col-md-2 control-label">Хамтран хариуцах яам</label>
                            <div class="col-md-10">
                                <div id="divgapWorkModalYamlist2">
                                </div>
                            </div> 
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group"  style="display:block; overflow:hidden; margin-bottom:15px;">
							<label class="col-md-2 control-label">Хариуцах газар</label>
                            <div class="col-md-10">
                                <div id="divgapWorkModalGazarlist">
                                </div>
                            </div> 
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
							<label class="col-md-2 control-label">Холбох ҮХЦБ</label>
                            <div class="col-md-10">
                                <div id="divgapWorkModalNDSList">
                                </div>
                            </div> 
                        </div>
                    </div>                    
                    <div class="col-md-12">
                        <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
							<label class="col-md-2 control-label">Холбох ҮЧ</label>
                            <div class="col-md-10">
                                <div id="divgapWorkModalGAPList">
                                      <select id="gapWorkModalGAPList" name="gapWorkModalGAPList"  multiple="multiple" style="width:100%">
                                      </select>
                                </div>
                            </div> 
                        </div>
                    </div>                            
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                <button id="gapWorkSave" class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
            </div>
            </form>
        </div>
    </div>
</div>
<div id="gapImplModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> × </button>
                    <h4 class="modal-title" >ЗГҮАХ-ийн биелэлт&nbsp;<span id="gapImplModalHeaderLabel">нэмэх</span>

                    </h4>
                
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div id="gapImplID" class="form-group hide"></div> 
                        <div class="form-group" style="margin-bottom:15px;">
                           <b>Он:</b>  <label id="gapImplModalCurrentYr">2014</label>&nbsp;|&nbsp;
                            <label id="gapImplModalCurrentHalfYr_one"></label>
                        </div>
                        <div class="form-group" style="margin-bottom: 10px;">
                            <b>Арга хэмжээ:</b>
                            <label id="gapImplModalPol" runat="server"></label>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">Биелэлт</label>
                            <div id="half_is_not">
                                <button id="gapImportWeekImpl" class="col-md-1 btn btn-link btn-sm pull-right" style="padding:0 0 0 0;"><span class="glyphicon glyphicon-download-alt"></span> татах</button>
                                <button id="gapShowWeekImpl" class="col-md-1 btn btn-link btn-sm pull-right" style="padding:0 0 0 0;" data-toggle="modal" data-target="#gapWeekImplModal" onclick="gapWeekImplShow()"><span class="glyphicon glyphicon-eye-open"></span> харах</button>
                                <label class="col-md-8 control-label pull-right" style="text-align:right; padding-top:4px;">Эхний хагас жил: </label>
                            </div>
                        </div>
                        <div class="form-group">
                                <div style="text-align: right;">
                                    Тэмдэгт:
                                    <label id="gapImplModalCharLength" runat="server">0</label>/12000
                                </div>
                                <textarea id="gapImplModalImpl" name="gapImplModalImpl"></textarea>
                                <script>
                                    CKEDITOR.replace('gapImplModalImpl', {
                                        toolbar: [
                                            { name: 'document', groups: ['mode', 'document', 'doctools'], items: ['Source', '-', 'Preview', 'Print'] },
	                                        { name: 'clipboard', groups: ['clipboard', 'undo'], items: ['Cut', 'Copy', 'Paste', '-', 'Undo', 'Redo'] },
	                                        { name: 'editing', groups: ['find', 'selection', 'spellchecker'], items: ['Find', 'Replace'] },
	                                        { name: 'basicstyles', groups: ['basicstyles', 'cleanup'], items: ['Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript'] },
	                                        { name: 'paragraph', groups: ['list', 'indent', 'blocks', 'align', 'bidi'], items: ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'] },
	                                        { name: 'insert', items: ['Table', 'SpecialChar'] },
	                                        { name: 'styles', items: ['Styles', 'Format', 'Font', 'FontSize'] },
	                                        { name: 'colors', items: ['TextColor', 'BGColor'] },
	                                        { name: 'tools', items: ['Maximize'] }
                                        ]

                                    });

                                    var editor = CKEDITOR.instances.gapImplModalImpl;
                                    editor.on('key', function (evt) {
                                        $("#gapImplModalCharLength").text(replaceDisplayToDatabase($.trim(evt.editor.getData())).length);
                                    }, editor.element.$);
                                </script>
                        </div>
                    </div>
                </div>                
            </div>
            <div class="modal-footer">
                <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                <button id="gapImplSave" class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
            </div>
        </div>
    </div>
</div>
<div id="gapImplMore" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display: none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button">× </button>
                <h4 class="modal-title">ЗГҮАХ-ийн биелэлт&nbsp;</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group" style="margin-bottom: 15px;">
                            Он:
                            <label id="gapImplModalCurrentYr1" runat="server">2014</label>&nbsp;|&nbsp;
                             <label id="gapImplModalCurrentHalfYr_one1" runat="server"></label>
                        </div>
                        <div class="form-group" style="margin-bottom: 10px;">
                            Арга хэмжээ:
                            <label id="gapImplModalPol1" runat="server"></label>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">Биелэлт</label>
                        </div>
                        <div class="form-group" id="gapImplModalMore" style="margin-bottom: 15px; display: block; overflow: hidden;">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="gapTab6t1PrintModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog" style="width:90%;">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                <h4 class="modal-title" >ЗГҮАХ-ийн төлөвлөгөө</h4>
            </div>
            <div class="modal-body" style="padding-bottom:0px;">
                <div class="row">
                            <div style="float:left; display:block; width:98%">
                                <div style="display:inline-block; overflow:hidden; margin:10px 0 10px 0; width:180px; vertical-align:top;">
                                    <div style="float:left; display:inline-block; width:20%; margin-top:5px; margin-left:20px;">Жил</div>
                                    <div style="float:left; display:inline-block; width:65%">
                                        <select name="gapTab6t1SelectYear" runat="server" id="gapTab6t1SelectYear" class="form-control" style="padding:1px;">
                                             <option  value="2007-2011">2007-2011</option>
                                             <option  value="2012-2016">2012-2016</option>
                                             <option  value="2017-2021">2017-2021</option>
                                             <option  value="2022-2026">2022-2026</option>
                                        </select>
                                    </div>
                                </div>
                                <div style="display:inline-block; overflow: hidden; margin:10px 0 10px 0;  width:150px;  vertical-align:top;">
                                    <div style="float: left; display: inline-block; margin-right: 10px; width: 20%; margin-top: 5px; margin-left: 20px;">Газар</div>
                                    <div style="float: left; display: inline-block; width: 56%">
                                        <select id="gapTab6t1SelectGazar" runat="server" class="form-control" style="padding:1px;">
                                            <option value="0">Бүгд</option>
                                        </select>
                                    </div>
                                </div>
                                <div style="display:inline-block; overflow:hidden; margin:10px 0 10px 0; width:200px; vertical-align:top;">
                                    <div style="float:left; display:block; width:30%; margin-top:5px; margin-left:20px;">СС хийх</div>
                                    <div style="float:left; display:block; width:50%">
                                        <select name="gapTab6t1SelectTeam" id="gapTab6t1SelectTeam" class="form-control" style="padding:1px;">
                                            <option value="all">Бүгд</option>
                                            <option value="0">Дангаар</option>
                                            <option value="1">Хамтран</option>
                                        </select>
                                    </div>
                                </div>
                                <div style="text-align:right; display:inline-block; margin:10px 0 10px 0; vertical-align:top; width: 56%;">
                                    <img id="gapTab6t1ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" onclick="exportPdf('#divgapTab6t1')" />
                                    <img id="gapTab6t1ExportWord" src="../img/word-icon.png" style="cursor:pointer;" onclick="exportWord('#divgapTab6t1', 'ҮХЦБ-н төлөвлөгөө <% Response.Write(gapTab6t1SelectYear.Items[gapTab6t1SelectYear.SelectedIndex].Text); %>')"/>
                                    <img id="gapTab6t1ExportExcel" src="../img/excel-icon.png" style="cursor:pointer;" onclick="exportExcel('#divgapTab6t1')" />
                                    <button id="gapTab6t1ExportPrint" class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divgapTab6t1')" ><span class="fa fa-print"></span> Хэвлэх </button>
                                    <button id="gapTab6t1Refresh" class="btn btn-primary btn-sm" type="button"><span class="fa fa-refresh"></span> </button>
                                </div>
                                  <div id="divgapTab6t1Table_loader" class="search-background">
                                        <label>
                                            <img width="64" height="" src="img/loading.gif"/>
                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0;">Уншиж байна !</h2>
                                        </label>
                                    </div>
                                <div id="divgapTab6t1" runat="server" class="reports">
                                   
                                    <h2 class="reports_title" style="text-align: center;  font-family:Arial;font-weight: bold;font-size: 14px;padding-bottom: 10px;text-transform: uppercase;line-height: 20px;">
                                        МОНГОЛ УЛСЫН ЗАСГИЙН ГАЗРЫН  <label id="gapTab6t1Year" runat="server"></label> ОНЫ <label id="gapTab6t1YearHalf"></label> ҮЙЛ АЖИЛЛАГААНЫ ХӨТӨЛБӨРИЙГ ХЭРЭГЖҮҮЛЭХ АРГА ХЭМЖЭЭНИЙ ТӨЛӨВЛӨГӨӨНД САНГИЙН САЙДЫН 
                                        <label id="gapTab6t1Team" ></label><br /> ХЭРЭГЖҮҮЛЭХ ЗОРИЛТ, АРГА ХЭМЖЭЭНИЙ ХЭРЭГЖИЛТИЙГ ХАРИУЦАН ЗОХИОН БАЙГУУЛАХ ХУВААРЬ
                                    </h2>
                                    <div id="divgapTab6t1Table" runat="server" >
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
            </div>
        </div>
    </div>
</div>
 <div id="gapWeekImplModal" class="modal fade in modalSecond" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
            <div class="modal-dialog modal-md">
                <div class="modal-content">
                    <div class="modal-header">
                        <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                        <h4 class="modal-title" >Эхний хагас жил</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div id="gapWeekImplDiv" class="form-group">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<style>
    .t{
        text-align:justify;
        font-weight:bold;
    }
</style>
<script>

   
    $('#gapImportWeekImpl').click(function () {
        $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteScalar",
            data: '{qry:"SELECT  IMPL FROM TBL_WORK_IMPLEVAL WHERE YR='+$("#gapTab4SelectYear option:selected").val()+' AND YR_H=1 AND WORK_ID=' + $('#gapImplID').text() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") {
                    $('#gapImplModal').modal('hide');
                    window.location = "../#pg/error500.aspx";
                }
                else {
                    CKEDITOR.instances.gapImplModalImpl.setData(replaceDatabaseToDisplay(arrMsg[1]));
                    $("#gapImplModalImpl").text(arrMsg[1].length);
                }
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    });
    function gapWeekImplShow() {
        $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteScalar",
            data: '{qry:"SELECT  IMPL FROM TBL_WORK_IMPLEVAL WHERE YR=' + $("#gapTab4SelectYear option:selected").val() + ' AND YR_H=1 AND WORK_ID=' + $('#gapImplID').text() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") {
                    $('#gapImplModal').modal('hide');
                    window.location = "../#pg/error500.aspx";
                }
                else {
                    $('#gapWeekImplDiv').html(replaceDatabaseToDisplay(arrMsg[1]));
                }
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    }
    $("#gapTab6t2BtnDugnelt").click(function () {
        $("#divgapTab6t2Dugnelt").html($.trim(CKEDITOR.instances.gapTab6t2InputDugnelt.getData()));
    });
    $("#gapTab6t2BtnZuvlumj").click(function () {
        $("#divgapTab6t2Zuvlumj").html($.trim(CKEDITOR.instances.gapTab6t2InputZuvlumj.getData()));
    });
    $("#gapTab3Add").click(function () {
        $("#date_user").val("");
        $("#divgapWorkModalGazarlist").html("");
        $("#divgapWorkModalYamlist").html("");
        $("#divgapWorkModalYamlist2").html("");
        dataBindWorkModalYamlist();
        dataBindWorkModalYamlist2();
    });
    $("#gapWorkModalGazarlist, #gapWorkModalNDSList, #gapWorkModalGAPList").select2();
</script>
<script type="text/javascript">
    pageSetUp();
    LYear = "";
   

  

    function dataBindPolicyTable() {
        LYear = $('#gapTab1SelectYear').val().split("-");
        showLoader('divBindPolicyTable_loader');
        $.ajax({
            type: "POST",
            url: "ws.aspx/gap_GetEGPolicyTable",
            data: '{cyr:"' + $("#indexCurrentYear").html() + '",yr:"' + LYear[0] + '",Eyr:"' + LYear[1] + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                //$("#egTab1DatatableTbody").html(msg.d
                // ЗГҮАХ-ийн бодлого table list 
                // Авах утга:
                // cyr- Системийн огноо
                // yr-ЗГҮАХ-ийн эхлэх огноо байна 
                // Eyr-ЗГҮАХ-ийн дуусах огноо байна 
                $("#divBindPolicyTable").html(msg.d);
                hideLoader('divBindPolicyTable_loader');
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    }
    
    function dataBindObjectTable() {
        showLoader('divBindObjectTable_loader');
        cYear = $('#gapTab2SelectYear').val().split("-");
        $.ajax({
            type: "POST",
            url: "ws.aspx/gap_GetEGObjectTable",
            data: '{cyr:"' + $("#indexCurrentYear").html() + '",yr:"' + cYear[0] + '",Eyr:"' + cYear[1] + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                // ЗГҮАХ-ийн зорилт list table
                // Авах утга:
                // cyr- Системийн огноо
                // yr-ЗГҮАХ-ийн эхлэх огноо байна 
                // Eyr-ЗГҮАХ-ийн дуусах огноо байна 

                $("#divBindObjectTable").html(msg.d);
                hideLoader('divBindObjectTable_loader');
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    }
    function dataBindWorkTable() {
        cYear = $('#gapTab3SelectYear').val().split("-");
        showLoader('divBindWorkTable_loader');
        $.ajax({

            type: "POST",
            url: "ws.aspx/gap_GetEGWorkTable",
            data: '{strt_yr:"' + cYear[0] + '",end_yr:"' + cYear[1] + '", tm:"' + $("#gapTab3SelectTeam option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                hideLoader('divBindWorkTable_loader');
                // ЗГҮАХ-ийн төлөвлөгөө list table
                // Авах утга:
                // cyr- Системийн огноо
                // yr-ЗГҮАХ-ийн эхлэх огноо байна 
                // tm- ССайд дангаар болон хамтран (all,0,1)
                $("#divBindWorkTable").html(msg.d);
              
                $(".dataTable").css("width", "100%");
              
               // $('#footer').css('width', '100%');
               // $(".dataTable").width();
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    }
    dataBindImplTable("all");

    $("#gapTab4SelectEval").change(function () {
        dataBindImplTable("all");
    });
    $("#gapTab4SelectGazar").change(function () {
        dataBindImplTable("all");
    });
    $("#gapTab4ClickImpl1").click(function () {
        dataBindImplTable('1');
    });
    $("#gapTab4ClickImpl0").click(function () {
        dataBindImplTable('0');
    });
    function dataBindImplTable(impl) {

        cYear = $('#gapTab4SelectYear option:selected').val();
       var myaer = "";
        if ($('#gapTab4SelectYear option:selected').val() >= 2007 && $('#gapTab4SelectYear option:selected').val() <= 2011) {
            //alert("2007-2011");
            myaer = "2007";
        }
        if ($('#gapTab4SelectYear option:selected').val() >= 2012 && $('#gapTab4SelectYear option:selected').val() <= 2016) {
            //alert("2012-2016");
            myaer = "2012";
        }
        if ($('#gapTab4SelectYear option:selected').val() >= 2017 && $('#gapTab4SelectYear option:selected').val() <= 2021) {
            // alert("2017-2021");
            myaer = "2017";
        }
        if ($('#gapTab4SelectYear option:selected').val() >= 2022 && $('#gapTab4SelectYear option:selected').val() <= 2026) {
            // alert("2022-2026");
            myaer = "2022";
        }
        // 2007-2011
        // 2012-2016
        // 2017-2021
        // 2022-2026

        showLoader("divBindImplTable_loader");
        $.ajax({
            type: "POST",
            url: "ws.aspx/gap_GetEGImplTable",
            data: '{cyr:"' + myaer + '",yr:"' + cYear + '", tm:"' + $("#gapTab4SelectTeam option:selected").val() + '", chyr:"' + $("#gapImplModalCurrentHalfYr_Hide").html() + '", hyr:"' + $("#gapTab4SelectYearHalf option:selected").val() + '", eval:"' + $("#gapTab4SelectEval  option:selected").val() + '", brid:"' + $("#gapTab4SelectGazar  option:selected").val() + '",impl:"' + impl + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                // ЗГҮАХ-ийн биелэлт list table
                // Авах утга:
                // cyr- Системийн огноо
                // yr-ЗГҮАХ-ийн эхлэх огноо байна 
                // tm- ССайд дангаар болон хамтран (all,0,1)
                // chyr- Систем хагас жил
                // hyr- Хагас жил гараар
                // eval- Үнэлгээ хувиар (10,20,30)
                // brid- Газруудийн аяди байна
                // impl-  Биелэлт тайлагнасан эсэх (0,1)
                var data_result = replaceDatabaseToDisplay(msg.d);
             //   var customerId_2 = $(msg.d).find('th:eq(5)').html();
                //   alert(customerId_2);

               $("#divBindImplTable").html(data_result.replace("&", ""));

               $(".group-table").css("width", "100%");
               var customerId_2 = $("#edit_is_id").css("width", "10px");
               //alert(customerId_2);
                hideLoader("divBindImplTable_loader");

                var pCnt = 0;
                var pValTotal = 0;
                if ($('#gapTab4Datatable').children('thead').children('tr').children('th').length == 10) {
                    $('#gapTab4Datatable > tbody > tr').each(function () {
                        var pVal = $('td:eq(7) select option:selected', this).val();

                        
                       //     alert(pVal);
                      
                        if (pVal != "none") {
                            pCnt++;
                            pValTotal = parseInt(pValTotal) + parseInt(pVal);
                           
                        }
                    });
                   // alert("1-" + pValTotal);
                }
                else {
                    $('#gapTab4Datatable > tbody > tr').each(function () {
                        var pVal = $('td:eq(10) select option:selected', this).val();
                        if ($(this).find('td:eq(0)').attr('colspan') != "10") {
                             
                            if (pVal != "none") {
                                pCnt++;
                                pValTotal = parseInt(pValTotal) + parseInt(pVal);
                               
                            }
                        }
                    });
                }

                var str = (parseInt(pValTotal) / parseInt(pCnt));
                var newVal = str.toString().substr(0, 4);
                $('#gapImplTotalPer').text(newVal + ' %');
                $('#gapImplTotalPer').text($('#gapImplTotalPer').text().replace("NaN %", "0 %"));
            },
              
            failure: function (response) {
                alert(response.d);
            }

        });
    }
    function dataBindPolicyDDLs() {
        NYear = $('#gapTab1SelectYear').val().split("-");
      //  gapTab1SelectYear
        $.ajax({
            type: "POST",
            url: "ws.aspx/gapGetPolicyListForDDL",
            data: '{yr:"' + NYear[0] + '", Eyr:"' + NYear[1] + '",type:"2"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                // Бодлого жагсаалт
                // авах утга:
                // yr - эхлэх огноо
                // Eyr - дуусах огноо
                // type - төрөл (2)
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else { $("#gapObjectModalPolicy").html("<option value=\"0\">- Бодлого сонго -</option>" + arrMsg[1]); $("#gapWorkModalPolicy").html("<option value=\"\">- Бодлого сонго -</option>" + arrMsg[1]); }
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    }
    function dataBindWorkModalObjectDDL(objId) {
      
        $.ajax({
            type: "POST",
            url: "ws.aspx/GetObjectListForDDL",
            data: '{id:"' + $("#gapWorkModalPolicy option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {

                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0")
                    alert("aldaa");
                   // window.location = "../#pg/error500.aspx";
                else {
                  //  $('#gapWorkModalObject').prop('disabled', false);
                    //$("#gapWorkModalObject").html("<option value=\"0\">- Зорилт сонго -</option>" + arrMsg[1]);
                    $("#gapWorkModalObject").html(varMsg);
                }
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    }
    function dataBindWorkModalYamlist(selectedList) {
        $.ajax({
            type: "POST",
            url: "ws.aspx/gapGetBranchYamListForDDL",
            data: '{selectedList:"' + selectedList + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                // Яам сонгох жагсаалт 
                // Авах утга:
                // selectedList- хэрэв засах бол энэ талбарт аяди байна. хоосон байж болно
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    $("#divgapWorkModalYamlist").html(arrMsg[1]);
                }
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    }
    function dataBindWorkModalYamlist2(selectedList) {
        $.ajax({
            type: "POST",
            url: "ws.aspx/gapGetBranchYamListForDDL2",
            data: '{selectedList:"' + selectedList + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                // Яам сонгох жагсаалт 
                // Авах утга:
                // selectedList- хэрэв засах бол энэ талбарт аяди байна. хоосон байж болно
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    $("#divgapWorkModalYamlist2").html(arrMsg[1]);
                }
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    }

    function dataBindWorkModalGazarlist(selectedList) {
        $.ajax({
            type: "POST",
            url: "ws.aspx/gapGetBranchListForDDL",
            data: '{selectedList:"' + selectedList + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                // Газар сонгох жагсаалт 
                // Авах утга:
                // selectedList- хэрэв засах бол энэ талбарт аяди байна. хоосон байж болно
              
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    $("#divgapWorkModalGazarlist").html(arrMsg[1]);
                }
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    }
    
    function dataBindWorkModalNDSList(selectedList) {
        $.ajax({
            type: "POST",
            url: "ws.aspx/gapGetMultiSelectList",
            data: '{type:"1", selectedList:"' + selectedList + '",stid:"' + '<%= Session["LM_UserID"] %>' + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    $("#divgapWorkModalNDSList").html("<select id=\"gapWorkModalNDSList\" name=\"gapWorkModalNDSList\" multiple=\"multiple\" style=\"width:100%\">" + arrMsg[1]);
                    $("#divgapWorkModalNDSList").append("</select><script>$(\"#gapWorkModalNDSList\").select2();<\/script>");
                }
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    }
    function dataBindWorkModalGAPList(selectedList) {
        $.ajax({
            type: "POST",
            url: "ws.aspx/gapGetMultiSelectList",
            data: '{type:"3", selectedList:"' + selectedList + '",stid:"' + '<%= Session["LM_UserID"] %>' + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var varMsg = msg.d;
                var arrMsg = varMsg.split("~");
                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                else {
                    $("#divgapWorkModalGAPList").html("<select id=\"gapWorkModalGAPList\" name=\"gapWorkModalGAPList\" multiple=\"multiple\" style=\"width:100%\">" + arrMsg[1]);
                    $("#divgapWorkModalGAPList").append("</select><script>$(\"#gapWorkModalGAPList\").select2();<\/script>");
                }
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    }
   

    $("#gapTab5t1SelectYearHalf").change(function () {
        if ($("#gapTab5t1SelectYearHalf option:selected").val() == "all") {
            $("#gapTab5t1YearHalf").html("");
        } else {
            $("#gapTab5t1YearHalf").html($("#gapTab5t1SelectYearHalf option:selected").html());
        }
        dataBindTab5t1Table();
    });
    dataBindTab5t1Table()
    function dataBindTab5t1Table() {
        nYear = $('#gapTab5t1SelectYear').val().split("-");
        showLoader("divgapTab5t1Table_loader");
        $.ajax({
            type: "POST",
            url: "ws.aspx/gap_GetTab5t1Table",
            data: '{yr:"' + nYear[0] + '", yrEND:"' + nYear[1] + '", type:"2", Half_YR:"' + $("#gapTab5t1SelectYearHalf option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                // ЗГҮАХ-н төлөвлөгөө тайлан
                // Авах утга:
                // yr - эхлэх огноо
                // yrEND - дуусах огноо
                // type - төрөл (2)
                // Half_YR - Хагас жил

                $("#divgapTab5t1Table").html(msg.d);

                $('#divgapTab5t1Table table tr:last').css("background-color", "#C6D9F1").css("font-weight", "bold");

                hideLoader("divgapTab5t1Table_loader");
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    }
    dataBindTab5t2Table();
    $("#gapTab5t2SelectBranch").change(function () {
        dataBindTab5t2Table();
    });
    $("#gapTab5t2SelectYearHalf").change(function () {
        if ($("#gapTab5t2SelectYearHalf option:selected").val() == "all") {
            $("#gapTab5t2YearHalf").html("");
        } else {
            $("#gapTab5t2YearHalf").html($("#gapTab5t2SelectYearHalf option:selected").html());
        }
       
        dataBindTab5t2Table();
    });
    function dataBindTab5t2Table() {
        showLoader('divgapTab5t2Table_loader');
        nYear = $('#gapTab5t2SelectYear').val().split("-");
        $.ajax({
            type: "POST",
            url: "ws.aspx/gap_GetTab5t12Table",
            data: '{strt_yr:"' + nYear[0] + '",type:"2",yr:"' + $("#indexCurrentYear").html() + '",brid:"' + $("#gapTab5t2SelectBranch option:selected").val() + '",Half_YR:"' + $("#gapTab5t2SelectYearHalf option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                // ЗГҮАХ-ийн хэрэгжилт (газраар)
                // Авах утга:
                // strt_yr - эхлэх огноо
                // end_yr - дуусах огноо
                // type - төрөл (2)
                // yr - системийн огноо
                // brid - гарар код
                // Half_YR -  Хагас жил
                $("#divgapTab5t2Table").html(msg.d);

                $('#divgapTab5t2Table table tr:last').css("background-color", "#C6D9F1").css("font-weight", "bold");
                hideLoader('divgapTab5t2Table_loader');
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    }


    divgapTab6t2Table2();

    function divgapTab6t2Table2() {
        showLoader('divgapTab6t2Table2_loader');
        nYear = $('#gapTab6t2SelectYear').val().split("-");
        $.ajax({
            type: "POST",
            url: "ws.aspx/gap_GetTab5t12Table",
            data: '{strt_yr:"' + nYear[0] + '",type:"2",yr:"' + $("#indexCurrentYear").html() + '",brid:"0",Half_YR:"' + $("#gapTab6t2SelectYearHalf option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                // ЗГҮАХ-ийн хэрэгжилт (газраар)
                // Авах утга:
                // strt_yr - эхлэх огноо
                // end_yr - дуусах огноо
                // type - төрөл (2)
                // yr - системийн огноо
                // brid - гарар код
                // Half_YR -  Хагас жил
                $("#divgapTab6t2Table2").html(msg.d);
                $('#divgapTab6t2Table2 table tr:last').css("background-color", "#C6D9F1").css("font-weight", "bold");
                hideLoader('divgapTab6t2Table2_loader');
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    }
    $("#gapTab5t3SelectBranch").change(function () {
        dataBindTab5t3Table();
    });
    $("#gapTab5t3SelectEva").change(function () {
        dataBindTab5t3Table();
    });
    $("#gapTab5t3SelectYearHalf").change(function () {
        if ($("#gapTab5t3SelectYearHalf option:selected").val()=="all") {
            $("#gapTab5t3YearHalf").html("");
        } else {
            $("#gapTab5t3YearHalf").html($("#gapTab5t3SelectYearHalf option:selected").html());
           }
        dataBindTab5t3Table();
    });

    dataBindTab5t3Table();
    function dataBindTab5t3Table() {
        showLoader('divgapTab5t3Table_loader');
        nYear = $('#gapTab5t3SelectYear').val().split("-");
        $.ajax({
            type: "POST",
            url: "ws.aspx/gap_GetTab5t3Table",
            data: '{yr:"' + nYear[0] + '",Half_YR:"' + $("#gapTab5t3SelectYearHalf option:selected").val() + '",type:"2",brid:"' + $("#gapTab5t3SelectBranch  option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                // ЗГҮАХ-ийн удаашралтай ажлын жагсаалт
                // yr - огноо
                // hyr - хагас жил
                // type - төрөл 
                // brid - газар код
                // eval - үнэлгээ 
                // Half_YR - Хагас жил 
                $("#divgapTab5t3Table").html(msg.d);
                hideLoader('divgapTab5t3Table_loader');
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    }

    $("#gapTab6t1SelectGazar").change(function () {
      //  alert($("#gapTab6t1SelectGazar  option:selected").val());
        dataBindTab6t1Table();
    });

    //$("#gapTab6t1SelectYearHalf").change(function () {

    //    if ($("#gapTab6t1SelectYearHalf option:selected").val() == "all") {
    //        $("#gapTab6t1YearHalf").html("");
    //    } else {
    //        $("#gapTab6t1YearHalf").html($("#gapTab6t1SelectYearHalf option:selected").html());
    //    }
    //    //gapTab6t1YearHalf
    //    //  alert($("#gapTab6t1SelectGazar  option:selected").val());
    //    dataBindTab6t1Table();
    //});

    function dataBindTab6t1Table() {
        showLoader('divgapTab6t1Table_loader');
        nYear = $('#gapTab6t1SelectYear option:selected').val().split("-");
        $.ajax({
            type: "POST",
            url: "ws.aspx/gap_GetTab6t1Table",
            data: '{yr:"' + nYear[0] + '", team:"' + $("#gapTab6t1SelectTeam option:selected").val() + '",type:"2",br_id:"' + $("#gapTab6t1SelectGazar option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                // ЗГҮАХ-н төлөвлөгөө 
                // авах утга:
                // yr - огноо 
                // team - СС хийх төрөл(0,1)
                // type - төрөл (2)
                // br_id - газар код
                $("#divgapTab6t1Table").html(msg.d);
                hideLoader('divgapTab6t1Table_loader');
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    }
    dataBindTab6t2Datas();
    function dataBindTab6t2Datas() {
        showLoader();
        $("#gapTab6t2Year").text($("#gapTab6t2SelectYear option:selected").val()); 
        $("#gapTab6t2Year2").text($("#gapTab6t2SelectYear option:selected").val());
        $("#gapTab6t2Year3").text($("#gapTab6t2SelectYear option:selected").val());
        $("#gapTab6t2Year4").text($("#gapTab6t2SelectYear option:selected").val());
        $("#gapTab6t2Year5").text($("#gapTab6t2SelectYear option:selected").val());
        if ($("#gapTab6t2SelectYearHalf option:selected").val() == "all") {
            $("#gapTab6t2YearHalf").text("");
        } else {
            $("#gapTab6t2YearHalf").text($("#gapTab6t2SelectYearHalf option:selected").text());
        }

        $("#gapTab6t2YearHalf2").text($("#gapTab6t2SelectYearHalf option:selected").text());
        $("#gapTab6t2Tushaal").text($("#gapTab6t2InputTushaal").val());
        $("#gapTab6t2Togtool").text($("#gapTab6t2InputTogtool").val());
        nYear = $('#gapTab6t2SelectYear').val().split("-");
       
        $.ajax({
            type: "POST",
            url: "ws.aspx/gap_GetTab5t1Table",
            data: '{yr:"' + nYear[0] + '",yrEND:"' + nYear[1] + '", type:"2", Half_YR:"' + $("#gapTab6t2SelectYearHalf option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                // ЗГҮАХ-ийн ХШҮ-ний товч тайлан
                // Авах утга:
                // yr - эхлэх огноо
                // yrEND - дуусах огноо
                // type - төрөл (2)
                $("#divgapTab6t2Table1").html(msg.d);

                $('#divgapTab6t2Table1 table tr:last').css("background-color", "#C6D9F1").css("font-weight", "bold");
                result = $(msg.d).find("#all_1").val();
                result_2 = $(msg.d).find("#all_2").val();
                var customerId = $(msg.d).find("td").eq(1).html();
                var customerId_2 = $(msg.d).find('tr:eq(3) td:eq(1)').html();
                $("#gapTab6t2WorkTeam1").html(customerId_2);
                $("#gapTab6t2WorkTeam0").html(customerId);

                $("#gapTab6t2WorkTeam").html(result);
                $("#gapTab6t2TotalPercent").html(result_2);
            },
            failure: function (response) {
                alert(response.d);
            }
        });
        $.ajax({
            type: "POST",
            url: "ws.aspx/gap_GetTab5t3Table",
            data: '{yr:"' + nYear[0] + '", Half_YR:"' + $("#gapTab6t2SelectYearHalf option:selected").val() + '", type:"2",brid:"0"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                // ЗГҮАХ-ийн  удаашралтай байгаа арга хэмжээнүүд
                // yr - огноо
                // hyr - хагас жил
                // type - төрөл (2)
                $("#divgapTab6t2Table3").html(msg.d);
                hideLoader();
            },
            failure: function (response) {
                alert(response.d);
            }
        });

    }
    $("#gapTab6t3SelectGazar").change(function () {
        dataBindTab6t3Table();
    });
    $("#gapTab6t3SelectUserYear").change(function () {
        dataBindTab6t3Table();
    });
    $("#gapTab6t3SelectYearHalf").change(function () {
        if ($("#gapTab6t3SelectYearHalf option:selected ").val() == "all") {
        } else {
            $("#Tab6t3selectYearHalf").html($("#gapTab6t3SelectYearHalf option:selected ").html());
        }
        dataBindTab6t3Table();
    });
    function dataBindTab6t3Table() {
        nYear = $('#gapTab6t3SelectYear').val().split("-");
        showLoader();
        $.ajax({
            type: "POST",
            url: "ws.aspx/gap_GetTab6t3Table",
            data: '{yr:"' + nYear[0] + '", type:"2", br_id:"' + $("#gapTab6t3SelectGazar option:selected").val() + '", user_date:"' + $("#gapTab6t3SelectUserYear option:selected").val() + '", Half_YR:"' + $("#gapTab6t3SelectYearHalf option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                // ЗГҮАХ-ийн хэрэгжилтийн дэлгэрэнгүй тайлан
                // авах утга:
                // yr - огноо
                // type - төрөл (2)
                // br_id - газар код
                // user_date - Хэрэгжүүлэх хугацаа
                var date_load = msg.d.replace("&", "").replace("&amp;", "").replace("/\+/g", " ").replace("&#38;", "");

                //alert(date_load);

                $("#divgapTab6t3Table").html(date_load);
                hideLoader();
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    }

    //$("egTab4SelectYearHalf").val($("egImplModalCurrentHalfYr_Hide").html());
    dataBindPolicyTable();
    dataBindObjectTable();
    dataBindWorkTable();
    dataBindImplTable("all");
    dataBindPolicyDDLs();
    dataBindWorkModalYamlist("none");
    dataBindWorkModalGazarlist("none");
    dataBindWorkModalNDSList("none");
    dataBindWorkModalGAPList("none");

    // $('#gapWorkModalObject').prop('disabled', true);  gapTab6t2SelectBranch
    $("#gapWorkModalPolicy").change(function () {
        if ($("#gapWorkModalPolicy option:selected").val() == "0") {
            $('#gapWorkModalObject').html("<option value=\"0\">- Бодлого сонго -</option>");
           // $('#gapWorkModalObject').prop('disabled', false);
        }
        else {
            dataBindWorkModalObjectDDL(0);
        }
    });

    function saveEval(me) {
        //if ($(me).val() == "none") $(me).css('background-color', '#FF0000');
        //else if ($(me).val() == "0" || $(me).val() == "10" || $(me).val() == "30") $(me).css('background-color', '#FF0000');
        //else if ($(me).val() == "50" || $(me).val() == "70") $(me).css('background-color', '#FFFF00');
        //else if ($(me).val() == "80" || $(me).val() == "90" || $(me).val() == "100") $(me).css('background-color', '#A6D785');

        var varMsg = $(me).closest("tr").attr("id");
        var arrMsg = varMsg.split("-");
        var qry = "";
        if ($(me).val() == "none") qry = "UPDATE TBL_WORK_IMPLEVAL SET EVAL=null WHERE WORK_ID=" + arrMsg[1] + " AND YR=" + $('#gapImplModalCurrentYr').html() + " AND YR_H=" + $('#gapTab4SelectYearHalf  option:selected').val();
        else qry = "UPDATE TBL_WORK_IMPLEVAL SET EVAL=" + $(me).val() + " WHERE WORK_ID=" + arrMsg[1] + " AND YR=" + $('#gapImplModalCurrentYr').html() + " AND YR_H=" + $('#gapTab4SelectYearHalf  option:selected').val();

        $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteNonQuery",
            data: '{qry:"' + qry + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                if (msg.d == "0") {
                    window.location = "../#pg/error500.aspx";
                }
                else {
                    $.smallBox({
                        title: "ЗГҮАХ-ийн биелэлтийн үнэлгээ",
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
                alert(response.d);
            }
        });
    }
    function saveEvalDesc(txtareaid) {
        var varMsg = $("#" + txtareaid).closest("tr").attr("id");
        var arrMsg = varMsg.split("-");
        var qry = "";
        if ($.trim($("#" + txtareaid).val()) == "") qry = "UPDATE TBL_WORK_IMPLEVAL SET EVAL_DESC=null WHERE WORK_ID=" + arrMsg[1] + " AND YR=" + $('#gapImplModalCurrentYr').html() + " AND YR_H=" + $('#gapTab4SelectYearHalf  option:selected').val();
        else qry = "UPDATE TBL_WORK_IMPLEVAL SET EVAL_DESC=\'" + $.trim($("#" + txtareaid).val()) + "\' WHERE WORK_ID=" + arrMsg[1] + " AND YR=" + $('#gapImplModalCurrentYr').html() + " AND YR_H=" + $('#gapTab4SelectYearHalf  option:selected').val();
        $.ajax({
            type: "POST",
            url: "ws.aspx/WSOracleExecuteNonQuery",
            data: '{qry:"' + qry + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                else {
                    $.smallBox({
                        title: "ЗГҮАХ-ийн биелэлтийн үнэлгээний тайлбар",
                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай засагдлаа...</i>",
                        color: "#659265",
                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                        timeout: 4000
                    });
                }
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    }

 
    $("#gapTab1SelectYear").change(function () {
        dataBindPolicyTable();
    });
    $("#gapTab2SelectYear").change(function () {
        cYear = $('#gapObjectModalCurrentYr').html().split("-");
        dataBindObjectTable();
    });

   
    $("#gapTab6t3SelectYear").change(function () {
        $("#Tab6t3selectYear").html($("#gapTab6t3SelectYear  option:selected").val())
        dataBindTab6t3Table();
    });
    $("#gapTab3SelectYear").change(function () {
        dataBindWorkTable();
    });
    $("#gapTab3SelectTeam").change(function () {
        dataBindWorkTable();
    });
    $("#gapTab4SelectYear").change(function () {
        dataBindImplTable("all");
    });
    $("#gapTab4SelectTeam").change(function () {
        dataBindImplTable("all");
    });
    $("#gapTab4SelectYearHalf").change(function () {

        dataBindImplTable("all");
    });
    $("#gapTab5t1SelectYear").change(function () {
        $("#gapTab5t1Year").html($("#gapTab5t1SelectYear option:selected").val());
        dataBindTab5t1Table();
    });
    $("#gapTab5t2SelectYear").change(function () {
        $("#gapTab5t2Year").html($("#gapTab5t2SelectYear option:selected").val());
        dataBindTab5t2Table($("#gapTab5t2SelectYear option:selected").text());
    });
    $("#gapTab5t3SelectYear").change(function () {
        $("#gapTab5t3Year").html($("#gapTab5t3SelectYear option:selected").val());
        dataBindTab5t3Table();
    });
    $("#gapTab6t1SelectYear").change(function () {
        $("#gapTab6t1Year").html($("#gapTab6t1SelectYear option:selected").val());
        dataBindTab6t1Table();
    });
    $("#gapTab6t1SelectTeam").change(function () {

        if (($("#gapTab6t1SelectTeam option:selected").val() == "all")) {
            $("#gapTab6t1Team").html("");
        } else {

            if ($("#gapTab6t1SelectTeam option:selected").val() == "0") {
                $("#gapTab6t1Team").html("ДАНГААР ХАРИУЦАХ");
            }
            else {
                $("#gapTab6t1Team").html("БУСАД САЙДТАЙ ХАМТРАН ХЭРЭГЖҮҮЛЭХ");
            }
        }

        dataBindTab6t1Table();
    });
    $("#gapTab6t2SelectYear").change(function () {

        dataBindTab6t2Datas();
        divgapTab6t2Table2();

    });
    $("#gapTab6t2SelectBranch").change(function () {
        dataBindTab6t2Datas();
    });
    $("#gapTab6t2Refresh").click(function () {
        $("#gapTab6t2SelectYear").val($('#gapWorkModalCurrentYr').html());
        dataBindTab6t2Datas();
    });
    $("#gapWorkModalTeam").change(function () {

        if ($("#gapWorkModalTeam option:selected").val() == "0") {
            $("#ministry_list").css("display", "none");
        }

        else if ($("#gapWorkModalTeam option:selected").val() == "1") {

            $("#ministry_list").css("display", "block");
            // gapDataMinistry
        }

    });


    $("#gapTab6t2SelectYear").change(function () {
        dataBindTab6t2Datas();
    });
    $("#gapTab6t2SelectYearHalf").change(function () {
        dataBindTab6t2Datas();
        divgapTab6t2Table2();
    });
    $("#gapTab6t2BtnTushaal").click(function () {
        $("#gapTab6t2Tushaal").text($("#gapTab6t2InputTushaal").val());
    });
    $("#gapTab6t2BtnTogtool").click(function () {
        $("#gapTab6t2Togtool").text($("#gapTab6t2InputTogtool").val());
    });

    $("#gapTab5t1Refresh").click(function () {
        $("#gapTab5t1SelectYear").val($('#gapWorkModalCurrentYr').html());
        $("#gapTab5t1Year").html($("#gapTab5t1SelectYear option:selected").val());
        dataBindTab5t1Table();
    });
    $("#gapTab5t2Refresh").click(function () {
        $("#gapTab5t2SelectYear").val($('#gapWorkModalCurrentYr').html());
        $("#gapTab5t2Year").html($("#gapTab5t2SelectYear option:selected").val());
        $("#gapTab5t2SelectBranch").val("0");
        dataBindTab5t2Table();
    });
    $("#gapTab5t3Refresh").click(function () {
        $("#gapTab5t3SelectYear").val($('#gapWorkModalCurrentYr').html());
        $("#gapTab5t3Year").html($("#gapTab5t3SelectYear option:selected").val());
        $("#gapTab5t3SelectYearHalf").val("all");
        $("#gapTab5t3SelectBranch").val("0");
        $("#gapTab5t3SelectEva").val("all");
       // gapTab5t3SelectYearHalf
        dataBindTab5t3Table();

           
    });

    $("#gapTab6t1Refresh").click(function () {
        $("#gapTab6t1SelectYear").val($('#gapWorkModalCurrentYr').html());
        $("#gapTab6t1Year").html($("#gapTab6t1SelectYear").val());
        $("#gapTab6t1SelectGazar").val("0");
        $("#gapTab6t1SelectTeam").val("all")
       
        dataBindTab6t1Table();
    });
    $("gapTab6t2Refresh").click(function () {
        $("#gapTab6t2SelectYear").val($('#gapWorkModalCurrentYr').html());
        $("#gapTab6t2SelectYearHalf").val($("#indexCurrentYearHalf").html());
        dataBindTab6t2Datas();
    });
    $("#gapTab6t3Refresh").click(function () {
        $("#gapTab6t3SelectYear").val($('#gapWorkModalCurrentYr').html());
        $("#gapTab6t3SelectGazar").val("0");
        $("#gapTab6t3SelectUserYear").val("0");

        dataBindTab6t3Table();
    });

    $("#gapTab3t2SelectBranch").change(function () {
        $("#gapTab5t2Year").html($("#gapTab5t2SelectYear option:selected").val());
        $("#gapTab5t2YearHalf").html($("#gapTab5t2SelectYearHalf option:selected").val().replace("1", "ЭХНИЙ ХАГАС ЖИЛИЙН").replace("2", "ЖИЛИЙН ЭЦСИЙН"));
        dataBindTab5t2Table();
    });
    $("#gapTab1Add").click(function () {
        $("#gapPolicyModalHeaderLabel").html("нэмэх");
        $("#gapPolicyModalPolicyno").val("");
        $("#gapPolicyModalPolicyname").val("");
        $("#gapPolicyID").val("");
    });
    $("#gapTab2Add").click(function () {
        $("#gapObjectModalHeaderLabel").html("нэмэх");
        $("#gapObjectModalObjectno").val("");
        $("#gapObjectModalObjectname").val("");
        $("#gapObjectID").val("");
        $("#gapObjectModalPolicy")[0].selectedIndex = 0;
    });
    $("#gapTab3Add").click(function () {
        $("#gapWorkModalHeaderLabel").html("нэмэх");
        $("#gapWorkModalTeam")[0].selectedIndex = 0;
        $("#gapWorkModalPolicy")[0].selectedIndex = 0;
        $("#gapWorkModalObject").html("");
        $('#gapWorkModalObject').prop('disabled', false);
        $("#gapWorkModalWorkNo").val("");
        $("#gapWorkModalWorkName").val("");
        $("#gapWorkModalResult").val("");
        dataBindWorkModalGazarlist("none");
        dataBindWorkModalNDSList("none");
        dataBindWorkModalGAPList("none");
    });
    function gapTab4More(id) {
        $("#gapImplModalPol1").html($("#gapTab4DatatableRowID-" + id + " td:eq(1)").html());
      //  alert($("#gapTab4DatatableRowID-" + id + " td:eq(9)").html());
        $("#gapImplModalMore").html($("#gapTab4DatatableRowID-" + id + " td:eq(9)").html());
    }
    function gapTab4Add(id) {
        if ($("#gapTab4SelectYearHalf option:selected").val() == '1') {
            $("#half_is_not").css("dsplay", "none");
        } else {
            $("#half_is_not").css("dsplay", "block");
        }
        $("#gapImplModalCurrentYr").html($("#gapTab4SelectYear  option:selected").val());
       // alert($("#gapTab4SelectYearHalf  option:selected").html());
        $("#gapImplModalCurrentHalfYr_one").html($("#gapTab4SelectYearHalf  option:selected").html());
        $("#gapImplID").html($("#gapTab4DatatableRowID-" + id + " td:eq(0)").html());
         CKEDITOR.instances.gapImplModalImpl.setData("");
        $("#gapImplModalHeaderLabel").html("нэмэх");
        $("#gapImplModalCharLength").text('0');

       // alert($("#gapTab4DatatableRowID-" + id + " td:eq(2)").html());

        $("#gapImplModalPol").html($("#gapTab4DatatableRowID-" + id + " td:eq(1)").html());
        $("#gapImplModalPol1").html($("#gapTab4DatatableRowID-" + id + " td:eq(1)").html());
      
    }
    function showEditPolicyModal(id) {

        //$("#egTab1DatatableTbody").html(msg.d
        // ЗГҮАХ-ийн бодлого засах
        // Авах утга:
        // cyr- Системийн огноо
        // yr-ЗГҮАХ-ийн эхлэх огноо байна 
        // Eyr-ЗГҮАХ-ийн дуусах огноо байна 

        $("#gapPolicyModalPolicyno").val($("#gapTab1DatatableRowID-" + id + " td:eq(1)").html());
        $("#gapPolicyModalPolicyname").val($("#gapTab1DatatableRowID-" + id + " td:eq(2)").html());
        $("#gapPolicyModalCurrentYr").html($("#gapTab1DatatableRowID-" + id + " td:eq(3)").html());
        $("#gapPolicyID").val($("#gapTab1DatatableRowID-" + id + " td:eq(0)").html());
        $("#gapPolicyModalHeaderLabel").html("засах");
    }
    function showEditObjectModal(id) {

        $("#gapObjectModalPolicy").val($("#gapTab2DatatableRowID-" + id + " td:eq(2)").html());
        $("#gapObjectModalObjectno").val($("#gapTab2DatatableRowID-" + id + " td:eq(5)").html());
        $("#gapObjectModalObjectname").val($("#gapTab2DatatableRowID-" + id + " td:eq(6)").html());
        $("#gapObjectID").val(id);
        $("#gapObjectModalHeaderLabel").html("засах");
    }
    function showEditWorkModal(id) {
        $("#gapWorkID").val(id);
        $("#gapWorkModalHeaderLabel").html("засах");
        $("#gapWorkModalTeam").val($("#gapTab3DatatableRowID-" + id + " td:eq(1)").html());
        $("#gapWorkModalPolicy").val($("#gapTab3DatatableRowID-" + id + " td:eq(2)").html());
        dataBindWorkModalObjectDDL($("#gapTab3DatatableRowID-" + id + " td:eq(3)").html());
        $("#gapWorkModalObject").val($("#gapTab3DatatableRowID-" + id + " td:eq(3)").html());
        $("#gapWorkModalWorkNo").val($("#gapTab3DatatableRowID-" + id + " td:eq(4)").html());
        $("#gapWorkModalWorkName").val($("#gapTab3DatatableRowID-" + id + " td:eq(5)").html());
        $("#gapWorkModalResult").val($("#gapTab3DatatableRowID-" + id + " td:eq(8)").html());
        $("#date_user").val($("#gapTab3DatatableRowID-" + id + " td:eq(7)").html());
        $("#gapWorkModalStock").val($("#gapTab3DatatableRowID-" + id + " td:eq(9)").html());
        dataBindWorkModalGazarlist($("#gapTab3DatatableRowID-" + id + " td:eq(15)").html());       
        dataBindWorkModalYamlist($("#gapTab3DatatableRowID-" + id + " td:eq(13)").html());
        dataBindWorkModalYamlist2($("#gapTab3DatatableRowID-" + id + " td:eq(14)").html());
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
                    dataBindWorkModalNDSList(arrMsg[0]);
                    dataBindWorkModalGAPList(arrMsg[1]);
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
        //if ($("#gapTab3DatatableRowID-" + id + " td:eq(11)").html()!= "none") {
        //    $("#ministry_list").css("display", "block");
        //} else {
        //    $("#ministry_list").css("display", "none");
        //}
    }
    function showEditImplModal(id) {
        if ($("#gapTab4SelectYearHalf option:selected").val() == '1') {
            $("#half_is_not").css("display", "none");
        } else {
            $("#half_is_not").css("display", "block");
        }
        $("#gapImplModalCurrentYr").html($("#gapTab4SelectYear option:selected").val());
        $("#gapImplModalCurrentHalfYr_one").html($("#gapTab4SelectYearHalf option:selected").html());
        $("#gapImplID").html($("#gapTab4DatatableRowID-" + id + " td:eq(0)").html());
        $("#gapImplModalHeaderLabel").html("засах");
      //  alert($("#gapTab4DatatableRowID-" + id + " td:eq(2)").html());
        $("#gapImplModalPol").html($("#gapTab4DatatableRowID-" + id + " td:eq(1)").html());
        $("#gapImplModalPol1").html($("#gapTab4DatatableRowID-" + id + " td:eq(1)").html());
        CKEDITOR.instances.gapImplModalImpl.setData($("#gapTab4DatatableRowID-" + id + " td:eq(5)").html());
    }
    function showDeletePolicyModal(id) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "\"" + $("#gapTab1DatatableRowID-" + id + " td:eq(2)").html() + ". " + $("#gapTab1DatatableRowID-" + id + " td:eq(3)").html() + "\" бодлогыг устгах уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                $.ajax({
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
                            $('#gapPolicyModal').modal('hide');
                            $.smallBox({
                                title: "Сонгосон ЗГҮАХ-ийн бодлого",
                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай устлаа...</i>",
                                color: "#659265",
                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                timeout: 4000
                            });
                        }
                    },
                    failure: function (response) {
                        alert(response.d);
                    }
                });
            }
        });
    }
    function showDeleteObjectModal(id) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "\"" + $("#gapTab2DatatableRowID-" + id + " td:eq(3)").html() + ". " + $("#gapTab2DatatableRowID-" + id + " td:eq(5)").html() + ". " + $("#gapTab2DatatableRowID-" + id + " td:eq(6)").html() + "\"зорилтыг устгах уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                $.ajax({
                    type: "POST",
                    url: "ws.aspx/WSOracleExecuteNonQuery",
                    data: '{qry:"DELETE FROM TBL_OBJ WHERE ID=' + id + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        if (msg.d == "0") window.location = "../#pg/error500.aspx";
                        else {
                            dataBindObjectTable();
                            $('#gapObjectModal').modal('hide');
                            $.smallBox({
                                title: "Сонгосон ЗГҮАХ-ийн зорилт",
                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай устлаа...</i>",
                                color: "#659265",
                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                timeout: 4000
                            });
                        }
                    },
                    failure: function (response) {
                        alert(response.d);
                    }
                });
            }
        });
    }
    function showDeleteWorkModal(id) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "\"" + $("#gapTab3DatatableRowID-" + id + " td:eq(6)").html() + "\" арга хэмжээг устгах уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                $.ajax({
                    type: "POST",
                    url: "ws.aspx/WSOracleExecuteNonQuery",
                    data: '{qry:"DELETE FROM TBL_WORK WHERE ID=' + id + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        if (msg.d == "0") window.location = "../#pg/error500.aspx";
                        else {
                            dataBindWorkTable();
                            $('#gapWorkModal').modal('hide');
                            $.smallBox({
                                title: "Сонгосон ЗГҮАХ-ийн зорилт",
                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай устлаа...</i>",
                                color: "#659265",
                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                timeout: 4000
                            });
                        }
                    },
                    failure: function (response) {
                        alert(response.d);
                    }
                });
            }
        });
    }

    loadScript("js/plugin/bootstrap-wizard/jquery.bootstrap.wizard.min.js", runBootstrapWizard);
    //loadScript("js/plugin/bootstrap-wizard/jquery.bootstrap.wizard.min.js", runBootstrapOne);
    function runBootstrapWizard() {

        var $validator = $("#gapPolicyModalForm").validate({
            rules: {
                gapPolicyModalPolicyno: {
                    required: true,
                    maxlength: 10
                },
                gapPolicyModalPolicyname: {
                    required: true,
                    maxlength: 1000
                }
            },
            messages: {
                gapPolicyModalPolicyno:{
                    required: "Бодлогын дугаар заавал оруулна уу",
                    maxlength: "Зөвхөн 10 хүртэл тоо оруулна уу",
                }, 
                gapPolicyModalPolicyname: {
                    
                    required: "Бодлогын нэр заавал оруулна уу",
                    maxlength: "Зөвхөн 1000 үсэг хүртэл мэдээлэл оруулна уу",
                
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

        var $validatorWork = $("#gapObjectModalForm").validate({
            rules: {
                gapObjectModalPolicy: {
                    required: true,
                    min: 1
                },
                gapObjectModalObjectno: {
                    required: true,
                    number: true,
                    maxlength: 3
                },
                gapObjectModalObjectname: {
                    required: true,
                    maxlength: 1000
                }
            },
            messages: {
                gapObjectModalPolicy: {
                    required: "Бодлого заавал сонгоно уу",
                    min: "Бодлого заавал сонгоно уу",
                },
                gapObjectModalObjectno: {
                    required: "Зорилтын дугаар заавал оруулна уу",
                    number: "Зөвхөн тоон утга оруулна уу",
                    maxlength: "Зөвхөн 3н оронтой тоо оруулна уу"
                },
                gapObjectModalObjectname: {
                    required: "Зорилтын нэр заавал оруулна уу",
                    maxlength: "Зөвхөн 1000 үсэг хүртэл мэдээлэл оруулна уу"
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

        var $validatorObject = $("#gapWorkModalForm").validate({
            rules: {
                gapWorkModalTeam: {
                    required: true
                },
                gapWorkModalPolicy: {
                    required: true
                },
                gapWorkModalObject: {
                    required: true,
                    min: 1
                },
                gapWorkModalWorkNo: {
                    required: true,
                    number: true,
                    maxlength: 3,
                },
                gapWorkModalWorkName: {
                    required: true
                },
                gapWorkModalGazarlist: {
                    required: true
                },
                gapWorkModalResult: {
                    required: true,
                    maxlength: 1000
                },
                gapWorkModalYamlist: {
                    required: true
                },
                gapWorkModalStock: {
                    required: false,
                    maxlength: 1000
                }
            },
            messages: {
                gapWorkModalTeam: "Сонгоно уу",
                gapWorkModalPolicy: "Сонгоно уу",
                gapWorkModalObject: {
                    required: "Сонгоно уу",
                    min: "Сонгоно уу"
                },
                gapWorkModalWorkNo:{
                    required: "Оруулна уу",
                    number: "Оруулна уу",
                    maxlength: "Оруулна уу"
                },
                gapWorkModalWorkName: "Оруулна уу",
                gapWorkModalGazarlist: "Сонгоно уу",
                gapWorkModalResult: {
                    required: "Оруулна уу",
                    maxlength: "Уртдаа 1000 тэмдэгт авна"
                },
                gapWorkModalYamlist: "Сонгоно уу",
                gapWorkModalStock: {
                    maxlength: "Уртдаа 1000 тэмдэгт авна"
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
    $('#gapPolicyModalForm').submit(function (e) {
        if (!$('#gapPolicyModalPolicyno').valid() || !$('#gapPolicyModalPolicyname').valid()) {
            e.preventDefault();
        }
        else {
            var isUpdate = "";
            if ($("#gapPolicyModalHeaderLabel").html() == "засах") isUpdate = " AND ID!=" + $("#gapPolicyID").val();
            levelYear = $('#gapPolicyModalCurrentYr').html().split("-");
            $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteScalar",
                data: '{qry:"SELECT COUNT(NO) FROM TBL_POL WHERE POLIMPL_ID=2 AND YR<=(SELECT YR FROM TBL_SYSSET WHERE ACTIVE=1) AND END_YR>=(SELECT YR FROM TBL_SYSSET WHERE ACTIVE=1) AND NO=\'' + $.trim($('#gapPolicyModalPolicyno').val())+'\'' + isUpdate + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {

                    var varMsg = msg.d;
                    var arrMsg = varMsg.split("~");
                    if (arrMsg[0] == "0") { $('#gapPolicyModal').modal('hide'); window.location = "../#pg/error500.aspx"; }

                    else {
                        if (arrMsg[1] == "0") {
                           
                            if ($("#gapPolicyModalHeaderLabel").html() == "нэмэх") {
                                qry = 'INSERT INTO TBL_POL VALUES(TBLLASTID(\'TBL_POL\'), 2, \'' + replaceDisplayToDatabase($.trim($('#gapPolicyModalPolicyno').val())) + '\', \'' + replaceDisplayToDatabase($.trim($('#gapPolicyModalPolicyname').val())) + '\',  ' + levelYear[0] + ', ' + levelYear[1] + ')';
                                $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"' + qry + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        // ЗГҮАХ-ийн бодлого нэмэх
                                        // авах утга: 
                                        // TBL_POL_IDENTITY.nextval id auto 
                                        // Бодлого дугаар 
                                        // Бодлого талбар
                                        // эхлэх огноо
                                        // дуусах огноо

                                        if (msg.d == "0") {
                                            alert("aldaa");
                                            $('#gapPolicyModal').modal('hide'); window.location = "../#pg/error500.aspx";
                                        }
                                        else {
                                            dataBindPolicyTable();
                                            dataBindPolicyDDLs();
                                            $('#gapPolicyModal').modal('hide');
                                            $.smallBox({
                                                title: "ЗГҮАХ-ийн бодлого",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай нэмэгдлээ...</i>",
                                                color: "#659265",
                                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                timeout: 4000
                                            });
                                        }
                                    },
                                    failure: function (response) {
                                        alert(response.d);
                                    }
                                });
                            }
                            else {
                                qry = 'UPDATE TBL_POL SET NO=\'' + replaceDisplayToDatabase($.trim($('#gapPolicyModalPolicyno').val())) + '\', NAME=\'' + replaceDisplayToDatabase($.trim($('#gapPolicyModalPolicyname').val())) + '\' WHERE ID=' + $("#gapPolicyID").val();
                                $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"' + qry + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {

                                        // ЗГҮАХ-ийн бодлого засах
                                        // авах утга: 
                                        // Бодлого id  
                                        // Бодлого дугаар 
                                        // Бодлого талбар
                                        // эхлэх огноо
                                        // дуусах огноо

                                        if (msg.d == "0") { $('#gapPolicyModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindPolicyTable();
                                            dataBindPolicyDDLs();
                                            $('#gapPolicyModal').modal('hide');
                                            $.smallBox({
                                                title: "Сонгосон ЗГҮАХ-ийн бодлого",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай засагдлаа...</i>",
                                                color: "#659265",
                                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                timeout: 4000
                                            });
                                        }
                                    },
                                    failure: function (response) {
                                        alert(response.d);
                                    }
                                });
                            }
                        }
                        else alert($("#gapPolicyModalCurrentYr").text() + " оны ЗГҮАХ " + $.trim($('#gapPolicyModalPolicyno').val()) + " дугаартай бодлого орсон байна!");
                    }
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }
    });
    $('#gapObjectModalForm').submit(function (e) {
        if (!$('#gapObjectModalObjectno').valid() || !$('#gapObjectModalObjectname').valid() || !$('#gapObjectModalPolicy').valid()) {
            e.preventDefault();
        }
        else {
            var isUpdate = "";
            if ($("#gapObjectModalHeaderLabel").html() == "засах") isUpdate = " AND ID!=" + $("#gapObjectID").val();

            $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteScalar",
                data: '{qry:"SELECT COUNT(NO) FROM TBL_OBJ WHERE POL_ID=' + $("#gapObjectModalPolicy").val() + ' AND NO=' + $.trim($('#gapObjectModalObjectno').val()) + isUpdate + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    var varMsg = msg.d;
                    var arrMsg = varMsg.split("~");
                    if (arrMsg[0] == "0")
                    {
                        $('#gapObjectModal').modal('hide'); window.location = "../#pg/error500.aspx";
                    }
                    else {

                        if (arrMsg[1] == "0") {

                            if ($("#gapObjectModalHeaderLabel").html() == "нэмэх") {
                                $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"INSERT INTO TBL_OBJ VALUES( TBLLASTID(\'TBL_OBJ\'), ' + $("#gapObjectModalPolicy").val() + ', ' + $.trim($('#gapObjectModalObjectno').val()) + ', \'' + replaceDisplayToDatabase($.trim($('#gapObjectModalObjectname').val())) + '\')"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {

                                        // ЗГҮАХ-ийн зорилт нэмэх
                                        // авах утга: 
                                        // TTBL_OBJ_IDENTITY.nextval id auto 
                                        // зорилт дугаар 
                                        // зорилт оруулах талбар


                                        if (msg.d == "0") { $('#gapObjectModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindObjectTable();
                                            $('#gapObjectModal').modal('hide');
                                            $.smallBox({
                                                title: "ЗГҮАХ-ийн зорилт",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай нэмэгдлээ...</i>",
                                                color: "#659265",
                                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                timeout: 4000
                                            });
                                        }
                                    },
                                    failure: function (response) {
                                        alert(response.d);
                                    }
                                });
                            }
                            else {
                                qry = 'UPDATE TBL_OBJ SET POL_ID=' + $('#gapObjectModalPolicy').val() + ', NO=' + $.trim($('#gapObjectModalObjectno').val()) + ', NAME=\'' + replaceDisplayToDatabase($.trim($('#egObjectModalObjectname').val())) + '\' WHERE ID=' + $("#egObjectID").val();
                                $.ajax({
                                    type: "POST",
                                    url: "ws.aspx/WSOracleExecuteNonQuery",
                                    data: '{qry:"' + qry + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (msg) {
                                        // ЗГҮАХ-ийн зорилт засах
                                        // авах утга: 
                                        // зорилт id 
                                        // зорилт дугаар 
                                        // зорилт оруулах талбар
                                        if (msg.d == "0") { $('#egObjectModal').modal('hide'); window.location = "../#pg/error500.aspx"; }
                                        else {
                                            dataBindObjectTable();
                                            $('#egObjectModal').modal('hide');
                                            $.smallBox({
                                                title: "Сонгосон ЗГҮАХ-ийн зорилт",
                                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай засагдлаа...</i>",
                                                color: "#659265",
                                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                timeout: 4000
                                            });
                                        }
                                    },
                                    failure: function (response) {
                                        alert(response.d);
                                    }
                                });
                            }
                        }
                        else {
                            alert($("#gapObjectModalCurrentYr").text() + " оны ЗГҮАХ \"" + $("#gapObjectModalPolicy option:selected").text() + "\" бодлогын хүрээнд " + $.trim($('#gapObjectModalObjectno').val()) + " дугаартай зорилт орсон байна!");
                        }
                    }
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }
    });
    $('#gapWorkModalForm').submit(function (e) {
        levelYearOne = $("#gapWorkModalCurrentYr").html().split("-");
        if (!$('#gapWorkModalTeam').valid() || !$('#gapWorkModalPolicy').valid() || !$('#gapWorkModalObject').valid() || !$('#gapWorkModalWorkNo').valid() || !$('#gapWorkModalWorkName').valid() || !$('#gapWorkModalGazarlist').valid() || !$('#gapWorkModalResult').valid() || !$('#gapWorkModalYamlist2').valid()) {
            e.preventDefault();
        }
        else {
            var qry = "", brlist = "none", gapndsgaplist = "none", gapYamlist = "none", gapYamlist2="none";
            if ($('#gapWorkModalYamlist').val() != null) gapYamlist = $('#gapWorkModalYamlist').val();
            if ($('#gapWorkModalYamlist2').val() != null) gapYamlist2 = $('#gapWorkModalYamlist2').val();           

            if ($('#gapWorkModalGazarlist').val() != null) brlist = $('#gapWorkModalGazarlist').val();
            if ($('#gapWorkModalNDSList').val() != null) gapndsgaplist = $('#gapWorkModalNDSList').val();
            if ($('#gapWorkModalGAPList').val() != null) {
                if (gapndsgaplist != "none") gapndsgaplist += "," + $('#gapWorkModalGAPList').val();
                else gapndsgaplist = $('#gapWorkModalGAPList').val();
            }

            if ($("#gapWorkModalHeaderLabel").html() == "нэмэх") {
                $.ajax({
                    type: "POST",
                    url: "ws.aspx/Work_Insert_gap",
                    data: '{P_POLIMPLID:"2",P_OBJID:"' + $("#gapWorkModalObject").val() + '",P_WORKNO:"' + $.trim($("#gapWorkModalWorkNo").val()) + '",P_WORKNAME:"' + replaceDisplayToDatabase($.trim($('#gapWorkModalWorkName').val())) + '", P_RESULT:"' + replaceDisplayToDatabase($.trim($('#gapWorkModalResult').val())) + '", P_TEAM:"' + $('#gapWorkModalTeam').val() + '", P_STRTYR:"' + levelYearOne[0] + '", P_ENDYR:"' + levelYearOne[1] + '", P_STAFFID:"' + '<%= Session["LM_UserID"] %>' + '", P_BRLIST:"' + brlist + '", P_EGNDSGAPLIST:"' + gapndsgaplist + '", P_MLIST:"' + gapYamlist + '", P_DATE_USER:"' + $("#date_user").val() + '", P_STOCK:"' + replaceDisplayToDatabase($.trim($('#gapWorkModalStock').val())) + '", P_MLIST2:"' + gapYamlist2 + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        if (msg.d == "0") { 
                            $('#gapWorkModal').modal('hide');
                            window.location = "../#pg/error500.aspx";
                        }
                        else {
                            dataBindWorkTable();
                            $('#gapWorkModal').modal('hide');
                            $.smallBox({
                                title: "ЗГҮАХ-ийн арга хэмжээ",
                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай нэмэгдлээ...</i>",
                                color: "#659265",
                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                timeout: 4000
                            });
                        }
                    },
                    failure: function (response) {
                    alert(response.d);
                }
            });
        }
        else {
            $.ajax({
                type: "POST",
                url: "ws.aspx/Work_Update_gap",
                data: '{P_WORKID:"' + $("#gapWorkID").val() + '",P_POLIMPLID:"2",P_OBJID:"' + $("#gapWorkModalObject").val() + '",P_WORKNO:"' + $.trim($("#gapWorkModalWorkNo").val()) + '",P_WORKNAME:"' + replaceDisplayToDatabase($.trim($('#gapWorkModalWorkName').val())) + '",P_RESULT:"' + replaceDisplayToDatabase($.trim($('#gapWorkModalResult').val())) + '",P_TEAM:"' + $('#gapWorkModalTeam').val() + '",P_STRTYR:"' + levelYearOne[0] + '",P_ENDYR:"' + levelYearOne[1] + '",P_STAFFID:"' + '<%= Session["LM_UserID"] %>' + '",P_BRLIST:"' + brlist + '",P_EGNDSGAPLIST:"' + gapndsgaplist + '",P_MLIST:"' + gapYamlist + '", P_DATE_USER:"' + $("#date_user").val() + '", P_STOCK:"' + replaceDisplayToDatabase($.trim($('#gapWorkModalStock').val())) + '", P_MLIST2:"' + gapYamlist2 + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        if (msg.d == "0") {
                            $('#gapWorkModal').modal('hide');
                            alert("aldaa");
                        }
                        else {
                            dataBindWorkTable();
                            $('#gapWorkModal').modal('hide');
                            $.smallBox({
                                title: "Сонгосон ЗГҮАХ-ийн арга хэмжээ",
                                content: "<i class='fa fa-clock-o'></i> <i>Амжилттай засагдлаа...</i>",
                                color: "#659265",
                                iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                timeout: 4000
                            });
                        }
                    },
                    failure: function (response) {
                        alert(response.d);
                    }
                });
            }
        }
    });

    $('#gapImplSave').click(function () {

        var impl = "", impl1 = "", impl2 = "", impl3 = "", impl4 = "", impl5 = "";
        var qry = "", brlist = "none", egndsgaplist = "none";
        //$("#gapImplID").text()
       
        impl = replaceDisplayToDatabase($.trim(CKEDITOR.instances.gapImplModalImpl.getData())).substr(0, 2000);
        impl1 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.gapImplModalImpl.getData())).substr(2000, 2000);
        impl2 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.gapImplModalImpl.getData())).substr(4000, 2000);
        impl3 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.gapImplModalImpl.getData())).substr(6000, 2000);
        impl4 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.gapImplModalImpl.getData())).substr(8000, 2000);
        impl5 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.gapImplModalImpl.getData())).substr(10000, 2000);
        if (impl.length == 0) impl = "none";
        if (impl1.length == 0) impl1 = "none";
        if (impl2.length == 0) impl2 = "none";
        if (impl3.length == 0) impl3 = "none";
        if (impl4.length == 0) impl4 = "none";
        if (impl5.length == 0) impl5 = "none";

        if ($("#gapImplModalHeaderLabel").html() == "нэмэх") {
            if ($.trim(CKEDITOR.instances.gapImplModalImpl.getData()) == "") {
                alert("ЗГҮАХ-ийн арга хэмжээний биелэлт заавал оруулна уу!");
            }
            else {
                if (replaceDisplayToDatabase($.trim(CKEDITOR.instances.gapImplModalImpl.getData())).length > 12000) {
                    $("#gapImplModalCharLength").text(replaceDisplayToDatabase($.trim(CKEDITOR.instances.gapImplModalImpl.getData())).length);
                    alert("ЗГҮАХ-ийн арга хэмжээний биелэлт уртдаа 12000 тэмдэгт авна!");
                }
                else {

                    $.ajax({
                        type: "POST",
                        url: "ws.aspx/WSOracleExecuteScalar",
                        data: '{qry:"SELECT COUNT(ID) FROM TBL_WORK_IMPLEVAL WHERE YR=' + $("#gapTab4SelectYear option:selected").val() + ' AND YR_H=' + $("#gapTab4SelectYearHalf option:selected").val() + ' AND WORK_ID=' + $('#gapImplID').text() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (msg) {
                            var varMsg = msg.d;
                            var arrMsg = varMsg.split("~");
                            if (arrMsg[0]!= "0") {
                                $("#gapImplModalImpl").text(arrMsg[1].length);
                                if (arrMsg[1] == "0") {

                                    $.ajax({
                                        type: "POST",
                                        url: "ws.aspx/WSOracleExecuteNonQuery",
                                        data: '{qry:"INSERT INTO TBL_WORK_IMPLEVAL (ID, YR, YR_H, WORK_ID, IMPL, IMPL1, IMPL2, IMPL3, IMPL4, IMPL5, RESULT, IMPL_MODIFY_STAFFID, IMPL_MODIFY_DATE) VALUES (TBLLASTID(\'TBL_WORK_IMPLEVAL\'), ' + $("#gapTab4SelectYear option:selected").val() + ', ' + $("#gapTab4SelectYearHalf option:selected").val() + ', ' + $("#gapImplID").text() + ', REPLACE(\'' + impl + '\',\'none\',null), REPLACE(\'' + impl1 + '\',\'none\',null), REPLACE(\'' + impl2 + '\',\'none\',null), REPLACE(\'' + impl3 + '\',\'none\',null), REPLACE(\'' + impl4 + '\',\'none\',null), REPLACE(\'' + impl5 + '\',\'none\',null), \'none\', ' + '<%= Session["LM_UserID"] %>' + ', to_char(sysdate,\'yyyy-MM-dd\'))"}',
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function (msg) {
                                            if (msg.d == "0") {
                                                $('#gapImplModal').modal('hide');
                                                window.location = "../#pg/error500.aspx";
                                            }
                                            else {
                                                dataBindImplTable("all");
                                                $.smallBox({
                                                    title: "ЗГҮАХ-ийн арга хэмжээний биелэлт",
                                                    content: "<i class='fa fa-clock-o'></i> <i>Амжилттай нэмэгдлээ...</i>",
                                                    color: "#659265",
                                                    iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                    timeout: 4000
                                                });
                                            }
                                        },
                                        failure: function (response) {
                                            alert(response.d);
                                        }
                                     });
                                   
                                } else {
                                    $.ajax({
                                        type: "POST",
                                        url: "ws.aspx/WSOracleExecuteNonQuery",
                                        data: '{qry:"UPDATE TBL_WORK_IMPLEVAL SET IMPL=REPLACE(\'' + impl + '\',\'none\',null), IMPL1=REPLACE(\'' + impl1 + '\',\'none\',null), IMPL2=REPLACE(\'' + impl2 + '\',\'none\',null), IMPL3=REPLACE(\'' + impl3 + '\',\'none\',null), IMPL4=REPLACE(\'' + impl4 + '\',\'none\',null), IMPL5=REPLACE(\'' + impl5 + '\',\'none\',null), IMPL_MODIFY_STAFFID=' + '<%= Session["LM_UserID"] %>' + ', IMPL_MODIFY_DATE=to_char(sysdate,\'yyyy-MM-dd\') WHERE WORK_ID=' + $("#gapImplID").text() + ' AND YR_h=' + $("#gapTab4SelectYearHalf option:selected").val() + ' AND YR=' + $("#gapTab4SelectYear option:selected").val() + '"}',
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function (msg) {
                                            if (msg.d == "0") {
                                                $('#gapImplModal').modal('hide');
                                                alert("aldaa");
                                                //window.location = "../#pg/error500.aspx";
                                            }
                                            else {
                                                dataBindImplTable("all");
                                                $("#gapTab4DatatableRowID-" + $("#gapImplID").text() + " td:eq(5)").html(CKEDITOR.instances.gapImplModalImpl.getData());
                                                $("#gapTab4Datatable tr td:contains('" + $("#gapImplID").text() + "')").parent().find("td:eq(4)").find('img').attr("src", "../img/green-circle.png");
                                                $("#gapTab4Datatable tr td:contains('" + $("#gapImplID").text() + "')").parent().find("td:eq(4)").find('img').attr("alt", "Биелэлт засах");
                                                $("#gapTab4Datatable tr td:contains('" + $("#gapImplID").text() + "')").parent().find("td:eq(4)").find('img').attr("onclick", "showEditImplModal(" + $("#gapImplID").text() + ")");
                                                $('#gapImplModal').modal('hide');
                                                $.smallBox({
                                                    title: "Сонгосон ЗГҮАХ-ийн арга хэмжээний биелэлт",
                                                    content: "<i class='fa fa-clock-o'></i> <i>Амжилттай засагдлаа...</i>",
                                                    color: "#659265",
                                                    iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                                    timeout: 4000
                                                });
                                            }
                                        },
                                        failure: function (response) {
                                            alert(response.d);
                                        }
                                    });
                                }
                            }
                        }
                    });

                    
                    }
                  
                }
        }
        else {

            $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteNonQuery",
                data: '{qry:"UPDATE TBL_WORK_IMPLEVAL SET IMPL=REPLACE(\'' + impl + '\',\'none\',null), IMPL1=REPLACE(\'' + impl1 + '\',\'none\',null), IMPL2=REPLACE(\'' + impl2 + '\',\'none\',null), IMPL3=REPLACE(\'' + impl3 + '\',\'none\',null), IMPL4=REPLACE(\'' + impl4 + '\',\'none\',null), IMPL5=REPLACE(\'' + impl5 + '\',\'none\',null), IMPL_MODIFY_STAFFID=' + '<%= Session["LM_UserID"] %>' + ', IMPL_MODIFY_DATE=to_char(sysdate,\'yyyy-MM-dd\') WHERE WORK_ID=' + $("#gapImplID").text() + ' AND YR_h=' + $("#gapTab4SelectYearHalf option:selected").val() + ' AND YR=' + $("#gapTab4SelectYear option:selected").val() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                if (msg.d == "0") {
                                    $('#gapImplModal').modal('hide');
                                    alert("aldaa");
                                    //window.location = "../#pg/error500.aspx";
                                }
                                else {
                                    dataBindImplTable("all");
                                    $("#gapTab4DatatableRowID-" + $("#gapImplID").text() + " td:eq(5)").html(CKEDITOR.instances.gapImplModalImpl.getData());
                                    $("#gapTab4Datatable tr td:contains('" + $("#gapImplID").text() + "')").parent().find("td:eq(4)").find('img').attr("src", "../img/green-circle.png");
                                    $("#gapTab4Datatable tr td:contains('" + $("#gapImplID").text() + "')").parent().find("td:eq(4)").find('img').attr("alt", "Биелэлт засах");
                                    $("#gapTab4Datatable tr td:contains('" + $("#gapImplID").text() + "')").parent().find("td:eq(4)").find('img').attr("onclick", "showEditImplModal(" + $("#gapImplID").text() + ")");
                                    $('#gapImplModal').modal('hide');
                                    $.smallBox({
                                        title: "Сонгосон ЗГҮАХ-ийн арга хэмжээний биелэлт",
                                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай засагдлаа...</i>",
                                        color: "#659265",
                                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                        timeout: 4000
                                    });
                                }
                            },
                            failure: function (response) {
                                alert(response.d);
                            }
                        });
                    }
    });

    //loadScript("../js/plugin/summernote/summernote.js", summernoteStart);

    //function summernoteStart() {
    //    $('.summernote').summernote({
    //        onkeyup: function (e) {
    //            $("#gapImplModalCharLength").text($("#gapImplModalImpl").code().replace('<', 'lt;').replace('>', 'gt;').replace('"', 'quot;').replace('&', 'amp;').replace("'", "apos;").length);
    //        },
    //        height: 150,
    //        focus: true,
    //        tabsize: 2
    //    });
    //}
    function p_window(wsname) {

        // set the width and height
        var the_width = 860;

        var the_height = 700;
        // set window position
        var from_top = 20;
        var from_left = 20;
        // set other attributes
        var has_toolbar = 'no';
        var has_location = 'no';
        var has_directories = 'no';
        var has_status = 'no';
        var has_menubar = 'no';
        var has_scrollbars = 'yes';
        var is_resizable = 'yes';

        // attributes put together
        var the_atts = 'width=' + the_width + ',height=' + the_height + ',top=' + from_top + ',screenY=' + from_top + ',left=' + from_left + ',screenX=' + from_left;
        the_atts += ',toolbar=' + has_toolbar + ',location=' + has_location + ',directories=' + has_directories + ',status=' + has_status;
        the_atts += ',menubar=' + has_menubar + ',scrollbars=' + has_scrollbars + ',resizable=' + is_resizable;
        // open window
        window.open('../pg/printpg.aspx?wsname=' + wsname, '', the_atts);
    }
    function PrintElem(elem) {
        Popup($(elem).html());
    }
    function Popup(data) {
        var mywindow = window.open('', 'my div', 'height=600,width=800');
        mywindow.document.write('<html><head><title></title>');
        mywindow.document.write('</head><body >');
        mywindow.document.write(data);
        mywindow.document.write('</body></html>');
        mywindow.print();
        mywindow.close();

        return true;
    }

   

</script>
<style> 
#
 table tbody tr:last-child
{
  background:#C6D9F1;
}
</style>