<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="LMWebApp.login" %>

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
            font-size: 38px;
            margin-bottom: 15px;
            font-family: 'Open Sans', arial;
            -webkit-font-smoothing: antialiased;
            color: #555;
            font-weight: 300;
            margin-top: 0;
            margin: 0 0 15px
        }
        .banner h2 {
            margin-bottom: 15px;
            font-family: 'Open Sans', arial;
            -webkit-font-smoothing: antialiased;
            color: #555;
            font-size: 18px;
            font-weight: 400;
        }
        .card {
            width: 400px;
            padding: 40px 40px;
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
        .card .profile-img {
            width: 96px;
            height: 96px;
            margin: 0 auto 10px;
            display: block;
            -moz-border-radius: 50%;
            -webkit-border-radius: 50%;
            border-radius: 50%;
            margin-top: 0;
        }
        .card .profile-name {
            font-size: 16px;
            font-weight: bold;
            text-align: center;
            margin: 10px 0 0;
            min-height: 1em;
        }
        .card .user-name {
            display: block;
            padding: 0 8px;
            color: #404040;
            line-height: 2;
            margin-bottom: 10px;
            font-size: 14px;
            text-align: center;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }
        p {
            display: block;
            -webkit-margin-before: 1em;
            -webkit-margin-after: 1em;
            -webkit-margin-start: 0px;
            -webkit-margin-end: 0px;
        }
        .card-mask {
            margin-top: 10px;
            background-color: #fff;
            background-position: 50% 0;
            background-repeat: no-repeat;
            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAWgAAAAGCAIAAABhDpMcAAAABmJLR…01VVXV67oQDgB4hIOZRURE/BJKv5kwM1QDAF7bcR84Qggf4ShHovU/ogcAAAAASUVORK5CYII=);
            min-height: 300px;
        }
        .card-mask p.create-account {
            margin-bottom: 30px;
            margin: 0 0 10px;
            color: #555;
            font-size: 14px;
            text-align: center;
        }
        .card-mask p.create-account a {
            color: #427fed;
            cursor: pointer;
            text-decoration: none;
        }
        .card-mask p.create-account a:hover {
            text-decoration: underline;
        }

        .back-arrow {
            display: block;
            border-style: none;
            position: absolute;
            top: 0;
            width: 24px;
            height: 24px;
            cursor: pointer
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
                    LMEIS & HRMIS
                </h1>
                <h2 class="hidden-small">
                    Домайн хэрэглэгчийн хаягаар нэвтрэнэ үү
                </h2>
            </div>
        </div>
        <div class="row">
            <div class="card">
                <div class="row">
                    <div class="col-md-12">
                        <img id="loginUserImage" runat="server" src="img/form/login/loginempty.png" class="profile-img" />
                    </div>
                </div>
                <div class="row">
                    <div id="loginDivSignup" runat="server" class="col-md-12">
                        <form id="loginFormSignup">
                            <div class="form-group">
                                <input id="loginInputSignupUsername" name="loginInputSignupUsername" runat="server" class="form-control input-lg" placeholder="Домайн хэрэглэгчийн нэр" type="text" maxlength="10"/>
                            </div>
                            <button id="loginButtonSignupNext" runat="server" type="submit" class="btn btn-primary btn-lg btn-block">
							    Үргэлжлүүлэх
						    </button>
                        </form>
                    </div>
                    <div id="loginDivSignin" runat="server" class="col-md-12">
                        <form id="loginFormSignin">
                            <img id="loginUserSigninBack" runat="server" class="back-arrow shift-form" aria-label="Back" role="button" tabindex="0" alt="Буцах" src="img/form/login/arrow_back_grey600_24dp.png"/>
                            <p id="loginUserSigninFullname" runat="server" class="profile-name">Gundee Gntmr</p>
                            <span id="loginSigninDomainname" runat="server" class="user-name">prj0005202</span>
                            <div class="form-group">
                                <input id="loginInputSigninPassword" runat="server" class="form-control input-lg" placeholder="Нууц үг" type="password"/>
                            </div>
                            <button id="loginButtonSigninSignin" runat="server" type="submit" class="btn btn-primary btn-lg btn-block">
							    Нэвтрэх
						    </button>
                            <div class="col-md-12">
                                <div class="checkbox">
							        <label>
								        <input id="loginInputSigninRememberme" runat="server" type="checkbox" class="checkbox style-2" checked="checked"/>
								        <span>Намайг сана</span>
							        </label>
						        </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div id="loginDivCreateaccount" runat="server" class="card-mask">
                <p class="create-account">
                    <a href="accountchooser">Өөр нэрээр нэвтрэх</a>
                </p>
            </div>
        </div>
    </div>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script> if (!window.jQuery) { document.write('<script src="js/libs/jquery-2.1.1.min.js"><\/script>'); } </script>
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
    <script> if (!window.jQuery.ui) { document.write('<script src="js/libs/jquery-ui-1.10.3.min.js"><\/script>'); } </script>
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <script type="text/javascript" src="../js/plugin/bootstrapvalidator/bootstrapValidator.min.js"></script>
    <script type="text/javascript">
        $('#loginFormSignup').bootstrapValidator({
            fields: {
                loginInputSignupUsername: {
                    group: '.form-group',
                    validators: {
                        notEmpty: {
                            message: 'Домайн хэрэглэгчийн нэр оруулна уу.'
                        },
                        stringLength: {
                            max: 10,
                            message: 'Уртдаа 10 тэмдэгт авна.'
                        }
                    }
                }
            },
            onSuccess: function (e, data) {
                e.preventDefault();
                $.ajax({
                    type: "POST",
                    url: "ws.aspx/loginCheckUser",
                    data: '{domainuser:"' + $.trim($('#loginInputSignupUsername').val()) + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        $('#loginDivSignup').attr('class', 'hide');
                        $('#loginDivSignin').attr('class', 'slideInRight fast animated');
                        $('#loginDivCreateaccount').attr('class', 'card-mask slideInRight fast animated');
                        $('#loginUserImage').attr('src', 'staffImage.ashx?stid=' + msg.d.split('~')[0]);
                        $('#loginUserSigninFullname').html(msg.d.split('~')[1]);
                        $('#loginSigninDomainname').html(msg.d.split('~')[2]);
                        $('#loginInputSigninPassword').val('');
                        $('#loginUserSigninBack').attr('back-arrow shift-form');
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        var err = eval("(" + xhr.responseText + ")");
                        $('#loginInputSignupUsername').parent().addClass('has-error');
                        $('#loginInputSignupUsername').parent().append('<small class="help-block nouser">' + $.trim(err.Message) + '</small>')
                    }
                });
            }
        });
        $("#loginInputSignupUsername").keypress(function () {
            $('#loginInputSignupUsername').parent().find('.nouser').remove();
        });
        $("#loginUserSigninBack").click(function () {
            $('#loginDivSignup').attr('class', 'slideInLeft fast animated');
            $('#loginDivSignin').attr('class', 'hide');
            $('#loginDivCreateaccount').attr('class', 'card-mask hide');
            $('#loginUserImage').attr('src', 'img/form/login/loginnopic.png');
            $('#loginUserSigninFullname').html('');
            $('#loginSigninDomainname').html('');
            $('#loginButtonSignupNext').prop('disabled',false);
        });

        $('#loginFormSignin').bootstrapValidator({
            fields: {
                loginInputSigninPassword: {
                    group: '.form-group',
                    validators: {
                        notEmpty: {
                            message: 'Нууц үг оруулна уу.'
                        }
                    }
                }
            },
            onSuccess: function (e, data) {
                e.preventDefault();
                var valIsRemember = 0;
                if ($('#loginInputSigninRememberme').is(':checked')) {
                    valIsRemember = 1;
                }
                $.ajax({
                    type: "POST",
                    url: "ws.aspx/loginCheckLogin",
                    data: '{domainuser:"' + $.trim($('#loginInputSignupUsername').val()) + '", pass:"' + $.trim($('#loginInputSigninPassword').val()) + '", remember:"'+valIsRemember+'"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        if (window.location.hash != '') window.location = '../' + window.location.hash;
                        else window.location = '../#pg/dashboard.aspx?t=f';
                    },
                    failure: function (response) {
                        alert('FAILURE: ' + response.d);
                    },
                    error: function (xhr, status, error) {
                        var err = eval("(" + xhr.responseText + ")");
                        $('#loginInputSigninPassword').parent().addClass('has-error');
                        $('#loginInputSigninPassword').parent().find('.nouser').remove();
                        $('#loginInputSigninPassword').parent().append('<small class="help-block nouser">' + $.trim(err.Message.replace('There was an error processing the request.', 'Нэвтрэх нэр эсвэл нууц үг буруу байна.')) + '</small>')
                    }
                });
            }
        });
    </script>
</body>
</html>
