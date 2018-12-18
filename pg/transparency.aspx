<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="transparency.aspx.cs" Inherits="LMWebApp.pg.transparency" %>
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    <h1 class="page-title txt-color-blueDark" style="margin-bottom:12px;">
        <i class="fa-fw fa fa-home"></i> > 
        <span id="pageUrlModuleName" runat="server" style="text-transform:uppercase;">Ил тод, нээлттэй байдал</span>
    </h1>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
            <ul class="nav nav-tabs bordered">
                <li id="pTab1Li" runat="server" class="active" onclick="pDatabindTabs(this)" style="width:175px; text-align:center;">
                    <a data-toggle="tab" href="#pTab1" style=" color: #826430; background-color: #efe1b3;">
                        <i class="fa fa-fw fa-lg fa-list-ul"></i>
                        Төлөвлөгөө
                    </a>
                </li>
                <li id="pTab2Li" runat="server" onclick="pDatabindTabs(this)" style="width:175px; text-align:center; display:none;">
                    <a data-toggle="tab" href="#pTab2" style="color: #356635; background-color: #cde0c4;">
                        <i class="fa fa-fw fa-lg fa-edit"></i>
                        Биелэлт 
                    </a>
                </li>                
                <li id="pTab3Li" runat="server" onclick="pDatabindTabs(this)" style="width:175px; text-align:center;">
                    <a data-toggle="tab" href="#pTab3" style="color: #305d8c; background-color: #d6dde7;">
                        <i class="fa fa-fw fa-lg fa-file-text "></i>
                        Тайлан 
                    </a>
                </li>
                <li id="pTab4Li" runat="server" onclick="pDatabindTabs(this)" style="width:175px; text-align:center;">
                    <a data-toggle="tab" href="#pTab4" style="background-color: #3276b1; color: #FFF;">
                        <i class="glyphicon glyphicon-stats"></i>
                        Үнэлгээ
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <div id="pTab1" runat="server" class="tab-pane active">
                    <ul class="nav nav-tabs bordered">
                        <li id="pTab1t1Li" runat="server" onclick="pDatabindTabs(this)" class="pull-right">
                            <a data-toggle="tab" href="#pTab1t1"><i class="fa fa-fw fa-lg fa-list-ul"></i>Төлөвлөгөөний төрөл</a>
                        </li>
                        <li id="pTab1t2Li" runat="server" onclick="pDatabindTabs(this)" class="active">
                            <a data-toggle="tab" href="#pTab1t2"><i class="fa fa-fw fa-lg fa-list-ul"></i>Төлөвлөгөө</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="pTab1t1" class="tab-pane">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-list-ul"></i></span>
                                    <h2>Төлөвлөгөөний төрөл</h2>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div class="Colvis TableTools"  style="right:130px; top:8px; z-index:5;">
                                        <button id="pTab1t1Add" runat="server" class="btn btn btn-primary btn-xs" data-target="#pTab1t1Modal" data-toggle="modal" onclick="showAddEditTab1t1(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
                                    <div class="Colvis TableTools" style="left:240px; top:0px; z-index:5; margin-top:2px;">
                                        <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa-pencil"></i></a> Мэдээлэл засварлах<br />
                                        <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa fa-trash-o"></i></a> Мэдээлэл устгах
                                    </div>
                                    <div id="loaderTab1t1" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div id="divBindTab1t1Table" class="widget-body no-padding">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab1t2" class="tab-pane active">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-list-ul"></i></span>
                                    <h2>Төлөвлөгөө</h2>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div class="Colvis TableTools"  style="right:540px; top:8px; z-index:5;">
                                        <button id="pTab1t2Add" runat="server" class="btn btn btn-primary btn-xs" data-target="#pTab1t2Modal" data-toggle="modal" onclick="showAddEditTab1t2(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
                                    <div class="Colvis TableTools" style="left:240px; top:0px; z-index:5; margin-top:2px;">
                                        <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa-pencil"></i></a> Мэдээлэл засварлах<br />
                                        <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa fa-trash-o"></i></a> Мэдээлэл устгах
                                    </div>
                                    <div class="Colvis TableTools" style="right:128px; top:4px; z-index:5; margin-top:3px; width:80px;">
                                        <select id="pTab1t2SelectGazar" class="form-control" style="padding:0 0;"><option value="">Бүгд</option></select>
                                    </div>
                                    <div class="Colvis TableTools" style="right:215px; top:4px; z-index:5; margin-top: 3px;line-height: 14px;text-align: right;"><label>Хариуцах<br />газар: </label></div>
                                    <div class="Colvis TableTools" style="right:285px; top:4px; z-index:5; margin-top:3px; width:200px;">
                                        <select id="pTab1t2SelectType" class="form-control" style="padding:0 0;"><option value="">Бүгд</option></select>
                                    </div>
                                    <div class="Colvis TableTools" style="right:490px; z-index:5; margin-top: 3px;line-height: 14px;text-align: right;"><label>Төрөл:</label></div>
                                    <div id="loaderTab1t2" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div id="divBindTab1t2Table" class="widget-body no-padding">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="pTab2" runat="server" class="tab-pane">

                </div>
                <div id="pTab3" runat="server" class="tab-pane">
                    <ul class="nav nav-tabs bordered">
                        <li id="pTab3t1Li" runat="server" onclick="pDatabindTabs(this)" class="active">
                            <a data-toggle="tab" href="#pTab3t1">Хэрэгжилт (газруудаар)</a>
                        </li>
                        <li id="pTab3t2Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab3t2">Байршуулсан мэдээлэл</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="pTab3t1" class="tab-pane active">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab3t1SelectYr" runat="server" class="form-control" style="padding:1px">
                                                
                                            </select>
                                        </div>
                                        <div style="width:70px; float:left; margin-right:10px;">
                                            <select id="pTab3t1SelectMnth" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">1 сар</option>
                                                <option value="2">2 сар</option>
                                                <option value="3">3 сар</option>
                                                <option value="4">4 сар</option>
                                                <option value="5">5 сар</option>
                                                <option value="6">6 сар</option>
                                                <option value="7">7 сар</option>
                                                <option value="8">8 сар</option>
                                                <option value="9">9 сар</option>
                                                <option value="10">10 сар</option>
                                                <option value="11">11 сар</option>
                                                <option value="12">12 сар</option>
                                            </select>
                                        </div>
                                        <div style="width:4px; float:left; margin-right:10px; padding-top:7px;">-</div>
                                        <div style="width:70px; float:left; margin-right:10px;">
                                            <select id="pTab3t1SelectMnth2" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">1 сар</option>
                                                <option value="2">2 сар</option>
                                                <option value="3">3 сар</option>
                                                <option value="4">4 сар</option>
                                                <option value="5">5 сар</option>
                                                <option value="6">6 сар</option>
                                                <option value="7">7 сар</option>
                                                <option value="8">8 сар</option>
                                                <option value="9">9 сар</option>
                                                <option value="10">10 сар</option>
                                                <option value="11">11 сар</option>
                                                <option value="12">12 сар</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab3t1', 'Хэрэгжилт(газруудаар)')">
                                                <i class="fa fa-file-word-o"></i>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab3t1')">
                                                <i class="fa fa-print"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="loaderTab3t1" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divpTab3t1" class="reports" style="margin:0 10px 10px 10px;">
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                        <label id="pTab3t1Yr" style="font-weight: bold;"></label> 
                                        ОНЫ 
                                        <label id="pTab3t1Mnth" style="font-weight: bold;"></label> 
                                        САРЫН ТӨЛӨВЛӨГӨӨНИЙ ХЭРЭГЖИЛТ
                                    </div>
                                    <div id="divBindTab3t1Table"></div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab3t2" class="tab-pane">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab3t2SelectYr" runat="server" class="form-control" style="padding:1px">
                                                
                                            </select>
                                        </div>
                                        <div style="width:70px; float:left; margin-right:10px;">
                                            <select id="pTab3t2SelectMnth" runat="server" class="form-control" style="padding:1px">
                                                <option value="1">1 сар</option>
                                                <option value="2">2 сар</option>
                                                <option value="3">3 сар</option>
                                                <option value="4">4 сар</option>
                                                <option value="5">5 сар</option>
                                                <option value="6">6 сар</option>
                                                <option value="7">7 сар</option>
                                                <option value="8">8 сар</option>
                                                <option value="9">9 сар</option>
                                                <option value="10">10 сар</option>
                                                <option value="11">11 сар</option>
                                                <option value="12">12 сар</option>
                                            </select>
                                        </div>
                                        <div style="width:30px; float:left; margin-right:10px; padding-top:7px;">Газар:&nbsp;</div>
                                        <div style="width:80px; float:left; margin-right:10px;">
                                            <select name="pTab3t2SelectGazar" id="pTab3t2SelectGazar" class="form-control" style="padding:1px">
	                                            <option value="">Бүгд</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab3t2', 'Байршуулсан мэдээлэл')">
                                                <i class="fa fa-file-word-o"></i>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab3t2')">
                                                <i class="fa fa-print"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="loaderTab3t2" class="search-background">
                                    <img width="64" height="" src="img/loading.gif"/>
                                    <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                </div>
                                <div id="divpTab3t2" class="reports" style="margin:0 10px 10px 10px;">
                                    <div style="text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 10px; text-transform: uppercase; line-height: 20px;">
                                        <label id="pTab3t2Yr" style="font-weight: bold;"></label> 
                                        ОНЫ 
                                        <label id="pTab3t2Mnth" style="font-weight: bold;"></label> 
                                        САРЫН БАЙРШУУЛСАН МЭДЭЭЛЭЛ
                                    </div>
                                    <div id="divBindTab3t2Table"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="pTab4" runat="server" class="tab-pane">
                    <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"><i class="fa fa-list-ul"></i></span>
                            <h2>Үнэлгээ</h2>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div class="Colvis TableTools" style="left:240px; top:0px; z-index:5; margin-top:2px;">
                                <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa-pencil"></i></a> Мэдээлэл засварлах<br />
                                <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa fa-trash-o"></i></a> Мэдээлэл устгах
                            </div>
                            <div class="Colvis TableTools" style="right:128px; top:4px; z-index:5; margin-top:3px; width:80px;">
                                <select id="pTab4SelectGazar" class="form-control" style="padding:0 0;"><option value="">Бүгд</option></select>
                            </div>
                            <div class="Colvis TableTools" style="right:215px; top:4px; z-index:5; margin-top: 3px;line-height: 14px;text-align: right;"><label>Хариуцах<br />газар: </label></div>
                            <div class="Colvis TableTools" style="right:285px; top:4px; z-index:5; margin-top:3px; width:200px;">
                                <select id="pTab4SelectType" class="form-control" style="padding:0 0;"><option value="">Бүгд</option></select>
                            </div>
                            <div class="Colvis TableTools" style="right:490px; z-index:5; margin-top: 3px;line-height: 14px;text-align: right;"><label>Төрөл:</label></div>
                            <div class="Colvis TableTools" style="right:540px; top:4px; z-index:5; margin-top:3px; width:65px;">
                                <select id="pTab4SelectMnth" runat="server" class="form-control" style="padding:0 0;">
                                    <option value="1">1 сар</option>
                                    <option value="2">2 сар</option>
                                    <option value="3">3 сар</option>
                                    <option value="4">4 сар</option>
                                    <option value="5">5 сар</option>
                                    <option value="6">6 сар</option>
                                    <option value="7">7 сар</option>
                                    <option value="8">8 сар</option>
                                    <option value="9">9 сар</option>
                                    <option value="10">10 сар</option>
                                    <option value="11">11 сар</option>
                                    <option value="12">12 сар</option>
                                </select>
                            </div>
                            <div class="Colvis TableTools" style="right:615px; top:4px; z-index:5; margin-top:3px; width:55px;">
                                <select id="pTab4SelectYr" runat="server" class="form-control" style="padding:0 0;">
                                    
                                </select>
                            </div>
                            <div id="loaderTab4" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="divBindTab4Table" class="widget-body no-padding">
                                        
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </article>
    </div>
</section>
<div id="pTab1t1Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="pTab1t1ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Төлөвлөгөөний төрөл&nbsp;<span id="pTab1t1ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pTab1t1ModalID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Нэр</label>
									<textarea id="pTab1t1ModalInputName" name="pTab1t1ModalInputName" class="form-control" required="" placeholder="Нэр" rows="2"></textarea>
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
<div id="pTab1t2Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="pTab1t2ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Төлөвлөгөө&nbsp;<span id="pTab1t2ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pTab1t2ModalID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Төрөл</label>
									<select id="pTab1t2ModalSelectType" name="pTab1t2ModalSelectType" class="form-control"><option value="">- Сонго -</option></select>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Нэр</label>
									<textarea id="pTab1t2ModalInputName" name="pTab1t2ModalInputName" class="form-control" required="" placeholder="Нэр" rows="2"></textarea>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Хариуцах газар</label>
                                    <div id="pTab1T2ModalDivSelect2Gazar">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <label class="col-md-1 control-label">*Сар:</label>
                                <div class="col-md-11">
                                    <label class="checkbox-inline no-margin">
										<input type="checkbox" class="checkbox" id="pTab1t2ModalInputMnth1" name="pTab1t2ModalInputMnth" value="1">
										<span>1</span> 											
									</label>
                                    <label class="checkbox-inline no-margin">
										<input type="checkbox" class="checkbox" id="pTab1t2ModalInputMnth2" name="pTab1t2ModalInputMnth" value="2">
										<span>2</span> 											
									</label>
                                    <label class="checkbox-inline no-margin">
										<input type="checkbox" class="checkbox" id="pTab1t2ModalInputMnth3" name="pTab1t2ModalInputMnth" value="3">
										<span>3</span> 											
									</label>
                                    <label class="checkbox-inline no-margin">
										<input type="checkbox" class="checkbox" id="pTab1t2ModalInputMnth4" name="pTab1t2ModalInputMnth" value="4">
										<span>4</span> 											
									</label>
                                    <label class="checkbox-inline no-margin">
										<input type="checkbox" class="checkbox" id="pTab1t2ModalInputMnth5" name="pTab1t2ModalInputMnth" value="5">
										<span>5</span> 											
									</label>
                                    <label class="checkbox-inline no-margin">
										<input type="checkbox" class="checkbox" id="pTab1t2ModalInputMnth6" name="pTab1t2ModalInputMnth" value="6">
										<span>6</span> 											
									</label>
                                    <label class="checkbox-inline no-margin">
										<input type="checkbox" class="checkbox" id="pTab1t2ModalInputMnth7" name="pTab1t2ModalInputMnth" value="7">
										<span>7</span> 											
									</label>
                                    <label class="checkbox-inline no-margin">
										<input type="checkbox" class="checkbox" id="pTab1t2ModalInputMnth8" name="pTab1t2ModalInputMnth" value="8">
										<span>8</span> 											
									</label>
                                    <label class="checkbox-inline no-margin">
										<input type="checkbox" class="checkbox" id="pTab1t2ModalInputMnth9" name="pTab1t2ModalInputMnth" value="9">
										<span>9</span> 											
									</label>
                                    <label class="checkbox-inline no-margin">
										<input type="checkbox" class="checkbox" id="pTab1t2ModalInputMnth10" name="pTab1t2ModalInputMnth" value="10">
										<span>10</span> 											
									</label>
                                    <label class="checkbox-inline no-margin">
										<input type="checkbox" class="checkbox" id="pTab1t2ModalInputMnth11" name="pTab1t2ModalInputMnth" value="11">
										<span>11</span> 											
									</label>
                                    <label class="checkbox-inline no-margin">
										<input type="checkbox" class="checkbox" id="pTab1t2ModalInputMnth12" name="pTab1t2ModalInputMnth" value="12">
										<span>12</span> 											
									</label>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">Тавигдах шаардлага <small><em>/Хэрэгжүүлэх эцсийн хугацаа/</em></small></label>
                                    <input id="pTab1t2ModalInputRequirment" name="pTab1t2ModalInputRequirment" class="form-control" type="text"/>
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
        var valData = '';
        var valLiId = $('#pTab1Li').closest('ul').find('.active').attr('id');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL_MySQL",
            data: '{}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.ID + '" title="' + value.group_name + '">' + value.init_name + '</option>';
                });
                $("#pTab1t2SelectGazar").html('<option value="">Бүгд</option>' + valData);
                $("#pTab3t2SelectGazar").html('<option value="">Бүгд</option>' + valData);
                $("#pTab4SelectGazar").html('<option value="">Бүгд</option>' + valData);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/TransparencyTypeListForDDL",
                    data: '{}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.ID + '" title="' + value.NAME + '">' + value.NAME + '</option>';
                        });
                        $("#pTab1t2SelectType").html('<option value="">Бүгд</option>' + valData);
                        $("#pTab4SelectType").html('<option value="">Бүгд</option>' + valData);
                        $("#pTab1t2ModalSelectType").html('<option value="">- Сонго -</option>' + valData);
                        if (valLiId == 'pTab1Li') {
                            dataBindTab1t2DataTable();
                        }
                        else if (valLiId == 'pTab3Li') {
                            dataBindTab3t1DataTable();
                        }
                        else if (valLiId == 'pTab4Li') {
                            dataBindTab4DataTable();
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
    var pagedestroy = function () {
        if (globalAjaxVar != null) {
            globalAjaxVar.abort();
            globalAjaxVar = null;
        }
    }
    pagefunction();
    function pDatabindTabs(el) {
        if ($.trim($(el).attr('id')) == 'pTab1Li') {
            if ($.trim($('#divBindTab1t2Table').html()) == "") {
                dataBindTab1t2DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab1t1Li') {
            if ($.trim($('#divBindTab1t1Table').html()) == "") {
                dataBindTab1t1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab1t2Li') {
            if ($.trim($('#divBindTab1t2Table').html()) == "") {
                dataBindTab1t2DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab3Li') {
            if ($.trim($('#divBindTab3t1Table').html()) == "") {
                dataBindTab3t1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab3t1Li') {
            if ($.trim($('#divBindTab3t1Table').html()) == "") {
                dataBindTab3t1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab3t2Li') {
            if ($.trim($('#divBindTab3t2Table').html()) == "") {
                dataBindTab3t2DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab4Li') {
            if ($.trim($('#divBindTab4Table').html()) == "") {
                dataBindTab4DataTable();
            }
        }
    }

    //tab1t1
    function dataBindTab1t1DataTable() {
        var valData = "";
        var valIsEdit = '0';
        var valRowNo = 1;
        showLoader('loaderTab1t1');
        if (funcCheckRoles('1,16')) {
            valIsEdit = '1';
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TransparencyTab1t1Datatable",
            data: '{}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table id=\"pTab1t1Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                valData += "<thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\">#</th>";
                valData += "<th class=\"text-center\">Нэр</th>";
                valData += "<th>&nbsp;</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td>" + valRowNo + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td>";
                    if (valIsEdit == '1') {
                        valData += "<div class=\"btn-group\">";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab1t1(this,'засах');\" data-target=\"#pTab1t1Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab1t1(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                        valData += "</div>";
                    }
                    valData += "</td>";
                    valData += "</tr>";
                    valRowNo++;
                });
                valData += "<script>";
                valData += "var responsiveHelper_pTab1t1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab1t1Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab1t1Datatable) {responsiveHelper_pTab1t1Datatable = new ResponsiveDatatablesHelper($('#pTab1t1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab1t1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab1t1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"25px\" }, null,{ \"sWidth\": \"45px\" }]});";
                valData += "<\/script>";
                $("#divBindTab1t1Table").html(valData);
                hideLoader('loaderTab1t1');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function showAddEditTab1t1(el, isinsupt) {
        var valData = '';
        $('#pTab1t1ModalHeaderLabel').html(isinsupt);
        $('#pTab1t1ModalID').html('');
        $('#pTab1t1ModalInputName').val('');
        if (isinsupt == 'засах') {
            $('#pTab1t1ModalID').text($(el).closest('tr').attr('data-id'));
            $('#pTab1t1ModalInputName').val($(el).closest('tr').find('td:eq(1)').html());
        }
    }
    function showDeleteTab1t1(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/MySqlExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_TRANSPARENCY WHERE TRANSPARENCYTYPE_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') {
                    alert('Сонгосон төрөлд хамааралтай төлөвлөгөө орсон тул устгах боломжгүй байна!');
                }
                else {
                    var valData = '';
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон төлөвлөгөөний төрлийг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/MySqlExecuteNonQuery",
                                data: '{"qry":"DELETE FROM TBL_TRANSPARENCYTYPE WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    globalAjaxVar = $.ajax({
                                        type: "POST",
                                        url: "../ws/ServiceMain.svc/TransparencyTypeListForDDL",
                                        data: '{}',
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function (data) {
                                            valData = '';
                                            $($.parseJSON(data.d)).each(function (index, value) {
                                                valData += '<option value="' + value.ID + '" title="' + value.NAME + '">' + value.NAME + '</option>';
                                            });
                                            $("#pTab1t2SelectType, #pTab4SelectType").html('<option value="">Бүгд</option>' + valData);
                                            $("#pTab1t2ModalSelectType").html('<option value="">- Сонго -</option>' + valData);
                                            $("#divBindTab1t2Table, #divBindTab4Table").html('');
                                            dataBindTab1t1DataTable();
                                            smallBox('Сонгосон төрөл', 'Амжилттай устлаа...', '#659265', 3000);
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
    $('#pTab1t1ModalForm').bootstrapValidator({
        fields: {
            pTab1t1ModalInputName: {
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
            var valData = '';
            e.preventDefault();
            if ($("#pTab1t1ModalHeaderLabel").html() == "нэмэх") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/MySqlExecuteNonQuery",
                    data: '{"qry":"INSERT INTO TBL_TRANSPARENCYTYPE (NAME) VALUES (\'' + replaceDisplayToDatabase($.trim($('#pTab1t1ModalInputName').val())) + '\')"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/TransparencyTypeListForDDL",
                            data: '{}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += '<option value="' + value.ID + '" title="' + value.NAME + '">' + value.NAME + '</option>';
                                });
                                $("#pTab1t2SelectType, #pTab4SelectType").html('<option value="">Бүгд</option>' + valData);
                                $("#pTab1t2ModalSelectType").html('<option value="">- Сонго -</option>' + valData);
                                $("#divBindTab1t2Table, #divBindTab4Table").html('');
                                dataBindTab1t1DataTable();
                                $('#pTab1t1Modal').modal('hide');
                                smallBox('Төрөл', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                    url: "../ws/ServiceMain.svc/MySqlExecuteNonQuery",
                    data: '{"qry":"UPDATE TBL_TRANSPARENCYTYPE SET NAME=\'' + replaceDisplayToDatabase($.trim($('#pTab1t1ModalInputName').val())) + '\' WHERE ID=' + $.trim($('#pTab1t1ModalID').html()) + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/TransparencyTypeListForDDL",
                            data: '{}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += '<option value="' + value.ID + '" title="' + value.NAME + '">' + value.NAME + '</option>';
                                });
                                $("#pTab1t2SelectType, #pTab4SelectType").html('<option value="">Бүгд</option>' + valData);
                                $("#pTab1t2ModalSelectType").html('<option value="">- Сонго -</option>' + valData);
                                $("#divBindTab1t2Table, #divBindTab4Table").html('');
                                dataBindTab1t1DataTable();
                                $('#pTab1t1Modal').modal('hide');
                                smallBox('Төрөл', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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

    //tab1t2
    function dataBindTab1t2DataTable() {
        var valData = "";
        var valIsEdit = '0';
        var valRowNo = 1;
        showLoader('loaderTab1t2');
        if (funcCheckRoles('1,16')) {
            valIsEdit = '1';
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TransparencyTab1t2Datatable",
            data: '{"typeid":"' + $('#pTab1t2SelectType option:selected').val() + '","groupid":"' + $('#pTab1t2SelectGazar option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table id=\"pTab1t2Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                valData += "<thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\">#</th>";
                valData += "<th class=\"text-center\">Төрөл</th>";
                valData += "<th class=\"text-center\">Нэр</th>";
                valData += "<th class=\"text-center\">Хариуцах газар</th>";
                valData += "<th class=\"text-center\">Хэрэгжүүлэх сар</th>";
                valData += "<th class=\"text-center\">Тавигдах шаардлага</th>";
                valData += "<th>&nbsp;</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td>" + valRowNo + "</td>";
                    valData += "<td data-id=\"" + value.TRANSPARENCYTYPE_ID + "\">" + replaceDatabaseToDisplay(value.TRANSPARENCYTYPE_NAME) + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td data-id=\"" + value.GROUPLIST_ID + "\">" + replaceDatabaseToDisplay(value.GROUPLIST_NAME) + "</td>";
                    valData += "<td>" + value.MNTHLIST_ID + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.REQUIRMENT) + "</td>";
                    valData += "<td>";
                    if (valIsEdit == '1') {
                        valData += "<div class=\"btn-group\">";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab1t2(this,'засах');\" data-target=\"#pTab1t2Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab1t2(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                        valData += "</div>";
                    }
                    valData += "</td>";
                    valData += "</tr>";
                    valRowNo++;
                });
                valData += "<script>";
                valData += "var responsiveHelper_pTab1t2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab1t2Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab1t2Datatable) {responsiveHelper_pTab1t2Datatable = new ResponsiveDatatablesHelper($('#pTab1t2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab1t2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab1t2Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"25px\" }, null, null, null, { \"sWidth\": \"150px\" },null,{ \"sWidth\": \"45px\" }]});";
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
    function showAddEditTab1t2(el, isinsupt) {
        var valData = '';
        $('#pTab1t2ModalHeaderLabel').html(isinsupt);
        $('#pTab1t2ModalID').html('');
        $('#pTab1t2ModalSelectType, #pTab1t2ModalInputName, #pTab1t2ModalInputRequirment').val('');
        $('input[name="pTab1t2ModalInputMnth"]').prop('checked', false);
        if (isinsupt == 'засах') {
            $('#pTab1t2ModalID').text($(el).closest('tr').attr('data-id'));
            $('#pTab1t2ModalSelectType').val($(el).closest('tr').find('td:eq(1)').attr('data-id'));
            $('#pTab1t2ModalInputName').val($(el).closest('tr').find('td:eq(2)').html());
            dataBindTab1t2ModalGazarListForSelect2($(el).closest('tr').find('td:eq(3)').attr('data-id'));
            for (var i = 0; i <= $(el).closest('tr').find('td:eq(4)').html().toString().split(',').length; i++) {
                $('#pTab1t2ModalInputMnth' + $(el).closest('tr').find('td:eq(4)').html().toString().split(',')[i]).prop('checked', true);
            }
            $('#pTab1t2ModalInputRequirment').val($(el).closest('tr').find('td:eq(5)').html());
        }
        else if (isinsupt == 'нэмэх') {
            dataBindTab1t2ModalGazarListForSelect2('');
        }
    }
    function showDeleteTab1t2(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/MySqlExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_TRANSPARENCY_EVAL WHERE TRANSPARENCY_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') {
                    alert('Сонгосон төлөвлөгөөнд хамааралтай үнэлгээ орсон тул устгах боломжгүй байна!');
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
                                url: "../ws/ServiceMain.svc/TRANSPARENCY_DELETE",
                                data: '{"P_ID":"' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab1t2DataTable();
                                    smallBox('Сонгосон төлөвлөгөө', 'Амжилттай устлаа...', '#659265', 3000);
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
    $('#pTab1t2ModalForm').bootstrapValidator({
        fields: {
            pTab1t2ModalSelectType: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab1t2ModalInputName: {
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
            },
            pTab1t2ModalInputMnth: {
                group: '.form-group',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab1t2ModalInputRequirment: {
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
            },
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            if ($('#pTab1t2ModalSelect2Gazar').val() == null) {
                alert('Хариуцах газар сонгоно уу');
                $('#pTab1t2ModalForm').find('.modal-footer').find('.btn-success').prop('disabled', false);
            }
            else {
                var valCheckedMnths = '';
                for (var i = 1; i < 13; i++) {
                    if ($('#pTab1t2ModalInputMnth' + i).is(":checked")) {
                        if (valCheckedMnths == '') valCheckedMnths += i;
                        else valCheckedMnths += "," + i;
                    }
                }
                if ($("#pTab1ModalHeaderLabel").html() == "нэмэх") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/TRANSPARENCY_INSUPT",
                        data: '{"P_ID":"0", "P_TRANSPARENCYTYPE_ID":"' + $('#pTab1t2ModalSelectType option:selected').val() + '", "P_NAME":"' + replaceDisplayToDatabase($.trim($('#pTab1t2ModalInputName').val())) + '", "P_GROUPLIST":"' + $('#pTab1t2ModalSelect2Gazar').val() + '", "P_MNTHLIST":"' + valCheckedMnths + '", "P_REQUIRMENT":"' + replaceDisplayToDatabase($.trim($('#pTab1t2ModalInputRequirment').val())) + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            dataBindTab1t2DataTable();
                            $('#pTab1t2Modal').modal('hide');
                            smallBox('Төлөвлөгөө', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                        url: "../ws/ServiceMain.svc/TRANSPARENCY_INSUPT",
                        data: '{"P_ID":"' + $.trim($('#pTab1t2ModalID').html()) + '", "P_TRANSPARENCYTYPE_ID":"' + $('#pTab1t2ModalSelectType option:selected').val() + '", "P_NAME":"' + replaceDisplayToDatabase($.trim($('#pTab1t2ModalInputName').val())) + '", "P_GROUPLIST":"' + $('#pTab1t2ModalSelect2Gazar').val() + '", "P_MNTHLIST":"' + valCheckedMnths + '", "P_REQUIRMENT":"' + replaceDisplayToDatabase($.trim($('#pTab1t2ModalInputRequirment').val())) + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            dataBindTab1t2DataTable();
                            $('#pTab1t2Modal').modal('hide');
                            smallBox('Төлөвлөгөө', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
    function dataBindTab1t2ModalGazarListForSelect2(selectedList) {
        var valData = '';
        $("#pTab1T2ModalDivSelect2Gazar").html('<input class="form-control ui-autocomplete-loading" placeholder="" type="text" disabled="disabled">');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForSelect2_MySql",
            data: '{"selectedList":"' + selectedList + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<option" + value.ISSELECTED + " value=\"" + value.ID + "\" title=\"" + value.group_name + "\">" + value.init_name + "</option>";
                });
                $("#pTab1T2ModalDivSelect2Gazar").html("<select id=\"pTab1t2ModalSelect2Gazar\" name=\"pTab1t2ModalSelect2Gazar\" multiple=\"multiple\" style=\"width:100%\" data-placeholder=\"Хариуцах газар сонго\">" + valData + "</select><script>$(\"#pTab1t2ModalSelect2Gazar\").select2();<\/script>");
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab1t2SelectType, #pTab1t2SelectGazar").change(function () {
        dataBindTab1t2DataTable();
    });

    //tab3t1
    function dataBindTab3t1DataTable() {
        var valData = '';
        var valRowNo = 1;
        var cnt = 0, pcnt=0, cnt100 = 0, cnt90 = 0, cnt80 = 0, cnt70 = 0, cnt50 = 0, cnt30 = 0, cnt10 = 0, cnt0 = 0, cntnone = 0, cntgazarcnt = 0;
        var sumper = 0, sumpnt = 0;
        var evalCnt = 0;
        showLoader('loaderTab3t1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TransparencyTab3t1Datatable",
            data: '{"yr":"' + $("#pTab3t1SelectYr option:selected").val() + '", "mnth":"' + $("#pTab3t1SelectMnth option:selected").val() + '", "mnth2":"' + $("#pTab3t1SelectMnth2 option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table id=\"pTab3t1Datatable\" style=\"border:1px solid #000; border-collapse:collapse; font-family:'Times New Roman'; font-size:12px; width:100%\">";
                valData += "<thead>";
                valData += "<tr style=\"background-color:lightgray;\">";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">#</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Газар</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Нийт<br/>төлөвлөгөө</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Нийт<br/>байршуулсан<br>мэдээ</th>";
                valData += "<th colspan=\"9\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хэрэгжилтийн хувь</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Биелэлтийн хувь</th>";
                valData += "<th rowspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">Оноо</th>";
                valData += "</tr>";
                valData += "<tr style=\"background-color:lightgray;\">";
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
                valData += "</thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    cnt += parseInt(value.TOTALPLAN.toString().replace("-", "0"));
                    pcnt += parseInt(value.PUBLISHPLAN.toString().replace("-", "0"));
                    cnt100 += parseInt(value.EVAL100.toString().replace("-", "0"));
                    cnt90 += parseInt(value.EVAL90.toString().replace("-", "0"));
                    cnt80 += parseInt(value.EVAL80.toString().replace("-", "0"));
                    cnt70 += parseInt(value.EVAL70.toString().replace("-", "0"));
                    cnt50 += parseInt(value.EVAL50.toString().replace("-", "0"));
                    cnt30 += parseInt(value.EVAL30.toString().replace("-", "0"));
                    cnt10 += parseInt(value.EVAL10.toString().replace("-", "0"));
                    cnt0 += parseInt(value.EVAL0.toString().replace("-", "0"));
                    cntnone += parseInt(value.EVALNONE.toString().replace("-", "0"));
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + valRowNo + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.group_name + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.TOTALPLAN + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.PUBLISHPLAN + "</td>";
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
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.PNTAVG + "</td>";
                    valData += "</tr>";
                    valRowNo++;
                    if (value.TOTALPLAN != '-') {
                        evalCnt++;
                        sumper += parseFloat(value.PERAVG.toString());
                        sumpnt += parseFloat(value.PNTAVG.toString());
                    }
                });
                valData += "</tbody>";
                valData += "<tfoot style=\"background-color:lightgray;\">";
                valData += "<tr>";
                valData += "<td colspan=\"2\" style=\"border: 1px solid #000; padding:5px; text-align:center;\">НИЙТ</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt.toString() + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + pcnt.toString() + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt100.toString() + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt90.toString() + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt80.toString() + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt70.toString() + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt50.toString() + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt30.toString() + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt10.toString() + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cnt0.toString() + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + cntnone.toString() + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + Math.round(sumper / evalCnt, 1).toFixed(2).toString() + "</td>";
                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + Math.round(sumpnt / evalCnt, 1).toFixed(2).toString() + "</td>";
                valData += "</tr>";
                valData += "</tfoot>";
                valData += "</table>";
                $('#pTab3t1Yr').html($("#pTab3t1SelectYr option:selected").val());
                if ($("#pTab3t1SelectMnth option:selected").val() == $("#pTab3t1SelectMnth2 option:selected").val()) $('#pTab3t1Mnth').html($("#pTab3t1SelectMnth option:selected").val());
                else $('#pTab3t1Mnth').html($("#pTab3t1SelectMnth option:selected").val() + ' - ' + $("#pTab3t1SelectMnth2 option:selected").val());
                $("#divBindTab3t1Table").html(valData);
                hideLoader('loaderTab3t1');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab3t1SelectMnth, #pTab3t1SelectMnth2, #pTab3t1SelectYr").change(function () {
        dataBindTab3t1DataTable();
    });

    //tab3t2
    function dataBindTab3t2DataTable() {
        var valData = '';
        showLoader('loaderTab3t2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TransparencyTab3t2Datatable",
            data: '{"yr":"' + $("#pTab3t2SelectYr option:selected").val() + '", "mnth":"' + $("#pTab3t2SelectMnth option:selected").val() + '", "groupid":"' + $('#pTab3t2SelectGazar option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table id=\"pTab3t2Datatable\" style=\"border:1px solid #000; border-collapse:collapse; font-family:'Times New Roman'; font-size:12px; width:100%\"><thead><tr style=\"background-color:lightgray;\"><th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Мэдээлэл байрлуулсан газар</th><th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Мэдээний агуулга</th><th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Мэдээ тавьсан огноо</th><tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.init_name + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px;\">" + value.post_title + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.post_date + "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                $('#pTab3t2Yr').html($("#pTab3t2SelectYr option:selected").val());
                $('#pTab3t2Mnth').html($("#pTab3t2SelectMnth option:selected").val());
                $("#divBindTab3t2Table").html(valData);
                hideLoader('loaderTab3t2');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $("#pTab3t2SelectGazar, #pTab3t2SelectMnth, #pTab3t2SelectYr").change(function () {
        dataBindTab3t2DataTable();
    });

    //tab4
    function dataBindTab4DataTable() {
        var valData = "";
        var evalDisabled = " disabled"
        var valRowNo = 1;
        showLoader('loaderTab4');
        if (funcCheckRoles('1,17')) {
            evalDisabled = '';
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TransparencyTab4Datatable",
            data: '{"typeid":"' + $('#pTab4SelectType option:selected').val() + '","groupid":"' + $('#pTab4SelectGazar option:selected').val() + '", "yr":"' + $('#pTab4SelectYr option:selected').val() + '", "mnth":"' + $('#pTab4SelectMnth option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table id=\"pTab4Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                valData += "<thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\">#</th>";
                valData += "<th class=\"text-center\">Төрөл</th>";
                valData += "<th class=\"text-center\">Нэр</th>";
                valData += "<th class=\"text-center\">Хариуцах газар</th>";
                valData += "<th class=\"text-center\">Хэрэгжүүлэх сар</th>";
                valData += "<th class=\"text-center\">Тавигдах шаардлага</th>";
                valData += "<th>Үнэлгээ</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td>" + valRowNo + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.TRANSPARENCYTYPE_NAME) + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.GROUPLIST_NAME) + "</td>";
                    valData += "<td>" + value.MNTHLIST_ID + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.REQUIRMENT) + "</td>";
                    if (value.EVAL == "") valData += "<td><select" + evalDisabled + " class=\"bg-color-blueLight form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"null\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                    else {
                        if (value.EVAL == "0") valData += "<td><select" + evalDisabled + " class=\"bg-color-red form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"null\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "10") valData += "<td><select" + evalDisabled + " class=\"bg-color-red form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"null\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "30") valData += "<td><select" + evalDisabled + " class=\"bg-color-red form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"null\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "50") valData += "<td><select" + evalDisabled + " class=\"bg-color-orange form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"null\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "70") valData += "<td><select" + evalDisabled + " class=\"bg-color-orange form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"null\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "80") valData += "<td><select" + evalDisabled + " class=\"bg-color-greenLight form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"null\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "90") valData += "<td><select" + evalDisabled + " class=\"bg-color-greenLight form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"null\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">100 %</option></select></td>";
                        else if (value.EVAL == "100") valData += "<td><select" + evalDisabled + " class=\"bg-color-greenLight form-control no-padding\" style=\"color:#fff; font-weight:bold; border:none; height:21px;\" onchange=\"saveEval(this)\"><option value=\"null\" class=\"bg-color-blueLight\" style=\"color:#fff; font-weight:bold;\">-</option><option value=\"0\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">0 %</option><option value=\"10\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">10 %</option><option value=\"30\" class=\"bg-color-red\" style=\"color:#fff; font-weight:bold;\">30 %</option><option value=\"50\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">50 %</option><option value=\"70\" class=\"bg-color-orange\" style=\"color:#fff; font-weight:bold;\">70 %</option><option value=\"80\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">80 %</option><option value=\"90\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\">90 %</option><option value=\"100\" class=\"bg-color-greenLight\" style=\"color:#fff; font-weight:bold;\" selected=\"selected\">100 %</option></select></td>";
                    }
                    valData += "</tr>";
                    valRowNo++;
                });
                valData += "<script>";
                valData += "var responsiveHelper_pTab4Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab4Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab4Datatable) {responsiveHelper_pTab4Datatable = new ResponsiveDatatablesHelper($('#pTab4Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab4Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab4Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"25px\" }, null, null, null, { \"sWidth\": \"150px\" },null,{ \"sWidth\": \"65px\" }]});";
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
    function saveEval(me) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/TRANSPARENCYEVAL_INS",
            data: '{"P_ID":"' + $(me).closest('tr').attr('data-id') + '", "P_YR":"' + $('#pTab4SelectYr option:selected').val() + '", "P_MNTH":"' + $('#pTab4SelectMnth option:selected').val() + '", "P_EVAL":"' + $(me).val() + '"}',
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
    $("#pTab4SelectType, #pTab4SelectGazar, #pTab4SelectMnth, #pTab4SelectYr").change(function () {
        dataBindTab4DataTable();
    });
</script>