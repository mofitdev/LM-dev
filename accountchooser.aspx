<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accountchooser.aspx.cs" Inherits="LMWebApp.accountchooser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <title>Цахим хяналт-шинжилгээ, үнэлгээ, хүний нөөцийн мэдээллийн систем</title>
    <link rel="stylesheet" type="text/css" media="screen" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-production.min.css"/>
    <link rel="shortcut icon" href="../img/favicon.ico" />
    <style>
          /* cyrillic-ext */
        @font-face {
          font-family: 'Open Sans';
          font-style: normal;
          font-weight: 300;
          src: local('Open Sans Light'), local('OpenSans-Light'), url(//fonts.gstatic.com/s/opensans/v13/DXI1ORHCpsQm3Vp6mXoaTa-j2U0lmluP9RWlSytm3ho.woff2) format('woff2');
          unicode-range: U+0460-052F, U+20B4, U+2DE0-2DFF, U+A640-A69F;
        }
        /* cyrillic */
        @font-face {
          font-family: 'Open Sans';
          font-style: normal;
          font-weight: 300;
          src: local('Open Sans Light'), local('OpenSans-Light'), url(//fonts.gstatic.com/s/opensans/v13/DXI1ORHCpsQm3Vp6mXoaTZX5f-9o1vgP2EXwfjgl7AY.woff2) format('woff2');
          unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
        }
        /* latin-ext */
        @font-face {
          font-family: 'Open Sans';
          font-style: normal;
          font-weight: 300;
          src: local('Open Sans Light'), local('OpenSans-Light'), url(//fonts.gstatic.com/s/opensans/v13/DXI1ORHCpsQm3Vp6mXoaTT0LW-43aMEzIO6XUTLjad8.woff2) format('woff2');
          unicode-range: U+0100-024F, U+1E00-1EFF, U+20A0-20AB, U+20AD-20CF, U+2C60-2C7F, U+A720-A7FF;
        }
        /* latin */
        @font-face {
          font-family: 'Open Sans';
          font-style: normal;
          font-weight: 300;
          src: local('Open Sans Light'), local('OpenSans-Light'), url(//fonts.gstatic.com/s/opensans/v13/DXI1ORHCpsQm3Vp6mXoaTegdm0LZdjqr5-oayXSOefg.woff2) format('woff2');
          unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2212, U+2215, U+E0FF, U+EFFD, U+F000;
        }
        html, body {
          font-family: Arial, sans-serif;
          background: #fff;
          margin: 0;
          padding: 0;
          border: 0;
          position: absolute;
          height: 100%;
          min-width: 100%;
          font-size: 13px;
          color: #404040;
          direction: ltr;
          -webkit-text-size-adjust: none;
          }
        .wrapper {
            position: relative;
            min-height: 100%;
        }
        div {
            display: block;
        }
        .logo {
            margin: 25px auto 20px; 
            float: none; 
            background-image: url(../forclient/img/moflogo.jpg); 
            background-size: 116px 38px; 
            background-repeat: no-repeat; 
            height: 38px; 
            width: 116px;        
        }
        h1, h2 {
          -webkit-animation-duration: 0.1s;
          -webkit-animation-name: fontfix;
          -webkit-animation-iteration-count: 1;
          -webkit-animation-timing-function: linear;
          -webkit-animation-delay: 0;
        }
        @-webkit-keyframes fontfix {
          from {
          opacity: 1;
          }
          to {
          opacity: 1;
          }
        }
        .banner {
            text-align: center;
        }
        .banner h1 {
            display: block;
            -webkit-margin-before: 0.67em;
            -webkit-margin-after: 0.67em;
            -webkit-margin-start: 0px;
            -webkit-margin-end: 0px;
            font-size: 20px;
            color: #262626;
            margin: 0 0 15px;
            font-weight: normal;
        }
        .card {
            width: 400px;
            padding: 0;
            margin-bottom: 20px;
            background-color: #f7f7f7;
            margin: 0 auto;
            -moz-border-radius: 2px;
            -webkit-border-radius: 2px;
            border-radius: 2px;
            -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        }
        ol {
            display: block;
            list-style-type: decimal;
            -webkit-margin-before: 1em;
            -webkit-margin-after: 1em;
            -webkit-margin-start: 0px;
            -webkit-margin-end: 0px;
            -webkit-padding-start: 40px;
        }
        .card ol {
            width: 100%;
            margin: 0;
            list-style: none;
            padding: 0;
        }
        li {
            display: list-item;
            text-align: -webkit-match-parent;
        }
        .card ol li {
            height: 76px;
            border-bottom: 1px solid #d5d5d5;
        }
        .card ol li button {
            border-left: 4px solid transparent;
            padding: 15px 20px;
            display: block;
            width: 100%;
            height: 100%;
            outline: none;
            border: 0;
            cursor: pointer;
            text-align: left;
            text-overflow: ellipsis;
            background: none;
        }
        .card ol li button.select {
            background: url(img/form/accountchooser/arrow_right_1x.png) right center no-repeat;
            background-size: 21px 21px;
            background-position: 360px center;
        }
        .card ol li button.remove {
            background: url(img/form/accountchooser/delete_1x.png) right center no-repeat;
            background-size: 21px 21px;
            background-position: 360px center;
        }
        .card ol li button img {
            float: left;
            -moz-border-radius: 50%;
            -webkit-border-radius: 50%;
            border-radius: 50%;
            height: 46px;
            width: 46px;
        }
        .card ol li button span {
            display: block;
            margin-left: 58px;
            padding-right: 20px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }
        .card ol li button span.account-name {
            font-weight: bold;
            font-size: 16px;
            padding-top: 3px;
            color: #427fed;
        }
        .card ol li button span.account-email {
            font-size: 14px;
            color: #404040;
        }
        .action-card {
            width: 400px;
            padding: 5px;
            margin-bottom: 20px;
            background-color: #f7f7f7;
            margin: 0 auto;
            -moz-border-radius: 2px;
            -webkit-border-radius: 2px;
            border-radius: 2px;
            -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        }
        .action-card ul {
            width: 100%;
            margin: 0;
            list-style: none;
            padding: 0;
        }
        .action-card ul.dual-action li:first-child {
            border-right: 1px solid #d5d5d5;
        }
        .action-card ul.dual-action li {
            width: 49%;
            display: inline-block;
        }
        .action-card ul li a {
            color: #427fed;
            cursor: pointer;
            text-decoration: none;
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            width: 100%;
            display: inline-block;
            background: none;
            text-align: center;
            padding: 12px 0;
            outline: none;
            text-decoration: none;
            border: 0;
        }
        .action-card ul li a:hover {
            text-decoration: underline;
        }

        .card ol li.removed-all-notice {
            padding: 15px;
            height: auto;
            padding-left: 28px;
            background: url(img/form/accountchooser/info_1x.png) 5px 12px no-repeat;
            background-size: 24px 24px;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <div class="row">
            <div class="col-md-12 logo"></div>
        </div>
        <div class="row">
            <div class="col-md-12 banner">
                <h1>
                    Нэвтрэх хэрэглэгч сонгоно уу
                </h1>
            </div>
        </div>
        <div class="row" style="margin-bottom:20px;">
            <div id="accDivAccountList" runat="server" class="card">
                <ol class="accounts">
                    <li>
                        <button type="button" value="prj0005202" class="select">
                            <img class="account-image" alt="" src="staffImage.ashx?stid=1622"/>
                            <span class="account-name">Gundsamba Gantumur</span>
                            <span class="account-email">prj0005202</span>
                        </button>
                    </li>
                    <li>
                        <button type="button" value="prj0005202" class="select">
                            <img class="account-image" alt="" src="staffImage.ashx?stid=1622"/>
                            <span class="account-name">Gundsamba Gantumur</span>
                            <span class="account-email">prj0005202</span>
                        </button>
                    </li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="action-card">
                <ul class="dual-action">
                    <li>
                        <a href="login?dmn=add" class="">Шинэ хэрэглэгч нэмэх</a>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="accountremove">Хасах</a>
                    </li>
                </ul>
                <ul class="choose-action hide">
                    <li><a href="javascript:void(0);" class="accountdone">Хадгалах</a></li>
                </ul>
            </div>
        </div>
    </div>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script> if (!window.jQuery) { document.write('<script src="js/libs/jquery-2.1.1.min.js"><\/script>'); } </script>
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
    <script> if (!window.jQuery.ui) { document.write('<script src="js/libs/jquery-ui-1.10.3.min.js"><\/script>'); } </script>
	<script src="js/bootstrap/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(".accountremove").click(function () {
            $('.useraccount').attr('class', 'remove useraccount');
            $('.dual-action').removeClass('hide').addClass('hide');
            $('.choose-action').removeClass('hide');
        });
        $(".accountdone").click(function () {
            $('.useraccount').attr('class', 'select useraccount');
            $('.dual-action').removeClass('hide');
            $('.choose-action').removeClass('hide').addClass('hide');
        });
        $(".useraccount").click(function () {
            if ($(this).attr('class') == 'select useraccount') {
                window.location = 'login?dmn=' + $(this).attr('value');
            }
            else {
                var valBtn = $(this);
                $.ajax({
                    type: "POST",
                    url: "ws.aspx/accounchooserRemoveUser",
                    data: '{domainuser:"' + $(this).attr('value') + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        $(valBtn).parent().remove();
                        if ($('.accounts').find('li').length == 0) {
                            $('.accounts').html('<li class="removed-all-notice">Бүх нэвтрэх хаяг хасагдлаа.</li>');
                        }
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        var err = eval("(" + xhr.responseText + ")");
                        alert($.trim(err.Message));
                    }
                });
            }
        });
    </script>
</body>
</html>
