<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tevalmnth.aspx.cs" Inherits="LMWebApp.pg.tevalmnth" %>
<style>
    .reports {
        font: 11pt arial, sans-serif;
    }
</style>
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    <h1 class="page-title txt-color-blueDark">
    <i class="fa-fw fa fa-home"></i> > ХЯНАЛТ ШИНЖИЛГЭЭ ҮНЭЛГЭЭНИЙ ТАЙЛАН /САР/
    </h1>
</div>
<section id="widget-grid">
    <div class="row">
        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
            <div style="margin:0 auto; display:block; overflow:hidden; width:210mm; margin-bottom: 3px">
                <div style="width:70%; float:left;">
                    <div style="width:60px; float:left; margin-right:5px;">
                        <select name="pTab1SelectYr" id="pTab1SelectYr" runat="server" class="form-control" style="padding:1px"></select>
                    </div>
                    <div style="width:65px; float:left; margin-right:10px;">
                        <select name="pTab1SelectMnth" id="pTab1SelectMnth" runat="server" class="form-control" style="padding:1px">
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
                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="left" data-original-title="Word татах" onclick="exportWord('#divpTab1', 'ХШҮ-ний тайлан')">
                            <i class="fa fa-file-word-o"></i>
                        </a>
                        <a href="javascript:void(0);" class="btn btn-default" rel="tooltip" data-placement="right" data-original-title="Хэвлэх" onclick="PrintElem('#divpTab1')">
                            <i class="fa fa-print"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div id="loaderTab1" class="search-background">
                <img width="64" height="" src="img/loading.gif"/>
                <h2 style="width:100%; display:block; overflow:hidden; padding:20px 0 0 0; color: #fff; padding-top:0px; margin-top:0px;">Уншиж байна !</h2>
            </div>
            <div id="divpTab1" class="reports" style="margin:0 auto; width:210mm;">
                <p style="font-size:11pt; text-align:center; line-height: 1.5; text-transform: uppercase;"><b>САНГИЙН ЯАМНЫ ҮЙЛ АЖИЛЛАГААНД ХИЙСЭН<br />ХЯНАЛТ-ШИНЖИЛГЭЭ, ҮНЭЛГЭЭ<br /><span id="evalHeadYear" runat="server">0000</span> ОНЫ <span id="evalHeadInterval" runat="server">0-Р САР</span></b></p>
                <br />
                <br />
                <p style="font-size:12pt; text-align:left; line-height: 1.5; color:#ff6a00;"><b><u>САНГИЙН ЯАМНЫ ҮР ДҮНГИЙН БИЕЛЭЛТ</u></b></p>
                <p style="font-size:12pt; text-align:justify; line-height: 1.5;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Сангийн яамны дотоод бүтцийн нэгж тус бүрийн үр дүнгийн биелэлтийг <span id="evalBodyYear1t1" runat="server" style="font-weight:bold;">0000</span> оны <span id="evalBodyInterval1t1" runat="server" style="font-weight:bold;">0-р сард</span> <b>“Яамны дотоод бүтцийн нэгжүүдийн үйл ажиллагаанд хяналт-шинжилгээ, үнэлгээ хийх журам”</b> -д тусгагдсан дараах <b>5</b>-н шалгуур үзүүлэлтээр үнэлэв.
                </p>
                <p style="font-size:8pt; text-align:left;"><b>Хүснэгт 1. Хяналт-шинжилгээ, үнэлгээний шалгуур үзүүлэлт</b></p>
                <table style="border: 1px solid grey; border-collapse: collapse; font: 10pt arial, sans-serif; width: 85%; margin:0 auto;">
                    <thead>
                        <tr style="color:#FFF; background-color:grey; -webkit-print-color-adjust: exact; ">
                            <td colspan="2" style="text-align:center; vertical-align:middle; padding:3px;">Үзүүлэлт</td>
                            <td style="text-align:center; vertical-align:middle; padding:3px;">Оноо</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="background-color:#f9f9f9; -webkit-print-color-adjust: exact;">
                            <td rowspan="2" style="text-align:center; border: 1px solid grey; padding:3px; width:160px; vertical-align:top;">Нэг. Газрын үндсэн ажлын хэрэгжилтийн үнэлгээ</td>
                            <td style="text-align:left; border: 1px solid grey; font-style:italic; padding:3px;">Сарын төлөвлөгөөний биелэлт</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">30</td>
                        </tr>
                        <tr>
                            <td style="text-align:left; border: 1px solid grey; font-style:italic; padding:3px;">Үйл ажиллагааны ил тод байдал</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">5</td>
                        </tr>
                        <tr>
                            <td rowspan="3" style="text-align:center; border: 1px solid grey; padding:3px; width:160px; vertical-align:top;">Хоёр. Хамт олны хариуцлагын үнэлгээ</td>
                            <td style="text-align:left; border: 1px solid grey; font-style:italic; padding:3px;">Ажлын цаг ашиглалт</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">10</td>
                        </tr>
                        <tr style="background-color:#f9f9f9; -webkit-print-color-adjust: exact;">
                            <td style="text-align:left; border: 1px solid grey; font-style:italic; padding:3px;">Албан бичгийн шийдвэрлэлт</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">10</td>
                        </tr>
                        <tr>
                            <td style="text-align:left; border: 1px solid grey; font-style:italic; padding:3px;">Мэдээллийн цагийн оролцоо</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">5</td>
                        </tr>
                        <tr style="background-color:#f9f9f9; -webkit-print-color-adjust: exact;">
                            <td colspan="2" style="text-align:center; border: 1px solid grey; font-weight:bold; padding:3px;">Нийт</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">60</td>
                        </tr>
                    </tbody>
                </table>
                <br />
                <p style="font-size:12pt; text-align:justify; line-height: 1.5;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Сангийн яамны үйл ажиллагааны үр дүнгийн биелэлт <span id="evalBodyInterval2t1" runat="server" style="font-weight:bold;">0-р сар</span> байдлаар <span id="evalBodyAgreementPer1" runat="server" style="font-weight:bold;">00.0</span> хувьтай байсан бөгөөд үр өгөөжтэй ажилласан газарт <span id="evalBodyAgreementHighPerGazarList1" runat="server">XXX</span> багтсаныг Хүснэгт 2-оос харж болно. <span id="evalBodyAgreementLowPerGazarList1" runat="server">XXX</span> бусдаасаа бага үнэлэгдсэн байна.
                </p>
                <p style="font-size:8pt; text-align:left;"><b>Хүснэгт 2. Сангийн яамны үр дүнгийн биелэлт /<span id="evalBodyYear3t1" runat="server" style="font-weight:bold;">0000</span> оны <span id="evalBodyInterval3t1" runat="server" style="font-weight:bold;">0-р сар</span>/</b></p>
                <table style="border: 1px solid grey; border-collapse: collapse; font: 10pt arial, sans-serif; width: 100%; margin:0 auto;">
                    <thead>
                        <tr style="color:#FFF; background-color:grey; -webkit-print-color-adjust: exact; ">
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:30px;">№</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px;">Газар</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:74px;">Нийт авах оноо</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:81px;">Нийт авсан оноо</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:50px;">Эзлэх хувь</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:50px;">Байр</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="background-color:#f9f9f9; -webkit-print-color-adjust: exact;">
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">1</td>
                            <td style="text-align:left; border: 1px solid grey; padding:3px;">Төсвийн бодлого, төлөвлөлтийн газар</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">00.0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">00.0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">00.0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">I</td>
                        </tr>
                        <tr>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">1</td>
                            <td style="text-align:left; border: 1px solid grey; padding:3px;">Эдийн засгийн бодлогын газар</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">00.0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">00.0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">00.0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">I</td>
                        </tr>
                        <tr style="background-color:#f9f9f9; -webkit-print-color-adjust: exact;">
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">1</td>
                            <td style="text-align:left; border: 1px solid grey; padding:3px;">Хууль, худалдан авах ажиллагааны бодлогын газар</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">00.0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">00.0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">00.0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">I</td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr style="background-color:#f9f9f9; -webkit-print-color-adjust: exact;">
                            <th style="text-align:center; border: 1px solid grey; padding:3px;"></th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">Яамны дундаж</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">00.0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">00.0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">00.0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;"></th>
                        </tr>
                    </tfoot>
                </table>
                <br />
                <p style="font-size:8pt; text-align:left;"><b>Зураг 1. Сангийн яамны үр дүнгийн биелэлт /<span id="evalBodyYear4t1" runat="server" style="font-weight:bold;">0000</span>-<span id="evalBodyYear4t2" runat="server" style="font-weight:bold;"> оноор</span>/</b></p>
                <div style="display:block; width:100%; height:170px;">
                    <div id="chart1t1Div" style="float:left; width:65%;">
                        
                    </div>
                    <div style="float:right; width:35%; font-size:11pt; text-align:justify; line-height: 1.5;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Сангийн яамны үйл ажиллагааны үр дүнгийн биелэлтийг өнгөрөгч оны мөн үетэй харьцуулахад <span id="evalBodyUzuuleltPunkt1t1" runat="server">0.0</span> пунктээр <span id="evalBodyUsultPunkt1t1" runat="server">[өссөн/буурсан]</span> үзүүлэлттэй  байгааг Зураг 1-т харуулсан. </div>
                </div>
                <br />
                <p style="font-size:8pt; text-align:left;"><b>Зураг 2. Хяналт-шинжилгээ, үнэлгээний шалгуур үзүүлэлтийн өсөлт, бууралт /<span id="evalBodyInterval5t1" runat="server" style="font-weight:bold;">0-р сар</span>тай харьцуулахад/</b></p>
                <div style="display:block; width:100%; height:170px;">
                    <div id="chart2t1Div" style="float:left; width:65%;">
                        
                    </div>
                    <div style="float:right; width:35%; font-size:11pt; text-align:justify; line-height: 1.5;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Хяналт-шинжилгээ, үнэлгээний шалгуур үзүүлэлтийн хувьд ажлын цаг ашиглалт <span id="evalBodyIrts1" runat="server">0.0</span>, үйл ажиллагааны ил тод байдал <span id="evalBodyIlTod1" runat="server">0.0</span>, сарын төлөвлөгөөний биелэлт <span id="evalBodyMonthPlan1" runat="server">0.0</span> албан бичгийн шийдвэрлэлт <span id="evalBodyLetter1" runat="server">0.0</span> пунктээр өмнөх сартай харьцуулахад тус тус өссөн байна.</div>
                </div>
                <br />
                <p style="font-size:12pt; text-align:left; line-height: 1.5; color:#ff6a00;"><b><u>САРЫН ҮЙЛ АЖИЛЛАГААНЫ ТӨЛӨВЛӨГӨӨНИЙ БИЕЛЭЛТ</u> (30 оноо)</b></p>
                <p style="font-size:12pt; text-align:justify; line-height: 1.5;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Сангийн яамны <span id="pTab1PlanmnthYr1Span" runat="server">0000</span> оны <span id="pTab1PlanmnthMnth1Span" runat="server">0</span>-р сард <span id="pTab1PlanmnthPlanCount" runat="server" style="font-weight:bold;">0</span> ажил төлөвлөн гүйцэтгэхэд тавьсан зорилтдоо бүрэн хүрсэн, гол үр дүн гарч байгаа ажил <span id="pTab1PlanmnthHighEvalCount" runat="server" style="font-weight:bold;">0</span>, тухайн зорилтыг хэрэгжүүлэх бэлтгэл бүрэн хийгдсэн <span id="pTab1PlanmnthMediumEvalCount" runat="server" style="font-weight:bold;">0</span>, хэрэгжилт дутуу <span id="pTab1PlanmnthLowEvalCount" runat="server" style="font-weight:bold;">0</span> ажил байгаа бөгөөд тодорхой шалтгааны улмаас хойшлогдсон <span id="pTab1PlanmnthNoneEvalCount" runat="server" style="font-weight:bold;">0</span> ажил байна.
                </p>
                <br />
                <p style="font-size:8pt; text-align:left;"><b>Хүснэгт  3. Газруудын үйл ажиллагааны биелэлт</b></p>
                <table style="border: 1px solid grey; border-collapse: collapse; font: 10pt arial, sans-serif; width: 100%; margin:0 auto;">
                    <thead>
                        <tr style="color:#FFF; background-color:grey; -webkit-print-color-adjust: exact; ">
                            <th rowspan="2" style="text-align:center; vertical-align:middle; padding:3px; width:30px;">№</th>
                            <th rowspan="2" style="text-align:center; vertical-align:middle; padding:3px;">Газар</th>
                            <th rowspan="2" style="text-align:center; vertical-align:middle; padding:3px; width:52px;">Ажлын тоо</th>
                            <th colspan="9" style="text-align:center; vertical-align:middle; padding:3px;">Төлөвлөгөөний биелэлтийн хувь</th>
                            <th rowspan="2" style="text-align:center; vertical-align:middle; padding:3px; width:61px;">Биелэлт хувь</th>
                            <th rowspan="2" style="text-align:center; vertical-align:middle; padding:3px; width:40px;">Оноо</th>
                        </tr>
                        <tr style="color:#FFF; background-color:grey; -webkit-print-color-adjust: exact; ">
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">100%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">90%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">80%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">70%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">50%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">30%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">10%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">0%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:71px;">Үнэлээгүй</th>
                        </tr>
                    </thead>
                    <tbody id="pTab1PlanmnthTbody1" runat="server"></tbody>
                    <tfoot id="pTab1PlanmnthTfoot1" runat="server"></tfoot>
                </table>
                <br />
                <p style="font-size:12pt; text-align:justify; line-height: 1.5;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Хүснэгт 3-аас үзэхэд Сангийн яамны үйл ажиллагааны төлөвлөгөөний биелэлт <span id="pTab1PlanmnthMnth2Span" runat="server" style="font-weight:bold;">0</span>-р сард <span id="pTab1PlanmnthTotalPer1Span" runat="server" style="font-weight:bold;">0</span> хувьтай байсан бөгөөд <span id="pTab1PlanmnthLast3HighEvalGazarList1Span" runat="server">XXX</span> хамгийн өндөр үйл ажиллагааны төлөвлөгөөний биелэлттэй газрууд байлаа.<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Харин үйл ажиллагааны төлөвлөгөөний биелэлтээр <span id="pTab1PlanmnthLast3LowEvalGazarList1Span" runat="server">XXX</span> бусад газруудаас доогуур үнэлэгджээ.
                </p>
                <br />
                <p style="font-size:8pt; text-align:left;"><b>Зураг 3. Газруудын үйл ажиллагааны төлөвлөгөөний биелэлт /<span id="pTab1PlanmnthMnth3Span" runat="server" style="font-weight:bold;">0</span>-р сард/</b></p>
                <div style="display:block; width:100%; height:170px;">
                    <div id="chart3t1Div" style="float:left; width:65%;">

                        <div id="flotcontainer" class="chart-large has-legend-unique"></div>
                    </div>
                    <div style="float:right; width:35%; font-size:11pt; text-align:justify; line-height: 1.5;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Үйл ажиллагааны төлөвлөгөөний <span id="pTab1PlanmnthMnth4Span" runat="server">0</span>-р сарын биелэлтийг өнгөрөгч сартай харьцуулахад газрууд сайжирсан үзүүлэлттэй байгааг Зураг 3-аас харж болно.</div>
                </div>
                <br />
                <p style="font-size:8pt; text-align:left;"><b>Зураг 4. Сангийн яамны үйл ажиллагааны төлөвлөгөөний биелэлт /сар, жилээр/</b></p>
                <div style="display:block; width:100%; height:170px;">
                    <div id="chart4t1Div" style="float:left; width:65%;">
                        
                    </div>
                    <div style="float:right; width:35%; font-size:11pt; text-align:justify; line-height: 1.5;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Сангийн яамны үйл ажиллагаа өмнөх сараас 3.2 пунктээр өссөн байгааг Зураг 4-т үзүүлсэн.<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Газрууд өгсөн зөвлөмжийг сайн авч  хэрэгжүүлж, өдөр тутмын ажилдаа тусгаж байгаа нь харагдаж байна.</div>
                </div>
                <br />
                <p style="font-size:12pt; text-align:left; line-height: 1.5; color:#ff6a00;"><b><u>ЖИЛИЙН ТӨЛӨВЛӨГӨӨНИЙ БИЕЛЭЛТ </u> (15 оноо)</b></p>
                <p style="font-size:12pt; text-align:justify; line-height: 1.5;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Яамны <span id="evalBodyYear10t1" runat="server">0000</span> оны үйл ажиллагааны төлөвлөгөөний биелэлтийн байдлыг <span id="evalBodyYear10t2" runat="server">0000</span> оны <span id="evalBodyInterval10t1" runat="server">0-р сар</span>ын байдлаар үнэлэхдээ 1-<span id="evalBodyInterval10t2" runat="server">0-р сар</span>ын газруудын батлагдсан төлөвлөгөө, түүний биелэлтэд үндэслэн дүгнэсэн. Яамны хэмжээнд <span id="evalBodyYear10t3" runat="server">0000</span> онд нийт <span id="evalBodyPlanYrCnt1" runat="server" style="font-weight:bold;">0</span> <b>ажил</b>  төлөвлөснөөс <span id="evalBodyInterval10t3" runat="server" style="font-weight:bold;">0-р сар</span><b>ын байдлаар</b> төлөвлөгөөний биелэлтийн дундаж <span id="evalBodyPer10t1" runat="server" style="font-weight:bold;">0.0</span> хувьтай байна.
                </p>
                <br />
                <p style="font-size:8pt; text-align:left;"><b>Хүснэгт 4. Газруудын жилийн төлөвлөгөөний биелэлт</b></p>
                <table style="border: 1px solid grey; border-collapse: collapse; font: 10pt arial, sans-serif; width: 100%; margin:0 auto;">
                    <thead>
                        <tr style="color:#FFF; background-color:grey; -webkit-print-color-adjust: exact; ">
                            <th rowspan="2" style="text-align:center; vertical-align:middle; padding:3px; width:30px;">№</th>
                            <th rowspan="2" style="text-align:center; vertical-align:middle; padding:3px;">Газар</th>
                            <th rowspan="2" style="text-align:center; vertical-align:middle; padding:3px; width:52px;">Ажлын тоо</th>
                            <th colspan="9" style="text-align:center; vertical-align:middle; padding:3px;">Төлөвлөгөөний биелэлтийн хувь</th>
                            <th rowspan="2" style="text-align:center; vertical-align:middle; padding:3px; width:61px;">Биелэлт хувь</th>
                            <th rowspan="2" style="text-align:center; vertical-align:middle; padding:3px; width:40px;">Оноо</th>
                        </tr>
                        <tr style="color:#FFF; background-color:grey; -webkit-print-color-adjust: exact; ">
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">100%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">90%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">80%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">70%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">50%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">30%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">10%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">0%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:71px;">Үнэлээгүй</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="background-color:#f9f9f9; -webkit-print-color-adjust: exact;">
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">1</td>
                            <td style="text-align:left; border: 1px solid grey; padding:3px;">ТБТГ</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0.0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0.0</td>
                        </tr>
                        <tr>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">2</td>
                            <td style="text-align:left; border: 1px solid grey; padding:3px;">ЭЗБГ</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0.0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0.0</td>
                        </tr>
                    </tbody>
                    <tfoot>                        
                        <tr style="background-color:#f9f9f9; -webkit-print-color-adjust: exact;">
                            <th style="text-align:center; border: 1px solid grey; padding:3px;"></th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">НИЙТ</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0.0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0.0</th>
                        </tr>
                    </tfoot>
                </table>
                <br />
                <p style="font-size:12pt; text-align:left; line-height: 1.5; color:#ff6a00;"><b><u>ЧИГ ҮҮРГИЙН ШАЛГУУР ҮЗҮҮЛЭЛТИЙН БИЕЛЭЛТ </u> (5 оноо)</b></p>
                <p style="font-size:12pt; text-align:justify; line-height: 1.5;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Яамны дотоод бүтцийн нэгжүүдийн үйл ажиллагаанд хяналт-шинжилгээ хийх, үр дүнг үнэлэх журмын Гуравдугаар хавсралтаар батлагдсан “Дотоод бүтцийн нэгжүүдийн чиг үүргийн шалгуур үзүүлэлт”-үүдэд тус журамд заасны дагуу <span id="evalBodyYear11t1" runat="server">0000</span> оны <span id="evalBodyInterval11t1" runat="server">0-р сар</span>ын байдлаар хяналт-шинжилгээ хийж, үр дүнд үнэлгээ өгөхөд биелэлт <span id="evalBodyPer11t1" runat="server" style="font-weight:bold;">0.0</span> хувьтай байна.
                </p>
                <br />
                <p style="font-size:8pt; text-align:left;"><b>Хүснэгт 5. Чиг үүргийн шалгуур үзүүлэлтийн биелэлт</b></p>
                <table style="border: 1px solid grey; border-collapse: collapse; font: 10pt arial, sans-serif; width: 100%; margin:0 auto;">
                    <thead>
                        <tr style="color:#FFF; background-color:grey; -webkit-print-color-adjust: exact; ">
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:30px;">№</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px;">Газар</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:50px;">Хувь</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:50px;">Оноо</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="background-color:#f9f9f9; -webkit-print-color-adjust: exact;">
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">1</td>
                            <td style="text-align:left; border: 1px solid grey; padding:3px;">Төсвийн бодлого, төлөвлөлтийн газар</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0.0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0.0</td>
                        </tr>
                        <tr>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">2</td>
                            <td style="text-align:left; border: 1px solid grey; padding:3px;">Эдийн засгийн бодлогын газар</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0.0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0.0</td>
                        </tr>
                    </tbody>
                    <tfoot>                        
                        <tr style="background-color:#f9f9f9; -webkit-print-color-adjust: exact;">
                            <th style="text-align:center; border: 1px solid grey; padding:3px;"></th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">НИЙТ</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0.0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0.0</th>
                        </tr>
                    </tfoot>
                </table>
                <br />
                <p style="font-size:12pt; text-align:left; line-height: 1.5; color:#ff6a00;"><b><u>САЙД, ТНБД-ЫН ТУШААЛЫН БИЕЛЭЛТ </u> (5 оноо)</b></p>
                <p style="font-size:12pt; text-align:justify; line-height: 1.5;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“Яамны дотоод бүтцийн нэгжүүдийн үйл ажиллагаанд хяналт-шинжилгээ хийх, үр дүнг үнэлэх журам”-нд Сайд, Төрийн нарийн бичгийн даргын тушаалын биелэлтэд улирал бүр хяналт-шинжилгээ, үнэлгээ хийхээр заагдсан байдаг. Уг журмын дагуу Сангийн сайд болон Төрийн нарийн бичгийн даргын <span id="evalBodyYear12t1" runat="server">0000</span> оны <span id="evalBodyInterval12t1" runat="server">0-р сар</span>д баталсан болон мөн тус улиралд тайлагнахаар хугацаа заагдсан тушаалын хэрэгжилтэд хяналт-шинжилгээ, үнэлгээ хийв.<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Хяналт-шинжилгээ, үнэлгээнд Сангийн сайдын <span id="evalBodyTushaalSaidCnt12t1" runat="server" style="font-weight:bold;">0</span> тушаал болон Төрийн нарийн бичгийн даргын <span id="evalBodyTushaalTNBDCnt12t1" runat="server" style="font-weight:bold;">0</span> тушаал, нийт  <span id="evalBodyTushaalTotalCnt12t1" runat="server" style="font-weight:bold;">0</span> тушаалаар өгөгдсөн үүрэг, даалгаврын хэрэгжилт хамрагдсан бөгөөд биелэлт <span id="evalBodyPer12t1" runat="server" style="font-weight:bold;">0.0</span> хувьтай байна.
                </p>
                <br />
                <p style="font-size:8pt; text-align:left;"><b>Хүснэгт 6. Тушаалын биелэлт</b></p>
                <table style="border: 1px solid grey; border-collapse: collapse; font: 10pt arial, sans-serif; width: 100%; margin:0 auto;">
                    <thead>
                        <tr style="color:#FFF; background-color:grey; -webkit-print-color-adjust: exact; ">
                            <th rowspan="2" style="text-align:center; vertical-align:middle; padding:3px; width:30px;">№</th>
                            <th rowspan="2" style="text-align:center; vertical-align:middle; padding:3px;">Газар</th>
                            <th rowspan="2" style="text-align:center; vertical-align:middle; padding:3px; width:73px;">Тушаалын тоо</th>
                            <th colspan="9" style="text-align:center; vertical-align:middle; padding:3px;">Төлөвлөгөөний биелэлтийн хувь</th>
                            <th rowspan="2" style="text-align:center; vertical-align:middle; padding:3px; width:61px;">Биелэлт хувь</th>
                            <th rowspan="2" style="text-align:center; vertical-align:middle; padding:3px; width:40px;">Оноо</th>
                        </tr>
                        <tr style="color:#FFF; background-color:grey; -webkit-print-color-adjust: exact; ">
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">100%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">90%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">80%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">70%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">50%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">30%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">10%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">0%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:71px;">Үнэлээгүй</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="background-color:#f9f9f9; -webkit-print-color-adjust: exact;">
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">1</td>
                            <td style="text-align:left; border: 1px solid grey; padding:3px;">ТБТГ</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0.0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0.0</td>
                        </tr>
                        <tr>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">2</td>
                            <td style="text-align:left; border: 1px solid grey; padding:3px;">ЭЗБГ</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0.0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0.0</td>
                        </tr>
                    </tbody>
                    <tfoot>                        
                        <tr style="background-color:#f9f9f9; -webkit-print-color-adjust: exact;">
                            <th style="text-align:center; border: 1px solid grey; padding:3px;"></th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">НИЙТ</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0.0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0.0</th>
                        </tr>
                    </tfoot>
                </table>
                <br />
                <p style="font-size:12pt; text-align:justify; line-height: 1.5;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Хяналт-шинжилгээ, үнэлгээгээр ТНБД-ын баталсан гадаад, дотоод томилолтын тушаалын дагуу томилолтын тайланг тайлагнах ажил өмнөх улирлаас сайжирсан үзүүлэлттэй байгаа хэдий ч хангалттай хэмжээнд хүрээгүй байна. Нийт <span id="evalBodyTushaalTomiloltCnt13t1" runat="server">0</span> томилолтын тушаалаас <span id="evalBodyTushaalTomiloltImplCnt13t1" runat="server">0</span> тушаалыг хэрэгжүүлж, тайланг ТЗУГ-т тайлагнасан байна. 
                </p>
                <p style="font-size:8pt; text-align:left;"><b>Хүснэгт 7. Тушаалын биелэлт</b></p>
                <table style="border: 1px solid grey; border-collapse: collapse; font: 10pt arial, sans-serif; width: 100%; margin:0 auto;">
                    <thead>
                        <tr style="color:#FFF; background-color:grey; -webkit-print-color-adjust: exact; ">
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:30px;">№</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px;">Тушаалын төрөл</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:73px;">Тушаалын тоо</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:86px;">Биелэлтийг тайлагнасан</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:100px;">Хариуцах газар</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:56px;">Үнэлгээ</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th colspan="6" style="text-align:left; border: 1px solid grey; padding:3px;">Сангийн сайдын тушаал</th>
                        </tr>
                        <tr style="background-color:#f9f9f9; -webkit-print-color-adjust: exact;">
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">1</td>
                            <td style="text-align:left; border: 1px solid grey; padding:3px;">Ажлын хэсэг байгуулах тухай</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">СБГ, ТЗУГ, ХСӨУГ</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0.0</td>
                        </tr>
                        <tr>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">2</td>
                            <td style="text-align:left; border: 1px solid grey; padding:3px;">Архив, албан хэрэг хөтлөлтийн улсын үзлэгт бэлтгэх тухай</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">ТЗУГ</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0.0</td>
                        </tr>
                        <tr style="background-color:#f9f9f9; -webkit-print-color-adjust: exact;">
                            <th colspan="6" style="text-align:left; border: 1px solid grey; padding:3px;">ТНБД-ын тушаал</th>
                        </tr>
                        <tr>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">1</td>
                            <td style="text-align:left; border: 1px solid grey; padding:3px;">Гадаад, дотоод томилолт</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">ТЗУГ</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0.0</td>
                        </tr>
                    </tbody>
                    <tfoot>                        
                        <tr style="background-color:#f9f9f9; -webkit-print-color-adjust: exact;">
                            <th colspan="2" style="text-align:center; border: 1px solid grey; padding:3px;">НИЙТ</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">-</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0.0</th>
                        </tr>
                    </tfoot>
                </table>
                <br />
                <p style="font-size:12pt; text-align:justify; line-height: 1.5; font-style:italic;">
                    Биелэлт тайлагнаж ирүүлээгүй буюу <span style="color:red;">“0”</span> үнэлгээтэй тушаалын жагсаалтыг <span style="color:red;"><u>Хавсралт 3</u></span>-аас үзнэ үү.
                </p>
                <br />
                <p style="font-size:12pt; text-align:left; line-height: 1.5; color:#ff6a00;"><b><u>ҮЙЛ АЖИЛЛАГААНЫ ИЛ ТОД БАЙДАЛ </u> (5 оноо)</b></p>
                <p style="font-size:12pt; text-align:justify; line-height: 1.5;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Сангийн яам нь мэдээллийн ил тод байдлыг хангах зорилгоор <span id="evalBodyInterval14t1" runat="server">0-р сар</span>д Сангийн яамны цахим хуудас болох <u>www.mof.gov.mn</u> болон төсвийн ил тод байдлын <u>www.iltod.gov.mn</u> цахим хуудсанд 6 газар (ХХААБГ, СБГ, ХСӨУГ, ТЗУГ, ТСГ, ТБТГ) нийтдээ 16 төрлийн 108 мэдээ, мэдээллийг батлагдсан хуваарийн дагуу байршуулжээ.
                </p>
                <br />

                
                <br />
                <p style="font-size:12pt; text-align:left; line-height: 1.5; color:#ff6a00;"><b><u>ДОТООД АУДИТЫН ЗӨВЛӨМЖИЙН БИЕЛЭЛТ </u> (5 оноо)</b></p>
                <p style="font-size:12pt; text-align:justify; line-height: 1.5;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Сангийн яамны дэргэдэх Дотоод аудитын хороогоор хэлэлцэн гаргасан зөвлөмжийн хэрэгжилтийн байдалд <span id="evalBodyYear15t1" runat="server">0000</span> оны <span id="evalBodyInterval15t1" runat="server">0-р сар</span>ын байдлаар хяналт-шинжилгээ хийж, үр дүнд үнэлгээ өгсөн.<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Дотоод аудитын хороо нь <span id="evalBodyYear15t2" runat="server">0000</span> онд 0 удаа хуралдаж нийт <span id="evalBodyAsuudalCnt15t1" runat="server">0</span> асуудлын хүрээнд <span id="evalBodyZuwlumjCnt15t1" runat="server">0</span> зөвлөмж гаргасан бөгөөд хэрэгжилтийн хугацаа болсон, үнэлэх боломжтой <span id="evalBodyZuwlumjEvalCnt15t1" runat="server" style="font-weight:bold;">0</span> <b>зөвлөмжийн</b> хэрэгжилтийг үнэлгээнд хамруулсан. Дотоод аудитын хорооноос өгөгдсөн зөвлөмжийн хэрэгжилтийн байдалд хяналт-шинжилгээ, үнэлгээ хийхэд зөвлөмжийн хэрэгжилт <span id="evalBodyPer15t1" runat="server" style="font-weight:bold;">0.0</span> хувьтай байна.<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Хяналт-шинжилгээ, үнэлгээний дүнгээс харахад газруудад өгсөн зөвлөмжүүд бодлогын чанартай, цаг хугацаа шаардсан, зөвлөмж өгөөд удаагүй байгаатай  холбоотойгоор хэрэгжилт удаашралтай гарсан байна.
                </p>
                <p style="font-size:8pt; text-align:left;"><b>Хүснэгт 9. Дотоод аудитын зөвлөмжийн биелэлт</b></p>
                <table style="border: 1px solid grey; border-collapse: collapse; font: 10pt arial, sans-serif; width: 100%; margin:0 auto;">
                    <thead>
                        <tr style="color:#FFF; background-color:grey; -webkit-print-color-adjust: exact; ">
                            <th rowspan="2" style="text-align:center; vertical-align:middle; padding:3px; width:30px;">№</th>
                            <th rowspan="2" style="text-align:center; vertical-align:middle; padding:3px;">Газар</th>
                            <th rowspan="2" style="text-align:center; vertical-align:middle; padding:3px; width:89px;">Зөвлөмжийн тоо</th>
                            <th colspan="9" style="text-align:center; vertical-align:middle; padding:3px;">Төлөвлөгөөний биелэлтийн хувь</th>
                            <th rowspan="2" style="text-align:center; vertical-align:middle; padding:3px; width:61px;">Биелэлт хувь</th>
                            <th rowspan="2" style="text-align:center; vertical-align:middle; padding:3px; width:40px;">Оноо</th>
                        </tr>
                        <tr style="color:#FFF; background-color:grey; -webkit-print-color-adjust: exact; ">
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">100%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">90%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">80%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">70%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">50%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">30%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">10%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:39px;">0%</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:71px;">Үнэлээгүй</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="background-color:#f9f9f9; -webkit-print-color-adjust: exact;">
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">1</td>
                            <td style="text-align:left; border: 1px solid grey; padding:3px;">ТБТГ</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0.0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0.0</td>
                        </tr>
                        <tr>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">2</td>
                            <td style="text-align:left; border: 1px solid grey; padding:3px;">ЭЗБГ</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0.0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0.0</td>
                        </tr>
                    </tbody>
                    <tfoot>                        
                        <tr style="background-color:#f9f9f9; -webkit-print-color-adjust: exact;">
                            <th style="text-align:center; border: 1px solid grey; padding:3px;"></th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">НИЙТ</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0.0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0.0</th>
                        </tr>
                    </tfoot>
                </table>
                <br />
                <p style="font-size:12pt; text-align:left; line-height: 1.5; color:#ff6a00;"><b><u>АЖЛЫН ЦАГ АШИГЛАЛТ </u> (10 оноо)</b></p>
                <p style="font-size:12pt; text-align:justify; line-height: 1.5;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Сангийн яамны <span id="evalBodyInterval16t1" runat="server">0-р сар</span>ын байдлаарх ирцийн бүртгэлийг гаргахад яамны ажлын цаг ашиглалт <span id="evalBodyPer16t1" runat="server" style="font-weight:bold;">0.0</span> хувьтай байна. <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="evalBodyWorkingtimeHighPerGazarList1" runat="server">XXX</span> хувьтай байсан бол <span id="evalBodyWorkingtimeLowPerGazarList1" runat="server">XXX</span>-н ирцтэй байсныг Хүснэгт 10-аас харж болно.
                </p>
                <p style="font-size:8pt; text-align:left;"><b>Хүснэгт 10. Ажлын цаг ашиглалт</b></p>
                <table style="border: 1px solid grey; border-collapse: collapse; font: 10pt arial, sans-serif; width: 100%; margin:0 auto;">
                    <thead>
                        <tr style="color:#FFF; background-color:grey; -webkit-print-color-adjust: exact; ">
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:30px;">№</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px;">Газар</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:79px;">Ажиллавал зохих хоног</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:78px;">Ажилласан хоног</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:50px;">Хувь</th>
                            <th style="text-align:center; vertical-align:middle; padding:3px; width:50px;">Оноо</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="background-color:#f9f9f9; -webkit-print-color-adjust: exact;">
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">1</td>
                            <td style="text-align:left; border: 1px solid grey; padding:3px;">Төсвийн бодлого, төлөвлөлтийн газар</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0.0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0.0</td>
                        </tr>
                        <tr>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">2</td>
                            <td style="text-align:left; border: 1px solid grey; padding:3px;">Эдийн засгийн бодлогын газар</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0.0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0.0</td>
                        </tr>
                    </tbody>
                    <tfoot>                        
                        <tr style="background-color:#f9f9f9; -webkit-print-color-adjust: exact;">
                            <th style="text-align:center; border: 1px solid grey; padding:3px;"></th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">НИЙТ</th>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <td style="text-align:center; border: 1px solid grey; padding:3px;">0</td>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0.0</th>
                            <th style="text-align:center; border: 1px solid grey; padding:3px;">0.0</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </article>
    </div>
</section>
<script type="text/javascript">
    pageSetUp();
    var pagefunction = function () {
        loadScript("../js/plugin/flot/jquery.flot.cust.min.js", function () {
            loadScript("../js/plugin/flot/jquery.flot.resize.min.js", function () {
                loadScript("../js/plugin/flot/jquery.flot.time.min.js", function () {
                    loadScript("../js/plugin/flot/jquery.flot.tooltip.min.js", generatePageGraphs);
                });
            });
        });
    };

    function generatePageGraphs() {
        //$(function () {

            var trgt = [
                [1354586000000, 153],
                [1364587000000, 658],
                [1374588000000, 198],
                [1384589000000, 663],
                [1394590000000, 801],
                [1404591000000, 1080],
                [1414592000000, 353],
                [1424593000000, 749],
                [1434594000000, 523],
                [1444595000000, 258],
                [1454596000000, 688],
                [1464597000000, 364]
            ],
                prft = [
                    [1354586000000, 53],
                    [1364587000000, 65],
                    [1374588000000, 98],
                    [1384589000000, 83],
                    [1394590000000, 980],
                    [1404591000000, 808],
                    [1414592000000, 720],
                    [1424593000000, 674],
                    [1434594000000, 23],
                    [1444595000000, 79],
                    [1454596000000, 88],
                    [1464597000000, 36]
                ],
                sgnups = [
                    [1354586000000, 647],
                    [1364587000000, 435],
                    [1374588000000, 784],
                    [1384589000000, 346],
                    [1394590000000, 487],
                    [1404591000000, 463],
                    [1414592000000, 479],
                    [1424593000000, 236],
                    [1434594000000, 843],
                    [1444595000000, 657],
                    [1454596000000, 241],
                    [1464597000000, 341]
                ],
                toggles = $("#rev-toggles"),
                target = $("#flotcontainer");

            var data = [{
                label: "Target Profit",
                data: trgt,
                bars: {
                    show: true,
                    align: "center",
                    barWidth: 30 * 30 * 60 * 1000 * 80
                }
            }, {
                label: "Actual Profit",
                data: prft,
                color: '#3276B1',
                lines: {
                    show: true,
                    lineWidth: 3
                },
                points: {
                    show: true
                }
            }, {
                label: "Actual Signups",
                data: sgnups,
                color: '#71843F',
                lines: {
                    show: true,
                    lineWidth: 1
                },
                points: {
                    show: true
                }
            }]

            var options = {
                grid: {
                    hoverable: true
                },
                tooltip: true,
                tooltipOpts: {
                    //content: '%x - %y',
                    //dateFormat: '%b %y',
                    defaultTheme: false
                },
                xaxis: {
                    mode: "time"
                },
                yaxes: {
                    tickFormatter: function (val, axis) {
                        return "$" + val;
                    },
                    max: 1200
                }

            };

            flot_multigraph = null;

            function plotNow() {
                var d = [];
                toggles.find(':checkbox').each(function () {
                    if ($(this).is(':checked')) {
                        d.push(data[$(this).attr("name").substr(4, 1)]);
                    }
                });
                if (d.length > 0) {
                    if (flot_multigraph) {
                        flot_multigraph.setData(d);
                        flot_multigraph.draw();
                    } else {
                        flot_multigraph = $.plot(target, d, options);
                    }
                }

            };

            toggles.find(':checkbox').on('change', function () {
                plotNow();
            });

            plotNow();

        //});
    };

    var pagedestroy = function () {        

    }

    pagefunction();
</script>
