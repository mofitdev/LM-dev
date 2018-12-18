<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eafki.aspx.cs" Inherits="LMWebApp.pg.eafki" %>
<style type="text/css">
.eafkiTable > tbody > tr > td:hover {
     background: #d6dde7;
     cursor:pointer;
}
.eafkiTable > tbody > tr > td {
     text-align:right;
}
.eafkiTable > thead > tr > th {
     text-align:center;
     vertical-align:middle;
}
</style> 
<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
    <h1 class="page-title txt-color-blueDark">
    <i class="fa-fw fa fa-home"></i>
    <span>> Санхүү, эдийн засгийн үндсэн үзүүлэлт</span>
    </h1>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
            <ul class="nav nav-tabs bordered">
                <li class="active">
                    <a data-toggle="tab" href="#eafkiTab1">
                        <i class="fa fa-fw fa-lg fa-file-text "></i>
                        Санхүү, эдийн засгийн үндсэн үзүүлэлт
                    </a>
                </li>
                <li>
                    <a data-toggle="tab" href="#eafkiTab2">
                        Мэдээлэл оруулах
                    </a>
                </li>
            </ul>
            <div id="eafkiTabContent" class="tab-content">
                <div id="eafkiTab1" runat="server" class="tab-pane active">
                    <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                        <div style="width:70%; float:left;">
                            <div style="width:62px; float: left; margin-right: 10px;">
                                <select id="eafkiTab1SelectYear" runat="server" class="form-control" style="padding:1px;"><option>2012</option><option>2013</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                            </div>
                            <div style="width:72px; float: left; margin-right: 10px;">
                                <select id="eafkiTab1SelectMonth" runat="server" class="form-control" style="padding:1px;">
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
                            <div style="width:125px; float: left; margin-right: 10px;">
                                <select id="eafkiTab1SelectLanguage" runat="server" class="form-control" style="padding:1px;">
                                    <option value="mn">Монгол хэлээр</option>
                                    <option value="en">Англи хэлээр</option>
                                </select>
                            </div>
                        </div>
                        <div style="text-align:right; width:30%; float:left;">
                            <img id="eafkiTab1ExportPdf" src="../img/pdf-icon.png" style="cursor:pointer;" onclick="exportPdf('#diveafkiTab1')"/>
                            <img id="eafkiTab1ExportWord" src="../img/word-icon.png" style="cursor: pointer;" onclick="exportWord('#diveafkiTab1','Санхүү, эдийн засгийн үзүүлэлт <% Response.Write(eafkiTab1SelectYear.Items[eafkiTab1SelectYear.SelectedIndex].Text); %> оны <% Response.Write(eafkiTab1SelectMonth.Items[eafkiTab1SelectMonth.SelectedIndex].Text); %>-р сар')" />
                            <img id="eafkiTab1ExportExcel" src="../img/excel-icon.png" style="cursor: pointer;" onclick="exportExcel('#diveafkiTab1')" />
                            <button id="eafkiTab1Print" class="btn btn-info btn-sm" type="button" onclick="PrintElem('#diveafkiTab1')"><span class="fa fa-print"></span> Хэвлэх </button>
                            <button id="eafkiTab1Refresh" class="btn btn-info btn-sm" type="button"><span class="fa fa-refresh"></span> </button>                            
                        </div>
                    </div>
                    <div id="loaderTab1" class="search-background">
                        <img width="64" height="" src="img/loading.gif"/>
                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                    </div>
                    <div id="diveafkiTab1" runat="server" class="reports">
                        <div>
                        <table style="font: 10px arial, sans-serif; width: 100%;">
                            <tbody>
                                <tr>
                                    <td colspan="2">
                                        <table style="color: #254061; border-bottom: 3px solid black; font: 10px arial, sans-serif; width: 100%;">
                                            <tbody>
                                                <tr>
                                                    <td rowspan="2"><img id="eafkiTab1HeadImg" src="../forclient/img/moflogo.jpg" style="height: 40px; width: 131px;"/></td>
                                                    <td id="eafkiTab1HeadTitle" runat="server" style="font-size:20px; font-weight:bold; text-align:right;">САНХҮҮ, ЭДИЙН ЗАСГИЙН ҮНДСЭН ҮЗҮҮЛЭЛТ</td>
                                                </tr>
                                                <tr>
                                                    <td id="eafkiTab1HeadYearAndMonth" runat="server" style="font-size:18px; text-align:right;">$$$$ оны $$-р сар</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:50%; vertical-align: top; padding-right: 15px; padding-top: 10px;">
                                        <table style="font: 12px arial, sans-serif; width: 100%;">
                                            <tbody id="eafkiTab1s1Table" runat="server">
                                                <tr>
                                                    <td colspan="2" style="font-weight:bold; color:#E4564F; padding-bottom: 10px;">1. ЭДИЙН ЗАСГИЙН ҮЗҮҮЛЭЛТ</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="font-weight:bold; padding-left:2em;border-bottom:1px solid #CCC;">А.ДОТООДЫН НИЙТ БҮТЭЭГДЭХҮҮН<span style="font-weight:normal; font-style:italic; float:right;">Улирлын байдлаар</span></td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-left:4em; text-align: justify;padding-top: 5px;">ДНБ /оны эхнээс, тэрбум төгрөг, 2005 оны зэрэгцүүлэх үнээр/</td>
                                                    <td style="text-align:right;font-size: 14px;">1148.1</td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-left:4em; text-align: justify;padding-top: 5px;">ДНБ /оны эхнээс, тэрбум төгрөг/</td>
                                                    <td style="text-align:right;font-size: 14px;">3439.0</td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-left:4em; text-align: justify;padding-top: 5px;">ДНБ-ний өсөлт /хувиар/</td>
                                                    <td style="text-align:right;font-size: 14px;">7.4%</td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-left:4em; text-align: justify;padding-top: 5px; font-style:italic; color:#E4564F; font-weight:bold;">ДНБ-ний зорилтот өсөлт /хувиар/</td>
                                                    <td style="text-align:right;font-size: 14px; font-style:italic; color:#E4564F; font-weight:bold;">14.8%</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="text-align:right;font-size: 10px; font-style:italic;">Эх сурвалж: ҮСХ</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="font-weight:bold; padding-left:2em;border-bottom:1px solid #CCC;padding-top: 5px;">Б. ИНФЛЯЦИ</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <table style="font: 12px arial, sans-serif; width: 100%;">
                                                            <tbody>
                                                                <tr>
                                                                    <td>&nbsp;</td>
                                                                    <td style="font-weight:bold;padding-top: 5px;text-align: right;">2014/10-р сар</td>
                                                                    <td style="font-weight:bold;text-align: right;">2014/11-р сар</td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="padding-left:4em;padding-top: 5px;">Сарын</td>
                                                                    <td style="text-align:right; font-size:14px;">0.7%</td>
                                                                    <td style="text-align:right; font-size:14px;">0.8%</td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="padding-left:4em;padding-top: 5px;">Оны эхнээс</td>
                                                                    <td style="text-align:right; font-size:14px;">0.7%</td>
                                                                    <td style="text-align:right; font-size:14px;">0.8%</td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="padding-left:4em;padding-top: 5px;">Жилийн</td>
                                                                    <td style="text-align:right; font-size:14px;">0.7%</td>
                                                                    <td style="text-align:right; font-size:14px;">0.8%</td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="padding-left:4em;padding-top: 5px; font-style:italic; color:#E4564F; font-weight:bold;">Зорилтот түвшин</td>
                                                                    <td style="text-align:right; font-size:14px; font-style:italic; color:#E4564F; font-weight:bold;"><0.7%</td>
                                                                    <td style="text-align:right; font-size:14px; font-style:italic; color:#E4564F; font-weight:bold;"><0.8%</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>                                                
                                                <tr>
                                                    <td colspan="2" style="text-align:right;font-size: 10px; font-style:italic;">Эх сурвалж: ҮСХ</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="font-weight:bold; padding-left:2em;border-bottom:1px solid #CCC;padding-top: 5px;">В. ГОЛ ТҮҮХИЙ ЭДИЙН ҮНЭ (олон улсын зах зээл дээр)</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <table style="font: 12px arial, sans-serif; width: 100%;">
                                                            <tbody>
                                                                <tr>
                                                                    <td>&nbsp;</td>
                                                                    <td style="font-weight:bold;padding-top: 5px;text-align: right;">10-р сарын дундаж</td>
                                                                    <td>&nbsp;</td>
                                                                    <td style="font-weight:bold;text-align: right;">11-р сарын дундаж</td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="padding-left:4em;padding-top: 5px;">Зэс ($/т)</td>
                                                                    <td style="text-align:right; font-size:14px;">6650.04</td>
                                                                    <td style="text-align:right;">0.4% <i class="glyphicon glyphicon-arrow-up txt-color-green"></i></td>
                                                                    <td style="text-align:right; font-size:14px;">6673.56</td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="padding-left:4em;padding-top: 5px;">Алт ($/у)</td>
                                                                    <td style="text-align:right; font-size:14px;">1336.08</td>
                                                                    <td style="text-align:right;">-2.8% <i class="glyphicon glyphicon-arrow-down txt-color-red"></i></td>
                                                                    <td style="text-align:right; font-size:14px;">1,298.45</td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="padding-left:4em;padding-top: 5px;">Нүүрс ($/т)</td>
                                                                    <td style="text-align:right; font-size:14px;">73.34</td>
                                                                    <td style="text-align:right;">-0.7% <i class="glyphicon glyphicon-arrow-down txt-color-red"></i></td>
                                                                    <td style="text-align:right; font-size:14px;">72.82</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>                                                    
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="text-align:right;font-size: 10px; font-style:italic;">Эх сурвалж: ДБ</td>
                                                </tr>                                                
                                            </tbody>
                                        </table>
                                    </td>
                                    <td style="width:50%; vertical-align: top; padding-left: 15px; padding-top: 10px;">
                                        <table style="font: 12px arial, sans-serif; width: 100%;">
                                            <tbody id="eafkiTab1s2Table" runat="server">
                                                <tr>
                                                    <td colspan="2" style="font-weight:bold; color:#E4564F; padding-bottom: 10px;">2. МӨНГӨНИЙ БОДЛОГЫН ҮЗҮҮЛЭЛТ</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="font-weight:bold; padding-left:2em;border-bottom:1px solid #CCC;">А. БОДЛОГЫН ХҮҮ</td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-left:4em; text-align: justify;padding-top: 5px;">Хамгийн сүүлд 2013.06.24 өдөр зарласан</td>
                                                    <td style="text-align:right;font-size: 14px;">12.0%</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="text-align:right;font-size: 10px; font-style:italic;">Эх сурвалж: МБ</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="font-weight:bold; padding-left:2em;border-bottom:1px solid #CCC;padding-top: 5px;">Б. ГАДААД ВАЛЮТЫН НӨӨЦ (сая ам.доллар)</td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-left:4em; text-align: justify;padding-top: 5px;">2014 оны 1 сарын байдлаар</td>
                                                    <td style="text-align:right;font-size: 14px;">2446.3</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="text-align:right;font-size: 10px; font-style:italic;">Эх сурвалж: МБ</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="font-weight:bold; padding-left:2em;border-bottom:1px solid #CCC;padding-top: 5px;">В. ВАЛЮТЫН ХАНШ</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <table style="font: 12px arial, sans-serif; width: 100%;">
                                                            <tbody>
                                                                <tr>
                                                                    <td>&nbsp;</td>
                                                                    <td style="font-weight:bold;padding-top: 5px;">10-р сарын дундаж</td>
                                                                    <td>&nbsp;</td>
                                                                    <td style="font-weight:bold;">11-р сарын дундаж</td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="padding-left:2em;padding-top: 5px;">Ам доллар</td>
                                                                    <td style="text-align:center; font-size:14px;">1772.30</td>
                                                                    <td style="text-align:right;">0.7% <i class="glyphicon glyphicon-arrow-up txt-color-green"></i></td>
                                                                    <td style="text-align:center; font-size:14px;">1784.11</td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="padding-left:2em;padding-top: 5px;">Эвро</td>
                                                                    <td style="text-align:center; font-size:14px;">2450.32</td>
                                                                    <td style="text-align:right;">0.6% <i class="glyphicon glyphicon-arrow-up txt-color-green"></i></td>
                                                                    <td style="text-align:center; font-size:14px;">2464.69</td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="padding-left:2em;padding-top: 5px;">Юань</td>
                                                                    <td style="text-align:center; font-size:14px;">287.12</td>
                                                                    <td style="text-align:right;">-0.2%&nbsp;<i class="glyphicon glyphicon-arrow-down txt-color-red"></i></td>
                                                                    <td style="text-align:center; font-size:14px;">286.64</td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="padding-left:2em;padding-top: 5px;">Рубль</td>
                                                                    <td style="text-align:center; font-size:14px;">48.98</td>
                                                                    <td style="text-align:right;">2.1% <i class="glyphicon glyphicon-arrow-up txt-color-green"></i></td>
                                                                    <td style="text-align:center; font-size:14px;">50.00</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>                                                    
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="text-align:right;font-size: 10px; font-style:italic;">Эх сурвалж: МБ/td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="font-weight:bold; padding-left:2em;border-bottom:1px solid #CCC;padding-top: 5px;">Г. ЗЭЭЛЖИХ ЗЭРЭГЛЭЛ</td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-left:4em; text-align: justify;padding-top: 5px;">S&P</td>
                                                    <td>B+ (2014.04.29) from BB-</td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-left:4em; text-align: justify;padding-top: 5px;">Moody's</td>
                                                    <td>B1 (stable)  (2009)</td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-left:4em; text-align: justify;padding-top: 5px;">Fitch</td>
                                                    <td>B+ (neg) (2013.12.13)</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="text-align:right;font-size: 10px; font-style:italic; height: 10px; vertical-align: bottom;">Эх сурвалж: Зэрэглэл тогтоогч ОУБ</td>
                                                </tr>                                                
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="font-weight:bold;">
                                        <hr style="margin-top: 10px; margin-bottom: 10px; border: 0; border-top: 1px solid #CCC;" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:50%; vertical-align: top; padding-right: 15px;">
                                        <table style="font: 12px arial, sans-serif; width: 100%;">
                                            <tbody>
                                                <tr>
                                                    <td id="eafkiTab1s3Title" colspan="2" style="font-weight:bold; color:#E4564F;">3. НЭГДСЭН ТӨСВИЙН ҮЗҮҮЛЭЛТ</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="padding-top:10px;">
                                                        <div style="padding: 12px; border:1px solid #CCC; overflow:hidden;">
                                                            <div id="charttest1" style="width: 100%; padding: 0px; position: relative;"></div>
                                                            <div style="margin: 8px 0; height: 3px; border-top: 1px solid #E3E3E3; border-bottom: 1px solid #E3E3E3; border-top-color: rgba(0,0,0,.11); border-bottom-color: rgba(0,0,0,.11);"></div>
                                                            <div id="eafkiTab1s3n1" runat="server">
                                                                <div style="width:31.3%; border-left: none; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;">
                                                                    <div>Жилийн төлөвлөгөө</div>
                                                                    <div style="font-size: 19px;">
                                                                        6,883.9
                                                                    </div>
                                                                </div>
                                                                <div style="width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;">
                                                                    <div>Эхний 4 сарын төлөвлөгөө</div>
                                                                    <div style="font-size: 19px;">
                                                                        2002.0
                                                                    </div>
                                                                </div>
                                                                <div style="width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;">
                                                                    <div>Гүйцэтгэл</div>
                                                                    <div style="font-size: 19px;">
                                                                        1675.8
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="padding-top:10px;">
                                                        <div style="padding: 12px;  border:1px solid #CCC; overflow:hidden;">
                                                            <div id="charttest2" style="width: 100%; padding: 0px; position: relative;"></div>
                                                            <div style="margin: 8px 0; height: 3px; border-top: 1px solid #E3E3E3; border-bottom: 1px solid #E3E3E3; border-top-color: rgba(0,0,0,.11); border-bottom-color: rgba(0,0,0,.11);"></div>
                                                            <div id="eafkiTab1s3n2" runat="server">
                                                                <div style="width:31.3%; border-left: none; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;">
                                                                    <div>Жилийн төлөвлөгөө</div>
                                                                    <div style="font-size: 19px;">
                                                                        7294.2
                                                                    </div>
                                                                </div>
                                                                <div style="width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;">
                                                                    <div>Эхний 4 сарын төлөвлөгөө</div>
                                                                    <div style="font-size: 19px;">
                                                                        2232.7
                                                                    </div>
                                                                </div>
                                                                <div style="width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;">
                                                                    <div>Гүйцэтгэл</div>
                                                                    <div style="font-size: 19px;">
                                                                        1781.5
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="padding-top:10px;">
                                                        <div style="padding: 12px;  border:1px solid #CCC; overflow:hidden;">
                                                            <div id="charttest3" style="width: 100%; padding: 0px; position: relative;">
                                                                
                                                            </div>
                                                            <div style="margin: 8px 0; height: 3px; border-top: 1px solid #E3E3E3; border-bottom: 1px solid #E3E3E3; border-top-color: rgba(0,0,0,.11); border-bottom-color: rgba(0,0,0,.11);"></div>
                                                            <div id="eafkiTab1s3n3" runat="server">
                                                                <div style="width:47.3%; border-left: none; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;">
                                                                    <div>Жилийн ашиг/алдагдал (тэрбүм.төг)</div>
                                                                    <div style="font-size: 19px;">
                                                                        -410.3
                                                                    </div>
                                                                </div>
                                                                <div style="width:47.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;">
                                                                    <div>Нийт тэнцэл/эхний 4 сарын төлөвлөгөө</div>
                                                                    <div style="font-size: 19px;">
                                                                        -105.6
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                    <td style="width:50%; vertical-align: top; padding-left: 15px;">
                                        <table style="font: 12px arial, sans-serif; width: 100%;">
                                            <tbody>
                                                <tr>
                                                    <td colspan="2" style="padding-top: 24px;">
                                                        <div style="padding: 12px;  border:1px solid #CCC; overflow:hidden;">
                                                            <div id="charttest5" style="width: 100%; padding: 0px; position: relative;">
                                                                
                                                            </div>
                                                            <div style="margin: 8px 0; height: 3px; border-top: 1px solid #E3E3E3; border-bottom: 1px solid #E3E3E3; border-top-color: rgba(0,0,0,.11); border-bottom-color: rgba(0,0,0,.11);"></div>
                                                            <div id="eafkiTab1s3n5" runat="server">
                                                                <div style="width:31.3%; border-left: none; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;">
                                                                    <div>Жилийн төлөвлөгөө</div>
                                                                    <div style="font-size: 19px;">
                                                                        1,710.5
                                                                    </div>
                                                                </div>
                                                                <div style="width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;">
                                                                    <div>Эхний 4 сарын төлөвлөгөө</div>
                                                                    <div style="font-size: 19px;">
                                                                        1,327.8
                                                                    </div>
                                                                </div>
                                                                <div style="width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;">
                                                                    <div>Гүйцэтгэл</div>
                                                                    <div style="font-size: 19px;">
                                                                        980.4
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="padding-top: 11px;">
                                                        <div style="padding: 12px;  border:1px solid #CCC; overflow:hidden;">
                                                            <div id="charttest6" style="width: 100%; padding: 0px; position: relative; height:440px;">
                                                                
                                                            </div>
                                                            <div style="margin: 8px 0; height: 3px; border-top: 1px solid #E3E3E3; border-bottom: 1px solid #E3E3E3; border-top-color: rgba(0,0,0,.11); border-bottom-color: rgba(0,0,0,.11);"></div>
                                                            <div id="eafkiTab1s3n6h1" runat="server" style="overflow: hidden;">
                                                                <div style="width:31.3%; border-left: none; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;">
                                                                    <div>Мөнгөн хөрөнгийн дундаж үлдэгдэл</div>
                                                                    <div style="font-size: 19px;">
                                                                        506.4
                                                                    </div>
                                                                </div>
                                                                <div style="width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;">
                                                                    <div>Богино хугацаат хадгаламж</div>
                                                                    <div style="font-size: 19px;">
                                                                        232.6
                                                                    </div>
                                                                </div>
                                                                <div style="width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;">
                                                                    <div>Улсын төсөв</div>
                                                                    <div style="font-size: 19px;">
                                                                        -368.6
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div id="eafkiTab1s3n6h2" runat="server" style="overflow: hidden;">
                                                                <div style="width:31.3%; border-left: none; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;">
                                                                    <div>Орон нутгийн төсөв</div>
                                                                    <div style="font-size: 19px;">
                                                                        472.3
                                                                    </div>
                                                                </div>
                                                                <div style="width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;">
                                                                    <div>НДС</div>
                                                                    <div style="font-size: 19px;">
                                                                        86.2
                                                                    </div>
                                                                </div>
                                                                <div style="width:31.3%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;">
                                                                    <div>Төлбөр түргэн гүйцэтгэх чадвар</div>
                                                                    <div style="font-size: 19px;">
                                                                        -1.17
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="font-weight:bold;">
                                        <hr style="margin-top: 10px; margin-bottom: 10px; border: 0; border-top: 1px solid #CCC;" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:50%; vertical-align: top; padding-right: 15px;">
                                        <table style="font: 12px arial, sans-serif; width: 100%;">
                                            <tbody>
                                                <tr>
                                                    <td colspan="2" style="font-weight:bold; color:#E4564F; padding-bottom: 10px;">4. ӨРИЙН ҮЗҮҮЛЭЛТ</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="border:1px solid #CCC;">
                                                        <div style="float:left; width:50%; padding-top: 10px; padding-left: 10px;">
                                                            <table style="font: 12px arial, sans-serif; width: 100%; height:90px;">
                                                                <tbody id="eafkiTab1s4n1" runat="server">
                                                                    <tr>
                                                                        <td colspan="3" style="font-weight:bold; text-align:center; padding-bottom:30px;">А. ЗАСГИЙН ГАЗРЫН ӨРИЙН БҮТЭЦ (тэрбүм төг, 2014 I улирал)</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" style="font-weight:bold; text-align:center;vertical-align: top;height: 25px;">Нийт өр</td>
                                                                        <td style="text-align:right; font-weight:bold; font-size: 14px;vertical-align: top;">1046.5</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Гадаад зээл</td>
                                                                        <td style="text-align:center;">38%</td>
                                                                        <td style="text-align:right; font-size: 14px;">3939.1</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Дотоод үнэт цаас</td>
                                                                        <td style="text-align:center;">20%</td>
                                                                        <td style="text-align:right; font-size: 14px;">2093.6</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Гадаад үнэт цаас</td>
                                                                        <td style="text-align:center;">26%</td>
                                                                        <td style="text-align:right; font-size: 14px;">2673.0</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Бусад</td>
                                                                        <td style="text-align:center;">17%</td>
                                                                        <td style="text-align:right; font-size: 14px;">1759.7</td>
                                                                    </tr>
                                                                    <tr style="font-style:italic;">
                                                                        <td colspan="2">Баталгаа</td>
                                                                        <td style="text-align:right; font-size: 14px;">1033.6</td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                        <div style="float:right; width:50%;">
                                                            <div id="charttest4">

                                                            </div>
                                                        </div>                                                        
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                    <td style="width:50%; vertical-align: top; padding-left: 15px;">
                                        <table style="font: 12px arial, sans-serif; width: 100%;">
                                            <tbody>
                                                <tr>
                                                    <td colspan="2" style="padding-top: 21px;">
                                                        <div style="padding: 12px;  border:1px solid #CCC; overflow:hidden;">
                                                            <div id="charttest7" style="width: 100%; padding: 0px; position: relative;">
                                                                
                                                            </div>
                                                            <div style="margin: 8px 0; height: 3px; border-top: 1px solid #E3E3E3; border-bottom: 1px solid #E3E3E3; border-top-color: rgba(0,0,0,.11); border-bottom-color: rgba(0,0,0,.11);"></div>
                                                            <div>
                                                                <div style="width:23%; border-left: none; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;">
                                                                    <div>Бондын төлбөрт 10 сард</div>
                                                                    <div style="font-size: 19px;">
                                                                        0
                                                                    </div>
                                                                </div>
                                                                <div style="width:23%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;">
                                                                    <div>Зээлийн төлбөр</div>
                                                                    <div style="font-size: 19px;">
                                                                        157.6
                                                                    </div>
                                                                </div>
                                                                <div style="width:23%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;">
                                                                    <div>Үндсэн зээлийн төлбөр</div>
                                                                    <div style="font-size: 19px;">
                                                                        111.4
                                                                    </div>
                                                                </div>
                                                                <div style="width:23%; border-left: 1px solid #E3E3E3; box-sizing: border-box; display: block; margin: 1% 1%; padding: 0 2%; float: left; text-align:center;">
                                                                    <div>Хүүгийн төлбөр</div>
                                                                    <div style="font-size: 19px;">
                                                                        46.1
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>                                                
                                            </tbody>
                                        </table>
                                    </td>
                                </tr> 
                                <tr>
                                    <td colspan="2" style="font-weight:bold;">
                                        <hr style="margin-top: 10px; margin-bottom: 10px; border: 0; border-top: 3px solid #000;" />
                                    </td>
                                </tr>  
                                <tr>
                                    <td id="eafkiTab1FooterGazarName" colspan="2" style="font-weight:bold; text-align:center;font-size: 15px;">
                                        ТӨСВИЙН ХЯНАЛТ, ЭРСДЭЛИЙН УДИРДЛАГЫН ГАЗАР
                                    </td>
                                </tr> 
                            </tbody>
                        </table>
                        </div>                          
                    </div> 
                </div>
                <div id="eafkiTab2" runat="server" class="tab-pane">
                    <div style="width:100%;">
                        <ul class="nav nav-tabs bordered">                           
                            <li class="active">
                                <a data-toggle="tab" href="#eafkiTab2t1">1. Эдийн засгийн үзүүлэлт</a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#eafkiTab2t2">2. Мөнгөний бодлогын үзүүлэлт</a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#eafkiTab2t3">3. Нэгдсэн төсвийн үзүүлэлт</a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#eafkiTab2t4">4. Өрийн үзүүлэлт</a>
                            </li>
                        </ul>
                        <div id="eafkiTab2Content" class="tab-content">
                            <div id="eafkiTab2t1" class="tab-pane active">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                                            <header>
                                                <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                                <h2> ДНБ-ний мэдээлэл <span id="eafkiTab2t1s1Year" runat="server"></span> он</h2>
                                                <div class="widget-toolbar">
                                                    <div class="btn-group options" style="margin-right:0px !important;">
                                                        <select id="eafkiTab2t1s1SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                                    </div> 
                                                </div>
                                            </header>
                                            <div>
                                                <div class="widget-body no-padding">
                                                    <div>
                                                        <div id="loaderTab2t1s1" class="search-background">
                                                            <img width="64" height="" src="img/loading.gif"/>
                                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                                        </div>
                                                        <div id="divBindTab2t1s1Table" runat="server">
                                                            
                                                        </div>
                                                    </div>
                                                </div>                                                
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                                            <header>
                                                <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                                <h2> Инфляцийн мэдээлэл <span id="eafkiTab2t1s2Year" runat="server"></span> он</h2>
                                                <div class="widget-toolbar">
                                                    <div class="btn-group options" style="margin-right:0px !important;">
                                                        <select id="eafkiTab2t1s2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                                    </div> 
                                                </div>
                                            </header>
                                            <div>
                                                <div class="widget-body no-padding">
                                                    <div>
                                                        <div id="loaderTab2t1s2" class="search-background">
                                                            <img width="64" height="" src="img/loading.gif"/>
                                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                                        </div>
                                                        <div id="divBindTab2t1s2Table" runat="server"></div>
                                                    </div>
                                                </div>                                                
                                            </div>
                                        </div>
                                    </div>                                    
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                                            <header>
                                                <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                                <h2> Гол түүхий эдийн үнэ <span id="eafkiTab2t1s3Year" runat="server"></span> он</h2>
                                                <div class="widget-toolbar">
                                                    <div class="btn-group options" style="margin-right:0px !important;">
                                                        <select id="eafkiTab2t1s3SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                                    </div> 
                                                </div>
                                            </header>
                                            <div>
                                                <div class="widget-body no-padding">
                                                    <div>
                                                        <div id="loaderTab2t1s3" class="search-background">
                                                            <img width="64" height="" src="img/loading.gif"/>
                                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                                        </div>
                                                        <div id="divBindTab2t1s3Table" runat="server"></div>
                                                    </div>
                                                </div>                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="eafkiTab2t2" class="tab-pane">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                                            <header>
                                                <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                                <h2> Бодлогын хүүгийн мэдээлэл <span id="eafkiTab2t2s1Year" runat="server"></span> он</h2>
                                                <div class="widget-toolbar">
                                                    <div class="btn-group options" style="margin-right:0px !important;">
                                                        <select id="eafkiTab2t2s1SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                                    </div> 
                                                </div>
                                            </header>
                                            <div>
                                                <div class="widget-body no-padding">
                                                    <div>
                                                        <div id="loaderTab2t2s1" class="search-background">
                                                            <img width="64" height="" src="img/loading.gif"/>
                                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                                        </div>
                                                        <div id="divBindTab2t2s1Table" runat="server"></div>
                                                    </div>
                                                </div>                                                
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                                            <header>
                                                <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                                <h2> Гадаад валютын нөөцийн мэдээлэл <span id="eafkiTab2t2s2Year" runat="server"></span> он</h2>
                                                <div class="widget-toolbar">
                                                    <div class="btn-group options" style="margin-right:0px !important;">
                                                        <select id="eafkiTab2t2s2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                                    </div> 
                                                </div>
                                            </header>
                                            <div>
                                                <div class="widget-body no-padding">
                                                    <div>
                                                        <div id="loaderTab2t2s2" class="search-background">
                                                            <img width="64" height="" src="img/loading.gif"/>
                                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                                        </div>
                                                        <div id="divBindTab2t2s2Table" runat="server"></div>
                                                    </div>
                                                </div>                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                                            <header>
                                                <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                                <h2> Валютын ханшийн мэдээлэл <span id="eafkiTab2t2s3Year" runat="server"></span> он</h2>
                                                <div class="widget-toolbar">
                                                    <div class="btn-group options" style="margin-right:0px !important;">
                                                        <select id="eafkiTab2t2s3SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                                    </div> 
                                                </div>
                                            </header>
                                            <div>
                                                <div class="widget-body no-padding">
                                                    <div>
                                                        <div id="loaderTab2t2s3" class="search-background">
                                                            <img width="64" height="" src="img/loading.gif"/>
                                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                                        </div>
                                                        <div id="divBindTab2t2s3Table" runat="server"></div>
                                                    </div>
                                                </div>                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="eafkiTab2t3" class="tab-pane">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                                            <header>
                                                <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                                <h2> Гүйцэтгэл <span id="eafkiTab2t3s1Year" runat="server"></span> он /төгрөгөөр/</h2>
                                                <div class="widget-toolbar">
                                                    <div class="btn-group options" style="margin-right:0px !important;">
                                                        <select id="eafkiTab2t3s1SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                                    </div> 
                                                </div>
                                            </header>
                                            <div>
                                                <div class="widget-body no-padding">
                                                    <div>
                                                        <div id="loaderTab2t3s1" class="search-background">
                                                            <img width="64" height="" src="img/loading.gif"/>
                                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                                        </div>
                                                        <div id="divBindTab2t3s1Table" runat="server"></div>
                                                    </div>
                                                </div>                                                
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                                            <header>
                                                <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                                <h2> Жилийн төлөвлөгөө <span id="eafkiTab2t3s2Year" runat="server"></span> он /төгрөгөөр/</h2>
                                                <div class="widget-toolbar">
                                                    <div class="btn-group options" style="margin-right:0px !important;">
                                                        <select id="eafkiTab2t3s2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                                    </div> 
                                                </div>
                                            </header>
                                            <div>
                                                <div class="widget-body no-padding">
                                                    <div>
                                                        <div id="loaderTab2t3s2" class="search-background">
                                                            <img width="64" height="" src="img/loading.gif"/>
                                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                                        </div>
                                                        <div id="divBindTab2t3s2Table" runat="server"></div>
                                                    </div>
                                                </div>                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                                            <header>
                                                <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                                <h2> Мөнгөн хөрөнгийн талаарх мэдээлэл <span id="eafkiTab2t3s3Year" runat="server"></span> он /төгрөгөөр/</h2>
                                                <div class="widget-toolbar">
                                                    <div class="btn-group options" style="margin-right:0px !important;">
                                                        <select id="eafkiTab2t3s3SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                                    </div> 
                                                </div>
                                            </header>
                                            <div>
                                                <div class="widget-body no-padding">
                                                    <div>
                                                        <div id="loaderTab2t3s3" class="search-background">
                                                            <img width="64" height="" src="img/loading.gif"/>
                                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                                        </div>
                                                        <div id="divBindTab2t3s3Table" runat="server"></div>
                                                    </div>
                                                </div>                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="eafkiTab2t4" class="tab-pane">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                                            <header>
                                                <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                                <h2> Өрийн бүтэц /төрлөөр/ <span id="eafkiTab2t4s1Year" runat="server"></span> он /тэрбум.төг/</h2>
                                                <div class="widget-toolbar">
                                                    <div class="btn-group options" style="margin-right:0px !important;">
                                                        <select id="eafkiTab2t4s1SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                                    </div> 
                                                </div>
                                            </header>
                                            <div>
                                                <div class="widget-body no-padding">
                                                    <div>
                                                        <div id="loaderTab2t4s1" class="search-background">
                                                            <img width="64" height="" src="img/loading.gif"/>
                                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                                        </div>
                                                        <div id="divBindTab2t4s1Table" runat="server"></div>
                                                    </div>
                                                </div>                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                                            <header>
                                                <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                                <h2> Өрийн бүтэц /валютын нэгжээр/ <span id="eafkiTab2t4s2Year" runat="server"></span> он /тэрбум.төг/</h2>
                                                <div class="widget-toolbar">
                                                    <div class="btn-group options" style="margin-right:0px !important;">
                                                        <select id="eafkiTab2t4s2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                                    </div> 
                                                </div>
                                            </header>
                                            <div>
                                                <div class="widget-body no-padding">
                                                    <div>
                                                        <div id="loaderTab2t4s2" class="search-background">
                                                            <img width="64" height="" src="img/loading.gif"/>
                                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                                        </div>
                                                        <div id="divBindTab2t4s2Table" runat="server"></div>
                                                    </div>
                                                </div>                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                                            <header>
                                                <span class="widget-icon"> <i class="fa fa-calendar"></i> </span>
                                                <h2> Зээл /төрлөөр/ <span id="eafkiTab2t4s3Year" runat="server"></span> он /сая.төг/</h2>
                                                <div class="widget-toolbar">
                                                    <div class="btn-group options" style="margin-right:0px !important;">
                                                        <select id="eafkiTab2t4s3SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                                    </div> 
                                                </div>
                                            </header>
                                            <div>
                                                <div class="widget-body no-padding">
                                                    <div>
                                                        <div id="loaderTab2t4s3" class="search-background">
                                                            <img width="64" height="" src="img/loading.gif"/>
                                                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                                        </div>
                                                        <div id="divBindTab2t4s3Table" runat="server"></div>
                                                    </div>
                                                </div>                                                
                                            </div>
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
<script>
    pageSetUp();
    var globalAjaxVar = null;
    var pagefunction = function () {
        dataBindTab1Datatable();
    }
    var pagedestroy = function () {
        if (globalAjaxVar != null) {
            globalAjaxVar.abort();
            globalAjaxVar = null;
        }
    }
    pagefunction();
    //tab1
    $("#eafkiTab1SelectYear").change(function () {
        dataBindTab1Datatable();
        drawChartS3();
    });
    $("#eafkiTab1SelectMonth").change(function () {
        dataBindTab1Datatable();
        drawChartS3();
    });
    $("#eafkiTab1SelectLanguage").change(function () {
        dataBindTab1Datatable();
        drawChartS3();
    });
    function dataBindTab1Datatable() {
        var d = new Date();
        var month = new Array();
        month[0] = "JAN";
        month[1] = "JAN";
        month[2] = "FEB";
        month[3] = "MAR";
        month[4] = "APR";
        month[5] = "MAY";
        month[6] = "JUN";
        month[7] = "JUL";
        month[8] = "AUG";
        month[9] = "SEP";
        month[10] = "OCT";
        month[11] = "NOV";
        month[12] = "DEC";

        showLoader('loaderTab1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/eafki_eafkiTab1s1",
            data: '{yr:"' + $("#eafkiTab1SelectYear option:selected").val() + '", mnth:"' + $("#eafkiTab1SelectMonth option:selected").val() + '", lang:"' + $("#eafkiTab1SelectLanguage option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                if ($("#eafkiTab1SelectLanguage option:selected").val() == 'mn') {
                    $('#eafkiTab1HeadTitle').text('САНХҮҮ, ЭДИЙН ЗАСГИЙН ҮНДСЭН ҮЗҮҮЛЭЛТ');
                    $('#eafkiTab1FooterGazarName').text('ТӨСВИЙН ХЯНАЛТ, ЭРСДЭЛИЙН УДИРДЛАГЫН ГАЗАР');
                    $('#eafkiTab1HeadYearAndMonth').text($("#eafkiTab1SelectYear option:selected").val() + ' оны ' + $("#eafkiTab1SelectMonth option:selected").val() + '-р сар');
                    $('#eafkiTab1HeadImg').attr('src', '../forclient/img/moflogo.jpg');
                }
                else {
                    $('#eafkiTab1HeadTitle').text('ECONOMIC AND FINANCIAL KEY INDICATORS');
                    $('#eafkiTab1FooterGazarName').text('BUDGETARY CONTROL AND RISK MANAGEMENT DEPARTMENT');
                    $('#eafkiTab1HeadYearAndMonth').text(month[$("#eafkiTab1SelectMonth option:selected").val()] + ' ' + $("#eafkiTab1SelectYear option:selected").val());
                    $('#eafkiTab1HeadImg').attr('src', '../forclient/img/moflogo-en.jpg');
                }
                $("#eafkiTab1s1Table").html(msg.d);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "ws.aspx/eafki_eafkiTab1s2",
                    data: '{yr:"' + $("#eafkiTab1SelectYear option:selected").val() + '", mnth:"' + $("#eafkiTab1SelectMonth option:selected").val() + '", lang:"' + $("#eafkiTab1SelectLanguage option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        $("#eafkiTab1s2Table").html(msg.d);
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "ws.aspx/eafki_eafkiTab1s3Datas",
                            data: '{yr:"' + $("#eafkiTab1SelectYear option:selected").val() + '", mnth:"' + $("#eafkiTab1SelectMonth option:selected").val() + '", lang:"' + $("#eafkiTab1SelectLanguage option:selected").val() + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                $("#eafkiTab1s3n1").html(msg.d.split('~')[0]);
                                $("#eafkiTab1s3n2").html(msg.d.split('~')[1]);
                                $("#eafkiTab1s3n3").html(msg.d.split('~')[2]);
                                $("#eafkiTab1s3n5").html(msg.d.split('~')[3]);
                                $("#eafkiTab1s3n6h1").html(msg.d.split('~')[4]);
                                $("#eafkiTab1s3n6h2").html(msg.d.split('~')[5]);
                                $("#eafkiTab1s4n1").html(msg.d.split('~')[6]);

                                drawChartS3();
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
    //tab2t1
    ////tab2t1s1
    //$("#eafkiTab2t1s1Table tbody tr td").click(function (e) {
    //    if ($(this).index() > 0 && $(this).index() < 5) {
    //        $(this).css("padding", "6px 0 0 0");
    //        $(this).html('<input type="text" value="' + $(this).text() + '" maxlength="13" style=\"width:100px; text-align:right; padding:2px;\" onblur="txtBlurNumeric(this)"/>');
    //        $('#eafkiTab2t1s1Table tbody tr:eq(' + $(this).closest('tr').index() + ')').find('td:eq(' + $(this).index() + ')').find(':text').focus();
    //        $('#eafkiTab2t1s1Table tbody tr:eq(' + $(this).closest('tr').index() + ')').find('td:eq(' + $(this).index() + ')').find(':text').select();
    //        $(this).closest('tr').find('td:eq(5)').find('a').css('display','block');
    //    }
    //});
    function eafkiTab2t1s1TableTdOnClick(el){
        $(el).css("padding", "6px 0 0 0");
        $(el).html('<input type="text" value="' + $(el).text().replace(/,/g,'') + '" maxlength="13" style=\"width:100px; text-align:right; padding:2px;\" onblur="txtBlurNumeric(this)"/>');
        $('#eafkiTab2t1s1Table tbody tr:eq(' + $(el).closest('tr').index() + ')').find('td:eq(' + $(el).index() + ')').find(':text').focus();
        $('#eafkiTab2t1s1Table tbody tr:eq(' + $(el).closest('tr').index() + ')').find('td:eq(' + $(el).index() + ')').find(':text').select();
        $(el).closest('tr').find('td:eq(5)').find('a').css('display', 'block');
    }
    function txtBlurNumeric(el) {
        if ($.trim($(el).val()) == "") $(el).parent().html($(el).val());
        else {
            if ($.isNumeric($.trim($(el).val())) == true) {
                $(el).parent().removeAttr("style");
                $(el).parent().html(($(el).val() + "").replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,"));
            }
            else {
                alert('Зөвхөн тоон төрөл оруулна уу!');
                $(el).select();
            }
        }
    }
    function saveTab2t1s1(el) {
        var errMsg = '';
        for(var i=1;i<5;i++) if ($.trim($(el).closest('tr').find('td:eq(' + i + ')').html()) == "") errMsg='Гүйцэт мэдээлэл оруулна уу!';
        
        if (errMsg == '') {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteNonQuery",
                data: '{qry:"DELETE FROM TBL_EAFKI_MAIN WHERE TP=\'2t1s1\' AND YR=' + $('#eafkiTab2t1s1SelectYear option:selected').val() + ' AND MNTH=' + $.trim($(el).closest('tr').find('td:eq(0)').text()) + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                    else {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "ws.aspx/WSOracleExecuteNonQuery",
                            data: '{qry:"INSERT INTO TBL_EAFKI_MAIN (YR, MNTH, D1, D2, D3, D4, TP) VALUES (' + $('#eafkiTab2t1s1SelectYear option:selected').val() + ', ' + $.trim($(el).closest('tr').find('td:eq(0)').text()) + ', ' + $.trim($(el).closest('tr').find('td:eq(1)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(2)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(3)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(4)').text().replace(/,/g, '')) + ', \'2t1s1\')"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                                else {
                                    $(el).closest('tr').find('td:eq(5)').find('a').css('display', 'none');
                                    $.smallBox({
                                        title: "Мэдээлэл",
                                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
                                        color: "#659265",
                                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                        timeout: 3000
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
        else alert('Мэдээлэл гүйцэт оруулна уу!');
    }
    $("#eafkiTab2t1s1SelectYear").change(function () {
        $('#eafkiTab2t1s1Year').text($(this).val());
        dataBindTab2t1s1Datatable();
    });
    function dataBindTab2t1s1Datatable(){
        showLoader('loaderTab2t1s1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/eafki_eafkiTab2t1s1",
            data: '{yr:"' + $("#eafkiTab2t1s1SelectYear option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divBindTab2t1s1Table").html(msg.d);
                hideLoader('loaderTab2t1s1');
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
    //tab2t1s2
    //$("#eafkiTab2t1s2Table tbody tr td").click(function (e) {
    //    if ($(this).index() > 0 && $(this).index() < 5) {
    //        $(this).css("padding", "6px 0 0 0");
    //        $(this).html('<input type="text" value="' + $(this).text() + '" maxlength="13" style=\"width:100px; text-align:right; padding:2px;\" onblur="txtBlurNumeric(this)"/>');
    //        $('#eafkiTab2t1s2Table tbody tr:eq(' + $(this).closest('tr').index() + ')').find('td:eq(' + $(this).index() + ')').find(':text').focus();
    //        $('#eafkiTab2t1s2Table tbody tr:eq(' + $(this).closest('tr').index() + ')').find('td:eq(' + $(this).index() + ')').find(':text').select();
    //        $(this).closest('tr').find('td:eq(5)').find('a').css('display', 'block');
    //    }
    //});
    function eafkiTab2t1s2TableTdOnClick(el) {
        if ($(el).index() > 0 && $(el).index() < 5) {
            $(el).css("padding", "6px 0 0 0");
            $(el).html('<input type="text" value="' + $(el).text().replace(/,/g, '') + '" maxlength="13" style=\"width:100px; text-align:right; padding:2px;\" onblur="txtBlurNumeric(this)"/>');
            $('#eafkiTab2t1s2Table tbody tr:eq(' + $(el).closest('tr').index() + ')').find('td:eq(' + $(el).index() + ')').find(':text').focus();
            $('#eafkiTab2t1s2Table tbody tr:eq(' + $(el).closest('tr').index() + ')').find('td:eq(' + $(el).index() + ')').find(':text').select();
            $(el).closest('tr').find('td:eq(5)').find('a').css('display', 'block');
        }
    }
    function saveTab2t1s2(el) {
        var errMsg = '';
        for (var i = 1; i < 5; i++) if ($.trim($(el).closest('tr').find('td:eq(' + i + ')').html()) == "") errMsg = 'Гүйцэт мэдээлэл оруулна уу!';

        if (errMsg == '') {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteNonQuery",
                data: '{qry:"DELETE FROM TBL_EAFKI_MAIN WHERE TP=\'2t1s2\' AND YR=' + $('#eafkiTab2t1s2SelectYear option:selected').val() + ' AND MNTH=' + $.trim($(el).closest('tr').find('td:eq(0)').text()) + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                    else {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "ws.aspx/WSOracleExecuteNonQuery",
                            data: '{qry:"INSERT INTO TBL_EAFKI_MAIN (YR, MNTH, D1, D2, D3, D4, TP) VALUES (' + $('#eafkiTab2t1s2SelectYear option:selected').val() + ', ' + $.trim($(el).closest('tr').find('td:eq(0)').text()) + ', ' + $.trim($(el).closest('tr').find('td:eq(1)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(2)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(3)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(4)').text().replace(/,/g, '')) + ', \'2t1s2\')"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                                else {
                                    $(el).closest('tr').find('td:eq(5)').find('a').css('display', 'none');
                                    $.smallBox({
                                        title: "Мэдээлэл",
                                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
                                        color: "#659265",
                                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                        timeout: 3000
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
        else alert('Мэдээлэл гүйцэт оруулна уу!');
    }
    $("#eafkiTab2t1s2SelectYear").change(function () {
        $('#eafkiTab2t1s2Year').text($(this).val());
        dataBindTab2t1s2Datatable();
    });
    function dataBindTab2t1s2Datatable() {
        showLoader('loaderTab2t1s2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/eafki_eafkiTab2t1s2",
            data: '{yr:"' + $("#eafkiTab2t1s2SelectYear option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divBindTab2t1s2Table").html(msg.d);
                hideLoader('loaderTab2t1s2');
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
    //tab2t1s3
    //$("#eafkiTab2t1s3Table tbody tr td").click(function (e) {
    //    if ($(this).index() > 0 && $(this).index() < 5) {
    //        $(this).css("padding", "6px 0 0 0");
    //        $(this).html('<input type="text" value="' + $(this).text() + '" maxlength="13" style=\"width:100px; text-align:right; padding:2px;\" onblur="txtBlurNumeric(this)"/>');
    //        $('#eafkiTab2t1s3Table tbody tr:eq(' + $(this).closest('tr').index() + ')').find('td:eq(' + $(this).index() + ')').find(':text').focus();
    //        $('#eafkiTab2t1s3Table tbody tr:eq(' + $(this).closest('tr').index() + ')').find('td:eq(' + $(this).index() + ')').find(':text').select();
    //        $(this).closest('tr').find('td:eq(5)').find('a').css('display', 'block');
    //    }
    //});
    function eafkiTab2t1s3TableTdOnClick(el) {
        if ($(el).index() > 0 && $(el).index() < 5) {
            $(el).css("padding", "6px 0 0 0");
            $(el).html('<input type="text" value="' + $(el).text().replace(/,/g, '') + '" maxlength="13" style=\"width:100px; text-align:right; padding:2px;\" onblur="txtBlurNumeric(this)"/>');
            $('#eafkiTab2t1s3Table tbody tr:eq(' + $(el).closest('tr').index() + ')').find('td:eq(' + $(el).index() + ')').find(':text').focus();
            $('#eafkiTab2t1s3Table tbody tr:eq(' + $(el).closest('tr').index() + ')').find('td:eq(' + $(el).index() + ')').find(':text').select();
            $(el).closest('tr').find('td:eq(5)').find('a').css('display', 'block');
        }
    }
    function saveTab2t1s3(el) {
        var errMsg = '';
        for (var i = 1; i < 5; i++) if ($.trim($(el).closest('tr').find('td:eq(' + i + ')').html()) == "") errMsg = 'Гүйцэт мэдээлэл оруулна уу!';

        if (errMsg == '') {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteNonQuery",
                data: '{qry:"DELETE FROM TBL_EAFKI_MAIN WHERE TP=\'2t1s3\' AND YR=' + $('#eafkiTab2t1s3SelectYear option:selected').val() + ' AND MNTH=' + $.trim($(el).closest('tr').find('td:eq(0)').text()) + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                    else {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "ws.aspx/WSOracleExecuteNonQuery",
                            data: '{qry:"INSERT INTO TBL_EAFKI_MAIN (YR, MNTH, D1, D2, D3, D4, TP) VALUES (' + $('#eafkiTab2t1s3SelectYear option:selected').val() + ', ' + $.trim($(el).closest('tr').find('td:eq(0)').text()) + ', ' + $.trim($(el).closest('tr').find('td:eq(1)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(2)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(3)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(4)').text().replace(/,/g, '')) + ', \'2t1s3\')"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                                else {
                                    $(el).closest('tr').find('td:eq(5)').find('a').css('display', 'none');
                                    $.smallBox({
                                        title: "Мэдээлэл",
                                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
                                        color: "#659265",
                                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                        timeout: 3000
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
        else alert('Мэдээлэл гүйцэт оруулна уу!');
    }
    $("#eafkiTab2t1s3SelectYear").change(function () {
        $('#eafkiTab2t1s3Year').text($(this).val());
        dataBindTab2t1s3Datatable();
    });
    function dataBindTab2t1s3Datatable() {
        showLoader('loaderTab2t1s3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/eafki_eafkiTab2t1s3",
            data: '{yr:"' + $("#eafkiTab2t1s3SelectYear option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divBindTab2t1s3Table").html(msg.d);
                hideLoader('loaderTab2t1s3');
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
    //tab2t2s1
    //$("#eafkiTab2t2s1Table tbody tr td").click(function (e) {
    //    if ($(this).index() > 0 && $(this).index() < 4) {
    //        $(this).css("padding", "6px 0 0 0");
    //        if ($(this).index()==3) $(this).html('<input type="text" value="' + $(this).text() + '" maxlength="13" style=\"width:100px; text-align:right; padding:2px;\" onblur="txtBlurNumeric(this)"/>');
    //        else $(this).html('<input type="text" value="' + $(this).text() + '" maxlength="80" style=\"width:200px; text-align:left; padding:2px;\" onblur="txtBlurText(this)"/>');
    //        $('#eafkiTab2t2s1Table tbody tr:eq(' + $(this).closest('tr').index() + ')').find('td:eq(' + $(this).index() + ')').find(':text').focus();
    //        $('#eafkiTab2t2s1Table tbody tr:eq(' + $(this).closest('tr').index() + ')').find('td:eq(' + $(this).index() + ')').find(':text').select();
    //        $(this).closest('tr').find('td:eq(4)').find('a').css('display', 'block');
    //    }
    //});
    function eafkiTab2t2s1TableTdOnClick(el) {
        if ($(el).index() > 0 && $(el).index() < 4) {
            $(el).css("padding", "6px 0 0 0");
            if ($(el).index() == 3) $(el).html('<input type="text" value="' + $(el).text().replace(/,/g, '') + '" maxlength="13" style=\"width:100px; text-align:right; padding:2px;\" onblur="txtBlurNumeric(this)"/>');
            else $(el).html('<input type="text" value="' + $(el).text() + '" maxlength="80" style=\"width:200px; text-align:left; padding:2px;\" onblur="txtBlurText(this)"/>');
            $('#eafkiTab2t2s1Table tbody tr:eq(' + $(el).closest('tr').index() + ')').find('td:eq(' + $(el).index() + ')').find(':text').focus();
            $('#eafkiTab2t2s1Table tbody tr:eq(' + $(el).closest('tr').index() + ')').find('td:eq(' + $(el).index() + ')').find(':text').select();
            $(el).closest('tr').find('td:eq(4)').find('a').css('display', 'block');
        }
    }
    function txtBlurText(el) {
        $(el).parent().removeAttr("style");
        $(el).parent().css('text-align', 'left');
        $(el).parent().html($(el).val());
    }
    function saveTab2t2s1(el) {
        var errMsg = '';
        for (var i = 1; i < 4; i++) if ($.trim($(el).closest('tr').find('td:eq(' + i + ')').html()) == "") errMsg = 'Гүйцэт мэдээлэл оруулна уу!';

        if (errMsg == '') {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteNonQuery",
                data: '{qry:"DELETE FROM TBL_EAFKI_MAIN WHERE TP=\'2t2s1\' AND YR=' + $('#eafkiTab2t2s1SelectYear option:selected').val() + ' AND MNTH=' + $.trim($(el).closest('tr').find('td:eq(0)').text()) + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                    else {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "ws.aspx/WSOracleExecuteNonQuery",
                            data: '{qry:"INSERT INTO TBL_EAFKI_MAIN (YR, MNTH, DESC_MN, DESC_EN, D1, TP) VALUES (' + $('#eafkiTab2t2s1SelectYear option:selected').val() + ', ' + $.trim($(el).closest('tr').find('td:eq(0)').text()) + ', \'' + $.trim($(el).closest('tr').find('td:eq(1)').text()) + '\', \'' + $.trim($(el).closest('tr').find('td:eq(2)').text()) + '\', ' + $.trim($(el).closest('tr').find('td:eq(3)').text().replace(/,/g, '')) + ', \'2t2s1\')"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                                else {
                                    $(el).closest('tr').find('td:eq(4)').find('a').css('display', 'none');
                                    $.smallBox({
                                        title: "Мэдээлэл",
                                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
                                        color: "#659265",
                                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                        timeout: 3000
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
        else alert('Мэдээлэл гүйцэт оруулна уу!');
    }
    $("#eafkiTab2t2s1SelectYear").change(function () {
        $('#eafkiTab2t2s1Year').text($(this).val());
        dataBindTab2t2s1Datatable();
    });
    function dataBindTab2t2s1Datatable() {
        showLoader('loaderTab2t2s1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/eafki_eafkiTab2t2s1",
            data: '{yr:"' + $("#eafkiTab2t2s1SelectYear option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divBindTab2t2s1Table").html(msg.d);
                hideLoader('loaderTab2t2s1');
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
    //tab2t2s2
    //$("#eafkiTab2t2s2Table tbody tr td").click(function (e) {
    //    if ($(this).index() > 0 && $(this).index() < 4) {
    //        $(this).css("padding", "6px 0 0 0");
    //        if ($(this).index() == 3) $(this).html('<input type="text" value="' + $(this).text() + '" maxlength="13" style=\"width:100px; text-align:right; padding:2px;\" onblur="txtBlurNumeric(this)"/>');
    //        else $(this).html('<input type="text" value="' + $(this).text() + '" maxlength="80" style=\"width:200px; text-align:left; padding:2px;\" onblur="txtBlurText(this)"/>');
    //        $('#eafkiTab2t2s2Table tbody tr:eq(' + $(this).closest('tr').index() + ')').find('td:eq(' + $(this).index() + ')').find(':text').focus();
    //        $('#eafkiTab2t2s2Table tbody tr:eq(' + $(this).closest('tr').index() + ')').find('td:eq(' + $(this).index() + ')').find(':text').select();
    //        $(this).closest('tr').find('td:eq(4)').find('a').css('display', 'block');
    //    }
    //});
    function eafkiTab2t2s2TableTdOnClick(el) {
        if ($(el).index() > 0 && $(el).index() < 4) {
            $(el).css("padding", "6px 0 0 0");
            if ($(el).index() == 3) $(el).html('<input type="text" value="' + $(el).text().replace(/,/g, '') + '" maxlength="13" style=\"width:100px; text-align:right; padding:2px;\" onblur="txtBlurNumeric(this)"/>');
            else $(el).html('<input type="text" value="' + $(el).text() + '" maxlength="80" style=\"width:200px; text-align:left; padding:2px;\" onblur="txtBlurText(this)"/>');
            $('#eafkiTab2t2s2Table tbody tr:eq(' + $(el).closest('tr').index() + ')').find('td:eq(' + $(el).index() + ')').find(':text').focus();
            $('#eafkiTab2t2s2Table tbody tr:eq(' + $(el).closest('tr').index() + ')').find('td:eq(' + $(el).index() + ')').find(':text').select();
            $(el).closest('tr').find('td:eq(4)').find('a').css('display', 'block');
        }
    }
    function saveTab2t2s2(el) {
        var errMsg = '';
        for (var i = 1; i < 4; i++) if ($.trim($(el).closest('tr').find('td:eq(' + i + ')').html()) == "") errMsg = 'Гүйцэт мэдээлэл оруулна уу!';

        if (errMsg == '') {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteNonQuery",
                data: '{qry:"DELETE FROM TBL_EAFKI_MAIN WHERE TP=\'2t2s2\' AND YR=' + $('#eafkiTab2t2s2SelectYear option:selected').val() + ' AND MNTH=' + $.trim($(el).closest('tr').find('td:eq(0)').text()) + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                    else {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "ws.aspx/WSOracleExecuteNonQuery",
                            data: '{qry:"INSERT INTO TBL_EAFKI_MAIN (YR, MNTH, DESC_MN, DESC_EN, D1, TP) VALUES (' + $('#eafkiTab2t2s2SelectYear option:selected').val() + ', ' + $.trim($(el).closest('tr').find('td:eq(0)').text()) + ', \'' + $.trim($(el).closest('tr').find('td:eq(1)').text()) + '\', \'' + $.trim($(el).closest('tr').find('td:eq(2)').text()) + '\', ' + $.trim($(el).closest('tr').find('td:eq(3)').text().replace(/,/g, '')) + ', \'2t2s2\')"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                                else {
                                    $(el).closest('tr').find('td:eq(4)').find('a').css('display', 'none');
                                    $.smallBox({
                                        title: "Мэдээлэл",
                                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
                                        color: "#659265",
                                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                        timeout: 3000
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
        else alert('Мэдээлэл гүйцэт оруулна уу!');
    }
    $("#eafkiTab2t2s2SelectYear").change(function () {
        $('#eafkiTab2t2s2Year').text($(this).val());
        dataBindTab2t2s2Datatable();
    });
    function dataBindTab2t2s2Datatable() {
        showLoader('loaderTab2t2s2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/eafki_eafkiTab2t2s2",
            data: '{yr:"' + $("#eafkiTab2t2s2SelectYear option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divBindTab2t2s2Table").html(msg.d);
                hideLoader('loaderTab2t2s2');
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
    //tab2t2s3
    //$("#eafkiTab2t2s3Table tbody tr td").click(function (e) {
    //    if ($(this).index() > 0 && $(this).index() < 5) {
    //        $(this).css("padding", "6px 0 0 0");
    //        $(this).html('<input type="text" value="' + $(this).text() + '" maxlength="13" style=\"width:100px; text-align:right; padding:2px;\" onblur="txtBlurNumeric(this)"/>');
    //        $('#eafkiTab2t2s3Table tbody tr:eq(' + $(this).closest('tr').index() + ')').find('td:eq(' + $(this).index() + ')').find(':text').focus();
    //        $('#eafkiTab2t2s3Table tbody tr:eq(' + $(this).closest('tr').index() + ')').find('td:eq(' + $(this).index() + ')').find(':text').select();
    //        $(this).closest('tr').find('td:eq(5)').find('a').css('display', 'block');
    //    }
    //});
    function eafkiTab2t2s3TableTdOnClick(el) {
        if ($(el).index() > 0 && $(el).index() < 5) {
            $(el).css("padding", "6px 0 0 0");
            $(el).html('<input type="text" value="' + $(el).text().replace(/,/g, '') + '" maxlength="13" style=\"width:100px; text-align:right; padding:2px;\" onblur="txtBlurNumeric(this)"/>');
            $('#eafkiTab2t2s3Table tbody tr:eq(' + $(el).closest('tr').index() + ')').find('td:eq(' + $(el).index() + ')').find(':text').focus();
            $('#eafkiTab2t2s3Table tbody tr:eq(' + $(el).closest('tr').index() + ')').find('td:eq(' + $(el).index() + ')').find(':text').select();
            $(el).closest('tr').find('td:eq(5)').find('a').css('display', 'block');
        }
    }
    function saveTab2t2s3(el) {
        var errMsg = '';
        for (var i = 1; i < 5; i++) if ($.trim($(el).closest('tr').find('td:eq(' + i + ')').html()) == "") errMsg = 'Гүйцэт мэдээлэл оруулна уу!';

        if (errMsg == '') {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteNonQuery",
                data: '{qry:"DELETE FROM TBL_EAFKI_MAIN WHERE TP=\'2t2s3\' AND YR=' + $('#eafkiTab2t2s3SelectYear option:selected').val() + ' AND MNTH=' + $.trim($(el).closest('tr').find('td:eq(0)').text()) + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                    else {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "ws.aspx/WSOracleExecuteNonQuery",
                            data: '{qry:"INSERT INTO TBL_EAFKI_MAIN (YR, MNTH, D1, D2, D3, D4, TP) VALUES (' + $('#eafkiTab2t2s3SelectYear option:selected').val() + ', ' + $.trim($(el).closest('tr').find('td:eq(0)').text()) + ', ' + $.trim($(el).closest('tr').find('td:eq(1)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(2)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(3)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(4)').text().replace(/,/g, '')) + ', \'2t2s3\')"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                                else {
                                    $(el).closest('tr').find('td:eq(5)').find('a').css('display', 'none');
                                    $.smallBox({
                                        title: "Мэдээлэл",
                                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
                                        color: "#659265",
                                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                        timeout: 3000
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
        else alert('Мэдээлэл гүйцэт оруулна уу!');
    }
    $("#eafkiTab2t2s3SelectYear").change(function () {
        $('#eafkiTab2t2s3Year').text($(this).val());
        dataBindTab2t2s3Datatable();
    });
    function dataBindTab2t2s3Datatable() {
        showLoader('loaderTab2t2s3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/eafki_eafkiTab2t2s3",
            data: '{yr:"' + $("#eafkiTab2t2s3SelectYear option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divBindTab2t2s3Table").html(msg.d);
                hideLoader('loaderTab2t2s3');
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
    //tab2t3s1
    //$("#eafkiTab2t3s1Table tbody tr td").click(function (e) {
    //    if ($(this).index() > 0 && $(this).index() < 5) {
    //        $(this).css("padding", "6px 0 0 0");
    //        $(this).html('<input type="text" value="' + $(this).text() + '" maxlength="16" style=\"width:120px; text-align:right; padding:2px;\" onblur="txtBlurNumeric(this)"/>');
    //        $('#eafkiTab2t3s1Table tbody tr:eq(' + $(this).closest('tr').index() + ')').find('td:eq(' + $(this).index() + ')').find(':text').focus();
    //        $('#eafkiTab2t3s1Table tbody tr:eq(' + $(this).closest('tr').index() + ')').find('td:eq(' + $(this).index() + ')').find(':text').select();
    //        $(this).closest('tr').find('td:eq(5)').find('a').css('display', 'block');
    //    }
    //});
    function eafkiTab2t3s1TableTdOnClick(el) {
        if ($(el).index() > 0 && $(el).index() < 5) {
            $(el).css("padding", "6px 0 0 0");
            $(el).html('<input type="text" value="' + $(el).text().replace(/,/g, '') + '" maxlength="16" style=\"width:120px; text-align:right; padding:2px;\" onblur="txtBlurNumeric(this)"/>');
            $('#eafkiTab2t3s1Table tbody tr:eq(' + $(el).closest('tr').index() + ')').find('td:eq(' + $(el).index() + ')').find(':text').focus();
            $('#eafkiTab2t3s1Table tbody tr:eq(' + $(el).closest('tr').index() + ')').find('td:eq(' + $(el).index() + ')').find(':text').select();
            $(el).closest('tr').find('td:eq(5)').find('a').css('display', 'block');
        }
    }
    function saveTab2t3s1(el) {
        var errMsg = '';
        for (var i = 1; i < 5; i++) if ($.trim($(el).closest('tr').find('td:eq(' + i + ')').html()) == "") errMsg = 'Гүйцэт мэдээлэл оруулна уу!';

        if (errMsg == '') {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteNonQuery",
                data: '{qry:"DELETE FROM TBL_EAFKI_MAIN WHERE TP=\'2t3s1\' AND YR=' + $('#eafkiTab2t3s1SelectYear option:selected').val() + ' AND MNTH=' + $.trim($(el).closest('tr').find('td:eq(0)').text()) + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                    else {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "ws.aspx/WSOracleExecuteNonQuery",
                            data: '{qry:"INSERT INTO TBL_EAFKI_MAIN (YR, MNTH, D1, D2, D3, D4, TP) VALUES (' + $('#eafkiTab2t3s1SelectYear option:selected').val() + ', ' + $.trim($(el).closest('tr').find('td:eq(0)').text()) + ', ' + $.trim($(el).closest('tr').find('td:eq(1)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(2)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(3)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(4)').text().replace(/,/g, '')) + ', \'2t3s1\')"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                                else {
                                    $(el).closest('tr').find('td:eq(5)').find('a').css('display', 'none');
                                    $.smallBox({
                                        title: "Мэдээлэл",
                                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
                                        color: "#659265",
                                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                        timeout: 3000
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
        else alert('Мэдээлэл гүйцэт оруулна уу!');
    }
    $("#eafkiTab2t3s1SelectYear").change(function () {
        $('#eafkiTab2t3s1Year').text($(this).val());
        dataBindTab2t3s1Datatable();
    });
    function dataBindTab2t3s1Datatable() {
        showLoader('loaderTab2t3s1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/eafki_eafkiTab2t3s1",
            data: '{yr:"' + $("#eafkiTab2t3s1SelectYear option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divBindTab2t3s1Table").html(msg.d);
                hideLoader('loaderTab2t3s1');
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
    //tab2t3s2
    //$("#eafkiTab2t3s2Table tbody tr td").click(function (e) {
    //    if ($(this).index() > 0 && $(this).index() < 5) {
    //        $(this).css("padding", "6px 0 0 0");
    //        $(this).html('<input type="text" value="' + $(this).text() + '" maxlength="16" style=\"width:120px; text-align:right; padding:2px;\" onblur="txtBlurNumeric(this)"/>');
    //        $('#eafkiTab2t3s2Table tbody tr:eq(' + $(this).closest('tr').index() + ')').find('td:eq(' + $(this).index() + ')').find(':text').focus();
    //        $('#eafkiTab2t3s2Table tbody tr:eq(' + $(this).closest('tr').index() + ')').find('td:eq(' + $(this).index() + ')').find(':text').select();
    //        $(this).closest('tr').find('td:eq(5)').find('a').css('display', 'block');
    //    }
    //});
    function eafkiTab2t3s2TableTdOnClick(el) {
        if ($(el).index() > 0 && $(el).index() < 5) {
            $(el).css("padding", "6px 0 0 0");
            $(el).html('<input type="text" value="' + $(el).text().replace(/,/g, '') + '" maxlength="16" style=\"width:120px; text-align:right; padding:2px;\" onblur="txtBlurNumeric(this)"/>');
            $('#eafkiTab2t3s2Table tbody tr:eq(' + $(el).closest('tr').index() + ')').find('td:eq(' + $(el).index() + ')').find(':text').focus();
            $('#eafkiTab2t3s2Table tbody tr:eq(' + $(el).closest('tr').index() + ')').find('td:eq(' + $(el).index() + ')').find(':text').select();
            $(el).closest('tr').find('td:eq(5)').find('a').css('display', 'block');
        }
    }
    function saveTab2t3s2(el) {
        var errMsg = '';
        for (var i = 1; i < 5; i++) if ($.trim($(el).closest('tr').find('td:eq(' + i + ')').html()) == "") errMsg = 'Гүйцэт мэдээлэл оруулна уу!';

        if (errMsg == '') {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteNonQuery",
                data: '{qry:"DELETE FROM TBL_EAFKI_MAIN WHERE TP=\'2t3s2\' AND YR=' + $('#eafkiTab2t3s2SelectYear option:selected').val() + ' AND MNTH=' + $.trim($(el).closest('tr').find('td:eq(0)').text()) + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                    else {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "ws.aspx/WSOracleExecuteNonQuery",
                            data: '{qry:"INSERT INTO TBL_EAFKI_MAIN (YR, MNTH, D1, D2, D3, D4, TP) VALUES (' + $('#eafkiTab2t3s2SelectYear option:selected').val() + ', ' + $.trim($(el).closest('tr').find('td:eq(0)').text()) + ', ' + $.trim($(el).closest('tr').find('td:eq(1)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(2)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(3)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(4)').text().replace(/,/g, '')) + ', \'2t3s2\')"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                                else {
                                    $(el).closest('tr').find('td:eq(5)').find('a').css('display', 'none');
                                    $.smallBox({
                                        title: "Мэдээлэл",
                                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
                                        color: "#659265",
                                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                        timeout: 3000
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
        else alert('Мэдээлэл гүйцэт оруулна уу!');
    }
    $("#eafkiTab2t3s2SelectYear").change(function () {
        $('#eafkiTab2t3s2Year').text($(this).val());
        dataBindTab2t3s2Datatable();
    });
    function dataBindTab2t3s2Datatable() {
        showLoader('loaderTab2t3s2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/eafki_eafkiTab2t3s2",
            data: '{yr:"' + $("#eafkiTab2t3s2SelectYear option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divBindTab2t3s2Table").html(msg.d);
                hideLoader('loaderTab2t3s2');
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
    //tab2t3s3
    //$("#eafkiTab2t3s3Table tbody tr td").click(function (e) {
    //    if ($(this).index() > 0 && $(this).index() < 10) {
    //        $(this).css("padding", "6px 0 0 0");
    //        $(this).html('<input type="text" value="' + $(this).text().replace(/,/g, '') + '" maxlength="16" style=\"width:120px; text-align:right; padding:2px;\" onblur="txtBlurNumeric(this)"/>');
    //        $('#eafkiTab2t3s3Table tbody tr:eq(' + $(this).closest('tr').index() + ')').find('td:eq(' + $(this).index() + ')').find(':text').focus();
    //        $('#eafkiTab2t3s3Table tbody tr:eq(' + $(this).closest('tr').index() + ')').find('td:eq(' + $(this).index() + ')').find(':text').select();
    //        $(this).closest('tr').find('td:eq(10)').find('a').css('display', 'block');
    //    }
    //});
    function eafkiTab2t3s3TableTdOnClick(el) {
        if ($(el).index() > 0 && $(el).index() < 10) {
            $(el).css("padding", "6px 0 0 0");
            $(el).html('<input type="text" value="' + $(el).text().replace(/,/g, '') + '" maxlength="16" style=\"width:120px; text-align:right; padding:2px;\" onblur="txtBlurNumeric(this)"/>');
            $('#eafkiTab2t3s3Table tbody tr:eq(' + $(el).closest('tr').index() + ')').find('td:eq(' + $(el).index() + ')').find(':text').focus();
            $('#eafkiTab2t3s3Table tbody tr:eq(' + $(el).closest('tr').index() + ')').find('td:eq(' + $(el).index() + ')').find(':text').select();
            $(el).closest('tr').find('td:eq(10)').find('a').css('display', 'block');
        }
    }
    function saveTab2t3s3(el) {
        var errMsg = '';
        for (var i = 1; i < 10; i++) if ($.trim($(el).closest('tr').find('td:eq(' + i + ')').html()) == "") errMsg = 'Гүйцэт мэдээлэл оруулна уу!';

        if (errMsg == '') {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteNonQuery",
                data: '{qry:"DELETE FROM TBL_EAFKI_MAIN WHERE YR=' + $('#eafkiTab2t3s3SelectYear option:selected').val() + ' AND MNTH=' + $.trim($(el).closest('tr').find('td:eq(0)').text()) + ' AND TP=\'2t3s3\'"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                    else {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "ws.aspx/WSOracleExecuteNonQuery",
                            data: '{qry:"INSERT INTO TBL_EAFKI_MAIN (YR, MNTH, D1, D2, D3, D4, D5, D6, D7, D8, D9, TP) VALUES (' + $('#eafkiTab2t3s3SelectYear option:selected').val() + ', ' + $.trim($(el).closest('tr').find('td:eq(0)').text()) + ', ' + $.trim($(el).closest('tr').find('td:eq(1)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(2)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(3)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(4)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(5)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(6)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(7)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(8)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(9)').text().replace(/,/g, '')) + ', \'2t3s3\')"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                                else {
                                    $(el).closest('tr').find('td:eq(10)').find('a').css('display', 'none');
                                    $.smallBox({
                                        title: "Мэдээлэл",
                                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
                                        color: "#659265",
                                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                        timeout: 3000
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
        else alert('Мэдээлэл гүйцэт оруулна уу!');
    }
    $("#eafkiTab2t3s3SelectYear").change(function () {
        $('#eafkiTab2t3s3Year').text($(this).val());
        dataBindTab2t3s3Datatable();
    });
    function dataBindTab2t3s3Datatable() {
        showLoader('loaderTab2t3s3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/eafki_eafkiTab2t3s3",
            data: '{yr:"' + $("#eafkiTab2t3s3SelectYear option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divBindTab2t3s3Table").html(msg.d);
                hideLoader('loaderTab2t3s3');
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
    //tab2t4s1
    //$("#eafkiTab2t4s1Table tbody tr td").click(function (e) {
    //    if ($(this).index() > 0 && $(this).index() < 6) {
    //        $(this).css("padding", "6px 0 0 0");
    //        $(this).html('<input type="text" value="' + $(this).text().replace(/,/g, '') + '" maxlength="16" style=\"width:120px; text-align:right; padding:2px;\" onblur="txtBlurNumeric(this)"/>');
    //        $('#eafkiTab2t4s1Table tbody tr:eq(' + $(this).closest('tr').index() + ')').find('td:eq(' + $(this).index() + ')').find(':text').focus();
    //        $('#eafkiTab2t4s1Table tbody tr:eq(' + $(this).closest('tr').index() + ')').find('td:eq(' + $(this).index() + ')').find(':text').select();
    //        $(this).closest('tr').find('td:eq(6)').find('a').css('display', 'block');
    //    }
    //});
    function eafkiTab2t4s1TableTdOnClick(el) {
        if ($(el).index() > 0 && $(el).index() < 6) {
            $(el).css("padding", "6px 0 0 0");
            $(el).html('<input type="text" value="' + $(el).text().replace(/,/g, '') + '" maxlength="16" style=\"width:120px; text-align:right; padding:2px;\" onblur="txtBlurNumeric(this)"/>');
            $('#eafkiTab2t4s1Table tbody tr:eq(' + $(el).closest('tr').index() + ')').find('td:eq(' + $(el).index() + ')').find(':text').focus();
            $('#eafkiTab2t4s1Table tbody tr:eq(' + $(el).closest('tr').index() + ')').find('td:eq(' + $(el).index() + ')').find(':text').select();
            $(el).closest('tr').find('td:eq(6)').find('a').css('display', 'block');
        }
    }
    function saveTab2t4s1(el) {
        var errMsg = '';
        for (var i = 1; i < 6; i++) if ($.trim($(el).closest('tr').find('td:eq(' + i + ')').html()) == "") errMsg = 'Гүйцэт мэдээлэл оруулна уу!';

        if (errMsg == '') {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteNonQuery",
                data: '{qry:"DELETE FROM TBL_EAFKI_MAIN WHERE TP=\'2t4s1\' AND YR=' + $('#eafkiTab2t4s1SelectYear option:selected').val() + ' AND MNTH=' + $.trim($(el).closest('tr').find('td:eq(0)').text()) + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                    else {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "ws.aspx/WSOracleExecuteNonQuery",
                            data: '{qry:"INSERT INTO TBL_EAFKI_MAIN (YR, MNTH, TP, D1, D2, D3, D4, D5) VALUES (' + $('#eafkiTab2t4s1SelectYear option:selected').val() + ', ' + $.trim($(el).closest('tr').find('td:eq(0)').text()) + ', \'2t4s1\', ' + $.trim($(el).closest('tr').find('td:eq(1)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(2)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(3)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(4)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(5)').text().replace(/,/g, '')) + ')"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                                else {
                                    $(el).closest('tr').find('td:eq(6)').find('a').css('display', 'none');
                                    $.smallBox({
                                        title: "Мэдээлэл",
                                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
                                        color: "#659265",
                                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                        timeout: 3000
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
        else alert('Мэдээлэл гүйцэт оруулна уу!');
    }
    $("#eafkiTab2t4s1SelectYear").change(function () {
        $('#eafkiTab2t4s1Year').text($(this).val());
        dataBindTab2t4s1Datatable();
    });
    function dataBindTab2t4s1Datatable() {
        showLoader('loaderTab2t4s1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/eafki_eafkiTab2t4s1",
            data: '{yr:"' + $("#eafkiTab2t4s1SelectYear option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divBindTab2t4s1Table").html(msg.d);
                hideLoader('loaderTab2t4s1');
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
    //tab2t4s2
    //$("#eafkiTab2t4s2Table tbody tr td").click(function (e) {
    //    if ($(this).index() > 0 && $(this).index() < 8) {
    //        $(this).css("padding", "6px 0 0 0");
    //        $(this).html('<input type="text" value="' + $(this).text().replace(/,/g, '') + '" maxlength="16" style=\"width:120px; text-align:right; padding:2px;\" onblur="txtBlurNumeric(this)"/>');
    //        $('#eafkiTab2t4s2Table tbody tr:eq(' + $(this).closest('tr').index() + ')').find('td:eq(' + $(this).index() + ')').find(':text').focus();
    //        $('#eafkiTab2t4s2Table tbody tr:eq(' + $(this).closest('tr').index() + ')').find('td:eq(' + $(this).index() + ')').find(':text').select();
    //        $(this).closest('tr').find('td:eq(8)').find('a').css('display', 'block');
    //    }
    //});
    function eafkiTab2t4s2TableTdOnClick(el) {
        if ($(el).index() > 1 && $(el).index() < 10) {
            $(el).css("padding", "6px 0 0 0");
            $(el).html('<input type="text" value="' + $(el).text().replace(/,/g, '') + '" maxlength="16" style=\"width:120px; text-align:right; padding:2px;\" onblur="txtBlurNumeric(this)"/>');
            $('#eafkiTab2t4s2Table tbody tr:eq(' + $(el).closest('tr').index() + ')').find('td:eq(' + $(el).index() + ')').find(':text').focus();
            $('#eafkiTab2t4s2Table tbody tr:eq(' + $(el).closest('tr').index() + ')').find('td:eq(' + $(el).index() + ')').find(':text').select();
            $(el).closest('tr').find('td:eq(10)').find('a').css('display', 'block');
        }
    }
    function saveTab2t4s2(el) {
        var errMsg = '';
        for (var i = 2; i < 10; i++) {
            if ($.trim($(el).closest('tr').find('td:eq(' + i + ')').html()) == "") {
                errMsg = 'Гүйцэт мэдээлэл оруулна уу!';
            }
        }

        if (errMsg == '') {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteNonQuery",
                data: '{qry:"DELETE FROM TBL_EAFKI_MAIN WHERE TP=\'2t4s2\' AND YR=' + $('#eafkiTab2t4s2SelectYear option:selected').val() + ' AND MNTH=' + $.trim($(el).closest('tr').find('td:eq(0)').text()) + ' AND D9=' + $(el).closest('tr').find('td:eq(1)').attr('data-id') + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                    else {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "ws.aspx/WSOracleExecuteNonQuery",
                            data: '{qry:"INSERT INTO TBL_EAFKI_MAIN (YR, MNTH, D9, TP, D1, D2, D3, D4, D5, D6, D7, d8) VALUES (' + $('#eafkiTab2t4s2SelectYear option:selected').val() + ', ' + $.trim($(el).closest('tr').find('td:eq(0)').text()) + ', ' + $(el).closest('tr').find('td:eq(1)').attr('data-id') + ', \'2t4s2\', ' + $.trim($(el).closest('tr').find('td:eq(2)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(3)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(4)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(5)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(6)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(7)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(8)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(9)').text().replace(/,/g, '')) + ')"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                                else {
                                    $(el).closest('tr').find('td:eq(10)').find('a').css('display', 'none');
                                    $.smallBox({
                                        title: "Мэдээлэл",
                                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
                                        color: "#659265",
                                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                        timeout: 3000
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
        else alert('Мэдээлэл гүйцэт оруулна уу!');
    }
    $("#eafkiTab2t4s2SelectYear").change(function () {
        $('#eafkiTab2t4s2Year').text($(this).val());
        dataBindTab2t4s2Datatable();
    });
    function dataBindTab2t4s2Datatable() {
        showLoader('loaderTab2t4s2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/eafki_eafkiTab2t4s2",
            data: '{yr:"' + $("#eafkiTab2t4s2SelectYear option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divBindTab2t4s2Table").html(msg.d);
                hideLoader('loaderTab2t4s2');
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
    //tab2t4s3
    //$("#eafkiTab2t4s3Table tbody tr td").click(function (e) {
    //    if ($(this).index() > 0 && $(this).index() < 4) {
    //        $(this).css("padding", "6px 0 0 0");
    //        $(this).html('<input type="text" value="' + $(this).text().replace(/,/g, '') + '" maxlength="16" style=\"width:120px; text-align:right; padding:2px;\" onblur="txtBlurNumeric(this)"/>');
    //        $('#eafkiTab2t4s3Table tbody tr:eq(' + $(this).closest('tr').index() + ')').find('td:eq(' + $(this).index() + ')').find(':text').focus();
    //        $('#eafkiTab2t4s3Table tbody tr:eq(' + $(this).closest('tr').index() + ')').find('td:eq(' + $(this).index() + ')').find(':text').select();
    //        $(this).closest('tr').find('td:eq(4)').find('a').css('display', 'block');
    //    }
    //});
    function eafkiTab2t4s3TableTdOnClick(el) {
        if ($(el).index() > 0 && $(el).index() < 7) {
            $(el).css("padding", "6px 0 0 0");
            $(el).html('<input type="text" value="' + $(el).text().replace(/,/g, '') + '" maxlength="16" style=\"width:120px; text-align:right; padding:2px;\" onblur="txtBlurNumeric(this)"/>');
            $('#eafkiTab2t4s3Table tbody tr:eq(' + $(el).closest('tr').index() + ')').find('td:eq(' + $(el).index() + ')').find(':text').focus();
            $('#eafkiTab2t4s3Table tbody tr:eq(' + $(el).closest('tr').index() + ')').find('td:eq(' + $(el).index() + ')').find(':text').select();
            $(el).closest('tr').find('td:eq(7)').find('a').css('display', 'block');
        }
    }
    function saveTab2t4s3(el) {
        var errMsg = '';
        for (var i = 1; i < 7; i++) if ($.trim($(el).closest('tr').find('td:eq(' + i + ')').html()) == "") errMsg = 'Гүйцэт мэдээлэл оруулна уу!';

        if (errMsg == '') {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteNonQuery",
                data: '{qry:"DELETE FROM TBL_EAFKI_MAIN WHERE TP=\'2t4s3\' AND YR=' + $('#eafkiTab2t4s3SelectYear option:selected').val() + ' AND MNTH=' + $.trim($(el).closest('tr').find('td:eq(0)').text()) + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                    else {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "ws.aspx/WSOracleExecuteNonQuery",
                            data: '{qry:"INSERT INTO TBL_EAFKI_MAIN (YR, MNTH, TP, D1, D2, D3, D4, D5, D6) VALUES (' + $('#eafkiTab2t4s3SelectYear option:selected').val() + ', ' + $.trim($(el).closest('tr').find('td:eq(0)').text()) + ', \'2t4s3\', ' + $.trim($(el).closest('tr').find('td:eq(1)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(2)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(3)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(4)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(5)').text().replace(/,/g, '')) + ', ' + $.trim($(el).closest('tr').find('td:eq(6)').text().replace(/,/g, '')) + ')"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                if (msg.d == "0") { window.location = "../#pg/error500.aspx"; }
                                else {
                                    $(el).closest('tr').find('td:eq(7)').find('a').css('display', 'none');
                                    $.smallBox({
                                        title: "Мэдээлэл",
                                        content: "<i class='fa fa-clock-o'></i> <i>Амжилттай хадгалагдлаа...</i>",
                                        color: "#659265",
                                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                                        timeout: 3000
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
        else alert('Мэдээлэл гүйцэт оруулна уу!');
    }
    $("#eafkiTab2t4s3SelectYear").change(function () {
        $('#eafkiTab2t4s3Year').text($(this).val());
        dataBindTab2t4s3Datatable();
    });
    function dataBindTab2t4s3Datatable() {
        showLoader('loaderTab2t4s3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/eafki_eafkiTab2t4s3",
            data: '{yr:"' + $("#eafkiTab2t4s3SelectYear option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#divBindTab2t4s3Table").html(msg.d);
                hideLoader('loaderTab2t4s3');
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


    google.load("visualization", "1", { 'callback': '', packages: ["corechart"] });
    function drawChartS3() {
        var chart1Head = '', chart2Head = '', chart3Head = '', chart4Head = '', chart5Head = '';
        if ($('#eafkiTab1SelectLanguage option:selected').val() == 'mn') {
            $('#eafkiTab1s3Title').text('3. НЭГДСЭН ТӨСВИЙН ҮЗҮҮЛЭЛТ');
            chart1Head = 'А. НЭГДСЭН ТӨСВИЙН ОРЛОГО (оны эхнээс өссөн дүнгээр)';
            chart2Head = 'Б. НЭГДСЭН ТӨСВИЙН ЗАРЛАГА (оны эхнээс өссөн дүнгээр)';
            chart3Head = 'В. НЭГДСЭН ТӨСВИЙН ТЭНЦЭЛ';
            chart4Head = 'Г. ТӨСВИЙН ХӨРӨНГӨ ОРУУЛАЛТЫН ГҮЙЦЭТГЭЛ (оны эхнээс өссөн дүнгээр)';
            chart5Head = 'Д. МӨНГӨН ХӨРӨНГИЙН ҮЛДЭГДЭЛ (тэрбум төгрөг, сарын дундаж)';
            chart6Head = 'Б. ЗАСГИЙН ГАЗРЫН ӨРИЙН ҮЙЛЧИЛГЭЭ (тэрбум төг)';
        }
        else {
            $('#eafkiTab1s3Title').text('3. BUDGET INDICATORS');
            chart1Head = 'А. BUDGET INCOME (total from beginning of year)';
            chart2Head = 'B. BUDGET EXPENDITURE (total from beginning of year)';
            chart3Head = 'C. BUDGET BALANCE';
            chart4Head = 'D. BUDGETARY INVESTMENT (total from beginning of year)';
            chart5Head = 'E. CASH BALANCE (monthly average, bln. MNT)';
            chart6Head = 'B. LOAN REPAYMENT SCHEDULE (bln.MNT)';
        }
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "ws.aspx/eafki_eafkiTab1s3Charts",
            data: '{yr:"' + $("#eafkiTab1SelectYear option:selected").val() + '", mnth:"' + $("#eafkiTab1SelectMonth option:selected").val() + '", lang:"' + $("#eafkiTab1SelectLanguage option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                var jsonData = $.parseJSON(msg.d.split('~')[0]);
                var jsonData1 = $.parseJSON(msg.d.split('~')[1]);
                var jsonData2 = $.parseJSON(msg.d.split('~')[2]);
                var jsonData3 = $.parseJSON(msg.d.split('~')[3]);
                var jsonData4 = $.parseJSON(msg.d.split('~')[4]);
                var jsonData5 = $.parseJSON(msg.d.split('~')[5]);
                var jsonData6 = $.parseJSON(msg.d.split('~')[6]);

                var options = {
                    curveType: "function",
                    vAxes: {
                        0: { format: '#,###' }, textStyle: { fontSize: 5 }, 1: {
                            format: '#%', viewWindow: {
                                max: 1
                            }
                        }
                    },
                    series: {
                        0: { type: "bars", targetAxisIndex: 0, visibleInLegend: true },
                        1: { type: "bars", targetAxisIndex: 0 },
                        2: { type: "line", targetAxisIndex: 1 }
                    },
                    title: chart1Head,
                    bar: { groupWidth: '75%' },
                    legend: { position: 'bottom' }
                };
                var data = new google.visualization.DataTable(jsonData);
                var chart = new google.visualization.ComboChart(document.getElementById('charttest1'));

                var options1 = {
                    curveType: "function",
                    vAxes: {
                        0: { format: '#,###' }, textStyle: { fontSize: 5 }, 1: {
                            format: '#%', viewWindow: {
                                max: 1
                            }
                        }
                    },
                    series: {
                        0: { type: "bars", targetAxisIndex: 0, visibleInLegend: true },
                        1: { type: "bars", targetAxisIndex: 0 },
                        2: { type: "line", targetAxisIndex: 1 }
                    },
                    title: chart2Head,
                    bar: { groupWidth: '75%' },
                    legend: { position: 'bottom' }
                };
                var data1 = new google.visualization.DataTable(jsonData1);
                var chart1 = new google.visualization.ComboChart(document.getElementById('charttest2'));

                var options2 = {
                    curveType: "function",
                    vAxes: {
                        0: { format: '#,###' }, textStyle: { fontSize: 5 }
                    },
                    series: {
                        0: { type: "bars", targetAxisIndex: 0, visibleInLegend: true },
                        1: { type: "bars", targetAxisIndex: 0 },
                        2: { type: "bars", targetAxisIndex: 0 }
                    },
                    title: chart3Head,
                    bar: { groupWidth: '75%' },
                    legend: { position: 'bottom' }
                };
                var data2 = new google.visualization.DataTable(jsonData2);
                var chart2 = new google.visualization.ComboChart(document.getElementById('charttest3'));

                var options3 = {
                    curveType: "function",
                    vAxes: {
                        0: { format: '#,###' }, textStyle: { fontSize: 5 }, 1: {
                            format: '#%', viewWindow: {
                                max: 1
                            }
                        }
                    },
                    series: {
                        0: { type: "bars", targetAxisIndex: 0, visibleInLegend: true },
                        1: { type: "bars", targetAxisIndex: 0 },
                        2: { type: "line", targetAxisIndex: 1 }
                    },
                    title: chart4Head,
                    bar: { groupWidth: '75%' },
                    legend: { position: 'bottom' }
                };
                var data3 = new google.visualization.DataTable(jsonData3);
                var chart3 = new google.visualization.ComboChart(document.getElementById('charttest5'));

                var options4 = {
                    curveType: "function",
                    vAxes: {
                        0: { format: '#,###' }, textStyle: { fontSize: 5 }
                    },
                    series: {
                        0: { type: "bars", targetAxisIndex: 0, visibleInLegend: true },
                        1: { type: "bars", targetAxisIndex: 0 },
                        2: { type: "bars", targetAxisIndex: 0 },
                        3: { type: "bars", targetAxisIndex: 0 },
                        4: { type: "bars", targetAxisIndex: 0 },
                        5: { type: "line", targetAxisIndex: 0 },
                        6: { type: "line", targetAxisIndex: 0 }
                    },
                    title: chart5Head,
                    bar: { groupWidth: '75%' },
                    legend: { position: 'bottom', maxLines: 3 },
                    isStacked: true
                };
                var data4 = new google.visualization.DataTable(jsonData4);
                var chart4 = new google.visualization.ComboChart(document.getElementById('charttest6'));

                var options5 = {
                    legend: 'none',
                    pieSliceText: 'label',
                    pieStartAngle: 100,
                    chartArea: { left: 10, top: 10, width:'90%', height:'90%'},
                };
                var data5 = new google.visualization.DataTable(jsonData5);
                var chart5 = new google.visualization.PieChart(document.getElementById('charttest4'));

                var options6 = {
                    curveType: "function",
                    vAxes: {
                        0: { format: '#,###' }, textStyle: { fontSize: 5 }
                    },
                    series: {
                        0: { type: "bars", targetAxisIndex: 0, visibleInLegend: true },
                        1: { type: "bars", targetAxisIndex: 0 },
                        2: { type: "bars", targetAxisIndex: 0 }
                    },
                    title: chart6Head,
                    bar: { groupWidth: '75%' },
                    legend: { position: 'bottom', maxLines: 3 },
                    isStacked: true
                };
                var data6 = new google.visualization.DataTable(jsonData6);
                var chart6 = new google.visualization.ComboChart(document.getElementById('charttest7'));

                chart.draw(data, options);
                chart1.draw(data1, options1);
                chart2.draw(data2, options2);
                chart3.draw(data3, options3);
                chart4.draw(data4, options4);
                chart5.draw(data5, options5);
                chart6.draw(data6, options6);
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
   </script>