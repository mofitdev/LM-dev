<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="planyrTab3PlanPrintModal.aspx.cs" Inherits="LMWebApp.pg.planyrTab3PlanPrintModal" %>
<table style="border:none; width:100%;font-weight: bold; font-size: 14px; text-transform: uppercase;">
    <tbody>
        <tr>
            <td style="width:25%; text-align:center;">БАТЛАВ</td>
            <td style="width:50%; text-align:left;">ТӨРИЙН НАРИЙН БИЧГИЙН ДАРГА</td>
            <td style=" width:25%;  text-align:center;"><label id="lblHeaderTNBDName" runat="server" style="font-weight:bold;"></label></td>
        </tr>
    </tbody>
</table>
<br /><br />
<div style="font-size:14px; font-weight:bold; text-align:center;">
    <label id="lblHeaderGazar" runat="server" style=" font-weight:bold; text-transform: uppercase;">$$$$$</label> <label id="lblHeaderHeltes" runat="server" style=" font-weight:bold; text-transform: uppercase;">$$$$$</label> <label id="lblHeaderYear" runat="server" style=" font-weight:bold;">0000</label> ОНЫ ҮЙЛ АЖИЛЛАГААНЫ ТӨЛӨВЛӨГӨӨ 
</div>
<div id="divMainTable" runat="server">

</div>
<br />
<table style="width:100%; font: 12px arial, sans-serif;">
    <tbody>
        <tr style="font-weight:bold; height: 20px;">
            <td style="width:10%;">&nbsp;</td>
            <td style="width:60%;">Төлөвлөгөөг хянаж зөвшөөрсөн:</td>
            <td style="width:30%;"></td>
        </tr>
        <tr id="trFooterGazarsOfBoss" runat="server" style="height: 20px;">
            <td style="width:10%;">&nbsp;</td>
            <td id="tdFooterGazarsOfBoss" runat="server" style="width:60%;">Төрийн захиргааны удирдлагын газрын дарга</td>
            <td style="width:30%; font-weight:bold;">Ш.ЖАНДОС</td>
        </tr>
        <tr style="height: 20px;">
            <td style="width:10%;">&nbsp;</td>
            <td id="tdFooterGazarName" runat="server" style="width:60%;"></td>
            <td id="tdFooterGazarHeadName" runat="server" style="width:30%; font-weight:bold;"></td>
        </tr>
        <tr style="height: 20px;">
            <td style="width:10%;">&nbsp;</td>
            <td style="width:60%;">Төрийн захиргааны удирдлагын газрын ахлах мэргэжилтэн</td>
            <td style="width:30%; font-weight:bold;">З.БАЯНМӨНХ</td>
        </tr>
    </tbody>
</table>
<br />
<table style="width:100%; font: 12px arial, sans-serif;">
    <tbody id="tbodyFooterHeads" runat="server">

    </tbody>
</table>
<br />
<div style="font-size:14px;">
    <div style="width:70%; float:left; font: 12px arial, sans-serif;";">&nbsp;</div>
    <div style="width:30%; float:left; text-align:left; font: 12px arial, sans-serif;"">
        <div id="tbodyFooterDate" runat="server" style="font-weight: bold;"></div>
    </div>
</div>
