<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="agreementTab3PrintModal.aspx.cs" Inherits="LMWebApp.pg.agreementTab3PrintModal" %>
<div style="text-align:center; font-weight:bold;padding-bottom: 10px;">
    ҮР ДҮНГИЙН ГЭРЭЭНИЙ БИЕЛЭЛТИЙГ ДҮГНЭХ
    <br />
    (Илтгэх хуудас)
</div>
<div style="text-align:center; font-weight:bold;padding-bottom: 10px;">
    <label id="perfcont_Tab3lbl1" runat="server" style="margin:0 0 0 0; font-weight:bold; text-transform:uppercase;">****</label>-Н <label id="perfcont_Tab3lbl2" runat="server" style="margin:0 0 0 0; font-weight:bold;">****</label> ОНЫ ҮР ДҮНГИЙН ГЭРЭЭНИЙ БИЕЛЭЛТИЙГ ДҮГНЭХ ИЛТГЭХ ХУУДАС
</div>
<div style="text-align:left; font-weight:bold;padding-bottom: 10px; padding-left:4em;">
    НЭГ. ТАЛУУДЫН ҮҮРГИЙН БИЕЛЭЛТ
</div>
<div id="divBindTab2PrintModalTable" runat="server">
                                
</div>
<div style="font-weight:bold; padding-top: 10px;">
    <label id="perfcont_Tab3lbl3" runat="server" style="margin:0 0 0 0; font-weight:bold; padding-bottom:5px;">Tusviin yurunhiilun zahiragchiin</label> хүлээх үүргийн талаар <label id="perfcont_Tab3lbl4" runat="server" style="margin:0 0 0 0; font-weight:bold;">tusviin shuud zahiragchiin</label> сэтгэл ханамжийн түвшин:<br />
    <table style="border:0px solid #000; border-collapse:collapse; font: 12px arial, sans-serif; width:150px;">
        <tbody>
            <tr>
                <td id="perfcontract_Tab3Satis1_1" runat="server" style="border: 1px solid #000; padding:5px;text-align:center;width: 50px;"></td>
                <td id="perfcontract_Tab3Satis1_2" runat="server" style="border: 1px solid #000; padding:5px;text-align:center;width: 50px;"></td>
                <td id="perfcontract_Tab3Satis1_3" runat="server" style="border: 1px solid #000; padding:5px;text-align:center;width: 50px;"></td>
            </tr>
            <tr>
                <td style="text-align:center; padding:5px;">Бага</td>
                <td style="text-align:center; padding:5px;">Дунд</td>
                <td style="text-align:center; padding:5px;">Их</td>
            </tr>
        </tbody>
    </table>
</div>
<div style="font-weight:bold; width:100%; display:block; overflow:hidden;">
    Эрхэлж байгаа ажлынхаа талаар <label id="perfcont_Tab3lbl5" runat="server" style="margin:0 0 0 0; font-weight:bold; padding-bottom:5px;">shuud zahiragchiin</label> сэтгэл ханамжийн түвшин:<br />
    <table style="border:0px solid #000; border-collapse:collapse; font: 12px arial, sans-serif; width:150px;">
        <tbody>
            <tr>
                <td id="perfcontract_Tab3Satis2_1" runat="server" style="border: 1px solid #000; padding:5px;text-align:center;width: 50px;"></td>
                <td id="perfcontract_Tab3Satis2_2" runat="server" style="border: 1px solid #000; padding:5px;text-align:center;width: 50px;"></td>
                <td id="perfcontract_Tab3Satis2_3" runat="server" style="border: 1px solid #000; padding:5px;text-align:center;width: 50px;"></td>
            </tr>
            <tr>
                <td style="text-align:center; padding:5px;">Бага</td>
                <td style="text-align:center; padding:5px;">Дунд</td>
                <td style="text-align:center; padding:5px;">Их</td>
            </tr>
        </tbody>
    </table>
</div>
<div style="text-align:left; font-weight:bold;padding:10px 0 10px 0; padding-left:4em;">
    ХОЁР. ГЭРЭЭНИЙ БИЕЛЭЛТИЙН ҮНЭЛГЭЭ, ХЭРЭГЖҮҮЛЭХ АРГА ХЭМЖЭЭ
</div>
<table style="border:0px solid #000; border-collapse:collapse; font: 12px arial, sans-serif; width:auto;">
    <thead>
        <tr>
            <th style="border: 1px solid #000; text-align:center; padding:5px;">Гэрээний үзүүлэлт</th>
            <th style="border: 1px solid #000; text-align:center; padding:5px;">Өгвөл зохих дундаж оноо</th>
            <th style="border: 1px solid #000; text-align:center; padding:5px;">Өгсөн дундаж оноо</th>
        </tr>
        <tr>
            <th style="border: 1px solid #000; text-align:center; padding:5px;">1</th>
            <th style="border: 1px solid #000; text-align:center; padding:5px;">2</th>
            <th style="border: 1px solid #000; text-align:center; padding:5px;">3</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="border: 1px solid #000; padding:5px;">1. Нийт болон бусад ажил үйлчилгээний биелэлт</td>
            <td style="border: 1px solid #000; text-align:center; padding:5px;">0-30</td>
            <td id="perfcontTab3TotalCnt1" style="border: 1px solid #000; text-align:center; padding:5px;"></td>
        </tr>
        <tr>
            <td style="border: 1px solid #000; padding:5px;">2. Тусгай ажил, үйлчилгээний биелэлт</td>
            <td style="border: 1px solid #000; text-align:center; padding:5px;">0-40</td>
            <td id="perfcontTab3TotalCnt2" style="border: 1px solid #000; text-align:center; padding:5px;"></td>
        </tr>
        <tr>
            <td style="border: 1px solid #000; padding:5px;">3. Мэдлэг чадвараа дээшлүүлэх зорилтын биелэлт</td>
            <td style="border: 1px solid #000; text-align:center; padding:5px;">0-30</td>
            <td  id="perfcontTab3TotalCnt3"style="border: 1px solid #000; text-align:center; padding:5px;"></td>
        </tr>
		<tr>
			<td style="border: 1px solid #000; text-align:center; padding:5px; font-weight:bold;">Төрийн албаны салбар зөвлөлийн үнэлгээний өөрчлөлт</td>
			<td style="border: 1px solid #000; text-align:center; padding:5px;">0-100</td>
			<td id="perfcontTab3TotalCntTotalNew" style="border: 1px solid #000; text-align:center; padding:5px;"></td>
		</tr>
        <tr>
            <td style="border: 1px solid #000; text-align:center; padding:5px; font-weight:bold;">НИЙТ ОНОО</td>
            <td style="border: 1px solid #000; text-align:center; padding:5px;">0-100</td>
            <td id="perfcontTab3TotalCntTotal" style="border: 1px solid #000; text-align:center; padding:5px;"></td>
        </tr>
    </tbody>
</table>
<div style="text-align:left; font-weight:bold;padding:10px 0 10px 0; padding-left:4em;">
                            
</div>
<table style="border:0px solid #000; border-collapse:collapse; font: 12px arial, sans-serif; width:auto;">
    <thead>
        <tr>
            <th style="border: 1px solid #000; text-align:center; padding:5px;"><b>"A"</b> буюу <b>"Маш сайн"</b></th>
            <th style="border: 1px solid #000; text-align:center; padding:5px;"><b>"B"</b> буюу <b>"Сайн"</b></th>
            <th style="border: 1px solid #000; text-align:center; padding:5px;"><b>"C"</b> буюу <b>"Хангалттай"</b></th>
            <th style="border: 1px solid #000; text-align:center; padding:5px;"><b>"D"</b> буюу <b>"Сайжруулах шаардлагатай"</b></th>
            <th style="border: 1px solid #000; text-align:center; padding:5px;"><b>"F"</b> буюу <b>"Хангалтгүй"</b></th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td id="perfcontTab3TotalA" style="border: 1px solid #000; text-align:center; padding:5px;">
                                        
            </td>
            <td id="perfcontTab3TotalB" style="border: 1px solid #000; text-align:center; padding:5px;">
                                        
            </td>
            <td id="perfcontTab3TotalC" style="border: 1px solid #000; text-align:center; padding:5px;">
                                        
            </td>
            <td id="perfcontTab3TotalD" style="border: 1px solid #000; text-align:center; padding:5px;">
                                        
            </td>
            <td id="perfcontTab3TotalF" style="border: 1px solid #000; text-align:center; padding:5px;">
                                        
            </td>
        </tr>
    </tbody>
</table>
<div style="font-weight:bold; width:100%; display:block; overflow:hidden; padding-top:10px;">
    Гэрээний биелэлтийг үндэслэн авах арга хэмжээ /урамшуулах, хариуцлага тоохох г.м/-ний санал:<br />
    <label id="perfcont_Tab3TxtSrv1Lbl" runat="server"></label>                             
</div>
<div style="font-weight:bold; width:100%; display:block; overflow:hidden;">
    Тэмдэглэл/ажлын гүйцэтгэлийг хэрхэн сайжруулах талаар зөвлөмж г.м:<br />
    <label id="perfcont_Tab3TxtSrv2Lbl" runat="server"></label>                            
</div>
<br />
<table style="border:0px; font: 12px arial, sans-serif; padding-top:20px;">
    <tbody>
        <tr>
            <td style="width:150px;">Үнэлгээ өгсөн:</td>
            <td style="width:150px; border-bottom:1px dotted #000;">
                <label id="perfcont_Tab3lbl7" runat="server" style="margin:0 0 0 0; font-style:italic;">Said</label>
            </td>
            <td style="width:50px; text-align:right;"></td>
            <td style="width:150px; border-bottom:1px dotted #000;">
                <label id="perfcont_Tab3lbl8" runat="server" style="margin:0 0 0 0; font-style:italic;">Ch. Ulaan</label>
            </td>
            <td style="width:10px;">/</td>
            <td style="width:150px; border-bottom:1px dotted #000;"></td>
            <td style="width:10px;">/</td>
            <td style="width:50px; text-align:right;"></td>
            <td style="width:100px; border-bottom:1px dotted #000; text-align:center;">
                <label id="perfcont_Tab3lbl9" runat="server" style="margin:0 0 0 0; font-style:italic;">0000-00-00</label>
            </td>
        </tr>
        <tr style="font-style:italic;">
            <td style="width:150px;"></td>
            <td style="width:150px;"></td>
            <td style="width:50px; text-align:right;"></td>
            <td style="width:150px;"></td>
            <td colspan="3" style="width:170px; text-align:center;">(Гарын үсэг)</td>
            <td style="width:50px;"></td>
            <td style="width:100px;"></td>
        </tr>
        <tr>
            <td style="width:150px;">Үнэлгээтэй танилцсан:</td>
            <td style="width:150px; border-bottom:1px dotted #000;">
                <label id="perfcont_Tab3lbl10" runat="server" style="margin:0 0 0 0; font-style:italic;">Said</label>
            </td>
            <td style="width:50px; text-align:right;"></td>
            <td style="width:150px; border-bottom:1px dotted #000;">
                <label id="perfcont_Tab3lbl11" runat="server" style="margin:0 0 0 0; font-style:italic;">Ch. Ulaan</label>
            </td>
            <td style="width:10px;">/</td>
            <td style="width:150px; border-bottom:1px dotted #000;"></td>
            <td style="width:10px;">/</td>
            <td style="width:50px; text-align:right;"></td>
            <td style="width:100px; border-bottom:1px dotted #000; text-align:center;">
                <label id="perfcont_Tab3lbl12" runat="server" style="margin:0 0 0 0; font-style:italic;">0000-00-00</label>
            </td>
        </tr>
        <tr style="font-style:italic;">
            <td style="width:150px;"></td>
            <td style="width:150px;"></td>
            <td style="width:50px; text-align:right;"></td>
            <td style="width:150px;"></td>
            <td colspan="3" style="width:170px; text-align:center;">(Гарын үсэг)</td>
            <td style="width:50px;"></td>
            <td style="width:100px;"></td>
        </tr>
    </tbody>
</table>
<script>
    var valData = '';
    var objno = "", polno = "";
    $('#perfcont_Tab3lbl2').html($('#agreementTab2PrintModalSelectYear option:selected').val());
    showLoader('loaderTab3PrintModal');
    globalAjaxVar = $.ajax({
        type: "POST",
        url: "../ws/ServiceMain.svc/AgreementTab2PrintModalTable1",
        data: '{"yr":"' + '<%= Request.QueryString["yr"] %>' + '", "yrhf":"' + '<%= Request.QueryString["yrhf"] %>' + '", "st_id":"' + '<%= Request.QueryString["stid"] %>' + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            valData += "<div style=\"padding: 0 0 5px 2em;\">А. НИЙТ (Тусгай ажил, үйлчилгээнээс бусад) АЖИЛ, ҮЙЛЧИЛГЭЭ</div>";
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
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; background: #fcf8e3;\">" + value.PER1 + "</td>";
                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\" class=\"perfcontractIltgehPer1\">" + (parseInt(value.PER1) + parseInt(value.PER2)) + "</td>";
                }
                valData += "</tr>";
            });
            valData += "</tbody>";
            valData += "</table>";
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/AgreementTab2PrintModalTable2",
                data: '{"yr":"' + '<%= Request.QueryString["yr"] %>' + '", "yrhf":"' + '<%= Request.QueryString["yrhf"] %>' + '", "st_id":"' + '<%= Request.QueryString["stid"] %>' + '"}',
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
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; background: #fcf8e3;\">" + value.PER1 + "</td>";
                            valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\" class=\"perfcontractIltgehPer2\">" + (parseInt(value.PER1) + parseInt(value.PER2)) + "</td>";
                        }
                        valData += "</tr>";
                    });
                    valData += "</tbody>";
                    valData += "</table>";

                    globalAjaxVar = $.ajax({
                    type: "POST",
                    url: "../ws/ServiceMain.svc/AgreementTab2PrintModalTable3t2",
                    data: '{"yr":"' + '<%= Request.QueryString["yr"] %>' + '", "yrhf":"' + '<%= Request.QueryString["yrhf"] %>' + '", "st_id":"' + '<%= Request.QueryString["stid"] %>' + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        valData += "<div style=\"padding: 0 0 5px 2em;\">В. ДОТООД АЖИЛ, ҮЙЛЧИЛГЭЭ</div>";
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
                                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; background: #fcf8e3;\">" + value.PER1 + "</td>";
                                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center;\" class=\"perfcontractIltgehPer1\">" + (parseInt(value.PER1) + parseInt(value.PER2)) + "</td>";
                            }
                            valData += "</tr>";
                        });
                        valData += "</tbody>";
                        valData += "</table>";
                        globalAjaxVar = $.ajax({
                        type: "POST",
                        url: "../ws/ServiceMain.svc/AgreementTab2PrintModalTable3",
                        data: '{"yr":"' + '<%= Request.QueryString["yr"] %>' + '", "yrhf":"' + '<%= Request.QueryString["yrhf"] %>' + '", "st_id":"' + '<%= Request.QueryString["stid"] %>' + '"}',
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
                                data: '{"yr":"' + '<%= Request.QueryString["yr"] %>' + '", "yrhf":"' + '<%= Request.QueryString["yrhf"] %>' + '", "st_id":"' + '<%= Request.QueryString["stid"] %>' + '"}',
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
                                        data: '{"yr":"' + '<%= Request.QueryString["yr"] %>' + '", "yrhf":"' + '<%= Request.QueryString["yrhf"] %>' + '", "st_id":"' + '<%= Request.QueryString["stid"] %>' + '"}',
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function (data) {
                                            var valCountEach = 0;

                                            if (funcCheckRoles('3')) {
                                                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:justify; vertical-align:top;\">Ирцийн оноо</td>";
                                                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">Ажиллах өдөр: 112.00</td>";
                                                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">Ажилласан өдөр: 112.00</td>";
                                                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">Үнэлгээт хувь:  100%</td>";
                                                valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; background: #fcf8e3;\" class=\"perfcontractIltgehPer4\">5</td>";
                                            } else {
                                                $($.parseJSON(data.d)).each(function (index, value) {
                                                    valData += "<tr>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:justify; vertical-align:top;\">Ирцийн оноо</td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">Ажиллах өдөр: " + parseFloat(value.WORKDAY).toFixed(2) + "</td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">Ажилласан өдөр: " + parseFloat(value.EVALWORKEDDAY).toFixed(2) + " </td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">Үнэлгээт хувь: " + parseFloat(value.PER).toFixed(3) + "%</td>";
                                                    valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; background: #fcf8e3;\" class=\"perfcontractIltgehPer4\">" + parseFloat(value.PNT).toFixed(3) + "</td>";
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
                                            }
                                            
                                            globalAjaxVar = $.ajax({
                                                type: "POST",
                                                url: "../ws/ServiceMain.svc/AgreementTab2PrintModalTable6",
                                                data: '{"yr":"' + '<%= Request.QueryString["yr"] %>' + '", "yrhf":"' + '<%= Request.QueryString["yrhf"] %>' + '", "st_id":"' + '<%= Request.QueryString["stid"] %>' + '"}',
                                                contentType: "application/json; charset=utf-8",
                                                dataType: "json",
                                                success: function (data) {
                                                    valCountEach = 0;
                                                    $($.parseJSON(data.d)).each(function (index, value) {
                                                        valData += "<tr>";
                                                        valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:justify; vertical-align:top;\">Хамт олны үнэлгээ</td>";
                                                        valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">Авах хувь: 100%</td>";
                                                        valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">Авсан хувь: " + parseFloat(value.AVGPER).toFixed(3) + "%</td>";
                                                        valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; vertical-align:top;\">%</td>";
                                                        valData += "<td style=\"border: 1px solid #000; padding:5px; text-align:center; background: #fcf8e3;\" class=\"perfcontractIltgehPer4\">" + parseFloat(value.AVGPNT).toFixed(3) + "</td>";
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
                                                    //alert(valData);
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
                                                    globalAjaxVar = $.ajax({
                                                        type: "POST",
                                                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                        data: '{"qry":"SELECT POS_ID FROM hrdbuser.ST_STBR WHERE ISACTIVE=1 AND STAFFS_ID=' + '<%= Request.QueryString["stid"] %>' + '"}',
                                                        contentType: "application/json; charset=utf-8",
                                                        dataType: "json",
                                                        success: function (data) {
                                                            var valPersUrl = '';
                                                            if (data.d == '2010201' || data.d == '2010301') valPersUrl = "../ws/ServiceMain.svc/AgreementIltgehHuudasLastPerHead";
                                                            else valPersUrl = "../ws/ServiceMain.svc/AgreementIltgehHuudasLastPer";
                                                            globalAjaxVar = $.ajax({
                                                                type: "POST",
                                                                url: valPersUrl,
                                                                data: '{"yr":"' + '<%= Request.QueryString["yr"] %>' + '", "yrhf":"' + '<%= Request.QueryString["yrhf"] %>' + '", "stid":"' + '<%= Request.QueryString["stid"] %>' + '"}',
                                                                contentType: "application/json; charset=utf-8",
                                                                dataType: "json",
                                                                success: function (data) {

                                                                    $('#perfcontTab3TotalCnt1').html(data.d.split('~')[0]);
                                                                    $('#perfcontTab3TotalCnt2').html(data.d.split('~')[1]);

                                                                    if (funcCheckRoles('3')) {

                                                                        $('#perfcontTab3TotalCnt3').html(parseFloat(data.d.split('~')[2]) + parseFloat(5) );

                                                                    } else {
                                                                        $('#perfcontTab3TotalCnt3').html(data.d.split('~')[2]);
                                                                    }
                                                                    if (funcCheckRoles('3')) {
                                                                        if ((parseFloat(data.d.split('~')[3]) - parseFloat(data.d.split('~')[4])).toFixed(3) > 0) {
                                                                            $('#perfcontTab3TotalCntTotalNew').html('-' + (parseFloat(data.d.split('~')[3]) - parseFloat(data.d.split('~')[4])).toFixed(3).toString());
                                                                        }
                                                                        else {
                                                                            $('#perfcontTab3TotalCntTotalNew').html('+' + (parseFloat(data.d.split('~')[3]) - parseFloat(data.d.split('~')[4])).toFixed(3).toString().replace(/-/g, ''));
                                                                            $('#perfcontTab3TotalCntTotal').html(parseFloat(data.d.split('~')[4]) + parseFloat(5));
                                                                        }

                                                                    } else {
                                                                        if ((parseFloat(data.d.split('~')[3]) - parseFloat(data.d.split('~')[4])).toFixed(3) > 0)
                                                                            $('#perfcontTab3TotalCntTotalNew').html('-' + (parseFloat(data.d.split('~')[3]) - parseFloat(data.d.split('~')[4])).toFixed(3).toString());
                                                                        else {
                                                                            $('#perfcontTab3TotalCntTotalNew').html('+' + (parseFloat(data.d.split('~')[3]) - parseFloat(data.d.split('~')[4])).toFixed(3).toString().replace(/-/g, ''));
                                                                            $('#perfcontTab3TotalCntTotal').html(data.d.split('~')[4]);
                                                                        }
                                                                    }


                                                                    if (parseFloat($('#perfcontTab3TotalCntTotal').text()) <= 60) $('#perfcontTab3TotalF').text('O');
                                                                    else if (parseFloat($('#perfcontTab3TotalCntTotal').text()) > 60 && parseFloat($('#perfcontTab3TotalCntTotal').text()) <= 70) $('#perfcontTab3TotalD').text('O');
                                                                    else if (parseFloat($('#perfcontTab3TotalCntTotal').text()) > 70 && parseFloat($('#perfcontTab3TotalCntTotal').text()) <= 80) $('#perfcontTab3TotalC').text('O');
                                                                    else if (parseFloat($('#perfcontTab3TotalCntTotal').text()) > 80 && parseFloat($('#perfcontTab3TotalCntTotal').text()) <= 90) $('#perfcontTab3TotalB').text('O');
                                                                    else if (parseFloat($('#perfcontTab3TotalCntTotal').text()) > 90 && parseFloat($('#perfcontTab3TotalCntTotal').text()) <= 100) $('#perfcontTab3TotalA').text('O');

                                                                    hideLoader('loaderTab3PrintModal');
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

                                                    

                                                    



                                                    <%--if (totPer11 == 0) $('#perfcontTab3TotalCnt1').text(Math.round(parseFloat((((parseFloat(totPer1) / (parseFloat(cntPer1) * 30)) * 100) * 0.3).toFixed(1).toString().replace('NaN', '0'))));
                                                    else $('#perfcontTab3TotalCnt1').text(Math.round((Math.round(parseFloat(totPer1) / parseFloat(cntPer1)) + Math.round(parseFloat(totPer11) / parseFloat(cntPer11))) / 2));
                                                    $('#perfcontTab3TotalCnt2').text(Math.round(parseFloat(totPer2) / parseFloat(cntPer2)).toString().replace('NaN', '0'));
                                                    $('#perfcontTab3TotalCnt3').text(parseFloat(parseFloat((parseFloat(totPer3) / parseFloat(cntPer3)).toFixed(3).toString().replace('NaN', '0')) + parseFloat(totPer4)).toFixed(3).toString());
                                                    //$('#perfcontTab3TotalCntTotal').text((parseFloat($('#perfcontTab3TotalCnt1').text()) + parseFloat($('#perfcontTab3TotalCnt2').text()) + parseFloat($('#perfcontTab3TotalCnt3').text())).toString());
                                                    globalAjaxVar = $.ajax({
                                                        type: "POST",
                                                        url: "../ws/ServiceMain.svc/AgreementStaff30Dahi",
                                                        data: '{"yr":"' + '<%= Request.QueryString["yr"] %>' + '", "yrhf":"' + '<%= Request.QueryString["yrhf"] %>' + '", "stid":"' + '<%= Request.QueryString["stid"] %>' + '"}',
                                                        contentType: "application/json; charset=utf-8",
                                                        dataType: "json",
                                                        success: function (data) {
                                                            var currPer = (parseFloat($('#perfcontTab3TotalCnt1').text()) + parseFloat($('#perfcontTab3TotalCnt2').text()) + parseFloat($('#perfcontTab3TotalCnt3').text())).toFixed(3);
                                                            var newPer = ((parseFloat($('#perfcontTab3TotalCnt1').text()) + parseFloat($('#perfcontTab3TotalCnt2').text()) + parseFloat($('#perfcontTab3TotalCnt3').text())) - (parseFloat(data.d) - 90)).toFixed(3);
                                                            if ((currPer - newPer).toFixed(3) > 0) $('#perfcontTab3TotalCntTotalNew').html('-'+(currPer - newPer).toFixed(3).toString());
                                                            else $('#perfcontTab3TotalCntTotalNew').html('+'+(currPer - newPer).toFixed(3).toString().replace(/-/g,''));
                                                            $('#perfcontTab3TotalCntTotal').html(newPer);
                                                            if (parseFloat($('#perfcontTab3TotalCntTotal').text()) <= 20) $('#perfcontTab3TotalF').text('O');
                                                            else if (parseFloat($('#perfcontTab3TotalCntTotal').text()) > 20 && parseFloat($('#perfcontTab3TotalCntTotal').text()) <= 40) $('#perfcontTab3TotalD').text('O');
                                                            else if (parseFloat($('#perfcontTab3TotalCntTotal').text()) > 40 && parseFloat($('#perfcontTab3TotalCntTotal').text()) <= 60) $('#perfcontTab3TotalC').text('O');
                                                            else if (parseFloat($('#perfcontTab3TotalCntTotal').text()) > 60 && parseFloat($('#perfcontTab3TotalCntTotal').text()) <= 80) $('#perfcontTab3TotalB').text('O');
                                                            else if (parseFloat($('#perfcontTab3TotalCntTotal').text()) > 80 && parseFloat($('#perfcontTab3TotalCntTotal').text()) <= 100) $('#perfcontTab3TotalA').text('O');
                                                            hideLoader('loaderTab3PrintModal');
                                                        },
                                                        failure: function (response) {
                                                            alert('FAILURE: ' + response.d);
                                                        },
                                                        error: function (xhr, status, error) {
                                                            window.location = '../#pg/error500.aspx';
                                                        }
                                                    });--%>
                                                    globalAjaxVar = $.ajax({
                                                        type: "POST",
                                                        url: "../ws/ServiceMain.svc/OracleExecuteScalar",
                                                        data: '{"qry":"SELECT ( SELECT COUNT(1) FROM TBL_AGREEMENT_DESC WHERE YR=' + '<%= Request.QueryString["yr"] %>' + ' AND YRHF=' + '<%= Request.QueryString["yrhf"] %>' + ' AND ST_ID=' + '<%= Request.QueryString["stid"] %>' + ' )||\'~\'||( SELECT NVL(SATIS1,0)||\'~\'||NVL(SATIS2,0)||\'~\'||DESC1||\'~\'||DESC2 FROM TBL_AGREEMENT_DESC WHERE YR=' + '<%= Request.QueryString["yr"] %>' + ' AND YRHF=' + '<%= Request.QueryString["yrhf"] %>' + ' AND ST_ID=' + '<%= Request.QueryString["stid"] %>' + ' ) as NAME1 FROM DUAL"}',
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
        },
        failure: function (response) {
            alert('FAILURE: ' + response.d);
        },
        error: function (xhr, status, error) {
            window.location = '../#pg/error500.aspx';
        }
    });
</script>
