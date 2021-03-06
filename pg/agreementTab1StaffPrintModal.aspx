﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="agreementTab1StaffPrintModal.aspx.cs" Inherits="LMWebApp.pg.agreementTab1StaffPrintModal" %>
<div id="data00" runat="server" style="text-align:center; font-weight:bold; margin-bottom:14px; text-transform:uppercase; font: 11pt arial, sans-serif; text-transform:uppercase;">
</div>
<div style="text-align:left; font: 10pt arial, sans-serif;">
    <div style="margin-left:5em; font-weight:bold;">1. Гэрээ байгуулагч талууд:</div>
    <div style="margin-left:5em; margin-top:14px; ">Нэг талаас: <label id="data01" runat="server" style="margin:0;">Tusviin yerunhiilun zahiragch</label><!--perfcont_lbl5--></div>
    <table style="border:0px; margin-left:5em; font: 10pt arial, sans-serif;">
        <tbody>
            <tr>
                <td id="data02" runat="server" style="width:250px; border-bottom:1px dotted #000; font-weight:bold; font-style:italic;">
                        
                </td><!--perfcont_lbl6-->
                <td style="width:50px; text-align:right;"></td>
                <td id="data03" runat="server" style="width:250px; border-bottom:1px dotted #000; font-weight:bold; font-style:italic;">
                        
                </td><!--perfcont_lbl7-->
            </tr>
        </tbody>
    </table>
    <div style="margin-left:5em; margin-top:9px;">Нөгөө талаас: <label id="data04" runat="server" style="margin:0 0 0 0;">Tusviin shuud zahiragchiin</label><!--perfcont_lbl8--></div>
    <table style="border:0px; margin-left:5em; font: 10pt arial, sans-serif;">
        <tbody>
            <tr>
                <td id="data05" runat="server" style="width:250px; border-bottom:1px dotted #000; font-weight:bold; font-style:italic;">
                </td><!--perfcont_lbl9-->
                <td style="width:50px; text-align:right;"></td>
                <td id="data06" runat="server" style="width:250px; border-bottom:1px dotted #000; font-weight:bold; font-style:italic;">
                </td><!--perfcont_lbl10-->
            </tr>
        </tbody>
    </table>
    <div>бид дор дурдсан асуудлаар харилцан тохиролцсоны үндсэн дээр энэхүү гэрээг байгуулав.</div>
    <div style="margin-left:5em; margin-top:14px; font-weight:bold;">2. Гэрээний агуулга, зорилго</div>
    <div style="text-align:justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.1. Энэхүү гэрээнд төрийн жинхэнэ албан хаагчаас хэрэгжүүлэх нийт болон тусгай ажил, үйлчилгээнүүд, мэдлэг чадвараа дээшлүүлэх зорилтууд, тэдгээрийн  гүйцэтгэлийн шалгуур үзүүлэлт (тоо, чанар, хугацаа)-үүд болон бусад эрх үүргийг тусгав.</div>
    <div style="text-align:justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.2. Энэхүү гэрээний зорилго нь үйл ажиллагаагаа оновчтой төлөвлөж хэрэгжүүлэх, ажлын байрны шаардлагад нийцүүлэн мэдлэг чадвараа дээшлүүлэх, төрийн албаны тухай хууль тогтоомж, стандарт, ёс зүйн хэм хэмжээг чанд сахиж, сонирхлын зөрчилгүй ажиллах талаар төрийн жинхэнэ албан хаагчийн тухайн жилд гүйцэтгэх үүрэг, хүлээх хариуцлагыг тодорхойлоход оршино.</div>
    <div style="margin-left:5em; margin-top:14px; text-transform:uppercase; font-weight:bold;">НЭГ. ТАЛУУДЫН ХҮЛЭЭХ ҮҮРЭГ</div>
    <div style="margin-top:14px; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. Төрийн жинхэнэ албан хаагчийн хүлээх үүрэг</div>
    <div id="data07" runat="server" style="margin-top:14px; text-transform:uppercase; font-weight:bold; text-align:justify;"></div>
    <div style="margin-top:14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.1.1. Дор дурдсан <b><i>нийт болон тусгай ажил, үйлчилгээг</i></b> гүйцэтгэлийн шалгуур үзүүлэлт (тоо, чанар, хугацаа) бүрээр хэрэгжүүлнэ:</div>
    <div id="niitTusgaiHusnegt" runat="server">

    </div>
    <div style="margin-top:14px; text-transform:uppercase; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.2. ДОТООД АЖИЛ, ҮЙЛЧИЛГЭЭ</div>
    <div style="text-align:justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.2.1. Дор дурдсан <b><i>дотоод ажил, үйлчилгээг</i></b> гүйцэтгэлийн шалгуур үзүүлэлт (тоо, чанар, хугацаа) бүрээр хэрэгжүүлнэ:</div>
    <div id="busadHusnegt" runat="server">

    </div>
    <div style="margin-top:14px; text-transform:uppercase; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.3. МЭДЛЭГ ЧАДВАРАА ДЭЭШЛҮҮЛЭХ ЗОРИЛТ</div>
    <div style="text-align:justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.3.1. Дор дурдсан <b><i>мэдлэг чадвараа дээшлүүлэх зорилтыг</i></b> гүйцэтгэлийн шалгуур үзүүлэлт бүрээр хэрэгжүүлнэ:</div>
    <div id="medlegHusnegt" runat="server">

    </div>
    <div style="margin-top:14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>1.4.</b> Төрийн алба, төрийн жинхэнэ албан хаагчтай холбоотой хууль тогтоомж, төрийн албаны болон үйлчилгээний стандартыг  мөрдөж, төрийн жинхэнэ  албан хаагчийн ёс зүйн хэм хэмжээг чанд сахиж, ашиг сонирхлын зөрчил гаргахгүй ажиллана.</div>
    <div style="margin-top:14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>1.5.</b> Гэрээний биелэлтийг  менежерт улирал тутам мэдээлж,  хагас, бүтэн жилээр тайлагнана.</div>
    <div style="margin-left:5em; margin-top:14px; font-weight:bold;">2. Менежерийн хүлээх үүрэг</div>
    <div style="margin-top:14px; text-align:justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.1. Төрийн жинхэнэ албан хаагчтай байгуулах гэрээнд тусгаж хэрэгжүүлэх нийт болон тусгай ажил, үйлчилгээ, тэдгээрийн гүйцэтгэлийн шалгуур үзүүлэлтийг хамтран тодорхойлно.</div>
    <div style="text-align:justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.2. Төрийн жинхэнэ албан хаагчийн мэдлэг чадвараа дээшлүүлэх зорилт, тэдгээрийн гүйцэтгэлийн шалгуур үзүүлэлтийг хамтран тодорхойлно.</div>
    <div style="text-align:justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.3. Төрийн жинхэнэ албан хаагчийн гэрээнд тусгагдсан нийт болон тусгай ажил, үйлчилгээ, мэдлэг чадвараа дээшлүүлэх зорилтуудыг хэрэгжүүлэхэд нь түүнд байнгын дэмжлэг туслалцаа үзүүлж, гэрээний биелэлтийг хангах боломж, нөхцөлийг бүрдүүлнэ.</div>
    <div style="margin-left:5em; margin-top:14px; font-weight:bold; text-transform:uppercase;">ХОЁР. БУСАД ЗҮЙЛ</div>
    <div style="margin-left:5em; margin-top:14px; font-weight:bold;">3. Гэрээнд нэмэлт, өөрчлөлт оруулах</div>
    <div style="text-align:justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.1. Гэрээнд нэмэлт, өөрчлөлт оруулах асуудлыг талууд харилцан тохиролцсоны үндсэн дээр шийдвэрлэж, албажуулан гэрээнд хавсаргана.</div>
    <div style="margin-left:5em; margin-top:14px; font-weight:bold;">4. Гэрээ байгуулах болон дүгнэх хугацаа</div>
    <div style="text-align:justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.1. Гэрээг <label id="data08" runat="server" style="margin:0;"></label> оны 01 дүгээр сарын 01-ний өдрөөс <label id="data09" runat="server" style="margin:0;"></label> оны 12 дугаар сарын 31-ний өдрийг дуусталх хугацаагаар байгуулав. 	Энэхүү гэрээний хугацаа сунгагдахгүй.</div>
    <div style="text-align:justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.2. Төрийн жинхэнэ албан хаагч гэрээний биелэлтийг <label id="data10" runat="server" style="margin:0;"></label> оны <label id="data11" runat="server" style="margin:0;"></label> дугaaр сарын <label id="data12" runat="server" style="margin:0;"></label>-ны дотор багтаан тайлагнаж, менежер <label id="data13" runat="server" style="margin:0;"></label> оны <label id="data14" runat="server" style="margin:0;"></label> дугаар сарын <label id="data15" runat="server" style="margin:0;"></label>-ны дотор багтаан дүгнэнэ.</div>
    <div style="margin-left:5em; margin-top:14px; font-weight:bold;">5. Гэрээний урамшуулал ба хариуцлага</div>
    <div style="text-align:justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.1. Төрийн жинхэнэ албан хаагч гэрээгээр хүлээсэн үүргээ  хангалттай сайн биелүүлсэн тохиолдолд түүнийг урамшуулах асуудлыг байгууллагын эрх бүхий албан тушаалтан холбогдох хууль тогтоомж, эрх зүйн акт, Хөдөлмөрийн дотоод журамд заасны  дагуу шийдвэрлэнэ.</div>
    <div style="text-align:justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.2. Төрийн жинхэнэ албан хаагч  гэрээгээр хүлээсэн үүргээ хангалтгүй биелүүлсэн тохиолдолд менежер түүнд туслалцаа дэмжлэг үзүүлэх, эсхүл холбогдох хууль тогтоомжид заасны дагуу байгууллагын эрх бүхий албан тушаалтан түүнд хариуцлага хүлээлгэнэ.</div>
    <div style="margin-left:5em; margin-top:14px; font-weight:bold;">6. Гэрээ байгуулсан:</div>
    <table style="border:0px; margin-left:5em; font: 10pt arial, sans-serif;">
        <tbody>
            <tr>
                <td id="data16" runat="server" style="width:250px; border-bottom:1px dotted #000; font-style:italic; font-weight:bold; text-align:left;"></td>
                <td style="width:50px; text-align:right;"></td>
                <td id="data17" runat="server" style="width:150px; border-bottom:1px dotted #000; font-style:italic; font-weight:bold; text-align:center;"></td>
                <td style="width:50px; text-align:right;">/</td>
                <td style="width:150px; border-bottom:1px dotted #000;"></td>
                <td style="width:50px; text-align:left;">/</td>
                <td style="width:150px; border-bottom:1px dotted #000;"></td>
            </tr>
            <tr style="font-style:italic;">
                <td style="width:250px;"></td>
                <td style="width:50px; text-align:right;"></td>
                <td style="width:150px;"></td>
                <td style="width:50px;"></td>
                <td style="width:150px; text-align:center;"><i>(гарын үсэг)</i></td>
                <td style="width:50px;"></td>
                <td style="width:150px; text-align:center;"><i>(огноо)</i></td>
            </tr>
            <tr style="display:none;">
                <td id="data18" runat="server" style="width:250px; border-bottom:1px dotted #000; font-style:italic; font-weight:bold; text-align:left;">Хэлтсийн дарга</td>
                <td style="width:50px; text-align:right;"></td>
                <td id="data19" runat="server" style="width:150px; border-bottom:1px dotted #000; font-style:italic; font-weight:bold; text-align:center;"></td>
                <td style="width:50px; text-align:right;">/</td>
                <td style="width:150px; border-bottom:1px dotted #000;"></td>
                <td style="width:50px; text-align:left;">/</td>
                <td style="width:150px; border-bottom:1px dotted #000;"></td>
            </tr>
            <tr style="display:none; font-style:italic;">
                <td style="width:250px;"></td>
                <td style="width:50px; text-align:right;"></td>
                <td style="width:150px;"></td>
                <td style="width:50px;"></td>
                <td style="width:150px; text-align:center;"><i>(гарын үсэг)</i></td>
                <td style="width:50px;"></td>
                <td style="width:150px; text-align:center;"><i>(огноо)</i></td>
            </tr>
            <tr>
                <td id="data20" runat="server" style="width:250px; border-bottom:1px dotted #000; font-style:italic; font-weight:bold; text-align:left;"></td>
                <td style="width:50px; text-align:right;"></td>
                <td id="data21" runat="server" style="width:150px; border-bottom:1px dotted #000; font-style:italic; font-weight:bold; text-align:center;"></td>
                <td style="width:50px; text-align:right;">/</td>
                <td style="width:150px; border-bottom:1px dotted #000;"></td>
                <td style="width:50px; text-align:left;">/</td>
                <td style="width:150px; border-bottom:1px dotted #000;"></td>
            </tr>
            <tr style="font-style:italic;">
                <td style="width:250px;"></td>
                <td style="width:50px; text-align:right;"></td>
                <td style="width:150px;"></td>
                <td style="width:50px;"></td>
                <td style="width:150px; text-align:center;"><i>(гарын үсэг)</i></td>
                <td style="width:50px;"></td>
                <td style="width:150px; text-align:center;"><i>(огноо)</i></td>
            </tr>
        </tbody>
    </table>
    <div id="data22" runat="server" style="margin-top:20px; text-align:center;"></div>
</div>
<script>
    if ($.trim($('#data19')) == '') {
        $('#data19').closest('tbody').find('tr:eq(2)').css('display', 'none');
        $('#data19').closest('tbody').find('tr:eq(3)').css('display', 'none');
    }
    else {
        $('#data19').closest('tbody').find('tr:eq(2)').css('display', '');
        $('#data19').closest('tbody').find('tr:eq(3)').css('display', '');
    }
</script>
