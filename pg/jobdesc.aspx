<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jobdesc.aspx.cs" Inherits="LMWebApp.pg.jobdesc" %>
<style>
    #jobdescTab2D3D4ModalDatatable tr {
    width: 100%;
    display: inline-table;
    }

    #jobdescTab2D3D4ModalDatatable table{
     height:300px; 
    }
    #jobdescTab2D3D4ModalDatatable tbody{
      overflow-y: scroll;
      height: 610px;
      width: 100%;
      position: absolute;
    }

    #jobdescUlZaaltDesc ul, #jobdescUlZaaltDesc2 ul {
        list-style-type: none;
        margin: 0;
        padding: 0 !important;
    }

    #jobdescUlZaaltDesc li, #jobdescUlZaaltDesc2 li {
        display: inline;
        padding-left:3px;
    }

    #jobdescTab2D5D6ModalSelectD3 option{
      width:150px;   
    }

    #jobdescTab3S1Datatable_filter .dataTables_filter {
        display: none;
    }
</style>
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    <h1 class="page-title txt-color-blueDark">
    <i class="fa-fw fa fa-home"></i>
    <span>> Ажлын байрны тодорхойлолт</span>
    </h1>
</div>
<div id="jobdescIsJobStaff" runat="server" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    
</div>
<section id="widget-grid">
    <div id="pMainDiv" runat="server" class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
            <ul class="nav nav-tabs bordered">
                <li id="pTab1Li" runat="server" class="active" onclick="pDatabindTabs(this)">
                    <a data-toggle="tab" href="#jobdescTab1">
                        Ажлын байрны тодорхойлолт
                    </a>
                </li>
                <li id="pTab2Li" runat="server" onclick="pDatabindTabs(this)">
                    <a data-toggle="tab" href="#jobdescTab2">
                        Тодорхойлолт боловсруулах /<span id="jobdescTab2LiYear" runat="server">0000</span> он/
                    </a>
                </li>
                <li id="pTab3Li" runat="server" style="float: right !Important;" onclick="pDatabindTabs(this)">
                    <a data-toggle="tab" href="#jobdescTab3">
                        <i class="fa fa-fw fa-lg fa-wrench"></i>
                        Ажлын байрны нэр, орон тооны тохиргоо
                    </a>
                </li>
            </ul>
            <div id="jobdescTabContent" class="tab-content">
                <div id="jobdescTab1" runat="server" class="tab-pane active">
                    <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                        <div style="width:70%; float:left;">
                            <div style="width:62px; float: left; margin-right: 10px;">
                                <select id="jobdescTab1SelectYear" runat="server" class="form-control" style="padding:1px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                            </div>
                            <div style="width:40px; float: left; margin:8px 0 0 0;">
                                Газар:
                            </div>
                            <div style="width:90px; float: left; margin-right: 10px;">
                                <select id="jobdescTab1SelectGazar" runat="server" class="form-control" style="padding:1px;"><option>ХХААБГ</option></select>
                            </div>
                            <div style="width:43px; float: left; margin:8px 0 0 0;">
                                Хэлтэс:
                            </div>
                            <div style="width:90px; float: left; margin-right: 10px;">
                                <select id="jobdescTab1SelectHeltes" runat="server" class="form-control" style="padding:1px;"><option>ХХААБГ</option></select>
                            </div>
                            <div style="width:60px; float: left; margin:8px 0 0 0;">
                                Ажилтан:
                            </div>
                            <div style="width:350px; float: left; margin-right: 10px;">
                                <select id="jobdescTab1SelectStaff" runat="server" class="form-control" style="padding:1px;"><option>Төслийн зөвлөх Г.Гүндсамба</option></select>
                            </div>
                            <div style="width:150px; float: left; margin: 0;" class="checkbox">
                                <label>
									<input id="jobdescTab1InputSubmit" runat="server" type="checkbox" class="checkbox style-0">
									<span>Батлагдсан эсэх</span>
								</label>
                            </div>
                        </div>
                        <div style="text-align:right; width:30%; float:left;">
                            <button id="jobdescTab1BtnRefresh" class="btn btn-warning btn-sm" type="button"><span class="fa fa-refresh"></span> Дахин харах </button>
                            <img src="../img/pdf-icon.png" style="cursor:pointer;" title="PDF руу татах" onclick="exportPdf('#divjobdescTab3')" />
                            <img src="../img/word-icon.png" style="cursor:pointer;" title="Word руу татах" onclick="exportWord('#divjobdescTab3')"/>
                            <img src="../img/excel-icon.png" style="cursor:pointer;" title="Excel руу татах" onclick="exportExcel('#divjobdescTab3')"/>
                            <button class="btn btn-primary btn-sm" type="button" onclick="PrintElem('#divjobdescTab3')"><span class="fa fa-print"></span> Хэвлэх </button>
                        </div>
                    </div>
                    <div id="loaderTab1" class="search-background">
                        <label>
                            <img width="64" height="" src="img/loading.gif"/>
                            <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color:#fff;">Уншиж байна !</h2>
                        </label>
                    </div>
                    <div id="divjobdescTab3" runat="server" class="reports" style="margin-right:10px;"> 
                        <div style="text-align:center; font-weight:bold; text-transform:uppercase;">
                            САНГИЙН ЯАМНЫ 
                            <label id="jobdesc_Tab1lbl1" runat="server" style="margin:0 0 0 0; font-weight:bold;"></label>
                            <label id="jobdesc_Tab1lbl2" runat="server" style="margin:0 0 0 0; font-weight:bold;"></label>
                            <label id="jobdesc_Tab1lbl3" runat="server" style="margin:0 0 0 0; font-weight:bold;"></label>
                             АЖЛЫН БАЙР (АЛБАН ТУШААЛ)-НЫ ТОДОРХОЙЛОЛТ
                        </div>
                        <div style="text-align:left; font-weight:bold;padding: 10px 0;">
                            А. ТАНИЛЦУУЛГА
                        </div>
                        <table style="border:0px solid #000; border-collapse:collapse; font: 12px arial, sans-serif; width:100%;">
                            <tbody>
                                <tr>
                                    <td style="border: 1px solid #000; padding:5px; vertical-align:top;"><strong>1. Байгууллагын нэр: </strong><span>Сангийн яам</span></td>
                                    <td colspan="2" style="border: 1px solid #000; padding:5px;"><strong>2. Нэгжийн нэр: </strong><span id="jobdescTab1Lbl1" runat="server"></span></td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid #000; padding:5px; vertical-align:top;"><strong>3. Ажлын байрны нэр: </strong><span id="jobdescTab1Lbl2" runat="server"></span></td>
                                    <td style="border: 1px solid #000; padding:5px; vertical-align:top;"><strong>3.1. Албан тушаалын ангилал: </strong><span id="jobdescTab1Lbl3" runat="server"></span></td>
                                    <td style="border: 1px solid #000; padding:5px; vertical-align:top;"><strong>3.2. Албан тушаалын зэрэглэл: </strong><span id="jobdescTab1Lbl4" runat="server"></span></td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid #000; padding:5px; vertical-align:top;"><strong>4. Ажлын байрыг шууд харъяалан удирдах албан тушаалын нэр: </strong><span id="jobdescTab1Lbl5" runat="server"></span></td>
                                    <td style="border: 1px solid #000; padding:5px; vertical-align:top;"><strong>4.1. Албан тушаалын ангилал: </strong><span id="jobdescTab1Lbl6" runat="server"></span></td>
                                    <td style="border: 1px solid #000; padding:5px; vertical-align:top;"><strong>4.2. Албан тушаалын зэрэглэл: </strong><span id="jobdescTab1Lbl7" runat="server"></span></td>
                                </tr>
                                <tr>
                                    <td rowspan="2" style="border: 1px solid #000; padding:5px; vertical-align:top;"><strong>5. Ажлын байрны шууд харъяалан удирдах албан тушаал: </strong></td>
                                    <td style="border: 1px solid #000; padding:5px; vertical-align:top;"><strong>5.1. Албан тушаалын нэр: </strong></td>
                                    <td style="border: 1px solid #000; padding:5px; vertical-align:top;"><strong>5.2. Албан тушаал эрхлэгчдийн тоо: </strong></td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;"><span id="jobdescTab1Lbl8" runat="server"></span></td>
                                    <td style="border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;"><span id="jobdescTab1Lbl9" runat="server"></span></td>
                                </tr>
                            </tbody>
                        </table>
                        <div style="text-align:left; font-weight:bold;padding: 10px 0;">
                            Б. ЧИГ ҮҮРЭГ
                        </div>
                        <table style="border:0px solid #000; border-collapse:collapse; font: 12px arial, sans-serif; width:100%;">
                            <tbody>
                                <tr>
                                    <td style="border: 1px solid #000; padding:5px;"><strong>1.&nbsp;Ажлын байрны зорилго: </strong></td>
                                    <td id="jobdesc_Tab1lblD2" style="border: 1px solid #000; padding:5px;"></td>
                                </tr>
                            </tbody>
                        </table>
                        <table style="border:0px solid #000; border-collapse:collapse; font: 12px arial, sans-serif; width:100%;">
                            <tbody>
                                <tr>
                                    <td colspan="2">
                                        <table style="border:0px solid #000; border-collapse:collapse; font: 12px arial, sans-serif; width:100%;">
                                            <thead>
                                                <tr>
                                                    <td style="border: 1px solid #000; padding:5px; font-weight:bold; width:50%;">2. Ажлын байрны үндсэн зорилт</td>
                                                    <td style="border: 1px solid #000; padding:5px; font-weight:bold;">2.1. Гүйцэтгэлийн шалгуур үзүүлэлт</td>
                                                </tr>
                                            </thead>
                                            <tbody id="jobdesc_Tab1lblD3D4">
                                                
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table style="border:0px solid #000; border-collapse:collapse; font: 12px arial, sans-serif; width:100%;">
                                            <thead>
                                                <tr>
                                                    <td style="border: 1px solid #000; padding:5px; font-weight:bold;">3. Ажлын байрны гол үйл ажиллагаа</td>
                                                    <td style="border: 1px solid #000; padding:5px; font-weight:bold;">3.1. Хугацаа,  хуваарь</td>
                                                </tr>
                                            </thead>
                                            <tbody id="jobdesc_Tab1lblD5D6">
                                                
                                            </tbody>
                                        </table>
                                    </td>
                                </tr> 
                                <tr>
                                    <td style="border: 1px solid #000; padding:5px; border-top:0px;" colspan="2"><strong>Тайлбар: </strong>Ажил гүйцэтгэх хугацаа, хуваарийг жилийн үйл ажиллагааны төлөвлөгөө болон үр дүнгийн гэрээгээр тодорхойлно.</td>
                                </tr>                               
                            </tbody>
                        </table>
                        <div style="text-align:left; font-weight:bold;padding: 10px 0;">
                            В. ТАВИГДАХ ШААРДЛАГА
                        </div>
                        <table style="border:0px solid #000; border-collapse:collapse; font: 12px arial, sans-serif; width:100%;">
                            <tbody>
                                <tr>
                                    <td style="border: 1px solid #000; padding:5px; vertical-align:top;" rowspan="7"><strong>1. Ажлын байранд тавигдах шаардлага</strong></td>
                                    <td style="border: 1px solid #000; padding:5px; vertical-align:top;" rowspan="6"><strong>1.1. Ерөнхий шаардлага:</strong></td>
                                    <td style="border: 1px solid #000; padding:5px; text-align:center;"><strong>Үзүүлэлт</strong></td>
                                    <td style="border: 1px solid #000; padding:5px; text-align:center;"><strong>Чухал шаардлагатай</strong></td>
                                    <td style="border: 1px solid #000; padding:5px; text-align:center;"><strong>Шаардлагатай</strong></td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid #000; padding:5px; border-top:0px; vertical-align:top;"><strong>Боловсрол</strong></td>
                                    <td id="jobdesc_Tab1lblD7" style="border: 1px solid #000; padding:5px; border-top:0px;"></td>
                                    <td id="jobdesc_Tab1lblD8" style="border: 1px solid #000; padding:5px; border-top:0px;"></td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid #000; padding:5px; border-top:0px; vertical-align:top;"><strong>Мэргэжил</strong></td>
                                    <td id="jobdesc_Tab1lblD9" style="border: 1px solid #000; padding:5px; border-top:0px;"></td>
                                    <td id="jobdesc_Tab1lblD10" style="border: 1px solid #000; padding:5px; border-top:0px;"></td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid #000; padding:5px; border-top:0px; vertical-align:top;"><strong>Мэргэшил</strong></td>
                                    <td id="jobdesc_Tab1lblD11" style="border: 1px solid #000; padding:5px; border-top:0px;"></td>
                                    <td id="jobdesc_Tab1lblD12" style="border: 1px solid #000; padding:5px; border-top:0px;"></td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid #000; padding:5px; border-top:0px; vertical-align:top;"><strong>Туршлага</strong></td>
                                    <td id="jobdesc_Tab1lblD13" style="border: 1px solid #000; padding:5px; border-top:0px;"></td>
                                    <td id="jobdesc_Tab1lblD14" style="border: 1px solid #000; padding:5px; border-top:0px;"></td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid #000; padding:5px; border-top:0px; vertical-align:top;"><strong>Ур чадвар</strong></td>
                                    <td id="jobdesc_Tab1lblD15" style="border: 1px solid #000; padding:5px; border-top:0px;"></td>
                                    <td id="jobdesc_Tab1lblD16" style="border: 1px solid #000; padding:5px; border-top:0px;"></td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid #000; padding:5px; border-top:0px; vertical-align:top;"><strong>1.2. Чухал шаардлага:</strong></td>
                                    <td id="jobdesc_Tab1lblD17" style="border: 1px solid #000; padding:5px; border-top:0px;" colspan="2"></td>
                                    <td id="jobdesc_Tab1lblD18" style="border: 1px solid #000; padding:5px; border-top:0px;"></td>
                                </tr>
                            </tbody>
                        </table>
                        <div style="text-align:left; font-weight:bold;padding: 10px 0;">
                            Г. ХҮЧИН ЗҮЙЛС
                        </div>
                        <table style="border:0px solid #000; border-collapse:collapse; font: 12px arial, sans-serif; width:100%;">
                            <tbody>
                                <tr>
                                    <td colspan="2" style="border: 1px solid #000; padding:5px;"><strong>1. Ажлын байрны харилцах субъект</strong></td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid #000; padding:5px; width:50%;"><strong>1.1. Байгууллагын дотор талд </strong></td>
                                    <td style="border: 1px solid #000; padding:5px;"><strong>1.2. Байгууллагын гадна талд </strong></td>
                                </tr>
                                <tr>
                                    <td id="jobdesc_Tab1lblD19" style="border: 1px solid #000; padding:5px;"></td>
                                    <td id="jobdesc_Tab1lblD20" style="border: 1px solid #000; padding:5px;"></td>
                                </tr>
                            </tbody>
                        </table>
                        <table style="border:0px solid #000; border-collapse:collapse; font: 12px arial, sans-serif; width:100%;">
                            <tbody>
                                <tr>
                                    <td style="border: 1px solid #000; padding:5px; border-top:0px; vertical-align:top;"><strong>2. Албан тушаал эрхлэгчийн хүлээх хариуцлага</strong></td>
                                    <td id="jobdesc_Tab1lblD21" style="border: 1px solid #000; padding:5px; border-top:0px;" colspan="2"></td>
                                </tr>
                                <tr>
                                    <td rowspan="4" style="border: 1px solid #000; padding:5px; vertical-align:top;"><strong>3. Ажлын байрны нөөц, хэрэгсэл</strong></td>
                                    <td style="border: 1px solid #000; padding:5px; vertical-align:top;"><strong>3.1. Санхүүгийн</strong></td>
                                    <td id="jobdesc_Tab1lblD22" style="border: 1px solid #000; padding:5px;"></td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid #000; padding:5px; vertical-align:top;"><strong>3.2. Материалын</strong></td>
                                    <td id="jobdesc_Tab1lblD23" style="border: 1px solid #000; padding:5px;"></td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid #000; padding:5px; vertical-align:top;"><strong>3.3. Хүний</strong></td>
                                    <td id="jobdesc_Tab1lblD24" style="border: 1px solid #000; padding:5px;"></td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid #000; padding:5px; vertical-align:top;"><strong>3.4. Бусад</strong></td>
                                    <td id="jobdesc_Tab1lblD25" style="border: 1px solid #000; padding:5px;"></td>
                                </tr>
                                <tr>
                                    <td rowspan="2" style="border: 1px solid #000; padding:5px; vertical-align:top;"><strong>4. Ажлын байрны нөхцөл</strong></td>
                                    <td style="border: 1px solid #000; padding:5px; vertical-align:top;"><strong>4.1. Ердийн нөхцөл</strong></td>
                                    <td id="jobdesc_Tab1lblD26" style="border: 1px solid #000; padding:5px;"></td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid #000; padding:5px; vertical-align:top;"><strong>4.2. Онцгой нөхцөл</strong></td>
                                    <td id="jobdesc_Tab1lblD27" style="border: 1px solid #000; padding:5px;"></td>
                                </tr>
                            </tbody>
                        </table>
                        <div style="text-align:left; font-weight:bold;padding: 10px 0;">
                            Д. БАТАЛГААЖУУЛАЛТ
                        </div>
                        <table style="border:0px solid #000; border-collapse:collapse; font: 12px arial, sans-serif; width:100%;">
                            <tbody>
                                <tr>
                                    <td style="border: 1px solid #000; padding:5px; text-align:center;"><strong>Ажлын байрны тодорхойлолтыг боловсруулсан ажлын хэсэг буюу багийн ахлагч</strong></td>
                                    <td style="border: 1px solid #000; padding:5px; text-align:center;"><strong>Ажлын байрны тодорхойлолтыг баталсан эрх бүхий албан тушаалтан</strong></td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid #000; padding:5px; border-bottom:0px; border-top:0px;"><strong>Албан тушаалын нэр: </strong></td>
                                    <td style="border: 1px solid #000; padding:5px; border-bottom:0px; border-top:0px;"><strong>Албан тушаалын нэр: </strong></td>
                                </tr>
                                <tr>
                                    <td id="jobdescTab1Lbl10" runat="server" style="border: 1px solid #000; padding:5px; border-bottom:0px; border-top:0px;">Төрийн захиргааны удирдлагын газрын дарга</td>
                                    <td style="border: 1px solid #000; padding:5px; border-bottom:0px; border-top:0px;">Төрийн нарийн бичгийн дарга (тамга)</td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid #000; padding:5px; border-bottom:0px; border-top:0px;">
                                        <table style="border:0px solid #000; border-collapse:collapse; font: 12px arial, sans-serif; width:100%;">
                                            <tbody>
                                                <tr>
                                                    <td style="border-bottom:1px dotted #000; padding:0px; width:60%;"></td>
                                                    <td style="width:auto;"><strong id="jobdescTab1Lbl11" runat="server">Г. ГАНСҮХ</strong></td>
                                                </tr>
                                                <tr>
                                                    <td style="padding:0px; width:60%;">(Гарын үсэг)</td>
                                                    <td style="padding:0px; width:auto;">(Эцэг, эхийн үсэг, өөрийн нэр)</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                    <td style="border: 1px solid #000; padding:5px; border-bottom:0px; border-top:0px;">
                                        <table style="border:0px solid #000; border-collapse:collapse; font: 12px arial, sans-serif; width:100%;">
                                            <tbody>
                                                <tr>
                                                    <td style="border-bottom:1px dotted #000; padding:0px; width:60%;"></td>
                                                    <td style="width:auto;"><strong id="jobdescTab1Lbl12" runat="server">Х. ГАНЦОГТ</strong></td>
                                                </tr>
                                                <tr>
                                                    <td style="padding:0px; width:60%;">(Гарын үсэг)</td>
                                                    <td style="padding:0px; width:auto;">(Эцэг, эхийн үсэг, өөрийн нэр)</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 1px solid #000; padding:5px; border-top:0px; text-align:right;"><strong id="jobdescTab1Lbl13" runat="server">2015 оны 01 сарын 20-ны өдөр</strong></td>
                                    <td style="border: 1px solid #000; padding:5px; border-top:0px; text-align:right;"><strong id="jobdescTab1Lbl14" runat="server">2015 оны 01 сарын 20-ны өдөр</strong></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div id="jobdescTab2" runat="server" class="tab-pane">
                    <div style="margin:10px 10px 10px 10px; display:block; overflow:hidden;">
                        <div style="width:100%;">
                            <div style="width:62px; float: left; margin-right: 10px;">
                                <select id="jobdescTab2SelectYear" runat="server" class="form-control" style="padding:1px;"><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                            </div>
                            <div style="width:40px; float: left; margin:8px 0 0 0;">
                                Газар:
                            </div>
                            <div style="width:90px; float: left; margin-right: 10px;">
                                <select id="jobdescTab2SelectGazar" runat="server" class="form-control" style="padding:1px;"><option>ХХААБГ</option></select>
                            </div>
                            <div style="width:43px; float: left; margin:8px 0 0 0;">
                                Хэлтэс:
                            </div>
                            <div style="width:90px; float: left; margin-right: 10px;">
                                <select id="jobdescTab2SelectHeltes" runat="server" class="form-control" style="padding:1px;"><option>ХХААБГ</option></select>
                            </div>
                            <div style="width:60px; float: left; margin:8px 0 0 0;">
                                Ажилтан:
                            </div>
                            <div style="width:250px; float: left; margin-right: 10px;">
                                <select id="jobdescTab2SelectStaff" runat="server" class="form-control" style="padding:1px;"><option>Төслийн зөвлөх Г.Гүндсамба</option></select>
                            </div>
                        </div>
                    </div>
                    <ul class="nav nav-tabs bordered">                           
                        <li id="jobdescTab2t1Li" runat="server" style="display:none;">
                            <a data-toggle="tab" href="#jobdescTab2t1">Гарчиг</a>
                        </li>
                        <li id="jobdescTab2t2Li" runat="server" class="active">
                            <a data-toggle="tab" href="#jobdescTab2t2">Б. ЧИГ ҮҮРЭГ</a>
                        </li>
                        <li>
                            <a data-toggle="tab" href="#jobdescTab2t3">В. ТАВИГДАХ ШААРДЛАГА</a>
                        </li>
                        <li>
                            <a data-toggle="tab" href="#jobdescTab2t4">Г. ХҮЧИН ЗҮЙЛС</a>
                        </li>
                    </ul>
                    <div id="jobdescTab2Content" class="tab-content">
                        <div id="jobdescTab2t1" runat="server" class="tab-pane">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <div style="display:block; overflow:hidden;">Хариуцсан ажил<a class="btn btn-warning btn-xs pull-right" href="javascript:void(0);" style="margin-bottom: 1px;" onclick="saveJobDesc(1)"><i class="glyphicon glyphicon-floppy-disk" style="top:3px;"></i> Хадгалах</a></div>
                                            <textarea id="jobdescTab2D1" name="jobdescTab2D1" class="custom-scroll" style="width:100%;"></textarea> 
                                         </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="jobdescTab2t2" runat="server" class="tab-pane active">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <div style="display:block; overflow:hidden;">1. Ажлын байрны зорилго<a class="btn btn-warning btn-xs pull-right" href="javascript:void(0);" style="margin-bottom: 1px;" onclick="saveJobDesc(2)"><i class="glyphicon glyphicon-floppy-disk" style="top:3px;"></i> Хадгалах</a></div>
                                            <textarea id="jobdescTab2D2" name="jobdescTab2D2" runat="server"></textarea>
                                            <script>
                                                CKEDITOR.replace('jobdescTab2D2', {
                                                    toolbar: [
                                                        { name: 'document', groups: ['mode', 'document', 'doctools'], items: ['Source'] },
	                                                    { name: 'clipboard', groups: ['clipboard', 'undo', 'list', 'indent', 'blocks', 'align', 'bidi, styles'], items: ['Copy', 'Paste', '-', 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'] },
	                                                    { name: 'basicstyles', groups: ['basicstyles', 'cleanup, colors'], items: ['Bold', 'Italic', 'Underline', 'Strike'] },
                                                    ]
                                                });
                                            </script>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12" style="margin:0 13px;">
                                    <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                                        <header>
                                            <span class="widget-icon"> <i class="fa fa-table"></i> </span>
                                            <h2> 2. Ажлын байрны үндсэн зорилт, 2.1. Гүйцэтгэлийн шалгуур үзүүлэлт</h2>
                                            <div class="widget-toolbar">  
                                                <div class="btn-group options" style="margin-right:0px !important;">
                                                    <button id="jobdescTab2t2Table2Add" onclick="showAddEditJobdescTab2ZoriltModal(this,'нэмэх')" class="btn btn-default btn-sm" data-target="#jobdescTab2ZoriltModal" data-toggle="modal"><i class="fa fa-plus"></i> Нэмэх</button>
                                                </div>
                                            </div>
                                        </header>
                                        <div>
                                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                            <div id="loaderTab2t2Table2" class="search-background">
                                                <img width="64" height="" src="img/loading.gif"/>
                                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                            </div>
                                            <div id="divBindTab2t2Table2" class="widget-body no-padding">
                                                 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                                        <header>
                                            <span class="widget-icon"> <i class="fa fa-table"></i> </span>
                                            <h2> 3. Ажлын байрны гол үйл ажиллагаа, 3.1. Хугацаа, хуваарь </h2>
                                        </header>
                                        <div>
                                            <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                            <div id="loaderTab2t2Table1" class="search-background">
                                                <img width="64" height="" src="img/loading.gif"/>
                                                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                            </div>
                                            <div id="divBindTab2t2Table1" class="widget-body no-padding">
                                                 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="jobdescTab2t3" class="tab-pane">
                            <div class="row">
                                <div class="col-sm-12" style="margin:0 13px 0 13px;">
                                    <table class="table table-striped table-bordered" style="font: 12px arial, sans-serif;">
                                        <thead>
                                            <tr>
                                                <th colspan="3">1.1. Ерөнхий шаардлага:</th>
                                            </tr>
                                            <tr>
                                                <th>Үзүүлэлт</th>
                                                <th>Чухал шаардлагатай</th>
                                                <th>Шаардлагатай</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th>Боловсрол</th>
                                                <td>
                                                    <div style="display:block; overflow:hidden;"><a class="btn btn-warning btn-xs pull-right" href="javascript:void(0);" style="margin-bottom: 1px;" onclick="saveJobDesc(7)"><i class="glyphicon glyphicon-floppy-disk" style="top:3px;"></i> Хадгалах</a></div>
                                                    <label class="textarea textarea-resizable" style="width:100%;"> 										
										                <textarea id="jobdescTab2D7" name="jobdescTab2D7" class="custom-scroll" style="width:100%;"></textarea> 
									                </label>
                                                </td>
                                                <td>
                                                    <div style="display:block; overflow:hidden;"><a class="btn btn-warning btn-xs pull-right" href="javascript:void(0);" style="margin-bottom: 1px;" onclick="saveJobDesc(8)"><i class="glyphicon glyphicon-floppy-disk" style="top:3px;"></i> Хадгалах</a></div>
                                                    <label class="textarea textarea-resizable" style="width:100%;"> 
                                                        <textarea id="jobdescTab2D8" name="jobdescTab2D8" class="custom-scroll" style="width:100%;"></textarea>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>Мэргэжил</th>
                                                <td>
                                                    <div style="display:block; overflow:hidden;"><a class="btn btn-warning btn-xs pull-right" href="javascript:void(0);" style="margin-bottom: 1px;" onclick="saveJobDesc(9)"><i class="glyphicon glyphicon-floppy-disk" style="top:3px;"></i> Хадгалах</a></div>
                                                    <label class="textarea textarea-resizable" style="width:100%;"> 
                                                        <textarea id="jobdescTab2D9" name="jobdescTab2D9" class="custom-scroll" style="width:100%;"></textarea>
                                                    </label>
                                                </td>
                                                <td>
                                                    <div style="display:block; overflow:hidden;"><a class="btn btn-warning btn-xs pull-right" href="javascript:void(0);" style="margin-bottom: 1px;" onclick="saveJobDesc(10)"><i class="glyphicon glyphicon-floppy-disk" style="top:3px;"></i> Хадгалах</a></div>
                                                    <label class="textarea textarea-resizable" style="width:100%;"> 
                                                        <textarea id="jobdescTab2D10" name="jobdescTab2D10" class="custom-scroll" style="width:100%;"></textarea>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>Мэргэшил</th>
                                                <td>
                                                    <div style="display:block; overflow:hidden;"><a class="btn btn-warning btn-xs pull-right" href="javascript:void(0);" style="margin-bottom: 1px;" onclick="saveJobDesc(11)"><i class="glyphicon glyphicon-floppy-disk" style="top:3px;"></i> Хадгалах</a></div>
                                                    <label class="textarea textarea-resizable" style="width:100%;"> 
                                                        <textarea id="jobdescTab2D11" name="jobdescTab2D11" class="custom-scroll" style="width:100%;"></textarea>
                                                    </label>
                                                </td>
                                                <td>
                                                    <div style="display:block; overflow:hidden;"><a class="btn btn-warning btn-xs pull-right" href="javascript:void(0);" style="margin-bottom: 1px;" onclick="saveJobDesc(12)"><i class="glyphicon glyphicon-floppy-disk" style="top:3px;"></i> Хадгалах</a></div>
                                                    <label class="textarea textarea-resizable" style="width:100%;"> 
                                                        <textarea id="jobdescTab2D12" name="jobdescTab2D12" class="custom-scroll" style="width:100%;"></textarea>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>Туршлага</th>
                                                <td>
                                                    <div style="display:block; overflow:hidden;"><a class="btn btn-warning btn-xs pull-right" href="javascript:void(0);" style="margin-bottom: 1px;" onclick="saveJobDesc(13)"><i class="glyphicon glyphicon-floppy-disk" style="top:3px;"></i> Хадгалах</a></div>
                                                    <label class="textarea textarea-resizable" style="width:100%;"> 
                                                        <textarea id="jobdescTab2D13" name="jobdescTab2D13" class="custom-scroll" style="width:100%;"></textarea>
                                                    </label>
                                                </td>
                                                <td>
                                                    <div style="display:block; overflow:hidden;"><a class="btn btn-warning btn-xs pull-right" href="javascript:void(0);" style="margin-bottom: 1px;" onclick="saveJobDesc(14)"><i class="glyphicon glyphicon-floppy-disk" style="top:3px;"></i> Хадгалах</a></div>
                                                    <label class="textarea textarea-resizable" style="width:100%;"> 
                                                        <textarea id="jobdescTab2D14" name="jobdescTab2D14" class="custom-scroll" style="width:100%;"></textarea>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>Ур чадвар</th>
                                                <td>
                                                    <div style="display:block; overflow:hidden;"><a class="btn btn-warning btn-xs pull-right" href="javascript:void(0);" style="margin-bottom: 1px;" onclick="saveJobDesc(15)"><i class="glyphicon glyphicon-floppy-disk" style="top:3px;"></i> Хадгалах</a></div>
                                                    <textarea id="jobdescTab2D15" name="jobdescTab2D15"></textarea>
                                                    <script>
                                                        CKEDITOR.replace('jobdescTab2D15', {
                                                            toolbar: [
                                                                { name: 'document', groups: ['mode', 'document', 'doctools'], items: ['Source'] },
	                                                            { name: 'clipboard', groups: ['clipboard', 'undo', 'list', 'indent', 'blocks', 'align', 'bidi, styles'], items: ['Copy', 'Paste', '-', 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'] },
	                                                            { name: 'basicstyles', groups: ['basicstyles', 'cleanup, colors'], items: ['Bold', 'Italic', 'Underline', 'Strike'] },
                                                            ]
                                                        });
                                                    </script>
                                                </td>
                                                <td>
                                                    <div style="display:block; overflow:hidden;"><a class="btn btn-warning btn-xs pull-right" href="javascript:void(0);" style="margin-bottom: 1px;" onclick="saveJobDesc(16)"><i class="glyphicon glyphicon-floppy-disk" style="top:3px;"></i> Хадгалах</a></div>
                                                    <textarea id="jobdescTab2D16" name="jobdescTab2D16"></textarea>
                                                    <script>
                                                        CKEDITOR.replace('jobdescTab2D16', {
                                                            toolbar: [
                                                                { name: 'document', groups: ['mode', 'document', 'doctools'], items: ['Source'] },
	                                                            { name: 'clipboard', groups: ['clipboard', 'undo', 'list', 'indent', 'blocks', 'align', 'bidi, styles'], items: ['Copy', 'Paste', '-', 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'] },
	                                                            { name: 'basicstyles', groups: ['basicstyles', 'cleanup, colors'], items: ['Bold', 'Italic', 'Underline', 'Strike'] },
                                                            ]
                                                        });
                                                    </script>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th colspan="3">1.2. Тусгай шаардлага:</th>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <div style="display:block; overflow:hidden;"><a class="btn btn-warning btn-xs pull-right" href="javascript:void(0);" style="margin-bottom: 1px;" onclick="saveJobDesc(17)"><i class="glyphicon glyphicon-floppy-disk" style="top:3px;"></i> Хадгалах</a></div>
                                                    <textarea id="jobdescTab2D17" name="jobdescTab2D17"></textarea>
                                                    <script>
                                                        CKEDITOR.replace('jobdescTab2D17', {
                                                            toolbar: [
                                                                { name: 'document', groups: ['mode', 'document', 'doctools'], items: ['Source'] },
	                                                            { name: 'clipboard', groups: ['clipboard', 'undo', 'list', 'indent', 'blocks', 'align', 'bidi, styles'], items: ['Copy', 'Paste', '-', 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'] },
	                                                            { name: 'basicstyles', groups: ['basicstyles', 'cleanup, colors'], items: ['Bold', 'Italic', 'Underline', 'Strike'] },
                                                            ]
                                                        });
                                                    </script>
                                                </td>
                                                <td>
                                                    <div style="display:block; overflow:hidden;"><a class="btn btn-warning btn-xs pull-right" href="javascript:void(0);" style="margin-bottom: 1px;" onclick="saveJobDesc(18)"><i class="glyphicon glyphicon-floppy-disk" style="top:3px;"></i> Хадгалах</a></div>
                                                    <textarea id="jobdescTab2D18" name="jobdescTab2D18"></textarea>
                                                    <script>
                                                        CKEDITOR.replace('jobdescTab2D18', {
                                                            toolbar: [
                                                                { name: 'document', groups: ['mode', 'document', 'doctools'], items: ['Source'] },
	                                                            { name: 'clipboard', groups: ['clipboard', 'undo', 'list', 'indent', 'blocks', 'align', 'bidi, styles'], items: ['Copy', 'Paste', '-', 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'] },
	                                                            { name: 'basicstyles', groups: ['basicstyles', 'cleanup, colors'], items: ['Bold', 'Italic', 'Underline', 'Strike'] },
                                                            ]
                                                        });
                                                    </script>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>                                
                            </div>
                        </div>
                        <div id="jobdescTab2t4" class="tab-pane">
                            <div class="row">
                                <div class="col-sm-12" style="margin:0 13px 0 13px;">
                                    <table class="table table-striped table-bordered" style="font: 12px arial, sans-serif;">
                                        <tbody>
                                            <tr>
                                                <td colspan="2" style="width:20%;">1.1. Байгууллагын дотор талд </td>
                                                <td>
                                                    <div style="display:block; overflow:hidden;"><a class="btn btn-warning btn-xs pull-right" href="javascript:void(0);" style="margin-bottom: 1px;" onclick="saveJobDesc(19)"><i class="glyphicon glyphicon-floppy-disk" style="top:3px;"></i> Хадгалах</a></div>
                                                    <textarea id="jobdescTab2D19" name="jobdescTab2D19"></textarea>
                                                    <script>
                                                        CKEDITOR.replace('jobdescTab2D19', {
                                                            toolbar: [
                                                                { name: 'document', groups: ['mode', 'document', 'doctools'], items: ['Source'] },
	                                                            { name: 'clipboard', groups: ['clipboard', 'undo', 'list', 'indent', 'blocks', 'align', 'bidi, styles'], items: ['Copy', 'Paste', '-', 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'] },
	                                                            { name: 'basicstyles', groups: ['basicstyles', 'cleanup, colors'], items: ['Bold', 'Italic', 'Underline', 'Strike'] },
                                                            ]
                                                        });
                                                    </script>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">1.2.Байгууллагын гадна талд </td>
                                                <td>
                                                    <div style="display:block; overflow:hidden;"><a class="btn btn-warning btn-xs pull-right" href="javascript:void(0);" style="margin-bottom: 1px;" onclick="saveJobDesc(20)"><i class="glyphicon glyphicon-floppy-disk" style="top:3px;"></i> Хадгалах</a></div>
                                                    <textarea id="jobdescTab2D20" name="jobdescTab2D20"></textarea>
                                                    <script>
                                                        CKEDITOR.replace('jobdescTab2D20', {
                                                            toolbar: [
                                                                { name: 'document', groups: ['mode', 'document', 'doctools'], items: ['Source'] },
	                                                            { name: 'clipboard', groups: ['clipboard', 'undo', 'list', 'indent', 'blocks', 'align', 'bidi, styles'], items: ['Copy', 'Paste', '-', 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'] },
	                                                            { name: 'basicstyles', groups: ['basicstyles', 'cleanup, colors'], items: ['Bold', 'Italic', 'Underline', 'Strike'] },
                                                            ]
                                                        });
                                                    </script>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">2. Албан тушаал эрхлэгчийн хүлээх хариуцлага</td>
                                                <td>
                                                    <div style="display:block; overflow:hidden;"><a class="btn btn-warning btn-xs pull-right" href="javascript:void(0);" style="margin-bottom: 1px;" onclick="saveJobDesc(21)"><i class="glyphicon glyphicon-floppy-disk" style="top:3px;"></i> Хадгалах</a></div>
                                                    <textarea id="jobdescTab2D21" name="jobdescTab2D21"></textarea>
                                                    <script>
                                                        CKEDITOR.replace('jobdescTab2D21', {
                                                            toolbar: [
                                                                { name: 'document', groups: ['mode', 'document', 'doctools'], items: ['Source'] },
	                                                            { name: 'clipboard', groups: ['clipboard', 'undo', 'list', 'indent', 'blocks', 'align', 'bidi, styles'], items: ['Copy', 'Paste', '-', 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'] },
	                                                            { name: 'basicstyles', groups: ['basicstyles', 'cleanup, colors'], items: ['Bold', 'Italic', 'Underline', 'Strike'] },
                                                            ]
                                                        });
                                                    </script>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td rowspan="4">3. Ажлын байрны нөөц, хэрэгсэл</td>
                                                <td>3.1. Санхүүгийн</td>
                                                <td>
                                                    <div style="display:block; overflow:hidden;"><a class="btn btn-warning btn-xs pull-right" href="javascript:void(0);" style="margin-bottom: 1px;" onclick="saveJobDesc(22)"><i class="glyphicon glyphicon-floppy-disk" style="top:3px;"></i> Хадгалах</a></div>
                                                    <textarea id="jobdescTab2D22" name="jobdescTab2D22"></textarea>
                                                    <script>
                                                        CKEDITOR.replace('jobdescTab2D22', {
                                                            toolbar: [
                                                                { name: 'document', groups: ['mode', 'document', 'doctools'], items: ['Source'] },
	                                                            { name: 'clipboard', groups: ['clipboard', 'undo', 'list', 'indent', 'blocks', 'align', 'bidi, styles'], items: ['Copy', 'Paste', '-', 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'] },
	                                                            { name: 'basicstyles', groups: ['basicstyles', 'cleanup, colors'], items: ['Bold', 'Italic', 'Underline', 'Strike'] },
                                                            ]
                                                        });
                                                    </script>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3.2. Материалын</td>
                                                <td>
                                                    <div style="display:block; overflow:hidden;"><a class="btn btn-warning btn-xs pull-right" href="javascript:void(0);" style="margin-bottom: 1px;" onclick="saveJobDesc(23)"><i class="glyphicon glyphicon-floppy-disk" style="top:3px;"></i> Хадгалах</a></div>
                                                    <textarea id="jobdescTab2D23" name="jobdescTab2D23"></textarea>
                                                    <script>
                                                        CKEDITOR.replace('jobdescTab2D23', {
                                                            toolbar: [
                                                                { name: 'document', groups: ['mode', 'document', 'doctools'], items: ['Source'] },
	                                                            { name: 'clipboard', groups: ['clipboard', 'undo', 'list', 'indent', 'blocks', 'align', 'bidi, styles'], items: ['Copy', 'Paste', '-', 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'] },
	                                                            { name: 'basicstyles', groups: ['basicstyles', 'cleanup, colors'], items: ['Bold', 'Italic', 'Underline', 'Strike'] },
                                                            ]
                                                        });
                                                    </script>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3.3. Хүний</td>
                                                <td>
                                                    <div style="display:block; overflow:hidden;"><a class="btn btn-warning btn-xs pull-right" href="javascript:void(0);" style="margin-bottom: 1px;" onclick="saveJobDesc(24)"><i class="glyphicon glyphicon-floppy-disk" style="top:3px;"></i> Хадгалах</a></div>
                                                    <textarea id="jobdescTab2D24" name="jobdescTab2D24"></textarea>
                                                    <script>
                                                        CKEDITOR.replace('jobdescTab2D24', {
                                                            toolbar: [
                                                                { name: 'document', groups: ['mode', 'document', 'doctools'], items: ['Source'] },
	                                                            { name: 'clipboard', groups: ['clipboard', 'undo', 'list', 'indent', 'blocks', 'align', 'bidi, styles'], items: ['Copy', 'Paste', '-', 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'] },
	                                                            { name: 'basicstyles', groups: ['basicstyles', 'cleanup, colors'], items: ['Bold', 'Italic', 'Underline', 'Strike'] },
                                                            ]
                                                        });
                                                    </script>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3.4. Бусад</td>
                                                <td>
                                                    <div style="display:block; overflow:hidden;"><a class="btn btn-warning btn-xs pull-right" href="javascript:void(0);" style="margin-bottom: 1px;" onclick="saveJobDesc(25)"><i class="glyphicon glyphicon-floppy-disk" style="top:3px;"></i> Хадгалах</a></div>
                                                    <textarea id="jobdescTab2D25" name="jobdescTab2D25"></textarea>
                                                    <script>
                                                        CKEDITOR.replace('jobdescTab2D25', {
                                                            toolbar: [
                                                                { name: 'document', groups: ['mode', 'document', 'doctools'], items: ['Source'] },
	                                                            { name: 'clipboard', groups: ['clipboard', 'undo', 'list', 'indent', 'blocks', 'align', 'bidi, styles'], items: ['Copy', 'Paste', '-', 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'] },
	                                                            { name: 'basicstyles', groups: ['basicstyles', 'cleanup, colors'], items: ['Bold', 'Italic', 'Underline', 'Strike'] },
                                                            ]
                                                        });
                                                    </script>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td rowspan="2">4. Ажлын байрны нөхцөл</td>
                                                <td>4.1. Ердийн нөхцөл</td>
                                                <td>
                                                    <div style="display:block; overflow:hidden;"><a class="btn btn-warning btn-xs pull-right" href="javascript:void(0);" style="margin-bottom: 1px;" onclick="saveJobDesc(26)"><i class="glyphicon glyphicon-floppy-disk" style="top:3px;"></i> Хадгалах</a></div>
                                                    <textarea id="jobdescTab2D26" name="jobdescTab2D26"></textarea>
                                                    <script>
                                                        CKEDITOR.replace('jobdescTab2D26', {
                                                            toolbar: [
                                                                { name: 'document', groups: ['mode', 'document', 'doctools'], items: ['Source'] },
	                                                            { name: 'clipboard', groups: ['clipboard', 'undo', 'list', 'indent', 'blocks', 'align', 'bidi, styles'], items: ['Copy', 'Paste', '-', 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'] },
	                                                            { name: 'basicstyles', groups: ['basicstyles', 'cleanup, colors'], items: ['Bold', 'Italic', 'Underline', 'Strike'] },
                                                            ]
                                                        });
                                                    </script>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>4.2. Онцгой нөхцөл</td>
                                                <td>
                                                    <div style="display:block; overflow:hidden;"><a class="btn btn-warning btn-xs pull-right" href="javascript:void(0);" style="margin-bottom: 1px;" onclick="saveJobDesc(27)"><i class="glyphicon glyphicon-floppy-disk" style="top:3px;"></i> Хадгалах</a></div>
                                                    <textarea id="jobdescTab2D27" name="jobdescTab2D27"></textarea>
                                                    <script>
                                                        CKEDITOR.replace('jobdescTab2D27', {
                                                            toolbar: [
                                                                { name: 'document', groups: ['mode', 'document', 'doctools'], items: ['Source'] },
	                                                            { name: 'clipboard', groups: ['clipboard', 'undo', 'list', 'indent', 'blocks', 'align', 'bidi, styles'], items: ['Copy', 'Paste', '-', 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'] },
	                                                            { name: 'basicstyles', groups: ['basicstyles', 'cleanup, colors'], items: ['Bold', 'Italic', 'Underline', 'Strike'] },
                                                            ]
                                                        });
                                                    </script>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="jobdescTab3" runat="server" class="tab-pane">
                    <div class="row">
                        <article class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                            <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-table"></i></span>
                                    <h2> Ажлын байрны нэр </h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <button id="pTab3S1AddBtn" runat="server" class="btn btn-primary btn-xs" type="button" data-target="#pTab3S1Modal" data-toggle="modal" onclick="showAddEditTab3S1(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                        </div> 
                                    </div>
                                </header>
                                <div>
                                    <div id="loaderTab3S1" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div id="divBindTab3S1Table" class="widget-body no-padding">
                        
                                    </div>
                                </div>
                            </div>
                        </article>
                        <article class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                            <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-table"></i></span>
                                    <h2> Ажлын байрны орон тоо </h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <button id="pTab3S2AddBtn" runat="server" class="btn btn-primary btn-xs" type="button" data-target="#pTab3S2Modal" data-toggle="modal" onclick="showAddEditTab3S2(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab3S2SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                        </div>
                                    </div>
                                </header>
                                <div>
                                    <%--<div class="Colvis TableTools" style="width:80px; right:400px; top:5px; z-index:5; margin-top:1px;">
                                        <select id="pTab1SelectHeltes" name="pTab1SelectHeltes" runat="server" class="form-control" style="padding: 1px;" disabled="disabled">
							                <option value="">- Бүгд -</option>
						                </select>
                                    </div>
                                    <div class="Colvis TableTools" style="right:485px; top:4px; z-index:5; margin-top:7px;"><label>Хэлтэс:</label></div>
                                    <div class="Colvis TableTools" style="width:80px; right:540px; top:5px; z-index:5; margin-top:1px;">
                                        <select id="pTab1SelectGazar" name="pTab1SelectGazar" runat="server" class="form-control" style="padding: 1px;">
							                <option value="">- Бүгд -</option>
						                </select>
                                    </div>
                                    <div class="Colvis TableTools" style="right:625px; top:4px; z-index:5; margin-top:7px;"><label>Газар:</label></div>--%>
                                    <div id="loaderTab3S2" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div id="divBindTab3S2Table" class="widget-body no-padding">
                        
                                    </div>
                                </div>
                            </div>
                        </article>
                        <article class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="jarviswidget" data-widget-sortable="false" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                                <header>
                                    <span class="widget-icon"><i class="fa fa-table"></i></span>
                                    <h2> Ажлын байран дахь албан хаагч </h2>
                                    <div class="widget-toolbar">  
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <button id="pTab3S3AddBtn" runat="server" class="btn btn-primary btn-xs" type="button" data-target="#pTab3S3Modal" data-toggle="modal" onclick="showAddEditTab3S3(this,'нэмэх')"><i class="fa fa-plus"></i> Нэмэх</button>
                                        </div> 
                                    </div>
                                    <div class="widget-toolbar">
                                        <div class="btn-group options" style="margin-right:0px !important;">
                                            <select id="pTab3S3SelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="">Бүгд</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                        </div>
                                    </div>
                                </header>
                                <div>
                                    <div class="Colvis TableTools" style="right:75px; top:4px; z-index:5; margin-top:7px;"><label>Илэрц: </label></div>
                                    <div class="Colvis TableTools" style="width:80px; right:125px; top:5px; z-index:5; margin-top:1px;">
                                        <select id="pTab3S3SelectHeltes" name="pTab3S3SelectHeltes" runat="server" class="form-control" style="padding: 1px;" disabled="disabled">
							                <option value="">- Бүгд -</option>
						                </select>
                                    </div>
                                    <div class="Colvis TableTools" style="right:210px; top:4px; z-index:5; margin-top:7px;"><label>Хэлтэс:</label></div>
                                    <div class="Colvis TableTools" style="width:80px; right:260px; top:5px; z-index:5; margin-top:1px;">
                                        <select id="pTab3S3SelectGazar" name="pTab3S3SelectGazar" runat="server" class="form-control" style="padding: 1px;">
							                <option value="">- Бүгд -</option>
						                </select>
                                    </div>
                                    <div class="Colvis TableTools" style="right:345px; top:4px; z-index:5; margin-top:7px;"><label>Газар:</label></div>
                                    <div id="loaderTab3S3" class="search-background">
                                        <img width="64" height="" src="img/loading.gif"/>
                                        <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
                                    </div>
                                    <div id="divBindTab3S3Table" class="widget-body no-padding">
                        
                                    </div>
                                </div>
                            </div>
                        </article>
                    </div>
                </div>
            </div>
        </article>
    </div>
</section>
<div id="jobdescTab2ZoriltModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="jobdescTab2ZoriltModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Ажлын байрны үндсэн зорилт&nbsp;<span id="jobdescTab2ZoriltModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="jobdescTab2ZoriltModalID" class="form-group hide"></div>   
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Чиг үүргийн зорилт</label>
									<select id="jobdescTab2ZoriltModalSelectZorilt" name="jobdescTab2ZoriltModalSelectZorilt" runat="server" class="form-control" style="padding: 5px;">
                                        <option value="">- Сонго -</option>
							        </select>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Үндсэн зорилт</label>
									<textarea id="jobdescTab2ZoriltModalInputZorilt" name="jobdescTab2ZoriltModalInputZorilt" class="form-control" placeholder="Үндсэн зорилт" rows="3"></textarea>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Гүйцэтгэлийн шалгуур үзүүлэлт</label>
									<textarea id="jobdescTab2ZoriltModalInputCriteria" name="jobdescTab2ZoriltModalInputCriteria" class="form-control" placeholder="Гүйцэтгэлийн шалгуур үзүүлэлт" rows="3"></textarea>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label"><i>Сонгосон зорилтын хүн өдөр: </i><span id="jobdescTab2ZoriltModalSpanPersonday">0</span></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Хүн өдөр</label>
                                    <input id="jobdescTab2ZoriltModalInputPersonday" name="jobdescTab2ZoriltModalInputPersonday" type="text" class="form-control" placeholder="Хүн өдөр" />
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
<div id="jobdescTab2WorkModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="jobdescTab2WorkModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Ажлын байрны гол үйл ажиллагаа&nbsp;<span id="jobdescTab2WorkModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="jobdescTab2WorkModalID" class="form-group hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Ажлын байрны үндсэн зорилт</label>
									<select id="jobdescTab2WorkModalSelectZorilt" name="jobdescTab2WorkModalSelectZorilt" runat="server" class="form-control" style="padding: 5px;">
                                        <option value="">- Сонго -</option>
							        </select>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Ажлын байрны гол үйл ажиллагаа</label>
									<textarea id="jobdescTab2WorkModalInputWork" name="jobdescTab2WorkModalInputWork" class="form-control" placeholder="Ажлын байрны гол үйл ажиллагаа" rows="3"></textarea>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Хугацаа, хуваарь</label>
									<textarea id="jobdescTab2WorkModalInputTm" name="jobdescTab2WorkModalInputTm" class="form-control" placeholder="Хугацаа, хуваарь" rows="2"></textarea>
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
<div id="pTab3S1Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <form id="pTab3S1ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Ажлын байрны нэр&nbsp;<span id="pTab3S1ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pTab3S1ModalID" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label">*Нэр</label>
									<input id="pTab3S1ModalInputName" name="pTab3S1ModalInputName" class="form-control" type="text" placeholder="Нэр"/>
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
<div id="pTab3S2Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="pTab3S2ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Ажлын байрны орон тоо&nbsp;<span id="pTab3S2ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-4">
                                    <label class="control-label">*Он</label>
									<select id="pTab3S2ModalSelectYear" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="">- Сонго -</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div>
                                <div class="col-md-8">
                                    <label class="control-label">*Нэгж</label>
                                    <select id="pTab3S2ModalSelectNegj" runat="server" class="form-control" style="padding:0 0; height:26px;" disabled><option value="">- Сонго -</option></select>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-4">
                                    <label class="control-label">*Орон тоо</label>
									<input id="pTab3S2ModalInputCapacity" name="pTab3S2ModalInputCapacity" class="form-control" type="text" placeholder="Орон тоо"/>
                                </div>
                                <div class="col-md-8">
                                    <label class="control-label">*Ажлын байрны нэр</label>
                                    <select id="pTab3S2ModalSelectType" runat="server" class="form-control" style="padding:0 0; height:26px;"><option value="">- Сонго -</option></select>
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
<div id="pTab3S3Modal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display:none;">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <form id="pTab3S3ModalForm">
                <div class="modal-header">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
                    <h4 class="modal-title" >Ажлын байран дахь албан хаагч&nbsp;<span id="pTab3S3ModalHeaderLabel"></span></h4>
                </div>
                <div class="modal-body">
                    <div id="pTab3S3ModalCapacityNum" class="hide"></div>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-3">
                                    <label class="control-label">*Он</label>
									<select id="pTab3S3ModalSelectYear" runat="server" class="form-control" style="padding:0 0;"><option value="">- Сонго -</option><option>2014</option><option>2015</option><option>2016</option><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option></select>
                                </div>
                                <div class="col-md-4">
                                    <label class="control-label">*Нэгж</label>
                                    <select id="pTab3S3ModalSelectNegj" runat="server" class="form-control" style="padding:0 0;" disabled><option value="">- Сонго -</option></select>
                                </div>
                                <div class="col-md-5">
                                    <label class="control-label">*Ажлын байрны нэр</label>
                                    <select id="pTab3S3ModalSelectType" runat="server" class="form-control" style="padding:0 0;"><option value="">- Сонго -</option></select>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-3">
                                    <label class="control-label">*Индекс</label>
                                    <select id="pTab3S3ModalSelectIndex" name="pTab3S3ModalSelectIndex" runat="server" class="form-control" style="padding:0 0;" disabled><option value="">- Сонго -</option></select>
                                </div>
                                <div class="col-md-9">
                                    <label class="control-label">Ажил үүрэг</label>
                                    <input id="pTab3S3ModalInputDescription" name="pTab3S3ModalInputDescription" runat="server" class="form-control" type="text" placeholder="Ажил үүрэг" />
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
						<div class="form-group">
                            <div class="row">
                                <div class="col-md-3">
                                    Орон тоо: <span id="pTab3S3ModalSpanCapacity" style="font-weight:bold;">-</span><br />Бүртгэгдсэн: <span id="pTab3S3ModalSpanCapacityBurtgesen" style="font-weight:bold;">-</span>
                                </div>
                                <div class="col-md-9">
                                    <label class="control-label">*Албан хаагч</label>
                                    <select id="pTab3S3ModalSelectStaff" runat="server" class="form-control" style="padding:0 0;" disabled><option value="">- Сонго -</option></select>
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
    pageSetUp();
    var globalAjaxVar = null;
    var pagefunction = function () {
        if ($('#pMainDiv').attr('class') != 'hide') {
            var valLiId = $('#pTab1Li').closest('ul').find('.active').attr('id');
            if (valLiId == 'pTab1Li' || valLiId == 'pTab2Li') {
                jobdescTab1SetFirstControls();
            }
            else if (valLiId == 'pTab3Li') {
                dataBindTab3DataTables();
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
    function pDatabindTabs(el) {
        if ($.trim($(el).attr('id')) == 'pTab3Li') {
            if ($.trim($('#divBindTab3S1Table').html()) == "") {
                dataBindTab3DataTables();
            }
        }
    }
    $("#jobdescTab1BtnRefresh").click(function () {
        jobdescTab1Bind();
    });
    function jobdescTab1SetFirstControls() {
        var userGazarId = $('#indexUserGazarId').text();
        var userHeltesId = $('#indexUserHeltesId').text();
        var userId = $('#indexUserId').text();
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr":"' + $('#jobdescTab1SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#jobdescTab1SelectGazar").html(valData);
                $("#jobdescTab2SelectGazar").html(valData);
                $('#jobdescTab1SelectGazar').val(userGazarId);
                $('#jobdescTab2SelectGazar').val(userGazarId);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                    data: '{"yr":"' + $("#jobdescTab1SelectYear option:selected").val() + '", "gazar":"' + $("#jobdescTab1SelectGazar option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                        });
                        $("#jobdescTab1SelectHeltes").html(valData);
                        $("#jobdescTab2SelectHeltes").html(valData);
                        //$('#jobdescTab1SelectHeltes').val(userHeltesId);
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                            data: '{"qry":"SELECT b.POS_ID||\'~\'||c.NAME||\'~\'||NVL(d.NAME,\'-\') FROM hrdbuser.ST_STAFFS a INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE = 1 LEFT JOIN hrdbuser.STN_POS c ON b.POS_ID=c.ID LEFT JOIN hrdbuser.ST_RANK d ON b.RANK_ID=d.ID WHERE a.ID=' + userId + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                $('#jobdescTab1SelectGazar').prop('disabled', true);
                                $('#jobdescTab2SelectGazar').prop('disabled', true);
                                if (data.d == '2010201' || data.d == '10205') {
                                    $('#jobdescTab1SelectHeltes').prop('disabled', false);
                                    $('#jobdescTab2SelectHeltes').prop('disabled', false);
                                    $('#jobdescTab1SelectStaff').prop('disabled', false);
                                    $('#jobdescTab2SelectStaff').prop('disabled', false);
                                    $('#jobdescTab1InputSubmit').prop('disabled', false);
                                }
                                else if (data.d == '2010301') {
                                    $('#jobdescTab1SelectHeltes').prop('disabled', true);
                                    $('#jobdescTab2SelectHeltes').prop('disabled', true);
                                    $('#jobdescTab1SelectStaff').prop('disabled', false);
                                    $('#jobdescTab2SelectStaff').prop('disabled', false);
                                    $('#jobdescTab1SelectHeltes').val(userHeltesId);
                                    $('#jobdescTab2SelectHeltes').val(userHeltesId);
                                    $('#jobdescTab1InputSubmit').prop('disabled', false);
                                }
                                else {
                                    $('#jobdescTab1SelectHeltes').prop('disabled', false);
                                    $('#jobdescTab2SelectHeltes').prop('disabled', false);
                                    $('#jobdescTab1SelectStaff').prop('disabled', false);
                                    $('#jobdescTab2SelectStaff').prop('disabled', true);
                                    $('#jobdescTab1SelectHeltes').val(userHeltesId);
                                    $('#jobdescTab2SelectHeltes').val(userHeltesId);
                                    $('#jobdescTab1InputSubmit').prop('disabled', false);
                                }
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/JobdescTab1SelectStaffListForDDL",
                                    data: '{"yr":"' + $("#jobdescTab1SelectYear option:selected").val() + '", "gazar":"' + $("#jobdescTab1SelectGazar option:selected").val() + '", "heltes":"' + $("#jobdescTab1SelectHeltes option:selected").val() + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (data) {
                                        valData = '';
                                        valOptGroup = '';
                                        $($.parseJSON(data.d)).each(function (index, value) {
                                            if (value.BR_ID != valOptGroup) {
                                                if (valOptGroup != '') valData += '</optgroup>';
                                                valData += '<optgroup label="' + value.NEGJNAME + '">';
                                            }
                                            valData += "<option data-brid=\"" + value.BR_ID + "\" data-jobtypeid=\"" + value.JOBTYPE_ID + "\" data-num=\"" + value.NUM + "\" data-stid=\"" + value.ST_ID + "\" value=\"" + value.ST_ID + "\">" + value.ST_NAME + "</option>";
                                            valOptGroup = value.BR_ID;
                                        });
                                        $("#jobdescTab1SelectStaff").html(valData);
                                        $("#jobdescTab2SelectStaff").html(valData);
                                        $("#jobdescTab1SelectStaff").val(userId);
                                        $("#jobdescTab2SelectStaff").val(userId);
                                        jobdescTab1Bind();
                                        dataBindTab2Datas();
                                        if (funcCheckRoles('1')) {
                                            $('#jobdescTab1SelectGazar').prop('disabled', false);
                                            $('#jobdescTab2SelectGazar').prop('disabled', false);
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
    }

    function jobdescTab1Bind() {

        alert($('#jobdescTab1SelectStaff option:selected').attr('data-brid'));

        var valAjilUureg = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT DESCRIPTION FROM TBL_JOBCAPACITYNUM_STAFFS WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valAjilUureg = data.d;
                if ($('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') == "3") {
                    $('#jobdescTab1Lbl1').html($('#jobdescTab1SelectGazar option:selected').attr('title'));
                    $('#jobdesc_Tab1lbl1').html('ТӨРИЙН НАРИЙН БИЧГИЙН ДАРГЫН');
                    $('#jobdesc_Tab1lbl2').html('');
                    $('#jobdesc_Tab1lbl3').html('');
                    $('#jobdescTab1Lbl2').html(valAjilUureg);
                    $('#jobdescTab1Lbl3').html('Тэргүүн түшмэл');
                    $('#jobdescTab1Lbl4').html('ТЗ-14');
                    $('#jobdescTab1Lbl5').html('Сайд, дэд сайд');
                    $('#jobdescTab1Lbl7').html('Tөрийн өндөр');
                    $('#jobdescTab1Lbl6').html('ТӨ-4, ТӨ-6');
                    $('#jobdescTab1Lbl8').html('Өөрийн байгууллагын мэргэжилтнүүд');
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                        data: '{"qry":"SELECT ( SELECT SUM(MAXNUM) as CNT FROM ( SELECT a.BR_ID, MAX(a.NUM) as MAXNUM FROM TBL_JOBCAPACITYNUM a INNER JOIN TBL_JOBTYPE b ON a.JOBTYPE_ID=b.ID WHERE a.YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND a.JOBTYPE_ID=4 GROUP BY a.BR_ID ))||\'~\'||( SELECT SUM(MAXNUM) as CNT FROM ( SELECT a.BR_ID, MAX(a.NUM) as MAXNUM FROM TBL_JOBCAPACITYNUM a INNER JOIN TBL_JOBTYPE b ON a.JOBTYPE_ID=b.ID WHERE a.YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND a.JOBTYPE_ID=5 GROUP BY a.BR_ID ))||\'~\'||( SELECT SUM(MAXNUM) as CNT FROM ( SELECT a.BR_ID, MAX(a.NUM) as MAXNUM FROM TBL_JOBCAPACITYNUM a INNER JOIN TBL_JOBTYPE b ON a.JOBTYPE_ID=b.ID WHERE a.YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND a.JOBTYPE_ID=6 GROUP BY a.BR_ID ))||\'~\'||( SELECT SUM(MAXNUM) as CNT FROM ( SELECT a.BR_ID, MAX(a.NUM) as MAXNUM FROM TBL_JOBCAPACITYNUM a INNER JOIN TBL_JOBTYPE b ON a.JOBTYPE_ID=b.ID WHERE a.YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND a.JOBTYPE_ID=7 GROUP BY a.BR_ID ))||\'~\'||( SELECT SUM(MAXNUM) as CNT FROM ( SELECT a.BR_ID, MAX(a.NUM) as MAXNUM FROM TBL_JOBCAPACITYNUM a INNER JOIN TBL_JOBTYPE b ON a.JOBTYPE_ID=b.ID WHERE a.YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND a.JOBTYPE_ID=9 GROUP BY a.BR_ID )) as DATAS FROM DUAL"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            $('#jobdescTab1Lbl9').html('Газрын дарга: ' + data.d.split('~')[0] + '<br>');
                            $('#jobdescTab1Lbl9').append('Хэлтсийн дарга: ' + data.d.split('~')[1] + '<br>');
                            $('#jobdescTab1Lbl9').append('Ахлах мэргэжилтэн: ' + data.d.split('~')[2] + '<br>');
                            $('#jobdescTab1Lbl9').append('Мэргэжилтэн: ' + data.d.split('~')[3] + '<br>');
                            $('#jobdescTab1Lbl9').append('Бусад: ' + data.d.split('~')[4]);
                        },
                        failure: function (response) {
                            alert('FAILURE: ' + response.d);
                        },
                        error: function (xhr, status, error) {
                            window.location = '../#pg/error500.aspx';
                        }
                    });
                    $('#jobdescTab1Lbl10').html(strConvertUgtvar($('#jobdescTab1SelectGazar option:selected').attr('title')) + " дарга");
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                        data: '{"qry":"SELECT SUBSTR(LNAME,0,1)||\'.\'||SUBSTR(FNAME,1,1)||LOWER(SUBSTR(FNAME,2)) FROM hrdbuser.ST_STAFFS a INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE = 1 WHERE b.BRANCH_ID=' + $('#jobdescTab1SelectGazar option:selected').val() + ' AND b.POS_ID=10205"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            $('#jobdescTab1Lbl11').html(data.d);
                        },
                        failure: function (response) {
                            alert('FAILURE: ' + response.d);
                        },
                        error: function (xhr, status, error) {
                            window.location = '../#pg/error500.aspx';
                        }
                    });
                }
                else if ($('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') == "4") {
                    $('#jobdescTab1Lbl1').html($('#jobdescTab1SelectGazar option:selected').attr('title'));
                    $('#jobdesc_Tab1lbl1').html(strConvertUgtvar($('#jobdescTab1SelectGazar option:selected').attr('title')).replace("дарга", "") + " ДАРГЫН");
                    $('#jobdesc_Tab1lbl2').html('');
                    $('#jobdesc_Tab1lbl3').html('');
                    $('#jobdescTab1Lbl2').html(valAjilUureg);
                    $('#jobdescTab1Lbl3').html('Эрхэлсэн түшмэл');
                    $('#jobdescTab1Lbl4').html('ТЗ-12');
                    $('#jobdescTab1Lbl5').html('Сайд, Дэд сайд, Төрийн нарийн бичгийн дарга');
                    $('#jobdescTab1Lbl7').html('Төрийн өндөр, Төрийн өндөр, Тэргүүн түшмэл');
                    $('#jobdescTab1Lbl6').html('ТӨ-4, ТӨ-6, ТЗ-14');
                    $('#jobdescTab1Lbl8').html('Өөрийн удирдлагын газрын мэргэжилтнүүд');
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                        data: '{"qry":"SELECT ( SELECT SUM(MAXNUM) as CNT FROM ( SELECT a.BR_ID, MAX(a.NUM) as MAXNUM FROM TBL_JOBCAPACITYNUM a INNER JOIN TBL_JOBTYPE b ON a.JOBTYPE_ID=b.ID INNER JOIN TBL_BRANCH c ON a.BR_ID=c.BR_ID AND c.YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' WHERE a.YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND c.BR_MAIN_ID1=' + $('#jobdescTab1SelectGazar option:selected').val() + ' AND a.JOBTYPE_ID=5 GROUP BY a.BR_ID ))||\'~\'||( SELECT SUM(MAXNUM) as CNT FROM ( SELECT a.BR_ID, MAX(a.NUM) as MAXNUM FROM TBL_JOBCAPACITYNUM a INNER JOIN TBL_JOBTYPE b ON a.JOBTYPE_ID=b.ID INNER JOIN TBL_BRANCH c ON a.BR_ID=c.BR_ID AND c.YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' WHERE a.YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND c.BR_MAIN_ID1=' + $('#jobdescTab1SelectGazar option:selected').val() + ' AND a.JOBTYPE_ID=6 GROUP BY a.BR_ID ))||\'~\'||( SELECT SUM(MAXNUM) as CNT FROM ( SELECT a.BR_ID, MAX(a.NUM) as MAXNUM FROM TBL_JOBCAPACITYNUM a INNER JOIN TBL_JOBTYPE b ON a.JOBTYPE_ID=b.ID INNER JOIN TBL_BRANCH c ON a.BR_ID=c.BR_ID AND c.YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' WHERE a.YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND c.BR_MAIN_ID1=' + $('#jobdescTab1SelectGazar option:selected').val() + ' AND a.JOBTYPE_ID=7 GROUP BY a.BR_ID ))||\'~\'||( SELECT SUM(MAXNUM) as CNT FROM ( SELECT a.BR_ID, MAX(a.NUM) as MAXNUM FROM TBL_JOBCAPACITYNUM a INNER JOIN TBL_JOBTYPE b ON a.JOBTYPE_ID=b.ID INNER JOIN TBL_BRANCH c ON a.BR_ID=c.BR_ID AND c.YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' WHERE a.YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND c.BR_MAIN_ID1=' + $('#jobdescTab1SelectGazar option:selected').val() + ' AND a.JOBTYPE_ID=9 GROUP BY a.BR_ID )) as DATAS FROM DUAL"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            $('#jobdescTab1Lbl9').html('Хэлтсийн дарга: ' + data.d.split('~')[0] + '<br>');
                            $('#jobdescTab1Lbl9').append('Ахлах мэргэжилтэн: ' + data.d.split('~')[1] + '<br>');
                            $('#jobdescTab1Lbl9').append('Мэргэжилтэн: ' + data.d.split('~')[2] + '<br>');
                            $('#jobdescTab1Lbl9').append('Бусад: ' + data.d.split('~')[3]);
                        },
                        failure: function (response) {
                            alert('FAILURE: ' + response.d);
                        },
                        error: function (xhr, status, error) {
                            window.location = '../#pg/error500.aspx';
                        }
                    });
                    $('#jobdescTab1Lbl10').html(strConvertUgtvar($('#jobdescTab1SelectGazar option:selected').attr('title')) + " дарга");
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                        data: '{"qry":"SELECT SUBSTR(LNAME,0,1)||\'.\'||SUBSTR(FNAME,1,1)||LOWER(SUBSTR(FNAME,2)) FROM hrdbuser.ST_STAFFS a INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE = 1 WHERE b.BRANCH_ID=' + $('#jobdescTab1SelectGazar option:selected').val() + ' AND b.POS_ID=2010201"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            $('#jobdescTab1Lbl11').html(data.d);
                        },
                        failure: function (response) {
                            alert('FAILURE: ' + response.d);
                        },
                        error: function (xhr, status, error) {
                            window.location = '../#pg/error500.aspx';
                        }
                    });
                }
                else if ($('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') == "5") {
                    if ($('#jobdescTab1SelectGazar option:selected').val() == $('#jobdescTab1SelectHeltes option:selected').val()) $('#jobdescTab1Lbl1').html($('#jobdescTab1SelectGazar option:selected').attr('title'));
                    else $('#jobdescTab1Lbl1').html($('#jobdescTab1SelectGazar option:selected').attr('title') + ' - ' + $('#jobdescTab1SelectHeltes option:selected').attr('title'));
                    if ($('#jobdescTab1SelectGazar option:selected').val() == $('#jobdescTab1SelectHeltes option:selected').val()) {
                        $('#jobdesc_Tab1lbl1').html(strConvertUgtvar($('#jobdescTab1SelectGazar option:selected').attr('title')).replace("дарга", "") + " ХЭЛТСИЙН ДАРГЫН");
                    }
                    else {
                        $('#jobdesc_Tab1lbl1').html(strConvertUgtvar($('#jobdescTab1SelectGazar option:selected').attr('title')) + " " + strConvertUgtvar($('#jobdescTab1SelectHeltes option:selected').attr('title')) + " ДАРГЫН");
                    }
                    $('#jobdesc_Tab1lbl2').html('');
                    $('#jobdesc_Tab1lbl3').html('');
                    $('#jobdescTab1Lbl2').html(valAjilUureg);
                    $('#jobdescTab1Lbl3').html('Эрхэлсэн түшмэл');
                    $('#jobdescTab1Lbl4').html('ТЗ-10');
                    $('#jobdescTab1Lbl5').html(strConvertUgtvar($('#jobdescTab1SelectGazar option:selected').attr('title')) + ' дарга');
                    $('#jobdescTab1Lbl7').html('Эрхэлсэн түшмэл');
                    $('#jobdescTab1Lbl6').html('ТЗ-12');
                    $('#jobdescTab1Lbl8').html('Өөрийн удирдлагын хэлтсийн мэргэжилтнүүд');
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                        data: '{"qry":"SELECT ( SELECT SUM(MAXNUM) as CNT FROM ( SELECT a.BR_ID, MAX(a.NUM) as MAXNUM FROM TBL_JOBCAPACITYNUM a INNER JOIN TBL_JOBTYPE b ON a.JOBTYPE_ID=b.ID INNER JOIN TBL_BRANCH c ON a.BR_ID=c.BR_ID AND c.YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' WHERE a.YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND c.BR_ID=' + $('#jobdescTab1SelectHeltes option:selected').val() + ' AND a.JOBTYPE_ID=6 GROUP BY a.BR_ID ))||\'~\'||( SELECT SUM(MAXNUM) as CNT FROM ( SELECT a.BR_ID, MAX(a.NUM) as MAXNUM FROM TBL_JOBCAPACITYNUM a INNER JOIN TBL_JOBTYPE b ON a.JOBTYPE_ID=b.ID INNER JOIN TBL_BRANCH c ON a.BR_ID=c.BR_ID AND c.YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' WHERE a.YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND c.BR_ID=' + $('#jobdescTab1SelectHeltes option:selected').val() + ' AND a.JOBTYPE_ID=7 GROUP BY a.BR_ID ))||\'~\'||( SELECT SUM(MAXNUM) as CNT FROM ( SELECT a.BR_ID, MAX(a.NUM) as MAXNUM FROM TBL_JOBCAPACITYNUM a INNER JOIN TBL_JOBTYPE b ON a.JOBTYPE_ID=b.ID INNER JOIN TBL_BRANCH c ON a.BR_ID=c.BR_ID AND c.YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' WHERE a.YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND c.BR_ID=' + $('#jobdescTab1SelectHeltes option:selected').val() + ' AND a.JOBTYPE_ID=9 GROUP BY a.BR_ID )) as DATAS FROM DUAL"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            $('#jobdescTab1Lbl9').html('Ахлах мэргэжилтэн: ' + data.d.split('~')[0] + '<br>');
                            $('#jobdescTab1Lbl9').append('Мэргэжилтэн: ' + data.d.split('~')[1] + '<br>');
                            $('#jobdescTab1Lbl9').append('Бусад: ' + data.d.split('~')[2]);
                        },
                        failure: function (response) {
                            alert('FAILURE: ' + response.d);
                        },
                        error: function (xhr, status, error) {
                            window.location = '../#pg/error500.aspx';
                        }
                    });
                    $('#jobdescTab1Lbl10').html(strConvertUgtvar($('#jobdescTab1SelectGazar option:selected').attr('title')) + " дарга");
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                        data: '{"qry":"SELECT SUBSTR(LNAME,0,1)||\'.\'||SUBSTR(FNAME,1,1)||LOWER(SUBSTR(FNAME,2)) FROM hrdbuser.ST_STAFFS a INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE = 1 WHERE b.BRANCH_ID=' + $('#jobdescTab1SelectGazar option:selected').val() + ' AND b.POS_ID=2010201"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            $('#jobdescTab1Lbl11').html(data.d);
                        },
                        failure: function (response) {
                            alert('FAILURE: ' + response.d);
                        },
                        error: function (xhr, status, error) {
                            window.location = '../#pg/error500.aspx';
                        }
                    });
                }
                else if ($('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') == "6") {
                    if ($('#jobdescTab1SelectGazar option:selected').val() == $('#jobdescTab1SelectHeltes option:selected').val()) $('#jobdescTab1Lbl1').html($('#jobdescTab1SelectGazar option:selected').attr('title'));
                    else $('#jobdescTab1Lbl1').html($('#jobdescTab1SelectGazar option:selected').attr('title') + ' - ' + $('#jobdescTab1SelectHeltes option:selected').attr('title'));
                    if ($('#jobdescTab1SelectGazar option:selected').val() == $('#jobdescTab1SelectHeltes option:selected').val()) {
                        $('#jobdesc_Tab1lbl1').html(strConvertUgtvar($('#jobdescTab1SelectGazar option:selected').attr('title')));
                        $('#jobdescTab1Lbl5').html(strConvertUgtvar($('#jobdescTab1SelectGazar option:selected').attr('title')) + ' дарга');
                    }
                    else {
                        $('#jobdesc_Tab1lbl1').html(strConvertUgtvar($('#jobdescTab1SelectGazar option:selected').attr('title')) + " " + strConvertUgtvar($('#jobdescTab1SelectHeltes option:selected').attr('title')));
                        $('#jobdescTab1Lbl5').html(strConvertUgtvar($('#jobdescTab1SelectGazar option:selected').attr('title')) + ' дарга, ' + strConvertUgtvar($('#jobdescTab1SelectHeltes option:selected').attr('title')) + ' дарга');
                    }
                    $('#jobdesc_Tab1lbl2').html(valAjilUureg);
                    $('#jobdesc_Tab1lbl3').html('');

                    $('#jobdescTab1Lbl2').html(valAjilUureg);
                    $('#jobdescTab1Lbl3').html('Ахлах түшмэл');
                    $('#jobdescTab1Lbl4').html('ТЗ-8');
                    $('#jobdescTab1Lbl6').html('Эрхэлсэн түшмэл, Эрхэлсэн түшмэл');
                    $('#jobdescTab1Lbl7').html('ТЗ-12, ТЗ-10');
                    $('#jobdescTab1Lbl8').html('');
                    $('#jobdescTab1Lbl9').html('');
                    $('#jobdescTab1Lbl10').html(strConvertUgtvar($('#jobdescTab1SelectGazar option:selected').attr('title')) + " дарга");
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                        data: '{"qry":"SELECT SUBSTR(LNAME,0,1)||\'.\'||SUBSTR(FNAME,1,1)||LOWER(SUBSTR(FNAME,2)) FROM hrdbuser.ST_STAFFS a INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE = 1 WHERE b.BRANCH_ID=' + $('#jobdescTab1SelectGazar option:selected').val() + ' AND b.POS_ID=2010201"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            $('#jobdescTab1Lbl11').html(data.d);
                        },
                        failure: function (response) {
                            alert('FAILURE: ' + response.d);
                        },
                        error: function (xhr, status, error) {
                            window.location = '../#pg/error500.aspx';
                        }
                    });
                }
                else if ($('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') == "7") {
                    if ($('#jobdescTab1SelectGazar option:selected').val() == $('#jobdescTab1SelectHeltes option:selected').val()) $('#jobdescTab1Lbl1').html($('#jobdescTab1SelectGazar option:selected').attr('title'));
                    else $('#jobdescTab1Lbl1').html($('#jobdescTab1SelectGazar option:selected').attr('title') + ' - ' + $('#jobdescTab1SelectHeltes option:selected').attr('title'));
                    if ($('#jobdescTab1SelectGazar option:selected').val() == $('#jobdescTab1SelectHeltes option:selected').val()) {
                        $('#jobdesc_Tab1lbl1').html(strConvertUgtvar($('#jobdescTab1SelectGazar option:selected').attr('title')));
                        $('#jobdescTab1Lbl5').html(strConvertUgtvar($('#jobdescTab1SelectGazar option:selected').attr('title')) + ' дарга');
                    }
                    else {
                        $('#jobdesc_Tab1lbl1').html(strConvertUgtvar($('#jobdescTab1SelectGazar option:selected').attr('title')) + " " + strConvertUgtvar($('#jobdescTab1SelectHeltes option:selected').attr('title')));
                        $('#jobdescTab1Lbl5').html(strConvertUgtvar($('#jobdescTab1SelectGazar option:selected').attr('title')) + ' дарга, ' + strConvertUgtvar($('#jobdescTab1SelectHeltes option:selected').attr('title')) + ' дарга');
                    }
                    $('#jobdesc_Tab1lbl2').html(valAjilUureg);
                    $('#jobdesc_Tab1lbl3').html('');

                    $('#jobdescTab1Lbl2').html(valAjilUureg);
                    $('#jobdescTab1Lbl3').html('Дэс түшмэл');
                    $('#jobdescTab1Lbl4').html('ТЗ-7');
                    $('#jobdescTab1Lbl6').html('Эрхэлсэн түшмэл, Эрхэлсэн түшмэл');
                    $('#jobdescTab1Lbl7').html('ТЗ-12, ТЗ-10');
                    $('#jobdescTab1Lbl8').html('');
                    $('#jobdescTab1Lbl9').html('');
                    $('#jobdescTab1Lbl10').html(strConvertUgtvar($('#jobdescTab1SelectGazar option:selected').attr('title')) + " дарга");
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                        data: '{"qry":"SELECT SUBSTR(LNAME,0,1)||\'.\'||SUBSTR(FNAME,1,1)||LOWER(SUBSTR(FNAME,2)) FROM hrdbuser.ST_STAFFS a INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE = 1 WHERE b.BRANCH_ID=' + $('#jobdescTab1SelectGazar option:selected').val() + ' AND b.POS_ID=2010201"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            $('#jobdescTab1Lbl11').html(data.d);
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
                    if ($('#jobdescTab1SelectGazar option:selected').val() == $('#jobdescTab1SelectHeltes option:selected').val()) $('#jobdescTab1Lbl1').html($('#jobdescTab1SelectGazar option:selected').attr('title'));
                    else $('#jobdescTab1Lbl1').html($('#jobdescTab1SelectGazar option:selected').attr('title') + ' - ' + $('#jobdescTab1SelectHeltes option:selected').attr('title'));
                    if ($('#jobdescTab1SelectGazar option:selected').val() == $('#jobdescTab1SelectHeltes option:selected').val()) {
                        $('#jobdesc_Tab1lbl1').html(strConvertUgtvar($('#jobdescTab1SelectGazar option:selected').attr('title')));
                        $('#jobdescTab1Lbl5').html(strConvertUgtvar($('#jobdescTab1SelectGazar option:selected').attr('title')) + ' дарга');
                    }
                    else {
                        $('#jobdesc_Tab1lbl1').html(strConvertUgtvar($('#jobdescTab1SelectGazar option:selected').attr('title')) + " " + strConvertUgtvar($('#jobdescTab1SelectHeltes option:selected').attr('title')));
                        $('#jobdescTab1Lbl5').html(strConvertUgtvar($('#jobdescTab1SelectGazar option:selected').attr('title')) + ' дарга, ' + strConvertUgtvar($('#jobdescTab1SelectHeltes option:selected').attr('title')) + ' дарга');
                    }
                    $('#jobdesc_Tab1lbl2').html(valAjilUureg);
                    $('#jobdesc_Tab1lbl3').html('');

                    $('#jobdescTab1Lbl2').html(valAjilUureg);
                    $('#jobdescTab1Lbl3').html('-');
                    $('#jobdescTab1Lbl4').html('-');
                    $('#jobdescTab1Lbl6').html('Эрхэлсэн түшмэл, Эрхэлсэн түшмэл');
                    $('#jobdescTab1Lbl7').html('ТЗ-12, ТЗ-10');
                    $('#jobdescTab1Lbl8').html('');
                    $('#jobdescTab1Lbl9').html('');
                    $('#jobdescTab1Lbl10').html(strConvertUgtvar($('#jobdescTab1SelectGazar option:selected').attr('title')) + " дарга");
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                        data: '{"qry":"SELECT SUBSTR(LNAME,0,1)||\'.\'||SUBSTR(FNAME,1,1)||LOWER(SUBSTR(FNAME,2)) FROM hrdbuser.ST_STAFFS a INNER JOIN hrdbuser.ST_STBR b ON a.ID=b.STAFFS_ID AND b.ISACTIVE = 1 WHERE b.BRANCH_ID=' + $('#jobdescTab1SelectGazar option:selected').val() + ' AND b.POS_ID=2010201"}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            $('#jobdescTab1Lbl11').html(data.d);
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
        dataBindTab1Datas();

        //
    }
    function strConvertUgtvar(value) {
        return value.replace("газар", "газрын").replace("хэлтэс", "хэлтсийн").replace("дарга", "даргын").replace("алба", "албын").replace("сайд", "сайдын");
    }
    function strConvertUgtvar2(value) {
        return value.replace("эрхлэгч", "эрхлэгчийн").replace("Мэргэжилтэн", "Мэргэжилтэний").replace("туслах", "туслахын").replace("ажилтан", "ажилтаны").replace("зөөгч", "зөөгчийн").replace("эрхлэгч", "эрхлэгчийн");
    }
    $("#jobdescTab1SelectYear").change(function () {
        jobdescTab1SetFirstControls();
    });
    $("#jobdescTab2SelectYear").change(function () {
        dataBindTab2Datas();
    });
    $("#jobdescTab1SelectGazar").change(function () {
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
            data: '{"yr":"' + $("#jobdescTab1SelectYear option:selected").val() + '", "gazar":"' + $("#jobdescTab1SelectGazar option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#jobdescTab1SelectHeltes").html(valData);
                $("#jobdescTab1SelectHeltes").prop('disabled',false);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/JobdescTab1SelectStaffListForDDL",
                    data: '{"yr":"' + $("#jobdescTab1SelectYear option:selected").val() + '", "gazar":"' + $("#jobdescTab1SelectGazar option:selected").val() + '", "heltes":"' + $("#jobdescTab1SelectHeltes option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valOptGroup = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            if (value.BR_ID != valOptGroup) {
                                if (valOptGroup != '') valData += '</optgroup>';
                                valData += '<optgroup label="' + value.NEGJNAME + '">';
                            }
                            valData += "<option data-brid=\"" + value.BR_ID + "\" data-jobtypeid=\"" + value.JOBTYPE_ID + "\" data-num=\"" + value.NUM + "\" data-stid=\"" + value.ST_ID + "\" value=\"" + value.ST_ID + "\">" + value.ST_NAME + "</option>";
                            valOptGroup = value.BR_ID;
                        });
                        $("#jobdescTab1SelectStaff").html(valData);
                        jobdescTab1Bind();
                        $("#jobdescTab1SelectStaff").prop('disabled', false);
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
    $("#jobdescTab1SelectHeltes").change(function () {
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/JobdescTab1SelectStaffListForDDL",
            data: '{"yr":"' + $("#jobdescTab1SelectYear option:selected").val() + '", "gazar":"' + $("#jobdescTab1SelectGazar option:selected").val() + '", "heltes":"' + $("#jobdescTab1SelectHeltes option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valOptGroup = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (value.BR_ID != valOptGroup) {
                        if (valOptGroup != '') valData += '</optgroup>';
                        valData += '<optgroup label="' + value.NEGJNAME + '">';
                    }
                    valData += "<option data-brid=\"" + value.BR_ID + "\" data-jobtypeid=\"" + value.JOBTYPE_ID + "\" data-num=\"" + value.NUM + "\" data-stid=\"" + value.ST_ID + "\" value=\"" + value.ST_ID + "\">" + value.ST_NAME + "</option>";
                    valOptGroup = value.BR_ID;
                });
                $("#jobdescTab1SelectStaff").html(valData);
                jobdescTab1Bind();
                $("#jobdescTab1SelectStaff").prop('disabled', false);
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    });
    $("#jobdescTab1SelectStaff").change(function () {
        jobdescTab1Bind();
    });
    $("#jobdescTab1InputSubmit").change(function () {
        if ($(this).is(":checked")) {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"SELECT COUNT(1) FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    if (data.d != '0') {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                            data: '{"qry":"UPDATE TBL_JOBDESC SET ISSUBMIT=1 WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function () {
                                smallBox('Ажлын байрны тодорхойлолт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
                            },
                            failure: function (response) {
                                alert('FAILURE: ' + response.d);
                            },
                            error: function (xhr, status, error) {
                                window.location = '../#pg/error500.aspx';
                            }
                        });
                    }
                    else alert('Ажлын байрны тодорхойлолтын мэдээлэл ороогүй тул батлах боломжгүй байна!');
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
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"SELECT COUNT(1) FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    if (data.d != '0') {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                            data: '{"qry":"UPDATE TBL_JOBDESC SET ISSUBMIT=null WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function () {
                                smallBox('Ажлын байрны тодорхойлолт', 'Амжилттай батлагдлаа...', '#659265', 3000);
                            },
                            failure: function (response) {
                                alert('FAILURE: ' + response.d);
                            },
                            error: function (xhr, status, error) {
                                window.location = '../#pg/error500.aspx';
                            }
                        });
                    }
                    else alert('Ажлын байрны тодорхойлолтын мэдээлэл ороогүй тул батлах боломжгүй байна!');
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
    //databind tab1
    function dataBindTab1Datas() {
        var valData = '';
        showLoader('loaderTab1');
        //globalAjaxVar = $.ajax({
        //    type: "POST",
        //    url: "../ws/ServiceMain.svc/JobdescTab1D2Datatable",
        //    data: '{"yr":"' + $('#jobdescTab1SelectYear option:selected').val() + '", "num":"' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + '", "brid":"' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + '", "jobtypeid":"' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
        //    contentType: "application/json; charset=utf-8",
        //    dataType: "json",
        //    success: function (data) {
        //    valData='';
        //    $($.parseJSON(data.d)).each(function (index, value) {
        //      valData='';
        //      valData += replaceDatabaseToDisplay(value.NAME) + '<br>';
        //    });
        //        $('#jobdesc_Tab1lblD2').html(valData);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/JobdescTab1ZoriltDatatable",
                    data: '{"yr":"' + $('#jobdescTab1SelectYear option:selected').val() + '", "num":"' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + '", "brid":"' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + '", "jobtypeid":"' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<tr>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; vertical-align:top; text-align:justify;\"><b>Зорилт-" + value.ROWNO + ": </b> " + replaceDatabaseToDisplay(value.ZORILT_D3) + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; vertical-align:top; text-align:justify;\">" + replaceDatabaseToDisplay(value.CRITERIA_D4) + "</td>";
                            valData += "</tr>";
                        });
                        if (valData == '') valData = "<tr><td style=\"border: 1px solid #000; padding:5px; vertical-align:top; text-align:justify;\"><ol><li>...</li><li>...</li><li>...</li><li>...</li></ol></td><td style=\"border: 1px solid #000; padding:5px; vertical-align:top; text-align:justify;\"><ol><li>...</li><li>...</li><li>...</li><li>...</li></ol></td></tr>";
                        $('#jobdesc_Tab1lblD3D4').html(valData);
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/JobdescTab1WorkDatatable",
                            data: '{"yr":"' + $('#jobdescTab1SelectYear option:selected').val() + '", "num":"' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + '", "brid":"' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + '", "jobtypeid":"' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                valData = '';
                                var strVal1 = "";
                                var strVal2 = "";
                                var strZorilt = "";
                                var i = 1;
                                $($.parseJSON(data.d)).each(function (index, value) {
                                    if (strZorilt != "") {
                                        if (strZorilt != value.JOBDESC_LAWZORILT_ID) {
                                            i++;
                                            if (valData != "") {
                                                valData += "<tr>";
                                                valData += "<td style=\"border: 1px solid #000; padding:5px; vertical-align:top; text-align:justify;\">" + strVal1 + "</td>";
                                                valData += "<td style=\"border: 1px solid #000; padding:5px; vertical-align:top; text-align:center;\">" + strVal2 + "</td>";
                                                valData += "</tr>";
                                                strVal1 = "";
                                                strVal2 = "";
                                            }
                                            valData += "<tr>";
                                            valData += "<td colspan=\"2\" style=\"border: 1px solid #000; padding:5px; font-style:italic; text-align:center;\">Ажлын байрны үндсэн зорилт " + i + "-н хүрээнд</td>";
                                            valData += "</tr>";
                                            strVal1 += replaceDatabaseToDisplay(value.WORK_D5) + "<br/>";
                                            strVal2 += replaceDatabaseToDisplay(value.TM_D6) + "<br/>";
                                        }
                                        else {
                                            strVal1 += replaceDatabaseToDisplay(value.WORK_D5) + "<br/>";
                                            strVal2 += replaceDatabaseToDisplay(value.TM_D6) + "<br/>";
                                        }
                                    }
                                    else {
                                        valData += "<tr>";
                                        valData += "<td colspan=\"2\" style=\"border: 1px solid #000; padding:5px; font-style:italic; text-align:center;\">Ажлын байрны үндсэн зорилт " + i + "-н хүрээнд</td>";
                                        valData += "</tr>";
                                        strVal1 += replaceDatabaseToDisplay(value.WORK_D5) + "<br/>";
                                        strVal2 += replaceDatabaseToDisplay(value.TM_D6) + "<br/>";
                                    }
                                    strZorilt = value.JOBDESC_LAWZORILT_ID;
                                });
                                $('#jobdesc_Tab1lblD5D6').html(valData);
                                if (strVal1 != '' && strVal2 != '') {
                                    valData += "<tr>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; vertical-align:top; text-align:justify;\">" + strVal1 + "</td>";
                                    valData += "<td style=\"border: 1px solid #000; padding:5px; vertical-align:top; text-align:center;\">" + strVal2 + "</td>";
                                    valData += "</tr>";
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
        //    },
        //    failure: function (response) {
        //        alert('FAILURE: ' + response.d);
        //    },
        //    error: function (xhr, status, error) {
        //        window.location = '../#pg/error500.aspx';
        //    }
        //});
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT D2 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $('#jobdesc_Tab1lblD2').html(replaceDatabaseToDisplay(data.d));                            
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
            data: '{"qry":"SELECT D7 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if ($.trim(data.d) == '') $('#jobdesc_Tab1lblD7').html('Дээд боловсролын баклавр болон түүнээс дээш');
                else $('#jobdesc_Tab1lblD7').html(replaceDatabaseToDisplay(data.d));
                //$('#jobdesc_Tab1lblD7').html(replaceDatabaseToDisplay(data.d));
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                    data: '{"qry":"SELECT D8 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        $('#jobdesc_Tab1lblD8').html(replaceDatabaseToDisplay(data.d));
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                            data: '{"qry":"SELECT D9 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                if ($.trim(data.d) == '') $('#jobdesc_Tab1lblD9').html('Санхүү эдийн засаг, Нягтлан бодогч, Хуульч, МТ инжинер, Бизнесийн удирдлага, Гадаад харилцааа');
                                else $('#jobdesc_Tab1lblD9').html(replaceDatabaseToDisplay(data.d));
                                //$('#jobdesc_Tab1lblD9').html(replaceDatabaseToDisplay(data.d));
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                    data: '{"qry":"SELECT D10 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (data) {
                                        $('#jobdesc_Tab1lblD10').html(replaceDatabaseToDisplay(data.d));
                                        globalAjaxVar = $.ajax({
                                            type: "POST",
                                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                            data: '{"qry":"SELECT D11 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function (data) {
                                                if ($.trim(data.d) == '') $('#jobdesc_Tab1lblD11').html($('#jobdescTab1SelectHeltes option:selected').attr('title').replace('хэлтэс', '').replace('газар', '') + 'чиглэлээр мэргэшсэн байх');
                                                else $('#jobdesc_Tab1lblD11').html(replaceDatabaseToDisplay(data.d));
                                                //$('#jobdesc_Tab1lblD11').html(replaceDatabaseToDisplay(data.d));
                                                globalAjaxVar = $.ajax({
                                                    type: "POST",
                                                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                    data: '{"qry":"SELECT D12 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                    contentType: "application/json; charset=utf-8",
                                                    dataType: "json",
                                                    success: function (data) {
                                                        $('#jobdesc_Tab1lblD12').html(replaceDatabaseToDisplay(data.d));
                                                        globalAjaxVar = $.ajax({
                                                            type: "POST",
                                                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                            data: '{"qry":"SELECT D13 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                            contentType: "application/json; charset=utf-8",
                                                            dataType: "json",
                                                            success: function (data) {
                                                                $('#jobdesc_Tab1lblD13').html(replaceDatabaseToDisplay(data.d));
                                                                globalAjaxVar = $.ajax({
                                                                    type: "POST",
                                                                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                    data: '{"qry":"SELECT D14 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                    contentType: "application/json; charset=utf-8",
                                                                    dataType: "json",
                                                                    success: function (data) {
                                                                        $('#jobdesc_Tab1lblD14').html(replaceDatabaseToDisplay(data.d));
                                                                        globalAjaxVar = $.ajax({
                                                                            type: "POST",
                                                                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                            data: '{"qry":"SELECT D15 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                            contentType: "application/json; charset=utf-8",
                                                                            dataType: "json",
                                                                            success: function (data) {
                                                                                $('#jobdesc_Tab1lblD15').html(replaceDatabaseToDisplay(data.d));
                                                                                globalAjaxVar = $.ajax({
                                                                                    type: "POST",
                                                                                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                    data: '{"qry":"SELECT D16 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                    contentType: "application/json; charset=utf-8",
                                                                                    dataType: "json",
                                                                                    success: function (data) {
                                                                                        $('#jobdesc_Tab1lblD16').html(replaceDatabaseToDisplay(data.d));
                                                                                        globalAjaxVar = $.ajax({
                                                                                            type: "POST",
                                                                                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                            data: '{"qry":"SELECT D17 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                            contentType: "application/json; charset=utf-8",
                                                                                            dataType: "json",
                                                                                            success: function (data) {
                                                                                                $('#jobdesc_Tab1lblD17').html(replaceDatabaseToDisplay(data.d));
                                                                                                globalAjaxVar = $.ajax({
                                                                                                    type: "POST",
                                                                                                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                                    data: '{"qry":"SELECT D18 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                                    contentType: "application/json; charset=utf-8",
                                                                                                    dataType: "json",
                                                                                                    success: function (data) {
                                                                                                        $('#jobdesc_Tab1lblD18').html(replaceDatabaseToDisplay(data.d));
                                                                                                        globalAjaxVar = $.ajax({
                                                                                                            type: "POST",
                                                                                                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                                            data: '{"qry":"SELECT D19 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                                            contentType: "application/json; charset=utf-8",
                                                                                                            dataType: "json",
                                                                                                            success: function (data) {
                                                                                                                if ($.trim(data.d) == '') {
                                                                                                                    var val01 = 'Байгууллагын бүтцийн нэгжүүд үүнд:<br><ul>';
                                                                                                                    $('#jobdescTab1SelectGazar > option').each(function () {
                                                                                                                        val01 += '<li>' + $(this).attr('title') + '</li>';
                                                                                                                    });
                                                                                                                    val01 += '</ul>';
                                                                                                                    $('#jobdesc_Tab1lblD19').html(val01);
                                                                                                                }
                                                                                                                else $('#jobdesc_Tab1lblD19').html(replaceDatabaseToDisplay(data.d).replace(/&/g, ''));
                                                                                                                globalAjaxVar = $.ajax({
                                                                                                                    type: "POST",
                                                                                                                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                                                    data: '{"qry":"SELECT D20 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                                                    contentType: "application/json; charset=utf-8",
                                                                                                                    dataType: "json",
                                                                                                                    success: function (data) {
                                                                                                                        if ($.trim(data.d) == '') $('#jobdesc_Tab1lblD20').html('1. УИХ, ЗГ болон бусад Төсвийн ерөнхийлөн захирагч, Төсвийн төвлөрүүлсэн, Төсвийн шууд захирагчид, Төрийн болон орон нутгийн өмчит байгууллагууд<br>2. Дэлхийн банк, Олон улсын валют сан, Олон улсын банк санхүүгийн байгууллагууд.<br>3.Үндсэн хуулийн цэц, УИХ-д ажлаа тайлагнадаг бусад байгууллага, бүх шатны шүүх, прокурорын болон НӨУБ, ТЗТБ, НЗБ, ТББ, төрийн өмчийн болон төрийн өмчийн оролцоот ой аж ахуйн нэгж, хувийн хэвшлийн байгууллага, иргэн, гадаад орон, олон улсын байгууллага, /Эдгээртэй харилцахдаа Яамны эрх зүйн байдлын тухай хуулийн холбогдох заалтыг баримтлана/');
                                                                                                                        else $('#jobdesc_Tab1lblD20').html(replaceDatabaseToDisplay(data.d));
                                                                                                                        //$('#jobdesc_Tab1lblD20').html(replaceDatabaseToDisplay(data.d));
                                                                                                                        globalAjaxVar = $.ajax({
                                                                                                                            type: "POST",
                                                                                                                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                                                            data: '{"qry":"SELECT D21 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                                                            contentType: "application/json; charset=utf-8",
                                                                                                                            dataType: "json",
                                                                                                                            success: function (data) {
                                                                                                                                if ($.trim(data.d) == '') {
                                                                                                                                    if ($('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') == '3') {
                                                                                                                                        $('#jobdesc_Tab1lblD21').html('Төрийн нарийн бичгийн дарга нь яамны аппаратын ажлын үр дүнг сайдын өмнө хариуцна. (Яамны эрх зүйн тухай хууль 9.5.)');
                                                                                                                                    }
                                                                                                                                    else if ($('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') == '4' || $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') == '5') {
                                                                                                                                        $('#jobdesc_Tab1lblD21').html('Нэгжийнхээ өдөр тутмын үйл ажиллагааг удирдан зохион байгуулж, үр дүнг Төрийн нарийн бичгийн даргын өмнө хариуцах. (Яамны эрх зүйн тухай хууль 11.2.1.)');
                                                                                                                                    }
                                                                                                                                    else {
                                                                                                                                        $('#jobdesc_Tab1lblD21').html('Mergejilten, Gereet, Busadiig Suhee darga helj ugnu.');
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                else $('#jobdesc_Tab1lblD21').html(replaceDatabaseToDisplay(data.d));
                                                                                                                                globalAjaxVar = $.ajax({
                                                                                                                                    type: "POST",
                                                                                                                                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                                                                    data: '{"qry":"SELECT D22 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                                                                    contentType: "application/json; charset=utf-8",
                                                                                                                                    dataType: "json",
                                                                                                                                    success: function (data) {
                                                                                                                                        if ($.trim(data.d) == '') $('#jobdesc_Tab1lblD22').html('Цалин хөлс нь ' + $('#jobdescTab1Lbl4').text() + ' зэрэглэлээр Засгийн газрын хүчин төгөлдөр эрхийн актаар тогтоогдсон албан тушаалын цалин, төрийн албан хаасан хугацааны, зэрэг дэвийн нэмэгдлүүдээс бүрдэнэ');
                                                                                                                                        else $('#jobdesc_Tab1lblD22').html(replaceDatabaseToDisplay(data.d));
                                                                                                                                        //$('#jobdesc_Tab1lblD22').html(replaceDatabaseToDisplay(data.d));
                                                                                                                                        globalAjaxVar = $.ajax({
                                                                                                                                            type: "POST",
                                                                                                                                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                                                                            data: '{"qry":"SELECT D23 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                                                                            contentType: "application/json; charset=utf-8",
                                                                                                                                            dataType: "json",
                                                                                                                                            success: function (data) {
                                                                                                                                                if ($.trim(data.d) == '') $('#jobdesc_Tab1lblD23').html('Сандал, ширээ, компьютер, тоног төхөөрөмж, харилцуур утас');
                                                                                                                                                else $('#jobdesc_Tab1lblD23').html(replaceDatabaseToDisplay(data.d));
                                                                                                                                                //$('#jobdesc_Tab1lblD23').html(replaceDatabaseToDisplay(data.d));
                                                                                                                                                globalAjaxVar = $.ajax({
                                                                                                                                                    type: "POST",
                                                                                                                                                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                                                                                    data: '{"qry":"SELECT D24 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                                                                                    contentType: "application/json; charset=utf-8",
                                                                                                                                                    dataType: "json",
                                                                                                                                                    success: function (data) {
                                                                                                                                                        if ($.trim(data.d) == '') $('#jobdesc_Tab1lblD24').html($('#jobdescTab1Lbl9').html().replace(/<br>/g, '; ').replace(/: /g, '-'));
                                                                                                                                                        else $('#jobdesc_Tab1lblD24').html(replaceDatabaseToDisplay(data.d));
                                                                                                                                                        //$('#jobdesc_Tab1lblD24').html(replaceDatabaseToDisplay(data.d));
                                                                                                                                                        globalAjaxVar = $.ajax({
                                                                                                                                                            type: "POST",
                                                                                                                                                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                                                                                            data: '{"qry":"SELECT D25 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                                                                                            contentType: "application/json; charset=utf-8",
                                                                                                                                                            dataType: "json",
                                                                                                                                                            success: function (data) {
                                                                                                                                                                $('#jobdesc_Tab1lblD25').html(replaceDatabaseToDisplay(data.d));
                                                                                                                                                                globalAjaxVar = $.ajax({
                                                                                                                                                                    type: "POST",
                                                                                                                                                                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                                                                                                    data: '{"qry":"SELECT D26 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                                                                                                    contentType: "application/json; charset=utf-8",
                                                                                                                                                                    dataType: "json",
                                                                                                                                                                    success: function (data) {
                                                                                                                                                                        if ($.trim(data.d) == '') $('#jobdesc_Tab1lblD26').html('Ажлын хэвийн орчин, нөхцөл шаардлагатай');
                                                                                                                                                                        else $('#jobdesc_Tab1lblD26').html(replaceDatabaseToDisplay(data.d));
                                                                                                                                                                        //$('#jobdesc_Tab1lblD26').html(replaceDatabaseToDisplay(data.d));
                                                                                                                                                                        globalAjaxVar = $.ajax({
                                                                                                                                                                            type: "POST",
                                                                                                                                                                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                                                                                                            data: '{"qry":"SELECT D27 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab1SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab1SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                                                                                                            contentType: "application/json; charset=utf-8",
                                                                                                                                                                            dataType: "json",
                                                                                                                                                                            success: function (data) {
                                                                                                                                                                                $('#jobdesc_Tab1lblD27').html(replaceDatabaseToDisplay(data.d));
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
    }
    //databind tab2
    function dataBindTab2Datas() {
        showLoader('loaderTab2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT D2 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                CKEDITOR.instances.jobdescTab2D2.setData(replaceDatabaseToDisplay(data.d).replace(/&/g, ''));
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                    data: '{"qry":"SELECT D7 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        if ($.trim(data.d) == '') $('#jobdescTab2D7').html('Дээд боловсролын баклавр болон түүнээс дээш');
                        else $('#jobdescTab2D7').html(replaceDatabaseToDisplay(data.d));
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                            data: '{"qry":"SELECT D8 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                $('#jobdescTab2D8').val(replaceDatabaseToDisplay(data.d));
                                globalAjaxVar = $.ajax({
                                    type: "POST",
                                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                    data: '{"qry":"SELECT D9 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (data) {
                                        if ($.trim(data.d) == '') $('#jobdescTab2D9').val('Санхүү эдийн засаг, Нягтлан бодогч, Хуульч, МТ инжинер, Бизнесийн удирдлага, Гадаад харилцааа');
                                        else $('#jobdescTab2D9').val(replaceDatabaseToDisplay(data.d));
                                        //$('#jobdescTab2D9').val(replaceDatabaseToDisplay(data.d));
                                        globalAjaxVar = $.ajax({
                                            type: "POST",
                                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                            data: '{"qry":"SELECT D10 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function (data) {
                                                $('#jobdescTab2D10').val(replaceDatabaseToDisplay(data.d));
                                                globalAjaxVar = $.ajax({
                                                    type: "POST",
                                                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                    data: '{"qry":"SELECT D11 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                    contentType: "application/json; charset=utf-8",
                                                    dataType: "json",
                                                    success: function (data) {
                                                        if ($.trim(data.d) == '') $('#jobdescTab2D11').val($('#jobdescTab2SelectHeltes option:selected').attr('title').replace('хэлтэс', '').replace('газар', '') + 'чиглэлээр мэргэшсэн байх');
                                                        else $('#jobdescTab2D11').val(replaceDatabaseToDisplay(data.d));
                                                        //$('#jobdescTab2D11').val(replaceDatabaseToDisplay(data.d));
                                                        globalAjaxVar = $.ajax({
                                                            type: "POST",
                                                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                            data: '{"qry":"SELECT D12 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                            contentType: "application/json; charset=utf-8",
                                                            dataType: "json",
                                                            success: function (data) {
                                                                $('#jobdescTab2D12').val(replaceDatabaseToDisplay(data.d));
                                                                globalAjaxVar = $.ajax({
                                                                    type: "POST",
                                                                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                    data: '{"qry":"SELECT D13 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                    contentType: "application/json; charset=utf-8",
                                                                    dataType: "json",
                                                                    success: function (data) {
                                                                        $('#jobdescTab2D13').val(replaceDatabaseToDisplay(data.d));
                                                                        globalAjaxVar = $.ajax({
                                                                            type: "POST",
                                                                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                            data: '{"qry":"SELECT D14 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                            contentType: "application/json; charset=utf-8",
                                                                            dataType: "json",
                                                                            success: function (data) {
                                                                                $('#jobdescTab2D14').val(replaceDatabaseToDisplay(data.d));
                                                                                globalAjaxVar = $.ajax({
                                                                                    type: "POST",
                                                                                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                    data: '{"qry":"SELECT D15 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                    contentType: "application/json; charset=utf-8",
                                                                                    dataType: "json",
                                                                                    success: function (data) {
                                                                                        CKEDITOR.instances.jobdescTab2D15.setData(replaceDatabaseToDisplay(data.d));
                                                                                        globalAjaxVar = $.ajax({
                                                                                            type: "POST",
                                                                                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                            data: '{"qry":"SELECT D16 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                            contentType: "application/json; charset=utf-8",
                                                                                            dataType: "json",
                                                                                            success: function (data) {
                                                                                                CKEDITOR.instances.jobdescTab2D16.setData(replaceDatabaseToDisplay(data.d));
                                                                                                globalAjaxVar = $.ajax({
                                                                                                    type: "POST",
                                                                                                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                                    data: '{"qry":"SELECT D17 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                                    contentType: "application/json; charset=utf-8",
                                                                                                    dataType: "json",
                                                                                                    success: function (data) {
                                                                                                        CKEDITOR.instances.jobdescTab2D17.setData(replaceDatabaseToDisplay(data.d));
                                                                                                        globalAjaxVar = $.ajax({
                                                                                                            type: "POST",
                                                                                                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                                            data: '{"qry":"SELECT D18 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                                            contentType: "application/json; charset=utf-8",
                                                                                                            dataType: "json",
                                                                                                            success: function (data) {
                                                                                                                CKEDITOR.instances.jobdescTab2D18.setData(replaceDatabaseToDisplay(data.d));
                                                                                                                globalAjaxVar = $.ajax({
                                                                                                                    type: "POST",
                                                                                                                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                                                    data: '{"qry":"SELECT D19 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                                                    //data: '{"qry":"SELECT D19 FROM TBL_JOBDESC WHERE ST_ID=' + $('#jobdescTab2SelectStaff option:selected').val() + ' AND YR=' + $('#jobdescTab2SelectYear option:selected').val() + '"}',
                                                                                                                    contentType: "application/json; charset=utf-8",
                                                                                                                    dataType: "json",
                                                                                                                    success: function (data) {
                                                                                                                        if ($.trim(data.d) == '') {
                                                                                                                            var val01 = 'Байгууллагын бүтцийн нэгжүүд үүнд:<br><ul>';
                                                                                                                            $('#jobdescTab2SelectGazar > option').each(function () {
                                                                                                                                val01 += '<li>' + $(this).attr('title') + '</li>';
                                                                                                                            });
                                                                                                                            val01 += '</ul>';
                                                                                                                            CKEDITOR.instances.jobdescTab2D19.setData(val01);
                                                                                                                        }
                                                                                                                        else CKEDITOR.instances.jobdescTab2D19.setData(replaceDatabaseToDisplay(data.d).replace(/&/g, ''));
                                                                                                                        globalAjaxVar = $.ajax({
                                                                                                                            type: "POST",
                                                                                                                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                                                            data: '{"qry":"SELECT D20 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                                                            contentType: "application/json; charset=utf-8",
                                                                                                                            dataType: "json",
                                                                                                                            success: function (data) {
                                                                                                                                if ($.trim(data.d) == '') CKEDITOR.instances.jobdescTab2D20.setData('1. УИХ, ЗГ болон бусад Төсвийн ерөнхийлөн захирагч, Төсвийн төвлөрүүлсэ, Төсвийн шууд захирагчид, Төрийн болон орон нутгийн өмчит байгууллагууд<br>2. Дэлхийн банк, Олон улсын валют сан, Олон улсын банк санхүүгийн байгууллагууд.<br>3.Үндсэн хуулийн цэц, УИХ-д ажлаа тайлагнадаг бусад байгууллага, бүх шатны шүүх, прокурорын болон НӨУБ, ТЗТБ, НЗБ, ТББ, төрийн өмчийн болон төрийн өмчийн оролцоот ой аж ахуйн нэгж, хувийн хэвшлийн байгууллага, иргэн, гадаад орон, олон улсын байгууллага, /Эдгээртэй харилцахдаа Яамны эрх зүйн байдлын тухай хуулийн холбогдох заалтыг баримтлана/');
                                                                                                                                else CKEDITOR.instances.jobdescTab2D20.setData(replaceDatabaseToDisplay(data.d));
                                                                                                                                //CKEDITOR.instances.jobdescTab2D20.setData(replaceDatabaseToDisplay(data.d));
                                                                                                                                globalAjaxVar = $.ajax({
                                                                                                                                    type: "POST",
                                                                                                                                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                                                                    data: '{"qry":"SELECT D21 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                                                                    contentType: "application/json; charset=utf-8",
                                                                                                                                    dataType: "json",
                                                                                                                                    success: function (data) {
                                                                                                                                        if ($.trim(data.d) == '') {
                                                                                                                                            if ($('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') == '3') {
                                                                                                                                                CKEDITOR.instances.jobdescTab2D21.setData('Төрийн нарийн бичгийн дарга нь яамны аппаратын ажлын үр дүнг сайдын өмнө хариуцна. (Яамны эрх зүйн тухай хууль 9.5.)');
                                                                                                                                            }
                                                                                                                                            else if ($('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') == '4' || $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') == '5') {
                                                                                                                                                CKEDITOR.instances.jobdescTab2D21.setData('Нэгжийнхээ өдөр тутмын үйл ажиллагааг удирдан зохион байгуулж, үр дүнг Төрийн нарийн бичгийн даргын өмнө хариуцах. (Яамны эрх зүйн тухай хууль 9.5.)');
                                                                                                                                            }
                                                                                                                                            else {
                                                                                                                                                CKEDITOR.instances.jobdescTab2D21.setData('...');
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        else CKEDITOR.instances.jobdescTab2D21.setData(replaceDatabaseToDisplay(data.d));
                                                                                                                                        globalAjaxVar = $.ajax({
                                                                                                                                            type: "POST",
                                                                                                                                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                                                                            data: '{"qry":"SELECT D22 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                                                                            contentType: "application/json; charset=utf-8",
                                                                                                                                            dataType: "json",
                                                                                                                                            success: function (data) {
                                                                                                                                                if ($.trim(data.d) == '') CKEDITOR.instances.jobdescTab2D22.setData('Цалин хөлс нь ' + $('#jobdescTab2Lbl4').text() + ' зэрэглэлээр Засгийн газрын хүчин төгөлдөр эрхийн актаар тогтоогдсон албан тушаалын цалин, төрийн албан хаасан хугацааны, зэрэг дэвийн нэмэгдлүүдээс бүрдэнэ');
                                                                                                                                                else CKEDITOR.instances.jobdescTab2D22.setData(replaceDatabaseToDisplay(data.d));
                                                                                                                                                //CKEDITOR.instances.jobdescTab2D22.setData(replaceDatabaseToDisplay(data.d));
                                                                                                                                                globalAjaxVar = $.ajax({
                                                                                                                                                    type: "POST",
                                                                                                                                                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                                                                                    data: '{"qry":"SELECT D23 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                                                                                    contentType: "application/json; charset=utf-8",
                                                                                                                                                    dataType: "json",
                                                                                                                                                    success: function (data) {
                                                                                                                                                        if ($.trim(data.d) == '') CKEDITOR.instances.jobdescTab2D23.setData('Сандал, ширээ, компьютер, тоног төхөөрөмж, харилцуур утас');
                                                                                                                                                        else CKEDITOR.instances.jobdescTab2D23.setData(replaceDatabaseToDisplay(data.d));
                                                                                                                                                        //CKEDITOR.instances.jobdescTab2D23.setData(replaceDatabaseToDisplay(data.d));
                                                                                                                                                        globalAjaxVar = $.ajax({
                                                                                                                                                            type: "POST",
                                                                                                                                                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                                                                                            data: '{"qry":"SELECT D24 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                                                                                            contentType: "application/json; charset=utf-8",
                                                                                                                                                            dataType: "json",
                                                                                                                                                            success: function (data) {
                                                                                                                                                                if ($.trim(data.d) == '') CKEDITOR.instances.jobdescTab2D24.setData($('#jobdescTab1Lbl9').html().replace(/<br>/g, '; ').replace(/: /g, '-'));
                                                                                                                                                                else CKEDITOR.instances.jobdescTab2D24.setData(replaceDatabaseToDisplay(data.d));
                                                                                                                                                                //CKEDITOR.instances.jobdescTab2D24.setData(replaceDatabaseToDisplay(data.d));
                                                                                                                                                                globalAjaxVar = $.ajax({
                                                                                                                                                                    type: "POST",
                                                                                                                                                                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                                                                                                    data: '{"qry":"SELECT D25 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                                                                                                    contentType: "application/json; charset=utf-8",
                                                                                                                                                                    dataType: "json",
                                                                                                                                                                    success: function (data) {
                                                                                                                                                                        CKEDITOR.instances.jobdescTab2D25.setData(replaceDatabaseToDisplay(data.d));
                                                                                                                                                                        globalAjaxVar = $.ajax({
                                                                                                                                                                            type: "POST",
                                                                                                                                                                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                                                                                                            data: '{"qry":"SELECT D26 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                                                                                                            contentType: "application/json; charset=utf-8",
                                                                                                                                                                            dataType: "json",
                                                                                                                                                                            success: function (data) {
                                                                                                                                                                                if ($.trim(data.d) == '') CKEDITOR.instances.jobdescTab2D26.setData('Ажлын хэвийн орчин, нөхцөл шаардлагатай');
                                                                                                                                                                                else CKEDITOR.instances.jobdescTab2D26.setData(replaceDatabaseToDisplay(data.d));
                                                                                                                                                                                //CKEDITOR.instances.jobdescTab2D26.setData(replaceDatabaseToDisplay(data.d));
                                                                                                                                                                                globalAjaxVar = $.ajax({
                                                                                                                                                                                    type: "POST",
                                                                                                                                                                                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                                                                                                                                                    data: '{"qry":"SELECT D27 FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                                                                                                                                                                                    contentType: "application/json; charset=utf-8",
                                                                                                                                                                                    dataType: "json",
                                                                                                                                                                                    success: function (data) {
                                                                                                                                                                                        CKEDITOR.instances.jobdescTab2D27.setData(replaceDatabaseToDisplay(data.d));
                                                                                                                                                                                        hideLoader('loaderTab2');
                                                                                                                                                                                    },
                                                                                                                                                                                    failure: function (response) {
                                                                                                                                                                                        alert('FAILURE: ' + response.d);
                                                                                                                                                                                    },
                                                                                                                                                                                    error: function (xhr, status, error) {
                                                                                                                                                                                        var err = eval("(" + xhr.responseText + ")");
                                                                                                                                                                                        if ($.trim(err.Message) == 'Object reference not set to an instance of an object.') {
                                                                                                                                                                                            CKEDITOR.instances.jobdescTab2D27.setData('');
                                                                                                                                                                                        }
                                                                                                                                                                                        else window.location = '../#pg/error500.aspx';
                                                                                                                                                                                    }
                                                                                                                                                                                });
                                                                                                                                                                            },
                                                                                                                                                                            failure: function (response) {
                                                                                                                                                                                alert('FAILURE: ' + response.d);
                                                                                                                                                                            },
                                                                                                                                                                            error: function (xhr, status, error) {
                                                                                                                                                                                var err = eval("(" + xhr.responseText + ")");
                                                                                                                                                                                if ($.trim(err.Message) == 'Object reference not set to an instance of an object.') {
                                                                                                                                                                                    CKEDITOR.instances.jobdescTab2D26.setData('Ажлын хэвийн орчин, нөхцөл шаардлагатай');
                                                                                                                                                                                }
                                                                                                                                                                                else window.location = '../#pg/error500.aspx';
                                                                                                                                                                            }
                                                                                                                                                                        });
                                                                                                                                                                    },
                                                                                                                                                                    failure: function (response) {
                                                                                                                                                                        alert('FAILURE: ' + response.d);
                                                                                                                                                                    },
                                                                                                                                                                    error: function (xhr, status, error) {
                                                                                                                                                                        var err = eval("(" + xhr.responseText + ")");
                                                                                                                                                                        if ($.trim(err.Message) == 'Object reference not set to an instance of an object.') {
                                                                                                                                                                            CKEDITOR.instances.jobdescTab2D25.setData('');
                                                                                                                                                                        }
                                                                                                                                                                        else window.location = '../#pg/error500.aspx';
                                                                                                                                                                    }
                                                                                                                                                                });
                                                                                                                                                            },
                                                                                                                                                            failure: function (response) {
                                                                                                                                                                alert('FAILURE: ' + response.d);
                                                                                                                                                            },
                                                                                                                                                            error: function (xhr, status, error) {
                                                                                                                                                                var err = eval("(" + xhr.responseText + ")");
                                                                                                                                                                if ($.trim(err.Message) == 'Object reference not set to an instance of an object.') {
                                                                                                                                                                    CKEDITOR.instances.jobdescTab2D24.setData($('#jobdescTab1Lbl9').html().replace(/<br>/g, '; ').replace(/: /g, '-'));
                                                                                                                                                                }
                                                                                                                                                                else window.location = '../#pg/error500.aspx';
                                                                                                                                                            }
                                                                                                                                                        });
                                                                                                                                                    },
                                                                                                                                                    failure: function (response) {
                                                                                                                                                        alert('FAILURE: ' + response.d);
                                                                                                                                                    },
                                                                                                                                                    error: function (xhr, status, error) {
                                                                                                                                                        var err = eval("(" + xhr.responseText + ")");
                                                                                                                                                        if ($.trim(err.Message) == 'Object reference not set to an instance of an object.') {
                                                                                                                                                            CKEDITOR.instances.jobdescTab2D23.setData('Сандал, ширээ, компьютер, тоног төхөөрөмж, харилцуур утас');
                                                                                                                                                        }
                                                                                                                                                        else window.location = '../#pg/error500.aspx';
                                                                                                                                                    }
                                                                                                                                                });
                                                                                                                                            },
                                                                                                                                            failure: function (response) {
                                                                                                                                                alert('FAILURE: ' + response.d);
                                                                                                                                            },
                                                                                                                                            error: function (xhr, status, error) {
                                                                                                                                                var err = eval("(" + xhr.responseText + ")");
                                                                                                                                                if ($.trim(err.Message) == 'Object reference not set to an instance of an object.') {
                                                                                                                                                    CKEDITOR.instances.jobdescTab2D22.setData('Цалин хөлс нь ' + $('#jobdescTab2Lbl4').text() + ' зэрэглэлээр Засгийн газрын хүчин төгөлдөр эрхийн актаар тогтоогдсон албан тушаалын цалин, төрийн албан хаасан хугацааны, зэрэг дэвийн нэмэгдлүүдээс бүрдэнэ');
                                                                                                                                                }
                                                                                                                                                else window.location = '../#pg/error500.aspx';
                                                                                                                                            }
                                                                                                                                        });
                                                                                                                                    },
                                                                                                                                    failure: function (response) {
                                                                                                                                        alert('FAILURE: ' + response.d);
                                                                                                                                    },
                                                                                                                                    error: function (xhr, status, error) {
                                                                                                                                        var err = eval("(" + xhr.responseText + ")");
                                                                                                                                        if ($.trim(err.Message) == 'Object reference not set to an instance of an object.') {
                                                                                                                                            if ($('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') == '3') {
                                                                                                                                                CKEDITOR.instances.jobdescTab2D21.setData('Төрийн нарийн бичгийн дарга нь яамны аппаратын ажлын үр дүнг сайдын өмнө хариуцна. (Яамны эрх зүйн тухай хууль 9.5.)');
                                                                                                                                            }
                                                                                                                                            else if ($('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') == '4' || $('#jobdescTab1SelectStaff option:selected').attr('data-jobtypeid') == '5') {
                                                                                                                                                CKEDITOR.instances.jobdescTab2D21.setData('Нэгжийнхээ өдөр тутмын үйл ажиллагааг удирдан зохион байгуулж, үр дүнг Төрийн нарийн бичгийн даргын өмнө хариуцах. (Яамны эрх зүйн тухай хууль 9.5.)');
                                                                                                                                            }
                                                                                                                                            else {
                                                                                                                                                CKEDITOR.instances.jobdescTab2D21.setData('...');
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        else window.location = '../#pg/error500.aspx';
                                                                                                                                    }
                                                                                                                                });
                                                                                                                            },
                                                                                                                            failure: function (response) {
                                                                                                                                alert('FAILURE: ' + response.d);
                                                                                                                            },
                                                                                                                            error: function (xhr, status, error) {
                                                                                                                                var err = eval("(" + xhr.responseText + ")");
                                                                                                                                if ($.trim(err.Message) == 'Object reference not set to an instance of an object.') {
                                                                                                                                    CKEDITOR.instances.jobdescTab2D20.setData('1. УИХ, ЗГ болон бусад Төсвийн ерөнхийлөн захирагч, Төсвийн төвлөрүүлсэ, Төсвийн шууд захирагчид, Төрийн болон орон нутгийн өмчит байгууллагууд<br>2. Дэлхийн банк, Олон улсын валют сан, Олон улсын банк санхүүгийн байгууллагууд.<br>3.Үндсэн хуулийн цэц, УИХ-д ажлаа тайлагнадаг бусад байгууллага, бүх шатны шүүх, прокурорын болон НӨУБ, ТЗТБ, НЗБ, ТББ, төрийн өмчийн болон төрийн өмчийн оролцоот ой аж ахуйн нэгж, хувийн хэвшлийн байгууллага, иргэн, гадаад орон, олон улсын байгууллага, /Эдгээртэй харилцахдаа Яамны эрх зүйн байдлын тухай хуулийн холбогдох заалтыг баримтлана/');
                                                                                                                                }
                                                                                                                                else window.location = '../#pg/error500.aspx';
                                                                                                                            }
                                                                                                                        });
                                                                                                                    },
                                                                                                                    failure: function (response) {
                                                                                                                        alert('FAILURE: ' + response.d);
                                                                                                                    },
                                                                                                                    error: function (xhr, status, error) {
                                                                                                                        var err = eval("(" + xhr.responseText + ")");
                                                                                                                        if ($.trim(err.Message) == 'Object reference not set to an instance of an object.') {
                                                                                                                            var val01 = 'Байгууллагын бүтцийн нэгжүүд үүнд:<br><ul>';
                                                                                                                            $('#jobdescTab2SelectGazar > option').each(function () {
                                                                                                                                val01 += '<li>' + $(this).attr('title') + '</li>';
                                                                                                                            });
                                                                                                                            val01 += '</ul>';
                                                                                                                            CKEDITOR.instances.jobdescTab2D19.setData(val01);
                                                                                                                        }
                                                                                                                        else window.location = '../#pg/error500.aspx';
                                                                                                                    }
                                                                                                                });
                                                                                                            },
                                                                                                            failure: function (response) {
                                                                                                                alert('FAILURE: ' + response.d);
                                                                                                            },
                                                                                                            error: function (xhr, status, error) {
                                                                                                                var err = eval("(" + xhr.responseText + ")");
                                                                                                                if ($.trim(err.Message) == 'Object reference not set to an instance of an object.') {
                                                                                                                    CKEDITOR.instances.jobdescTab2D18.setData('');
                                                                                                                }
                                                                                                                else window.location = '../#pg/error500.aspx';
                                                                                                            }
                                                                                                        });
                                                                                                    },
                                                                                                    failure: function (response) {
                                                                                                        alert('FAILURE: ' + response.d);
                                                                                                    },
                                                                                                    error: function (xhr, status, error) {
                                                                                                        var err = eval("(" + xhr.responseText + ")");
                                                                                                        if ($.trim(err.Message) == 'Object reference not set to an instance of an object.') {
                                                                                                            CKEDITOR.instances.jobdescTab2D17.setData('');
                                                                                                        }
                                                                                                        else window.location = '../#pg/error500.aspx';
                                                                                                    }
                                                                                                });
                                                                                            },
                                                                                            failure: function (response) {
                                                                                                alert('FAILURE: ' + response.d);
                                                                                            },
                                                                                            error: function (xhr, status, error) {
                                                                                                var err = eval("(" + xhr.responseText + ")");
                                                                                                if ($.trim(err.Message) == 'Object reference not set to an instance of an object.') {
                                                                                                    CKEDITOR.instances.jobdescTab2D16.setData('');
                                                                                                }
                                                                                                else window.location = '../#pg/error500.aspx';
                                                                                            }
                                                                                        });
                                                                                    },
                                                                                    failure: function (response) {
                                                                                        alert('FAILURE: ' + response.d);
                                                                                    },
                                                                                    error: function (xhr, status, error) {
                                                                                        var err = eval("(" + xhr.responseText + ")");
                                                                                        if ($.trim(err.Message) == 'Object reference not set to an instance of an object.') {
                                                                                            CKEDITOR.instances.jobdescTab2D15.setData('');
                                                                                        }
                                                                                        else window.location = '../#pg/error500.aspx';
                                                                                    }
                                                                                });
                                                                            },
                                                                            failure: function (response) {
                                                                                alert('FAILURE: ' + response.d);
                                                                            },
                                                                            error: function (xhr, status, error) {
                                                                                var err = eval("(" + xhr.responseText + ")");
                                                                                if ($.trim(err.Message) == 'Object reference not set to an instance of an object.') {
                                                                                    $('#jobdescTab2D14').val('');
                                                                                }
                                                                                else window.location = '../#pg/error500.aspx';
                                                                            }
                                                                        });
                                                                    },
                                                                    failure: function (response) {
                                                                        alert('FAILURE: ' + response.d);
                                                                    },
                                                                    error: function (xhr, status, error) {
                                                                        var err = eval("(" + xhr.responseText + ")");
                                                                        if ($.trim(err.Message) == 'Object reference not set to an instance of an object.') {
                                                                            $('#jobdescTab2D13').val('');
                                                                        }
                                                                        else window.location = '../#pg/error500.aspx';
                                                                    }
                                                                });
                                                            },
                                                            failure: function (response) {
                                                                alert('FAILURE: ' + response.d);
                                                            },
                                                            error: function (xhr, status, error) {
                                                                var err = eval("(" + xhr.responseText + ")");
                                                                if ($.trim(err.Message) == 'Object reference not set to an instance of an object.') {
                                                                    $('#jobdescTab2D12').val('');
                                                                }
                                                                else window.location = '../#pg/error500.aspx';
                                                            }
                                                        });
                                                    },
                                                    failure: function (response) {
                                                        alert('FAILURE: ' + response.d);
                                                    },
                                                    error: function (xhr, status, error) {
                                                        var err = eval("(" + xhr.responseText + ")");
                                                        if ($.trim(err.Message) == 'Object reference not set to an instance of an object.') {
                                                            $('#jobdescTab2D11').val($('#jobdescTab2SelectHeltes option:selected').attr('title').replace('хэлтэс', '').replace('газар', '') + 'чиглэлээр мэргэшсэн байх');
                                                        }
                                                        else window.location = '../#pg/error500.aspx';
                                                    }
                                                });
                                            },
                                            failure: function (response) {
                                                alert('FAILURE: ' + response.d);
                                            },
                                            error: function (xhr, status, error) {
                                                var err = eval("(" + xhr.responseText + ")");
                                                if ($.trim(err.Message) == 'Object reference not set to an instance of an object.') {
                                                    $('#jobdescTab2D10').val('');
                                                }
                                                else window.location = '../#pg/error500.aspx';
                                            }
                                        });
                                    },
                                    failure: function (response) {
                                        alert('FAILURE: ' + response.d);
                                    },
                                    error: function (xhr, status, error) {
                                        var err = eval("(" + xhr.responseText + ")");
                                        if ($.trim(err.Message) == 'Object reference not set to an instance of an object.') {
                                            $('#jobdescTab2D9').val('Санхүү эдийн засаг, Нягтлан бодогч, Хуульч, МТ инжинер, Бизнесийн удирдлага, Гадаад харилцааа');
                                        }
                                        else window.location = '../#pg/error500.aspx';
                                    }
                                });
                            },
                            failure: function (response) {
                                alert('FAILURE: ' + response.d);
                            },
                            error: function (xhr, status, error) {
                                var err = eval("(" + xhr.responseText + ")");
                                if ($.trim(err.Message) == 'Object reference not set to an instance of an object.') {
                                    $('#jobdescTab2D8').val('');
                                }
                                else window.location = '../#pg/error500.aspx';
                            }
                        });
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        var err = eval("(" + xhr.responseText + ")");
                        if ($.trim(err.Message) == 'Object reference not set to an instance of an object.') {
                            $('#jobdescTab2D7').html('Дээд боловсролын баклавр болон түүнээс дээш');
                        }
                        else window.location = '../#pg/error500.aspx';
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
        //dataBindTab2D2Datatable();

        //dataBindTab2D3D4Datatable();
        //dataBindTab2D5D6Datatable();

        dataBindTab2ZoriltDatatable();
    }

    //tab2
    //tab2t2
    function saveJobDesc(dtype) {
        var errVal = '';
        var impl = '';
        if (dtype == 1) {
            if ($.trim($('#jobdescTab2D1').val()) == "") errVal = 'Хариуцсан ажил заавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim($('#jobdescTab2D1').val())).length > 2000) errVal = 'Хариуцсан ажил уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim($('#jobdescTab2D1').val())).length;
            }
            impl = replaceDisplayToDatabase($.trim($('#jobdescTab2D1').val()));
        }
        else if (dtype == 2) {
            if ($.trim(CKEDITOR.instances.jobdescTab2D2.getData()) == "") errVal = 'Ажлын байрны зорилго заавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D2.getData())).length > 2000) errVal = 'Ажлын байрны зорилго уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D2.getData())).length;
            }
            impl = replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D2.getData()));
        }
        else if (dtype == 3) {
            if ($.trim(CKEDITOR.instances.jobdescTab2D3.getData()) == "") errVal = 'Ажлын байрны үндсэн зорилт заавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D3.getData())).length > 2000) errVal = 'Ажлын байрны үндсэн зорилт уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D3.getData())).length;
            }
            impl = replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D3.getData()));
        }
        else if (dtype == 4) {
            if ($.trim(CKEDITOR.instances.jobdescTab2D4.getData()) == "") errVal = 'Гүйцэтгэлийн шалгуур үзүүлэлт заавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D4.getData())).length > 2000) errVal = 'Гүйцэтгэлийн шалгуур үзүүлэлт уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D4.getData())).length;
            }
            impl = replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D4.getData()));
        }
        else if (dtype == 7) {
            if ($.trim($('#jobdescTab2D7').val()) == "") errVal = 'Боловсрол - Чухал шаардлагатай заавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim($('#jobdescTab2D7').val())).length > 2000) errVal = 'Боловсрол - Чухал шаардлагатай уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim($('#jobdescTab2D7').val())).length;
            }
            impl = replaceDisplayToDatabase($.trim($('#jobdescTab2D7').val()));
        }
        else if (dtype == 8) {
            if ($.trim($('#jobdescTab2D8').val()) == "") errVal = 'Боловсрол - Шаардлагатай заавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim($('#jobdescTab2D8').val())).length > 2000) errVal = 'Боловсрол - Шаардлагатай уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim($('#jobdescTab2D8').val())).length;
            }
            impl = replaceDisplayToDatabase($.trim($('#jobdescTab2D8').val()));
        }
        else if (dtype == 9) {
            if ($.trim($('#jobdescTab2D9').val()) == "") errVal = 'Мэргэжил - Чухал шаардлагатай заавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim($('#jobdescTab2D9').val())).length > 2000) errVal = 'Мэргэжил - Чухал шаардлагатай уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim($('#jobdescTab2D9').val())).length;
            }
            impl = replaceDisplayToDatabase($.trim($('#jobdescTab2D9').val()));
        }
        else if (dtype == 10) {
            if ($.trim($('#jobdescTab2D10').val()) == "") errVal = 'Мэргэжил - Шаардлагатай заавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim($('#jobdescTab2D10').val())).length > 2000) errVal = 'Мэргэжил - Шаардлагатай уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim($('#jobdescTab2D10').val())).length;
            }
            impl = replaceDisplayToDatabase($.trim($('#jobdescTab2D10').val()));
        }
        else if (dtype == 11) {
            if ($.trim($('#jobdescTab2D11').val()) == "") errVal = 'Мэргэшил - Чухал шаардлагатай заавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim($('#jobdescTab2D11').val())).length > 2000) errVal = 'Мэргэшил - Чухал шаардлагатай уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim($('#jobdescTab2D11').val())).length;
            }
            impl = replaceDisplayToDatabase($.trim($('#jobdescTab2D11').val()));
        }
        else if (dtype == 12) {
            if ($.trim($('#jobdescTab2D12').val()) == "") errVal = 'Мэргэшил - Шаардлагатай заавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim($('#jobdescTab2D12').val())).length > 2000) errVal = 'Мэргэшил - Шаардлагатай уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim($('#jobdescTab2D12').val())).length;
            }
            impl = replaceDisplayToDatabase($.trim($('#jobdescTab2D12').val()));
        }
        else if (dtype == 13) {
            if ($.trim($('#jobdescTab2D13').val()) == "") errVal = 'Туршлага - Чухал шаардлагатай заавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim($('#jobdescTab2D13').val())).length > 2000) errVal = 'Туршлага - Чухал шаардлагатай уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim($('#jobdescTab2D13').val())).length;
            }
            impl = replaceDisplayToDatabase($.trim($('#jobdescTab2D13').val()));
        }
        else if (dtype == 14) {
            if ($.trim($('#jobdescTab2D14').val()) == "") errVal = 'Туршлага - Шаардлагатай заавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim($('#jobdescTab2D14').val())).length > 2000) errVal = 'Туршлага - Шаардлагатай уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim($('#jobdescTab2D14').val())).length;
            }
            impl = replaceDisplayToDatabase($.trim($('#jobdescTab2D14').val()));
        }
        else if (dtype == 15) {
            if ($.trim(CKEDITOR.instances.jobdescTab2D15.getData()) == "") errVal = 'Ур чадвар - Чухал шаардлагатай заавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D15.getData())).length > 2000) errVal = 'Ур чадвар - Чухал шаардлагатай уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D15.getData())).length;
            }
            impl = replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D15.getData()));
        }
        else if (dtype == 16) {
            if ($.trim(CKEDITOR.instances.jobdescTab2D16.getData()) == "") errVal = 'Ур чадвар - Шаардлагатай заавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D16.getData())).length > 2000) errVal = 'Ур чадвар - Шаардлагатай уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D16.getData())).length;
            }
            impl = replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D16.getData()));
        }
        else if (dtype == 17) {
            if ($.trim(CKEDITOR.instances.jobdescTab2D17.getData()) == "") errVal = '1.2. Тусгай шаардлага: - Чухал шаардлагатай заавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D17.getData())).length > 2000) errVal = '1.2. Тусгай шаардлага: - Чухал шаардлагатай уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D17.getData())).length;
            }
            impl = replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D17.getData()));
        }
        else if (dtype == 18) {
            if ($.trim(CKEDITOR.instances.jobdescTab2D18.getData()) == "") errVal = '1.2. Тусгай шаардлага: - Шаардлагатай заавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D18.getData())).length > 2000) errVal = '1.2. Тусгай шаардлага: - Шаардлагатай уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D18.getData())).length;
            }
            impl = replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D18.getData()));
        }
        else if (dtype == 19) {
            if ($.trim(CKEDITOR.instances.jobdescTab2D19.getData()) == "") errVal = '1.1. Байгууллагын дотор талд заавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D19.getData())).length > 2000) errVal = '1.1. Байгууллагын дотор талд уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D19.getData())).length;
            }
            impl = replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D19.getData()));
        }
        else if (dtype == 20) {
            if ($.trim(CKEDITOR.instances.jobdescTab2D20.getData()) == "") errVal = '1.2.Байгууллагын гадна талд заавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D20.getData())).length > 2000) errVal = '1.2.Байгууллагын гадна талд уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D20.getData())).length;
            }
            impl = replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D20.getData()));
        }
        else if (dtype == 21) {
            if ($.trim(CKEDITOR.instances.jobdescTab2D21.getData()) == "") errVal = '2. Албан тушаал эрхлэгчийн хүлээх хариуцлага заавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D21.getData())).length > 2000) errVal = '2. Албан тушаал эрхлэгчийн хүлээх хариуцлага уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D21.getData())).length;
            }
            impl = replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D21.getData()));
        }
        else if (dtype == 22) {
            if ($.trim(CKEDITOR.instances.jobdescTab2D22.getData()) == "") errVal = '3.1. Санхүүгийн заавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D22.getData())).length > 2000) errVal = '3.1. Санхүүгийн уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D22.getData())).length;
            }
            impl = replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D22.getData()));
        }
        else if (dtype == 23) {
            if ($.trim(CKEDITOR.instances.jobdescTab2D23.getData()) == "") errVal = '3.2. Материалын заавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D23.getData())).length > 2000) errVal = '3.2. Материалын уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D23.getData())).length;
            }
            impl = replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D23.getData()));
        }
        else if (dtype == 24) {
            if ($.trim(CKEDITOR.instances.jobdescTab2D24.getData()) == "") errVal = '3.3. Хүний заавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D24.getData())).length > 2000) errVal = '3.3. Хүний уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D24.getData())).length;
            }
            impl = replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D24.getData()));
        }
        else if (dtype == 25) {
            if ($.trim(CKEDITOR.instances.jobdescTab2D25.getData()) == "") errVal = '3.4. Бусадзаавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D25.getData())).length > 2000) errVal = '3.4. Бусад уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D25.getData())).length;
            }
            impl = replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D25.getData()));
        }
        else if (dtype == 26) {
            if ($.trim(CKEDITOR.instances.jobdescTab2D26.getData()) == "") errVal = '4.1. Ердийн нөхцөл заавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D26.getData())).length > 2000) errVal = '4.1. Ердийн нөхцөл уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D26.getData())).length;
            }
            impl = replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D26.getData()));
        }
        else if (dtype == 27) {
            if ($.trim(CKEDITOR.instances.jobdescTab2D27.getData()) == "") errVal = '4.2. Онцгой нөхцөл заавал оруулна уу!';
            else {
                if (replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D27.getData())).length > 2000) errVal = '4.2. Онцгой нөхцөл уртдаа 2000 тэмдэгт авна! Таны оруулсан нийт тэмдэгт: ' + replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D27.getData())).length;
            }
            impl = replaceDisplayToDatabase($.trim(CKEDITOR.instances.jobdescTab2D27.getData()));
        }


        if (errVal != '') {
            alert(errVal);
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"SELECT COUNT(1) FROM TBL_JOBDESC WHERE YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    if (data.d == '0') {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                            data: '{"qry":"INSERT INTO TBL_JOBDESC (YR, D' + dtype + ', NUM, BR_ID, JOBTYPE_ID) VALUES (' + $('#jobdescTab2SelectYear option:selected').val() + ',\'' + impl + '\', ' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ', ' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ', ' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + ')"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function () {
                                smallBox('', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                            data: '{"qry":"UPDATE TBL_JOBDESC SET D' + dtype + '=\'' + impl + '\' WHERE YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function () {
                                smallBox('', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
    }
    $("#jobdescTab2SelectGazar").change(function () {
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
            data: '{"yr":"' + $("#jobdescTab2SelectYear option:selected").val() + '", "gazar":"' + $("#jobdescTab2SelectGazar option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $("#jobdescTab2SelectHeltes").html(valData);
                $("#jobdescTab2SelectHeltes").prop('disabled', false);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/JobdescTab1SelectStaffListForDDL",
                    data: '{"yr":"' + $("#jobdescTab2SelectYear option:selected").val() + '", "gazar":"' + $("#jobdescTab2SelectGazar option:selected").val() + '", "heltes":"' + $("#jobdescTab2SelectHeltes option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valOptGroup = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            if (value.BR_ID != valOptGroup) {
                                if (valOptGroup != '') valData += '</optgroup>';
                                valData += '<optgroup label="' + value.NEGJNAME + '">';
                            }
                            valData += "<option data-brid=\"" + value.BR_ID + "\" data-jobtypeid=\"" + value.JOBTYPE_ID + "\" data-num=\"" + value.NUM + "\" data-stid=\"" + value.ST_ID + "\" value=\"" + value.ST_ID + "\">" + value.ST_NAME + "</option>";
                            valOptGroup = value.BR_ID;
                        });
                        $("#jobdescTab2SelectStaff").html(valData);
                        dataBindTab2Datas();
                        $("#jobdescTab2SelectStaff").prop('disabled', false);
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
    $("#jobdescTab2SelectHeltes").change(function () {
        var valData = '', valOptGroup = '';
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/JobdescTab1SelectStaffListForDDL",
            data: '{"yr":"' + $("#jobdescTab2SelectYear option:selected").val() + '", "gazar":"' + $("#jobdescTab2SelectGazar option:selected").val() + '", "heltes":"' + $("#jobdescTab2SelectHeltes option:selected").val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valOptGroup = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (value.BR_ID != valOptGroup) {
                        if (valOptGroup != '') valData += '</optgroup>';
                        valData += '<optgroup label="' + value.NEGJNAME + '">';
                    }
                    valData += "<option data-brid=\"" + value.BR_ID + "\" data-jobtypeid=\"" + value.JOBTYPE_ID + "\" data-num=\"" + value.NUM + "\" data-stid=\"" + value.ST_ID + "\" value=\"" + value.ST_ID + "\">" + value.ST_NAME + "</option>";
                    valOptGroup = value.BR_ID;
                });
                $("#jobdescTab2SelectStaff").html(valData);
                dataBindTab2Datas();
                $("#jobdescTab2SelectStaff").prop('disabled', false);
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    });
    $("#jobdescTab2SelectStaff").change(function () {
        dataBindTab2Datas();
    });
    //tab2Zorilt
    function dataBindTab2ZoriltDatatable() {
        var valData = '';
        showLoader('loaderTab2t2Table2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/JobdescTab2ZoriltDatatable",
            data: '{"yr":"' + $('#jobdescTab2SelectYear option:selected').val() + '", "num":"' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + '", "brid":"' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + '", "jobtypeid":"' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                var i=1;
                valData = "<table id=\"jobdescTab2ZoriltDatatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th>2. Үндсэн зорилт</th>";
                valData += "<th>2.1. Гүйцэтгэлийн шалгуур үзүүлэлт</th>";
                valData += "<th>Хүн өдөр</th>";
                valData += "<th>Холбогдсон заалт</th>";
                valData += "<th>&nbsp;</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\" data-lawzoriltid=\"" + value.LAWZORILT_ID + "\">";
                    valData += "<td><b>Зорилт-"+i+": </b> " + replaceDatabaseToDisplay(value.ZORILT_D3) + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.CRITERIA_D4) + "</td>";
                    valData += "<td>" + value.PERSONDAY + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.ZAALTLIST) + "</td>";
                    valData += "<td>";
                    valData += "<a style=\"cursor:pointer; margin-right:8px;\" onclick=\"showAddEditJobdescTab2ZoriltModal(this,'засах');\" data-target=\"#jobdescTab2ZoriltModal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></a>";
                    valData += "<a style=\"cursor:pointer;\" onclick=\"showDeleteJobdescTab2ZoriltModal(this);\"><i class=\"fa fa-trash-o\"></i></a>";
                    valData += "</td>";
                    valData += "</tr>";
                    i++;
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_jobdescTab2ZoriltDatatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#jobdescTab2ZoriltDatatable').dataTable({\"bSort\":false,\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_jobdescTab2ZoriltDatatable) {responsiveHelper_jobdescTab2ZoriltDatatable = new ResponsiveDatatablesHelper($('#jobdescTab2ZoriltDatatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_jobdescTab2ZoriltDatatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_jobdescTab2ZoriltDatatable.respond();}});";
                valData += "<\/script>";
                $('#divBindTab2t2Table2').html(valData);
                hideLoader('loaderTab2t2Table2');
                dataBindTab2WorkDatatable();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function showAddEditJobdescTab2ZoriltModal(el, isinsupt) {
        var valData = '';
        $('#jobdescTab2ZoriltModalHeaderLabel').html(isinsupt);
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/JobdescTab2ZoriltListForDDL",
            data: '{"yr":"' + $("#jobdescTab2SelectYear option:selected").val() + '", "brid":"' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<option value=\"" + value.ID + "\" data-personday=\"" + value.SUMPERSONDAY + "\">" + value.NO + ". " + replaceDatabaseToDisplay(value.NAME) + "</option>";
                });
                $("#jobdescTab2ZoriltModalSelectZorilt").html('<option value="">- Сонго -</option>' + valData);
                if (isinsupt == 'нэмэх') {
                    $('#jobdescTab2ZoriltModalID').html('');
                    $('#jobdescTab2ZoriltModalSelectZorilt').val('');
                    $('#jobdescTab2ZoriltModalInputZorilt').val('');
                    $('#jobdescTab2ZoriltModalInputCriteria').val('');
                    $('#jobdescTab2ZoriltModalSpanPersonday').html('0');
                    $('#jobdescTab2ZoriltModalInputPersonday').val('');
                }
                else {
                    $('#jobdescTab2ZoriltModalID').text($(el).closest('tr').attr('data-id'));
                    $('#jobdescTab2ZoriltModalSelectZorilt').val($(el).closest('tr').attr('data-lawzoriltid'));
                    $('#jobdescTab2ZoriltModalInputZorilt').val($(el).closest('tr').find('td:eq(0)').html());
                    $('#jobdescTab2ZoriltModalInputCriteria').val($(el).closest('tr').find('td:eq(1)').html());
                    $('#jobdescTab2ZoriltModalSpanPersonday').html($("#jobdescTab2ZoriltModalSelectZorilt option:selected").attr('data-personday'));
                    $('#jobdescTab2ZoriltModalInputPersonday').val($(el).closest('tr').find('td:eq(2)').html().split('/')[0]);
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
    function showDeleteJobdescTab2ZoriltModal(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_JOBDESC_LAWWORK WHERE JOBDESC_LAWZORILT_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') {
                    alert('Сонгосон зорилтод хамааралтай үйл ажиллагаа орсон тул устгах боломжгүй байна!');
                }
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон мөр бичэглэлийг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"DELETE FROM TBL_JOBDESC_LAWZORILT WHERE BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND ID=' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab2ZoriltDatatable();
                                    smallBox('Чиг үүргийн зорилт', 'Амжилттай устгагдлаа...', '#659265', 3000);
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
    $('#jobdescTab2ZoriltModalForm').bootstrapValidator({
        fields: {
            jobdescTab2ZoriltModalSelectZorilt: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            jobdescTab2ZoriltModalInputPersonday: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    stringLength: {
                        max: 3,
                        message: 'Уртдаа 3 тэмдэгт авна'
                    },
                    numeric: {
                        message: 'Зөвхөн тоон тэмдэгт авна'
                    }
                }
            },
            jobdescTab2ZoriltModalInputCriteria: {
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
            jobdescTab2ZoriltModalInputZorilt: {
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
            e.preventDefault();
            if ($('#jobdescTab2ZoriltModalHeaderLabel').html() == 'нэмэх') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/JOBDESC_LAWZORILT_INSERT",
                    data: '{"P_BR_ID":"' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + '", "P_JOBTYPE_ID":"' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '", "P_NUM":"' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + '", "P_YR":"' + $('#jobdescTab2SelectYear option:selected').val() + '", "P_LAWZORILT_ID":"' + $('#jobdescTab2ZoriltModalSelectZorilt option:selected').val() + '", "P_PERSONDAY":"' + $.trim($('#jobdescTab2ZoriltModalInputPersonday').val()) + '", "P_CRITERIA_D4":"' + replaceDisplayToDatabase($.trim($('#jobdescTab2ZoriltModalInputCriteria').val())) + '", "P_ZORILT_D3":"' + replaceDisplayToDatabase($.trim($('#jobdescTab2ZoriltModalInputZorilt').val())) + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab2ZoriltDatatable();
                        $('#jobdescTab2ZoriltModal').modal('hide');
                        smallBox('Чиг үүргийн зорилт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                    data: '{"qry":"UPDATE TBL_JOBDESC_LAWZORILT SET PERSONDAY=' + $.trim($('#jobdescTab2ZoriltModalInputPersonday').val()) + ', CRITERIA_D4=\'' + replaceDisplayToDatabase($.trim($('#jobdescTab2ZoriltModalInputCriteria').val())) + '\', ZORILT_D3=\'' + replaceDisplayToDatabase($.trim($('#jobdescTab2ZoriltModalInputZorilt').val())) + '\', AND LAWZORILT_ID=' + $('#jobdescTab2ZoriltModalSelectZorilt option:selected').val() + ' WHERE BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND ID=' + $('#jobdescTab2ZoriltModalID').html() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab2ZoriltDatatable();
                        $('#jobdescTab2ZoriltModal').modal('hide');
                        smallBox('Чиг үүргийн зорилт', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
    $('#jobdescTab2ZoriltModalSelectZorilt').change(function () {
        if ($("#jobdescTab2ZoriltModalSelectZorilt option:selected").val() == '') {
            $('#jobdescTab2ZoriltModalInputZorilt').val('');
            $('#jobdescTab2ZoriltModalSpanPersonday').val('0');
        }
        else {
            $('#jobdescTab2ZoriltModalInputZorilt').val($('#jobdescTab2ZoriltModalSelectZorilt option:selected').text().replace($('#jobdescTab2ZoriltModalSelectZorilt option:selected').text().split('. ')[0]+'. ', ''));
            $('#jobdescTab2ZoriltModalSpanPersonday').val($("#jobdescTab2ZoriltModalSelectZorilt option:selected").attr('data-personday'));
        }

    });

    //tab2Work
    function dataBindTab2WorkDatatable() {
        showLoader('loaderTab2t2Table1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/JobdescTab2WorkDatatable",
            data: '{"yr":"' + $('#jobdescTab2SelectYear option:selected').val() + '", "num":"' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + '", "brid":"' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + '", "jobtypeid":"' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                var strZorilt = "";
                var i = 1;
                valData = "<table id=\"jobdescTab2WorkDatatable\" class=\"table table-striped table-bordered table-hover\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th>3. Ажлын байрны гол үйл ажиллагаа</th>";
                valData += "<th>3.1. Хугацаа, хуваарь</th>";
                valData += "<th>Зорилт</th>";
                valData += "<th>&nbsp;</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    if (strZorilt != "") {
                        if (strZorilt != value.JOBDESC_LAWZORILT_ID) i++;
                    }
                    valData += "<tr data-id=\"" + value.ID + "\" data-jobdesclawzoriltid=\"" + value.JOBDESC_LAWZORILT_ID + "\">";
                    valData += "<td>" + replaceDatabaseToDisplay(value.WORK_D5) + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.TM_D6) + "</td>";
                    valData += "<td>Ажлын байрны үндсэн зорилт " + i + "-н хүрээнд</td>";
                    valData += "<td>";
                    valData += "<a style=\"cursor:pointer; margin-right:8px;\" onclick=\"showAddEditJobdescTab2WorkModal(this,'засах');\" data-target=\"#jobdescTab2WorkModal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></a>";
                    valData += "<a style=\"cursor:pointer;\" onclick=\"showDeleteJobdescTab2WorkModal(this);\"><i class=\"fa fa-trash-o\"></i></a>";
                    valData += "</td>";
                    valData += "</tr>";
                    strZorilt = value.JOBDESC_LAWZORILT_ID;
                });
                valData += "</tbody>";
                valData += "</table>";
                valData += "<script>";
                valData += "var responsiveHelper_jobdescTab2WorkDatatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#jobdescTab2WorkDatatable').dataTable({\"bSort\":false,\"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_jobdescTab2WorkDatatable) {responsiveHelper_jobdescTab2WorkDatatable = new ResponsiveDatatablesHelper($('#jobdescTab2WorkDatatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_jobdescTab2WorkDatatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_jobdescTab2WorkDatatable.respond();}}).rowGrouping({iGroupingColumnIndex: 2,bExpandableGrouping: true });";
                valData += "<\/script>";
                $('#divBindTab2t2Table1').html(valData);
                hideLoader('loaderTab2t2Table1');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function showAddEditJobdescTab2WorkModal(el, isinsupt) {
        var valData = '';
        $('#jobdescTab2WorkModalHeaderLabel').html(isinsupt);
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/JobdescTab2JobdescZoriltListForDDL",
            data: '{"yr":"' + $('#jobdescTab2SelectYear option:selected').val() + '", "num":"' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + '", "brid":"' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + '", "jobtypeid":"' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                var i = 1;
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<option value=\"" + value.ID + "\">Зорилт-" + i + ": " + replaceDatabaseToDisplay(value.NAME) + "</option>";
                    i++;
                });
                $("#jobdescTab2WorkModalSelectZorilt").html('<option value="">- Сонго -</option>' + valData);
                if (isinsupt == 'нэмэх') {
                    $('#jobdescTab2WorkModalID').html('');
                    $('#jobdescTab2WorkModalSelectZorilt').val('');
                    $('#jobdescTab2WorkModalInputWork').val('');
                    $('#jobdescTab2WorkModalInputTm').val('');
                }
                else {
                    $('#jobdescTab2WorkModalID').text($(el).closest('tr').attr('data-id'));
                    $('#jobdescTab2WorkModalSelectZorilt').val($(el).closest('tr').attr('data-jobdesclawzoriltid'));
                    $('#jobdescTab2WorkModalInputWork').val($(el).closest('tr').find('td:eq(0)').html());
                    $('#jobdescTab2WorkModalInputTm').val($(el).closest('tr').find('td:eq(1)').html());
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
    function showDeleteJobdescTab2WorkModal(el) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Сонгосон мөр бичэглэлийг устгах уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"DELETE FROM TBL_JOBDESC_LAWWORK WHERE BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND ID=' + $(el).closest('tr').attr('data-id') + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab2WorkDatatable();
                        smallBox('Ажлын байрны гол үйл ажиллагаа', 'Амжилттай устгагдлаа...', '#659265', 3000);
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
    $('#jobdescTab2WorkModalForm').bootstrapValidator({
        fields: {
            jobdescTab2WorkModalSelectZorilt: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            jobdescTab2WorkModalInputTm: {
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
            jobdescTab2WorkModalInputWork: {
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
            e.preventDefault();
            if ($('#jobdescTab2WorkModalHeaderLabel').html() == 'засах') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"UPDATE TBL_JOBDESC_LAWWORK SET WORK_D5=\'' + replaceDisplayToDatabase($.trim($('#jobdescTab2WorkModalInputWork').val())) + '\', TM_D6=\'' + replaceDisplayToDatabase($.trim($('#jobdescTab2WorkModalInputTm').val())) + '\', JOBDESC_LAWZORILT_ID=' + $('#jobdescTab2WorkModalSelectZorilt option:selected').val() + ' WHERE BR_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-brid') + ' AND JOBTYPE_ID=' + $('#jobdescTab2SelectStaff option:selected').attr('data-jobtypeid') + ' AND NUM=' + $('#jobdescTab2SelectStaff option:selected').attr('data-num') + ' AND YR=' + $('#jobdescTab2SelectYear option:selected').val() + ' AND ID=' + $('#jobdescTab2WorkModalID').html() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab2WorkDatatable();
                        $('#jobdescTab2WorkModal').modal('hide');
                        smallBox('Ажлын байрны гол үйл ажиллагаа', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                
            }
        }
    });    

    //tab3
    function dataBindTab3DataTables() {
        dataBindTab3S1DataTable();
        dataBindTab3S2DataTable();
        pTab3S3SetFirstControls();
    }

    //tab3s1
    function dataBindTab3S1DataTable() {
        var valData = '';
        var valIsEdit = '0';
        if (funcCheckRoles('1,34')) {
            valIsEdit = '1';
        }
        showLoader('loaderTab3S1');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/JobdescTab3S1Datatable",
            data: '{}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData = "<table id=\"jobdescTab3S1Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th style=\"width:20px;\">#</th>";
                valData += "<th>Нэр</th>";
                valData += "<th style=\"width:45px;\">&nbsp;</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-id=\"" + value.ID + "\">";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td>" + replaceDatabaseToDisplay(value.NAME) + "</td>";
                    valData += "<td>";
                    if (valIsEdit == '1') {
                        valData += "<div class=\"btn-group\">";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab3S1(this,'засах');\" data-target=\"#pTab3S1Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab3S1(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                        valData += "</div>";
                    }
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody></table>";
                $("#divBindTab3S1Table").html(valData);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/JobdescTab3TypeListForDDL",
                    data: '{}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            valData += "<option value=\"" + value.ID + "\">" + replaceDatabaseToDisplay(value.NAME) + "</option>";
                        });
                        $("#pTab3S2ModalSelectType").html('<option value="">- Сонго -</option>' + valData);
                        $("#pTab3S3ModalSelectType").html('<option value="">- Сонго -</option>' + valData);
                        hideLoader('loaderTab3S1');
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
    function showAddEditTab3S1(el, isinsupt) {
        $('#pTab3S1ModalHeaderLabel').text(isinsupt);
        $('#pTab3S1ModalID').html('');
        $('#pTab3S1ModalInputName').val('');
        if (isinsupt == 'засах') {
            $('#pTab3S1ModalID').html($(el).closest('tr').attr('data-id'));
            $('#pTab3S1ModalInputName').val($(el).closest('tr').find('td:eq(1)').html());
        }
    }
    function showDeleteTab3S1(el) {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
            data: '{"qry":"SELECT COUNT(1) FROM TBL_JOBCAPACITYNUM WHERE JOBTYPE_ID=' + $(el).closest('tr').attr('data-id') + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != '0') {
                    alert('Сонгосон ажлын байрны нэр оронд тоонд орсон тул устгах боломжгүй байна!');
                }
                else {
                    $.SmartMessageBox({
                        title: "Анхааруулга!",
                        content: "Сонгосон ажлын байрны нэрийг устгах уу?",
                        buttons: '[Үгүй][Тийм]'
                    }, function (ButtonPressed) {
                        if (ButtonPressed === "Тийм") {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"DELETE FROM TBL_JOBTYPE WHERE ID=' + $(el).closest('tr').attr('data-id') + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab3DataTables();
                                    smallBox('Сонгосон ажлын байрны нэр', 'Амжилттай устлаа...', '#659265', 3000);
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
    $('#pTab3S1ModalForm').bootstrapValidator({
        fields: {
            pTab3S1ModalInputName: {
                group: '.col-md-12',
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    stringLength: {
                        max: 50,
                        message: 'Уртдаа 50 тэмдэгт авна'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            if ($('#pTab3S1ModalHeaderLabel').text() == 'нэмэх') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"INSERT INTO TBL_JOBTYPE (ID, NAME) VALUES (TBLLASTID(\'TBL_JOBTYPE\'), \'' + replaceDisplayToDatabase($.trim($('#pTab3S1ModalInputName').val())) + '\')"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab3DataTables();
                        $('#pTab3S1Modal').modal('hide');
                        smallBox('Ажлын байрны нэр', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                    data: '{"qry":"UPDATE TBL_JOBTYPE SET NAME=\'' + replaceDisplayToDatabase($.trim($('#pTab3S1ModalInputName').val())) + '\' WHERE ID=' + $("#pTab3S1ModalID").text() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab3DataTables();
                        $('#pTab3S1Modal').modal('hide');
                        smallBox('Ажлын байрны нэр', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
    //tab3s2
    function dataBindTab3S2DataTable() {
        var valData = '', valOptGroup = '';
        var valIsEdit = '0';
        if (funcCheckRoles('1,34')) {
            valIsEdit = '1';
        }
        showLoader('loaderTab3S2');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/JobdescTab3S2Datatable",
            data: '{"yr":"' + $('#pTab3S2SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData = "<table id=\"jobdescTab3S2Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th>#</th>";
                valData += "<th>Нэгж</th>";
                valData += "<th>АБ нэр</th>";
                valData += "<th>Тоо</th>";
                valData += "<th>&nbsp;</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr>";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td data-id=\"" + value.BR_ID + "\">" + value.NEGJ + "</td>";
                    valData += "<td data-id=\"" + value.JOBTYPE_ID + "\">" + replaceDatabaseToDisplay(value.JOBTYPE_NAME) + "</td>";
                    valData += "<td>" + value.MAXNUM + "</td>";
                    valData += "<td>";
                    if (valIsEdit == '1') {
                        valData += "<div class=\"btn-group\">";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab3S2(this,'засах');\" data-target=\"#pTab3S2Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab3S2(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                        valData += "</div>";
                    }
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody></table>";
                $("#divBindTab3S2Table").html(valData);
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/GetNegjListForDDL",
                    data: '{"yr":"' + $('#pTab3S2SelectYear option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData = '';
                        valOptGroup = '';
                        $($.parseJSON(data.d)).each(function (index, value) {
                            if (value.GAZAR_ID != valOptGroup) {
                                if (valOptGroup != '') valData += '</optgroup>';
                                valData += '<optgroup label="' + value.GAZAR_NAME + '">';
                            }
                            valData += '<option value="' + value.HELTES_ID + '" title="' + value.HELTES_NAME + '">' + value.HELTES_NAMEINIT + '</option>';
                            valOptGroup = value.GAZAR_ID;
                        });
                        $("#pTab3S2ModalSelectNegj").html('<option value="">- Сонго -</option>' + valData);
                        hideLoader('loaderTab3S2');
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
    function showAddEditTab3S2(el, isinsupt) {
        var valData = '', valOptGroup = '';
        $('#pTab3S2ModalHeaderLabel').text(isinsupt);
        $('#pTab3S2ModalSelectYear').val('');
        $('#pTab3S2ModalSelectNegj').val('');
        $('#pTab3S2ModalSelectNegj').prop('disabled',true);
        $('#pTab3S2ModalInputCapacity').val('');
        $('#pTab3S2ModalSelectType').val('');
        if (isinsupt == 'засах') {
            $('#pTab3S2ModalSelectYear').val($('#pTab3S2SelectYear option:selected').val());
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetNegjListForDDL",
                data: '{"yr":"' + $('#pTab3S2ModalSelectYear option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    valOptGroup = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        if (value.GAZAR_ID != valOptGroup) {
                            if (valOptGroup != '') valData += '</optgroup>';
                            valData += '<optgroup label="' + value.GAZAR_NAME + '">';
                        }
                        valData += '<option value="' + value.HELTES_ID + '" title="' + value.HELTES_NAME + '">' + value.HELTES_NAMEINIT + '</option>';
                        valOptGroup = value.GAZAR_ID;
                    });
                    $("#pTab3S2ModalSelectNegj").html('<option value="">- Сонго -</option>' + valData);
                    $("#pTab3S2ModalSelectNegj").prop("disabled", false);
                    $('#pTab3S2ModalSelectNegj').val($(el).closest('tr').find('td:eq(1)').attr('data-id'));
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
            $('#pTab3S2ModalInputCapacity').val($(el).closest('tr').find('td:eq(3)').html());
            $('#pTab3S2ModalSelectType').val($(el).closest('tr').find('td:eq(2)').attr('data-id'));
        }
    }
    function showDeleteTab3S2(el) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Сонгосон ажлын байрны нэрийг устгах уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"DELETE FROM TBL_JOBCAPACITYNUM WHERE YR=' + $('#pTab3S2SelectYear option:selected').val() + ' AND BR_ID=' + $(el).closest('tr').find('td:eq(1)').attr('data-id') + ' AND JOBTYPE_ID=' + $(el).closest('tr').find('td:eq(2)').attr('data-id') + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab3S2DataTable();
                        smallBox('Сонгосон ажлын байрны орон тоо', 'Амжилттай устлаа...', '#659265', 3000);
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
    $('#pTab3S2ModalSelectYear').change(function () {
        var valData = '', valOptGroup = '';
        if ($('#pTab3S2ModalSelectYear option:selected').val() == "") {
            $("#pTab3S2ModalSelectNegj").html("<option selected value=\"\">- Сонго -</option>");
            $("#pTab3S2ModalSelectNegj").prop("disabled", true);
        }
        else {
            $("#pTab3S2ModalSelectNegj").prop("disabled", true);
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetNegjListForDDL",
                data: '{"yr":"' + $('#pTab3S2ModalSelectYear option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    valOptGroup = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        if (value.GAZAR_ID != valOptGroup) {
                            if (valOptGroup != '') valData += '</optgroup>';
                            valData += '<optgroup label="' + value.GAZAR_NAME + '">';
                        }
                        valData += '<option value="' + value.HELTES_ID + '" title="' + value.HELTES_NAME + '">' + value.HELTES_NAMEINIT + '</option>';
                        valOptGroup = value.GAZAR_ID;
                    });
                    $("#pTab3S2ModalSelectNegj").html('<option value="">- Сонго -</option>' + valData);
                    $("#pTab3S2ModalSelectNegj").prop("disabled", false);
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
    $('#pTab3S2SelectYear').change(function () {
        dataBindTab3S2DataTable();
    });
    $('#pTab3S2ModalForm').bootstrapValidator({
        fields: {
            pTab3S2ModalSelectYear: {
                group: '.col-md-4',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab3S2ModalSelectNegj: {
                group: '.col-md-8',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab3S2ModalSelectType: {
                group: '.col-md-8',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab3S2ModalInputCapacity: {
                group: '.col-md-4',
                validators: {
                    notEmpty: {
                        message: 'Оруулна уу'
                    },
                    stringLength: {
                        max: 2,
                        message: 'Уртдаа 2 тэмдэгт авна'
                    },
                    numeric: {
                        message: 'Зөвхөн тоон тэмдэгт авна'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            var valNumlist = '';
            for (var i = 1; i <= parseInt($.trim($('#pTab3S2ModalInputCapacity').val())) ; i++) {
                if (valNumlist != '') valNumlist += ',';
                valNumlist += i.toString();
            }
            if ($('#pTab3S2ModalHeaderLabel').text() == 'нэмэх') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                    data: '{"qry":"SELECT COUNT(1) FROM TBL_JOBCAPACITYNUM WHERE YR=' + $('#pTab3S2ModalSelectYear option:selected').val() + ' AND BR_ID=' + $('#pTab3S2ModalSelectNegj option:selected').val() + ' AND JOBTYPE_ID=' + $('#pTab3S2ModalSelectType option:selected').val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        if (data.d != '0') {
                            alert($('#pTab3S2ModalSelectYear option:selected').val() + ' оны ' + $('#pTab3S2ModalSelectNegj option:selected').text() + '-ийн ' + $('#pTab3S2ModalSelectType option:selected').text()+' дээр орон тоо орсон байна!');
                        }
                        else {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/JOBCAPACITYNUM_INSERT",
                                data: '{"P_YR":"' + $('#pTab3S2ModalSelectYear option:selected').val() + '", "P_BR_ID":"' + $('#pTab3S2ModalSelectNegj option:selected').val() + '", "P_JOBTYPE_ID":"' + $('#pTab3S2ModalSelectType option:selected').val() + '", "P_NUMLIST":"' + valNumlist + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab3S2DataTable();
                                    $('#pTab3S2Modal').modal('hide');
                                    smallBox('Ажлын байрны орон тоо', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
            else {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/JOBCAPACITYNUM_INSERT",
                    data: '{"P_YR":"' + $('#pTab3S2ModalSelectYear option:selected').val() + '", "P_BR_ID":"' + $('#pTab3S2ModalSelectNegj option:selected').val() + '", "P_JOBTYPE_ID":"' + $('#pTab3S2ModalSelectType option:selected').val() + '", "P_NUMLIST":"' + valNumlist + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab3S2DataTable();
                        $('#pTab3S2Modal').modal('hide');
                        smallBox('Ажлын байрны орон тоо', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
    //tab3s3
    function pTab3S3SetFirstControls() {
        var valData = '';
        $('#pTab3S3SelectGazar').prop('disabled', true);
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/GetGazarListForDDL",
            data: '{"yr":"' + $('#pTab3S3SelectYear option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                });
                $('#pTab3S3SelectGazar').html('<option value="">- Бүгд -</option>' + valData);
                $('#pTab3S3SelectGazar').prop('disabled', false);
                $('#pTab3S3SelectHeltes').html('<option value="">- Бүгд -</option>');
                $('#pTab3S3SelectHeltes').prop('disabled',true);
                dataBindTab3S3DataTable();
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    $('#pTab3S3SelectYear').change(function () {
        pTab3S3SetFirstControls();
    });
    $('#pTab3S3SelectGazar').change(function () {
        var valData = '';
        if ($("#pTab3S3SelectGazar option:selected").val() == "") {
            $("#pTab3S3SelectHeltes").html("<option selected value=\"\">Бүгд</option>");
            $("#pTab3S3SelectHeltes").prop("disabled", true);
            dataBindTab3S3DataTable();
        }
        else {
            $("#pTab3S3SelectHeltes").prop("disabled", true);
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetHeltesListForDDL",
                data: '{"yr":"' + $("#jobdescTab1SelectYear option:selected").val() + '", "gazar":"' + $("#jobdescTab1SelectGazar option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        valData += '<option value="' + value.BR_ID + '" title="' + value.BR_NAME + '">' + value.DOMAIN_ORG + '</option>';
                    });
                    $("#pTab3S3SelectHeltes").html('<option value="">- Бүгд -</option>' + valData);
                    $("#pTab3S3SelectHeltes").prop("disabled", false);
                    dataBindTab3S3DataTable();
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
    $('#pTab3S3SelectHeltes').change(function () {
        dataBindTab3S3DataTable();
    });
    function dataBindTab3S3DataTable() {
        var valData = '';
        var valIsEdit = '0';
        if (funcCheckRoles('1,34')) {
            valIsEdit = '1';
        }
        showLoader('loaderTab3S3');
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/JobdescTab3S3Datatable",
            data: '{"yr":"' + $('#pTab3S3SelectYear option:selected').val() + '", "gazar":"' + $('#pTab3S3SelectGazar option:selected').val() + '", "heltes":"' + $('#pTab3S3SelectHeltes option:selected').val() + '"}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                valData = '';
                valData = "<table id=\"jobdescTab3S3Datatable\" class=\"table table-striped table-bordered table-hover dataTable\" width=\"100%\"><thead>";
                valData += "<tr>";
                valData += "<th>#</th>";
                valData += "<th>Нэгж</th>";
                valData += "<th>АБ нэр</th>";
                valData += "<th>Ажилтан</th>";
                valData += "<th>Ажил үүрэг</th>";
                valData += "<th>&nbsp;</th>";
                valData += "</tr></thead><tbody>";
                $($.parseJSON(data.d)).each(function (index, value) {
                    valData += "<tr data-capacitynum=\"" + value.NUM + "\" data-capacity=\"" + value.MAXNUM + "\">";
                    valData += "<td>" + value.ROWNO + "</td>";
                    valData += "<td data-id=\"" + value.BR_ID + "\">" + value.NEGJ + "</td>";
                    valData += "<td data-id=\"" + value.JOBTYPE_ID + "\">" + replaceDatabaseToDisplay(value.JOBTYPE_NAME) + " | " + value.NUM + "</td>";
                    valData += "<td data-id=\"" + value.ST_ID + "\">" + value.ST_NAME + "</td>";
                    valData += "<td>" + value.DESCRIPTION + "</td>";
                    valData += "<td>";
                    if (valIsEdit == '1') {
                        valData += "<div class=\"btn-group\">";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showAddEditTab3S3(this,'засах');\" data-target=\"#pTab3S3Modal\" data-toggle=\"modal\"><i class=\"fa fa-pencil\"></i></button>";
                        valData += "<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"showDeleteTab3S3(this);\"><i class=\"fa fa-trash-o\"></i></button>";
                        valData += "</div>";
                    }
                    valData += "</td>";
                    valData += "</tr>";
                });
                valData += "</tbody></table>";
                valData += "<script>";
                valData += "var responsiveHelper_jobdescTab3S3Datatable = undefined;var breakpointDefinition = {tablet: 1024, phone: 480};$('#jobdescTab3S3Datatable').dataTable({\"bSort\":false, \"iDisplayLength\" : 100, \"sDom\": \"<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>\" + \"t\" + \"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>\",\"autoWidth\": true,\"preDrawCallback\": function () {if (!responsiveHelper_jobdescTab3S3Datatable) {responsiveHelper_jobdescTab3S3Datatable = new ResponsiveDatatablesHelper($('#jobdescTab3S3Datatable'), breakpointDefinition); }}, \"rowCallback\": function (nRow) {responsiveHelper_jobdescTab3S3Datatable.createExpandIcon(nRow);}, \"drawCallback\": function (oSettings) {responsiveHelper_jobdescTab3S3Datatable.respond();}, \"aoColumns\": [{ \"sWidth\": \"20px\" }, null, null,null,null,{ \"sWidth\": \"45px\" }]});";
                valData += "<\/script>";
                $("#divBindTab3S3Table").html(valData);
                hideLoader('loaderTab3S3');
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    }
    function showAddEditTab3S3(el, isinsupt) {
        var valData = '', valOptGroup = '';
        $('#pTab3S3ModalHeaderLabel').text(isinsupt);
        $('#pTab3S3ModalCapacityNum').html('');
        $('#pTab3S3ModalSelectYear').val('');
        $('#pTab3S3ModalSelectNegj').html('<option value="">- Сонго -</option>');
        $('#pTab3S3ModalSelectNegj').prop('disabled', true);
        $('#pTab3S3ModalSelectType').val('');
        $('#pTab3S3ModalSelectIndex').html('<option value="">- Сонго -</option>');
        $('#pTab3S3ModalSelectIndex').prop('disabled', true);
        $('#pTab3S3ModalInputDescription').val('');
        $('#pTab3S3ModalSpanCapacity').html('-');
        $('#pTab3S3ModalSpanCapacityBurtgesen').html('-');
        $('#pTab3S3ModalSelectStaff').html('<option value="">- Сонго -</option>');
        $('#pTab3S3ModalSelectStaff').prop('disabled', true);
        if (isinsupt == 'засах') {
            $('#pTab3S3ModalCapacityNum').html($(el).closest('tr').attr('data-capacitynum'));
            $('#pTab3S3ModalSelectYear').val($('#pTab3S3SelectYear option:selected').val());
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetNegjListForDDL",
                data: '{"yr":"' + $('#pTab3S3SelectYear option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    valOptGroup = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        if (value.GAZAR_ID != valOptGroup) {
                            if (valOptGroup != '') valData += '</optgroup>';
                            valData += '<optgroup label="' + value.GAZAR_NAME + '">';
                        }
                        valData += '<option value="' + value.HELTES_ID + '" title="' + value.HELTES_NAME + '">' + value.HELTES_NAMEINIT + '</option>';
                        valOptGroup = value.GAZAR_ID;
                    });
                    $("#pTab3S3ModalSelectNegj").html('<option value="">- Сонго -</option>' + valData);
                    //$("#pTab3S3ModalSelectNegj").prop("disabled", false);
                    $('#pTab3S3ModalSelectNegj').val($(el).closest('tr').find('td:eq(1)').attr('data-id'));
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
            $('#pTab3S3ModalSelectType').val($(el).closest('tr').find('td:eq(2)').attr('data-id'));
            $('#pTab3S3ModalSelectIndex').html('<option value="">- Сонго -</option>');
            for (var i = 1; i <= parseInt($(el).closest('tr').attr('data-capacity')) ; i++) {
                $('#pTab3S3ModalSelectIndex').append('<option>' + i + '</option>');
            }
            $('#pTab3S3ModalSelectIndex').prop('disabled', false);
            $('#pTab3S3ModalSelectIndex').val($(el).closest('tr').attr('data-capacitynum'));
            $('#pTab3S3ModalInputDescription').val($(el).closest('tr').find('td:eq(4)').html());
            $('#pTab3S3ModalSpanCapacity').html($(el).closest('tr').attr('data-capacity'));
            $('#pTab3S3ModalSpanCapacityBurtgesen').html('-');
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"SELECT BR_MAIN_ID1 FROM TBL_BRANCH WHERE BR_ID=' + $(el).closest('tr').find('td:eq(1)').attr('data-id') + ' AND YR=' + $('#pTab3S3SelectYear option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    var valGazarId = data.d;
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/GetStaffListForDDL",
                        data: '{"yr":"' + $("#pTab3S3SelectYear option:selected").val() + '", "gazar":"' + valGazarId + '", "heltes":"' + $(el).closest('tr').find('td:eq(1)').attr('data-id') + '"}',
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
                            $("#pTab3S3ModalSelectStaff").html('<option value="">- Сонго -</option>' + valData);
                            $("#pTab3S3ModalSelectStaff").prop("disabled", false);
                            $('#pTab3S3ModalSelectStaff').val($(el).closest('tr').find('td:eq(3)').attr('data-id'));
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
            $('#pTab3S3ModalSelectYear').prop('disabled', true);
            $('#pTab3S3ModalSelectNegj').prop('disabled', true);
            $('#pTab3S3ModalSelectType').prop('disabled', true);
            $('#pTab3S3ModalSelectIndex').prop('disabled', true);
            //$("#pTab3S3ModalSelectStaff").prop("disabled", true);
        }
    }
    function showDeleteTab3S3(el) {
        $.SmartMessageBox({
            title: "Анхааруулга!",
            content: "Сонгосон ажлын байран дахь албан хаагч устгах уу?",
            buttons: '[Үгүй][Тийм]'
        }, function (ButtonPressed) {
            if (ButtonPressed === "Тийм") {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                    data: '{"qry":"DELETE FROM TBL_JOBCAPACITYNUM_STAFFS WHERE YR=' + $('#pTab3S3SelectYear option:selected').val() + ' AND BR_ID=' + $(el).closest('tr').find('td:eq(1)').attr('data-id') + ' AND JOBTYPE_ID=' + $(el).closest('tr').find('td:eq(2)').attr('data-id') + ' AND NUM=' + $(el).closest('tr').attr('data-capacitynum') + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        dataBindTab3S3DataTable();
                        smallBox('Сонгосон ажлын байран дахь ажилтан', 'Амжилттай устлаа...', '#659265', 3000);
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
    $('#pTab3S3ModalSelectYear').change(function () {
        var valData = '', valOptGroup = '';
        if ($('#pTab3S3ModalSelectYear option:selected').val() == "") {
            $("#pTab3S3ModalSelectNegj").html("<option selected value=\"\">- Сонго -</option>");
            $("#pTab3S3ModalSelectNegj").prop("disabled", true);
            $('#pTab3S3ModalSelectIndex').html('<option value="">- Сонго -</option>');
            $('#pTab3S3ModalSelectIndex').prop('disabled', true);
            $("#pTab3S3ModalSelectStaff").html("<option selected value=\"\">- Сонго -</option>");
            $("#pTab3S3ModalSelectStaff").prop("disabled", true);
        }
        else {
            $("#pTab3S3ModalSelectNegj").prop("disabled", true);
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/GetNegjListForDDL",
                data: '{"yr":"' + $('#pTab3S3ModalSelectYear option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    valData = '';
                    valOptGroup = '';
                    $($.parseJSON(data.d)).each(function (index, value) {
                        if (value.GAZAR_ID != valOptGroup) {
                            if (valOptGroup != '') valData += '</optgroup>';
                            valData += '<optgroup label="' + value.GAZAR_NAME + '">';
                        }
                        valData += '<option value="' + value.HELTES_ID + '" title="' + value.HELTES_NAME + '">' + value.HELTES_NAMEINIT + '</option>';
                        valOptGroup = value.GAZAR_ID;
                    });
                    $("#pTab3S3ModalSelectNegj").html('<option value="">- Сонго -</option>' + valData);
                    $("#pTab3S3ModalSelectNegj").prop("disabled", false);
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
        }
        pTab3S3ModalOronTooNumbers();
    });
    $('#pTab3S3ModalSelectNegj').change(function () {
        var valData = '', valOptGroup = '';
        if ($('#pTab3S3ModalSelectNegj option:selected').val() == "") {
            $("#pTab3S3ModalSelectStaff").html("<option selected value=\"\">- Сонго -</option>");
            $("#pTab3S3ModalSelectStaff").prop("disabled", true);
        }
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"SELECT BR_MAIN_ID1 FROM TBL_BRANCH WHERE BR_ID=' + $('#pTab3S3ModalSelectNegj option:selected').val() + ' AND YR=' + $('#pTab3S3ModalSelectYear option:selected').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    var valGazarId = data.d;
                    globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/GetStaffListForDDL",
                        data: '{"yr":"' + $("#pTab3S3ModalSelectYear option:selected").val() + '", "gazar":"' + valGazarId + '", "heltes":"' + $('#pTab3S3ModalSelectNegj option:selected').val() + '"}',
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
                            $("#pTab3S3ModalSelectStaff").html('<option value="">- Сонго -</option>' + valData);
                            $("#pTab3S3ModalSelectStaff").prop("disabled", false);
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
        pTab3S3ModalOronTooNumbers();
    });
    $('#pTab3S3ModalSelectType').change(function () {
        pTab3S3ModalOronTooNumbers();
    });
    function pTab3S3ModalOronTooNumbers() {
        if ($("#pTab3S3ModalSelectYear option:selected").val() != '' && $("#pTab3S3ModalSelectNegj option:selected").val() != '' && $("#pTab3S3ModalSelectType option:selected").val() != '') {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                data: '{"qry":"SELECT COUNT(1) FROM TBL_JOBCAPACITYNUM WHERE YR=' + $("#pTab3S3ModalSelectYear option:selected").val() + ' AND BR_ID=' + $("#pTab3S3ModalSelectNegj option:selected").val() + ' AND JOBTYPE_ID=' + $("#pTab3S3ModalSelectType option:selected").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    if (data.d != '0') {
                        globalAjaxVar = $.ajax({
                            type: "POST",
                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                            data: '{"qry":"SELECT (SELECT NVL(MAX(NUM),0) FROM TBL_JOBCAPACITYNUM WHERE YR=' + $("#pTab3S3ModalSelectYear option:selected").val() + ' AND BR_ID=' + $("#pTab3S3ModalSelectNegj option:selected").val() + ' AND JOBTYPE_ID=' + $("#pTab3S3ModalSelectType option:selected").val() + ')||\'~\'||(SELECT COUNT(1)  FROM TBL_JOBCAPACITYNUM_STAFFS WHERE YR=' + $("#pTab3S3ModalSelectYear option:selected").val() + ' AND BR_ID=' + $("#pTab3S3ModalSelectNegj option:selected").val() + ' AND JOBTYPE_ID=' + $("#pTab3S3ModalSelectType option:selected").val() + ') FROM DUAL"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                $('#pTab3S3ModalSpanCapacity').html(data.d.split('~')[0]);
                                $('#pTab3S3ModalSpanCapacityBurtgesen').html(data.d.split('~')[1]);
                                $('#pTab3S3ModalSelectIndex').html('<option value="">- Сонго -</option>');
                                for (var i = 1; i <= parseInt(data.d.split('~')[0]) ; i++) {
                                    $('#pTab3S3ModalSelectIndex').append('<option>'+i+'</option>');
                                }
                                $('#pTab3S3ModalSelectIndex').prop('disabled', false);
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
                        $('#pTab3S3ModalSpanCapacity').html('-');
                        $('#pTab3S3ModalSpanCapacityBurtgesen').html('-');
                        $('#pTab3S3ModalSelectIndex').html('<option value="">- Сонго -</option>');
                        $('#pTab3S3ModalSelectIndex').prop('disabled', true);
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
            $('#pTab3S3ModalSpanCapacity').html('-');
            $('#pTab3S3ModalSpanCapacityBurtgesen').html('-');
            $('#pTab3S3ModalSelectIndex').html('<option value="">- Сонго -</option>');
            $('#pTab3S3ModalSelectIndex').prop('disabled',true);
        }

        
    }
    $('#pTab3S3ModalForm').bootstrapValidator({
        fields: {
            pTab3S3ModalSelectYear: {
                group: '.col-md-3',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab3S3ModalSelectNegj: {
                group: '.col-md-4',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab3S3ModalSelectType: {
                group: '.col-md-5',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab3S3ModalSelectIndex: {
                group: '.col-md-3',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            },
            pTab3S3ModalInputDescription: {
                group: '.col-md-9',
                validators: {
                    stringLength: {
                        max: 250,
                        message: 'Уртдаа 250 тэмдэгт авна'
                    }
                }
            },
            pTab3S3ModalSelectStaff: {
                group: '.col-md-9',
                validators: {
                    notEmpty: {
                        message: 'Сонгоно уу'
                    }
                }
            }
        },
        onSuccess: function (e, data) {
            e.preventDefault();
            if ($('#pTab3S3ModalHeaderLabel').text() == 'нэмэх') {
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                    data: '{"qry":"SELECT (SELECT MAX(NUM) FROM TBL_JOBCAPACITYNUM WHERE YR=' + $("#pTab3S3ModalSelectYear option:selected").val() + ' AND BR_ID=' + $("#pTab3S3ModalSelectNegj option:selected").val() + ' AND JOBTYPE_ID=' + $("#pTab3S3ModalSelectType option:selected").val() + ')||\'~\'||(SELECT COUNT(1) FROM TBL_JOBCAPACITYNUM_STAFFS WHERE YR=' + $("#pTab3S3ModalSelectYear option:selected").val() + ' AND BR_ID=' + $("#pTab3S3ModalSelectNegj option:selected").val() + ' AND JOBTYPE_ID=' + $("#pTab3S3ModalSelectType option:selected").val() + ') FROM DUAL"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        if (parseInt(data.d.split('~')[0]) > parseInt(data.d.split('~')[1])) {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                data: '{"qry":"SELECT COUNT(1) FROM TBL_JOBCAPACITYNUM_STAFFS WHERE YR=' + $("#pTab3S3ModalSelectYear option:selected").val() + ' AND BR_ID=' + $("#pTab3S3ModalSelectNegj option:selected").val() + ' AND JOBTYPE_ID=' + $("#pTab3S3ModalSelectType option:selected").val() + ' AND ST_ID=' + $("#pTab3S3ModalSelectStaff option:selected").val() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    if (data.d == '0') {
                                        globalAjaxVar = $.ajax({
                                            type: "POST",
                                            url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                            data: '{"qry":"SELECT COUNT(1) FROM TBL_JOBCAPACITYNUM_STAFFS WHERE YR=' + $("#pTab3S3ModalSelectYear option:selected").val() + ' AND BR_ID=' + $("#pTab3S3ModalSelectNegj option:selected").val() + ' AND JOBTYPE_ID=' + $("#pTab3S3ModalSelectType option:selected").val() + ' AND ST_ID!=' + $("#pTab3S3ModalSelectStaff option:selected").val() + ' AND NUM=' + $("#pTab3S3ModalSelectIndex option:selected").val() + '"}',
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function (data) {
                                                if (data.d == '0') {
                                                    globalAjaxVar = $.ajax({
                                                        type: "POST",
                                                        url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                                        data: '{"qry":"INSERT INTO TBL_JOBCAPACITYNUM_STAFFS (YR, BR_ID, JOBTYPE_ID, ST_ID, NUM, DESCRIPTION) VALUES (' + $("#pTab3S3ModalSelectYear option:selected").val() + ', ' + $("#pTab3S3ModalSelectNegj option:selected").val() + ', ' + $("#pTab3S3ModalSelectType option:selected").val() + ', ' + $('#pTab3S3ModalSelectStaff option:selected').val() + ', ' + $('#pTab3S3ModalSelectIndex option:selected').val() + ', \'' + replaceDisplayToDatabase($.trim($('#pTab3S3ModalInputDescription').val())) + '\')"}',
                                                        contentType: "application/json; charset=utf-8",
                                                        dataType: "json",
                                                        success: function () {
                                                            dataBindTab3S3DataTable();
                                                            $('#pTab3S3Modal').modal('hide');
                                                            smallBox('Ажлын байрны орон тоо', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                                                    alert($('#pTab3S3ModalSelectYear option:selected').val() + ' оны ' + $('#pTab3S3ModalSelectNegj option:selected').text() + '-ийн ' + $('#pTab3S3ModalSelectType option:selected').text() + ' ажлын байрны ' + $('#pTab3S3ModalSelectIndex option:selected').val() + '-р индекс дээр ажилтан бүртгэгдсэн байна!');
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
                                        alert('Сонгосон албан хаагч ' + $("#pTab3S3ModalSelectYear option:selected").val() + ' оны ажлын байранд бүртгэгдсэн байна!');
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
                            alert($('#pTab3S3ModalSelectYear option:selected').val() + ' оны ' + $('#pTab3S3ModalSelectNegj option:selected').text() + '-ийн ' + $('#pTab3S3ModalSelectType option:selected').text() + ' дээр орон тоо дүүрсэн байна!');
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
                globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                    data: '{"qry":"SELECT COUNT(1) FROM TBL_JOBCAPACITYNUM_STAFFS WHERE YR=' + $("#pTab3S3ModalSelectYear option:selected").val() + ' AND BR_ID=' + $("#pTab3S3ModalSelectNegj option:selected").val() + ' AND JOBTYPE_ID=' + $("#pTab3S3ModalSelectType option:selected").val() + ' AND ST_ID!=' + $("#pTab3S3ModalSelectStaff option:selected").val() + ' AND NUM=' + $("#pTab3S3ModalSelectIndex option:selected").val() + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        if (data.d == '0') {
                            globalAjaxVar = $.ajax({
                                type: "POST",
                                url: "../ws/ServiceMain.svc/OracleExecuteNonQuery",
                                data: '{"qry":"UPDATE TBL_JOBCAPACITYNUM_STAFFS SET ST_ID=' + $("#pTab3S3ModalSelectStaff option:selected").val() + ', DESCRIPTION=\'' + replaceDisplayToDatabase($.trim($('#pTab3S3ModalInputDescription').val())) + '\' WHERE YR=' + $("#pTab3S3ModalSelectYear option:selected").val() + ' AND BR_ID=' + $("#pTab3S3ModalSelectNegj option:selected").val() + ' AND JOBTYPE_ID=' + $("#pTab3S3ModalSelectType option:selected").val() + ' AND NUM=' + $("#pTab3S3ModalSelectIndex option:selected").val() + '"}',
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function () {
                                    dataBindTab3S3DataTable();
                                    $('#pTab3S3Modal').modal('hide');
                                    smallBox('Ажлын байрны орон тоо', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
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
                            alert($('#pTab3S3ModalSelectYear option:selected').val() + ' оны ' + $('#pTab3S3ModalSelectNegj option:selected').text() + '-ийн ' + $('#pTab3S3ModalSelectType option:selected').text() + ' ажлын байрны ' + $('#pTab3S3ModalSelectIndex option:selected').val() + '-р индекс дээр ажилтан бүртгэгдсэн байна!');
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
    });
</script>