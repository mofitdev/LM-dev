<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sysset.aspx.cs" Inherits="LMWebApp.pg.sysset" %>
<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
    <h1 class="page-title txt-color-blueDark">
    <i class="fa-fw fa fa-home"></i>
    <span>> Системийн тохиргоо</span>
    </h1>
</div>
<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12 sortable-grid ui-sortable"> 
    <ul id="syssetTabs" class="nav nav-tabs bordered">
        <li class="active">
            <a data-toggle="tab" href="#syssetTab1">
                Ерөнхий хугацааны тохиргоо
            </a>
        </li>
    </ul>
    <div id="syssetTabContent" class="tab-content padding-10">
        <div id="syssetTab1" class="tab-pane fade active in">
            <form id="form1" runat="server">
            <div class="row">
                <div class="col-sm-1">
                    <label class="form-group" style="margin-bottom:2px;">
                        Жил
                    </label>
                    <div class="form-group">
                        <asp:dropdownlist id="main_yr" runat="server" CssClass="form-control" style="padding: 0px;">
                            <asp:ListItem>2013</asp:ListItem>
                            <asp:ListItem>2014</asp:ListItem>
                            <asp:ListItem>2015</asp:ListItem>
                            <asp:ListItem>2016</asp:ListItem>
                            <asp:ListItem>2017</asp:ListItem>
                            <asp:ListItem>2018</asp:ListItem>
                            <asp:ListItem>2019</asp:ListItem>
                            <asp:ListItem>2020</asp:ListItem>
                            <asp:ListItem>2021</asp:ListItem>
                        </asp:dropdownlist>
                    </div>
                </div>
                <div class="col-sm-1">
                    <div class="form-group" style="margin-bottom:2px;">
                        Хагас жил
                    </div>
                    <div class="form-group">
                        <h3 id="main_hyr" runat="server" style="margin:5px 0 0 0">1</h3>
                    </div>
                </div>
                <div class="col-sm-1">
                    <div class="form-group" style="margin-bottom:2px;">
                        Улирал
                    </div>
                    <div class="form-group">
                        <h3 id="main_qrtr" runat="server" style="margin:5px 0 0 0">1</h3>
                    </div>
                </div>
                <div class="col-sm-1">
                    <div class="form-group" style="margin-bottom:2px;">
                        Сар
                    </div>
                    <div class="form-group">
                        <asp:dropdownlist id="main_month" runat="server" CssClass="form-control" style="padding: 0px;">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:dropdownlist>
                    </div>
                </div>
                <div class="col-sm-1" style="margin-top:20px;">
                    <button id="mainSave" class="btn btn-success btn-sm" type="button"><i class="fa fa-check"></i> Батлах </button>
                </div>
            </div>
            </form>
        </div>
    </div>
</article>
<script type="text/javascript">
    pageSetUp();
    var globalAjaxVar = null;
    var pagefunction = function () {

    }
    var pagedestroy = function () {
        if (globalAjaxVar != null) {
            globalAjaxVar.abort();
            globalAjaxVar = null;
        }
    }
    pagefunction();
    $("#main_month").change(function () {
        $('#main_hyr').html(getHalfyear($("#main_month option:selected").text()));
        $('#main_qrtr').html(getQuarter($("#main_month option:selected").text()));
    });
    $("#main_yr").change(function () {
        $('#main_hyr').html(1);
        $('#main_qrtr').html(1);
        $("#main_month").val('1');
    });
    $("#mainSave").click(function () {
        globalAjaxVar = $.ajax({
            type: "POST",
            url: "../ws/ServiceMain.svc/Sysset_SaveMainSet",
            data: '{"yr":"' + $("#main_yr option:selected").text() + '","hyr":"' + $("#main_hyr").text() + '","qrtr":"' + $("#main_qrtr").text() + '","month":"' + $("#main_month option:selected").text() + '"}',
            //data: "{'val': 'a'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function () {
                $("#indexCurrentYear").text($("#main_yr option:selected").text());
                $("#indexCurrentYearHalf").text($("#main_hyr").text());
                $("#indexCurrentQuarter").text($("#main_qrtr").text());
                $("#indexCurrentMonth").text($("#main_month option:selected").text());
                smallBox('Ерөнхий тохиргоо', 'Амжилттай хадгалагдлаа...', '#659265', 3000);
            },
            failure: function (response) {
                alert('FAILURE: ' + response.d);
            },
            error: function (xhr, status, error) {
                window.location = '../#pg/error500.aspx';
            }
        });
    });
    function getQuarter(month) {
        return Math.floor((month - 1) / 3) + 1;
    }
    function getHalfyear(month) {
        if (month - 6 <= 0) return 1;
        else return 2;
    }
</script>

