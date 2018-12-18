<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="indicator2.aspx.cs" Inherits="LMWebApp.pg.indicator2" %>
<style type="text/css">
    #pTab1Datatable > tbody > tr > td:nth-child(5):hover {
        background: #d6dde7;
        cursor:pointer;
    }
    #pTab1Datatable > tbody > tr > td:nth-child(6):hover {
        background: #d6dde7;
        cursor:pointer;
    }
    #pTab1Datatable > tbody > tr > td:nth-child(7):hover {
        background: #d6dde7;
        cursor:pointer;
    }
    #pTab1Datatable > tbody > tr > td:nth-child(8):hover {
        background: #d6dde7;
        cursor:pointer;
    }
</style> 
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    <h1 class="page-title txt-color-blueDark" style="margin-bottom:12px;">
        <i class="fa-fw fa fa-home"></i> > ХАРЬЯА ГАЗРУУДЫН ҮНЭЛГЭЭ > 
        <span id="pageUrlModuleName" runat="server" style="text-transform:uppercase;"></span>
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
                <li id="pTab2Li" runat="server" onclick="pDatabindTabs(this)" style="width:175px; text-align:center;">
                    <a data-toggle="tab" href="#pTab2" style="color: #356635; background-color: #cde0c4;">
                        <i class="fa fa-fw fa-lg fa-edit"></i>
                        Гүйцэтгэл 
                    </a>
                </li>                
                <li id="pTab3Li" runat="server" onclick="pDatabindTabs(this)" style="width:175px; text-align:center;">
                    <a data-toggle="tab" href="#pTab3" style="color: #305d8c; background-color: #d6dde7;">
                        <i class="fa fa-fw fa-lg fa-file-text "></i>
                        Тайлан 
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <div id="pTab1" runat="server" class="tab-pane active">
                    <ul class="nav nav-tabs bordered">
                        <li id="pTab1t1Li" runat="server" onclick="pDatabindTabs(this)" class="active">
                            <a data-toggle="tab" href="#pTab1t1"><i class="fa fa-fw fa-lg fa-table"></i>Төлөвлөгөө</a>
                        </li>
                        <li id="pTab1t2Li" runat="server" onclick="pDatabindTabs(this)" class="pull-right">
                            <a data-toggle="tab" href="#pTab1t2"><i class="fa fa-fw fa-lg fa-wrench"></i>Төрөл</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="pTab1t1" class="tab-pane active">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-list-ul"></i></span>
                                    <h2>Төлөвлөгөө</h2>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div class="Colvis TableTools"  style="right:405px; top:8px; z-index:5;">
                                        <button id="pTab1Add" runat="server" class="btn btn btn-primary btn-xs" data-target="#pTab1Modal" data-toggle="modal" onclick="showAddEditTab1(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
                                    <div class="Colvis TableTools" style="left:240px; top:0px; z-index:5; margin-top:2px;">
                                        <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa-pencil"></i></a> Мэдээлэл засварлах<br />
                                        <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa fa-trash-o"></i></a> Мэдээлэл устгах
                                    </div>
                                    <div class="Colvis TableTools" style="right:128px; top:4px; z-index:5; margin-top:3px; width:80px;">
                                        <select id="pTab1SelectGazar" class="form-control" style="padding:0 0;"><option value="">Бүгд</option></select>
                                    </div>
                                    <div class="Colvis TableTools" style="right:215px; top:4px; z-index:5; margin-top: 3px;line-height: 14px;text-align: right;"><label>Хариуцах<br />газар: </label></div>
                                    <div class="Colvis TableTools" style="right:285px; top:4px; z-index:5; margin-top:3px; width:80px;">
                                        <select id="pTab1SelectYear" runat="server" class="form-control" style="padding:0;"><option value="">Бүгд</option></select>
                                    </div>
                                    <div class="Colvis TableTools" style="right:370px; top:10px; z-index:5; margin-top: 3px;line-height: 14px;text-align: right;"><label>Он:</label></div>
                                    <div id="loaderTab1" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div id="divBindTab1Table" class="widget-body no-padding">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab1t2" class="tab-pane">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-list-ul"></i></span>
                                    <h2>Төлөвлөгөөний төрөл</h2>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div class="Colvis TableTools"  style="right:130px; top:8px; z-index:5;">
                                        <button id="pTab1t2Add" runat="server" class="btn btn btn-primary btn-xs" data-target="#pTab1t2Modal" data-toggle="modal" onclick="showAddEditTab1t2(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
                                    <div class="Colvis TableTools" style="left:240px; top:0px; z-index:5; margin-top:2px;">
                                        <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa-pencil"></i></a> Мэдээлэл засварлах<br />
                                        <a class="btn btn-default btn-xs" href="javascript:void(0);"><i class="fa fa fa-trash-o"></i></a> Мэдээлэл устгах
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
                    </div>
                </div>
                <div id="pTab2" runat="server" class="tab-pane">
                    <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"><i class="fa fa-list-ul"></i></span>
                            <h2>Гүйцэтгэл</h2>
                        </header>
                        <div>
                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                            <div class="Colvis TableTools" style="right:128px; top:4px; z-index:5; margin-top:3px; width:80px;">
                                <select id="pTab2SelectGazar" class="form-control" style="padding:0 0;"><option value="">Бүгд</option></select>
                            </div>
                            <div class="Colvis TableTools" style="right:215px; top:4px; z-index:5; margin-top: 3px;line-height: 14px;text-align: right;"><label>Хариуцах<br />газар: </label></div>
                            <div class="Colvis TableTools" style="right:285px; top:4px; z-index:5; margin-top:3px; width:80px;">
                                <select id="pTab2SelectYear" runat="server" class="form-control" style="padding:0;"><option value="">Бүгд</option></select>
                            </div>
                            <div class="Colvis TableTools" style="right:370px; top:10px; z-index:5; margin-top: 3px;line-height: 14px;text-align: right;"><label>Он:</label></div>
                            <div id="loaderTab2" class="search-background">
                                <img width="64" height="" src="img/loading.gif"/>
                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                            </div>
                            <div id="divBindTab2Table" class="widget-body no-padding">
                                        
                            </div>
                        </div>
                    </div>
                </div>
                <div id="pTab3" runat="server" class="tab-pane">
                    <ul class="nav nav-tabs bordered">
                        <li id="pTab3t1Li" runat="server" onclick="pDatabindTabs(this)" class="active">
                            <a data-toggle="tab" href="#pTab3t1">Сарын тайлан</a>
                        </li>
                        <li id="pTab3t2Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab3t2">Жилийн тайлан</a>
                        </li>
                        <li id="pTab3t3Li" runat="server" onclick="pDatabindTabs(this)">
                            <a data-toggle="tab" href="#pTab3t3">Хавсралт тайлан</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="pTab3t1" class="tab-pane active">
                            <div style="display: block; overflow: hidden;">
                                <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                                    <div style="width:70%; float:left;">
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab3t1SelectYear" runat="server" class="form-control" style="padding:1px">
                                                
                                            </select>
                                        </div>
                                        <div style="width:35px; float:left; margin-right:10px; padding-top:8px;">Газар: </div>
                                        <div style="width:80px; float:left; margin-right:10px;">
                                            <select id="pTab3t1SelectGazar" runat="server" class="form-control" style="padding:1px">
                                                <option selected="selected" value="">Бүгд</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab3t1', 'Сарын тайлан')">
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
                                        <label id="pTab3t1Type" runat="server" style="font-weight: bold;"></label> ҮЗҮҮЛЭЛТИЙН БИЕЛЭЛТ
                                    </div>
                                    <div style="text-align: left; font-size: 14px; padding-bottom: 3px; line-height: 5px;">
                                        Хугацаа: <label id="pTab3t1Year" runat="server"></label>
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
                                            <select id="pTab3t2SelectYear" runat="server" class="form-control" style="padding:1px">
                                                
                                            </select>
                                        </div>
                                        <div style="width:5px; float:left; margin-right:10px; margin-top: 6px;">-</div>
                                        <div style="width:60px; float:left; margin-right:10px;">
                                            <select id="pTab3t2SelectYear2" runat="server" class="form-control" style="padding:1px">
                                                
                                            </select>
                                        </div>
                                    </div>
                                    <div style="text-align:right; width:30%; float:left;">
                                        <div class="btn-group pull-right">
                                            <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab3t2', 'Жилийн тайлан')">
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
                                        <label id="pTab3t2Type" runat="server" style="font-weight: bold;"></label> ҮЗҮҮЛЭЛТИЙН БИЕЛЭЛТ
                                    </div>
                                    <div style="text-align: left; font-size: 14px; padding-bottom: 3px; line-height: 5px;">
                                        Хугацаа: <label id="pTab3t2Year" runat="server"></label> - <label id="pTab3t2Year2" runat="server"></label>
                                    </div>
                                    <div id="divBindTab3t2Table"></div>
                                </div>
                            </div>
                        </div>
                        <div id="pTab3t3" class="tab-pane">
                            <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-editbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-list-ul"></i></span>
                                    <h2>Хавсралт тайлан</h2>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div class="Colvis TableTools"  style="right:125px; top:8px; z-index:5;">
                                        <button id="pTab3t3Add" runat="server" class="btn btn btn-primary btn-xs" data-target="#pTab3t3Modal" data-toggle="modal" onclick="showAddEditTab3t3(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                    </div>
                                    <div id="loaderTab3t3" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div id="divBindTab3t3Table" class="widget-body no-padding">
                                        
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
<div id="pTab1Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="pTab1ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Үзүүлэлт&nbsp;<span id="pTab1ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pTab1ModalID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Төрөл</label>
									<select id="pTab1ModalSelectCategory" name="pTab1ModalSelectCategory" class="form-control"><option value="">- Сонго -</option></select>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Нэр</label>
									<textarea id="pTab1ModalInputName" name="pTab1ModalInputName" class="form-control" required="" placeholder="Нэр" rows="2"></textarea>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <label class="col-md-12 control-label">*Суурь үзүүлэлтийн төлөв</label>
                                <div class="col-md-12">
                                    <label class="radio radio-inline no-margin">
										<input type="radio" class="radiobox" id="pTab1ModalInputIsnumber0" name="pTab1ModalInputIsnumber" value="0">
										<span>Чанарын үнэлгээ</span> 											
									</label>
                                    <label class="radio radio-inline">
										<input type="radio" class="radiobox" id="pTab1ModalInputIsnumber1" name="pTab1ModalInputIsnumber" value="1">
										<span>Тоон мэдээлэл</span> 											
									</label>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Суурь үзүүлэлт</label>
									<input id="pTab1ModalInputBaslinename" name="pTab1ModalInputBaslinename" class="form-control" type="text" placeholder="Суурь үзүүлэлт"/>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Хариуцах газар</label>
                                    <div id="pTab1ModalDivSelect2Gazar">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <label class="col-md-2 control-label">*Давтамжийн хугацаа:</label>
                                <div class="col-md-10">
                                    <label class="radio radio-inline no-margin">
										<input type="radio" class="radiobox" id="pTab1ModalInputInterval1" name="pTab1ModalInputInterval" value="1">
										<span>Жил</span> 											
									</label>
                                    <label class="radio radio-inline">
										<input type="radio" class="radiobox" id="pTab1ModalInputInterval2" name="pTab1ModalInputInterval" value="2">
										<span>Хагас жил</span> 											
									</label>
                                    <label class="radio radio-inline">
										<input type="radio" class="radiobox" id="pTab1ModalInputInterval4" name="pTab1ModalInputInterval" value="4">
										<span>Улирал</span> 											
									</label>
                                    <label class="radio radio-inline">
										<input type="radio" class="radiobox" id="pTab1ModalInputInterval12" name="pTab1ModalInputInterval" value="12">
										<span>Сар</span> 											
									</label>
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
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <form id="pTab1t2ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Төрөл&nbsp;<span id="pTab1t2ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pTab1t2ModalID" class="hide"></div>
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
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
                    <button class="btn btn-success btn-sm" type="submit"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
                </div>
            </form>
        </div>
    </div>
</div>
<div id="pTab3t3Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="pTab3t3ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Файл&nbsp;<span id="pTab3t3ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pTab3t3ModalID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Нэр</label>
									<input id="pTab3t3ModalInputName" name="pTab3t3ModalInputName" class="form-control" type="text" placeholder="Нэр"/>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="form-group" style="margin:10px 0 0 0; display:block; overflow:hidden;">
                                    <div class="col-md-4" style="font-size:13px;">
                                        *Хавсралт файл:
                                    </div>
                                    <div class="col-md-8" style="font-style:italic;padding-left: 0;">
                                        <a id="pTab3t3ModalAttachBtn" class="btn btn-link btn-xs" href="javascript:void(0);" style="padding:0px; border:none;" download="">Файл хавсаргаагүй байна...</a>
                                    </div>
                                </div>
                                <div class="form-group" style="margin:0; display:block; overflow:hidden;">
                                    <div class="col-md-4">
                                        <a id="pTab3t3ModalAttachDelete" class="btn btn-link btn-xs" href="javascript:void(0);"><i class="fa fa-trash-o"></i> файл устгах</a>
                                    </div>
                                    <div class="col-md-8" style="padding-left: 0;">
                                        <input id="pTab3t3ModalAttachInput" type="file" class="btn btn-default">
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
<div id="pTab3t3AttachShowModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true">  
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			
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
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr":"' + $('#indexCurrentYear').html() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#pTab1SelectGazar").html('<option value="">Бүгд</option>' + valData);
                $("#pTab2SelectGazar").html('<option value="">Бүгд</option>' + valData);
                $("#pTab3t1SelectGazar").html('<option value="">Бүгд</option>' + valData);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteDataSet",
                    data: '{"qry":"SELECT a.ID, a.NAME FROM TBL_INDICATORCATEGORY2 a ORDER BY a.NAME"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.ID + '" title="' + value.NAME + '">' + value.NAME + '</option>';
                        });
                        $("#pTab1ModalSelectCategory").html('<option value="">- Сонго -</option>' + valData);
                        if (valLiId == 'pTab1Li') {
                            dataBindTab1DataTable();
                        }
                        else if (valLiId == 'pTab2Li') {
                            dataBindTab2DataTable();
                        }
                        else if (valLiId == 'pTab3Li') {
                            dataBindTab3t1DataTable();
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
            if ($.trim($('#divBindTab1Table').html()) == "") {
                dataBindTab1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab1t1Li') {
            if ($.trim($('#divBindTab1Table').html()) == "") {
                dataBindTab1DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab1t2Li') {
            if ($.trim($('#divBindTab1t2Table').html()) == "") {
                dataBindTab1t2DataTable();
            }
        }
        else if ($.trim($(el).attr('id')) == 'pTab2Li') {
            if ($.trim($('#divBindTab2Table').html()) == "") {
                dataBindTab2DataTable();
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
        else if ($.trim($(el).attr('id')) == 'pTab3t3Li') {
            if ($.trim($('#divBindTab3t3Table').html()) == "") {
                dataBindTab3t3DataTable();
            }
        }
    }

    //tab1
    function dataBindTab1DataTable() {
        var valData = "";
        var valIsEdit = '0';
        showLoader('loaderTab1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT ISACTIVE FROM TBL_INDICATORTYPE2 WHERE ID=' + <%=Request.QueryString["id"]%> + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == '1') {
                    if (funcCheckRoles('1,37')) {
                        valIsEdit = '1';
                    }
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/Indicator2Tab1Datatable",
                    data: '{"indicatortypeid":"' + <%=Request.QueryString["id"]%> + '", "yr":"' + $('#pTab1SelectYear option:selected').val() + '", "gazarid":"' + $('#pTab1SelectGazar option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valData += "<table id=\"pTab1Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                        valData += "<thead>";
                        valData += "<tr>";
                        valData += "<th class=\"text-center\">#</th>";
                        valData += "<th class=\"text-center\">Үзүүлэлт</th>";
                        valData += "<th class=\"text-center\">Суурь үзүүлэлт</th>";
                        valData += "<th class=\"text-center\">Хариуцах газар</th>";
                        valData += "<th class=\"text-center\">" + (parseInt($('#pTab1SelectYear option:selected').val()) - 1) + "</th>";
                        valData += "<th class=\"text-center\">" + $('#pTab1SelectYear option:selected').val() + "</th>";
                        valData += "<th class=\"text-center\">" + (parseInt($('#pTab1SelectYear option:selected').val()) + 1) + "</th>";
                        valData += "<th class=\"text-center\">" + (parseInt($('#pTab1SelectYear option:selected').val()) + 2) + "</th>";
                        valData += "<th>&nbsp;</th>";
                        valData += "<th class=\"text-center\">Идэвхтэй<br>эсэх</th>";
                        valData += "</tr>";
                        valData += "</thead>";
                        valData += "<tbody>";
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<tr data-id=\"" + value.ID + "\" data-interval=\"" + value.INDICATORINTERVAL_ID + "\" data-isnumber=\""+value.ISNUMBER+"\">";
                            valData += "<td>" + value.ROWNO + "</td>";
                            valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                            valData += "<td class=\"text-center\">" + replaceDatabaseToDisplay(value.BASLINENAME) + "</td>";
                            valData += "<td class=\"text-center\" data-id=\"" + value.BRLISTID + "\">" + replaceDatabaseToDisplay(value.BRLISTNAME) + "</td>";
                            valData += "<td class=\"text-right\" onclick=\"tab1TargetClick(this);\" data-yr=\"" + (parseInt($('#pTab1SelectYear option:selected').val()) - 1) + "\">" + value.VAL0 + "</td>";
                            valData += "<td class=\"text-right\" onclick=\"tab1TargetClick(this);\" data-yr=\"" + $('#pTab1SelectYear option:selected').val() + "\">" + value.VAL1 + "</td>";
                            valData += "<td class=\"text-right\" onclick=\"tab1TargetClick(this);\" data-yr=\"" + (parseInt($('#pTab1SelectYear option:selected').val()) + 1) + "\">" + value.VAL2 + "</td>";
                            valData += "<td class=\"text-right\" onclick=\"tab1TargetClick(this);\" data-yr=\"" + (parseInt($('#pTab1SelectYear option:selected').val()) + 2) + "\">" + value.VAL3 + "</td>";
                            valData += "<td>";
                            if (valIsEdit == '1') {
                                valData += "<div class=\"btn-group\">";
                                valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab1(this,'засах');\" data-target=\"#pTab1Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                                valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab1(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                                valData += "</div>";
                            }
                            valData += "</td>";
                            valData += "<td class=\"text-center\" style=\"vertical-align:middle;\">";
                            if (valIsEdit == '1') {
                                valData += "<span class=\"onoffswitch\"><input id=\"onoffCheckbox" + value.ID + "\" name=\"onoffCheckbox" + value.ID + "\" type=\"checkbox\" " + value.ISCLOSED + " class=\"onoffswitch-checkbox\" onclick=\"saveIsClosed(this);\"><label class=\"onoffswitch-label\" for=\"onoffCheckbox" + value.ID + "\"><span class=\"onoffswitch-inner\" data-swchon-text=\"ON\" data-swchoff-text=\"OFF\"></span><span class=\"onoffswitch-switch\"></span></label></span>";
                            }
                            valData += "</td>";
                            valData += "</tr>";
                        });
                        valData += "<script>";
                        valData += "var responsiveHelper_pTab1Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab1Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab1Datatable) {responsiveHelper_pTab1Datatable = new ResponsiveDatatablesHelper($('#pTab1Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab1Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab1Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"25px\" }, null, null,{ \"sWidth\": \"75px\" }, { \"sWidth\": \"75px\" }, { \"sWidth\": \"75px\" }, { \"sWidth\": \"75px\" }, { \"sWidth\": \"75px\" },{ \"sWidth\": \"45px\" }, { \"sWidth\": \"15px\" }]});";
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
        var valData = '';
        $('#pTab1ModalHeaderLabel').html(isinsupt);
        $('#pTab1ModalID').html('');
        $('#pTab1ModalInputName, #pTab1ModalInputBaslinename').val('');
        $('input[name="pTab1ModalInputInterval"]').prop('checked', false);
        $('input[name="pTab1ModalInputIsnumber"]').prop('checked', false);
        dataBindTab1ModalGazarListForSelect2('');
        if (isinsupt == 'засах') {
            $('#pTab1ModalID').text($(el).closest('tr').attr('data-id'));
            $('#pTab1ModalInputName').val($(el).closest('tr').find('td:eq(1)').html());
            $('#pTab1ModalInputBaslinename').val($(el).closest('tr').find('td:eq(2)').html());
            $('#pTab1ModalInputInterval' + $(el).closest('tr').attr('data-interval')).prop('checked', true);
            $('#pTab1ModalInputIsnumber' + $(el).closest('tr').attr('data-isnumber')).prop('checked', true);
            dataBindTab1ModalGazarListForSelect2($(el).closest('tr').find('td:eq(3)').attr('data-id'));
        }
    }
    function showDeleteTab1(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_INDICATOR_PERF2 WHERE INDICATOR_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') {
                    alert('Сонгосон үзүүлэлтэд хамааралтай гүйцэтгэл орсон тул устгах боломжгүй байна!');
                }
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон үзүүлэлтийг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/INDICATOR2_DELETE",
                                data: '{"P_ID":"' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab1DataTable();
                                    smallBox('Сонгосон үзүүлэлт', 'Амжилттай устлаа...', '#659265', 3000);
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
    $('#pTab1ModalForm').bootstrapValidator({
        fields: {
            pTab1ModalSelectCategory: {
                group: '.form-group',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab1ModalInputName: {
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
            pTab1ModalInputIsnumber: {
                group: '.form-group',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab1ModalInputBaslinename: {
                group: '.col-md-12',
                validators: {
                    //notEmpty: {
                    //    message: 'Оруулна уу'
                    //},
                    stringLength: {
                        max: 100,
                        message: 'Уртдаа 100 тэмдэгт авна'
                    },
                    callback: {
                        message: 'Зөвхөн тоон тэмдэгт авна',
                        callback: function (value, validator, $field) {
                            if ($('input[name="pTab1ModalInputIsnumber"]:checked').val() == undefined) return true;
                            else {
                                if ($('input[name="pTab1ModalInputIsnumber"]:checked').val() == '1') {
                                    if ($.isNumeric($.trim($('#pTab1ModalInputBaslinename').val()))) return true;
                                    else return false;
                                }
                                else return true;
                            }
                        }
                    }
                }
            },
            pTab1ModalInputInterval: {
                group: '.col-md-4',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab1ModalInputInterval: {
                group: '.form-group',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            if ($('#pTab1ModalSelect2Gazar').val() == null) {
                alert('Хариуцах газар сонгоно уу');
                $('#pTab1ModalForm').find('.modal-footer').find('.btn-success').prop('disabled', false);
            }
            else {
                if ($("#pTab1ModalHeaderLabel").html() == "нэмэх") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/INDICATOR2_INSERT",
                        data: '{"P_INDICATORTYPE_ID":"' + <%=Request.QueryString["id"]%> + '", "P_INDICATORCATEGORY_ID":"' + $('#pTab1ModalSelectCategory option:selected').val() + '", "P_NAME":"' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputName').val())) + '", "P_BASLINENAME":"' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputBaslinename').val())) + '", "P_INDICATORINTERVAL_ID":"' + $('input[name="pTab1ModalInputInterval"]:checked').val() + '", "P_BRLIST":"' + $('#pTab1ModalSelect2Gazar').val() + '", "P_STAFFID":"' + $('#indexUserId').text() + '", "P_ISNUMBER":"' + $('input[name="pTab1ModalInputIsnumber"]:checked').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            dataBindTab1DataTable();
                            $('#pTab1Modal').modal('hide');
                            smallBox('Үзүүлэлт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                        url: "../ws/ServiceMain.svc/INDICATOR2_UPDATE",
                        data: '{"P_ID":"' + $("#pTab1ModalID").text() + '", "P_INDICATORTYPE_ID":"' + <%=Request.QueryString["id"]%> + '", "P_INDICATORCATEGORY_ID":"' + $('#pTab1ModalSelectCategory option:selected').val() + '", "P_NAME":"' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputName').val())) + '", "P_BASLINENAME":"' + replaceDisplayToDatabase($.trim($('#pTab1ModalInputBaslinename').val())) + '", "P_INDICATORINTERVAL_ID":"' + $('input[name="pTab1ModalInputInterval"]:checked').val() + '", "P_BRLIST":"' + $('#pTab1ModalSelect2Gazar').val() + '", "P_STAFFID":"' + $('#indexUserId').text() + '", "P_ISNUMBER":"' + $('input[name="pTab1ModalInputIsnumber"]:checked').val() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            dataBindTab1DataTable();
                            $('#pTab1Modal').modal('hide');
                            smallBox('Үзүүлэлт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
    })
    .on('change', '[name="pTab1ModalInputIsnumber"]', function (e) {
        $('#pTab1ModalForm').bootstrapValidator('revalidateField', 'pTab1ModalInputBaslinename');
    });
    $("#pTab1SelectYear, #pTab1SelectGazar").change(function () {
        dataBindTab1DataTable();
    });
    function dataBindTab1ModalGazarListForSelect2(selectedList) {
        var valData = '';
        $("#pTab1ModalDivSelect2Gazar").html('<input class="form-control ui-autocomplete-loading" placeholder="" type="text" disabled="disabled">');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForSelect2",
            data: '{"yr":"' + $('#indexCurrentYear').html() + '", "selectedList":"' + selectedList + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<option" + value.ISSELECTED + " value=\"" + value.BR_ID + "\">" + value.DOMAIN_ORG + "</option>";
                });
                $("#pTab1ModalDivSelect2Gazar").html("<select id=\"pTab1ModalSelect2Gazar\" name=\"pTab1ModalSelect2Gazar\" multiple=\"multiple\" style=\"width:100%\" data-placeholder=\"Хариуцах газар сонго\">" + valData + "</select><script>$(\"#pTab1ModalSelect2Gazar\").select2();<\/script>");
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function tab1TargetClick(el) {
        var varVal = '';
        if ($.trim($(el).text()) == '') varVal = '0';
        else varVal = $.trim($(el).text());
        var trindex = $(el).closest('tr').index();
        var tdindex = $(el).index();
        
        $(el).css("padding", "3px 0 0 0");
        $(el).html('<input type="text" value="' + varVal + '" maxlength="15" style="width:93px; text-align:right; padding:2px;" onblur="tab1TargetBlur(this, \''+varVal+'\');"/>');
        $('#pTab1Datatable tbody tr:eq(' + trindex + ')').find('td:eq(' + tdindex + ')').find(':text').focus();
        $('#pTab1Datatable tbody tr:eq(' + trindex + ')').find('td:eq(' + tdindex + ')').find(':text').select();
    }
    function tab1TargetBlur(el, oldval) {
        if (funcCheckRoles('1,37')) {
            var yr = parseInt($(el).parent().attr('data-yr'));
            var id = $(el).closest('tr').attr('data-id');
            $(el).parent().removeAttr("style");
            if ($.trim($(el).val()) == '') {
                if ('0' == oldval) {
                    $(el).parent().html('');
                }
                else {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/INDICATOR2_TARGET_INSERT",
                        data: '{"P_INDICATOR_ID":"' + id + '", "P_YR":"' + yr + '", "P_VAL":"' + $.trim($(el).val()) + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            $(el).parent().html($.trim($(el).val()));
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
            else {
                if ($.trim($(el).val()).toString() == oldval.toString()) {
                    if (oldval == '0') $(el).parent().html('');
                    else $(el).parent().html(oldval);
                }
                else {
                    if (!$.isNumeric($.trim($(el).val()))) {
                        alert('Зөвхөн тоо оруулна уу!'); $(el).parent().html(oldval);
                    }
                    else {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/INDICATOR2_TARGET_INSERT",
                            data: '{"P_INDICATOR_ID":"' + id + '", "P_YR":"' + yr + '", "P_VAL":"' + $.trim($(el).val()) + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function () {
                                $(el).parent().html($.trim($(el).val()));
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
        }
        else
        {
            if (oldval == '0') $(el).parent().html('');
            else $(el).parent().html(oldval);
            $(el).parent().removeAttr("style");
            alert('Танд төлөвлөх эрх байхгүй байна!');
        }
    }
    function saveIsClosed(el) {
        var valIsSubmit = '0';
        if (!$(el).prop('checked')) {
            valIsSubmit = '1';
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
            data: '{"qry":"UPDATE TBL_INDICATOR2 SET ISCLOSED=' + valIsSubmit + ' WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
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

    //tab1t2
    function dataBindTab1t2DataTable() {
        var valData = "";
        var valIsEdit = '0';
        showLoader('loaderTab1t2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT ISACTIVE FROM TBL_INDICATORTYPE2 WHERE ID=' + <%=Request.QueryString["id"]%> + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == '1') {
                    if (funcCheckRoles('1,37')) {
                        valIsEdit = '1';
                    }
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/Indicator2Tab1t2Datatable",
                    data: '{}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valData += "<table id=\"pTab1t2Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
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
                            valData += "<td>" + value.ROWNO + "</td>";
                            valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                            valData += "<td>";
                            if (valIsEdit == '1') {
                                valData += "<div class=\"btn-group\">";
                                valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab1t2(this,'засах');\" data-target=\"#pTab1t2Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                                valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab1t2(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                                valData += "</div>";
                            }
                            valData += "</td>";
                            valData += "</tr>";
                        });
                        valData += "<script>";
                        valData += "var responsiveHelper_pTab1t2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab1t2Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab1t2Datatable) {responsiveHelper_pTab1t2Datatable = new ResponsiveDatatablesHelper($('#pTab1t2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab1t2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab1t2Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"25px\" }, null, { \"sWidth\": \"45px\" }]});";
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
        $('#pTab1t2ModalInputName').val('');
        if (isinsupt == 'засах') {
            $('#pTab1t2ModalID').text($(el).closest('tr').attr('data-id'));
            $('#pTab1t2ModalInputName').val($(el).closest('tr').find('td:eq(1)').html());
        }
    }
    function showDeleteTab1t2(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_INDICATOR2 WHERE INDICATORCATEGORY_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') {
                    alert('Сонгосон төрөлд хамааралтай үзүүлэлт орсон тул устгах боломжгүй байна!');
                }
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон төрлийг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"DELETE FROM TBL_INDICATORCATEGORY2 WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    var valData = '';
                                    globalAjaxVar = $.ajax({
                                        type: "POST",
                                        url: "../ws/ServiceMain.svc/OracleExecuteDataSet",
                                        data: '{"qry":"SELECT a.ID, a.NAME FROM TBL_INDICATORCATEGORY2 a ORDER BY a.NAME"}',
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function (data) {
                                            valData = '';
                                            $($.parseJSON(data.d)).each(function (index, value) {
                                                valData += '<option value="' + value.ID + '" title="' + value.NAME + '">' + value.NAME + '</option>';
                                            });
                                            $("#pTab1ModalSelectCategory").html('<option value="">- Сонго -</option>' + valData);
                                            dataBindTab1t2DataTable();
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
    $('#pTab1t2ModalForm').bootstrapValidator({
        fields: {
            pTab1t2ModalInputName: {
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
            if ($("#pTab1t2ModalHeaderLabel").html() == "нэмэх") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"INSERT INTO TBL_INDICATORCATEGORY2 (ID, INDICATORTYPE_ID, NAME, CREATED_STAFFID, CREATED_DATE) VALUES (TBLLASTID(\'TBL_INDICATORCATEGORY2\'), ' + <%=Request.QueryString["id"]%> + ', \'' + replaceDisplayToDatabase($.trim($('#pTab1t2ModalInputName').val())) + '\', ' + $('#indexUserId').text() + ', SYSDATE)"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        var valData = '';
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/OracleExecuteDataSet",
                            data: '{"qry":"SELECT a.ID, a.NAME FROM TBL_INDICATORCATEGORY2 a ORDER BY a.NAME"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += '<option value="' + value.ID + '" title="' + value.NAME + '">' + value.NAME + '</option>';
                                });
                                $("#pTab1ModalSelectCategory").html('<option value="">- Сонго -</option>' + valData);
                                dataBindTab1t2DataTable();
                                $('#pTab1t2Modal').modal('hide');
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
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"UPDATE TBL_INDICATORCATEGORY2 SET NAME=\'' + replaceDisplayToDatabase($.trim($('#pTab1t2ModalInputName').val())) + '\', UPDATED_STAFFID=' + $('#indexUserId').text() + ', UPDATED_DATE=SYSDATE WHERE ID=' + $('#pTab1t2ModalID').html() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        var valData = '';
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/OracleExecuteDataSet",
                            data: '{"qry":"SELECT a.ID, a.NAME FROM TBL_INDICATORCATEGORY2 a ORDER BY a.NAME"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    valData += '<option value="' + value.ID + '" title="' + value.NAME + '">' + value.NAME + '</option>';
                                });
                                $("#pTab1ModalSelectCategory").html('<option value="">- Сонго -</option>' + valData);
                                dataBindTab1t2DataTable();
                                $('#pTab1t2Modal').modal('hide');
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

    //tab2
    function dataBindTab2DataTable() {
        var valData = "";
        showLoader('loaderTab2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/Indicator2Tab2Datatable",
            data: '{"indicatortypeid":"' + <%=Request.QueryString["id"]%> + '", "yr":"' + $('#pTab2SelectYear option:selected').val() + '", "gazarid":"' + $('#pTab2SelectGazar option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table id=\"pTab2Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                valData += "<thead>";
                valData += "<tr>";
                valData += "<th class=\"text-center\">#</th>";
                valData += "<th class=\"text-center\">Үзүүлэлт</th>";
                valData += "<th class=\"text-center\">Зорилт</th>";
                valData += "<th class=\"text-center\">1 сар</th>";
                valData += "<th class=\"text-center\">2 сар</th>";
                valData += "<th class=\"text-center\">3 сар</th>";
                valData += "<th class=\"text-center\">4 сар</th>";
                valData += "<th class=\"text-center\">5 сар</th>";
                valData += "<th class=\"text-center\">6 сар</th>";
                valData += "<th class=\"text-center\">7 сар</th>";
                valData += "<th class=\"text-center\">8 сар</th>";
                valData += "<th class=\"text-center\">9 сар</th>";
                valData += "<th class=\"text-center\">10 сар</th>";
                valData += "<th class=\"text-center\">11 сар</th>";
                valData += "<th class=\"text-center\">12 сар</th>";
                valData += "<th class=\"text-center\">Хариуцах газар</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td class=\"text-right\" style=\"vertical-align:middle;\">" + value.TARGET + "</td>";
                    valData += "<td class=\"text-right\" " + value.MNTH1 + " data-mnth=\"1\">" + value.VALMNTH1 + "</td>";
                    valData += "<td class=\"text-right\" " + value.MNTH2 + " data-mnth=\"2\">" + value.VALMNTH2 + "</td>";
                    valData += "<td class=\"text-right\" " + value.MNTH3 + " data-mnth=\"3\">" + value.VALMNTH3 + "</td>";
                    valData += "<td class=\"text-right\" " + value.MNTH4 + " data-mnth=\"4\">" + value.VALMNTH4 + "</td>";
                    valData += "<td class=\"text-right\" " + value.MNTH5 + " data-mnth=\"5\">" + value.VALMNTH5 + "</td>";
                    valData += "<td class=\"text-right\" " + value.MNTH6 + " data-mnth=\"6\">" + value.VALMNTH6 + "</td>";
                    valData += "<td class=\"text-right\" " + value.MNTH7 + " data-mnth=\"7\">" + value.VALMNTH7 + "</td>";
                    valData += "<td class=\"text-right\" " + value.MNTH8 + " data-mnth=\"8\">" + value.VALMNTH8 + "</td>";
                    valData += "<td class=\"text-right\" " + value.MNTH9 + " data-mnth=\"9\">" + value.VALMNTH9 + "</td>";
                    valData += "<td class=\"text-right\" " + value.MNTH10 + " data-mnth=\"10\">" + value.VALMNTH10 + "</td>";
                    valData += "<td class=\"text-right\" " + value.MNTH11 + " data-mnth=\"11\">" + value.VALMNTH11 + "</td>";
                    valData += "<td class=\"text-right\" " + value.MNTH12 + " data-mnth=\"12\">" + value.VALMNTH12 + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.BRLISTNAME) + "</td>";
                    valData += "</tr>";
                });
                valData += "<script>";
                valData += "var responsiveHelper_pTab2Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab2Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab2Datatable) {responsiveHelper_pTab2Datatable = new ResponsiveDatatablesHelper($('#pTab2Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab2Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab2Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"25px\" }, null, { \"sWidth\": \"65px\" },{ \"sWidth\": \"65px\" }, { \"sWidth\": \"65px\" }, { \"sWidth\": \"65px\" }, { \"sWidth\": \"65px\" }, { \"sWidth\": \"65px\" }, { \"sWidth\": \"65px\" }, { \"sWidth\": \"65px\" }, { \"sWidth\": \"65px\" }, { \"sWidth\": \"65px\" }, { \"sWidth\": \"65px\" }, { \"sWidth\": \"65px\" }, { \"sWidth\": \"65px\" }, { \"sWidth\": \"65px\" }]});";
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
    $("#pTab2SelectYear, #pTab2SelectGazar").change(function () {
        dataBindTab2DataTable();
    });
    function tab2TargetClick(el) {
        var varVal = '';
        if ($.trim($(el).text()) == '') varVal = '0';
        else varVal = $.trim($(el).text());
        var trindex = $(el).closest('tr').index();
        var tdindex = $(el).index();

        $(el).css("padding", "3px 0 0 0");
        $(el).html('<input type="text" value="' + varVal + '" maxlength="15" style="width:93px; text-align:right; padding:2px;" onblur="tab2TargetBlur(this, \'' + varVal + '\');"/>');
        $('#pTab2Datatable tbody tr:eq(' + trindex + ')').find('td:eq(' + tdindex + ')').find(':text').focus();
        $('#pTab2Datatable tbody tr:eq(' + trindex + ')').find('td:eq(' + tdindex + ')').find(':text').select();
    }
    function tab2TargetBlur(el, oldval) {
        var yr = $('#pTab2SelectYear option:selected').val();
        var mnth = $(el).parent().attr('data-mnth');
        var id = $(el).closest('tr').attr('data-id');
        $(el).parent().removeAttr("style");
        if ($.trim($(el).val()) == '') {
            if ('0' == oldval) {
                $(el).parent().html('');
            }
            else {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/INDICATOR2_PERF_INSERT",
                    data: '{"P_INDICATOR_ID":"' + id + '", "P_YR":"' + yr + '", "P_MNTH":"' + mnth + '", "P_VAL":"' + $.trim($(el).val()) + '", "P_STAFFID":"' + $('#indexUserId').text() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        $(el).parent().html($.trim($(el).val()));
                        smallBox('Гүйцэтгэл', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
            if ($.trim($(el).val()).toString() == oldval.toString()) {
                if (oldval == '0') $(el).parent().html('');
                else $(el).parent().html(oldval);
            }
            else {
                if (!$.isNumeric($.trim($(el).val()))) {
                    alert('Зөвхөн тоо оруулна уу!'); $(el).parent().html(oldval);
                }
                else {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/INDICATOR2_PERF_INSERT",
                        data: '{"P_INDICATOR_ID":"' + id + '", "P_YR":"' + yr + '", "P_MNTH":"' + mnth + '", "P_VAL":"' + $.trim($(el).val()) + '", "P_STAFFID":"' + $('#indexUserId').text() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            $(el).parent().html($.trim($(el).val()));
                            smallBox('Гүйцэтгэл', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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

    //tab3t1
    function dataBindTab3t1DataTable() {
        var valData = "";
        showLoader('loaderTab3t1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/Indicator2Tab3t1Datatable",
            data: '{"indicatortypeid":"' + <%=Request.QueryString["id"]%> + '", "yr":"' + $('#pTab3t1SelectYear option:selected').val() + '", "gazarid":"' + $('#pTab3t1SelectGazar option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData += "<table style=\"border: 1px solid #000; border-collapse: collapse; font: 11pt arial, sans-serif; width: 100%;\">";
                valData += "<thead>";
                valData += "<tr>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width:25px;\">#</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Үзүүлэлт</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Зорилт</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Суурь үзүүлэлт</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width: 65px;\">1 сар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width: 65px;\">2 сар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width: 65px;\">3 сар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width: 65px;\">4 сар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width: 65px;\">5 сар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width: 65px;\">6 сар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width: 65px;\">7 сар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width: 65px;\">8 сар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width: 65px;\">9 сар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width: 65px;\">10 сар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width: 65px;\">11 сар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center; width: 65px;\">12 сар</th>";
                valData += "<th style=\"border: 1px solid #000; padding:5px; text-align:center;\">Хариуцах газар</th>";
                valData += "</tr>";
                valData += "</thead>";
                valData += "<tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + value.ROWNO + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:left;\">" + replaceDatabaseToDisplay(value.TARGET) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:middle;\">" + replaceDatabaseToDisplay(value.BASLINENAME) + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:right;\">" + value.VALMNTH1 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:right;\">" + value.VALMNTH2 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:right;\">" + value.VALMNTH3 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:right;\">" + value.VALMNTH4 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:right;\">" + value.VALMNTH5 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:right;\">" + value.VALMNTH6 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:right;\">" + value.VALMNTH7 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:right;\">" + value.VALMNTH8 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:right;\">" + value.VALMNTH9 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:right;\">" + value.VALMNTH10 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:right;\">" + value.VALMNTH11 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:right;\">" + value.VALMNTH12 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\">" + replaceDatabaseToDisplay(value.BRLISTNAME) + "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody>";
                valData += "</table>";
                $("#divBindTab3t1Table").html(valData);
                $('#pTab3t1Year').html($('#pTab3t1SelectYear option:selected').val());
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
    $("#pTab3t1SelectYear, #pTab3t1SelectGazar").change(function () {
        dataBindTab3t1DataTable();
    });

    //tab3t2
    function dataBindTab3t2DataTable() {
        var valData = "";
        showLoader('loaderTab3t2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/Indicator2Tab3t2Datatable",
            data: '{"indicatortypeid":"' + <%=Request.QueryString["id"]%> + '", "yr":"' + $('#pTab3t2SelectYear option:selected').val() + '", "yr2":"' + $('#pTab3t2SelectYear2 option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $("#divBindTab3t2Table").html(data.d);
                $('#pTab3t2Year').html($('#pTab3t2SelectYear option:selected').val());
                $('#pTab3t2Year2').html($('#pTab3t2SelectYear2 option:selected').val());
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
    $("#pTab3t2SelectYear, #pTab3t2SelectYear2").change(function () {
        dataBindTab3t2DataTable();
    });

    
    //tab3t3
    function dataBindTab3t3DataTable() {
        var valData = "";
        var valIsEdit = '0';
        showLoader('loaderTab3t3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry": "SELECT ISACTIVE FROM TBL_INDICATORTYPE WHERE ID=' + <%=Request.QueryString["id"]%> + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == '1') {
                    if (funcCheckRoles('1,37')) {
                        valIsEdit = '1';
                    }
                }
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/Indicator2Tab3t3Datatable",
                    data: '{}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valData += "<table id=\"pTab3t3Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\">";
                        valData += "<thead>";
                        valData += "<tr>";
                        valData += "<th class=\"text-center\">#</th>";
                        valData += "<th class=\"text-center\">Нэр</th>";
                        valData += "<th class=\"text-center\">Файл</th>";
                        valData += "<th>&nbsp;</th>";
                        valData += "</tr>";
                        valData += "</thead>";
                        valData += "<tbody>";
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<tr data-id=\"" + value.ID + "\">";
                            valData += "<td>" + value.ROWNO + "</td>";
                            valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                            valData += "<td>";
                            valData += "<div class=\"btn-group\">";
                            valData += "<a href=\"../files/indicator/" + value.FILENAME + "\" class=\"btn btn-default btn-xs\" download title=\"Хавсаргасан файл татах\"><i class=\"fa fa-download\"></i></a>";
                            valData += "<a href=\"../pg/indicator2Tab3t3AttachShowModal.aspx?id=" + value.ID + "\" class=\"btn btn-default btn-xs\" data-target=\"#pTab3t3AttachShowModal\" data-toggle=\"modal\"><i class=\"fa fa-eye\"></i></a>";
                            valData += "</div>";
                            valData += "</td>";
                            valData += "<td>";
                            if (valIsEdit == '1') {
                                valData += "<div class=\"btn-group\">";
                                valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab3t3(this,'засах');\" data-target=\"#pTab3t3Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                                valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab3t3(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                                valData += "</div>";
                            }
                            valData += "</td>";
                            valData += "</tr>";
                        });
                        valData += "<script>";
                        valData += "var responsiveHelper_pTab3t3Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#pTab3t3Datatable').dataTable({\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_pTab3t3Datatable) {responsiveHelper_pTab3t3Datatable = new ResponsiveDatatablesHelper($('#pTab3t3Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_pTab3t3Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_pTab3t3Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"25px\" }, null, { \"sWidth\": \"40px\" }, { \"sWidth\": \"45px\" }]});";
                        valData += "<\/script>";
                        $("#divBindTab3t3Table").html(valData);
                        hideLoader('loaderTab3t3');
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
    function showAddEditTab3t3(el, isinsupt) {
        var valData = '';
        $('#pTab3t3ModalHeaderLabel').html(isinsupt);
        $('#pTab3t3ModalID').html('');
        $('#pTab3t3ModalInputName').val('');
        $('#pTab3t3ModalAttachBtn').html('Файл хавсаргаагүй байна...');
        $('#pTab3t3ModalAttachBtn').attr('href', 'javascript:void(0);');
        $('#pTab3t3ModalAttachInput').val('');
        if (isinsupt == 'засах') {
            $('#pTab3t3ModalID').text($(el).closest('tr').attr('data-id'));
            $('#pTab3t3ModalInputName').val($(el).closest('tr').find('td:eq(1)').html());
            if ($.trim($(el).closest('tr').find('td:eq(2)').html()) != '') {
                $('#pTab3t3ModalAttachBtn').attr('href', $(el).closest('tr').find('td:eq(2)').find('a').attr('href'));
                $('#pTab3t3ModalAttachBtn').html($(el).closest('tr').find('td:eq(2)').find('a').attr('href').split('/').pop());
                $('#pTab3t3ModalAttachInput').val('');
            }
        }
    }
    function showDeleteTab3t3(el) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Сонгосон хавсралт файлыг устгах уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"DELETE FROM TBL_INDICATOR2PDFATTACH WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        if ($.trim($(el).closest('tr').find('td:eq(2)').html()) != '') {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/DeleteFile",
                                data: '{"filename":"~/files/indicator/' + $(el).closest('tr').find('td:eq(2)').find('a').attr('href').split('/').pop() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    smallBox('Гүйцэтгэлийн үзүүлэлт', 'Хавсралт файл амжилттай устгагдлаа', '#659265', 3000);
                                },
                                failure: function (response) {
                                    alert('FAILURE: ' + response.d);
                                },
                                error: function (xhr, status, error) {
                                    window.location = '../#pg/error500.aspx';
                                }
                            });
                        }
                        dataBindTab3t3DataTable();
                        smallBox('Гүйцэтгэлийн үзүүлэлт', 'Амжилттай устгагдлаа', '#659265', 3000);
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
    $('#pTab3t3ModalForm').bootstrapValidator({
        fields: {
            pTab3t3ModalInputName: {
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
            var valMaxId = '';
            var filename = 'none';
            if ($('#pTab3t3ModalHeaderLabel').text() == 'нэмэх') {
                if ($('#pTab3t3ModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                        data: '{"qry": "SELECT NVL(MAX(ID),1) FROM TBL_INDICATOR2PDFATTACH"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            valMaxId = data.d;
                            filename = "ГүйцэтгэлийнҮзүүлэлт2-"+valMaxId+"." + $('#pTab3t3ModalAttachBtn').html().split('.')[$('#pTab3t3ModalAttachBtn').html().split('.').length - 1];
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"INSERT INTO TBL_INDICATOR2PDFATTACH (ID, NAME, FILENAME, CREATED_STAFFID, CREATED_DATE) VALUES (TBLLASTID(\'TBL_INDICATOR2PDFATTACH\'), \'' + replaceDisplayToDatabase($.trim($('#pTab3t3ModalInputName').val())) + '\', \'' + filename + '\', ' + $('#indexUserId').text() + ', SYSDATE)"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    if ($("#pTab3t3ModalAttachInput").val() != '') {
                                        var uploadfiles = $("#pTab3t3ModalAttachInput").get(0);
                                        var uploadedfiles = uploadfiles.files;
                                        var fromdata = new FormData();
                                        fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                                        globalAjaxVar = $.ajax({
                                            type: "POST",
                                            url: "../pg/UploadFile.ashx?folder=indicator&filename=" + filename,
                                            data: fromdata,
                                            contentType: false,
                                            processData: false,
                                            success: function () {
                                                smallBox('Хавсралт файл', 'Амжилттай хадгалагдлаа', '#659265', 3000);
                                            },
                                            failure: function (response) {
                                                alert('FAILURE: ' + response.d);
                                            },
                                            error: function (xhr, status, error) {
                                                var err = eval("(" + xhr.responseText + ")");
                                                if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                                else alert('Зураг хадгалахад алдаа гарлаа: ' + err.Message);
                                            }
                                        });
                                    }
                                    dataBindTab3t3DataTable();
                                    smallBox('Гүйцэтгэлийн үзүүлэлт', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
                else alert('Хавсралт файл сонгоно уу!');
            }
            else {
                filename = "ГүйцэтгэлийнҮзүүлэлт2-" + $(el).closest('tr').attr('data-id') + "." + $('#pTab3t3ModalAttachBtn').html().split('.')[$('#pTab3t3ModalAttachBtn').html().split('.').length - 1];
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"UPDATE TBL_INDICATOR2PDFATTACH SET NAME=\'' + replaceDisplayToDatabase($.trim($('#pTab3t3ModalInputName').val())) + '\' WHERE ID=' + $(el).closest('tr').attr('data-id') + ')"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        if ($("#pTab3t3ModalAttachInput").val() != '') {
                            var uploadfiles = $("#pTab3t3ModalAttachInput").get(0);
                            var uploadedfiles = uploadfiles.files;
                            var fromdata = new FormData();
                            fromdata.append(uploadedfiles[0].name, uploadedfiles[0]);
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../pg/UploadFile.ashx?folder=indicator&filename=" + filename,
                                data: fromdata,
                                contentType: false,
                                processData: false,
                                success: function () {
                                    smallBox('Хавсралт файл', 'Амжилттай хадгалагдлаа', '#659265', 3000);
                                },
                                failure: function (response) {
                                    alert('FAILURE: ' + response.d);
                                },
                                error: function (xhr, status, error) {
                                    var err = eval("(" + xhr.responseText + ")");
                                    if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login.aspx';
                                    else alert('Зураг хадгалахад алдаа гарлаа: ' + err.Message);
                                }
                            });
                        }
                        dataBindTab3t3DataTable();
                        smallBox('Гүйцэтгэлийн үзүүлэлт', 'Амжилттай хадгалагдлаа', '#659265', 3000);
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
    $("#pTab3t3ModalAttachInput").change(function () {
        var errMsg = '';
        var uploadfiles = $(this).get(0);
        var uploadedfiles = uploadfiles.files;
        var fromdata = new FormData();
        if (uploadedfiles[0].size > 104857600) {
            errMsg += 'Файлын хэмжээ 100MB -аас ихгүй байна!\n';
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
            $('#pTab3t3ModalAttachBtn').html($(this).val().split('\\').pop());
        }
        else alert(errMsg);
    });
    $("#pTab3t3ModalAttachDelete").click(function () {
        if ($('#pTab3t3ModalAttachBtn').html() != 'Файл хавсаргаагүй байна...') {
            $.SmartMessageBox({
                title: "Анхааруулга!",
                content: "Та устгахдаа итгэлтэй байна уу?",
                buttons: '[Үгүй][Тийм]'
            }, function (ButtonPressed) {
                if (ButtonPressed === "Тийм") {
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/DeleteFile",
                        data: '{"filename":"~/files/indicator/' + $('#pTab3t3ModalAttachBtn').html() + '"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            $('#pTab3t3ModalAttachBtn').html('Файл хавсаргаагүй байна...');
                            $('#pTab3t3ModalAttachInput').val('');
                            smallBox('Хавсаргасан файл', 'Амжилттай устгагдлаа', '#659265', 3000);
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
</script>
