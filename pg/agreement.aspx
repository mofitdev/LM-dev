e<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="agreement.aspx.cs" Inherits="LMWebApp.pg.agreement" %>
<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
    <h1 class="page-title txt-color-blueDark" style="margin-bottom:12px;">
        <i class="fa-fw fa fa-home"></i>
        > Үр дүнгийн гэрээ
    </h1>
    <div id="agreementSubmitInfoDiv" runat="server">
        
    </div>
</div>
<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
    <a href="../files/agreement/userguide.pdf" download class="btn btn-labeled btn-primary pull-right" style="margin: 8px 10px 0 0;"><span class="btn-label" style="padding: 0px 7px 3px 5px;"><i class="fa fa-download"></i></span> ГАРЫН АВЛАГА ТАТАХ</a>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
            <ul class="nav nav-tabs bordered">
                <li id="agreementTab1Li" runat="server" class="active" onclick="planmDatabindTabs(this)">
                    <a data-toggle="tab" href="#agreementTab1">
                        <i class="fa fa-fw fa-lg fa-pencil-square-o"></i>
                        Гэрээ боловсруулах
                    </a>
                </li>
                <li id="agreementTab2Li" runat="server" onclick="planmDatabindTabs(this)" data-issubmit="1">
                    <a data-toggle="tab" href="#agreementTab2">
                        <i class="fa fa-fw fa-lg fa-pencil-square-o"></i>
                        Гэрээний <span class="text-warning">БИЕЛЭЛТ</span> оруулах
                    </a>
                </li>
                <li id="agreementTab3Li" runat="server" onclick="planmDatabindTabs(this)">
                    <a data-toggle="tab" href="#agreementTab3">
                        <i class="glyphicon glyphicon-stats"></i>
                        Үр дүнгийн гэрээ /<span class="text-warning">ҮНЭЛЭХ</span>/
                    </a>
                </li>
                <li id="agreementTab4Li" runat="server" onclick="planmDatabindTabs(this)" class="pull-right">
                    <a data-toggle="tab" href="#agreementTab4">
                        <i class="fa fa-lg fa-fw fa-bar-chart-o"></i>
                        Тайлан
                    </a>
                </li>
                <li id="agreementTab5Li" runat="server" onclick="planmDatabindTabs(this)" class="pull-right">
                    <a data-toggle="tab" href="#agreementTab5">
                        <i class="fa fa-fw fa-lg fa-lock"></i>
                        Үр дүнгийн гэрээг батлах
                    </a>
                </li>
            </ul>
            <div id="agreementTabContent" class="tab-content">
                <div id="agreementTab1" class="tab-pane active">
                    <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                        <div style="width:62px; float: left; margin-right: 10px;"><select name="agreementTab1SelectYear" id="agreementTab1SelectYear" runat="server" class="form-control" style="padding:1px;"><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option><option value="2021">2021</option></select></div>
                        <div style="width:50px; float:left; padding-top:5px;">Газар: </div>
                        <div style="width:100px; float:left; margin-right:10px;"><select id="agreementTab1SelectBranchGazar" name="agreementTab1SelectBranchGazar" runat="server" class="form-control" style="padding:1px"><option value="0">Бүгд</option></select></div>
                        <div style="width:50px; float:left; padding-top:5px;">Хэлтэс: </div>
                        <div style="width:100px; float:left; margin-right:10px;"><select disabled="disabled" id="agreementTab1SelectBranchHeltes" name="agreementTab1SelectBranchHeltes" runat="server" class="form-control" style="padding:1px"><option value="0">Бүгд</option></select></div>
                        <div style="width:60px; float:left; padding-top:5px;">Ажилтан: </div>
                        <div style="width:200px; float:left; margin-right:10px;"><select id="agreementTab1SelectStaff" name="agreementTab1SelectStaff" runat="server" class="form-control" style="padding:1px"><option value="0">Бүгд</option></select></div>
                        <div style="width:290px; float:right; margin-right:10px;height: 32px;"><a id="agreementTab1PrintModalBtn" runat="server" class="btn btn-labeled btn-warning" href="javascript:void(0);" data-target="#agreementTab1PrintModal" data-toggle="modal" style="margin: 8px 10px 0 0;"><span class="btn-label" style="padding: 0px 7px 3px 5px;"><i class="fa fa-file-text"></i></span>Үр дүнгийн гэрээ болон хавсралт харах</a></div>
                        <div id="agreementTab1IsGazarBoss" runat="server" class="hide"></div>
                    </div>
                    <div id="loaderTab1" class="search-background">
                        <label>
                            <img width="64" height="" src="img/loading.gif"/>
                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                        </label>
                    </div>
                    <div>
                        <ul class="nav nav-tabs bordered">                           
                            <li id="agreementTab1LiT1" class="active" onclick="planmDatabindTabs(this)">
                                <a data-toggle="tab" href="#agreementTab1t1">Нийт, Тусгай, Дотоод ажил үйлчилгээ</a>
                            </li>
                            <li id="agreementTab1LiT2" onclick="planmDatabindTabs(this)">
                                <a data-toggle="tab" href="#agreementTab1t2">Мэдлэг чадвараа дээшлүүлэх зорилт</a>
                            </li>
                            <li id="agreementTab1LiT3" onclick="planmDatabindTabs(this)">
                                <a data-toggle="tab" href="#agreementTab1t3">Бусад/Дотоод ажил үйлчилгээ (Нэмэлт)</a>
                            </li>
                        </ul>
                        <div id="agreementTab1Content" class="tab-content">
                            <div id="agreementTab1t1" class="tab-pane active">
                                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                    <header>
                                        <h2>Нийт болон тусгай ажил үйлчилгээ</h2>
                                        <div class="widget-toolbar hide">  
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                <select id="agreementTab1t1SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                            </div> 
                                        </div>
                                        <div class="widget-toolbar">  
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                <label class="radio radio-inline no-margin">
											        <input id="agreementTab1t1RadioIsMine1" name="agreementTab1t1RadioIsMine" type="radio" class="radiobox" checked="checked" value="1">
											        <span>Миний арга хэмжээ</span>
										        </label>
                                                <label class="radio radio-inline">
											        <input id="agreementTab1t1RadioIsMine0" name="agreementTab1t1RadioIsMine" type="radio" class="radiobox" value="0">
											        <span>Газрын нийт арга хэмжээ</span>
										        </label>
                                            </div>
                                        </div>
                                    </header>
                                    <div>
                                        <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                        <div id="loaderTab1t1" class="search-background">
                                            <img width="64" height="" src="img/loading.gif"/>
                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                        </div>
                                        <div id="divBindTab1t1Table" class="widget-body no-padding">
                                        
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="agreementTab1t2" class="tab-pane">
                                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                    <header>
                                        <h2>Мэдлэг чадвараа дээшлүүлэх зорилт</h2>
                                        <div class="widget-toolbar hide">  
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                <select id="agreementTab1t2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                            </div> 
                                        </div>
                                    </header>
                                    <div>
                                        <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                        <div class="Colvis TableTools" style="width:65px;right:120px; top:0px; z-index:5; margin-top:5px; line-height: 15px;">
                                            <button id="agreementTab1t2AddBtn" class="btn btn-primary btn-xs" type="button" data-target="#agreementTab1t2Modal" data-toggle="modal" onclick="showAddEditTab1t2(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                        </div>
                                        <div id="loaderTab1t2" class="search-background">
                                            <img width="64" height="" src="img/loading.gif"/>
                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                        </div>
                                        <div id="divBindTab1t2Table" class="widget-body no-padding">
                                        
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="agreementTab1t3" class="tab-pane">
                                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                    <header>
                                        <h2>Бусад ажил, үйлчилгээ</h2>
                                        <div class="widget-toolbar hide">  
                                            <div class="btn-group options" style="margin-right:0px !important;">
                                                <select id="agreementTab1t3SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                            </div> 
                                        </div>
                                    </header>
                                    <div>
                                        <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                        <div class="Colvis TableTools" style="width:65px;right:120px; top:0px; z-index:5; margin-top:5px; line-height: 15px;">
                                            <button class="btn btn-primary btn-xs" type="button" data-target="#agreementTab1t3Modal" data-toggle="modal" onclick="showAddEditTab1t3(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                        </div>
                                        <div id="loaderTab1t3" class="search-background">
                                            <img width="64" height="" src="img/loading.gif"/>
                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                        </div>
                                        <div id="divBindTab1t3Table" class="widget-body no-padding">
                                        
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="agreementTab2" class="tab-pane">
                    <ul class="nav nav-tabs bordered">                           
                        <li id="agreementTab2LiT1" class="active" onclick="planmDatabindTabs(this)">
                            <a data-toggle="tab" href="#agreementTab2t1">Нийт, Тусгай, Дотоод ажил үйлчилгээ</a>
                        </li>
                        <li id="agreementTab2LiT2" onclick="planmDatabindTabs(this)">
                            <a data-toggle="tab" href="#agreementTab2t2">Мэдлэг чадвараа дээшлүүлэх зорилтын биелэлт</a>
                        </li>
                        <li id="agreementTab2LiT3" onclick="planmDatabindTabs(this)">
                            <a data-toggle="tab" href="#agreementTab2t3">Бусад/Дотоод ажил үйлчилгээний биелэлт (Нэмэлт)</a>
                        </li>
                        <li id="agreementTab2LiT4" onclick="planmDatabindTabs(this)">
                            <a data-toggle="tab" href="#agreementTab2t4">Сэтгэл ханамжийн байдал</a>
                        </li>
                        <li class="pull-right">
                            <div><a class="btn btn-labeled btn-warning" href="../pg/agreementTab2PrintModal.aspx?stid=<%=Session["LM_UserID"].ToString() %>" data-target="#agreementTab2PrintModal" data-toggle="modal" style="margin: 8px 10px 0 0;"><span class="btn-label" style="padding: 0px 7px 3px 5px;"><i class="fa fa-file-text"></i></span>Илтгэх хуудас харах</a></div>
                        </li>
                    </ul>
                    <div id="agreementTab2Content" class="tab-content">
                        <div id="agreementTab2t1" class="tab-pane active">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <h2>Нийт, Тусгай, Дотоод ажил үйлчилгээ</h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="agreementTab2t1SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="agreementTab2t1SelectYearHalf" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">Эхний хагас жил</option><option value="2">Жилийн эцэс</option></select>
                                        </div>
                                    </div>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div id="loaderTab2t1" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div id="divBindTab2t1Table" class="widget-body no-padding">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="agreementTab2t2" class="tab-pane">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <h2>Мэдлэг чадвараа дээшлүүлэх зорилтийн биелэлт</h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="agreementTab2t2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="agreementTab2t2SelectYearHalf" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">Эхний хагас жил</option><option value="2">Жилийн эцэс</option></select>
                                        </div>
                                    </div>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div id="loaderTab2t2" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div id="divBindTab2t2Table" class="widget-body no-padding">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="agreementTab2t3" class="tab-pane">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <h2>Бусад/Дотоод ажил үйлчилгээний биелэлт (Нэмэлт)</h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="agreementTab2t3SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="agreementTab2t3SelectYearHalf" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">Эхний хагас жил</option><option value="2">Жилийн эцэс</option></select>
                                        </div>
                                    </div>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div id="loaderTab2t3" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div id="divBindTab2t3Table" class="widget-body no-padding">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="agreementTab2t4" class="tab-pane">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <h2>Сэтгэл ханамжийн байдал</h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="agreementTab2t4SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="agreementTab2t4SelectYearHalf" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">Эхний хагас жил</option><option value="2">Жилийн эцэс</option></select>
                                        </div>
                                    </div>
                                </header>
                                <div>
                                    <div id="loaderTab2t4" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <div style="font-weight:bold;">
                                                <label id="agreementTab2t4Lbl1" runat="server" style="margin:0 0 0 0; font-weight:bold;">Tusviin yurunhiilun zahiragchiin</label> хүлээх үүргийн талаар <label id="agreementTab2t4Lbl2" runat="server" style="margin:0 0 0 0; font-weight:bold;">tusviin shuud zahiragchiin</label> сэтгэл ханамжийн түвшин:<br />
                                                <div class="checkbox-inline smart-form">
                                                    <label class="radio" style="float:left;"><input id="agreementTab2t4Radio1Srv1" runat="server" name="agreementTab2t4Radio1Srv" type="radio" value="Бага"/>Бага<i></i></label>
                                                    <label class="radio" style="float:left; margin-left:40px;"><input id="agreementTab2t4Radio1Srv2" runat="server" name="agreementTab2t4Radio1Srv" type="radio" value="Дунд зэрэг" />Дунд зэрэг<i></i></label>
                                                    <label class="radio" style="float:left; margin-left:8px;"><input id="agreementTab2t4Radio1Srv3" runat="server" name="agreementTab2t4Radio1Srv" type="radio" value="Их"/>Их<i></i></label>
                                                </div>
                                            </div>
                                            <div style="font-weight:bold; width:100%; display:block; overflow:hidden;">
                                                Эрхэлж байгаа ажлынхаа талаар <label id="agreementTab2t4Lbl3" runat="server" style="margin:0 0 0 0; font-weight:bold;">shuud zahiragchiin</label> сэтгэл ханамжийн түвшин:<br />
                                                <div class="checkbox-inline smart-form">
                                                    <label class="radio" style="float:left;"><input id="agreementTab2t4Radio2Srv1" runat="server" name="agreementTab2t4Radio2Srv" type="radio" value="Бага"/>Бага<i></i></label>
                                                    <label class="radio" style="float:left; margin-left:40px;"><input id="agreementTab2t4Radio2Srv2" runat="server" name="agreementTab2t4Radio2Srv" type="radio" value="Дунд зэрэг"/>Дунд зэрэг<i></i></label>
                                                    <label class="radio" style="float:left; margin-left:8px;"><input id="agreementTab2t4Radio2Srv3" runat="server" name="agreementTab2t4Radio2Srv" type="radio" value="Их"/>Их<i></i></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="agreementTab3" class="tab-pane">
                    <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                        <div style="width:62px; float: left; margin-right: 10px;"><select name="agreementTab3SelectYear" id="agreementTab3SelectYear" runat="server" class="form-control" style="padding:1px;"><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option><option value="2021">2021</option></select></div>
                        <div style="width:150px; float: left; margin-right: 10px;"><select name="agreementTab3SelectYearHalf" id="agreementTab3SelectYearHalf" runat="server" class="form-control" style="padding:1px;"><option value="1">Эхний хагас жил</option><option value="2">Жилийн эцэс</option></select></div>
                        <div style="width:50px; float:left; padding-top:5px;">Газар: </div>
                        <div style="width:100px; float:left; margin-right:10px;"><select id="agreementTab3SelectBranchGazar" name="agreementTab3SelectBranchGazar" runat="server" class="form-control" style="padding:1px"><option value="0">Бүгд</option></select></div>
                        <div style="width:50px; float:left; padding-top:5px;">Хэлтэс: </div>
                        <div style="width:100px; float:left; margin-right:10px;"><select disabled="disabled" id="agreementTab3SelectBranchHeltes" name="agreementTab3SelectBranchHeltes" runat="server" class="form-control" style="padding:1px"><option value="0">Бүгд</option></select></div>
                        <div style="width:60px; float:left; padding-top:5px;">Ажилтан: </div>
                        <div style="width:200px; float:left; margin-right:10px;"><select id="agreementTab3SelectStaff" name="agreementTab3SelectStaff" runat="server" class="form-control" style="padding:1px"><option value="0">Бүгд</option></select></div>
                        <div style="width:250px; float:right; margin-right:10px;height: 32px;"><a id="agreementTab3PrintModalBtn" class="btn btn-labeled btn-warning" href="javascript:void(0);" data-target="#agreementTab3PrintModal" data-toggle="modal" style="margin: 8px 10px 0 0;"><span class="btn-label" style="padding: 0px 7px 3px 5px;"><i class="fa fa-file-text"></i></span>Ажилтны илтгэх хуудас харах</a></div>
                        <div id="agreementTab3IsGazarBoss" runat="server" class="hide"></div>
                    </div>
                    <div id="loaderTab3" class="search-background">
                        <label>
                            <img width="64" height="" src="img/loading.gif"/>
                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                        </label>
                    </div>
                    <div>
                        <ul class="nav nav-tabs bordered">                           
                            <li id="agreementTab3LiT1" onclick="planmDatabindTabs(this)" class="active">
                                <a data-toggle="tab" href="#agreementTab3t1">Нийт, Тусгай, Дотоод ажил үйлчилгээ</a>
                            </li>
                            <li id="agreementTab3LiT2" onclick="planmDatabindTabs(this)">
                                <a data-toggle="tab" href="#agreementTab3t2">Мэдлэг чадвараа дээшлүүлэх зорилт</a>
                            </li>
                            <li id="agreementTab3LiT3" onclick="planmDatabindTabs(this)">
                                <a data-toggle="tab" href="#agreementTab3t3">Бусад/Дотоод ажил үйлчилгээ (Нэмэлт)</a>
                            </li>
                            <li id="agreementTab3LiT4" onclick="planmDatabindTabs(this)">
                                <a data-toggle="tab" href="#agreementTab3t4">Санал, зөвлөмж бичих</a>
                            </li>
                        </ul>
                        <div id="agreementTab3Content" class="tab-content">
                            <div id="agreementTab3t1" class="tab-pane active">
                                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                    <header>
                                        <h2>Нийт болон усгай ажил үйлчилгээний үнэлгээ</h2>
                                    </header>
                                    <div>
                                        <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                        <div class="Colvis TableTools txt-color-red" style="width:500px;right:345px; top:0px; z-index:5; margin-top:2px; line-height: 19px;">
                                            <%--<span class="label bg-color-blueDark">Ү</span> - Сарын төлөвлөгөөний гүйцэтгэлийн түвшин<br /><span class="label bg-color-blueDark">Ү1</span> - Удирдлагаас өгөх нэмэлт үнэлгээ--%>
                                            <span class="label bg-color-blueDark">Х</span> - Тус хүний ү/д биелэлтэд хамаарахгүй ажил
                                        </div>
                                        <div id="divBindTab3t1Table" class="widget-body no-padding">
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="agreementTab3t2" class="tab-pane">
                                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                    <header>
                                        <h2>Мэдлэг чадвараа дээшлүүлэх зорилт үнэлгээ</h2>
                                    </header>
                                    <div>
                                        <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                        <div class="Colvis TableTools txt-color-red" style="width:325px;right:120px; top:0px; z-index:5; margin-top:12px; line-height: 15px;">
                                            <%--<span class="label bg-color-blueDark">Ү</span> - Мэдлэг чадвараа дээшлүүлэх зорилтын оноо--%>
                                        </div>
                                        <div id="divBindTab3t2Table" class="widget-body no-padding">
                                        
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="agreementTab3t3" class="tab-pane">
                                <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                    <header>
                                        <h2>Бусад ажил, үйлчилгээ үнэлгээ</h2>
                                    </header>
                                    <div>
                                        <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                        <div class="Colvis TableTools txt-color-red" style="width:360px;right:-100px; top:6px; z-index:5; margin-top:5px; line-height: 13px;">
                                            <span class="label bg-color-blueDark">Ү1</span> - Нийт үнэлгээ
                                        </div>
                                        <div id="divBindTab3t3Table" class="widget-body no-padding">
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="agreementTab3t4" class="tab-pane">
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="form-group" style="padding:10px;">
                                            <label>Гэрээний биелэлтийг үндэслэн авах арга хэмжээ /урамшуулах, хариуцлага тоохох г.м/-ний санал:</label>
                                            <textarea class="form-control" id="agreementTab3t4Txt1" name="agreementTab3t4Txt1" placeholder="Санал" rows="6" maxlength="1000"></textarea>
                                            <button id="agreementTab3t4BtnSave1" runat="server" class="btn btn-success btn-sm" type="button"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
                                        </div>
                                        <div class="form-group" style="padding:10px;">
                                            <label>Тэмдэглэл/ажлын гүйцэтгэлийг хэрхэн сайжруулах талаар зөвлөмж г.м:</label>
                                            <textarea class="form-control" id="agreementTab3t4Txt2" name="agreementTab3t4Txt2" placeholder="Зөвлөмж" rows="6" maxlength="1000"></textarea>
                                            <button id="agreementTab3t4BtnSave2" runat="server" class="btn btn-success btn-sm" type="button"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="agreementTab4" class="tab-pane">
                    <ul class="nav nav-tabs bordered">                           
                        <li class="active" id="agreementTab4LiT1" onclick="planmDatabindTabs(this)">
                            <a data-toggle="tab" href="#agreementTab4t1">Ерөнхий тайлан /Ажилтан/</a>
                        </li>                       
                        <li id="agreementTab4LiT2" onclick="planmDatabindTabs(this)">
                            <a data-toggle="tab" href="#agreementTab4t2">Ерөнхий тайлан /Удирдлага/</a>
                        </li>
                    </ul>
                    <div id="agreementTab4Content" class="tab-content">
                        <div id="agreementTab4t1" class="tab-pane active">
                            <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                <div style="width:70%; float:left;">
                                    <div style="width:62px; float: left; margin-right: 10px;">
                                        <select id="agreementTab4t1SelectYear" runat="server" class="form-control" style="padding:1px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                    </div>
                                    <div style="width:150px; float: left; margin-right: 10px;">
                                        <select id="agreementTab4t1SelectYearHalf" runat="server" class="form-control" style="padding:1px;"><option value="1">Эхний хагас жил</option><option value="2">Жилийн эцэс</option></select>
                                    </div>
                                    <div style="width:50px; float:left; padding-top:5px;">Газар: </div>
                                    <div style="width:100px; float:left; margin-right:10px;"><select id="agreementTab4t1SelectBranchGazar" name="agreementTab4t1SelectBranchGazar" runat="server" class="form-control" style="padding:1px"><option value="0">Бүгд</option></select></div>
                                    <div style="width:50px; float:left; padding-top:5px;">Хэлтэс: </div>
                                    <div style="width:100px; float:left; margin-right:10px;"><select disabled="disabled" id="agreementTab4t1SelectBranchHeltes" name="agreementTab4t1SelectBranchHeltes" runat="server" class="form-control" style="padding:1px"><option value="0">Бүгд</option></select></div>
                                    <div style="width:80px; float:left; padding-top:5px; line-height: 11px; text-align:center;">A<br />пропорция:</div>
                                    <div style="width:50px; float:left; margin-right:10px;"><select id="agreementTab4t1SelectAProports" name="agreementTab4t1SelectAProports" runat="server" class="form-control" style="padding:1px">
                                        <option value="0">0</option>
                                        <option value="0.1">10</option>
                                        <option value="0.2">20</option>
                                        <option selected="selected" value="0.3">30</option>
                                        <option value="0.4">40</option>
                                        <option value="0.5">50</option>
                                        <option value="0.6">60</option>
                                        <option value="0.7">70</option>
                                        <option value="0.8">80</option>
                                        <option value="0.9">90</option>
                                        <option value="1">100</option>
                                    </select></div>
                                    <div style="width:100px; float:left; margin-right:10px;"><a href="javascript:void(0);" class="btn btn-default" id="agreementTab4t1ShowAllNegj">Бүх нэгжээр харах</a></div>
                                </div>
                                <div style="text-align:right; width:30%; float:left;">
                                    <div class="btn-group pull-right">
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divagreementTab4t1', 'Илтгэх хуудас ерөнхий тайлан')">
                                            <i class="fa fa-file-word-o"></i>
                                        </a>
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Excel татах" onclick="exportExcel('#divagreementTab4t1')">
                                            <i class="fa fa-file-excel-o"></i>
                                        </a>
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divagreementTab4t1')">
                                            <i class="fa fa-print"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div id="loaderTab4t1" class="search-background">
                                <label>
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                                </label>
                            </div>
                            <div id="divagreementTab4t1" runat="server" class="reports" style="margin-right:10px;">
                                <div style="text-align:center; font-weight:bold;padding-bottom: 10px;">
                                    ҮР ДҮНГИЙН ГЭРЭЭНИЙ БИЕЛЭЛТИЙГ ХЯНАХ
                                    <br />
                                    (Илтгэх хуудас)
                                </div>
                                <div style="text-align:center; font-weight:bold;padding-bottom: 10px;">
                                    <label id="agreementTab4t1Lbl1" runat="server" style="margin:0 0 0 0; font-weight:bold;"></label>
                                </div>
                                <div>
                                    <table id="perfcontractTab5t1Datatable1" style="border:1px solid #000; border-collapse:collapse; font: 11pt arial, sans-serif; width: 100%;">
                                        <thead style="background-color: #C6D9F1;">
                                            <tr>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;" rowspan="2">#</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;" rowspan="2">Нэгж</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;" rowspan="2">Албан тушаал</th>
                                                <%--<th style="border: 1px solid #000; text-align:center; padding:5px;" rowspan="2">Хөдөлгөөн</th>--%>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;" rowspan="2">Албан хаагчийн нэр</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;" colspan="3">Нийт болон дотоод ажил үйлчилгээний тоо, үнэлгээ</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;" colspan="2">Тусгай ажил үйлчилгээний тоо, үнэлгээ</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;" colspan="2">Мэдлэг чадвар дээшлүүлэх зорилтын тоо, үнэлгээ</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;" rowspan="2">Нийт үнэлгээ</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;" rowspan="2">Шинэ үнэлгээ</th>
                                            </tr>
                                            <tr>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;">Нийт</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;">Дотоод</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;">Үнэлгээ</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;">Тусгай</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;">Үнэлгээ</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;">Тоо</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;">Үнэлгээ</th>
                                                <%--<th style="border: 1px solid #000; text-align:center; padding:5px;">Ирц үнэлгээ</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;">Хамт олны үнэлгээ</th>--%>
                                            </tr>
                                        </thead>
                                        <tbody id="divBindTab4t1Table" runat="server">

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div id="agreementTab4t2" class="tab-pane">
                            <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                <div style="width:50%; float:left;">
                                    <div style="width:62px; float: left; margin-right: 10px;">
                                        <select id="agreementTab4t2SelectYear" runat="server" class="form-control" style="padding:1px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                    </div>
                                    <div style="width:150px; float: left; margin-right: 10px;">
                                        <select id="agreementTab4t2SelectYearHalf" runat="server" class="form-control" style="padding:1px;"><option value="1">Эхний хагас жил</option><option value="2">Жилийн эцэс</option></select>
                                    </div>
                                 </div>
                                <div style="text-align:right; width:50%; float:left;">
                                    <div class="btn-group pull-right">
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divagreementTab4t2', 'Илтгэх хуудас ерөнхий тайлан удирдлага')">
                                            <i class="fa fa-file-word-o"></i>
                                        </a>
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Excel татах" onclick="exportExcel('#divagreementTab4t2')">
                                            <i class="fa fa-file-excel-o"></i>
                                        </a>
                                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divagreementTab4t2')">
                                            <i class="fa fa-print"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div id="loaderTab4t2" class="search-background">
                                <label>
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                                </label>
                            </div>
                            <div id="divagreementTab4t2" runat="server" class="reports" style="margin-right:10px;">
                                <div style="text-align:center; font-weight:bold;padding-bottom: 10px;">
                                    ҮР ДҮНГИЙН ГЭРЭЭНИЙ БИЕЛЭЛТИЙГ ХЯНАХ
                                    <br />
                                    (Илтгэх хуудас)
                                </div>
                                <div style="text-align:center; font-weight:bold;padding-bottom: 10px;">
                                    <label id="agreementTab4t2Lbl1" runat="server" style="margin:0 0 0 0; font-weight:bold;"></label>
                                </div>
                                <div>
                                    <table id="perfcontractTab4t2Datatable1" style="border:1px solid #000; border-collapse:collapse; font: 11pt arial, sans-serif; width: 100%;">
                                        <thead style="background-color: #C6D9F1;">
                                            <tr>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;" rowspan="2">#</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;" rowspan="2">Нэгж</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;" rowspan="2">Албан тушаал</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;" rowspan="2">Албан хаагчийн нэр</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;" colspan="3">Нийт болон дотоод ажил үйлчилгээний тоо, үнэлгээ</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;" colspan="2">Тусгай ажил үйлчилгээний тоо, үнэлгээ</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;" colspan="2">Мэдлэг чадвар дээшлүүлэх зорилтын тоо, үнэлгээ</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;" rowspan="2">Нийт үнэлгээ</th>
                                            </tr>
                                            <tr>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;">Нийт</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;">Дотоод</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;">Үнэлгээ</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;">Тусгай</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;">Үнэлгээ</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;">Тоо</th>
                                                <th style="border: 1px solid #000; text-align:center; padding:5px;">Үнэлгээ</th>
                                            </tr>
                                        </thead>
                                        <tbody id="divBindTab4t2Table" runat="server">

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="agreementTab5" class="tab-pane">
                    <ul class="nav nav-tabs bordered">   
                        <li id="agreementTab5LiT3" class="active" onclick="planmDatabindTabs(this)">
                            <a data-toggle="tab" href="#agreementTab5t3"><span class="text-warning">Мэргэжилтний</span> гэрээг батлах</a>
                        </li>                        
                        <li id="agreementTab5LiT1" onclick="planmDatabindTabs(this)">
                            <a data-toggle="tab" href="#agreementTab5t1"><span class="text-warning">Мэргэжилтний</span> илтгэх хуудас батлах</a>
                        </li>
                        <li id="agreementTab5LiT2" onclick="planmDatabindTabs(this)" class="hide">
                            <a data-toggle="tab" href="#agreementTab5t2">Илтгэх хуудас <span class="text-warning">НИЙТЭЭР</span> батлах</a>
                        </li>
                    </ul>
                    <div id="agreementTab5Content" class="tab-content">
                        <div id="agreementTab5t1" class="tab-pane">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <h2>Мэргэжилтний илтгэх хуудас хаах</h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="agreementTab5t1SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="agreementTab5t1SelectYearHalf" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">Эхний хагас жил</option><option value="2">Жилийн эцэс</option></select>
                                        </div>
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select disabled="disabled" id="agreementTab5t1SelectBranchHeltes" name="agreementTab5t1SelectBranchHeltes" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select>
                                        </div>
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            Хэлтэс:
                                        </div>
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="agreementTab5t1SelectBranchGazar" name="agreementTab5t1SelectBranchGazar" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select>
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
                                    <div id="loaderTab5t1" class="search-background">
                                        <label>
                                            <img width="64" height="" src="img/loading.gif"/>
                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                                        </label>
                                    </div>
                                    <div id="divBindTab5t1Table" class="widget-body no-padding">
                                
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="agreementTab5t2" class="tab-pane">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <h2>Илтгэх хуудас нийтээр дуусгавар болгох</h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="agreementTab5t2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="agreementTab5t2SelectYearHalf" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="1">Эхний хагас жил</option><option value="2">Жилийн эцэс</option></select>
                                        </div>
                                    </div>
                                </header>
                                <div>
                                    <div id="loaderTab5t2" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <div class="checkbox-inline smart-form">
                                                <label class="radio" style="float:left;"><input id="agreementTab5t2Radio1" runat="server" name="agreementTab5t2Radio" type="radio" value="1"/>БАТЛАХ<i></i></label>
                                                <label class="radio" style="float:left; margin-left:40px;"><input id="agreementTab5t2Radio0" runat="server" name="agreementTab5t2Radio" type="radio" value="0" />ЦУЦЛАХ зэрэг<i></i></label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="agreementTab5t3" class="tab-pane active">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <h2>Мэргэжилтний гэрээг хаах</h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="agreementTab5t3SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select disabled="disabled" id="agreementTab5t3SelectBranchHeltes" name="agreementTab5t3SelectBranchHeltes" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select>
                                        </div>
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            Хэлтэс:
                                        </div>
                                    </div>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="agreementTab5t3SelectBranchGazar" name="agreementTab5t3SelectBranchGazar" runat="server" class="form-control" style="padding:1px"><option value="">Бүгд</option></select>
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
                                    <div id="loaderTab5t3" class="search-background">
                                        <label>
                                            <img width="64" height="" src="img/loading.gif"/>
                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                                        </label>
                                    </div>
                                    <div id="divBindTab5t3Table" class="widget-body no-padding">
                                
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
<div id="agreementTab2t1ImplModal" class="modal fade" aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> × </button>
                <h4 class="modal-title" >Биелэлт&nbsp;<span id="agreementTab2t1ImplModalHeaderLabel"></span></h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div id="agreementImplID" class="form-group hide"></div> 
                        <div class="form-group" style="margin-bottom:2px;">
                            Он: <label id="agreementTab2t1ImplModalCurrentYr"></label> | <label id="agreementTab2t1ImplModalCurrentYrHalf"></label>
                        </div> 
                        <div class="form-group" style="margin-bottom:2px;">
                            <label id="agreementTab2t1ImplModalType"></label>
                        </div>
                        <div class="form-group" style="margin-bottom:2px;">
                            <label id="agreementTab2t1ImplModalPlant"></label>
                        </div>
                        <div class="form-group" style="margin:0px; display:block; overflow:hidden;">
                            <div class="col-md-12">   
                                <div style="width:100%; display: block; overflow: hidden; padding-bottom: 5px;">
                                    <div style="width:15%; float:right; text-align:right;">
                                        Тэмдэгт: <label id="agreementTab2t1ImplModalCharLength">0</label>/10000
                                    </div>
                                    <div style="width:17%; float:right; text-align:right;">
                                        <button id="agreementTab2t1ImplModalDelete" type="button" class="btn btn-labeled btn-danger" style="font-size: 12px;">
                                            <span class="btn-label" style="padding: 3px 7px 3px 5px;">
                                                <i class="fa fa-trash-o"></i>
                                            </span>Биелэлт устгах
                                        </button>
                                    </div>   
                                    <div style="width:27%; float:right; text-align:right;">
                                        <button id="agreementTab2t1ImplModalImportPlanmImpl" type="button" class="btn btn-labeled btn-default" style="font-size: 12px;">
                                            <span class="btn-label" style="padding: 3px 7px 3px 5px;">
                                                <i class="fa fa-download"></i>
                                            </span>Сар/төлөвлөгөө биелэлт татах
                                        </button>
                                    </div> 
                                    <div style="width:27%; float:right; text-align:right;">
                                        <button id="agreementTab2t1ImplModalShowPlanmImpl" type="button" class="btn btn-labeled btn-default" style="font-size: 12px;" data-toggle="modal" data-target="#agreementPlanmImplModal" onclick="agreementPlanmImplShow()">
                                            <span class="btn-label" style="padding: 3px 7px 3px 5px;">
                                                <i class="fa fa-eye"></i>
                                            </span>Сар/төлөвлөгөө биелэлт харах
                                        </button>
                                    </div>                                
                                </div> 
                                <textarea id="agreementTab2t1ImplModalImpl" name="agreementTab2t1ImplModalImpl"></textarea>
                                <script>
                                    CKEDITOR.replace('agreementTab2t1ImplModalImpl', {
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
                                    var editor = CKEDITOR.instances.agreementTab2t1ImplModalImpl;
                                    editor.on('key', function (evt) {
                                        $("#agreementTab2t1ImplModalCharLength").text(replaceDisplayToDatabase($.trim(evt.editor.getData())).length);
                                    }, editor.element.$);
                                </script>
                            </div>
                        </div>
                    </div>
                </div>                
            </div>
            <div class="modal-footer">
                <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                <button id="agreementTab2t1ImplSave" class="btn btn-success btn-sm" type="button"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
            </div>
        </div>
    </div>
</div>
<div id="agreementPlanmImplModal" class="modal fade in modalSecond" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                <h4 class="modal-title" >Сарын төлөвлөгөөний тайлан харах</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div id="agreementPlanmImplDiv" class="form-group">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="agreementTab1t2Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="agreementTab1t2ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> × </button>
                    <h4 class="modal-title" >Мэдлэг чадвараа дээшлүүлэх зорилт&nbsp;<span id="agreementTab1t2ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div id="agreementTab1t2ID" class="form-group hide"></div>
                            <div class="form-group">
                                Он: <label id="agreementTab1t2ModalCurrentYr" runat="server"></label>
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label class="col-md-2 control-label">Мэдлэг чадвараа дээшлүүлэх зорилт</label>
                                <div class="col-md-10">                               
                                    <textarea id="agreementTab1t2ModalTarget" name="agreementTab1t2ModalTarget" class="form-control" required="" placeholder="Мэдлэг чадвараа дээшлүүлэх зорилт" rows="2"></textarea>
                                </div>
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label class="col-md-2 control-label">Хүрэх үр дүн</label>
                                <div class="col-md-10">
                                    <textarea id="agreementTab1t2ModalResulted" name="agreementTab1t2ModalResulted" class="form-control" required="" placeholder="Хүрэх үр дүн" rows="2"></textarea>
                                </div>
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label class="col-md-2 control-label">Суурь түвшин</label>
                                <div class="col-md-10">
                                    <textarea id="agreementTab1t2ModalBasicLevel" name="agreementTab1t2ModalBasicLevel" class="form-control" required="" placeholder="Суурь түвшин" rows="2"></textarea>
                                </div>
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label class="col-md-2 control-label">Хагас жил</label>
                                <div class="col-md-10">
                                    <label class="checkbox-inline">
										<input id="agreementTab1t2ModalHalfyear1" name="agreementTab1t2ModalHalfyear" type="checkbox" class="checkbox style-0" value="1">
										<span>Эхний хагас</span>
								    </label>
                                    <label class="checkbox-inline">
										<input id="agreementTab1t2ModalHalfyear2" name="agreementTab1t2ModalHalfyear" type="checkbox" class="checkbox style-0" value="2">
										<span>Сүүлийн хагас</span>
								    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                    <button id="agreementTab1t2Save" class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
                </div>
            </form>
        </div>
    </div>
</div>
<div id="agreementTab1t3Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="agreementTab1t3ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> × </button>
                    <h4 class="modal-title" >Бусад ажил, үйлчилгээ&nbsp;<span id="agreementTab1t3ModalHeaderLabel">нэмэх</span></h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div id="agreementTab1t3ID" class="form-group hide"></div>
                            <div class="form-group">
                                Он: <label id="agreementTab1t3ModalCurrentYr" runat="server"></label>
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label class="col-md-2 control-label">Дугаар</label>
                                <div class="col-md-10">                               
                                    <input id="agreementTab1t3ModalNo" name="agreementTab1t3ModalNo" class="form-control" required="" placeholder="Дугаар" type="text" maxlength="3"/>
                                </div>
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label class="col-md-2 control-label">Ажил үйлчилгээ</label>
                                <div class="col-md-10">
                                    <textarea id="agreementTab1t3ModalName" name="agreementTab1t3ModalName" class="form-control" required="" placeholder="Ажил үйлчилгээ" rows="2" maxlength="1000"></textarea>
                                </div>
                            </div>
                            <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
                                <label class="col-md-2 control-label">Хагас жил</label>
                                <div class="col-md-10">
                                    <label class="checkbox-inline">
										<input id="agreementTab1t3ModalHalfyear1" name="agreementTab1t3ModalHalfyear" type="checkbox" class="checkbox style-0" value="1">
										<span>Эхний хагас</span>
								    </label>
                                    <label class="checkbox-inline">
										<input id="agreementTab1t3ModalHalfyear2" name="agreementTab1t3ModalHalfyear" type="checkbox" class="checkbox style-0" value="2">
										<span>Сүүлийн хагас</span>
								    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                    <button id="agreementTab1t3Save" class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="modal fade" id="agreementTab1PrintModal" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">  
	<div class="modal-dialog modal-lg" style="width:70%;">
        <div style="width:100%; display:block; height: 35px; margin:0 auto;">
            <div class="btn-group pull-left hide">
                <select name="agreementTab1PrintModalSelectYear" id="agreementTab1PrintModalSelectYear" runat="server" class="form-control" style="padding:1px;">
	                <option value="2012">2012</option>
	                <option value="2013">2013</option>
	                <option value="2014">2014</option>
	                <option value="2015">2015</option>
	                <option value="2016">2016</option>
	                <option value="2017">2017</option>
	                <option value="2018">2018</option>
	                <option value="2019">2019</option>
	                <option value="2020">2020</option>
	                <option value="2021">2021</option>
                </select>
            </div>
            <div class="btn-group pull-left hide" style="margin-left:10px; color:#fff;">
                <label class="radio radio-inline no-margin">
					<input type="radio" class="radiobox" id="agreementTab1PrintModalSelectContentType1" name="agreementTab1PrintModalSelectContentType" checked="checked">
					<span>Үр дүнгийн гэрээ</span> 
				</label>
				<label class="radio radio-inline">
					<input type="radio" class="radiobox" id="agreementTab1PrintModalSelectContentType2" name="agreementTab1PrintModalSelectContentType">
					<span>Хавсралт</span>  
				</label>
            </div>
            <div class="btn-group pull-right">
                <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#agreementTab1PrintModalContent', 'Үр дүнгийн гэрээ болон хавсралт')">
                    <i class="fa fa-file-word-o"></i>
                </a>
                <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#agreementTab1PrintModalContent')">
                    <i class="fa fa-print"></i>
                </a>
            </div>
        </div>
        <div id="loaderTab1PrintModal" class="search-background">
            <img width="64" height="" src="img/loading.gif"/>
            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
        </div>
        <div id="agreementTab1PrintModalContent" class="modal-content reports" style="width:100%; margin:0 auto!important; padding: 1.5cm 1.5cm 1.5cm 4cm!important;">
			
		</div>	  
	</div>  
</div>
<div class="modal fade" id="agreementTab2PrintModal" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">  
	<div class="modal-dialog modal-lg" style="width:70%;">
        <div style="width:100%; display:block; height: 35px; margin:0 auto;">
            <div class="btn-group pull-left">
                <select name="agreementTab2PrintModalSelectYear" id="agreementTab2PrintModalSelectYear" runat="server" class="form-control" style="padding:1px;">
	                <option value="2012">2012</option>
	                <option value="2013">2013</option>
	                <option value="2014">2014</option>
	                <option value="2015">2015</option>
	                <option value="2016">2016</option>
	                <option value="2017">2017</option>
	                <option value="2018">2018</option>
	                <option value="2019">2019</option>
	                <option value="2020">2020</option>
	                <option value="2021">2021</option>
                </select>
            </div>
            <div class="btn-group pull-left" style="margin-left: 3px;">
                <select name="agreementTab2PrintModalSelectYearHalf" id="agreementTab2PrintModalSelectYearHalf" runat="server" class="form-control" style="padding:1px;">
	                <option value="1">Эхний хагас жил</option>
	                <option value="2">Сүүлийн хагас жил</option>
                </select>
            </div>
            <div class="btn-group pull-right">
                <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#agreementTab2PrintModalContent', 'Илтгэх хуудас')">
                    <i class="fa fa-file-word-o"></i>
                </a>
                <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#agreementTab2PrintModalContent')">
                    <i class="fa fa-print"></i>
                </a>
            </div>
        </div>
        <div id="loaderTab2PrintModal" class="search-background">
            <img width="64" height="" src="img/loading.gif"/>
            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
        </div>
		<div id="agreementTab2PrintModalContent" class="modal-content reports" style="width:100%; margin:0 auto!important; padding: 1.5cm 1.5cm 1.5cm 4cm!important;">
			
		</div>  
	</div>  
</div>
<div class="modal fade" id="agreementTab3PrintModal" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">  
	<div class="modal-dialog modal-lg" style="width:70%;">
        <div style="width:56%; display:block; height: 35px; margin:0 auto;">
            <div class="btn-group pull-right">
                <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#agreementTab3PrintModalContent', 'Илтгэх хуудас')">
                    <i class="fa fa-file-word-o"></i>
                </a>
                <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#agreementTab3PrintModalContent')">
                    <i class="fa fa-print"></i>
                </a>
            </div>
        </div>
        <div id="loaderTab3PrintModal" class="search-background">
            <img width="64" height="" src="img/loading.gif"/>
            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
        </div>
		<div id="agreementTab3PrintModalContent" class="modal-content reports" style="width:100%; margin:0 auto!important; padding: 1.5cm 1.5cm 1.5cm 4cm!important;">
			
		</div>  
	</div>  
</div>
<div id="agreementTab3t1ImplShowModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            
        </div>
    </div>
</div>
<script type="text/javascript">
    var globalAjaxVar = null;
    var pagefunction = function () {
        dataBindTab1t1DataTable();
    }
    var pagedestroy = function () {
        if (globalAjaxVar != null) {
            globalAjaxVar.abort();
            globalAjaxVar = null;
        }
    }
    pagefunction();
    function planmDatabindTabs(el) {
        if ($.trim($(el).attr('id')) == 'agreementTab1Li') {
            if ($.trim($('#divBindTab1t1Table').html()) == "") {
                dataBindTab1t1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'agreementTab2Li') {
            if ($('#agreementTab2Li').attr('data-issubmit') == '0') {
                $('#agreementTab2').find('ul').addClass('hide');
                $('#agreementTab2Content').addClass('hide');
                $('#agreementTab2').find('.alert-warning').remove();
                $('#agreementTab2').append("<div class=\"alert alert-warning fade in\"><i class=\"fa-fw fa fa-warning\"></i><strong>Анхаарна уу!</strong> Таний 2016 оны Үр дүнгийн гэрээ баталгаажаагүй тул биелэлт оруулах боломжгүй байна! ТХЭУГ-д хандана уу.</div>");
            }
            else {
                $('#agreementTab2').find('ul').removeClass('hide');
                $('#agreementTab2Content').removeClass('hide');
                $('#agreementTab2').find('.alert-warning').remove();
                if ($.trim($('#divBindTab2t1Table').html()) == "") {
                    dataBindTab2t1DataTable();
                }
            }
        }
        else if ($.trim($(el).attr('id')) == 'agreementTab3Li') {
            if ($.trim($('#divBindTab3t1Table').html()) == "") {
                dataBindTab3t1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'agreementTab4Li') {
            if ($.trim($('#divBindTab4t1Table').html()) == "") {
                dataBindTab4t1DataTableFirst();
                //dataBindTab4t1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'agreementTab5Li') {
            if ($.trim($('#divBindTab5t3Table').html()) == "") {
                dataBindTab5t3DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'agreementTab1LiT1') {
            if ($.trim($('#divBindTab1t1Table').html()) == "") {
                dataBindTab1t1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'agreementTab1LiT2') {
            if ($.trim($('#divBindTab1t2Table').html()) == "") {
                dataBindTab1t2DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'agreementTab1LiT3') {
            if ($.trim($('#divBindTab1t3Table').html()) == "") {
                dataBindTab1t3DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'agreementTab2LiT1') {
            if ($.trim($('#divBindTab2t1Table').html()) == "") {
                dataBindTab2t1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'agreementTab2LiT2') {
            if ($.trim($('#divBindTab2t2Table').html()) == "") {
                dataBindTab2t2DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'agreementTab2LiT3') {
            if ($.trim($('#divBindTab2t3Table').html()) == "") {
                dataBindTab2t3DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'agreementTab2LiT4') {
            dataBindTab2t4DataTable();
        }
        else if ($.trim($(el).attr('id')) == 'agreementTab3LiT1') {
            if ($.trim($('#divBindTab3t1Table').html()) == "") {
                dataBindTab3t1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'agreementTab3LiT2') {
            if ($.trim($('#divBindTab3t2Table').html()) == "") {
                dataBindTab3t2DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'agreementTab3LiT3') {
            if ($.trim($('#divBindTab3t3Table').html()) == "") {
                dataBindTab3t3DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'agreementTab3LiT4') {
            dataBindTab3t4DataTable();
        }
        else if ($.trim($(el).attr('id')) == 'agreementTab4LiT1') {
            if ($.trim($('#divBindTab4t1Table').html()) == "") {
                dataBindTab4t1DataTableFirst();
                //dataBindTab4t1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'agreementTab4LiT2') {
            if ($.trim($('#divBindTab4t2Table').html()) == "") {
                dataBindTab4t2DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'agreementTab5LiT1') {
            if ($.trim($('#divBindTab5t1Table').html()) == "") {
                dataBindTab5t1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'agreementTab5LiT2') {
            dataBindTab5t2DataTable();
        }
        else if ($.trim($(el).attr('id')) == 'agreementTab5LiT3') {
            if ($.trim($('#divBindTab5t3Table').html()) == "") {
                dataBindTab5t3DataTable();
            }
        }
    }
    //tab1
    function dataBindTab1DataTables() {
        $('#agreementTab1LiT1, #agreementTab1LiT2, #agreementTab1LiT3, #agreementTab1t1, #agreementTab1t2, #agreementTab1t3').removeClass('active');
        $('#agreementTab1LiT1, #agreementTab1t1').addClass('active');
        $("#divBindTab1t1Table, #divBindTab1t2Table, #divBindTab1t3Table").html('');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT POS_ID FROM ST_STAFFS WHERE ST_ID=' + $('#agreementTab1SelectStaff option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == '10205') {
                    $('#agreementTab1PrintModalBtn').attr('href', '../pg/agreementTab1StaffPrintModal.aspx?stid=' + $('#agreementTab1SelectStaff option:selected').val() + '&yr=' + $('#agreementTab1SelectYear option:selected').val());
                }
                else if (data.d == '2010201') {
                    $('#agreementTab1PrintModalBtn').attr('href', '../pg/agreementTab1HeadPrintModal.aspx?stid=' + $('#agreementTab1SelectStaff option:selected').val() + '&yr=' + $('#agreementTab1SelectYear option:selected').val());
                }
                else {
                    $('#agreementTab1PrintModalBtn').attr('href', '../pg/agreementTab1StaffPrintModal.aspx?stid=' + $('#agreementTab1SelectStaff option:selected').val() + '&yr=' + $('#agreementTab1SelectYear option:selected').val());
                }
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
        dataBindTab1t1DataTable();
    }
    $('#agreementTab1SelectYear').change(function () {
        showLoader('loaderTab1');
        dataBindTab1DataTables();
    });
    $("#agreementTab1SelectBranchGazar").change(function () {
        showLoader('loaderTab1');
        dataBindTab1SelectBranchHeltes();
    });
    $("#agreementTab1SelectBranchHeltes").change(function () {
        showLoader('loaderTab1');
        dataBindTab1SelectStaff();
    });
    $("#agreementTab1SelectStaff").change(function () {
        showLoader('loaderTab1');
        dataBindTab1DataTables();
    });
    function dataBindTab1SelectBranchHeltes() {
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
            data: '{"yr":"' + $('#indexCurrentYear').text() + '", "gazar":"' + $("#agreementTab1SelectBranchGazar option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#agreementTab1SelectBranchHeltes").html(valData);
                $("#agreementTab1SelectBranchHeltes").prop("disabled", false);
                dataBindTab1SelectStaff();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab1SelectStaff() {
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetStaffListForDDL",
            data: '{"yr":"' + $('#indexCurrentYear').text() + '", "gazar":"' + $("#agreementTab1SelectBranchGazar option:selected").val() + '", "heltes":"' + $("#agreementTab1SelectBranchHeltes option:selected").val() + '"}',
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
                $("#agreementTab1SelectStaff").html(valData);
                dataBindTab1DataTables();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    //tab1t1
    function dataBindTab1t1DataTable() {
        var valData = '';
        var strSubmitIsDisabled = "";
        showLoader('loaderTab1t1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT (SELECT TO_CHAR(COUNT(1)) FROM TBL_AGREEMENTSUBMITST WHERE YR=' + $("#agreementTab1SelectYear option:selected").val() + ' AND ST_ID=' + $('#agreementTab1SelectStaff option:selected').val() + ') FROM DUAL"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == "1") {
                    strSubmitIsDisabled = " disabled=\"disabled\"";
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/AgreementTab1t1",
                    data: '{"yr":"' + $("#agreementTab1SelectYear option:selected").val() + '", "st_id":"' + $('#agreementTab1SelectStaff option:selected').val() + '", "isme":"' + $('input[name="agreementTab1t1RadioIsMine"]:checked').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valData = "<table id=\"agreementTab1t1Datatable\" class=\"table table-bordered table-hover\" width=\"100%\"><thead>";
                        valData += "<tr>";
                        valData += "<th class=\"hide\"></th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Жилийн төлөвлөгөө</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хугацаа<br>/сараар/</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хариуцах ажилтан</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Эхний<br>хагас жил</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Сүүлийн<br>хагас жил</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Нийт ажил<br>үйлчилгээ</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Тусгай ажил<br>үйлчилгээ</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Дотоод<br>үйлчилгээ</th>";
                        valData += "</tr></thead><tbody>";
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<tr" + value.ISCHECK + ">";
                            valData += "<td class=\"hide\">" + value.PLANYR_ID + "</td>";
                            valData += "<td>" + value.STRAT_NO + "." + value.ACTION_NO + "." + value.PLANYR_NO + ". " + replaceDatabaseToDisplay(value.PLANYR_NAME) + "</td>";
                            valData += "<td class=\"text-center\">" + value.HUGATSAA + "</td>";
                            valData += "<td>" + value.STNAMELIST + "</td>";
                            if (value.HUGATSAA == 'Жилдээ') {
                                valData += "<td class=\"text-center\" style=\"vertical-align:center; background-color: #fcf8e3;\"><label class=\"checkbox-inline\"><input" + value.YRHF1 + strSubmitIsDisabled + " type=\"checkbox\" class=\"checkbox style-0\" onclick=\"agreementTab1t1CheckboxHfyr1(this)\" /><span></span></label></td>";
                                valData += "<td class=\"text-center\" style=\"vertical-align:center; background-color: #fcf8e3;\"><label class=\"checkbox-inline\"><input" + value.YRHF2 + strSubmitIsDisabled + " type=\"checkbox\" class=\"checkbox style-0\" onclick=\"agreementTab1t1CheckboxHfyr1(this)\" /><span></span></label></td>";
                            }
                            else {
                                valData += "<td class=\"text-center\" style=\"vertical-align:center; background-color: #fcf8e3;\"><label class=\"checkbox-inline\"><input" + value.YRHF1 + " disabled=\"disabled\" type=\"checkbox\" class=\"checkbox style-0\" onclick=\"agreementTab1t1CheckboxHfyr1(this)\" /><span></span></label></td>";
                                valData += "<td class=\"text-center\" style=\"vertical-align:center; background-color: #fcf8e3;\"><label class=\"checkbox-inline\"><input" + value.YRHF2 + " disabled=\"disabled\" type=\"checkbox\" class=\"checkbox style-0\" onclick=\"agreementTab1t1CheckboxHfyr1(this)\" /><span></span></label></td>";
                            }
                            valData += "<td class=\"text-center\" style=\"vertical-align:center;\"><label class=\"checkbox-inline\"><input" + value.D1ISCHECKED + value.ISIMPLEVAL + strSubmitIsDisabled + " type=\"checkbox\" class=\"checkbox style-0\" onclick=\"agreementTab1t1Checkbox1(this)\" /><span></span></label></td>";
                            valData += "<td class=\"text-center\" style=\"vertical-align:center; background-color: #f2dede;\"><label class=\"checkbox-inline\"><input" + value.D2ISCHECKED + value.ISIMPLEVAL + strSubmitIsDisabled + " type=\"checkbox\" class=\"checkbox style-0\" onclick=\"agreementTab1t1Checkbox1(this)\" /><span></span></label></td>";
                            valData += "<td class=\"text-center\" style=\"vertical-align:center;\"><label class=\"checkbox-inline\"><input" + value.D3ISCHECKED + " disabled=\"disabled\" type=\"checkbox\" class=\"checkbox style-0\" onclick=\"agreementTab1t1Checkbox1(this)\" /><span></span></label></td>";
                            valData += "</tr>";
                        });
                        valData += "</tbody>";
                        valData += "</table>";
                        valData += "<script>";
                        valData += "var responsiveHelper_agreementTab1t1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#agreementTab1t1Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_agreementTab1t1Datatable) {responsiveHelper_agreementTab1t1Datatable = new ResponsiveDatatablesHelper($('#agreementTab1t1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_agreementTab1t1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_agreementTab1t1Datatable.respond();}, \"aoColumns\": [null, null, { \"sWidth\": \"60px\" }, null, { \"sWidth\": \"66px\", \"orderable\": false }, { \"sWidth\": \"66px\", \"orderable\": false }, { \"sWidth\": \"66px\", \"orderable\": false }, { \"sWidth\": \"66px\", \"orderable\": false }, { \"sWidth\": \"66px\", \"orderable\": false }]});";
                        valData += "<\/script>";
                        $("#divBindTab1t1Table").html(valData);
                        hideLoader('loaderTab1t1');
                        hideLoader('loaderTab1');
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
    $('input[name="agreementTab1t1RadioIsMine"]').click(function () {
        dataBindTab1t1DataTable();
    });
    //$('#agreementTab1t2SelectYear').change(function () {
    //    dataBindTab1t1DataTable();
    //});
    function agreementTab1t1Checkbox1(el) {
        var valIsSpecial = 0;
        if ($(el).closest('td').index() == 6) valIsSpecial = 0;
        else if ($(el).closest('td').index() == 7) valIsSpecial = 1;
        if ($(el).prop('checked')) {
            if ($(el).closest('tr').find('td:eq(4)').find(':checkbox').is(':checked') == false && $(el).closest('tr').find('td:eq(5)').find(':checkbox').is(':checked') == false) { $(el).prop('checked', false); alert('Хагас жилийн сонголт сонгоно уу!'); }
            else {
                var valHfyr1 = 0, valHfyr2 = 0;
                if ($(el).closest('tr').find('td:eq(4)').find(':checkbox').is(':checked')) valHfyr1 = 1;
                if ($(el).closest('tr').find('td:eq(5)').find(':checkbox').is(':checked')) valHfyr2 = 1;
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/AGREEMENT_MAIN_INSUPT",
                    data: '{"P_YR":"' + $('#agreementTab1SelectYear option:selected').val() + '", "P_ST_ID":"' + $('#agreementTab1SelectStaff option:selected').val() + '", "P_PLANYR_ID":"' + $(el).closest('tr').find('td:eq(0)').text() + '", "P_ISSPECIAL":"' + valIsSpecial + '", "P_YRHF1":"' + valHfyr1 + '", "P_YRHF2":"' + valHfyr2 + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        smallBox('Төлөвлөгөө', 'Амжилттай цуцлагдлаа...', '#659265', 3000);
                        if (valIsSpecial == 0) $(el).closest('tr').find('td:eq(7)').find(':checkbox').prop('checked', false);
                        else if (valIsSpecial == 1) $(el).closest('tr').find('td:eq(6)').find(':checkbox').prop('checked', false);
                        $(el).closest('tr').attr('class', 'success');
                        $('#divBindTab2t1Table').html('');
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
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                data: '{"qry":"DELETE FROM TBL_AGREEMENT_MAIN WHERE YR=' + $('#agreementTab1SelectYear option:selected').val() + ' AND ST_ID=' + $('#agreementTab1SelectStaff option:selected').val() + ' AND PLANYR_ID=' + $(el).closest('tr').find('td:eq(0)').text() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    smallBox('Төлөвлөгөө', 'Амжилттай цуцлагдлаа...', '#659265', 3000);
                    $(el).closest('tr').find('td:eq(4)').find(':checkbox').prop('checked', false);
                    $(el).closest('tr').find('td:eq(5)').find(':checkbox').prop('checked', false);
                    $(el).closest('tr').removeAttr('class');
                    $('#divBindTab2t1Table').html('');
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
    function agreementTab1t1CheckboxHfyr1(el) {
        var valYrhf = 0;
        if ($(el).closest('td').index() == 4) valYrhf = 1;
        else if ($(el).closest('td').index() == 5) valYrhf = 2;
        if ($(el).closest('tr').find('td:eq(6)').find(':checkbox').is(':checked') == true || $(el).closest('tr').find('td:eq(7)').find(':checkbox').is(':checked') == true) {
            if ($(el).prop('checked')) {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"UPDATE TBL_AGREEMENT_MAIN SET YRHF' + valYrhf + '=1 WHERE YR=' + $('#agreementTab1SelectYear option:selected').val() + ' AND ST_ID=' + $('#agreementTab1SelectStaff option:selected').val() + ' AND PLANYR_ID=' + $(el).closest('tr').find('td:eq(0)').text() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        smallBox('Хагас жил', 'Амжилттай цуцлагдлаа...', '#659265', 3000);
                        $('#divBindTab2t1Table').html('');
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
                if ($(el).closest('tr').find('td:eq(4)').find(':checkbox').is(':checked') == true || $(el).closest('tr').find('td:eq(5)').find(':checkbox').is(':checked') == true) {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                        data: '{"qry":"UPDATE TBL_AGREEMENT_MAIN SET YRHF' + valYrhf + '=0 WHERE YR=' + $('#agreementTab1SelectYear option:selected').val() + ' AND ST_ID=' + $('#agreementTab1SelectStaff option:selected').val() + ' AND PLANYR_ID=' + $(el).closest('tr').find('td:eq(0)').text() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            smallBox('Хагас жил', 'Амжилттай цуцлагдлаа...', '#659265', 3000);
                            $('#divBindTab2t1Table').html('');
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
                    alert('Нийт болон тусгай ажил үйлчилгээ сонгогдсон тул хагас жилийн сонголт заавал сонгоно уу!');
                    $(el).prop('checked',true);
                }
            }
        }
    }
    //tab1t2
    function dataBindTab1t2DataTable() {
        var valData = '';
        var strSubmitHfyr1IsDisabled = "", strSubmitHfyr2IsDisabled = "";
        showLoader('loaderTab1t2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT (SELECT TO_CHAR(COUNT(1)) FROM TBL_AGREEMENTSUBMITSTAFF WHERE YR=' + $("#agreementTab1SelectYear option:selected").val() + ' AND HFYR=1 AND ST_ID=' + $('#agreementTab1SelectStaff option:selected').val() + ')||\'~\'||(SELECT TO_CHAR(COUNT(1)) FROM TBL_AGREEMENTSUBMITSTAFF WHERE YR=' + $("#agreementTab1SelectYear option:selected").val() + ' AND HFYR=2 AND ST_ID=' + $('#agreementTab1SelectStaff option:selected').val() + ') FROM DUAL"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d.split('~')[0] == "1") strSubmitHfyr1IsDisabled = " disabled=\"disabled\"";
                if (data.d.split('~')[1] == "1") strSubmitHfyr2IsDisabled = " disabled=\"disabled\"";
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                    data: '{"qry": "SELECT POS_ID FROM hrdbuser.ST_STBR WHERE ISACTIVE=1 AND STAFFS_ID=' + $('#agreementTab1SelectStaff option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        if (data.d == '2010201' || data.d == '2010301') {
                            $('#agreementTab1t2AddBtn').addClass('hide');
                            var valSrvType = '';
                            if (data.d == '2010201') valSrvType = '1';
                            else if (data.d == '2010301') valSrvType = '2';
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/AgreementTab1t2Head",
                                data: '{"yr":"' + $("#agreementTab1SelectYear option:selected").val() + '", "st_id":"' + $('#agreementTab1SelectStaff option:selected').val() + '", "tp":"' + valSrvType + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    valData = '';
                                    valData = "<table id=\"agreementTab1t2Datatable\" class=\"table table-striped table-bordered table-hover smart-form\" width=\"100%\"><thead>";
                                    valData += "<tr>";
                                    valData += "<th class=\"hide\"></th>";
                                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Мэдлэг чадвараа дээшлүүлэх зорилт</th>";
                                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хүрэх үр дүн</th>";
                                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Суурь түвшин</th>";
                                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Эхний<br>хагас жил</th>";
                                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Сүүлийн<br>хагас жил</th>";
                                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</th>";
                                    valData += "</tr></thead><tbody>";
                                    $($.parseJSON(data.d)).each(function (index, value) {
                                        valData += "<td class=\"hide\">" + value.ID + "</td>";
                                        valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                                        valData += "<td class=\"text-center\">100 хувь</td>";
                                        valData += "<td class=\"text-center\">" + value.AVGPNT + "</td>";
                                        valData += "<td disabled=\"disabled\" class=\"text-center\">&#x2713;</td>";
                                        valData += "<td disabled=\"disabled\" class=\"text-center\">&#x2713;</td>";
                                        valData += "<td class=\"text-center\">";
                                        valData += "</td>";
                                        valData += "</tr>";
                                    });
                                    valData += "</tbody>";
                                    valData += "</table>";
                                    valData += "<script>";
                                    valData += "var responsiveHelper_agreementTab1t2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#agreementTab1t2Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_agreementTab1t2Datatable) {responsiveHelper_agreementTab1t2Datatable = new ResponsiveDatatablesHelper($('#agreementTab1t2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_agreementTab1t2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_agreementTab1t2Datatable.respond();}, \"aoColumns\": [null, null, null, null, { \"sWidth\": \"38px\" }, { \"sWidth\": \"38px\" }, { \"sWidth\": \"40px\" }]});";
                                    valData += "<\/script>";
                                    $("#divBindTab1t2Table").html(valData);
                                    hideLoader('loaderTab1t2');
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
                            $('#agreementTab1t2AddBtn').removeClass('hide');
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/AgreementTab1t2",
                                data: '{"yr":"' + $("#agreementTab1SelectYear option:selected").val() + '", "st_id":"' + $('#agreementTab1SelectStaff option:selected').val() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    valData = '';
                                    valData = "<table id=\"agreementTab1t2Datatable\" class=\"table table-striped table-bordered table-hover smart-form\" width=\"100%\"><thead>";
                                    valData += "<tr>";
                                    valData += "<th class=\"hide\"></th>";
                                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Мэдлэг чадвараа дээшлүүлэх зорилт</th>";
                                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хүрэх үр дүн</th>";
                                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Суурь түвшин</th>";
                                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Эхний<br>хагас жил</th>";
                                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Сүүлийн<br>хагас жил</th>";
                                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</th>";
                                    valData += "</tr></thead><tbody>";
                                    $($.parseJSON(data.d)).each(function (index, value) {
                                        valData += "<td class=\"hide\">" + value.ID + "</td>";
                                        valData += "<td>" + replaceDatabaseToDisplay(value.D1) + "</td>";
                                        valData += "<td>" + replaceDatabaseToDisplay(value.D2) + "</td>";
                                        valData += "<td>" + replaceDatabaseToDisplay(value.D3) + "</td>";
                                        valData += "<td" + strSubmitHfyr1IsDisabled + value.YRHF1ISIMPLEVAL + " class=\"text-center\">" + value.YRHF1 + "</td>";
                                        valData += "<td" + strSubmitHfyr2IsDisabled + value.YRHF2ISIMPLEVAL + " class=\"text-center\">" + value.YRHF2 + "</td>";
                                        valData += "<td class=\"text-center\">";
                                        //if (value.ISIMPLEVAL == "" && strSubmitHfyr1IsDisabled == "" && strSubmitHfyr2IsDisabled == "")
                                        //{
                                        valData += "<a style=\"cursor:pointer; margin-right:8px;\" onclick=\"showAddEditTab1t2(this,'засах');\" data-target=\"#agreementTab1t2Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></a>";
                                        valData += "<a style=\"cursor:pointer;\" onclick=\"showDeleteTab1t2(this);\"><i class=\"fa fa-trash-o\"></i></a>";
                                        //}
                                        //else
                                        //{
                                        //valData += "<a style=\"cursor:pointer; margin-right:8px;\" onclick=\"showAddEditTab1t2(this,'засах');\" data-target=\"#agreementTab1t2Modal\" data-toggle=\"modal\" data-disabled=\"disabled\"><i class=\"fa fa-pencil\"></i></a>";
                                        //}
                                        valData += "</td>";
                                        valData += "</tr>";
                                    });
                                    valData += "</tbody>";
                                    valData += "</table>";
                                    valData += "<script>";
                                    valData += "var responsiveHelper_agreementTab1t2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#agreementTab1t2Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_agreementTab1t2Datatable) {responsiveHelper_agreementTab1t2Datatable = new ResponsiveDatatablesHelper($('#agreementTab1t2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_agreementTab1t2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_agreementTab1t2Datatable.respond();}, \"aoColumns\": [null, null, null, null, { \"sWidth\": \"38px\" }, { \"sWidth\": \"38px\" }, { \"sWidth\": \"40px\" }]});";
                                    valData += "<\/script>";
                                    $("#divBindTab1t2Table").html(valData);
                                    hideLoader('loaderTab1t2');
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
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    //$('#agreementTab1t2SelectYear').click(function () {
    //    dataBindTab1t2DataTable();
    //});
    function showAddEditTab1t2(el, isinsupt) {
        $('#agreementTab1t2ModalHeaderLabel').text(isinsupt);
        $('#agreementTab1t2ModalCurrentYr').text($('#agreementTab1SelectYear option:selected').val());
        $('input[name="agreementTab1t2ModalHalfyear"]').prop('checked', false);
        $('input[name="agreementTab1t2ModalHalfyear"]').prop('disabled', false);
        if (isinsupt == 'нэмэх') {
            $('#agreementTab1t2ID').text("");
            $('#agreementTab1t2ModalTarget').text("");
            $('#agreementTab1t2ModalResulted').text("");
            $('#agreementTab1t2ModalBasicLevel').text("");
            $('#agreementTab1t2ModalTarget').prop('disabled', false);
            $('#agreementTab1t2ModalResulted').prop('disabled', false);
            $('#agreementTab1t2ModalBasicLevel').prop('disabled', false);
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"SELECT (SELECT TO_CHAR(COUNT(1)) FROM TBL_AGREEMENTSUBMIT WHERE YR=' + $('#agreementTab1SelectYear option:selected').val() + ' AND HFYR=1)||\'~\'||(SELECT TO_CHAR(COUNT(1)) FROM TBL_AGREEMENTSUBMIT WHERE YR=' + $('#agreementTab1SelectYear option:selected').val() + ' AND HFYR=2)||\'~\'||(SELECT TO_CHAR(COUNT(1)) FROM TBL_AGREEMENTSUBMITSTAFF WHERE YR=' + $('#agreementTab1SelectYear option:selected').val() + ' AND HFYR=1 AND ST_ID=' + $('#agreementTab1SelectStaff option:selected').val() + ')||\'~\'||(SELECT TO_CHAR(COUNT(1)) FROM TBL_AGREEMENTSUBMITSTAFF WHERE YR=' + $('#agreementTab1SelectYear option:selected').val() + ' AND HFYR=2 AND ST_ID=' + $('#agreementTab1SelectStaff option:selected').val() + ') FROM DUAL"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    if (data.d.split('~')[0] == '1' || data.d.split('~')[2] == '1') {
                        $('#agreementTab1t2ModalHalfyear1').prop('disabled', true);
                    }
                    if (data.d.split('~')[1] == '1' || data.d.split('~')[3] == '1') {
                        $('#agreementTab1t2ModalHalfyear2').prop('disabled', true);
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
        else {
            $('#agreementTab1t2ID').text($(el).closest('tr').find('td:eq(0)').text());
            $('#agreementTab1t2ModalTarget').text($(el).closest('tr').find('td:eq(1)').text());
            $('#agreementTab1t2ModalResulted').text($(el).closest('tr').find('td:eq(2)').text());
            $('#agreementTab1t2ModalBasicLevel').text($(el).closest('tr').find('td:eq(3)').text());
            if ($.trim($(el).closest('tr').find('td:eq(4)').html()) != '') $('#agreementTab1t2ModalHalfyear1').prop('checked', true);
            if ($.trim($(el).closest('tr').find('td:eq(5)').html()) != '') $('#agreementTab1t2ModalHalfyear2').prop('checked', true);
            if (($(el).closest('tr').find('td:eq(4)').attr('data-disabled') == 'disabled' && $.trim($(el).closest('tr').find('td:eq(4)').html()) != '') || ($(el).closest('tr').find('td:eq(5)').attr('data-disabled') == 'disabled' && $.trim($(el).closest('tr').find('td:eq(5)').html()) != '')) {
                //$('#agreementTab1t2ModalTarget').prop('disabled', true);
                //$('#agreementTab1t2ModalResulted').prop('disabled', true);
                //$('#agreementTab1t2ModalBasicLevel').prop('disabled', true);
            }
            else {
                $('#agreementTab1t2ModalTarget').prop('disabled', false);
                $('#agreementTab1t2ModalResulted').prop('disabled', false);
                $('#agreementTab1t2ModalBasicLevel').prop('disabled', false);
            }
            $('#agreementTab1t2ModalTarget').prop('disabled', false);
            $('#agreementTab1t2ModalResulted').prop('disabled', false);
            $('#agreementTab1t2ModalBasicLevel').prop('disabled', false);
            if ($(el).closest('tr').find('td:eq(4)').attr('data-disabled') == 'disabled') $('#agreementTab1t2ModalHalfyear1').prop('disabled', true);
            if ($(el).closest('tr').find('td:eq(5)').attr('data-disabled') == 'disabled') $('#agreementTab1t2ModalHalfyear2').prop('disabled', true);
        }
    }
    function showDeleteTab1t2(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_AGREEMENT_SKILL_IMPL WHERE AGREEMENT_SKILL_ID=' + $(el).closest('tr').find('td:eq(0)').text() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') {
                    alert('Сонгосон мэдлэг чадварт хамааралтай биелэлт болон үнэлгээ орсон тул устгах боломжгүй байна!');
                }
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "\"" + $(el).closest('tr').find('td:eq(1)').text() + "\" зорилтыг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"DELETE FROM TBL_AGREEMENT_SKILL WHERE ID=' + $(el).closest('tr').find('td:eq(0)').text() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab1t2DataTable();
                                    smallBox('Сонгосон зорилт', 'Амжилттай устлаа...', '#659265', 3000);
                                    $('#divBindTab2t2Table').html('');
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
            }
        });
    }
    $('#agreementTab1t2ModalForm').bootstrapValidator({
        fields: {
            agreementTab1t2ModalTarget: {
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
            agreementTab1t2ModalResulted: {
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
            agreementTab1t2ModalBasicLevel: {
                group: '.form-group',
                validators: {
                    stringLength: {
                        max: 500,
                        message: 'Уртдаа 500 тэмдэгт авна'
                    }
                }
            },
            agreementTab1t2ModalHalfyear: {
                group: '.form-group',
                validators: {
                    choice: {
                        min: 1,
                        message: 'Сонгоно уу'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            var valHfyr1 = 0, valHfyr2 = 0;
            if ($('#agreementTab1t2ModalHalfyear1').is(':checked')) valHfyr1 = 1;
            if ($('#agreementTab1t2ModalHalfyear2').is(':checked')) valHfyr2 = 1;
            if ($('#agreementTab1t2ModalHeaderLabel').text() == 'нэмэх') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"INSERT INTO TBL_AGREEMENT_SKILL (ID, YR, ST_ID, D1, D2, D3, YRHF1, YRHF2) VALUES (TBLLASTID(\'TBL_AGREEMENT_SKILL\'),' + $('#agreementTab1SelectYear option:selected').val() + ',' + $('#agreementTab1SelectStaff option:selected').val() + ',\'' + replaceDisplayToDatabase($.trim($('#agreementTab1t2ModalTarget').val())) + '\',\'' + replaceDisplayToDatabase($.trim($('#agreementTab1t2ModalResulted').val())) + '\',\'' + replaceDisplayToDatabase($.trim($('#agreementTab1t2ModalBasicLevel').val())) + '\', ' + valHfyr1 + ', ' + valHfyr2 + ')"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab1t2DataTable()
                        $('#agreementTab1t2Modal').modal('hide');
                        smallBox('Мэдлэг чадвараа дээшлүүлэх зорилт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                        $("#divBindTab2t2Table").html('');
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
                    data: '{"qry":"UPDATE TBL_AGREEMENT_SKILL SET D1=\'' + replaceDisplayToDatabase($.trim($('#agreementTab1t2ModalTarget').val())) + '\', D2=\'' + replaceDisplayToDatabase($.trim($('#agreementTab1t2ModalResulted').val())) + '\', D3=\'' + replaceDisplayToDatabase($.trim($('#agreementTab1t2ModalBasicLevel').val())) + '\', YRHF1=' + valHfyr1 + ', YRHF2=' + valHfyr2 + ' WHERE ID=' + $('#agreementTab1t2ID').text() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab1t2DataTable();
                        $('#agreementTab1t2Modal').modal('hide');
                        smallBox('Мэдлэг чадвараа дээшлүүлэх зорилт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                        $("#divBindTab2t2Table").html('');
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
    //tab1t3
    function dataBindTab1t3DataTable() {
        var valData = '';
        var strSubmitHfyr1IsDisabled = "", strSubmitHfyr2IsDisabled = "";
        showLoader('loaderTab1t3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT (SELECT TO_CHAR(COUNT(1)) FROM TBL_AGREEMENTSUBMITSTAFF WHERE YR=' + $("#agreementTab1SelectYear option:selected").val() + ' AND HFYR=1 AND ST_ID=' + $('#agreementTab1SelectStaff option:selected').val() + ')||\'~\'||(SELECT TO_CHAR(COUNT(1)) FROM TBL_AGREEMENTSUBMITSTAFF WHERE YR=' + $("#agreementTab1SelectYear option:selected").val() + ' AND HFYR=2 AND ST_ID=' + $('#agreementTab1SelectStaff option:selected').val() + ') FROM DUAL"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d.split('~')[0] == "1") strSubmitHfyr1IsDisabled = " disabled=\"disabled\"";
                if (data.d.split('~')[1] == "1") strSubmitHfyr2IsDisabled = " disabled=\"disabled\"";
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                    data: '{"qry": "SELECT (SELECT TO_CHAR(COUNT(1)) FROM TBL_AGREEMENTSUBMIT WHERE YR=' + $("#agreementTab1SelectYear option:selected").val() + ' AND HFYR=1)||\'~\'||(SELECT TO_CHAR(COUNT(1)) FROM TBL_AGREEMENTSUBMIT WHERE YR=' + $("#agreementTab1SelectYear option:selected").val() + ' AND HFYR=2) FROM DUAL"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        if (data.d.split('~')[0] == "1") strSubmitHfyr1IsDisabled = " disabled=\"disabled\"";
                        if (data.d.split('~')[1] == "1") strSubmitHfyr2IsDisabled = " disabled=\"disabled\"";
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/AgreementTab1t3",
                            data: '{"yr":"' + $("#agreementTab1SelectYear option:selected").val() + '", "st_id":"' + $('#agreementTab1SelectStaff option:selected').val() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = "<table id=\"agreementTab1t3Datatable\" class=\"table table-striped table-bordered table-hover smart-form\" width=\"100%\"><thead>";
                                valData += "<tr>";
                                valData += "<th class=\"hide\"></th>";
                                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Дугаар</th>";
                                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Ажил үйлчилгээ</th>";
                                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Эхний<br>хагас жил</th>";
                                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Сүүлийн<br>хагас жил</th>";
                                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</th>";
                                valData += "</tr></thead><tbody>";
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += "<td class=\"hide\">" + value.ID + "</td>";
                                    valData += "<td>" + value.NO + "</td>";
                                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                                    valData += "<td" + strSubmitHfyr1IsDisabled + value.YRHF1ISIMPLEVAL + " class=\"text-center\">" + value.YRHF1 + "</td>";
                                    valData += "<td" + strSubmitHfyr2IsDisabled + value.YRHF2ISIMPLEVAL + " class=\"text-center\">" + value.YRHF2 + "</td>";
                                    valData += "<td class=\"text-center\">";
                                    //if (value.ISIMPLEVAL == "" && strSubmitHfyr1IsDisabled == "" && strSubmitHfyr2IsDisabled == "")
                                    //{
                                    valData += "<a style=\"cursor:pointer; margin-right:8px;\" onclick=\"showAddEditTab1t3(this,'засах');\" data-target=\"#agreementTab1t3Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></a>";
                                    valData += "<a style=\"cursor:pointer;\" onclick=\"showDeleteTab1t3(this);\"><i class=\"fa fa-trash-o\"></i></a>";
                                    //}
                                    //else
                                    //{
                                    //valData += "<a style=\"cursor:pointer; margin-right:8px;\" onclick=\"showAddEditTab1t3(this,'засах');\" data-target=\"#agreementTab1t3Modal\" data-toggle=\"modal\" data-disabled=\"disabled\"><i class=\"fa fa-pencil\"></i></a>";
                                    //}
                                    valData += "</td>";
                                    valData += "</tr>";
                                });
                                valData += "</tbody>";
                                valData += "</table>";
                                valData += "<script>";
                                valData += "var responsiveHelper_agreementTab1t3Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#agreementTab1t3Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_agreementTab1t3Datatable) {responsiveHelper_agreementTab1t3Datatable = new ResponsiveDatatablesHelper($('#agreementTab1t3Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_agreementTab1t3Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_agreementTab1t3Datatable.respond();}, \"aoColumns\": [null, { \"sWidth\": \"20px\" }, null, { \"sWidth\": \"38px\" }, { \"sWidth\": \"38px\" }, { \"sWidth\": \"40px\" }]});";
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
    //$('#agreementTab1t3SelectYear').click(function () {
    //    dataBindTab1t3DataTable();
    //});
    function showAddEditTab1t3(el, isinsupt) {
        $('#agreementTab1t3ModalHeaderLabel').text(isinsupt);
        $('#agreementTab1t3ModalCurrentYr').text($('#agreementTab1SelectYear option:selected').val());
        $('input[name="agreementTab1t3ModalHalfyear"]').prop('checked', false);
        $('input[name="agreementTab1t3ModalHalfyear"]').prop('disabled', false);
        if (isinsupt == 'нэмэх') {
            $('#agreementTab1t3ID').text("");
            $('#agreementTab1t3ModalNo').val("");
            $('#agreementTab1t3ModalName').val("");
            $('#agreementTab1t3ModalNo').prop('disabled', false);
            $('#agreementTab1t3ModalName').prop('disabled', false);
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"SELECT (SELECT TO_CHAR(COUNT(1)) FROM TBL_AGREEMENTSUBMIT WHERE YR=' + $('#agreementTab1SelectYear option:selected').val() + ' AND HFYR=1)||\'~\'||(SELECT TO_CHAR(COUNT(1)) FROM TBL_AGREEMENTSUBMIT WHERE YR=' + $('#agreementTab1SelectYear option:selected').val() + ' AND HFYR=2)||\'~\'||(SELECT TO_CHAR(COUNT(1)) FROM TBL_AGREEMENTSUBMITSTAFF WHERE YR=' + $('#agreementTab1SelectYear option:selected').val() + ' AND HFYR=1 AND ST_ID=' + $('#agreementTab1SelectStaff option:selected').val() + ')||\'~\'||(SELECT TO_CHAR(COUNT(1)) FROM TBL_AGREEMENTSUBMITSTAFF WHERE YR=' + $('#agreementTab1SelectYear option:selected').val() + ' AND HFYR=2 AND ST_ID=' + $('#agreementTab1SelectStaff option:selected').val() + ') FROM DUAL"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    if (data.d.split('~')[0] == '1' || data.d.split('~')[2] == '1') {
                        $('#agreementTab1t3ModalHalfyear1').prop('disabled', true);
                    }
                    if (data.d.split('~')[1] == '1' || data.d.split('~')[3] == '1') {
                        $('#agreementTab1t3ModalHalfyear2').prop('disabled', true);
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
        else {
            $('#agreementTab1t3ID').text($(el).closest('tr').find('td:eq(0)').text());
            $('#agreementTab1t3ModalNo').val($(el).closest('tr').find('td:eq(1)').text());
            $('#agreementTab1t3ModalName').val($(el).closest('tr').find('td:eq(2)').text());
            if ($.trim($(el).closest('tr').find('td:eq(3)').html()) != '') $('#agreementTab1t3ModalHalfyear1').prop('checked', true);
            if ($.trim($(el).closest('tr').find('td:eq(4)').html()) != '') $('#agreementTab1t3ModalHalfyear2').prop('checked', true);
            if (($(el).closest('tr').find('td:eq(3)').attr('data-disabled') == 'disabled' && $.trim($(el).closest('tr').find('td:eq(3)').html()) != '') || ($(el).closest('tr').find('td:eq(4)').attr('data-disabled') == 'disabled' && $.trim($(el).closest('tr').find('td:eq(4)').html()) != '')) {
                //$('#agreementTab1t3ModalNo').prop('disabled', true);
                //$('#agreementTab1t3ModalName').prop('disabled', true);
            }
            else {
                $('#agreementTab1t3ModalNo').prop('disabled', false);
                $('#agreementTab1t3ModalName').prop('disabled', false);
            }
            $('#agreementTab1t3ModalNo').prop('disabled', false);
            $('#agreementTab1t3ModalName').prop('disabled', false);
            if ($(el).closest('tr').find('td:eq(3)').attr('data-disabled') == 'disabled') $('#agreementTab1t3ModalHalfyear1').prop('disabled', true);
            if ($(el).closest('tr').find('td:eq(4)').attr('data-disabled') == 'disabled') $('#agreementTab1t3ModalHalfyear2').prop('disabled', true);
        }
    }
    function showDeleteTab1t3(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_AGREEMENT_OTHER_IMPL WHERE AGREEMENT_OTHER_ID=' + $(el).closest('tr').find('td:eq(0)').text() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') {
                    alert('Сонгосон бусад ажил үйлчилгээнд хамааралтай биелэлт болон үнэлгээ орсон тул устгах боломжгүй байна!');
                }
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "\"" + $(el).closest('tr').find('td:eq(1)').text() + "\" дугаартай ажил үйлчилгээг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"DELETE FROM TBL_AGREEMENT_OTHER WHERE ID=' + $(el).closest('tr').find('td:eq(0)').text() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab1t3DataTable();
                                    smallBox('Сонгосон Бусад ажил, үйлчилгээ', 'Амжилттай устлаа...', '#659265', 3000);
                                    $('#divBindTab2t3Table').html('');
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
            }
        });
    }
    $('#agreementTab1t3ModalForm').bootstrapValidator({
        fields: {
            agreementTab1t3ModalNo: {
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
                        message: 'Зөвхөн тоон тэмдэгт орно'
                    }
                }
            },
            agreementTab1t3ModalName: {
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
            agreementTab1t3ModalHalfyear: {
                group: '.form-group',
                validators: {
                    choice: {
                        min: 1,
                        message: 'Сонгоно уу'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            var valHfyr1 = 0, valHfyr2 = 0;
            if ($('#agreementTab1t3ModalHalfyear1').is(':checked')) valHfyr1 = 1;
            if ($('#agreementTab1t3ModalHalfyear2').is(':checked')) valHfyr2 = 1;
            if ($('#agreementTab1t3ModalHeaderLabel').text() == 'нэмэх') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"INSERT INTO TBL_AGREEMENT_OTHER (ID, YR, ST_ID, NO, NAME, YRHF1, YRHF2) VALUES (TBLLASTID(\'TBL_AGREEMENT_OTHER\'),' + $('#agreementTab1SelectYear option:selected').val() + ',' + $('#agreementTab1SelectStaff option:selected').val() + ',' + $.trim($('#agreementTab1t3ModalNo').val()) + ',\'' + replaceDisplayToDatabase($.trim($('#agreementTab1t3ModalName').val())) + '\', ' + valHfyr1 + ', ' + valHfyr2 + ')"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab1t3DataTable()
                        $('#agreementTab1t3Modal').modal('hide');
                        smallBox('Бусад ажил, үйлчилгэ', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                        $("#divBindTab2t3Table").html('');
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
                    data: '{"qry":"UPDATE TBL_AGREEMENT_OTHER SET NO=' + $.trim($('#agreementTab1t3ModalNo').val()) + ', NAME=\'' + replaceDisplayToDatabase($.trim($('#agreementTab1t3ModalName').val())) + '\', YRHF1=' + valHfyr1 + ', YRHF2=' + valHfyr2 + ' WHERE ID=' + $('#agreementTab1t3ID').text() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab1t3DataTable()
                        $('#agreementTab1t3Modal').modal('hide');
                        smallBox('Бусад ажил, үйлчилгэ', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                        $("#divBindTab2t3Table").html('');
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

    ////tab2
    //tab2t1
    function dataBindTab2t1DataTable() {
        var valData = '';
        showLoader('loaderTab2t1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AgreementTab2t1",
            data: '{"yr":"' + $("#agreementTab2t1SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab2t1SelectYearHalf option:selected").val() + '", "st_id":"' + $.trim($('#indexUserId').html()) + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData = "<table id=\"agreementTab2t1Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center hide\" style=\"vertical-align:middle;\"></th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Жилийн төлөвлөгөө</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хугацаа /сараар/</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Биелэлт оруулах</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td class=\"hide\">" + value.PLANYR_ID + "</td>";
                    valData += "<td>" + value.STRAT_NO + "." + value.ACTION_NO + "." + value.PLANYR_NO + ". " + replaceDatabaseToDisplay(value.PLANYR_NAME) + "</td>";
                    valData += "<td class=\"text-center\">" + value.HUGATSAA + "</td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">";
                    if (value.ISIMPL == "0") {
                        if (value.ISPER1 == "0") valData += "<a href=\"javascript:void(0);\" data-target=\"#agreementTab2t1ImplModal\" data-toggle=\"modal\" style=\"cursor:pointer\" onclick=\"showAddEditTab2t1Impl(this)\"><i class=\"glyphicon glyphicon-edit txt-color-red font-xl\"></i></a>";
                        else valData += "<a href=\"javascript:void(0);\" style=\"cursor:pointer\" onclick=\"Үнэлгээ нэмэлтээр өгсөн тул биелэлт оруулах боломжгүй!\"><i class=\"glyphicon glyphicon-edit txt-color-red font-xl\"></i></a>";
                    }
                    else {
                        if (value.ISPER1 == "0") valData += "<a href=\"javascript:void(0);\" data-target=\"#agreementTab2t1ImplModal\" data-toggle=\"modal\" style=\"cursor:pointer\" onclick=\"showAddEditTab2t1Impl(this)\"><i class=\"glyphicon glyphicon-check txt-color-green font-xl\"></i></a>";
                        else valData += "<a href=\"javascript:void(0);\" style=\"cursor:pointer\" onclick=\"alert('Үнэлгээ нэмэлтээр өгсөн тул биелэлт засварлах боломжгүй!');\"><i class=\"glyphicon glyphicon-check txt-color-green font-xl\"></i></a>";
                    }
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_agreementTab2t1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#agreementTab2t1Datatable').dataTable({\"bSort\": false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_agreementTab2t1Datatable) {responsiveHelper_agreementTab2t1Datatable = new ResponsiveDatatablesHelper($('#agreementTab2t1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_agreementTab2t1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_agreementTab2t1Datatable.respond();}, \"aoColumns\": [null, null, null, { \"sWidth\": \"52px\" }]});";
                valData += "<\/script>";
                $("#divBindTab2t1Table").html(valData);
                hideLoader('loaderTab2t1');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $('#agreementTab2t1SelectYear, #agreementTab2t1SelectYearHalf').click(function () {
        dataBindTab2t1DataTable();
    });
    function showAddEditTab2t1Impl(el) {
        $('#agreementImplID').text($(el).closest('tr').find('td:eq(0)').text());
        if ($(el).find('i').attr('class').split(' ')[1].split('-')[1] == 'edit') $('#agreementTab2t1ImplModalHeaderLabel').text('нэмэх');
        else $('#agreementTab2t1ImplModalHeaderLabel').text('засах');
        $('#agreementTab2t1ImplModalCurrentYr').text($('#agreementTab2t1SelectYear option:selected').val());
        $('#agreementTab2t1ImplModalCurrentYrHalf').text($('#agreementTab2t1SelectYearHalf option:selected').text());
        $('#agreementTab2t1ImplModalType').text('Нийт болон тусгай ажил үйлчилгээ');
        $('#agreementTab2t1ImplModalPlant').text($(el).closest('tr').find('td:eq(1)').text());
        $('#agreementTab2t1ImplModalShowPlanmImpl, #agreementTab2t1ImplModalImportPlanmImpl').css('display','block');
        if ($(el).find('i').attr('class').split(' ')[1].split('-')[1] == 'edit') {
            $('#agreementTab2t1ImplModalCharLength').text('0');
            CKEDITOR.instances.agreementTab2t1ImplModalImpl.setData("");
        }
        else {
            var myimpl = "";
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"SELECT b.IMPL FROM TBL_AGREEMENT_MAIN a INNER JOIN TBL_AGREEMENT_MAIN_IMPL b ON a.ID=b.AGREEMENT_MAIN_ID WHERE a.ST_ID=' + $.trim($('#indexUserId').html()) + ' AND a.PLANYR_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND a.YR=' + $("#agreementTab2t1SelectYear option:selected").val() + ' AND b.YRHF=' + $('#agreementTab2t1SelectYearHalf option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    myimpl += data.d;
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                        data: '{"qry":"SELECT b.IMPL1 FROM TBL_AGREEMENT_MAIN a INNER JOIN TBL_AGREEMENT_MAIN_IMPL b ON a.ID=b.AGREEMENT_MAIN_ID WHERE a.ST_ID=' + $.trim($('#indexUserId').html()) + ' AND a.PLANYR_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND a.YR=' + $("#agreementTab2t1SelectYear option:selected").val() + ' AND b.YRHF=' + $('#agreementTab2t1SelectYearHalf option:selected').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            myimpl += data.d;
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                data: '{"qry":"SELECT b.IMPL2 FROM TBL_AGREEMENT_MAIN a INNER JOIN TBL_AGREEMENT_MAIN_IMPL b ON a.ID=b.AGREEMENT_MAIN_ID WHERE a.ST_ID=' + $.trim($('#indexUserId').html()) + ' AND a.PLANYR_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND a.YR=' + $("#agreementTab2t1SelectYear option:selected").val() + ' AND b.YRHF=' + $('#agreementTab2t1SelectYearHalf option:selected').val() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    myimpl += data.d;
                                    globalAjaxVar = $.ajax({
                                        type: "POST",
                                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                        data: '{"qry":"SELECT b.IMPL3 FROM TBL_AGREEMENT_MAIN a INNER JOIN TBL_AGREEMENT_MAIN_IMPL b ON a.ID=b.AGREEMENT_MAIN_ID WHERE a.ST_ID=' + $.trim($('#indexUserId').html()) + ' AND a.PLANYR_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND a.YR=' + $("#agreementTab2t1SelectYear option:selected").val() + ' AND b.YRHF=' + $('#agreementTab2t1SelectYearHalf option:selected').val() + '"}',
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function (data) {
                                            myimpl += data.d;
                                            globalAjaxVar = $.ajax({
                                                type: "POST",
                                                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                data: '{"qry":"SELECT b.IMPL4 FROM TBL_AGREEMENT_MAIN a INNER JOIN TBL_AGREEMENT_MAIN_IMPL b ON a.ID=b.AGREEMENT_MAIN_ID WHERE a.ST_ID=' + $.trim($('#indexUserId').html()) + ' AND a.PLANYR_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND a.YR=' + $("#agreementTab2t1SelectYear option:selected").val() + ' AND b.YRHF=' + $('#agreementTab2t1SelectYearHalf option:selected').val() + '"}',
                                                contentType: "application/json; charset=utf-8",
                                                dataType: "json",
                                                success: function (data) {
                                                    myimpl += data.d;
                                                    globalAjaxVar = $.ajax({
                                                        type: "POST",
                                                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                        data: '{"qry":"SELECT b.IMPL5 FROM TBL_AGREEMENT_MAIN a INNER JOIN TBL_AGREEMENT_MAIN_IMPL b ON a.ID=b.AGREEMENT_MAIN_ID WHERE a.ST_ID=' + $.trim($('#indexUserId').html()) + ' AND a.PLANYR_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND a.YR=' + $("#agreementTab2t1SelectYear option:selected").val() + ' AND b.YRHF=' + $('#agreementTab2t1SelectYearHalf option:selected').val() + '"}',
                                                        contentType: "application/json; charset=utf-8",
                                                        dataType: "json",
                                                        success: function (data) {
                                                            myimpl += data.d;
                                                            CKEDITOR.instances.agreementTab2t1ImplModalImpl.setData(replaceDatabaseToDisplay(myimpl));
                                                            $("#agreementTab2t1ImplModalCharLength").text(myimpl.length);
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
    $('#agreementTab2t1ImplModalDelete').click(function () {
        var valQryIsEval = '';
        if ($('#agreementTab2t1ImplModalType').text() == 'Нийт болон тусгай ажил үйлчилгээ') {
            valQryIsEval = 'SELECT COUNT(1) FROM TBL_AGREEMENT_MAIN_IMPL a INNER JOIN TBL_AGREEMENT_MAIN b ON a.AGREEMENT_MAIN_ID=b.ID WHERE b.ST_ID=' + $.trim($('#indexUserId').html()) + ' AND b.PLANYR_ID=' + $('#agreementImplID').text() + ' AND b.YR=' + $("#agreementTab2t1SelectYear option:selected").val() + ' AND a.YRHF=' + $('#agreementTab2t1SelectYearHalf option:selected').val() + ' AND a.PER1 IS NOT NULL';
        }
        else if ($('#agreementTab2t1ImplModalType').text() == 'Мэдлэг чадвараа дээшлүүлэх зорилт') {
            valQryIsEval = 'SELECT COUNT(1) FROM TBL_AGREEMENT_SKILL_IMPL WHERE AGREEMENT_SKILL_ID=' + $('#agreementImplID').text() + ' AND YRHF = ' + $('#agreementTab2t2SelectYearHalf option:selected').val() + ' AND PER1 is not null';
        }
        else if ($('#agreementTab2t1ImplModalType').text() == 'Бусад ажил, үйлчилгээ') {
            valQryIsEval = 'SELECT COUNT(1) FROM TBL_AGREEMENT_OTHER_IMPL WHERE AGREEMENT_OTHER_ID=' + $('#agreementImplID').text() + ' AND YRHF = ' + $('#agreementTab2t3SelectYearHalf option:selected').val() + ' AND PER1 is not null';
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"' + valQryIsEval + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != "0") alert('Үнэлгээ орсон тул устгах боломжгүй байна!');
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Та биелэлт устгахдаа итгэлтэй байна уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            var valQry = '';
                            if ($('#agreementTab2t1ImplModalType').text() == 'Нийт болон тусгай ажил үйлчилгээ') valQry = 'DELETE FROM TBL_AGREEMENT_MAIN_IMPL WHERE AGREEMENT_MAIN_ID IN (SELECT AGREEMENT_MAIN_ID FROM TBL_AGREEMENT_MAIN_IMPL a INNER JOIN TBL_AGREEMENT_MAIN b ON a.AGREEMENT_MAIN_ID=b.ID WHERE b.ST_ID=' + $.trim($('#indexUserId').html()) + ' AND b.PLANYR_ID=' + $('#agreementImplID').text() + ' AND b.YR=' + $("#agreementTab2t1SelectYear option:selected").val() + ' AND a.YRHF=' + $('#agreementTab2t1SelectYearHalf option:selected').val() + ') AND YRHF=' + $('#agreementTab2t1SelectYearHalf option:selected').val() + '';
                            else if ($('#agreementTab2t1ImplModalType').text() == 'Мэдлэг чадвараа дээшлүүлэх зорилт') valQry = 'DELETE FROM TBL_AGREEMENT_SKILL_IMPL WHERE AGREEMENT_SKILL_ID=' + $('#agreementImplID').text() + ' AND YRHF=' + $('#agreementTab2t2SelectYearHalf option:selected').val() + '';
                            else if ($('#agreementTab2t1ImplModalType').text() == 'Бусад ажил, үйлчилгээ') valQry = 'DELETE FROM TBL_AGREEMENT_OTHER_IMPL WHERE AGREEMENT_OTHER_ID=' + $('#agreementImplID').text() + ' AND YRHF=' + $('#agreementTab2t3SelectYearHalf option:selected').val() + '';
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"' + valQry + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    CKEDITOR.instances.agreementTab2t1ImplModalImpl.setData("");
                                    $("#agreementTab2t1ImplModalCharLength").text("0");
                                    if ($('#agreementTab2t1ImplModalType').text() == 'Нийт болон тусгай ажил үйлчилгээ') {
                                        $('#agreementTab2t1Datatable > tbody  > tr').each(function () {
                                            if ($('td:eq(0)', this).html() == $('#agreementImplID').text()) {
                                                $('td:eq(3)', this).find('a').find('i').attr('class', 'glyphicon glyphicon-edit txt-color-red font-xl');
                                                //$('td:eq(3)', this).find('img').attr("src", "../img/red-circle.png");
                                                //$('td:eq(3)', this).find('img').attr("title", "Биелэлт нэмэх");
                                                return false;
                                            }
                                        });
                                    }
                                    else if ($('#agreementTab2t1ImplModalType').text() == 'Мэдлэг чадвараа дээшлүүлэх зорилт') {
                                        $('#agreementTab2t2Datatable > tbody  > tr').each(function () {
                                            if ($('td:eq(0)', this).html() == $('#agreementImplID').text()) {
                                                $('td:eq(4)', this).find('a').find('i').attr('class', 'glyphicon glyphicon-edit txt-color-red font-xl');
                                                //$('td:eq(4)', this).find('img').attr("src", "../img/red-circle.png");
                                                //$('td:eq(4)', this).find('img').attr("title", "Биелэлт нэмэх");
                                                return false;
                                            }
                                        });
                                    }
                                    else if ($('#agreementTab2t1ImplModalType').text() == 'Бусад ажил, үйлчилгээ') {
                                        $('#agreementTab2t3Datatable > tbody  > tr').each(function () {
                                            if ($('td:eq(0)', this).html() == $('#agreementImplID').text()) {
                                                $('td:eq(2)', this).find('a').find('i').attr('class', 'glyphicon glyphicon-edit txt-color-red font-xl');
                                                //$('td:eq(2)', this).find('img').attr("src", "../img/red-circle.png");
                                                //$('td:eq(2)', this).find('img').attr("title", "Биелэлт нэмэх");
                                                return false;
                                            }
                                        });
                                    }
                                    smallBox('Биелэлт', 'Амжилттай устлаа...', '#659265', 3000);
                                    $('#divBindTab1t1Table').html('');
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
    });
    function agreementPlanmImplShow() {
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AgreementTab2t1PlanmImpl",
            data: '{"planyrid":"' + $('#agreementImplID').text() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<b>" + value.MNTH + "-р сарын тайлан:</b>" + value.IMPL_DATA;
                });
                $('#agreementPlanmImplDiv').html(replaceDatabaseToDisplay(valData));
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#agreementTab2t1ImplModalImportPlanmImpl").click(function () {
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AgreementTab2t1PlanmImpl",
            data: '{"planyrid":"' + $('#agreementImplID').text() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<b>" + value.MNTH + "-р сарын тайлан:</b>" + value.IMPL_DATA;
                });
                CKEDITOR.instances.agreementTab2t1ImplModalImpl.setData(replaceDatabaseToDisplay(valData));
                $("#agreementTab2t1ImplModalCharLength").text(valData.length);
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    });
    $('#agreementTab2t1ImplSave').click(function () {
        var valQryIsEval = '', valQryIsCnt = '';
        var valQryIsTab2t1MainCnt = '';
        if ($('#agreementTab2t1ImplModalType').text() == 'Нийт болон тусгай ажил үйлчилгээ') {
            valQryIsEval = 'SELECT COUNT(1) FROM TBL_AGREEMENT_MAIN_IMPL a INNER JOIN TBL_AGREEMENT_MAIN b ON a.AGREEMENT_MAIN_ID=b.ID WHERE b.ST_ID=' + $.trim($('#indexUserId').html()) + ' AND b.PLANYR_ID=' + $('#agreementImplID').text() + ' AND b.YR=' + $("#agreementTab2t1SelectYear option:selected").val() + ' AND a.YRHF=' + $('#agreementTab2t1SelectYearHalf option:selected').val() + ' AND a.PER1 IS NOT NULL';
            valQryIsCnt = 'SELECT COUNT(1) FROM TBL_AGREEMENT_MAIN_IMPL a INNER JOIN TBL_AGREEMENT_MAIN b ON a.AGREEMENT_MAIN_ID=b.ID WHERE b.ST_ID=' + $.trim($('#indexUserId').html()) + ' AND b.PLANYR_ID=' + $('#agreementImplID').text() + ' AND b.YR=' + $("#agreementTab2t1SelectYear option:selected").val() + ' AND a.YRHF=' + $('#agreementTab2t1SelectYearHalf option:selected').val() + '';
            valQryIsTab2t1MainCnt = 'SELECT COUNT(1) FROM TBL_AGREEMENT_MAIN WHERE ST_ID=' + $.trim($('#indexUserId').html()) + ' AND PLANYR_ID=' + $('#agreementImplID').text() + ' AND YR=' + $("#agreementTab2t1SelectYear option:selected").val() + '';
        }
        else if ($('#agreementTab2t1ImplModalType').text() == 'Мэдлэг чадвараа дээшлүүлэх зорилт') {
            valQryIsEval = 'SELECT COUNT(1) FROM TBL_AGREEMENT_SKILL_IMPL WHERE AGREEMENT_SKILL_ID=' + $('#agreementImplID').text() + ' AND YRHF = ' + $('#agreementTab2t2SelectYearHalf option:selected').val() + ' AND PER1 is not null';
            valQryIsCnt = 'SELECT COUNT(1) FROM TBL_AGREEMENT_SKILL_IMPL WHERE AGREEMENT_SKILL_ID=' + $('#agreementImplID').text() + ' AND YRHF = ' + $('#agreementTab2t2SelectYearHalf option:selected').val() + '';
        }
        else if ($('#agreementTab2t1ImplModalType').text() == 'Бусад ажил, үйлчилгээ') {
            valQryIsEval = 'SELECT COUNT(1) FROM TBL_AGREEMENT_OTHER_IMPL WHERE AGREEMENT_OTHER_ID=' + $('#agreementImplID').text() + ' AND YRHF = ' + $('#agreementTab2t3SelectYearHalf option:selected').val() + ' AND PER1 is not null';
            valQryIsCnt = 'SELECT COUNT(1) FROM TBL_AGREEMENT_OTHER_IMPL WHERE AGREEMENT_OTHER_ID=' + $('#agreementImplID').text() + ' AND YRHF = ' + $('#agreementTab2t3SelectYearHalf option:selected').val() + '';
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"' + valQryIsEval + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != "0") alert('Үнэлгээ орсон тул мэдээлэлтэй ажиллах боломжгүй байна!');
                else {
                    if ($.trim(CKEDITOR.instances.agreementTab2t1ImplModalImpl.getData()) == "") {
                        alert("Биелэлт заавал оруулна уу!");
                    }
                    else {
                        if (replaceDisplayToDatabase($.trim(CKEDITOR.instances.agreementTab2t1ImplModalImpl.getData())).length > 10000) {
                            $("#agreementTab2t1ImplModalCharLength").text(replaceDisplayToDatabase($.trim(CKEDITOR.instances.agreementTab2t1ImplModalImpl.getData())).length);
                            alert("Биелэлт уртдаа 10000 тэмдэгт авна!");
                        }
                        else {
                            var impl = "", impl1 = "", impl2 = "", impl3 = "", impl4 = "", impl5 = "";
                            impl = replaceDisplayToDatabase($.trim(CKEDITOR.instances.agreementTab2t1ImplModalImpl.getData())).substr(0, 2000);
                            impl1 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.agreementTab2t1ImplModalImpl.getData())).substr(2000, 2000);
                            impl2 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.agreementTab2t1ImplModalImpl.getData())).substr(4000, 2000);
                            impl3 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.agreementTab2t1ImplModalImpl.getData())).substr(6000, 2000);
                            impl4 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.agreementTab2t1ImplModalImpl.getData())).substr(8000, 2000);
                            impl4 = replaceDisplayToDatabase($.trim(CKEDITOR.instances.agreementTab2t1ImplModalImpl.getData())).substr(10000, 2000);
                            if (impl.length == 0) impl = "";
                            if (impl1.length == 0) impl1 = "";
                            if (impl2.length == 0) impl2 = "";
                            if (impl3.length == 0) impl3 = "";
                            if (impl4.length == 0) impl4 = "";
                            if (impl5.length == 0) impl5 = "";

                            var valQry = '';
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                data: '{"qry":"' + valQryIsCnt + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    if (data.d == '0') {
                                        if ($('#agreementTab2t1ImplModalType').text() == 'Нийт болон тусгай ажил үйлчилгээ')
                                        {
                                            globalAjaxVar = $.ajax({
                                                type: "POST",
                                                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                data: '{"qry":"' + valQryIsTab2t1MainCnt + '"}',
                                                contentType: "application/json; charset=utf-8",
                                                dataType: "json",
                                                success: function (data) {
                                                    if (data.d != "0") {
                                                        valQry = 'INSERT INTO TBL_AGREEMENT_MAIN_IMPL (AGREEMENT_MAIN_ID, YRHF, IMPL, IMPL1, IMPL2, IMPL3, IMPL4, IMPL5) VALUES ((SELECT ID FROM TBL_AGREEMENT_MAIN WHERE ST_ID=' + $.trim($('#indexUserId').html()) + ' AND PLANYR_ID=' + $('#agreementImplID').text() + ' AND YR=' + $("#agreementTab2t1SelectYear option:selected").val() + '), ' + $('#agreementTab2t1SelectYearHalf option:selected').val() + ', \'' + impl + '\', \'' + impl1 + '\', \'' + impl2 + '\', \'' + impl3 + '\', \'' + impl4 + '\', \'' + impl5 + '\')';
                                                        funcInsertUpdateTab2Impl(valQry);
                                                    }
                                                    else {
                                                        globalAjaxVar = $.ajax({
                                                            type: "POST",
                                                            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                                            data: '{"qry":"INSERT INTO TBL_AGREEMENT_MAIN (ID, YR, ST_ID, PLANYR_ID, ISSPECIAL, YRHF1, YRHF2) VALUES (TBLLASTID(\'TBL_AGREEMENT_MAIN\'), ' + $("#agreementTab2t1SelectYear option:selected").val() + ', ' + $.trim($('#indexUserId').html()) + ', ' + $('#agreementImplID').text() + ', 0, 1, 1)"}',
                                                            contentType: "application/json; charset=utf-8",
                                                            dataType: "json",
                                                            success: function () {
                                                                valQry = 'INSERT INTO TBL_AGREEMENT_MAIN_IMPL (AGREEMENT_MAIN_ID, YRHF, IMPL, IMPL1, IMPL2, IMPL3, IMPL4, IMPL5) VALUES ((SELECT ID FROM TBL_AGREEMENT_MAIN WHERE ST_ID=' + $.trim($('#indexUserId').html()) + ' AND PLANYR_ID=' + $('#agreementImplID').text() + ' AND YR=' + $("#agreementTab2t1SelectYear option:selected").val() + '), ' + $('#agreementTab2t1SelectYearHalf option:selected').val() + ', \'' + impl + '\', \'' + impl1 + '\', \'' + impl2 + '\', \'' + impl3 + '\', \'' + impl4 + '\', \'' + impl5 + '\')';
                                                                funcInsertUpdateTab2Impl(valQry);
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
                                        else
                                        {
                                            if ($('#agreementTab2t1ImplModalType').text() == 'Мэдлэг чадвараа дээшлүүлэх зорилт') valQry = 'INSERT INTO TBL_AGREEMENT_SKILL_IMPL (AGREEMENT_SKILL_ID, YRHF, IMPL, IMPL1, IMPL2, IMPL3, IMPL4, IMPL5) VALUES (' + $('#agreementImplID').text() + ', ' + $('#agreementTab2t2SelectYearHalf option:selected').val() + ', \'' + impl + '\', \'' + impl1 + '\', \'' + impl2 + '\', \'' + impl3 + '\', \'' + impl4 + '\', \'' + impl5 + '\')';
                                            else if ($('#agreementTab2t1ImplModalType').text() == 'Бусад ажил, үйлчилгээ') valQry = 'INSERT INTO TBL_AGREEMENT_OTHER_IMPL (AGREEMENT_OTHER_ID, YRHF, IMPL, IMPL1, IMPL2, IMPL3, IMPL4, IMPL5) VALUES (' + $('#agreementImplID').text() + ', ' + $('#agreementTab2t3SelectYearHalf option:selected').val() + ', \'' + impl + '\', \'' + impl1 + '\', \'' + impl2 + '\', \'' + impl3 + '\', \'' + impl4 + '\', \'' + impl5 + '\')';
                                            funcInsertUpdateTab2Impl(valQry);
                                        }
                                    }
                                    else {
                                        if ($('#agreementTab2t1ImplModalType').text() == 'Нийт болон тусгай ажил үйлчилгээ') valQry = 'UPDATE TBL_AGREEMENT_MAIN_IMPL SET IMPL=\'' + impl + '\', IMPL1=\'' + impl1 + '\', IMPL2=\'' + impl2 + '\', IMPL3=\'' + impl3 + '\', IMPL4=\'' + impl4 + '\', IMPL5=\'' + impl5 + '\' WHERE AGREEMENT_MAIN_ID=(SELECT ID FROM TBL_AGREEMENT_MAIN WHERE ST_ID=' + $.trim($('#indexUserId').html()) + ' AND PLANYR_ID=' + $('#agreementImplID').text() + ' AND YR=' + $("#agreementTab2t1SelectYear option:selected").val() + ') AND YRHF = ' + $('#agreementTab2t1SelectYearHalf option:selected').val() + '';
                                        else if ($('#agreementTab2t1ImplModalType').text() == 'Мэдлэг чадвараа дээшлүүлэх зорилт') valQry = 'UPDATE TBL_AGREEMENT_SKILL_IMPL SET IMPL=\'' + impl + '\', IMPL1=\'' + impl1 + '\', IMPL2=\'' + impl2 + '\', IMPL3=\'' + impl3 + '\', IMPL4=\'' + impl4 + '\', IMPL5=\'' + impl5 + '\' WHERE AGREEMENT_SKILL_ID=' + $('#agreementImplID').text() + ' AND YRHF = ' + $('#agreementTab2t2SelectYearHalf option:selected').val() + '';
                                        else if ($('#agreementTab2t1ImplModalType').text() == 'Бусад ажил, үйлчилгээ') valQry = 'UPDATE TBL_AGREEMENT_OTHER_IMPL SET IMPL=\'' + impl + '\', IMPL1=\'' + impl1 + '\', IMPL2=\'' + impl2 + '\', IMPL3=\'' + impl3 + '\', IMPL4=\'' + impl4 + '\', IMPL5=\'' + impl5 + '\' WHERE AGREEMENT_OTHER_ID=' + $('#agreementImplID').text() + ' AND YRHF = ' + $('#agreementTab2t3SelectYearHalf option:selected').val() + '';
                                        funcInsertUpdateTab2Impl(valQry);
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
                }
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    });
    function funcInsertUpdateTab2Impl(valQry) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
            data: '{"qry":"' + valQry + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function () {
                if ($('#agreementTab2t1ImplModalType').text() == 'Нийт болон тусгай ажил үйлчилгээ') {
                    $('#agreementTab2t1Datatable > tbody  > tr').each(function () {
                        if ($('td:eq(0)', this).html() == $('#agreementImplID').text()) {
                            $('td:eq(3)', this).find('a').find('i').attr('class', 'glyphicon glyphicon-check txt-color-green font-xl');
                            //$('td:eq(3)', this).find('img').attr("src", "../img/green-circle.png");
                            //$('td:eq(3)', this).find('img').attr("title", "Биелэлт засах");
                            return false;
                        }
                    });
                    $('#divBindTab1t1Table').html('');
                }
                else if ($('#agreementTab2t1ImplModalType').text() == 'Мэдлэг чадвараа дээшлүүлэх зорилт') {
                    $('#agreementTab2t2Datatable > tbody  > tr').each(function () {
                        if ($('td:eq(0)', this).html() == $('#agreementImplID').text()) {
                            $('td:eq(4)', this).find('a').find('i').attr('class', 'glyphicon glyphicon-check txt-color-green font-xl');
                            //$('td:eq(4)', this).find('img').attr("src", "../img/green-circle.png");
                            //$('td:eq(4)', this).find('img').attr("title", "Биелэлт засах");
                            return false;
                        }
                    });
                    $('#divBindTab1t2Table').html('');
                }
                else if ($('#agreementTab2t1ImplModalType').text() == 'Бусад ажил, үйлчилгээ') {
                    $('#agreementTab2t3Datatable > tbody  > tr').each(function () {
                        if ($('td:eq(0)', this).html() == $('#agreementImplID').text()) {
                            $('td:eq(2)', this).find('a').find('i').attr('class', 'glyphicon glyphicon-check txt-color-green font-xl');
                            //$('td:eq(2)', this).find('img').attr("src", "../img/green-circle.png");
                            //$('td:eq(2)', this).find('img').attr("title", "Биелэлт засах");
                            return false;
                        }
                    });
                }
                smallBox('Биелэлт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                $('#agreementTab2t1ImplModal').modal('hide');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }

    //tab2t2
    function dataBindTab2t2DataTable() {
        var valData = '';
        showLoader('loaderTab2t2');
        if ($('#indexUserPosId').html() == '2010201' || $('#indexUserPosId').html() == '2010301') {
            var valSrvType = '';
            if ($('#indexUserPosId').html() == '2010201') valSrvType = '1';
            else if ($('#indexUserPosId').html() == '2010301') valSrvType = '2';
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/AgreementTab2t2Head",
                data: '{"yr":"' + $("#agreementTab2t2SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab2t2SelectYearHalf option:selected").val() + '", "st_id":"' + $.trim($('#indexUserId').html()) + '", "tp":"' + valSrvType + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    valData = "<table id=\"agreementTab2t2Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                    valData += "<tr>";
                    valData += "<th class=\"hide\"></th>";
                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Мэдлэг чадвараа дээшлүүлэх зорилт</th>";
                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хүрэх үр дүн</th>";
                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Суурь түвшин</th>";
                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Биелэлт оруулах</th>";
                    valData += "</tr></thead><tbody>";
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += "<tr>";
                        valData += "<td class=\"hide\">" + value.ID + "</td>";
                        valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                        valData += "<td class=\"text-center\">100 хувь</td>";
                        valData += "<td class=\"text-center\">" + value.AVGPNT + "</td>";
                        valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">";
                        valData += "</td>";
                        valData += "</tr>";
                    });
                    valData += "</tbody>";
                    valData += "</table>";
                    valData += "<script>";
                    valData += "var responsiveHelper_agreementTab2t2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#agreementTab2t2Datatable').dataTable({\"bSort\": false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_agreementTab2t2Datatable) {responsiveHelper_agreementTab2t2Datatable = new ResponsiveDatatablesHelper($('#agreementTab2t2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_agreementTab2t2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_agreementTab2t2Datatable.respond();}, \"aoColumns\": [null, null, null, null, { \"sWidth\": \"52px\" }]});";
                    valData += "<\/script>";
                    $("#divBindTab2t2Table").html(valData);
                    hideLoader('loaderTab2t2');
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
                url: "../ws/ServiceMain.svc/AgreementTab2t2",
                data: '{"yr":"' + $("#agreementTab2t2SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab2t2SelectYearHalf option:selected").val() + '", "st_id":"' + $.trim($('#indexUserId').html()) + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    valData = "<table id=\"agreementTab2t2Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                    valData += "<tr>";
                    valData += "<th class=\"hide\"></th>";
                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Мэдлэг чадвараа дээшлүүлэх зорилт</th>";
                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хүрэх үр дүн</th>";
                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Суурь түвшин</th>";
                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Биелэлт оруулах</th>";
                    valData += "</tr></thead><tbody>";
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += "<tr>";
                        valData += "<td class=\"hide\">" + value.ID + "</td>";
                        valData += "<td>" + replaceDatabaseToDisplay(value.D1) + "</td>";
                        valData += "<td>" + replaceDatabaseToDisplay(value.D2) + "</td>";
                        valData += "<td>" + replaceDatabaseToDisplay(value.D3) + "</td>";
                        //if (value.ISIMPL == "0") valData += "<td><img src=\"../img/red-circle.png\" width=\"20\" data-target=\"#agreementTab2t1ImplModal\" data-toggle=\"modal\" style=\"cursor:pointer\" title=\"Биелэлт нэмэх\" onclick=\"showAddEditTab2t2Impl(this)\"/></td>";
                        //else valData += "<td><img src=\"../img/green-circle.png\" width=\"20\" data-target=\"#agreementTab2t1ImplModal\" data-toggle=\"modal\" style=\"cursor:pointer\" title=\"Биелэлт засах\" onclick=\"showAddEditTab2t2Impl(this)\"/></td>";
                        valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">";
                        if (value.ISIMPL == "0") valData += "<a href=\"javascript:void(0);\" data-target=\"#agreementTab2t1ImplModal\" data-toggle=\"modal\" style=\"cursor:pointer\" onclick=\"showAddEditTab2t2Impl(this)\"><i class=\"glyphicon glyphicon-edit txt-color-red font-xl\"></i></a>";
                        else valData += "<a href=\"javascript:void(0);\" data-target=\"#agreementTab2t1ImplModal\" data-toggle=\"modal\" style=\"cursor:pointer\" onclick=\"showAddEditTab2t2Impl(this)\"><i class=\"glyphicon glyphicon-check txt-color-green font-xl\"></i></a>";
                        valData += "</td>";
                        valData += "</tr>";
                    });
                    valData += "</tbody>";
                    valData += "</table>";
                    valData += "<script>";
                    valData += "var responsiveHelper_agreementTab2t2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#agreementTab2t2Datatable').dataTable({\"bSort\": false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_agreementTab2t2Datatable) {responsiveHelper_agreementTab2t2Datatable = new ResponsiveDatatablesHelper($('#agreementTab2t2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_agreementTab2t2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_agreementTab2t2Datatable.respond();}, \"aoColumns\": [null, null, null, null, { \"sWidth\": \"52px\" }]});";
                    valData += "<\/script>";
                    $("#divBindTab2t2Table").html(valData);
                    hideLoader('loaderTab2t2');
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
    $('#agreementTab2t2SelectYear, #agreementTab2t2SelectYearHalf').click(function () {
        dataBindTab2t2DataTable();
    });
    function showAddEditTab2t2Impl(el) {
        $('#agreementImplID').text($(el).closest('tr').find('td:eq(0)').text());
        if ($(el).find('i').attr('class').split(' ')[1].split('-')[1] == 'edit') $('#agreementTab2t1ImplModalHeaderLabel').text('нэмэх');
        else $('#agreementTab2t1ImplModalHeaderLabel').text('засах');
        $('#agreementTab2t1ImplModalCurrentYr').text($('#agreementTab2t2SelectYear option:selected').val());
        $('#agreementTab2t1ImplModalCurrentYrHalf').text($('#agreementTab2t2SelectYearHalf option:selected').text());
        $('#agreementTab2t1ImplModalType').text('Мэдлэг чадвараа дээшлүүлэх зорилт');
        $('#agreementTab2t1ImplModalPlant').text($(el).closest('tr').find('td:eq(1)').text());
        $('#agreementTab2t1ImplModalShowPlanmImpl, #agreementTab2t1ImplModalImportPlanmImpl').css('display', 'none');
        if ($(el).find('i').attr('class').split(' ')[1].split('-')[1] == 'edit') {
            $('#agreementTab2t1ImplModalCharLength').text('0');
            CKEDITOR.instances.agreementTab2t1ImplModalImpl.setData("");
        }
        else {
            var myimpl = "";
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"SELECT IMPL FROM TBL_AGREEMENT_SKILL_IMPL WHERE AGREEMENT_SKILL_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND YRHF=' + $('#agreementTab2t2SelectYearHalf option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    myimpl += data.d;
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                        data: '{"qry":"SELECT IMPL1 FROM TBL_AGREEMENT_SKILL_IMPL WHERE AGREEMENT_SKILL_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND YRHF=' + $('#agreementTab2t2SelectYearHalf option:selected').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            myimpl += data.d;
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                data: '{"qry":"SELECT IMPL2 FROM TBL_AGREEMENT_SKILL_IMPL WHERE AGREEMENT_SKILL_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND YRHF=' + $('#agreementTab2t2SelectYearHalf option:selected').val() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    myimpl += data.d;
                                    globalAjaxVar = $.ajax({
                                        type: "POST",
                                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                        data: '{"qry":"SELECT IMPL3 FROM TBL_AGREEMENT_SKILL_IMPL WHERE AGREEMENT_SKILL_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND YRHF=' + $('#agreementTab2t2SelectYearHalf option:selected').val() + '"}',
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function (data) {
                                            myimpl += data.d;
                                            globalAjaxVar = $.ajax({
                                                type: "POST",
                                                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                data: '{"qry":"SELECT IMPL4 FROM TBL_AGREEMENT_SKILL_IMPL WHERE AGREEMENT_SKILL_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND YRHF=' + $('#agreementTab2t2SelectYearHalf option:selected').val() + '"}',
                                                contentType: "application/json; charset=utf-8",
                                                dataType: "json",
                                                success: function (data) {
                                                    myimpl += data.d;
                                                    globalAjaxVar = $.ajax({
                                                        type: "POST",
                                                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                        data: '{"qry":"SELECT IMPL5 FROM TBL_AGREEMENT_SKILL_IMPL WHERE AGREEMENT_SKILL_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND YRHF=' + $('#agreementTab2t2SelectYearHalf option:selected').val() + '"}',
                                                        contentType: "application/json; charset=utf-8",
                                                        dataType: "json",
                                                        success: function (data) {
                                                            myimpl += data.d;
                                                            CKEDITOR.instances.agreementTab2t1ImplModalImpl.setData(replaceDatabaseToDisplay(myimpl));
                                                            $("#agreementTab2t1ImplModalCharLength").text(myimpl.length);
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
    //tab2t3
    function dataBindTab2t3DataTable() {
        var valData = '';
        showLoader('loaderTab2t3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AgreementTab2t3",
            data: '{"yr":"' + $("#agreementTab2t3SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab2t3SelectYearHalf option:selected").val() + '", "st_id":"' + $.trim($('#indexUserId').html()) + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData = "<table id=\"agreementTab2t3Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th class=\"hide\"></th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Ажил үйлчилгээ</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Биелэлт оруулах</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td class=\"hide\">" + value.ID + "</td>";
                    valData += "<td>" + value.NO + ". " + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    //if (value.ISIMPL == "0") valData += "<td><img src=\"../img/red-circle.png\" width=\"20\" data-target=\"#agreementTab2t1ImplModal\" data-toggle=\"modal\" style=\"cursor:pointer\" title=\"Биелэлт нэмэх\" onclick=\"showAddEditTab2t3Impl(this)\"/></td>";
                    //else valData += "<td><img src=\"../img/green-circle.png\" width=\"20\" data-target=\"#agreementTab2t1ImplModal\" data-toggle=\"modal\" style=\"cursor:pointer\" title=\"Биелэлт засах\" onclick=\"showAddEditTab2t3Impl(this)\"/></td>";
                    valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">";
                    if (value.ISIMPL == "0") valData += "<a href=\"javascript:void(0);\" data-target=\"#agreementTab2t1ImplModal\" data-toggle=\"modal\" style=\"cursor:pointer\" onclick=\"showAddEditTab2t3Impl(this)\"><i class=\"glyphicon glyphicon-edit txt-color-red font-xl\"></i></a>";
                    else valData += "<a href=\"javascript:void(0);\" data-target=\"#agreementTab2t1ImplModal\" data-toggle=\"modal\" style=\"cursor:pointer\" onclick=\"showAddEditTab2t3Impl(this)\"><i class=\"glyphicon glyphicon-check txt-color-green font-xl\"></i></a>";
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_agreementTab2t3Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#agreementTab2t3Datatable').dataTable({\"bSort\": false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_agreementTab2t3Datatable) {responsiveHelper_agreementTab2t3Datatable = new ResponsiveDatatablesHelper($('#agreementTab2t3Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_agreementTab2t3Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_agreementTab2t3Datatable.respond();}, \"aoColumns\": [null, null, { \"sWidth\": \"52px\" }]});";
                valData += "<\/script>";
                $("#divBindTab2t3Table").html(valData);
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
    $('#agreementTab2t3SelectYear, #agreementTab2t3SelectYearHalf').click(function () {
        dataBindTab2t3DataTable();
    });
    function showAddEditTab2t3Impl(el) {
        $('#agreementImplID').text($(el).closest('tr').find('td:eq(0)').text());
        if ($(el).find('i').attr('class').split(' ')[1].split('-')[1] == 'edit') $('#agreementTab2t1ImplModalHeaderLabel').text('нэмэх');
        else $('#agreementTab2t1ImplModalHeaderLabel').text('засах');
        $('#agreementTab2t1ImplModalCurrentYr').text($('#agreementTab2t3SelectYear option:selected').val());
        $('#agreementTab2t1ImplModalCurrentYrHalf').text($('#agreementTab2t3SelectYearHalf option:selected').text());
        $('#agreementTab2t1ImplModalType').text('Бусад ажил, үйлчилгээ');
        $('#agreementTab2t1ImplModalPlant').text($(el).closest('tr').find('td:eq(1)').text());
        $('#agreementTab2t1ImplModalShowPlanmImpl, #agreementTab2t1ImplModalImportPlanmImpl').css('display', 'none');
        if ($(el).find('i').attr('class').split(' ')[1].split('-')[1] == 'edit') {
            $('#agreementTab2t1ImplModalCharLength').text('0');
            CKEDITOR.instances.agreementTab2t1ImplModalImpl.setData("");
        }
        else {
            var myimpl = "";
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"SELECT IMPL FROM TBL_AGREEMENT_OTHER_IMPL WHERE AGREEMENT_OTHER_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND YRHF=' + $('#agreementTab2t3SelectYearHalf option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    myimpl += data.d;
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                        data: '{"qry":"SELECT IMPL1 FROM TBL_AGREEMENT_OTHER_IMPL WHERE AGREEMENT_OTHER_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND YRHF=' + $('#agreementTab2t3SelectYearHalf option:selected').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            myimpl += data.d;
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                data: '{"qry":"SELECT IMPL2 FROM TBL_AGREEMENT_OTHER_IMPL WHERE AGREEMENT_OTHER_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND YRHF=' + $('#agreementTab2t3SelectYearHalf option:selected').val() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    myimpl += data.d;
                                    globalAjaxVar = $.ajax({
                                        type: "POST",
                                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                        data: '{"qry":"SELECT IMPL3 FROM TBL_AGREEMENT_OTHER_IMPL WHERE AGREEMENT_OTHER_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND YRHF=' + $('#agreementTab2t3SelectYearHalf option:selected').val() + '"}',
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function (data) {
                                            myimpl += data.d;
                                            globalAjaxVar = $.ajax({
                                                type: "POST",
                                                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                data: '{"qry":"SELECT IMPL4 FROM TBL_AGREEMENT_OTHER_IMPL WHERE AGREEMENT_OTHER_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND YRHF=' + $('#agreementTab2t3SelectYearHalf option:selected').val() + '"}',
                                                contentType: "application/json; charset=utf-8",
                                                dataType: "json",
                                                success: function (data) {
                                                    myimpl += data.d;
                                                    globalAjaxVar = $.ajax({
                                                        type: "POST",
                                                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                        data: '{"qry":"SELECT IMPL5 FROM TBL_AGREEMENT_OTHER_IMPL WHERE AGREEMENT_OTHER_ID=' + $(el).closest('tr').find('td:eq(0)').text() + ' AND YRHF=' + $('#agreementTab2t3SelectYearHalf option:selected').val() + '"}',
                                                        contentType: "application/json; charset=utf-8",
                                                        dataType: "json",
                                                        success: function (data) {
                                                            myimpl += data.d;
                                                            CKEDITOR.instances.agreementTab2t1ImplModalImpl.setData(replaceDatabaseToDisplay(myimpl));
                                                            $("#agreementTab2t1ImplModalCharLength").text(myimpl.length);
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
    //tab2t4
    function dataBindTab2t4DataTable() {
        showLoader('loaderTab2t4');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT ( SELECT COUNT(1) FROM TBL_AGREEMENT_DESC WHERE YR=' + $("#agreementTab2t4SelectYear option:selected").text() + ' AND YRHF=' + $("#agreementTab2t4SelectYearHalf option:selected").val() + ' AND ST_ID=' + $.trim($('#indexUserId').html()) + ' )||\'~\'||( SELECT NVL(SATIS1,0)||\'~\'||NVL(SATIS2,0) FROM TBL_AGREEMENT_DESC WHERE YR=' + $("#agreementTab2t4SelectYear option:selected").text() + ' AND YRHF=' + $("#agreementTab2t4SelectYearHalf option:selected").val() + ' AND ST_ID=' + $.trim($('#indexUserId').html()) + ' ) as NAME1 FROM DUAL"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $('input[name="agreementTab2t4Radio1Srv"]').prop('checked', false);
                $('input[name="agreementTab2t4Radio2Srv"]').prop('checked', false);
                if (data.d.split('~')[0] != '0') {
                    if (data.d.split('~')[1] == '1' || data.d.split('~')[1] == '2' || data.d.split('~')[1] == '3') {
                        $('#agreementTab2t4Radio1Srv' + data.d.split('~')[1]).prop('checked', true);
                    }
                    if (data.d.split('~')[2] == '1' || data.d.split('~')[2] == '2' || data.d.split('~')[2] == '3') {
                        $('#agreementTab2t4Radio2Srv' + data.d.split('~')[2]).prop('checked', true);
                    }
                }
                hideLoader('loaderTab2t4');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#agreementTab2t4SelectYear, #agreementTab2t4SelectYearHalf").change(function () {
        dataBindTab2t4DataTable();
    });
    $('input:radio[name="agreementTab2t4Radio1Srv"]').change(function () {
        var wchChk = 0;
        if ($(this).is(':checked') && $(this).val() == 'Бага') { wchChk = 1; }
        else if ($(this).is(':checked') && $(this).val() == 'Дунд зэрэг') wchChk = 2;
        else if ($(this).is(':checked') && $(this).val() == 'Их') wchChk = 3;
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_AGREEMENT_DESC WHERE YR=' + $('#agreementTab2t4SelectYear option:selected').val() + ' AND YRHF=' + $("#agreementTab2t4SelectYearHalf option:selected").val() + ' AND ST_ID=' + $.trim($('#indexUserId').html()) + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == "0") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                        data: '{"qry":"INSERT INTO TBL_AGREEMENT_DESC (YR, ST_ID, SATIS1, YRHF) VALUES (' + $('#agreementTab2t4SelectYear option:selected').val() + ', ' + $.trim($('#indexUserId').html()) + ', ' + wchChk + ', ' + $("#agreementTab2t4SelectYearHalf option:selected").val() + ')"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            smallBox('Сэтгэл ханамжийн түвшин', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                        data: '{"qry":"UPDATE TBL_AGREEMENT_DESC SET SATIS1=' + wchChk + ' WHERE YR=' + $("#agreementTab2t4SelectYear option:selected").val() + ' AND YRHF=' + $("#agreementTab2t4SelectYearHalf option:selected").val() + ' AND ST_ID=' + $.trim($('#indexUserId').html()) + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            smallBox('Сэтгэл ханамжийн түвшин', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
    });
    $('input:radio[name="agreementTab2t4Radio2Srv"]').change(function () {
        var wchChk = 0;
        if ($(this).is(':checked') && $(this).val() == 'Бага') { wchChk = 1; }
        else if ($(this).is(':checked') && $(this).val() == 'Дунд зэрэг') wchChk = 2;
        else if ($(this).is(':checked') && $(this).val() == 'Их') wchChk = 3;
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_AGREEMENT_DESC WHERE YR=' + $('#agreementTab2t4SelectYear option:selected').val() + ' AND YRHF=' + $("#agreementTab2t4SelectYearHalf option:selected").val() + ' AND ST_ID=' + $.trim($('#indexUserId').html()) + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == "0") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                        data: '{"qry":"INSERT INTO TBL_AGREEMENT_DESC (YR, ST_ID, SATIS2, YRHF) VALUES (' + $('#agreementTab2t4SelectYear option:selected').val() + ', ' + $.trim($('#indexUserId').html()) + ', ' + wchChk + ', ' + $("#agreementTab2t4SelectYearHalf option:selected").val() + ')"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            smallBox('Сэтгэл ханамжийн түвшин', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                        data: '{"qry":"UPDATE TBL_AGREEMENT_DESC SET SATIS2=' + wchChk + ' WHERE YR=' + $('#agreementTab2t4SelectYear option:selected').val() + ' AND YRHF=' + $("#agreementTab2t4SelectYearHalf option:selected").val() + ' AND ST_ID=' + $.trim($('#indexUserId').html()) + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            smallBox('Сэтгэл ханамжийн түвшин', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
    });

    ////tab3 begin
    //tab3t1
    function dataBindTab3t1DataTable() {
        var valData = '';
        var isDisabled = " disabled=\"disabled\"";
        var strPer1Select = "";
        showLoader('loaderTab3');
        if (funcCheckRoles('1,3,5')) {
            isDisabled = '';
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT COUNT(1) as CNT FROM TBL_AGREEMENTSUBMITSTAFF WHERE ST_ID=' + $("#agreementTab3SelectStaff option:selected").val() + ' AND YR=' + $("#agreementTab3SelectYear option:selected").val() + ' AND HFYR=' + $("#agreementTab3SelectYearHalf option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == '1') isDisabled = " disabled=\"disabled\"";
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/AgreementTab3t1",
                    data: '{"yr":"' + $("#agreementTab3SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab3SelectYearHalf option:selected").val() + '", "st_id":"' + $("#agreementTab3SelectStaff option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valData = "<table id=\"agreementTab3t1Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                        valData += "<tr>";
                        valData += "<th class=\"hide\"></th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Арга хэмжээ</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хүрэх үр дүн, хугацаа, тоо хэмжээ</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Биелэлт</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Нийт ажил<br>үйлчилгээ</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Тусгай ажил<br>үйлчилгээ</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Дотоод ажил<br>үйлчилгээ</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Сарын<br>дундаж<br>үнэлгээ</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Нэмэлт<br>оноо</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Х</th>";
                        valData += "</tr></thead><tbody>";
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<tr data-planyrid=\"" + value.PLANYR_ID + "\">";
                            valData += "<td class=\"hide\">" + value.ID + "</td>";
                            valData += "<td>" + value.STRAT_NO + "." + value.ACTION_NO + "." + value.PLANYR_NO + ". " + replaceDatabaseToDisplay(value.PLANYR_NAME) + "</td>";
                            valData += "<td><b>Гүйцэтгэлийн шалгуур үзүүлэлт: </b>" + replaceDatabaseToDisplay(value.CRITERIA) + "<br><b>Тоо: </b>" + value.CNT + "<br><b>Чанар: </b>" + replaceDatabaseToDisplay(value.QUALITY) + "<br><b>Хугацаа /сар/: </b>" + value.MNTHLIST + "</td>";
                            //valData += "<td>" + replaceDatabaseToDisplay(value.IMPL + value.IMPL1 + value.IMPL2 + value.IMPL3 + value.IMPL4 + value.IMPL5) + "</td>";
                            valData += "<td>";
                            if (value.IMPL != "") valData += "<a href=\"../pg/agreementTab3t1ImplShowModal.aspx?id=" + value.ID + "&yrhf=" + $("#agreementTab3SelectYearHalf option:selected").val() + "\" class=\"btn btn-default btn-xs\" data-target=\"#agreementTab3t1ImplShowModal\" data-toggle=\"modal\"><i class=\"fa fa-eye\"></i> харах</a>";
                            valData += "</td>";
                            if (value.IS_LOCAL == "1") {
                                valData += "<td class=\"text-center\"></td><td class=\"text-center\"></td><td class=\"text-center\">&#x2713;</td>";
                            }
                            else {
                                if (value.ISSPECIAL == "1") {
                                    valData += "<td class=\"text-center\"></td><td class=\"text-center\">&#x2713;</td><td class=\"text-center\"></td>";
                                }
                                else {
                                    valData += "<td class=\"text-center\">&#x2713;</td class=\"text-center\"><td></td><td class=\"text-center\"></td>";
                                }
                            }
                            if (value.ID == '') {
                                strPer1Select = "";
                            }
                            else {
                                if (value.ISSPECIAL == "1") {
                                    if (parseInt(value.ISSPECIAL) != 0) {
                                        if ((40 - parseInt(value.PER)) == 0) strPer1Select = "";
                                        else {
                                            if ((40 - parseInt(value.PER)) > 7) {
                                                strPer1Select = "<select" + isDisabled + " class=\"bg-color-blueLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 40px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option>";
                                                for (var i = 1; i <= 8; i++) {
                                                    if (parseInt(value.PER1) == i) {
                                                        if (i == 1) strPer1Select += "<option value=\"" + i + "\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">" + i + "</option>";
                                                        else strPer1Select += "<option value=\"" + i + "\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">" + i + "</option>";
                                                    }
                                                    else {
                                                        if (i == 1) strPer1Select += "<option value=\"" + i + "\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">" + i + "</option>";
                                                        else strPer1Select += "<option value=\"" + i + "\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">" + i + "</option>";
                                                    }

                                                }
                                                strPer1Select += "</select>";
                                            }
                                            else {
                                                strPer1Select = "<select" + isDisabled + " class=\"bg-color-blueLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 40px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option>";
                                                for (var i = 1; i <= (40 - parseInt(value.PER)) ; i++) {
                                                    if (parseInt(value.PER1) >= (40 - parseInt(value.PER))) {
                                                        if (i == (40 - parseInt(value.PER))) strPer1Select += "<option value=\"" + i + "\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">" + i + "</option>";
                                                        else strPer1Select += "<option value=\"" + i + "\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">" + i + "</option>";
                                                    }
                                                    else {
                                                        if (parseInt(value.PER1) == i) strPer1Select += "<option value=\"" + i + "\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">" + i + "</option>";
                                                        else strPer1Select += "<option value=\"" + i + "\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">" + i + "</option>";
                                                    }
                                                }
                                                strPer1Select += "</select>";
                                            }
                                        }
                                    }
                                    else strPer1Select = "";
                                }
                                else {
                                    if (parseInt(value.PER) != 0) {
                                        if ((30 - parseInt(value.PER)) == 0) strPer1Select = "";
                                        else {
                                            if ((30 - parseInt(value.PER)) > 4) {
                                                strPer1Select = "<select" + isDisabled + " class=\"bg-color-blueLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 40px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option>";
                                                for (var i = 1; i <= 8; i++) {
                                                    if (parseInt(value.PER1) == i) {
                                                        if (i == 1) strPer1Select += "<option value=\"" + i + "\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">" + i + "</option>";
                                                        else strPer1Select += "<option value=\"" + i + "\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">" + i + "</option>";
                                                    }
                                                    else {
                                                        if (i == 1) strPer1Select += "<option value=\"" + i + "\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">" + i + "</option>";
                                                        else strPer1Select += "<option value=\"" + i + "\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">" + i + "</option>";
                                                    }

                                                }
                                                strPer1Select += "</select>";
                                            }
                                            else {
                                                strPer1Select = "<select" + isDisabled + " class=\"bg-color-blueLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 40px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option>";
                                                for (var i = 1; i <= (30 - parseInt(value.PER)) ; i++) {
                                                    if (parseInt(value.PER1) >= (30 - parseInt(value.PER))) {
                                                        if (i == (30 - parseInt(value.PER))) strPer1Select += "<option value=\"" + i + "\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">" + i + "</option>";
                                                        else strPer1Select += "<option value=\"" + i + "\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">" + i + "</option>";
                                                    }
                                                    else {
                                                        if (parseInt(value.PER1) == i) strPer1Select += "<option value=\"" + i + "\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">" + i + "</option>";
                                                        else strPer1Select += "<option value=\"" + i + "\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">" + i + "</option>";
                                                    }
                                                }
                                                strPer1Select += "</select>";
                                            }
                                        }
                                    }
                                    else strPer1Select = "";
                                }
                            }
                            valData += "<td><span class=\"badge " + value.PERCOLOR + "\"> " + value.PER + " </span></td>";
                            valData += "<td>" + strPer1Select + "</td>";
                            valData += "<td><label class=\"checkbox-inline\"><input" + isDisabled + " type=\"checkbox\" class=\"checkbox style-0\" " + value.ISCANCEL + " onclick=\"agreementTab3t1Cancel(this)\"><span></span></label></td>";
                            valData += "</tr>";
                        });
                        valData += "</tbody>";
                        valData += "</table>";
                        valData += "<script>";
                        valData += "var responsiveHelper_agreementTab3t1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#agreementTab3t1Datatable').dataTable({\"bSort\": false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_agreementTab3t1Datatable) {responsiveHelper_agreementTab3t1Datatable = new ResponsiveDatatablesHelper($('#agreementTab3t1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_agreementTab3t1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_agreementTab3t1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"500px\" },  { \"sWidth\": \"500px\" }, null,  { \"sWidth\": \"20px\" }, { \"sWidth\": \"17px\" }, { \"sWidth\": \"17px\" }, { \"sWidth\": \"17px\" }, { \"sWidth\": \"30px\" }, { \"sWidth\": \"42px\" }, { \"sWidth\": \"15px\" }]});";
                        valData += "<\/script>";
                        $('#agreementTab3').find('ul').find('li').removeAttr('class');
                        $('#agreementTab3').find('ul').find('li:eq(0)').attr('class', 'active');
                        $('#agreementTab3t1, #agreementTab3t2, #agreementTab3t3, #agreementTab3t4').attr('class', 'tab-pane');
                        $('#agreementTab3t1').attr('class', 'tab-pane active');
                        $("#divBindTab3t1Table").html(valData);
                        $("#divBindTab3t2Table").html('');
                        $("#divBindTab3t3Table").html('');
                        $('#agreementTab3t4Txt1').val('');
                        $('#agreementTab3t4Txt2').val('');
                        $('#agreementTab3PrintModalBtn').attr('href', 'pg/agreementTab3PrintModal.aspx?stid=' + $('#agreementTab3SelectStaff option:selected').val() + '&yr=' + $('#agreementTab3SelectYear option:selected').val() + '&yrhf=' + $('#agreementTab3SelectYearHalf option:selected').val());
                        hideLoader('loaderTab3');
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
    $("#agreementTab3SelectYear, #agreementTab3SelectYearHalf").change(function () {
        dataBindTab3t1DataTable();
    });
    $("#agreementTab3SelectBranchGazar").change(function () {
        showLoader('loaderTab3');
        dataBindTab3SelectBranchHeltes();
    });
    $("#agreementTab3SelectBranchHeltes").change(function () {
        showLoader('loaderTab3');
        dataBindTab3SelectStaff();
    });
    $("#agreementTab3SelectStaff").change(function () {
        showLoader('loaderTab3');
        dataBindTab3t1DataTable();
    });
    function dataBindTab3SelectBranchHeltes() {
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
            data: '{"yr":"' + $('#indexCurrentYear').text() + '", "gazar":"' + $("#agreementTab3SelectBranchGazar option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#agreementTab3SelectBranchHeltes").html(valData);
                $("#agreementTab3SelectBranchHeltes").prop("disabled", false);
                dataBindTab3SelectStaff();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function dataBindTab3SelectStaff() {
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetStaffListForDDL",
            data: '{"yr":"' + $('#indexCurrentYear').text() + '", "gazar":"' + $("#agreementTab3SelectBranchGazar option:selected").val() + '", "heltes":"' + $("#agreementTab3SelectBranchHeltes option:selected").val() + '"}',
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
                $("#agreementTab3SelectStaff").html(valData);
                dataBindTab3t1DataTable();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function agreementTab3t1Cancel(el) {
        var valIsChecked = '0';
        var valIsYrhf1 = '0', valIsYrhf2 = '0';
        var valMaxId = '';
        if ($(el).prop('checked')) valIsChecked = '1';
        if ($(el).closest('tr').find('td:eq(4)').html() == '✓') valIsYrhf1 = '1';
        if ($(el).closest('tr').find('td:eq(5)').html() == '✓') valIsYrhf2 = '1';
        if ($.trim($(el).closest('tr').find('td:eq(0)').html()) == '') {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                data: '{"qry":"INSERT INTO TBL_AGREEMENT_MAIN (ID, YR, ST_ID, PLANYR_ID, ISSPECIAL, YRHF1, YRHF2) VALUES (TBLLASTID(\'TBL_AGREEMENT_MAIN\'), ' + $("#agreementTab3SelectYear option:selected").val() + ', ' + $('#agreementTab3SelectStaff option:selected').val() + ', ' + $(el).closest('tr').attr('data-planyrid') + ', 0, ' + valIsYrhf1 + ', ' + valIsYrhf2 + ')"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                        data: '{"qry": "SELECT MAX(ID) FROM TBL_AGREEMENT_MAIN"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            valMaxId = data.d;
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"UPDATE TBL_AGREEMENT_MAIN SET ISCANCEL=' + valIsChecked + ' WHERE ID=' + valMaxId + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    smallBox('Арга хэмжээ хаах санал', 'Амжилттай бүртгэгдлээ...', '#659265', 3000);
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
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                data: '{"qry":"UPDATE TBL_AGREEMENT_MAIN SET ISCANCEL=' + valIsChecked + ' WHERE ID=' + $(el).closest('tr').find('td:eq(0)').html() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    smallBox('Арга хэмжээ хаах санал', 'Амжилттай бүртгэгдлээ...', '#659265', 3000);
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
    //tab3t2
    function dataBindTab3t2DataTable() {
        var valData = '';
        showLoader('loaderTab3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT POS_ID FROM hrdbuser.ST_STBR WHERE ISACTIVE=1 AND STAFFS_ID=' + $('#agreementTab3SelectStaff option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == '2010201' || data.d == '2010301') {
                    var valSrvType = '';
                    if (data.d == '2010201') valSrvType = '1';
                    else if (data.d == '2010301') valSrvType = '2';
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/AgreementTab3t2Head",
                        data: '{"yr":"' + $("#agreementTab3SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab3SelectYearHalf option:selected").val() + '", "st_id":"' + $("#agreementTab3SelectStaff option:selected").val() + '", "tp":"' + valSrvType + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            valData = '';
                            valData = "<table id=\"agreementTab3t2Datatable\" class=\"table table-striped table-bordered table-hover smart-form\" width=\"100%\"><thead>";
                            valData += "<tr>";
                            valData += "<th class=\"hide\"></th>";
                            valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Мэдлэг чадвараа дээшлүүлэх зорилт</th>";
                            valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хүрэх үр дүн</th>";
                            valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Суурь түвшин</th>";
                            valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Биелэлт</th>";
                            valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Үнэлгээ</th>";
                            valData += "</tr></thead><tbody>";
                            $($.parseJSON(data.d)).each(function (index, value) {
                                valData += "<tr>";
                                valData += "<td class=\"hide\">" + value.ID + "</td>";
                                valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                                valData += "<td class=\"text-center\">100 хувь</td>";
                                valData += "<td class=\"text-center\">" + value.AVGPNT + "</td>";
                                valData += "<td class=\"text-center\">-</td>";
                                valData += "<td class=\"text-center\">" + value.AVGPNT_NOW + "</td>";
                                valData += "</tr>";
                            });
                            valData += "</tbody>";
                            valData += "</table>";
                            valData += "<script>";
                            valData += "var responsiveHelper_agreementTab3t2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#agreementTab3t2Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_agreementTab3t2Datatable) {responsiveHelper_agreementTab3t2Datatable = new ResponsiveDatatablesHelper($('#agreementTab3t2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_agreementTab3t2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_agreementTab3t2Datatable.respond();}, \"aoColumns\": [null, null, null, null,  { \"sWidth\": \"550px\" }, { \"sWidth\": \"42px\" }]});";
                            valData += "<\/script>";
                            $("#divBindTab3t2Table").html(valData);
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
                else {
                    var isDisabled = " disabled=\"disabled\"";
                    if (funcCheckRoles('1,3,5')) {
                        isDisabled = '';
                    }
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                        data: '{"qry": "SELECT COUNT(1) as CNT FROM TBL_AGREEMENTSUBMITSTAFF WHERE ST_ID=' + $("#agreementTab3SelectStaff option:selected").val() + ' AND YR=' + $("#agreementTab3SelectYear option:selected").val() + ' AND HFYR=' + $("#agreementTab3SelectYearHalf option:selected").val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            if (data.d == '1') isDisabled = " disabled=\"disabled\"";
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/AgreementTab3t2",
                                data: '{"yr":"' + $("#agreementTab3SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab3SelectYearHalf option:selected").val() + '", "st_id":"' + $("#agreementTab3SelectStaff option:selected").val() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    valData = '';
                                    valData = "<table id=\"agreementTab3t2Datatable\" class=\"table table-striped table-bordered table-hover smart-form\" width=\"100%\"><thead>";
                                    valData += "<tr>";
                                    valData += "<th class=\"hide\"></th>";
                                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Мэдлэг чадвараа дээшлүүлэх зорилт</th>";
                                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Хүрэх үр дүн</th>";
                                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Суурь түвшин</th>";
                                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Биелэлт</th>";
                                    valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Үнэлгээ</th>";
                                    valData += "</tr></thead><tbody>";
                                    $($.parseJSON(data.d)).each(function (index, value) {
                                        valData += "<tr>";
                                        valData += "<td class=\"hide\">" + value.ID + "</td>";
                                        valData += "<td>" + replaceDatabaseToDisplay(value.D1) + "</td>";
                                        valData += "<td>" + replaceDatabaseToDisplay(value.D2) + "</td>";
                                        valData += "<td>" + replaceDatabaseToDisplay(value.D3) + "</td>";
                                        valData += "<td>" + replaceDatabaseToDisplay(value.IMPL + value.IMPL1 + value.IMPL2 + value.IMPL3 + value.IMPL4 + value.IMPL5) + "</td>";
                                        if (value.ISPER1 == "0") valData += "<td><select" + isDisabled + " class=\"bg-color-blueLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 45px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">-</option><option value=\"4\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">4</option><option value=\"8\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">8</option><option value=\"12\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">12</option><option value=\"14\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">14</option><option value=\"16\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">16</option><option value=\"18\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">18</option><option value=\"20\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">20</option></select></td>";
                                        else {
                                            if (value.PER1 == "4") valData += "<td><select" + isDisabled + " class=\"bg-color-red form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 45px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"4\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">4</option><option value=\"8\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">8</option><option value=\"12\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">12</option><option value=\"14\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">14</option><option value=\"16\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">16</option><option value=\"18\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">18</option><option value=\"20\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">20</option></select></td>";
                                            else if (value.PER1 == "8") valData += "<td><select" + isDisabled + " class=\"bg-color-orange form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 45px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"4\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">4</option><option value=\"8\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">8</option><option value=\"12\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">12</option><option value=\"14\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">14</option><option value=\"16\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">16</option><option value=\"18\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">18</option><option value=\"20\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">20</option></select></td>";
                                            else if (value.PER1 == "12") valData += "<td><select" + isDisabled + " class=\"bg-color-orange form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 45px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"4\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">4</option><option value=\"8\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">8</option><option value=\"12\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">12</option><option value=\"14\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">14</option><option value=\"16\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">16</option><option value=\"18\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">18</option><option value=\"20\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">20</option></select></td>";
                                            else if (value.PER1 == "14") valData += "<td><select" + isDisabled + " class=\"bg-color-orange form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 45px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"4\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">4</option><option value=\"8\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">8</option><option value=\"12\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">12</option><option value=\"14\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">14</option><option value=\"16\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">16</option><option value=\"18\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">18</option><option value=\"20\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">20</option></select></td>";
                                            else if (value.PER1 == "16") valData += "<td><select" + isDisabled + " class=\"bg-color-orange form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 45px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"4\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">4</option><option value=\"8\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">8</option><option value=\"12\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">12</option><option value=\"14\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">14</option><option value=\"16\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">16</option><option value=\"18\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">18</option><option value=\"20\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">20</option></select></td>";
                                            else if (value.PER1 == "18") valData += "<td><select" + isDisabled + " class=\"bg-color-orange form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 45px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"4\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">4</option><option value=\"8\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">8</option><option value=\"12\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">12</option><option value=\"14\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">14</option><option value=\"16\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">16</option><option value=\"18\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">18</option><option value=\"20\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">20</option></select></td>";
                                            else if (value.PER1 == "20") valData += "<td><select" + isDisabled + " class=\"bg-color-greenLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 45px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"4\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">4</option><option value=\"8\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">8</option><option value=\"12\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">12</option><option value=\"14\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">14</option><option value=\"16\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">16</option><option value=\"18\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">18</option><option value=\"20\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">20</option></select></td>";
                                            else valData += "<td><select" + isDisabled + " class=\"bg-color-blueLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 45px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">-</option><option value=\"4\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">4</option><option value=\"8\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">8</option><option value=\"12\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">12</option><option value=\"14\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">14</option><option value=\"16\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">16</option><option value=\"18\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">18</option><option value=\"20\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">20</option></select></td>";
                                        }
                                        valData += "</tr>";
                                    });
                                    valData += "</tbody>";
                                    valData += "</table>";
                                    valData += "<script>";
                                    valData += "var responsiveHelper_agreementTab3t2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#agreementTab3t2Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_agreementTab3t2Datatable) {responsiveHelper_agreementTab3t2Datatable = new ResponsiveDatatablesHelper($('#agreementTab3t2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_agreementTab3t2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_agreementTab3t2Datatable.respond();}, \"aoColumns\": [null, null, null, null,  { \"sWidth\": \"550px\" }, { \"sWidth\": \"42px\" }]});";
                                    valData += "<\/script>";
                                    $("#divBindTab3t2Table").html(valData);
                                    hideLoader('loaderTab3');
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
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    //tab3t3
    function dataBindTab3t3DataTable() {
        var valData = '';
        var isDisabled = " disabled=\"disabled\"";
        showLoader('loaderTab3');
        if (funcCheckRoles('1,3,5')) {
            isDisabled = '';
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT COUNT(1) as CNT FROM TBL_AGREEMENTSUBMITSTAFF WHERE ST_ID=' + $("#agreementTab3SelectStaff option:selected").val() + ' AND YR=' + $("#agreementTab3SelectYear option:selected").val() + ' AND HFYR=' + $("#agreementTab3SelectYearHalf option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == '1') isDisabled = " disabled=\"disabled\"";
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/AgreementTab3t3",
                    data: '{"yr":"' + $("#agreementTab3SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab3SelectYearHalf option:selected").val() + '", "st_id":"' + $("#agreementTab3SelectStaff option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valData = "<table id=\"agreementTab3t3Datatable\" class=\"table table-striped table-bordered table-hover smart-form\" width=\"100%\"><thead>";
                        valData += "<tr>";
                        valData += "<th class=\"hide\"></th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Дугаар</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Ажил үйлчилгээ</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Биелэлт</th>";
                        valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Ү1</th>";
                        valData += "</tr></thead><tbody>";
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<tr>";
                            valData += "<td class=\"hide\">" + value.ID + "</td>";
                            valData += "<td>" + value.NO + "</td>";
                            valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                            valData += "<td>" + replaceDatabaseToDisplay(value.IMPL + value.IMPL1 + value.IMPL2 + value.IMPL3 + value.IMPL4 + value.IMPL5) + "</td>";
                            if (value.ISPER1 == "0") valData += "<td><select" + isDisabled + " class=\"bg-color-blueLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 40px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">-</option><option value=\"5\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">5</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10</option><option value=\"15\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">15</option><option value=\"20\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">20</option><option value=\"25\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">25</option><option value=\"30\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">30</option></select></td>";
                            else {
                                if (value.PER1 == "5") valData += "<td><select" + isDisabled + " class=\"bg-color-blueLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 40px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"5\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">5</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10</option><option value=\"15\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">15</option><option value=\"20\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">20</option><option value=\"25\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">25</option><option value=\"30\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">30</option></select></td>";
                                else if (value.PER1 == "10") valData += "<td><select" + isDisabled + " class=\"bg-color-orange form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 40px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"5\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">5</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">10</option><option value=\"15\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">15</option><option value=\"20\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">20</option><option value=\"25\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">25</option><option value=\"30\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">30</option></select></td>";
                                else if (value.PER1 == "15") valData += "<td><select" + isDisabled + " class=\"bg-color-orange form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 40px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"5\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">5</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10</option><option value=\"15\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">15</option><option value=\"20\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">20</option><option value=\"25\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">25</option><option value=\"30\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">30</option></select></td>";
                                else if (value.PER1 == "20") valData += "<td><select" + isDisabled + " class=\"bg-color-orange form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 40px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"5\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">5</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10</option><option value=\"15\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">15</option><option value=\"20\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">20</option><option value=\"25\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">25</option><option value=\"30\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">30</option></select></td>";
                                else if (value.PER1 == "25") valData += "<td><select" + isDisabled + " class=\"bg-color-orange form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 40px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"5\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">5</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10</option><option value=\"15\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">15</option><option value=\"20\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">20</option><option value=\"25\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">25</option><option value=\"30\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">30</option></select></td>";
                                else if (value.PER1 == "30") valData += "<td><select" + isDisabled + " class=\"bg-color-greenLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 40px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"5\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">5</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10</option><option value=\"15\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">15</option><option value=\"20\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">20</option><option value=\"25\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">25</option><option value=\"30\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">30</option></select></td>";
                                else valData += "<td><select" + isDisabled + " class=\"bg-color-blueLight form-control\" style=\"color:#fff; font-weight:bold; border:none; height:21px; width: 40px;padding: 0px;\" onchange=\"saveEval(this)\"><option value=\"none\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">-</option><option value=\"5\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">5</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10</option><option value=\"15\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">15</option><option value=\"20\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">20</option><option value=\"25\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">25</option><option value=\"30\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">30</option></select></td>";
                            }
                            valData += "</tr>";
                        });
                        valData += "</tbody>";
                        valData += "</table>";
                        valData += "<script>";
                        valData += "var responsiveHelper_agreementTab3t3Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#agreementTab3t3Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_agreementTab3t3Datatable) {responsiveHelper_agreementTab3t3Datatable = new ResponsiveDatatablesHelper($('#agreementTab3t3Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_agreementTab3t3Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_agreementTab3t3Datatable.respond();}, \"aoColumns\": [null, { \"sWidth\": \"20px\" }, null,  { \"sWidth\": \"400px\" }, { \"sWidth\": \"42px\" }]});";
                        valData += "<\/script>";
                        $("#divBindTab3t3Table").html(valData);
                        hideLoader('loaderTab3');
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
    //tab3t4
    function dataBindTab3t4DataTable() {
        showLoader('loaderTab3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT COUNT(1) as CNT FROM TBL_AGREEMENTSUBMITSTAFF WHERE ST_ID=' + $("#agreementTab3SelectStaff option:selected").val() + ' AND YR=' + $("#agreementTab3SelectYear option:selected").val() + ' AND HFYR=' + $("#agreementTab3SelectYearHalf option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == '1') {
                    $('#agreementTab3t4BtnSave1, #agreementTab3t4BtnSave2').prop('disabled', true);
                }
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT ( SELECT COUNT(1) FROM TBL_AGREEMENT_DESC WHERE YR=' + $("#agreementTab3SelectYear option:selected").text() + ' AND YRHF=' + $("#agreementTab3SelectYearHalf option:selected").val() + ' AND ST_ID=' + $("#agreementTab3SelectStaff option:selected").val() + ' )||\'~\'||( SELECT DESC1||\'~\'||DESC2 FROM TBL_AGREEMENT_DESC WHERE YR=' + $("#agreementTab3SelectYear option:selected").text() + ' AND YRHF=' + $("#agreementTab3SelectYearHalf option:selected").val() + ' AND ST_ID=' + $("#agreementTab3SelectStaff option:selected").val() + ' ) as NAME1 FROM DUAL"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $('#agreementTab3t4Txt1').val('');
                $('#agreementTab3t4Txt2').val('');
                if (data.d.split('~')[0] != '0') {
                    $('#agreementTab3t4Txt1').val(data.d.split('~')[1]);
                    $('#agreementTab3t4Txt2').val(data.d.split('~')[2]);
                }
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
    $("#agreementTab3t4BtnSave1").click(function () {
        if ($('#agreementTab3IsGazarBoss').text() == "1") {
            var varQry = '';
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"SELECT COUNT(1) FROM TBL_AGREEMENT_DESC WHERE YR=' + $("#agreementTab3SelectYear option:selected").val() + ' AND YRHF=' + $("#agreementTab3SelectYearHalf option:selected").val() + ' AND ST_ID=' + $("#agreementTab3SelectStaff option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    if (data.d == "0") varQry = 'INSERT INTO TBL_AGREEMENT_DESC (YR, ST_ID, DESC1, YRHF) VALUES (' + $("#agreementTab3SelectYear option:selected").val() + ', ' + $("#agreementTab3SelectStaff option:selected").val() + ', \'' + $.trim($('#agreementTab3t4Txt1').val()) + '\', ' + $("#agreementTab3SelectYearHalf option:selected").val() + ')';
                    else varQry = 'UPDATE TBL_AGREEMENT_DESC SET DESC1=\'' + $.trim($('#agreementTab3t4Txt1').val()) + '\' WHERE YR=' + $("#agreementTab3SelectYear option:selected").val() + ' AND YRHF=' + $("#agreementTab3SelectYearHalf option:selected").val() + ' AND ST_ID=' + $("#agreementTab3SelectStaff option:selected").val() + '';
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                        data: '{"qry":"' + varQry + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            smallBox('Санал', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
            alert('Таньд эрх байхгүй байна!');
        }
    });
    $("#agreementTab3t4BtnSave2").click(function () {
        if ($('#agreementTab3IsGazarBoss').text() == "1") {
            var varQry = '';
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"SELECT COUNT(1) FROM TBL_AGREEMENT_DESC WHERE YR=' + $("#agreementTab3SelectYear option:selected").val() + ' AND YRHF=' + $("#agreementTab3SelectYearHalf option:selected").val() + ' AND ST_ID=' + $("#agreementTab3SelectStaff option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    if (data.d == "0") varQry = 'INSERT INTO TBL_AGREEMENT_DESC (YR, ST_ID, DESC2, YRHF) VALUES (' + $("#agreementTab3SelectYear option:selected").val() + ', ' + $("#agreementTab3SelectStaff option:selected").val() + ', \'' + $.trim($('#agreementTab3t4Txt2').val()) + '\', ' + $("#agreementTab3SelectYearHalf option:selected").val() + ')';
                    else varQry = 'UPDATE TBL_AGREEMENT_DESC SET DESC2=\'' + $.trim($('#agreementTab3t4Txt2').val()) + '\' WHERE YR=' + $("#agreementTab3SelectYear option:selected").val() + ' AND YRHF=' + $("#agreementTab3SelectYearHalf option:selected").val() + ' AND ST_ID=' + $("#agreementTab3SelectStaff option:selected").val() + '';
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                        data: '{"qry":"' + varQry + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            smallBox('Санал', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
            alert('Таньд эрх байхгүй байна!');
        }
    });
    function saveEval(me) {
        var varQry = '';
        if ($(me).closest('table').attr('id') == 'agreementTab3t1Datatable') {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"SELECT COUNT(1) FROM TBL_AGREEMENT_MAIN_IMPL WHERE YRHF=' + $('#agreementTab3SelectYearHalf option:selected').val() + ' AND AGREEMENT_MAIN_ID=' + $(me).closest('tr').find('td:eq(0)').text() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    if (data.d != '0') varQry = 'UPDATE TBL_AGREEMENT_MAIN_IMPL SET PER1=' + $(me).val().replace('none', 'null') + ' WHERE YRHF=' + $('#agreementTab3SelectYearHalf option:selected').val() + ' AND AGREEMENT_MAIN_ID=' + $(me).closest('tr').find('td:eq(0)').text() + '';
                    else varQry = 'INSERT INTO TBL_AGREEMENT_MAIN_IMPL (AGREEMENT_MAIN_ID, YRHF, PER1) VALUES (' + $(me).closest('tr').find('td:eq(0)').text() + ', ' + $('#agreementTab3SelectYearHalf option:selected').val() + ', ' + $(me).val().replace('none', 'null') + ')';
                    funcEvalNonQuery(varQry);
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
            if ($(me).val() == "none") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-blueLight form-control'); $(me).css('border', 'none'); }
            else if ($(me).val() == "1") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-red form-control'); $(me).css('border', 'none'); }
            else if ($(me).val() == "2" || $(me).val() == "3" || $(me).val() == "4") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-orange form-control'); $(me).css('border', 'none'); }
            else if ($(me).val() == "5") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-greenLight form-control'); $(me).css('border', 'none'); }
        }
        else if ($(me).closest('table').attr('id') == 'agreementTab3t2Datatable') {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"SELECT COUNT(1) FROM TBL_AGREEMENT_SKILL_IMPL WHERE YRHF=' + $('#agreementTab3SelectYearHalf option:selected').val() + ' AND AGREEMENT_SKILL_ID=' + $(me).closest('tr').find('td:eq(0)').text() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    if (data.d != '0') varQry = 'UPDATE TBL_AGREEMENT_SKILL_IMPL SET PER1=' + $(me).val().replace('none', 'null') + ' WHERE YRHF=' + $('#agreementTab3SelectYearHalf option:selected').val() + ' AND AGREEMENT_SKILL_ID=' + $(me).closest('tr').find('td:eq(0)').text() + '';
                    else varQry = 'INSERT INTO TBL_AGREEMENT_SKILL_IMPL (AGREEMENT_SKILL_ID, YRHF, PER1) VALUES (' + $(me).closest('tr').find('td:eq(0)').text() + ', ' + $('#agreementTab3SelectYearHalf option:selected').val() + ', ' + $(me).val().replace('none', 'null') + ')';
                    funcEvalNonQuery(varQry);
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
            if ($(me).val() == "none") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-blueLight form-control'); $(me).css('border', 'none'); }
            else if ($(me).val() == "4") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-red form-control'); $(me).css('border', 'none'); }
            else if ($(me).val() == "8" || $(me).val() == "12" || $(me).val() == "14" || $(me).val() == "16" || $(me).val() == "18") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-orange form-control'); $(me).css('border', 'none'); }
            else if ($(me).val() == "20") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-greenLight form-control'); $(me).css('border', 'none'); }
        }
        else if ($(me).closest('table').attr('id') == 'agreementTab3t3Datatable') {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"SELECT COUNT(1) FROM TBL_AGREEMENT_OTHER_IMPL WHERE YRHF=' + $('#agreementTab3SelectYearHalf option:selected').val() + ' AND AGREEMENT_OTHER_ID=' + $(me).closest('tr').find('td:eq(0)').text() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    if (data.d != '0') varQry = 'UPDATE TBL_AGREEMENT_OTHER_IMPL SET PER1=' + $(me).val().replace('none', 'null') + ' WHERE YRHF=' + $('#agreementTab3SelectYearHalf option:selected').val() + ' AND AGREEMENT_OTHER_ID=' + $(me).closest('tr').find('td:eq(0)').text() + '';
                    else varQry = 'INSERT INTO TBL_AGREEMENT_OTHER_IMPL (AGREEMENT_OTHER_ID, YRHF, PER1) VALUES (' + $(me).closest('tr').find('td:eq(0)').text() + ', ' + $('#agreementTab3SelectYearHalf option:selected').val() + ', ' + $(me).val().replace('none', 'null') + ')';
                    funcEvalNonQuery(varQry);
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
            if ($(me).val() == "none") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-blueLight form-control'); $(me).css('border', 'none'); }
            else if ($(me).val() == "5") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-red form-control'); $(me).css('border', 'none'); }
            else if ($(me).val() == "10" || $(me).val() == "15" || $(me).val() == "20" || $(me).val() == "25") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-orange form-control'); $(me).css('border', 'none'); }
            else if ($(me).val() == "30") { $(me).removeClass($(me).attr('class')); $(me).addClass('bg-color-greenLight form-control'); $(me).css('border', 'none'); }
        }
    }
    function funcEvalNonQuery(varQry) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
            data: '{"qry":"' + varQry + '"}',
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
    ////tab3 end

    ////tab1PrintModal begin
    $('#agreementTab1PrintModalSelectYear').change(function () {
        showLoader('loaderTab1PrintModal');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT SUM(CNT) as CNT FROM ( SELECT COUNT(1) as CNT FROM TBL_PERFCONTRACT WHERE YR=' + $("#agreementTab1PrintModalSelectYear option:selected").text() + ' AND ST_ID=' + $("#agreementTab1SelectStaff option:selected").val() + ' UNION ALL SELECT COUNT(1) as CNT FROM TBL_PERFCONTRACT_SKILL WHERE YR=' + $("#agreementTab1PrintModalSelectYear option:selected").text() + ' AND ST_ID=' + $("#agreementTab1SelectStaff option:selected").val() + ' UNION ALL SELECT COUNT(1) as CNT FROM TBL_PERFCONTRACT_OTHER WHERE YR=' + $("#agreementTab1PrintModalSelectYear option:selected").text() + ' AND ST_ID=' + $("#agreementTab1SelectStaff option:selected").val() + ' )"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $('#perfcont_lbl15').html(data.d);
                $('#perfcont_lbl28, #perfcont_lbl29, #perfcont_lbl31, #perfcont_lbl35, #perfcont_lbl53').html($("#agreementTab1PrintModalSelectYear option:selected").text());
                $("#divBindTab1PrintModalHavsraltTable").html('');
                $('#agreementTab1PrintModalSelectContentType1').prop('checked', true);
                $('#agreementTab1PrintModalSelectContentType2').prop('checked', false);
                $('#agreementTab1PrintModalGeree').css('display', 'block');
                $('#agreementTab1PrintModalHavsralt').css('display', 'none');
                hideLoader('loaderTab1PrintModal');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    });
    $('input[name="agreementTab1PrintModalSelectContentType"]').click(function () {
        var valData = '';
        var objno = "", polno = "";
        if ($('input[name="agreementTab1PrintModalSelectContentType"]:checked').attr('id') == 'agreementTab1PrintModalSelectContentType1') {
            $('#agreementTab1PrintModalGeree').css('display', 'block');
            $('#agreementTab1PrintModalHavsralt').css('display', 'none');
        }
        else if ($('input[name="agreementTab1PrintModalSelectContentType"]:checked').attr('id') == 'agreementTab1PrintModalSelectContentType2') {
            if ($.trim($("#divBindTab2t2Table").html()) == '') {
                showLoader('loaderTab1PrintModal');
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/AgreementTab1PrintModalHavsraltTable1",
                    data: '{"yr":"' + $("#agreementTab1PrintModalSelectYear option:selected").text() + '", "st_id":"' + $('#agreementTab1SelectStaff option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData += "<table style=\"border:1px solid #000; border-collapse:collapse; font: 11pt arial, sans-serif; width: 100%;\">";
                        valData += "<thead>";
                        valData += "<tr>";
                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Тухайн жилд хэрэгжүүлэх арга хэмжээ</th>";
                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Хүрэх үр дүн, Хугацаа, Тоо хэмжээ</th>";
                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Хариуцан гүйцэтгэх нэгж /албан хаагчийн/ нэр</th>";
                        valData += "</tr>";
                        valData += "<tr>";
                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">1</th>";
                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">2</th>";
                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">3</th>";
                        valData += "</tr>";
                        valData += "</thead>";
                        valData += "<tbody>";
                        valData += "<tr>";
                        valData += "<td style=\"font-weight:bold; padding:5px; text-align:center;\" colspan=\"3\">А. НИЙТ (Тусгай ажил, үйлчилгээнээс бусад) АЖИЛ, ҮЙЛЧИЛГЭЭ</td>";
                        valData += "</tr>";
                        objno = "", polno = "";
                        $($.parseJSON(data.d)).each(function (index, value) {
                            if (polno != value.STRAT_NO) {
                                valData += "<tr>";
                                valData += "<td colspan=\"3\" style=\"border: 1px solid #000; font-weight:bold; padding:5px; text-align:justify;\">" + value.STRAT_NO + ". " + replaceDatabaseToDisplay(value.STRAT_NAME) + "</td>";
                                valData += "</tr>";
                                polno = value.STRAT_NO;
                                if (objno != value.ACTION_BRID) {
                                    valData += "<tr>";
                                    valData += "<td colspan=\"3\" style=\"border: 1px solid #000; font-weight:bold; padding:5px; text-align:justify;\">" + value.STRAT_NO + "." + value.ACTION_NO + ". " + replaceDatabaseToDisplay(value.ACTION_NAME) + "</td>";
                                    valData += "</tr>";
                                    objno = value.ACTION_BRID;
                                }
                            }
                            else {
                                if (objno != value.ACTION_BRID) {
                                    valData += "<tr>";
                                    valData += "<td colspan=\"3\" style=\"border: 1px solid #000; font-weight:bold; padding:5px; text-align:justify;\">" + value.STRAT_NO + "." + value.ACTION_NO + ". " + replaceDatabaseToDisplay(value.ACTION_NAME) + "</td>";
                                    valData += "</tr>";
                                    objno = value.ACTION_BRID;
                                }
                            }
                            valData += "<tr>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; vertical-align:top; text-align:justify;\">" + value.STRAT_NO + "." + value.ACTION_NO + "." + value.PLANYR_NO + ". " + replaceDatabaseToDisplay(value.PLANYR_NAME) + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; vertical-align:top;\">" + replaceDatabaseToDisplay(value.CRITERIA) + "<br /><b>тоо:</b> " + value.CNT + "<br /><b>хугацаа:</b> " + value.MNTHLIST + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; padding:5px; vertical-align:top;\">" + value.GAZARNAME + ", " + value.HELTESNAME + " /" + value.STLISTNAME + "/</td>";
                            valData += "</tr>";
                        });
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/AgreementTab1PrintModalHavsraltTable2",
                            data: '{"yr":"' + $("#agreementTab1PrintModalSelectYear option:selected").text() + '", "st_id":"' + $('#agreementTab1SelectStaff option:selected').val() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData += "<tr>";
                                valData += "<td colspan=\"3\" style=\"font-weight:bold; padding:5px; text-align:center;border: 1px solid #000;\">Б. ТУСГАЙ  АЖИЛ, ҮЙЛЧИЛГЭЭ</th>";
                                valData += "</tr>";
                                objno = "", polno = "";
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    if (polno != value.STRAT_NO) {
                                        valData += "<tr>";
                                        valData += "<td colspan=\"3\" style=\"border: 1px solid #000; font-weight:bold; padding:5px; text-align:justify;\">" + value.STRAT_NO + ". " + replaceDatabaseToDisplay(value.STRAT_NAME) + "</td>";
                                        valData += "</tr>";
                                        polno = value.STRAT_NO;
                                        if (objno != value.ACTION_BRID) {
                                            valData += "<tr>";
                                            valData += "<td colspan=\"3\" style=\"border: 1px solid #000; font-weight:bold; padding:5px; text-align:justify;\">" + value.STRAT_NO + "." + value.ACTION_NO + ". " + replaceDatabaseToDisplay(value.ACTION_NAME) + "</td>";
                                            valData += "</tr>";
                                            objno = value.ACTION_BRID;
                                        }
                                    }
                                    else {
                                        if (objno != value.ACTION_BRID) {
                                            valData += "<tr>";
                                            valData += "<td colspan=\"3\" style=\"border: 1px solid #000; font-weight:bold; padding:5px; text-align:justify;\">" + value.STRAT_NO + "." + value.ACTION_NO + ". " + replaceDatabaseToDisplay(value.ACTION_NAME) + "</td>";
                                            valData += "</tr>";
                                            objno = value.ACTION_BRID;
                                        }
                                    }
                                    valData += "<tr>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; vertical-align:top; text-align:justify;\">" + value.STRAT_NO + "." + value.ACTION_NO + "." + value.PLANYR_NO + ". " + replaceDatabaseToDisplay(value.PLANYR_NAME) + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; vertical-align:top;\">" + replaceDatabaseToDisplay(value.CRITERIA) + "<br /><b>тоо:</b> " + value.CNT + "<br /><b>хугацаа:</b> " + value.MNTHLIST + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; padding:5px; vertical-align:top;\">" + value.GAZARNAME + ", " + value.HELTESNAME + " /" + value.STLISTNAME + "/</td>";
                                    valData += "</tr>";
                                });
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/AgreementTab1PrintModalHavsraltTable3",
                                    data: '{"yr":"' + $("#agreementTab1PrintModalSelectYear option:selected").text() + '", "st_id":"' + $('#agreementTab1SelectStaff option:selected').val() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (data) {
                                        valData += "<tr>";
                                        valData += "<td colspan=\"3\" style=\"font-weight:bold; padding:5px; text-align:center;\">В. БУСАД АЖИЛ ҮЙЛЧИЛГЭЭ</th>";
                                        valData += "</tr>";
                                        $($.parseJSON(data.d)).each(function (index, value) {
                                            valData += "<tr>";
                                            valData += "<td colspan=\"2\" style=\"border: 1px solid #000; padding:5px; vertical-align:top; text-align:justify;\">" + value.NO + ". " + replaceDatabaseToDisplay(value.NAME) + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; padding:5px; vertical-align:top;\">" + value.FNAME + "</td>";
                                            valData += "</tr>";
                                        });
                                        globalAjaxVar = $.ajax({
                                            type: "POST",
                                            url: "../ws/ServiceMain.svc/AgreementTab1PrintModalHavsraltTable4",
                                            data: '{"yr":"' + $("#agreementTab1PrintModalSelectYear option:selected").text() + '", "st_id":"' + $('#agreementTab1SelectStaff option:selected').val() + '"}',
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function (data) {
                                                valData += "<tr>";
                                                valData += "<td style=\"border: 1px solid #000; font-weight:bold; padding:5px; text-align:center;\" colspan=\"3\">Д. МЭДЛЭГ ЧАДВАРАА ДЭЭШЛҮҮЛЭХ ЗОРИЛТ</td>";
                                                valData += "</tr>";
                                                valData += "<tr>";
                                                valData += "<td style=\"border: 1px solid #000; font-weight:bold; text-align:center; padding:5px;\">Мэдлэг чадвараа дээшлүүлэх зорилт</td>";
                                                valData += "<td style=\"border: 1px solid #000; font-weight:bold; text-align:center; padding:5px;\">Хүрэх үр дүн</td>";
                                                valData += "<td style=\"border: 1px solid #000; font-weight:bold; text-align:center; padding:5px;\" colspan=\"2\">Суурь түвшин</td>";
                                                valData += "</tr>";
                                                $($.parseJSON(data.d)).each(function (index, value) {
                                                    valData += "<tr>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + replaceDatabaseToDisplay(value.IMPROVESKILL_TARGET) + "</td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + replaceDatabaseToDisplay(value.IMPROVESKILL_RESULTED) + "</td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px;\" colspan=\"2\">" + replaceDatabaseToDisplay(value.IMPROVESKILL_BASICLEVEL) + "</td>";
                                                    valData += "</tr>";
                                                });
                                                valData += "</tbody>";
                                                valData += "</table>";
                                                $('#divBindTab1PrintModalHavsraltTable').html(valData);
                                                hideLoader('loaderTab1PrintModal');
                                                $('#agreementTab1PrintModalGeree').css('display', 'none');
                                                $('#agreementTab1PrintModalHavsralt').css('display', 'block');
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
    });
    ///tab1PrintModal end


    ///tab2PrintModal begin
    $("#agreementTab2PrintModalSelectYear, #agreementTab2PrintModalSelectYearHalf").change(function () {
        var valData = '';
        var objno = "", polno = "";
        $('#perfcont_Tab3lbl2').html($('#agreementTab2PrintModalSelectYear option:selected').val());
        showLoader('loaderTab2PrintModal');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AgreementTab2PrintModalTable1",
            data: '{"yr":"' + $("#agreementTab2PrintModalSelectYear option:selected").text() + '", "yrhf":"' + $("#agreementTab2PrintModalSelectYearHalf option:selected").val() + '", "st_id":"' + $.trim($('#indexUserId').html()) + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = "<div style=\"padding: 0 0 5px 2em;\">А. НИЙТ (Тусгай ажил, үйлчилгээнээс бусад) АЖИЛ, ҮЙЛЧИЛГЭЭ</div>";
                valData += "<table id=\"perfcontractTab3Datatable1\" style=\"border:1px solid #000; border-collapse:collapse; font: 11pt arial, sans-serif; width: 100%;\">";
                valData += "<thead style=\"background-color: C6D9F1;\">";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Тухайн жилд хэрэгжүүлэхээр төлөвлөгдсөн ажил, үйлчилгээ</th>";
                valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Бодит гүйцэтгэл, хугацаа, тоо хэмжээ</th>";
                valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Гүйцэтгэлийн түвшин</th>";
                valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Ажил, үйлчилгээний нарийн төвөгтэй, хугацаандаа гүйцэтгэсэн байдал</th>";
                valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Нийлбэр оноо /3+4/</th>";
                valData += "</tr>";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">1</th>";
                valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">2</th>";
                valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">3</th>";
                valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">4</th>";
                valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">5</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                objno = "", polno = "";
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (polno != value.STRAT_NO) {
                        valData += "<tr>";
                        valData += "<td colspan=\"5\" style=\"border: 1px solid #000; font-weight:bold; padding:5px;\">" + value.STRAT_NO + ". " + replaceDatabaseToDisplay(value.STRAT_NAME) + "</td>";
                        valData += "</tr>";
                        polno = value.STRAT_NO;
                        if (objno != value.ACTION_ID) {
                            valData += "<tr>";
                            valData += "<td colspan=\"5\" style=\"border: 1px solid #000; font-weight:bold; padding:5px;\">" + value.STRAT_NO + "." + value.ACTION_NO + ". " + replaceDatabaseToDisplay(value.ACTION_NAME) + "</td>";
                            valData += "</tr>";
                            objno = value.ACTION_ID;
                        }
                    }
                    else {
                        if (objno != value.ACTION_ID) {
                            valData += "<tr>";
                            valData += "<td colspan=\"5\" style=\"border: 1px solid #000; font-weight:bold; padding:5px;\">" + value.STRAT_NO + "." + value.ACTION_NO + ". " + replaceDatabaseToDisplay(value.ACTION_NAME) + "</td>";
                            valData += "</tr>";
                            objno = value.ACTION_ID;
                        }
                    }
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:justify; vertical-align:top;\">" + value.STRAT_NO + "." + value.ACTION_NO + "." + value.PLANYR_NO + ". " + replaceDatabaseToDisplay(value.PLANYR_NAME) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; vertical-align:top;\">" + replaceDatabaseToDisplay(value.IMPL + value.IMPL1 + value.IMPL2 + value.IMPL3 + value.IMPL4 + value.IMPL5) + "</td>";
                    if (parseFloat(value.PER2) == 0) {
                        valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">-</td>";
                        valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; background: #fcf8e3;\">-</td>";
                        valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">-</td>";
                    }
                    else {
                        valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.PER2 + "</td>";
                        if ((parseInt(value.PER1) + parseInt(value.PER2)) > 30) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; background: #fcf8e3;\">" + (30 - parseInt(value.PER2)) + "</td>";
                        else valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; background: #fcf8e3;\">" + value.PER1 + "</td>";
                        if ((parseInt(value.PER1) + parseInt(value.PER2)) > 30) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\" class=\"perfcontractIltgehPer1\">30</td>";
                        else valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\" class=\"perfcontractIltgehPer1\">" + (parseInt(value.PER1) + parseInt(value.PER2)) + "</td>";
                    }
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/AgreementTab2PrintModalTable2",
                    data: '{"yr":"' + $("#agreementTab2PrintModalSelectYear option:selected").text() + '", "yrhf":"' + $("#agreementTab2PrintModalSelectYearHalf option:selected").val() + '", "st_id":"' + $.trim($('#indexUserId').html()) + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData += "<div style=\"padding: 5px 0 5px 2em;\">Б. ТУСГАЙ АЖИЛ, ҮЙЛЧИЛГЭЭ</div>";
                        valData += "<table id=\"perfcontractTab3Datatable2\" style=\"border:1px solid #000; border-collapse:collapse; font: 11pt arial, sans-serif; width: 100%;\">";
                        valData += "<thead style=\"background-color: C6D9F1;\">";
                        valData += "<tr>";
                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Тухайн жилд хэрэгжүүлэхээр төлөвлөгдсөн ажил, үйлчилгээ</th>";
                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Бодит гүйцэтгэл, хугацаа, тоо хэмжээ</th>";
                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Гүйцэтгэлийн түвшин</th>";
                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Ажил, үйлчилгээний нарийн төвөгтэй, хугацаандаа гүйцэтгэсэн байдал</th>";
                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Нийлбэр оноо /3+4/</th>";
                        valData += "</tr>";
                        valData += "<tr>";
                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">1</th>";
                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">2</th>";
                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">3</th>";
                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">4</th>";
                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">5</th>";
                        valData += "</tr>";
                        valData += "</thead>";
                        valData += "<tbody>";
                        objno = "", polno = "";
                        $($.parseJSON(data.d)).each(function (index, value) {
                            if (polno != value.STRAT_NO) {
                                valData += "<tr>";
                                valData += "<td colspan=\"5\" style=\"border: 1px solid #000; font-weight:bold; padding:5px;\">" + value.STRAT_NO + ". " + replaceDatabaseToDisplay(value.STRAT_NAME) + "</td>";
                                valData += "</tr>";
                                polno = value.STRAT_NO;
                                if (objno != value.ACTION_ID) {
                                    valData += "<tr>";
                                    valData += "<td colspan=\"5\" style=\"border: 1px solid #000; font-weight:bold; padding:5px;\">" + value.STRAT_NO + "." + value.ACTION_NO + ". " + replaceDatabaseToDisplay(value.ACTION_NAME) + "</td>";
                                    valData += "</tr>";
                                    objno = value.ACTION_ID;
                                }
                            }
                            else {
                                if (objno != value.ACTION_ID) {
                                    valData += "<tr>";
                                    valData += "<td colspan=\"5\" style=\"border: 1px solid #000; font-weight:bold; padding:5px;\">" + value.STRAT_NO + "." + value.ACTION_NO + ". " + replaceDatabaseToDisplay(value.ACTION_NAME) + "</td>";
                                    valData += "</tr>";
                                    objno = value.ACTION_ID;
                                }
                            }
                            valData += "<tr>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:justify; vertical-align:top;\">" + value.STRAT_NO + "." + value.ACTION_NO + "." + value.PLANYR_NO + ". " + replaceDatabaseToDisplay(value.PLANYR_NAME) + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; vertical-align:top;\">" + replaceDatabaseToDisplay(value.IMPL + value.IMPL1 + value.IMPL2 + value.IMPL3 + value.IMPL4 + value.IMPL5) + "</td>";
                            if (parseFloat(value.PER2) == 0) {
                                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">-</td>";
                                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; background: #fcf8e3;\">-</td>";
                                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">-</td>";
                            }
                            else {
                                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.PER2 + "</td>";
                                if ((parseInt(value.PER1) + parseInt(value.PER2)) > 30) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; background: #fcf8e3;\">" + (30 - parseInt(value.PER2)) + "</td>";
                                else valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; background: #fcf8e3;\">" + value.PER1 + "</td>";
                                if ((parseInt(value.PER1) + parseInt(value.PER2)) > 30) valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\" class=\"perfcontractIltgehPer1\">30</td>";
                                else valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\" class=\"perfcontractIltgehPer1\">" + (parseInt(value.PER1) + parseInt(value.PER2)) + "</td>";
                            }
                            valData += "</tr>";
                        });
                        valData += "</tbody>";
                        valData += "</table>"
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/AgreementTab2PrintModalTable3",
                            data: '{"yr":"' + $("#agreementTab2PrintModalSelectYear option:selected").text() + '", "yrhf":"' + $("#agreementTab2PrintModalSelectYearHalf option:selected").val() + '", "st_id":"' + $.trim($('#indexUserId').html()) + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData += "<div style=\"padding: 5px 0 5px 2em;\">В. БУСАД АЖИЛ,ҮЙЛЧИЛГЭЭ</div>";
                                valData += "<table id=\"perfcontractTab3Datatable3\" style=\"border:1px solid #000; border-collapse:collapse; font: 11pt arial, sans-serif; width: 100%;\">";
                                valData += "<thead style=\"background-color: C6D9F1;\">";
                                valData += "<tr>";
                                valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Тухайн жилд хэрэгжүүлэхээр төлөвлөгдсөн ажил, үйлчилгээ</th>";
                                valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Бодит гүйцэтгэл, хугацаа, тоо хэмжээ</th>";
                                valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Үнэлгээт оноо</th>";
                                valData += "</tr>";
                                valData += "<tr>";
                                valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">1</th>";
                                valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">2</th>";
                                valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">3</th>";
                                valData += "</tr>";
                                valData += "</thead>";
                                valData += "<tbody>";
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += "<tr>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:justify; vertical-align:top;\">" + value.NO + "." + replaceDatabaseToDisplay(value.NAME) + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; vertical-align:top;\" >" + replaceDatabaseToDisplay(value.IMPL + value.IMPL1 + value.IMPL2 + value.IMPL3 + value.IMPL4 + value.IMPL5) + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\" class=\"perfcontractIltgehPer11\">" + value.PER1 + "</td>";
                                    valData += "</tr>";
                                });
                                valData += "</tbody>";
                                valData += "</table>";
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/AgreementTab2PrintModalTable4",
                                    data: '{"yr":"' + $("#agreementTab2PrintModalSelectYear option:selected").text() + '", "yrhf":"' + $("#agreementTab2PrintModalSelectYearHalf option:selected").val() + '", "st_id":"' + $.trim($('#indexUserId').html()) + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (data) {
                                        valData += "<div style=\"padding: 5px 0 5px 2em;\">Г. МЭДЛЭГ ЧАДВАРАА ДЭЭШЛҮҮЛЭХ ЗОРИЛТ</div>";
                                        valData += "<table id=\"perfcontractTab3Datatable4\" style=\"border:1px solid #000; border-collapse:collapse; font: 11pt arial, sans-serif; width: 100%;\">";
                                        valData += "<thead style=\"background-color: C6D9F1;\">";
                                        valData += "<tr>";
                                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Мэдлэг чадвараа дээшлүүлэх зорилт</th>";
                                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Төлөвлөгөөнд хүрэхээр заасан үр дүн</th>";
                                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Зорилтын хүрээнд авч хэрэгжүүлсэн арга хэмжээ</th>";
                                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Бодит гүйцэтгэл, хугацаа, тоо хэмжээ</th>";
                                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">Мэдлэг чадвараа дээшлүүлэх зорилтын оноо</th>";
                                        valData += "</tr>";
                                        valData += "<tr>";
                                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">1</th>";
                                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">2</th>";
                                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">3</th>";
                                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">4</th>";
                                        valData += "<th style=\"border: 1px solid #000; text-align:center; padding:5px;\">5</th>";
                                        valData += "</tr>";
                                        valData += "</thead>";
                                        valData += "<tbody>";
                                        $($.parseJSON(data.d)).each(function (index, value) {
                                            valData += "<tr>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:justify; vertical-align:top;\">" + replaceDatabaseToDisplay(value.D1) + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + replaceDatabaseToDisplay(value.D2) + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + replaceDatabaseToDisplay(value.D3) + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + replaceDatabaseToDisplay(value.IMPL + value.IMPL1 + value.IMPL2 + value.IMPL3 + value.IMPL4 + value.IMPL5) + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; background: #fcf8e3;\" class=\"perfcontractIltgehPer3\">" + value.PER1 + "</td>";
                                            valData += "</tr>";
                                        });
                                        globalAjaxVar = $.ajax({
                                            type: "POST",
                                            url: "../ws/ServiceMain.svc/AgreementTab2PrintModalTable5",
                                            data: '{"yr":"' + $("#agreementTab2PrintModalSelectYear option:selected").text() + '", "yrhf":"' + $("#agreementTab2PrintModalSelectYearHalf option:selected").val() + '", "st_id":"' + $.trim($('#indexUserId').html()) + '"}',
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function (data) {
                                                var valCountEach = 0;
                                                $($.parseJSON(data.d)).each(function (index, value) {
                                                    valData += "<tr>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:justify; vertical-align:top;\">Ирцийн оноо</td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">Ажиллах өдөр: " + value.WORKDAY + "</td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">Ажилласан өдөр: " + value.EVALWORKEDDAY + " </td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">Үнэлгээт хувь: " + value.PER + "%</td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; background: #fcf8e3;\" class=\"perfcontractIltgehPer4\">" + value.PNT + "</td>";
                                                    valData += "</tr>";
                                                    valCountEach++;
                                                });
                                                if (valCountEach == 0) {
                                                    valData += "<tr>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:justify; vertical-align:top;\">Ирцийн оноо</td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">Ажиллах өдөр: 0</td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">Ажилласан өдөр: 0</td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">Үнэлгээт хувь: 0%</td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; background: #fcf8e3;\" class=\"perfcontractIltgehPer4\">0</td>";
                                                    valData += "</tr>";
                                                }
                                                globalAjaxVar = $.ajax({
                                                    type: "POST",
                                                    url: "../ws/ServiceMain.svc/AgreementTab2PrintModalTable6",
                                                    data: '{"yr":"' + $("#agreementTab2PrintModalSelectYear option:selected").text() + '", "yrhf":"' + $("#agreementTab2PrintModalSelectYearHalf option:selected").val() + '", "st_id":"' + $.trim($('#indexUserId').html()) + '"}',
                                                    contentType: "application/json; charset=utf-8",
                                                    dataType: "json",
                                                    success: function (data) {
                                                        valCountEach = 0;
                                                        $($.parseJSON(data.d)).each(function (index, value) {
                                                            valData += "<tr>";
                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:justify; vertical-align:top;\">Хамт олны үнэлгээ</td>";
                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">Авах хувь: 100%</td>";
                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">Авсан хувь: " + value.AVGPER + "%</td>";
                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">%</td>";
                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; background: #fcf8e3;\" class=\"perfcontractIltgehPer4\">" + value.AVGPNT + "</td>";
                                                            valData += "</tr>";
                                                            valCountEach++;
                                                        });
                                                        if (valCountEach == 0) {
                                                            valData += "<tr>";
                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:justify; vertical-align:top;\">Хамт олны үнэлгээ</td>";
                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">Авах хувь: 100%</td>";
                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">Авсан хувь: 0%</td>";
                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">%</td>";
                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; background: #fcf8e3;\" class=\"perfcontractIltgehPer4\">0</td>";
                                                            valData += "</tr>";
                                                        }
                                                        valData += "</tbody>";
                                                        valData += "</table>";
                                                        $("#divBindTab2PrintModalTable").html(valData);
                                                        var totPer1 = 0;
                                                        var cntPer1 = 0;
                                                        var totPer2 = 0;
                                                        var cntPer2 = 0;
                                                        var totPer3 = 0;
                                                        var cntPer3 = 0;
                                                        var totPer4 = 0;
                                                        var cntPer4 = 0;
                                                        var totPer11 = 0;
                                                        var cntPer11 = 0;
                                                        $('.perfcontractIltgehPer1').each(function () {
                                                            totPer1 += parseFloat($(this).text());
                                                            cntPer1++;
                                                        });
                                                        $('.perfcontractIltgehPer2').each(function () {
                                                            totPer2 += parseFloat($(this).text());
                                                            cntPer2++;
                                                        });
                                                        $('.perfcontractIltgehPer3').each(function () {
                                                            totPer3 += parseFloat($(this).text());
                                                            cntPer3++;
                                                        });
                                                        $('.perfcontractIltgehPer4').each(function () {
                                                            totPer4 += parseFloat($(this).text());
                                                        });
                                                        $('.perfcontractIltgehPer11').each(function () {
                                                            totPer11 += parseFloat($(this).text());
                                                            cntPer11++;
                                                        });


                                                        if (totPer11 == 0) $('#perfcontTab3TotalCnt1').text(Math.round(parseFloat((((parseFloat(totPer1) / (parseFloat(cntPer1) * 30)) * 100) * 0.3).toFixed(1).toString().replace('NaN', '0'))));
                                                        else $('#perfcontTab3TotalCnt1').text(Math.round((Math.round(parseFloat(totPer1) / parseFloat(cntPer1)) + Math.round(parseFloat(totPer11) / parseFloat(cntPer11))) / 2));
                                                        $('#perfcontTab3TotalCnt2').text(Math.round(parseFloat(totPer2) + parseFloat(cntPer2)).toString().replace('NaN', '0'));
                                                        $('#perfcontTab3TotalCnt3').text(parseFloat(parseFloat(Math.round(parseFloat(totPer3) / parseFloat(cntPer3)).toString().replace('NaN', '0')) + parseFloat(totPer4)).toString());
                                                        $('#perfcontTab3TotalCntTotal').text((parseFloat($('#perfcontTab3TotalCnt1').text()) + parseFloat($('#perfcontTab3TotalCnt2').text()) + parseFloat($('#perfcontTab3TotalCnt3').text())).toString());
                                                        globalAjaxVar = $.ajax({
                                                            type: "POST",
                                                            url: "../ws/ServiceMain.svc/AgreementStaff30Dahi",
                                                            data: '{"yr":"' + $("#agreementTab2PrintModalSelectYear option:selected").text() + '", "yrhf":"' + $('#agreementTab2PrintModalSelectYearHalf option:selected').val() + '", "stid":"' + $.trim($('#indexUserId').html()) + '"}',
                                                            contentType: "application/json; charset=utf-8",
                                                            dataType: "json",
                                                            success: function (data) {
                                                                var newPer = (parseFloat($('#perfcontTab3TotalCnt1').text()) + parseFloat($('#perfcontTab3TotalCnt2').text()) + parseFloat($('#perfcontTab3TotalCnt3').text())) - (parseFloat(data.d) - 90);
                                                                $('#perfcontTab3TotalCntTotalNew').text(newPer);
                                                                hideLoader('loaderTab2PrintModal');
                                                            },
                                                            failure: function (response) {
                                                                alert('FAILURE: ' + response.d);
                                                            },
                                                            error: function (xhr, status, error) {
                                                                window.location = '../#pg/error500.aspx';
                                                            }
                                                        });
                                                        if (parseFloat($('#perfcontTab3TotalCntTotal').text()) <= 20) $('#perfcontTab3TotalF').text('O');
                                                        else if (parseFloat($('#perfcontTab3TotalCntTotal').text()) > 20 && parseFloat($('#perfcontTab3TotalCntTotal').text()) <= 40) $('#perfcontTab3TotalD').text('O');
                                                        else if (parseFloat($('#perfcontTab3TotalCntTotal').text()) > 40 && parseFloat($('#perfcontTab3TotalCntTotal').text()) <= 60) $('#perfcontTab3TotalC').text('O');
                                                        else if (parseFloat($('#perfcontTab3TotalCntTotal').text()) > 60 && parseFloat($('#perfcontTab3TotalCntTotal').text()) <= 80) $('#perfcontTab3TotalB').text('O');
                                                        else if (parseFloat($('#perfcontTab3TotalCntTotal').text()) > 80 && parseFloat($('#perfcontTab3TotalCntTotal').text()) <= 100) $('#perfcontTab3TotalA').text('O');

                                                        globalAjaxVar = $.ajax({
                                                            type: "POST",
                                                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                            data: '{"qry":"SELECT ( SELECT COUNT(1) FROM TBL_AGREEMENT_DESC WHERE YR=' + $("#agreementTab2PrintModalSelectYear option:selected").text() + ' AND YRHF=' + $("#agreementTab2PrintModalSelectYearHalf option:selected").val() + ' AND ST_ID=' + $.trim($('#indexUserId').html()) + ' )||\'~\'||( SELECT NVL(SATIS1,0)||\'~\'||NVL(SATIS2,0)||\'~\'||DESC1||\'~\'||DESC2 FROM TBL_AGREEMENT_DESC WHERE YR=' + $("#agreementTab2PrintModalSelectYear option:selected").text() + ' AND YRHF=' + $("#agreementTab2PrintModalSelectYearHalf option:selected").val() + ' AND ST_ID=' + $.trim($('#indexUserId').html()) + ' ) as NAME1 FROM DUAL"}',
                                                            contentType: "application/json; charset=utf-8",
                                                            dataType: "json",
                                                            success: function (data) {
                                                                if (data.d.split('~')[0] == '0') {
                                                                    $('#perfcontract_Tab3Satis1_1').html('&nbsp;');
                                                                    $('#perfcontract_Tab3Satis1_2').html('&nbsp;');
                                                                    $('#perfcontract_Tab3Satis1_3').html('&nbsp;');

                                                                    $('#perfcontract_Tab3Satis2_1').html('&nbsp;');
                                                                    $('#perfcontract_Tab3Satis2_2').html('&nbsp;');
                                                                    $('#perfcontract_Tab3Satis2_3').html('&nbsp;');

                                                                    $('#perfcont_Tab3TxtSrv1Lbl').text('');
                                                                    $('#perfcont_Tab3TxtSrv2Lbl').text('');
                                                                }
                                                                else {
                                                                    if (data.d.split('~')[1] == '0') {
                                                                        $('#perfcontract_Tab3Satis1_1').html('&nbsp;');
                                                                        $('#perfcontract_Tab3Satis1_2').html('&nbsp;');
                                                                        $('#perfcontract_Tab3Satis1_3').html('&nbsp;');
                                                                    }
                                                                    else if (data.d.split('~')[1] == '1') {
                                                                        $('#perfcontract_Tab3Satis1_1').html('O');
                                                                        $('#perfcontract_Tab3Satis1_2').html('&nbsp;');
                                                                        $('#perfcontract_Tab3Satis1_3').html('&nbsp;');
                                                                    }
                                                                    else if (data.d.split('~')[1] == '2') {
                                                                        $('#perfcontract_Tab3Satis1_1').html('&nbsp;');
                                                                        $('#perfcontract_Tab3Satis1_2').html('O');
                                                                        $('#perfcontract_Tab3Satis1_3').html('&nbsp;');
                                                                    }
                                                                    else if (data.d.split('~')[1] == '3') {
                                                                        $('#perfcontract_Tab3Satis1_1').html('&nbsp;');
                                                                        $('#perfcontract_Tab3Satis1_2').html('&nbsp;');
                                                                        $('#perfcontract_Tab3Satis1_3').html('O');
                                                                    }

                                                                    if (data.d.split('~')[2] == '0') {
                                                                        $('#perfcontract_Tab3Satis2_1').html('&nbsp;');
                                                                        $('#perfcontract_Tab3Satis2_2').html('&nbsp;');
                                                                        $('#perfcontract_Tab3Satis2_3').html('&nbsp;');
                                                                    }
                                                                    else if (data.d.split('~')[2] == '1') {
                                                                        $('#perfcontract_Tab3Satis2_1').html('O');
                                                                        $('#perfcontract_Tab3Satis2_2').html('&nbsp;');
                                                                        $('#perfcontract_Tab3Satis2_3').html('&nbsp;');
                                                                    }
                                                                    else if (data.d.split('~')[2] == '2') {
                                                                        $('#perfcontract_Tab3Satis2_1').html('&nbsp;');
                                                                        $('#perfcontract_Tab3Satis2_2').html('O');
                                                                        $('#perfcontract_Tab3Satis2_3').html('&nbsp;');
                                                                    }
                                                                    else if (data.d.split('~')[2] == '3') {
                                                                        $('#perfcontract_Tab3Satis2_1').html('&nbsp;');
                                                                        $('#perfcontract_Tab3Satis2_2').html('&nbsp;');
                                                                        $('#perfcontract_Tab3Satis2_3').html('O');
                                                                    }
                                                                    $('#perfcont_Tab3TxtSrv1Lbl').text(data.d.split('~')[3]);
                                                                    $('#perfcont_Tab3TxtSrv2Lbl').text(data.d.split('~')[4]);
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
    });
    ///tab2PrintModal end

    ///tab4t1 begin
    function dataBindTab4t1DataTableFirst() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr": "' + $('#agreementTab4t1SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                })
                $('#agreementTab4t1SelectBranchGazar').html(valData);
                $('#agreementTab4t1SelectBranchGazar').val(userGazarId);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                    data: '{"yr": "' + $('#agreementTab4t1SelectYear option:selected').val() + '", "gazar": "' + $("#agreementTab4t1SelectBranchGazar option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        })
                        $("#agreementTab4t1SelectBranchHeltes").html(valData);
                        $('#agreementTab4t1SelectBranchHeltes').val(userHeltesId);
                        if (!funcCheckRoles('1')) {
                            $('#agreementTab4t1SelectBranchGazar').prop('disabled', true);
                        }
                        else {
                            $('#agreementTab4t1SelectBranchGazar').prop('disabled', false);
                        }
                        if (!funcCheckRoles('1,3')) {
                            $('#agreementTab4t1SelectBranchHeltes').prop('disabled', true);
                        }
                        else {
                            $('#agreementTab4t1SelectBranchHeltes').prop('disabled', false);
                        }
                        dataBindTab4t1DataTable();
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
    $("#agreementTab4t1SelectBranchGazar").change(function () {
        var valData = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
            data: '{"yr":"' + $("#agreementTab4t1SelectYear option:selected").val() + '", "gazar":"' + $("#agreementTab4t1SelectBranchGazar option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#agreementTab4t1SelectBranchHeltes").html(valData);
                $("#agreementTab4t1SelectBranchHeltes").prop("disabled", false);
                dataBindTab4t1DataTable();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    });
    $("#agreementTab4t1SelectBranchHeltes, #agreementTab4t1SelectYear, #agreementTab4t1SelectYearHalf, #agreementTab4t1SelectAProports").change(function () {
        dataBindTab4t1DataTable();
    });
    function dataBindTab4t1DataTable() {
        var valData = '';
        showLoader('loaderTab4t1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AgreementTab4t1",
            data: '{"yr":"' + $("#agreementTab4t1SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab4t1SelectYearHalf option:selected").val() + '", "gazarid":"' + $("#agreementTab4t1SelectBranchGazar option:selected").val() + '", "heltesid":"' + $("#agreementTab4t1SelectBranchHeltes option:selected").val() + '", "proports":"' + $('#agreementTab4t1SelectAProports option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.ROWNO + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.NEGJ + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.POS_NAME + "</td>";
                    //valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.MOVE_NAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.STAFFNAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIIT_PLANCNT + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB3PLANCNT + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + parseFloat(value.NIITOTHER_PERAVG).toFixed(3) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PLANCNT + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + parseFloat(value.TUSGAI_PERAVG).toFixed(3) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB2PLANCNT + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + (parseFloat(value.TAB2PER1AVG) + parseFloat(value.TAB2PERIRTS) + parseFloat(value.TAB2PERHAMT)).toFixed(3) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.SUMPERCOLOR + "\"> " + parseFloat(value.SUMPER).toFixed(3) + " </span></td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.NEWSUMPERCOLOR + "\"> " + parseFloat(value.NEWSUMPER).toFixed(3) + " </span></td>";
                    valData += "</tr>";
                });
                $("#divBindTab4t1Table").html(valData);
                $('#agreementTab4t1Lbl1').html($('#agreementTab4t1SelectYear option:selected').val() + ' оны ' + $('#agreementTab4t1SelectYearHalf option:selected').text() + '');
                hideLoader('loaderTab4t1');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#agreementTab4t1ShowAllNegj").click(function () {
        var valData = '';
        showLoader('loaderTab4t1');
        $("#divBindTab4t1Table").html('');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AgreementTab4t1",
            data: '{"yr":"' + $("#agreementTab4t1SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab4t1SelectYearHalf option:selected").val() + '", "gazarid":"9919", "heltesid":"9922"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.ROWNO + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.NEGJ + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.POS_NAME + "</td>";
                    //valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.MOVE_NAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.STAFFNAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIIT_PLANCNT + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB3PLANCNT + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIITOTHER_PERAVG + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PLANCNT + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PERAVG + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB2PLANCNT + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + (parseFloat(value.TAB2PER1AVG) + parseFloat(value.TAB2PERIRTS) + parseFloat(value.TAB2PERHAMT)).toFixed(1) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.SUMPERCOLOR + "\"> " + value.SUMPER + " </span></td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.NEWSUMPERCOLOR + "\"> " + value.NEWSUMPER + " </span></td>";
                    valData += "</tr>";
                });
                $("#divBindTab4t1Table").append(valData);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/AgreementTab4t1",
                    data: '{"yr":"' + $("#agreementTab4t1SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab4t1SelectYearHalf option:selected").val() + '", "gazarid":"9919", "heltesid":"9944"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<tr>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.ROWNO + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.NEGJ + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.POS_NAME + "</td>";
                            //valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.MOVE_NAME + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.STAFFNAME + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIIT_PLANCNT + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB3PLANCNT + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIITOTHER_PERAVG + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PLANCNT + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PERAVG + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB2PLANCNT + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + (parseFloat(value.TAB2PER1AVG) + parseFloat(value.TAB2PERIRTS) + parseFloat(value.TAB2PERHAMT)).toFixed(1) + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.SUMPERCOLOR + "\"> " + value.SUMPER + " </span></td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.NEWSUMPERCOLOR + "\"> " + value.NEWSUMPER + " </span></td>";
                            valData += "</tr>";
                        });
                        $("#divBindTab4t1Table").append(valData);
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/AgreementTab4t1",
                            data: '{"yr":"' + $("#agreementTab4t1SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab4t1SelectYearHalf option:selected").val() + '", "gazarid":"9917", "heltesid":"9917"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += "<tr>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.ROWNO + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.NEGJ + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.POS_NAME + "</td>";
                                    //valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.MOVE_NAME + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.STAFFNAME + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIIT_PLANCNT + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB3PLANCNT + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIITOTHER_PERAVG + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PLANCNT + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PERAVG + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB2PLANCNT + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + (parseFloat(value.TAB2PER1AVG) + parseFloat(value.TAB2PERIRTS) + parseFloat(value.TAB2PERHAMT)).toFixed(1) + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.SUMPERCOLOR + "\"> " + value.SUMPER + " </span></td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.NEWSUMPERCOLOR + "\"> " + value.NEWSUMPER + " </span></td>";
                                    valData += "</tr>";
                                });
                                $("#divBindTab4t1Table").append(valData);
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/AgreementTab4t1",
                                    data: '{"yr":"' + $("#agreementTab4t1SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab4t1SelectYearHalf option:selected").val() + '", "gazarid":"9916", "heltesid":"9920"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (data) {
                                        valData = '';
                                        $($.parseJSON(data.d)).each(function (index, value) {
                                            valData += "<tr>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.ROWNO + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.NEGJ + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.POS_NAME + "</td>";
                                            //valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.MOVE_NAME + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.STAFFNAME + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIIT_PLANCNT + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB3PLANCNT + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIITOTHER_PERAVG + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PLANCNT + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PERAVG + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB2PLANCNT + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + (parseFloat(value.TAB2PER1AVG) + parseFloat(value.TAB2PERIRTS) + parseFloat(value.TAB2PERHAMT)).toFixed(1) + "</td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.SUMPERCOLOR + "\"> " + value.SUMPER + " </span></td>";
                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.NEWSUMPERCOLOR + "\"> " + value.NEWSUMPER + " </span></td>";
                                            valData += "</tr>";
                                        });
                                        $("#divBindTab4t1Table").append(valData);
                                        globalAjaxVar = $.ajax({
                                            type: "POST",
                                            url: "../ws/ServiceMain.svc/AgreementTab4t1",
                                            data: '{"yr":"' + $("#agreementTab4t1SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab4t1SelectYearHalf option:selected").val() + '", "gazarid":"9916", "heltesid":"9921"}',
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function (data) {
                                                valData = '';
                                                $($.parseJSON(data.d)).each(function (index, value) {
                                                    valData += "<tr>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.ROWNO + "</td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.NEGJ + "</td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.POS_NAME + "</td>";
                                                    //valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.MOVE_NAME + "</td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.STAFFNAME + "</td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIIT_PLANCNT + "</td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB3PLANCNT + "</td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIITOTHER_PERAVG + "</td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PLANCNT + "</td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PERAVG + "</td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB2PLANCNT + "</td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + (parseFloat(value.TAB2PER1AVG) + parseFloat(value.TAB2PERIRTS) + parseFloat(value.TAB2PERHAMT)).toFixed(1) + "</td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.SUMPERCOLOR + "\"> " + value.SUMPER + " </span></td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.NEWSUMPERCOLOR + "\"> " + value.NEWSUMPER + " </span></td>";
                                                    valData += "</tr>";
                                                });
                                                $("#divBindTab4t1Table").append(valData);
                                                globalAjaxVar = $.ajax({
                                                    type: "POST",
                                                    url: "../ws/ServiceMain.svc/AgreementTab4t1",
                                                    data: '{"yr":"' + $("#agreementTab4t1SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab4t1SelectYearHalf option:selected").val() + '", "gazarid":"9918", "heltesid":"9923"}',
                                                    contentType: "application/json; charset=utf-8",
                                                    dataType: "json",
                                                    success: function (data) {
                                                        valData = '';
                                                        $($.parseJSON(data.d)).each(function (index, value) {
                                                            valData += "<tr>";
                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.ROWNO + "</td>";
                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.NEGJ + "</td>";
                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.POS_NAME + "</td>";
                                                            //valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.MOVE_NAME + "</td>";
                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.STAFFNAME + "</td>";
                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIIT_PLANCNT + "</td>";
                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB3PLANCNT + "</td>";
                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIITOTHER_PERAVG + "</td>";
                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PLANCNT + "</td>";
                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PERAVG + "</td>";
                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB2PLANCNT + "</td>";
                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + (parseFloat(value.TAB2PER1AVG) + parseFloat(value.TAB2PERIRTS) + parseFloat(value.TAB2PERHAMT)).toFixed(1) + "</td>";
                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.SUMPERCOLOR + "\"> " + value.SUMPER + " </span></td>";
                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.NEWSUMPERCOLOR + "\"> " + value.NEWSUMPER + " </span></td>";
                                                            valData += "</tr>";
                                                        });
                                                        $("#divBindTab4t1Table").append(valData);
                                                        globalAjaxVar = $.ajax({
                                                            type: "POST",
                                                            url: "../ws/ServiceMain.svc/AgreementTab4t1",
                                                            data: '{"yr":"' + $("#agreementTab4t1SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab4t1SelectYearHalf option:selected").val() + '", "gazarid":"9918", "heltesid":"9940"}',
                                                            contentType: "application/json; charset=utf-8",
                                                            dataType: "json",
                                                            success: function (data) {
                                                                valData = '';
                                                                $($.parseJSON(data.d)).each(function (index, value) {
                                                                    valData += "<tr>";
                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.ROWNO + "</td>";
                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.NEGJ + "</td>";
                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.POS_NAME + "</td>";
                                                                    //valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.MOVE_NAME + "</td>";
                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.STAFFNAME + "</td>";
                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIIT_PLANCNT + "</td>";
                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB3PLANCNT + "</td>";
                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIITOTHER_PERAVG + "</td>";
                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PLANCNT + "</td>";
                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PERAVG + "</td>";
                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB2PLANCNT + "</td>";
                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + (parseFloat(value.TAB2PER1AVG) + parseFloat(value.TAB2PERIRTS) + parseFloat(value.TAB2PERHAMT)).toFixed(1) + "</td>";
                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.SUMPERCOLOR + "\"> " + value.SUMPER + " </span></td>";
                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.NEWSUMPERCOLOR + "\"> " + value.NEWSUMPER + " </span></td>";
                                                                    valData += "</tr>";
                                                                });
                                                                $("#divBindTab4t1Table").append(valData);
                                                                globalAjaxVar = $.ajax({
                                                                    type: "POST",
                                                                    url: "../ws/ServiceMain.svc/AgreementTab4t1",
                                                                    data: '{"yr":"' + $("#agreementTab4t1SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab4t1SelectYearHalf option:selected").val() + '", "gazarid":"9908", "heltesid":"9931"}',
                                                                    contentType: "application/json; charset=utf-8",
                                                                    dataType: "json",
                                                                    success: function (data) {
                                                                        valData = '';
                                                                        $($.parseJSON(data.d)).each(function (index, value) {
                                                                            valData += "<tr>";
                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.ROWNO + "</td>";
                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.NEGJ + "</td>";
                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.POS_NAME + "</td>";
                                                                            //valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.MOVE_NAME + "</td>";
                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.STAFFNAME + "</td>";
                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIIT_PLANCNT + "</td>";
                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB3PLANCNT + "</td>";
                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIITOTHER_PERAVG + "</td>";
                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PLANCNT + "</td>";
                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PERAVG + "</td>";
                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB2PLANCNT + "</td>";
                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + (parseFloat(value.TAB2PER1AVG) + parseFloat(value.TAB2PERIRTS) + parseFloat(value.TAB2PERHAMT)).toFixed(1) + "</td>";
                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.SUMPERCOLOR + "\"> " + value.SUMPER + " </span></td>";
                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.NEWSUMPERCOLOR + "\"> " + value.NEWSUMPER + " </span></td>";
                                                                            valData += "</tr>";
                                                                        });
                                                                        $("#divBindTab4t1Table").append(valData);
                                                                        globalAjaxVar = $.ajax({
                                                                            type: "POST",
                                                                            url: "../ws/ServiceMain.svc/AgreementTab4t1",
                                                                            data: '{"yr":"' + $("#agreementTab4t1SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab4t1SelectYearHalf option:selected").val() + '", "gazarid":"9908", "heltesid":"9932"}',
                                                                            contentType: "application/json; charset=utf-8",
                                                                            dataType: "json",
                                                                            success: function (data) {
                                                                                valData = '';
                                                                                $($.parseJSON(data.d)).each(function (index, value) {
                                                                                    valData += "<tr>";
                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.ROWNO + "</td>";
                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.NEGJ + "</td>";
                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.POS_NAME + "</td>";
                                                                                    //valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.MOVE_NAME + "</td>";
                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.STAFFNAME + "</td>";
                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIIT_PLANCNT + "</td>";
                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB3PLANCNT + "</td>";
                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIITOTHER_PERAVG + "</td>";
                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PLANCNT + "</td>";
                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PERAVG + "</td>";
                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB2PLANCNT + "</td>";
                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + (parseFloat(value.TAB2PER1AVG) + parseFloat(value.TAB2PERIRTS) + parseFloat(value.TAB2PERHAMT)).toFixed(1) + "</td>";
                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.SUMPERCOLOR + "\"> " + value.SUMPER + " </span></td>";
                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.NEWSUMPERCOLOR + "\"> " + value.NEWSUMPER + " </span></td>";
                                                                                    valData += "</tr>";
                                                                                });
                                                                                $("#divBindTab4t1Table").append(valData);
                                                                                globalAjaxVar = $.ajax({
                                                                                    type: "POST",
                                                                                    url: "../ws/ServiceMain.svc/AgreementTab4t1",
                                                                                    data: '{"yr":"' + $("#agreementTab4t1SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab4t1SelectYearHalf option:selected").val() + '", "gazarid":"9908", "heltesid":"9933"}',
                                                                                    contentType: "application/json; charset=utf-8",
                                                                                    dataType: "json",
                                                                                    success: function (data) {
                                                                                        valData = '';
                                                                                        $($.parseJSON(data.d)).each(function (index, value) {
                                                                                            valData += "<tr>";
                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.ROWNO + "</td>";
                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.NEGJ + "</td>";
                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.POS_NAME + "</td>";
                                                                                            //valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.MOVE_NAME + "</td>";
                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.STAFFNAME + "</td>";
                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIIT_PLANCNT + "</td>";
                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB3PLANCNT + "</td>";
                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIITOTHER_PERAVG + "</td>";
                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PLANCNT + "</td>";
                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PERAVG + "</td>";
                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB2PLANCNT + "</td>";
                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + (parseFloat(value.TAB2PER1AVG) + parseFloat(value.TAB2PERIRTS) + parseFloat(value.TAB2PERHAMT)).toFixed(1) + "</td>";
                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.SUMPERCOLOR + "\"> " + value.SUMPER + " </span></td>";
                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.NEWSUMPERCOLOR + "\"> " + value.NEWSUMPER + " </span></td>";
                                                                                            valData += "</tr>";
                                                                                        });
                                                                                        $("#divBindTab4t1Table").append(valData);
                                                                                        globalAjaxVar = $.ajax({
                                                                                            type: "POST",
                                                                                            url: "../ws/ServiceMain.svc/AgreementTab4t1",
                                                                                            data: '{"yr":"' + $("#agreementTab4t1SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab4t1SelectYearHalf option:selected").val() + '", "gazarid":"9908", "heltesid":"9934"}',
                                                                                            contentType: "application/json; charset=utf-8",
                                                                                            dataType: "json",
                                                                                            success: function (data) {
                                                                                                valData = '';
                                                                                                $($.parseJSON(data.d)).each(function (index, value) {
                                                                                                    valData += "<tr>";
                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.ROWNO + "</td>";
                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.NEGJ + "</td>";
                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.POS_NAME + "</td>";
                                                                                                    //valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.MOVE_NAME + "</td>";
                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.STAFFNAME + "</td>";
                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIIT_PLANCNT + "</td>";
                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB3PLANCNT + "</td>";
                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIITOTHER_PERAVG + "</td>";
                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PLANCNT + "</td>";
                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PERAVG + "</td>";
                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB2PLANCNT + "</td>";
                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + (parseFloat(value.TAB2PER1AVG) + parseFloat(value.TAB2PERIRTS) + parseFloat(value.TAB2PERHAMT)).toFixed(1) + "</td>";
                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.SUMPERCOLOR + "\"> " + value.SUMPER + " </span></td>";
                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.NEWSUMPERCOLOR + "\"> " + value.NEWSUMPER + " </span></td>";
                                                                                                    valData += "</tr>";
                                                                                                });
                                                                                                $("#divBindTab4t1Table").append(valData);
                                                                                                globalAjaxVar = $.ajax({
                                                                                                    type: "POST",
                                                                                                    url: "../ws/ServiceMain.svc/AgreementTab4t1",
                                                                                                    data: '{"yr":"' + $("#agreementTab4t1SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab4t1SelectYearHalf option:selected").val() + '", "gazarid":"9902", "heltesid":"9902"}',
                                                                                                    contentType: "application/json; charset=utf-8",
                                                                                                    dataType: "json",
                                                                                                    success: function (data) {
                                                                                                        valData = '';
                                                                                                        $($.parseJSON(data.d)).each(function (index, value) {
                                                                                                            valData += "<tr>";
                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.ROWNO + "</td>";
                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.NEGJ + "</td>";
                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.POS_NAME + "</td>";
                                                                                                            //valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.MOVE_NAME + "</td>";
                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.STAFFNAME + "</td>";
                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIIT_PLANCNT + "</td>";
                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB3PLANCNT + "</td>";
                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIITOTHER_PERAVG + "</td>";
                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PLANCNT + "</td>";
                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PERAVG + "</td>";
                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB2PLANCNT + "</td>";
                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + (parseFloat(value.TAB2PER1AVG) + parseFloat(value.TAB2PERIRTS) + parseFloat(value.TAB2PERHAMT)).toFixed(1) + "</td>";
                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.SUMPERCOLOR + "\"> " + value.SUMPER + " </span></td>";
                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.NEWSUMPERCOLOR + "\"> " + value.NEWSUMPER + " </span></td>";
                                                                                                            valData += "</tr>";
                                                                                                        });
                                                                                                        $("#divBindTab4t1Table").append(valData);
                                                                                                        globalAjaxVar = $.ajax({
                                                                                                            type: "POST",
                                                                                                            url: "../ws/ServiceMain.svc/AgreementTab4t1",
                                                                                                            data: '{"yr":"' + $("#agreementTab4t1SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab4t1SelectYearHalf option:selected").val() + '", "gazarid":"9904", "heltesid":"9904"}',
                                                                                                            contentType: "application/json; charset=utf-8",
                                                                                                            dataType: "json",
                                                                                                            success: function (data) {
                                                                                                                valData = '';
                                                                                                                $($.parseJSON(data.d)).each(function (index, value) {
                                                                                                                    valData += "<tr>";
                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.ROWNO + "</td>";
                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.NEGJ + "</td>";
                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.POS_NAME + "</td>";
                                                                                                                    //valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.MOVE_NAME + "</td>";
                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.STAFFNAME + "</td>";
                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIIT_PLANCNT + "</td>";
                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB3PLANCNT + "</td>";
                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIITOTHER_PERAVG + "</td>";
                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PLANCNT + "</td>";
                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PERAVG + "</td>";
                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB2PLANCNT + "</td>";
                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + (parseFloat(value.TAB2PER1AVG) + parseFloat(value.TAB2PERIRTS) + parseFloat(value.TAB2PERHAMT)).toFixed(1) + "</td>";
                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.SUMPERCOLOR + "\"> " + value.SUMPER + " </span></td>";
                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.NEWSUMPERCOLOR + "\"> " + value.NEWSUMPER + " </span></td>";
                                                                                                                    valData += "</tr>";
                                                                                                                });
                                                                                                                $("#divBindTab4t1Table").append(valData);
                                                                                                                globalAjaxVar = $.ajax({
                                                                                                                    type: "POST",
                                                                                                                    url: "../ws/ServiceMain.svc/AgreementTab4t1",
                                                                                                                    data: '{"yr":"' + $("#agreementTab4t1SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab4t1SelectYearHalf option:selected").val() + '", "gazarid":"9907", "heltesid":"9946"}',
                                                                                                                    contentType: "application/json; charset=utf-8",
                                                                                                                    dataType: "json",
                                                                                                                    success: function (data) {
                                                                                                                        valData = '';
                                                                                                                        $($.parseJSON(data.d)).each(function (index, value) {
                                                                                                                            valData += "<tr>";
                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.ROWNO + "</td>";
                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.NEGJ + "</td>";
                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.POS_NAME + "</td>";
                                                                                                                            //valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.MOVE_NAME + "</td>";
                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.STAFFNAME + "</td>";
                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIIT_PLANCNT + "</td>";
                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB3PLANCNT + "</td>";
                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIITOTHER_PERAVG + "</td>";
                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PLANCNT + "</td>";
                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PERAVG + "</td>";
                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB2PLANCNT + "</td>";
                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + (parseFloat(value.TAB2PER1AVG) + parseFloat(value.TAB2PERIRTS) + parseFloat(value.TAB2PERHAMT)).toFixed(1) + "</td>";
                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.SUMPERCOLOR + "\"> " + value.SUMPER + " </span></td>";
                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.NEWSUMPERCOLOR + "\"> " + value.NEWSUMPER + " </span></td>";
                                                                                                                            valData += "</tr>";
                                                                                                                        });
                                                                                                                        $("#divBindTab4t1Table").append(valData);
                                                                                                                        globalAjaxVar = $.ajax({
                                                                                                                            type: "POST",
                                                                                                                            url: "../ws/ServiceMain.svc/AgreementTab4t1",
                                                                                                                            data: '{"yr":"' + $("#agreementTab4t1SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab4t1SelectYearHalf option:selected").val() + '", "gazarid":"9907", "heltesid":"9947"}',
                                                                                                                            contentType: "application/json; charset=utf-8",
                                                                                                                            dataType: "json",
                                                                                                                            success: function (data) {
                                                                                                                                valData = '';
                                                                                                                                $($.parseJSON(data.d)).each(function (index, value) {
                                                                                                                                    valData += "<tr>";
                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.ROWNO + "</td>";
                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.NEGJ + "</td>";
                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.POS_NAME + "</td>";
                                                                                                                                    //valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.MOVE_NAME + "</td>";
                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.STAFFNAME + "</td>";
                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIIT_PLANCNT + "</td>";
                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB3PLANCNT + "</td>";
                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIITOTHER_PERAVG + "</td>";
                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PLANCNT + "</td>";
                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PERAVG + "</td>";
                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB2PLANCNT + "</td>";
                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + (parseFloat(value.TAB2PER1AVG) + parseFloat(value.TAB2PERIRTS) + parseFloat(value.TAB2PERHAMT)).toFixed(1) + "</td>";
                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.SUMPERCOLOR + "\"> " + value.SUMPER + " </span></td>";
                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.NEWSUMPERCOLOR + "\"> " + value.NEWSUMPER + " </span></td>";
                                                                                                                                    valData += "</tr>";
                                                                                                                                });
                                                                                                                                $("#divBindTab4t1Table").append(valData);
                                                                                                                                globalAjaxVar = $.ajax({
                                                                                                                                    type: "POST",
                                                                                                                                    url: "../ws/ServiceMain.svc/AgreementTab4t1",
                                                                                                                                    data: '{"yr":"' + $("#agreementTab4t1SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab4t1SelectYearHalf option:selected").val() + '", "gazarid":"9915", "heltesid":"9938"}',
                                                                                                                                    contentType: "application/json; charset=utf-8",
                                                                                                                                    dataType: "json",
                                                                                                                                    success: function (data) {
                                                                                                                                        valData = '';
                                                                                                                                        $($.parseJSON(data.d)).each(function (index, value) {
                                                                                                                                            valData += "<tr>";
                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.ROWNO + "</td>";
                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.NEGJ + "</td>";
                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.POS_NAME + "</td>";
                                                                                                                                            //valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.MOVE_NAME + "</td>";
                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.STAFFNAME + "</td>";
                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIIT_PLANCNT + "</td>";
                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB3PLANCNT + "</td>";
                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIITOTHER_PERAVG + "</td>";
                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PLANCNT + "</td>";
                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PERAVG + "</td>";
                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB2PLANCNT + "</td>";
                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + (parseFloat(value.TAB2PER1AVG) + parseFloat(value.TAB2PERIRTS) + parseFloat(value.TAB2PERHAMT)).toFixed(1) + "</td>";
                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.SUMPERCOLOR + "\"> " + value.SUMPER + " </span></td>";
                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.NEWSUMPERCOLOR + "\"> " + value.NEWSUMPER + " </span></td>";
                                                                                                                                            valData += "</tr>";
                                                                                                                                        });
                                                                                                                                        $("#divBindTab4t1Table").append(valData);
                                                                                                                                        globalAjaxVar = $.ajax({
                                                                                                                                            type: "POST",
                                                                                                                                            url: "../ws/ServiceMain.svc/AgreementTab4t1",
                                                                                                                                            data: '{"yr":"' + $("#agreementTab4t1SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab4t1SelectYearHalf option:selected").val() + '", "gazarid":"9915", "heltesid":"9939"}',
                                                                                                                                            contentType: "application/json; charset=utf-8",
                                                                                                                                            dataType: "json",
                                                                                                                                            success: function (data) {
                                                                                                                                                valData = '';
                                                                                                                                                $($.parseJSON(data.d)).each(function (index, value) {
                                                                                                                                                    valData += "<tr>";
                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.ROWNO + "</td>";
                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.NEGJ + "</td>";
                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.POS_NAME + "</td>";
                                                                                                                                                    //valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.MOVE_NAME + "</td>";
                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.STAFFNAME + "</td>";
                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIIT_PLANCNT + "</td>";
                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB3PLANCNT + "</td>";
                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIITOTHER_PERAVG + "</td>";
                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PLANCNT + "</td>";
                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PERAVG + "</td>";
                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB2PLANCNT + "</td>";
                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + (parseFloat(value.TAB2PER1AVG) + parseFloat(value.TAB2PERIRTS) + parseFloat(value.TAB2PERHAMT)).toFixed(1) + "</td>";
                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.SUMPERCOLOR + "\"> " + value.SUMPER + " </span></td>";
                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.NEWSUMPERCOLOR + "\"> " + value.NEWSUMPER + " </span></td>";
                                                                                                                                                    valData += "</tr>";
                                                                                                                                                });
                                                                                                                                                $("#divBindTab4t1Table").append(valData);
                                                                                                                                                globalAjaxVar = $.ajax({
                                                                                                                                                    type: "POST",
                                                                                                                                                    url: "../ws/ServiceMain.svc/AgreementTab4t1",
                                                                                                                                                    data: '{"yr":"' + $("#agreementTab4t1SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab4t1SelectYearHalf option:selected").val() + '", "gazarid":"9913", "heltesid":"9942"}',
                                                                                                                                                    contentType: "application/json; charset=utf-8",
                                                                                                                                                    dataType: "json",
                                                                                                                                                    success: function (data) {
                                                                                                                                                        valData = '';
                                                                                                                                                        $($.parseJSON(data.d)).each(function (index, value) {
                                                                                                                                                            valData += "<tr>";
                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.ROWNO + "</td>";
                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.NEGJ + "</td>";
                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.POS_NAME + "</td>";
                                                                                                                                                            //valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.MOVE_NAME + "</td>";
                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.STAFFNAME + "</td>";
                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIIT_PLANCNT + "</td>";
                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB3PLANCNT + "</td>";
                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIITOTHER_PERAVG + "</td>";
                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PLANCNT + "</td>";
                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PERAVG + "</td>";
                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB2PLANCNT + "</td>";
                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + (parseFloat(value.TAB2PER1AVG) + parseFloat(value.TAB2PERIRTS) + parseFloat(value.TAB2PERHAMT)).toFixed(1) + "</td>";
                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.SUMPERCOLOR + "\"> " + value.SUMPER + " </span></td>";
                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.NEWSUMPERCOLOR + "\"> " + value.NEWSUMPER + " </span></td>";
                                                                                                                                                            valData += "</tr>";
                                                                                                                                                        });
                                                                                                                                                        $("#divBindTab4t1Table").append(valData);
                                                                                                                                                        globalAjaxVar = $.ajax({
                                                                                                                                                            type: "POST",
                                                                                                                                                            url: "../ws/ServiceMain.svc/AgreementTab4t1",
                                                                                                                                                            data: '{"yr":"' + $("#agreementTab4t1SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab4t1SelectYearHalf option:selected").val() + '", "gazarid":"9913", "heltesid":"9941"}',
                                                                                                                                                            contentType: "application/json; charset=utf-8",
                                                                                                                                                            dataType: "json",
                                                                                                                                                            success: function (data) {
                                                                                                                                                                valData = '';
                                                                                                                                                                $($.parseJSON(data.d)).each(function (index, value) {
                                                                                                                                                                    valData += "<tr>";
                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.ROWNO + "</td>";
                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.NEGJ + "</td>";
                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.POS_NAME + "</td>";
                                                                                                                                                                    //valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.MOVE_NAME + "</td>";
                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.STAFFNAME + "</td>";
                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIIT_PLANCNT + "</td>";
                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB3PLANCNT + "</td>";
                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIITOTHER_PERAVG + "</td>";
                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PLANCNT + "</td>";
                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PERAVG + "</td>";
                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB2PLANCNT + "</td>";
                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + (parseFloat(value.TAB2PER1AVG) + parseFloat(value.TAB2PERIRTS) + parseFloat(value.TAB2PERHAMT)).toFixed(1) + "</td>";
                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.SUMPERCOLOR + "\"> " + value.SUMPER + " </span></td>";
                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.NEWSUMPERCOLOR + "\"> " + value.NEWSUMPER + " </span></td>";
                                                                                                                                                                    valData += "</tr>";
                                                                                                                                                                });
                                                                                                                                                                $("#divBindTab4t1Table").append(valData);
                                                                                                                                                                globalAjaxVar = $.ajax({
                                                                                                                                                                    type: "POST",
                                                                                                                                                                    url: "../ws/ServiceMain.svc/AgreementTab4t1",
                                                                                                                                                                    data: '{"yr":"' + $("#agreementTab4t1SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab4t1SelectYearHalf option:selected").val() + '", "gazarid":"9948", "heltesid":"9949"}',
                                                                                                                                                                    contentType: "application/json; charset=utf-8",
                                                                                                                                                                    dataType: "json",
                                                                                                                                                                    success: function (data) {
                                                                                                                                                                        valData = '';
                                                                                                                                                                        $($.parseJSON(data.d)).each(function (index, value) {
                                                                                                                                                                            valData += "<tr>";
                                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.ROWNO + "</td>";
                                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.NEGJ + "</td>";
                                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.POS_NAME + "</td>";
                                                                                                                                                                            //valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.MOVE_NAME + "</td>";
                                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.STAFFNAME + "</td>";
                                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIIT_PLANCNT + "</td>";
                                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB3PLANCNT + "</td>";
                                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIITOTHER_PERAVG + "</td>";
                                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PLANCNT + "</td>";
                                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PERAVG + "</td>";
                                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB2PLANCNT + "</td>";
                                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + (parseFloat(value.TAB2PER1AVG) + parseFloat(value.TAB2PERIRTS) + parseFloat(value.TAB2PERHAMT)).toFixed(1) + "</td>";
                                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.SUMPERCOLOR + "\"> " + value.SUMPER + " </span></td>";
                                                                                                                                                                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.NEWSUMPERCOLOR + "\"> " + value.NEWSUMPER + " </span></td>";
                                                                                                                                                                            valData += "</tr>";
                                                                                                                                                                        });
                                                                                                                                                                        $("#divBindTab4t1Table").append(valData);
                                                                                                                                                                        globalAjaxVar = $.ajax({
                                                                                                                                                                            type: "POST",
                                                                                                                                                                            url: "../ws/ServiceMain.svc/AgreementTab4t1",
                                                                                                                                                                            data: '{"yr":"' + $("#agreementTab4t1SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab4t1SelectYearHalf option:selected").val() + '", "gazarid":"9948", "heltesid":"9950"}',
                                                                                                                                                                            contentType: "application/json; charset=utf-8",
                                                                                                                                                                            dataType: "json",
                                                                                                                                                                            success: function (data) {
                                                                                                                                                                                valData = '';
                                                                                                                                                                                $($.parseJSON(data.d)).each(function (index, value) {
                                                                                                                                                                                    valData += "<tr>";
                                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.ROWNO + "</td>";
                                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.NEGJ + "</td>";
                                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.POS_NAME + "</td>";
                                                                                                                                                                                    //valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.MOVE_NAME + "</td>";
                                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.STAFFNAME + "</td>";
                                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIIT_PLANCNT + "</td>";
                                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB3PLANCNT + "</td>";
                                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIITOTHER_PERAVG + "</td>";
                                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PLANCNT + "</td>";
                                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PERAVG + "</td>";
                                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB2PLANCNT + "</td>";
                                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + (parseFloat(value.TAB2PER1AVG) + parseFloat(value.TAB2PERIRTS) + parseFloat(value.TAB2PERHAMT)).toFixed(1) + "</td>";
                                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.SUMPERCOLOR + "\"> " + value.SUMPER + " </span></td>";
                                                                                                                                                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.NEWSUMPERCOLOR + "\"> " + value.NEWSUMPER + " </span></td>";
                                                                                                                                                                                    valData += "</tr>";
                                                                                                                                                                                });
                                                                                                                                                                                $("#divBindTab4t1Table").append(valData);
                                                                                                                                                                                hideLoader('loaderTab4t1');
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
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    });
    ///tab4t1 end

    //таб4т2
    $("#agreementTab4t2SelectYear, #agreementTab4t2SelectYearHalf").change(function () {
        dataBindTab4t2DataTable();
    });
    function dataBindTab4t2DataTable() {
        var valData = '';
        showLoader('loaderTab4t2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AgreementTab4t2",
            data: '{"yr":"' + $("#agreementTab4t2SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab4t2SelectYearHalf option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.ROWNO + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.NEGJ + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.POS_NAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left; vertical-align:top;\">" + value.STAFFNAME + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.NIIT_PLANCNT + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB3PLANCNT + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + parseFloat(value.NIITOTHER_PERAVG).toFixed(3) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TUSGAI_PLANCNT + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + parseFloat(value.TUSGAI_PERAVG).toFixed(3) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + value.TAB2PLANCNT + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">" + (parseFloat(value.TAB2PER1AVG) + parseFloat(value.TAB2PERIRTS) + parseFloat(value.TAB2PERHAMT)).toFixed(3) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\"><span class=\"badge " + value.SUMPERCOLOR + "\"> " + parseFloat(value.SUMPER).toFixed(3) + " </span></td>";
                    valData += "</tr>";
                });
                $("#divBindTab4t2Table").html(valData);
                $('#agreementTab4t2Lbl1').html($('#agreementTab4t2SelectYear option:selected').val() + ' оны ' + $('#agreementTab4t2SelectYearHalf option:selected').text() + '');
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


    ///tab5t1 begin
    function dataBindTab5t1DataTable() {
        var valData = '';
        var isDisabled = " disabled=\"disabled\"";
        showLoader('loaderTab5t1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AgreementTab5t1",
            data: '{"yr":"' + $("#agreementTab5t1SelectYear option:selected").val() + '", "yrhf":"' + $("#agreementTab5t1SelectYearHalf option:selected").val() + '", "gazar":"' + $("#agreementTab5t1SelectBranchGazar option:selected").val() + '", "heltes":"' + $("#agreementTab5t1SelectBranchHeltes option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (funcCheckRoles('1')) {
                    isDisabled = '';
                }
                valData = "<table id=\"agreementTab5t1Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Нэгж</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Албан тушаал</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Нэр</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.STAFFS_ID + "\">";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td>" + value.NEGJ + "</td>";
                    valData += "<td>" + value.POS_NAME + "</td>";
                    valData += "<td>" + value.STAFFNAME + "</td>";
                    valData += "<td><label class=\"checkbox-inline" + value.ISAGREEMENTSUBMIT + "\"><input" + isDisabled + " type=\"checkbox\" class=\"checkbox style-0\" " + value.ISSUBMIT + " onclick=\"agreementTab5t1Submit(this)\"><span></span></label></td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_agreementTab5t1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#agreementTab5t1Datatable').dataTable({\"bSort\": false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_agreementTab5t1Datatable) {responsiveHelper_agreementTab5t1Datatable = new ResponsiveDatatablesHelper($('#agreementTab5t1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_agreementTab5t1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_agreementTab5t1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"30px\" },null,null,null, { \"sWidth\": \"15px\" }]});";
                valData += "<\/script>";
                $("#divBindTab5t1Table").html(valData);
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
    $("#agreementTab5t1SelectBranchGazar").change(function () {
        var valData = '';
        if ($("#agreementTab5t1SelectBranchGazar option:selected").val() == "") {
            $("#agreementTab5t1SelectBranchHeltes").html("<option selected value=\"\">Бүгд</option>");
            $("#agreementTab5t1SelectBranchHeltes").prop("disabled", true);
            dataBindTab5t1DataTable();
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr":"' + $('#indexCurrentYear').html() + '", "gazar":"' + $("#agreementTab5t1SelectBranchGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    });
                    $("#agreementTab5t1SelectBranchHeltes").html('<option value="">Бүгд</option>' + valData);
                    $("#agreementTab5t1SelectBranchHeltes").prop("disabled", false);
                    dataBindTab5t1DataTable();
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
    $("#agreementTab5t1SelectBranchHeltes, #agreementTab5t1SelectYear, #agreementTab5t1SelectYearHalf").change(function () {
        dataBindTab5t1DataTable();
    });
    function agreementTab5t1Submit(el) {
        if ($(el).prop('checked')) {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                data: '{"qry":"INSERT INTO TBL_AGREEMENTSUBMITSTAFF (YR, HFYR, ST_ID) VALUES (' + $('#agreementTab5t1SelectYear option:selected').val() + ', ' + $('#agreementTab5t1SelectYearHalf option:selected').val() + ', ' + $(el).closest('tr').attr('data-id') + ')"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    smallBox('Ажилтны үр дүнгийн гэрээ', 'Амжилттай батлагдлаа...', '#659265', 3000);
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
                data: '{"qry":"DELETE FROM TBL_AGREEMENTSUBMITSTAFF WHERE YR=' + $('#agreementTab5t1SelectYear option:selected').val() + ' AND HFYR=' + $('#agreementTab5t1SelectYearHalf option:selected').val() + ' AND ST_ID=' + $(el).closest('tr').attr('data-id') + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    smallBox('Ажилтны үр дүнгийн гэрээ', 'Амжилттай цуцлагдлаа...', '#659265', 3000);
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
    ///tab5t1 end

    ///tab5t2 begin
    $("#agreementTab5t2SelectYear, #agreementTab5t2SelectYearHalf").change(function () {
        showLoader('loaderTab5t2');
        dataBindTab5t2DataTable();
    });
    function dataBindTab5t2DataTable() {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_AGREEMENTSUBMIT WHERE YR=' + $('#agreementTab5t2SelectYear option:selected').val() + ' AND HFYR=' + $('#agreementTab5t2SelectYearHalf option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == '0') {
                    $('#agreementTab5t2Radio1').prop('checked', false);
                    $('#agreementTab5t2Radio0').prop('checked', true);
                }
                else {
                    $('#agreementTab5t2Radio1').prop('checked', true);
                    $('#agreementTab5t2Radio0').prop('checked', false);
                }
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
    $('input[name="agreementTab5t2Radio"]').click(function () {
        if ($(this).val() == '1') {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                data: '{"qry":"INSERT INTO TBL_AGREEMENTSUBMIT (YR, HFYR) VALUES (' + $('#agreementTab5t2SelectYear option:selected').val() + ', ' + $('#agreementTab5t2SelectYearHalf option:selected').val() + ')"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    smallBox('Нийт Ажилтны үр дүнгийн гэрээ', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                data: '{"qry":"DELETE FROM TBL_AGREEMENTSUBMIT WHERE YR=' + $('#agreementTab5t2SelectYear option:selected').val() + ' AND HFYR=' + $('#agreementTab5t2SelectYearHalf option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    smallBox('Нийт Ажилтны үр дүнгийн гэрээ', 'Амжилттай цуцлагдлаа...', '#659265', 3000);
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
    ///tab5t2 end

    ///tab5t3 begin
    function dataBindTab5t3DataTable() {
        var valData = '';
        var isDisabled = " disabled=\"disabled\"";
        showLoader('loaderTab5t3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/AgreementTab5t3",
            data: '{"yr":"' + $("#agreementTab5t3SelectYear option:selected").val() + '", "gazar":"' + $("#agreementTab5t3SelectBranchGazar option:selected").val() + '", "heltes":"' + $("#agreementTab5t3SelectBranchHeltes option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                if (funcCheckRoles('1,3,5')) {
                    isDisabled = '';
                }
                valData = "<table id=\"agreementTab5t3Datatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th rowspan=\"2\" class=\"text-center\" style=\"vertical-align:middle;\">#</th>";
                valData += "<th rowspan=\"2\" class=\"text-center\" style=\"vertical-align:middle;\">Нэгж</th>";
                valData += "<th rowspan=\"2\" class=\"text-center\" style=\"vertical-align:middle;\">Албан тушаал</th>";
                valData += "<th rowspan=\"2\" class=\"text-center\" style=\"vertical-align:middle;\">Нэр</th>";
                valData += "<th colspan=\"4\" class=\"text-center\" style=\"vertical-align:middle;\">Ажил үйлчилгээ</th>";
                valData += "<th rowspan=\"2\" class=\"text-center\" style=\"vertical-align:middle;\">Мэдлэг чадвар</th>";
                valData += "<th rowspan=\"2\" class=\"text-center\" style=\"vertical-align:middle;\">&nbsp;</th>";
                valData += "</tr>";
                valData += "<tr>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Нийт</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Тусгай</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Дотоод</th>";
                valData += "<th class=\"text-center\" style=\"vertical-align:middle;\">Бусад</th>";
                valData += "</tr>";
                valData += "</thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (value.ISSPECIAL0CNT == '0' || value.ISSPECIAL1CNT == '0' || value.SKILLCNT == '0') {
                        if (isDisabled == '') " disabled=\"disabled\"";
                    }
                    valData += "<tr data-id=\"" + value.STAFFS_ID + "\">";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td>" + value.NEGJ + "</td>";
                    valData += "<td>" + value.POS_NAME + "</td>";
                    valData += "<td>" + value.STAFFNAME + "</td>";
                    if (value.ISSPECIAL0CNT == '0') valData += "<td class=\"text-center\" style=\"background-color: #f2dede;\">" + value.ISSPECIAL0CNT + "</td>";
                    else valData += "<td class=\"text-center\" style=\"background-color: #dff0d8;\">" + value.ISSPECIAL0CNT + "</td>";
                    if (value.ISSPECIAL1CNT == '0') valData += "<td class=\"text-center\" style=\"background-color: #f2dede;\">" + value.ISSPECIAL1CNT + "</td>";
                    else valData += "<td class=\"text-center\" style=\"background-color: #dff0d8;\">" + value.ISSPECIAL1CNT + "</td>";
                    valData += "<td class=\"text-center\">" + value.ISLOCALCNT + "</td>";
                    valData += "<td class=\"text-center\">" + value.OTHERCNT + "</td>";
                    if (value.SKILLCNT == '0') valData += "<td class=\"text-center\" style=\"background-color: #f2dede;\">" + value.SKILLCNT + "</td>";
                    else valData += "<td class=\"text-center\" style=\"background-color: #dff0d8;\">" + value.SKILLCNT + "</td>";
                    valData += "<td>";
                    if (isDisabled == '') {
                        if (value.ISSPECIAL0CNT != '0' && value.ISSPECIAL1CNT != '0' && value.SKILLCNT != '0') {
                            valData += "<label class=\"checkbox-inline\"><input" + isDisabled + " type=\"checkbox\" class=\"checkbox style-0\" " + value.ISSUBMIT + " onclick=\"agreementTab5t3Submit(this)\"><span></span></label>";
                        }
                    }
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_agreementTab5t3Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#agreementTab5t3Datatable').dataTable({\"bSort\": false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_agreementTab5t3Datatable) {responsiveHelper_agreementTab5t3Datatable = new ResponsiveDatatablesHelper($('#agreementTab5t3Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_agreementTab5t3Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_agreementTab5t3Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"30px\" },null,null,null,{ \"sWidth\": \"50px\" },{ \"sWidth\": \"50px\" },{ \"sWidth\": \"50px\" },{ \"sWidth\": \"50px\" },{ \"sWidth\": \"50px\" }, { \"sWidth\": \"15px\" }]});";
                valData += "<\/script>";
                $("#divBindTab5t3Table").html(valData);
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
    $("#agreementTab5t3SelectBranchGazar").change(function () {
        var valData = '';
        if ($("#agreementTab5t3SelectBranchGazar option:selected").val() == "") {
            $("#agreementTab5t3SelectBranchHeltes").html("<option selected value=\"\">Бүгд</option>");
            $("#agreementTab5t3SelectBranchHeltes").prop("disabled", true);
            dataBindTab5t3DataTable();
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr":"' + $('#indexCurrentYear').html() + '", "gazar":"' + $("#agreementTab5t3SelectBranchGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    });
                    $("#agreementTab5t3SelectBranchHeltes").html('<option value="">Бүгд</option>' + valData);
                    $("#agreementTab5t3SelectBranchHeltes").prop("disabled", false);
                    dataBindTab5t3DataTable();
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
    $("#agreementTab5t3SelectBranchHeltes, #agreementTab5t3SelectYear").change(function () {
        dataBindTab5t3DataTable();
    });
    function agreementTab5t3Submit(el) {
        if ($(el).prop('checked')) {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                data: '{"qry":"INSERT INTO TBL_AGREEMENTSUBMITST (YR, ST_ID) VALUES (' + $('#agreementTab5t3SelectYear option:selected').val() + ', ' + $(el).closest('tr').attr('data-id') + ')"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    smallBox('Ажилтны үр дүнгийн гэрээ', 'Амжилттай батлагдлаа...', '#659265', 3000);
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
                data: '{"qry":"DELETE FROM TBL_AGREEMENTSUBMITST WHERE YR=' + $('#agreementTab5t3SelectYear option:selected').val() + ' AND ST_ID=' + $(el).closest('tr').attr('data-id') + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    smallBox('Ажилтны үр дүнгийн гэрээ', 'Амжилттай цуцлагдлаа...', '#659265', 3000);
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
    ///tab5t3 end
</script>
