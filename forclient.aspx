<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forclient.aspx.cs" Inherits="LMWebApp.forclient" %>

<html lang="en">
<head runat="server">
    <meta charset="utf-8">
    <title>Gundee</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="../forclient/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="../forclient/font-awesome.css" media="all" rel="stylesheet" type="text/css">
    <link href="../forclient/animate.css" rel="stylesheet" type="text/css">
    <link href="../forclient/isotope.css" rel="stylesheet" type="text/css">
    <link href="../forclient/style.css" rel="stylesheet" type="text/css">
    <link href="../forclient/style-responsive.css" rel="stylesheet" type="text/css">
    <script src="../forclient/opt_content.js"></script>
    <link href="../js/plugin/flexslider/flexslider.css"  rel="stylesheet" type="text/css"/>

    <style type="text/css">
        .tbltrhead td {
            text-align: center;
            vertical-align: middle;
            font-weight: bold;
            background-color: #eee;
            background-image: -webkit-linear-gradient(top,#f2f2f2 0,#fafafa 100%);
        }

        .tbltrhead td {
            text-align: center;
            vertical-align: middle;
        }

        .scrollBtn {
            width: 45px;
            height: 45px;
            padding: 10px 15px;
            font-size: 24px;
            line-height: 50px;
        }

        .scrollUp {
            position: fixed;
            top: 1000px;
            right: 10px;
            z-index: 10;
            background-image: url('../img/arrow-up-icon.png');
            background-repeat: no-repeat;
        }

        .scrollDown {
            position: fixed;
            top: 1100px;
            right: 10px;
            z-index: 10;
            background-image: url('../img/arrow-down-icon.png');
            background-repeat: no-repeat;
        }

        *.unselectable {
            -moz-user-select: -moz-none;
            -khtml-user-select: none;
            -webkit-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        .search-background {
            text-align: center;
            padding: 40px 0 0 0;
            vertical-align: middle;
            display: none;
            position: absolute;
            z-index: 1;
            width: 1030px;
            height: 100%;
            min-height: 2000px;
            margin-left: -31px;
        }

        .show-time-cities-localtime {
            width: 500px;
            display: block;
            overflow: hidden;
            color: #fff;
            text-shadow: 1px 0px 1px #000;
        }

        .show-time-cities-localtime-clock {
            float: left;
            font-size: 24px;
        }

        .show-time-cities-localtime-right {
            float: left;
            font-size: 14px;
            line-height: 10px;
            text-align: center;
            padding-left: 2px;
            padding-top: 9px;
        }

        /*.section-banner {
            padding: 685px 0 50px 0!important;
        }*/
    </style>
    <style>
                                    .tickercontainer { 
                                    width: 100%;
                                    height: 20px;
                                    margin: 0;
                                    padding: 0;
                                    overflow: hidden;
                                    }
                                    .tickercontainer .mask { 
                                    position: relative;
                                    top: 0px;
                                    height: 20px;
                                    overflow: hidden;
                                    }
                                    ul.newsticker { 
                                    -webkit-transition: all 0s linear;
                                    -moz-transition: all 0s linear;
                                    -o-transition: all 0s linear;
                                    transition: all 0s linear;
                                    position: relative;
                                    font: bold 10px Verdana;
                                    list-style-type: none;
                                    margin: 0;
                                    padding: 0;
                                    }
                                    ul.newsticker li {
                                    float: left;
                                    margin: 0;
                                    padding: 0 7px;
                                    box-sizing:border-box;
                                    }
                                </style>
                                <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
                                <%--<script src="../forclient/jquery.webticker.js" type="text/javascript"></script> 
                                <script type="text/javascript">
                                    jQuery(function () {
                                        jQuery("#webticker").webTicker({ speed: 150});
                                    });
                                </script>--%>
</head>
<body class="unselectable">

    <a href="javascript:void(0);" class="scrollBtn scrollUp">
        <i class="fa fa-arrow-up" style="font-size: 72px;"></i>
    </a>
    <a href="javascript:void(0);" class="scrollBtn scrollDown">
        <i class="fa fa-arrow-down" style="font-size: 72px;"></i>
    </a>
    <div class="navbar-wrapper">
        <div class="navbar navbar-fixed-top" id="navigation">
            <div class="navbar-inner sticky">
                <div class="container" style="padding: 10px 0 10px 0;">
                    <div class="nav-collapse collapse">
                        <div style="display:block; overflow:hidden; color: #fff; text-shadow: 0.5px 0.5px 0.5px #000;">
                            <div id="forclientTimer" style="width:100px; float:left; border-right:1px solid #fff;font-size: 15px;">
                                
                            </div>
                            <div style="width:810px; float:left;">                                
                                <%--<ul id="webticker" class="newsticker">
                                    <li id="item1">http://mof.gov.mn1</li>
                                    <li id="item2">http://mof.gov.mn2</li>
                                    <li id="item3">http://mof.gov.mn3</li>
                                    <li id="item4">http://mof.gov.mn4</li>
                                    <li id="item5">http://mof.gov.mn5</li>
                                    <li id="item6">http://mof.gov.mn6</li>
                                    <li id="item7">http://mof.gov.mn7</li>
                                    <li id="item8">http://mof.gov.mn8</li>
                                    <li id="item9">http://mof.gov.mn9</li>
                                    <li id="item10">http://mof.gov.mn10</li>
                                </ul>--%>
                            </div>                            
                        </div>
                        <%--<div class="flexslider">
                          <ul class="slides">
                            <li>
                              <img src="../forclient/img/Naadam2015.jpg" />
                            </li>
                          </ul>
                        </div>--%>
                        <%--<video id="myVideo" width="900" height="400" autoplay controls>
                          <source src="../forclient/video/video01.mp4" type="video/mp4">
                        </video>--%>
                        <ul class="nav pull-left">
                            <li class="active">
                                <a href="#section1">ЭРХ НЭЭГДЭЭД ХҮЛЭЭГДЭЖ<br>
                                    ХӨРӨНГӨ БАЙГАА<br>
                                    ОРУУЛАЛТЫН ЖАГСААЛТ</a>
                            </li>
                            <li class="active">
                                <a href="#section2">САНГИЙН САЙДЫН БАГЦЫН<br>
                                    2015 ОНЫ БАТЛАГДСАН ТӨСӨВ<br>
                                    /сая.төг/</a>
                            </li>
                            <li class="">
                                <a href="#section3">САНГИЙН ЯАМНЫ<br>
                                    2015 ОНЫ<br>
                                    БАТЛАГДСАН ТӨСӨВ</a>
                            </li>
                            <li class="">
                                <a href="#section4">САНГИЙН ЯАМНЫ<br>
                                    2015 ОНЫ ТӨСВИЙН<br>
                                    САРЫН ГҮЙЦЭТГЭЛ</a>
                            </li>
                            <li class="">
                                <a href="#section5">САНГИЙН ЯАМНЫ<br>
                                    ҮЙЛ АЖИЛЛАГААНД<br>
                                    ҮНЭЛГЭЭ ӨГӨХ</a>
                            </li>
                            <li class="">
                                <a href="#section6">САНГИЙН САЙДЫН 2015 ОНЫ ХЭРЭГЖҮҮЛЭХ<br>
                                    ХӨТӨЛБӨР, ХӨТӨЛБӨРИЙН ХҮРЭХ ҮР<br>
                                    ДҮН, ШАЛГУУР ҮЗҮҮЛЭЛТ</a>
                            </li>
                            <li class="">
                                <a href="#section7">САНГИЙН САЙДЫН БАГЦАД УЛСЫН ТӨСВИЙН ХӨРӨНГӨӨР<br>
                                    2015 ОНД ХЭРЭГЖҮҮЛЭХ ХӨРӨНГӨ ОРУУЛАЛТЫН ТӨСӨЛ,<br>
                                    АРГА ХЭМЖЭЭ БАРИЛГА БАЙГУУЛАМЖИЙН ЖАГСААЛТ</a>
                            </li>
                            <li class="">
                                <a href="#section8">САНГИЙН<br>
                                    ЯАМНЫ<br>
                                    БҮТЭЦ</a>
                            </li>
                            <li class="">
                                <a href="#section9">ТУСГАЙ<br />ЗӨВШӨӨРӨЛ<br /></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="wrap" class="cover">
        <section id="section1" class="section">
            <div class="section-banner" data-stellar-background-ratio="0">
                <h2>Эрх нээгдээд хүлээгдэж байгаа хөрөнгө оруулалтын жагсаалт 
                    <img src="img/refresh-icon.png" width="40" title="Мэдээлэл шинэчлэх" onclick="section1Refresh()" /></h2>
                <p style="font-size: 18px; font-weight: 300; text-transform: uppercase; text-align: center; letter-spacing: 1px; margin: 10px 0;"><span id="section1Year" runat="server">0000</span> оны <span id="section1Month" runat="server">00</span> сарын <span id="section1Day" runat="server">00</span> байдлаар</p>
                <p style="text-align: center;">Та энэхүү жагсаалтыг <span style="text-decoration: underline; color: darkblue;">www.mof.gov.mn</span> вэб сайтын баруун талд байрлах <b>"Хүлээгдэж буй хөрөнгө оруулалт" хэсгээс харах боломжтой.</b></p>
            </div>
            <div class="container" style="padding-top: 10px; min-height: 2000px;">
                <div id="loaderTab1" class="search-background">
                    <img width="64" height="" src="img/loading.gif" />
                    <h2 style="width: 100%; display: block; overflow: hidden; padding: 20px 0 0 0; color: #fff; padding-top: 0px; margin-top: 0px;">Уншиж байна !</h2>
                </div>
                <div id="divsection1Content" runat="server" class="row">
                </div>
            </div>
        </section>
        <section id="section2" class="section">
            <div class="section-banner" data-stellar-background-ratio="0.5">
                <h2>Сангийн сайдын багцын 2015 оны батлагдсан төсөв /сая.төг/</h2>
            </div>
            <div class="container" style="padding-top: 10px; min-height: 2000px;">
                <table class="table table-bordered">
                    <tbody>
                        <tr>
                            <td style="width: 50%;">
                                <div style="height: 100px; text-align: center;">
                                    <img src="forclient/img/moflogo.jpg" style="height: 100%;" />
                                </div>
                                <div style="text-align: center; padding-top: 20px;">Сангийн яам <b>9,358.1</b></div>
                            </td>
                            <td style="width: 50%;">
                                <div style="height: 100px; text-align: center;">
                                    <img src="forclient/img/tatvarlogo.png" style="height: 100%;" />
                                </div>
                                <div style="text-align: center; padding-top: 20px;">Татварын ерөнхий сан <b>30,967.2</b></div>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 50%;">
                                <div style="height: 100px; text-align: center;">
                                    <img src="forclient/img/gaalilogo.jpg" style="height: 100%;" />
                                </div>
                                <div style="text-align: center; padding-top: 20px;">Гаалийн ерөнхий газар <b>29,112.9</b></div>
                            </td>
                            <td style="width: 50%;">
                                <div style="height: 100px; text-align: center;">
                                    <img src="forclient/img/moflogo.jpg" style="height: 100%;" />
                                </div>
                                <div style="text-align: center; padding-top: 20px;">Засгийн газрын нөөц сан <b>20,000.0</b></div>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 50%;">
                                <div style="height: 100px; text-align: center;">
                                    <img src="forclient/img/moflogo.jpg" style="height: 100%;" />
                                </div>
                                <div style="text-align: center; padding-top: 20px;">Эрсдлийн сан <b>5,000.0</b></div>
                            </td>
                            <td style="width: 50%;">
                                <div style="height: 100px; text-align: center;">
                                    <img src="forclient/img/moflogo.jpg" style="height: 100%;" />
                                </div>
                                <div style="text-align: center; padding-top: 20px;">Улсын төсвөөс бусад шатны төсөвт олгох татаас, шилжүүлэг <b>159,170.7</b></div>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 50%;">
                                <div style="height: 100px; text-align: center;">
                                    <img src="forclient/img/moflogo.jpg" style="height: 100%;" />
                                </div>
                                <div style="text-align: center; padding-top: 20px;">Орон нутгийн хөгжлийн сангаас олгох орлогын шилжүүлэг <b>284,400.8</b></div>
                            </td>
                            <td style="width: 50%;">
                                <div style="height: 100px; text-align: center;">
                                    <img src="forclient/img/moflogo.jpg" style="height: 100%;" />
                                </div>
                                <div style="text-align: center; padding-top: 20px;">Улс, орон нутгийн төсөвт байгууллагууд олгох татаас, шилжүүлэг <b>28,175.2</b></div>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 50%;">
                                <div style="height: 100px; text-align: center;">
                                    <img src="forclient/img/moflogo.jpg" style="height: 100%;" />
                                </div>
                                <div style="text-align: center; padding-top: 20px;">Гадаад зээлийн үйлчилгээний төлбөр <b>36,121.4</b></div>
                            </td>
                            <td style="width: 50%;">
                                <div style="height: 100px; text-align: center;">
                                    <img src="forclient/img/moflogo.jpg" style="height: 100%;" />
                                </div>
                                <div style="text-align: center; padding-top: 20px;">Сайдын төсвийн багцад хамаарах төслийн нэгжүүд <b>28,526.5</b></div>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 50%;">
                                <div style="height: 100px; text-align: center;">
                                    <img src="forclient/img/moflogo.jpg" style="height: 100%;" />
                                </div>
                                <div style="text-align: center; padding-top: 20px;">Засгийн газрын зээл ба бонд <b>341,954.4</b></div>
                            </td>
                            <td style="width: 50%;">
                                <div style="height: 100px; text-align: center;">
                                    <img src="forclient/img/moflogo.jpg" style="height: 100%;" />
                                </div>
                                <div style="text-align: center; padding-top: 20px;">Бусад татаас, шилжүүлэг <b>7944.3</b></div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>
        <section id="section3" class="section">
            <div class="section-banner" data-stellar-background-ratio="0.5">
                <h2>Сангийн яамны төсөв /<span id="forclientTab2Year" runat="server">0000</span> он</h2>
            </div>
            <div class="container" style="padding-top: 10px; min-height: 1184px;">
                <p><embed id="forclientTab2File" runat="server" src="" style="width:100%; height:100%;" /></p>
            </div>
        </section>
        <section id="section4" class="section">
            <div class="section-banner" data-stellar-background-ratio="0.5">
                <h2>Сангийн яамны төсвийн гүйцэтгэл /<span id="forclientTab1Year" runat="server">0000</span> оны <span id="forclientTab1Month" runat="server">00</span> -р сар/</h2>
            </div>
            <div class="container" style="padding-top: 10px; min-height: 1184px;">
                <p><embed id="forclientTab1File" runat="server" src="" style="width:100%; height:100%;" /></p>
            </div>
        </section>
        <section id="section5" class="section">
            <div class="section-banner" data-stellar-background-ratio="0.5">
                <h2>Үйл ажиллагаанд үнэлгээ өгөх</h2>
            </div>
            <div class="container" style="padding-top: 10px; min-height: 2000px;">
                <p style="text-align: center; font-weight: bold; font-size: 20px; line-height: 120%">Таньд энэ өдрийн мэндийг хүргэе...<br />
                    <br />
                    Таныг Сангийн яамны үйл ажиллагааны талаарх сэтгэл ханамжийн судалгаанд оролцож, биднийг цаашдын үйл ажиллагаагаа сайжруулахад хамтарч ажиллахыг хүсье.<br />
                    <br />
                    Та Сангийн яамны ямар газар хэлтсээр үйлчлүүлсэн бэ?<br />
                    Газрын нэрэн дээр дарна уу</p>
                <div style="border: 1px solid #ddd; padding: 19px; border-radius: 2px;">
                    <input type="button" value="Төсвийн бодлого, төлөвлөлтийн газар" class="btn" style="background-color: #4e7a8c; width: 100%;" data-target="#forclientModal" data-toggle="modal" onclick="setGazarInModal(this, '9908')" />
                    <input type="button" value="Хууль, худалдан авах ажиллагааны бодлогын газар" class="btn" style="background-color: #4e7a8c; width: 100%;" data-target="#forclientModal" data-toggle="modal" onclick="setGazarInModal(this, '9902')" />
                    <input type="button" value="Эдийн засгийн бодлогын газар" class="btn" style="background-color: #4e7a8c; width: 100%;" data-target="#forclientModal" data-toggle="modal" onclick="setGazarInModal(this, '9916')" />
                    <input type="button" value="Санхүүгийн бодлогын газар" class="btn" style="background-color: #4e7a8c; width: 100%;" data-target="#forclientModal" data-toggle="modal" onclick="setGazarInModal(this, '9919')" />
                    <input type="button" value="Төсвийн хөрөнгө оруулалтын газар" class="btn" style="background-color: #4e7a8c; width: 100%;" data-target="#forclientModal" data-toggle="modal" onclick="setGazarInModal(this, '9917')" />
                    <input type="button" value="Хөгжлийн санхүүжилт өрийн удирдлагын газар" class="btn" style="background-color: #4e7a8c; width: 100%;" data-target="#forclientModal" data-toggle="modal" onclick="setGazarInModal(this, '9918')" />
                    <input type="button" value="Нягтлан бодох бүртгэлийн бодлогын газар" class="btn" style="background-color: #4e7a8c; width: 100%;" data-target="#forclientModal" data-toggle="modal" onclick="setGazarInModal(this, '9904')" />
                    <input type="button" value="Төрийн захиргааны удирдлагын газар" class="btn" style="background-color: #4e7a8c; width: 100%;" data-target="#forclientModal" data-toggle="modal" onclick="setGazarInModal(this, '9915')" />
                    <input type="button" value="Төрийн сангийн газар" class="btn" style="background-color: #4e7a8c; width: 100%;" data-target="#forclientModal" data-toggle="modal" onclick="setGazarInModal(this, '9913')" />
                    <input type="button" value="Төсвийн хяналт, эрсдлийн удирдлагын газар" class="btn" style="background-color: #4e7a8c; width: 100%;" data-target="#forclientModal" data-toggle="modal" onclick="setGazarInModal(this, '9907')" />
                </div>
            </div>
        </section>
        <section id="section6" class="paddingbottom40">
            <div class="section-banner" data-stellar-background-ratio="0.5">
                <h2>Сангийн сайдын 2015 оны хэрэгжүүлэх хөтөлбөр, хөтөлбөрийн хүрэх үр дүн, шалгуур үзүүлэлт</h2>
            </div>
            <div class="container" style="padding-top: 10px; min-height: 2000px;">
                <p style="text-align: right; font-style: italic;">Монгол улсын 2015 оны төсвийн тухай хуулиас</p>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th style="text-align: center;">Д/д</th>
                            <th style="text-align: center;" colspan="3">Төсвийн ерөнхийлөн захирагч, түүний хэрэгжүүлэх хөтөлбөр, хөтөлбөрийн хүрэх үр дүнгийн үзүүлэлт</th>
                            <th style="text-align: center;">2014 оны зорилтот түвшин</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="font-weight: bold;">
                            <td>21</td>
                            <td colspan="3" style="margin-left: 1em;">САНГИЙН САЙД</td>
                            <td></td>
                        </tr>
                        <tr style="font-weight: bold;">
                            <td></td>
                            <td>21.1</td>
                            <td colspan="2">Санхүү, төсөв, эдийн засгийн нэгдсэн удирдлага</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>21.1.1</td>
                            <td>Монгол Улсын төсөв, Нийгмийн даатгалын сангийн төсөв, Хүний хөгжил сангийн төсөв болон Дунд хугацааны төсвийн хүрээний мэдэгдлийн тухай хуулийн төсөл боловсруулж, өргөн мэдүүлэх, хэлэлцүүлэг</td>
                            <td>Хуульд заасан хугацаанд хийгдсэн байх</td>
                        </tr>
                        <tr style="font-weight: bold;">
                            <td></td>
                            <td>21.2</td>
                            <td colspan="2">Татвар хураалт, орлого бүрдүүлэлт</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>21.2.1</td>
                            <td>Улс, орон нутгийн төсөвт орох татварын орлогын төлөвлөгөөний биелэлт /хувиар/</td>
                            <td style="text-align: center;">100</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>21.2.2</td>
                            <td>Урьд оны тайлангаар ноогдуулсан татварын өр барагдуулах /хувиар/</td>
                            <td style="text-align: center;">75</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>21.2.3</td>
                            <td>Урьд оны хяналт шалгалтаар ноогдуулсан өр барагдуулах /хувиар/</td>
                            <td style="text-align: center;">75</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>21.2.4</td>
                            <td>Тайлант хугацааны татварын тайлангийн ногдол өр барагдуулалт /хувиар/</td>
                            <td style="text-align: center;">91</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>21.2.5</td>
                            <td>Тайлант хугацааны хяналт шалгалтын ногдол өрийн барагдуулалт /хувиар/</td>
                            <td style="text-align: center;">82</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>21.2.6</td>
                            <td>Татварын цахим тайлан авалт/хувиар/</td>
                            <td style="text-align: center;">92</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>21.2.7</td>
                            <td>Татварын зөрчлийн бууралт /хувиар/</td>
                            <td style="text-align: center;">10</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>21.2.8</td>
                            <td>Алдагдалтай буюу "X" тайлан тушаалтын бууралт /хувиар/</td>
                            <td style="text-align: center;">5-аас доошгүй хувь</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>21.2.9</td>
                            <td>Аж ахуйн нэгжийн орлогын албан татвар төлөгчийн баазыг нэмэгдүүлэх /хувиар/</td>
                            <td style="text-align: center;">5-8 хувь</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>21.2.10</td>
                            <td>Нэмэгдсэн өртөгийн албан татвар төлөгчийн баазыг нэмдэгдүүлэх /хувиар/</td>
                            <td style="text-align: center;">2-оос доошгүй хувь</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>21.2.11</td>
                            <td>Бусад төрлийн татвар төлөгчийн баазыг нэмэгдүүлэх /хувиар/</td>
                            <td style="text-align: center;">05-3 хувь</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>21.2.12</td>
                            <td>Эрсдэлийн удирдлагад суурилсан гаалийн хяналт шалгалтын үйл ажиллагааны хэрэгжилт /хувиар/</td>
                            <td style="text-align: center;">40</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>21.2.13</td>
                            <td>Худалдааг хөнгөвчилж гаалийн бүрдүүлэлтэд зарцуулах хугацааг бууруулах /хувиар/</td>
                            <td style="text-align: center;">50</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>21.2.14</td>
                            <td>Гаалийн хяналтад эрсдэлийн удирдлагыг нэвтрүүлж, гааль, бизнесийн түншлэлийг дэмжих замаар хууль ёсны худалдааг хөнгөвчлөх /хувиар/</td>
                            <td style="text-align: center;">5</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>21.2.15</td>
                            <td>Зөрчлийн мэдээллийн стратеги хэрэгжилт /хувиар/</td>
                            <td style="text-align: center;">10</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>21.2.16</td>
                            <td>Хориглосон, хязгаарласан барааны илрүүлэлтийг нэмэгдүүлэх /хувиар/</td>
                            <td style="text-align: center;">10</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>21.2.17</td>
                            <td>Дэлхийн худалдааны байгууллагын зөвлөмж хэрэгжсэн, барааны ангилал ижил нэг мөр болсон байх /хувиар/</td>
                            <td style="text-align: center;">20</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>21.2.18</td>
                            <td>Гааль болон харилцагчдын хэрэгцээ шаардлагад нийцсэн үр ашигтай, найдвартай мэдээллийн технологийг систем бий болгох /хувиар/</td>
                            <td style="text-align: center;">20</td>
                        </tr>
                        <tr style="font-weight: bold;">
                            <td></td>
                            <td>21.3</td>
                            <td colspan="2">Засгийн газрын өрийн гүйлгээ</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>21.3.1</td>
                            <td>Дотоодын нийт бүтээгдэхүүнд өрийн эзлэх хэмжээ /өнөөгийн үнэ цэнээр тооцсоноор/</td>
                            <td style="text-align: center;">60 хувиас ихгүй</td>
                        </tr>
                        <tr style="font-weight: bold;">
                            <td></td>
                            <td>21.4</td>
                            <td colspan="2">Засаг захиргааны түвшин хоорондын шилжүүлэг</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>21.4.1</td>
                            <td>Орон нутгийн хөгжлийн нэгдсэн санд орлогын шилжүүлгийг олгох</td>
                            <td style="text-align: center;">Орлогын бүрдүүлэлттэй уялдуулан сар бүр тооцож олгох</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>21.4.2</td>
                            <td>Орон нутагт улсын төсвөөс олгох санхүүгийн дэмжлэг олгох</td>
                            <td style="text-align: center;">Орон нутгийн төсвийн тогтвортой байдлыг хангахуйц байдлаар сар бүр хуваарилж олгох</td>
                        </tr>
                        <tr style="font-weight: bold;">
                            <td></td>
                            <td>21.5</td>
                            <td colspan="2">Тусгай сан, ангилагдаагүй нөөц</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>21.5.1</td>
                            <td>Засгийн газрын нөөц, сан, Тогтворжуулалтын сан, Эрсдэлийн сан, Хүний хөгжлийн санг удирдах</td>
                            <td style="text-align: center;">Хуулийн дагуу</td>
                        </tr>
                        <tr style="font-weight: bold;">
                            <td></td>
                            <td>21.6</td>
                            <td colspan="2">Бусад татаас, шилжүүлэг, дэмжлэг</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>21.6.1</td>
                            <td>Үндэсний олон нийтийн радио, телебизэд төсвөөс олгох санхүүгийн дэмжлэг</td>
                            <td style="text-align: center;">Үйл ажиллагааны хараат бус байдалд нь нөлөөлөхгүй байх</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>
        <section id="section7" class="margintop40">
            <div class="section-banner" data-stellar-background-ratio="0.5">
                <h2>Сангийн сайдын багцад улсын төсвийн хөрөнгөөр 2014 онд хэрэгжүүлэх хөрөнгө оруулалтын төсөл арга хэмжээ барилга байгууламжын жагсаалт</h2>
            </div>
            <div class="container" style="padding-top: 10px; min-height: 2000px;">
                <p style="text-align: right;">
                    Монгол Улсын 2014 оны төсвийн тухай<br />
                    хуулийн 2 дугаар хавсралт
                </p>
                <p style="text-align: center; font-weight: bold;">
                    САНГИЙН САЙДЫН БАГЦАД УЛСЫН ТӨСВИЙН ХӨРӨНГӨӨР 2014 ОНД ХЭРЭГЖҮҮЛЭХ ХӨРӨНГӨ ОРУУЛАЛТЫН ТӨСӨЛ, АРГА ХЭМЖЭЭ БАРИЛГА БАЙГУУЛАМЖИЙН ЖАГСААЛТ
                </p>
                <p style="text-align: right; font-style: italic;">/сая.төг/</p>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th rowspan="2" style="text-align: center;">Дугаар</th>
                            <th rowspan="2" style="text-align: center;">Төсөл, арга хэмжээний нэр, хүчин чадал, байршил</th>
                            <th colspan="2" style="text-align: center;">Хугацаа</th>
                            <th rowspan="2" style="text-align: center;">Төсөвт өртөг</th>
                            <th rowspan="2" style="text-align: center;">2014 онд санхүүжих</th>
                        </tr>
                        <tr>
                            <th style="text-align: center;">Эхлэх</th>
                            <th style="text-align: center;">Дуусах</th>
                        </tr>
                        <tr>
                            <th style="text-align: center;">1</th>
                            <th style="text-align: center;">2</th>
                            <th style="text-align: center;">3</th>
                            <th style="text-align: center;">4</th>
                            <th style="text-align: center;">5</th>
                            <th style="text-align: center;">6</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="color: #b94a48; font-weight: bold;">
                            <td style="text-align: center;">XIII</td>
                            <td>САНГИЙН САЙД</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: right;">151074.8</td>
                            <td style="text-align: right;">146224.8</td>
                        </tr>
                        <tr style="color: #ac5287; font-weight: bold;">
                            <td style="text-align: center;">XIII.1</td>
                            <td>Сангийн яам</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: right;">140394.8</td>
                            <td style="text-align: right;">140394.8</td>
                        </tr>
                        <tr style="color: #3276b1; font-weight: bold;">
                            <td style="text-align: center;">XIII.1.1</td>
                            <td>I. Хөрөнгө оруулалт</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: right;">140394.8</td>
                            <td style="text-align: right;">140394.8</td>
                        </tr>
                        <tr style="color: #3276b1;">
                            <td style="text-align: center;">&nbsp;</td>
                            <td>Шилжих</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: right;">139394.8</td>
                            <td style="text-align: right;">139394.8</td>
                        </tr>
                        <tr>
                            <td style="text-align: center;">XIII.1.1.1</td>
                            <td>Монгол Улсын 2014 төсвийн хөрөнгө оруулалтын жагсаалтанд санхүүжих дүнг "0" тусгагдсан төсөл, арга хэмжээний санхүүжилтийг аудитын байгууллагын дүгнэлтээс хамаарч санхүүжүүлэх хөрөнгө оруулалт</td>
                            <td style="text-align: center;">2014</td>
                            <td style="text-align: center;">2014</td>
                            <td style="text-align: right;">139394.8</td>
                            <td style="text-align: right;">139394.8</td>
                        </tr>
                        <tr style="color: #3276b1;">
                            <td style="text-align: center;">&nbsp;</td>
                            <td>Шинэ</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: right;">1000.0</td>
                            <td style="text-align: right;">1000.0</td>
                        </tr>
                        <tr>
                            <td style="text-align: center;">XIII.1.1.2</td>
                            <td>Төсөл, арга хэмжээний бэлтгэл хангах</td>
                            <td style="text-align: center;">2014</td>
                            <td style="text-align: center;">2014</td>
                            <td style="text-align: right;">1000.0</td>
                            <td style="text-align: right;">1000.0</td>
                        </tr>
                        <tr style="color: #ac5287; font-weight: bold;">
                            <td style="text-align: center;">XIII.2</td>
                            <td>Татварын Ерөнхий газар</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: right;">5800.0</td>
                            <td style="text-align: right;">1850.0</td>
                        </tr>
                        <tr style="color: #3276b1; font-weight: bold;">
                            <td style="text-align: center;">XIII.2.3</td>
                            <td>III. Тоног төхөөрөмж</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: right;">5800.0</td>
                            <td style="text-align: right;">1850.0</td>
                        </tr>
                        <tr style="color: #3276b1;">
                            <td style="text-align: center;">&nbsp;</td>
                            <td>Шилжих</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: right;">5800.0</td>
                            <td style="text-align: right;">1850.0</td>
                        </tr>
                        <tr>
                            <td style="text-align: center;">XIII.2.3.1</td>
                            <td>Цахим татвар програм хангамж, техник, тоног төхөөрөмж худалдан авах, сүлжээг сайжруулах /Улаанбаатар/</td>
                            <td style="text-align: center;">2013</td>
                            <td style="text-align: center;">2015</td>
                            <td style="text-align: right;">5800.0</td>
                            <td style="text-align: right;">1850.0</td>
                        </tr>
                        <tr style="color: #ac5287; font-weight: bold;">
                            <td style="text-align: center;">XIII.3</td>
                            <td>Гаалийн Ерөнхий газар</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: right;">4880.0</td>
                            <td style="text-align: right;">3980.0</td>
                        </tr>
                        <tr style="color: #3276b1; font-weight: bold;">
                            <td style="text-align: center;">XIII.3.1</td>
                            <td>I. Хөрөнгө оруулалт</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: right;">2880.0</td>
                            <td style="text-align: right;">1980.0</td>
                        </tr>
                        <tr style="color: #3276b1;">
                            <td style="text-align: center;">&nbsp;</td>
                            <td>Шилжих</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: right;">1380.0</td>
                            <td style="text-align: right;">480.0</td>
                        </tr>
                        <tr>
                            <td style="text-align: center;">XIII.3.1.1</td>
                            <td>Шалган нэвтрүүлэх цогцолбор /Увс, Давст сум, Боршоо боомт/</td>
                            <td style="text-align: center;">2011</td>
                            <td style="text-align: center;">2014</td>
                            <td style="text-align: right;">0.0</td>
                            <td style="text-align: right;">0.0</td>
                        </tr>
                        <tr>
                            <td style="text-align: center;">XIII.3.1.2</td>
                            <td>Гаалийн ажилчдын 8 байрыг цахилгаанаар хангаж байгаа цахилгааны кабель шугамуудыг шинэчлэн солих, 15 машины гаражийн барилгын дээвэр засварлах, конторын барилгын цахилгаанаар халаах тогоог шинэчлэх, гадна цэвэр усны шугам солих, цахилгаан тэжээлийн кабель утсыг солих /Дорноговь, Замын үүд/</td>
                            <td style="text-align: center;">2013</td>
                            <td style="text-align: center;">2014</td>
                            <td style="text-align: right;">0.0</td>
                            <td style="text-align: right;">0.0</td>
                        </tr>
                        <tr>
                            <td style="text-align: center;">XIII.3.1.3</td>
                            <td>Шивээхүрэн боомтод 32 айлын орон сууц барих /Өмнөговь/</td>
                            <td style="text-align: center;">2013</td>
                            <td style="text-align: center;">2014</td>
                            <td style="text-align: right;">0.0</td>
                            <td style="text-align: right;">0.0</td>
                        </tr>
                        <tr>
                            <td style="text-align: center;">XIII.3.1.4</td>
                            <td>Гаальчдын 8 айлын орон сууц нийт 24 айлын орон сууц 3 байршилд барих /Сүхбаатар, Бичигт; Ховд, Булган; Хөвсгөл, Мөрөн/</td>
                            <td style="text-align: center;">2013</td>
                            <td style="text-align: center;">2014</td>
                            <td style="text-align: right;">0.0</td>
                            <td style="text-align: right;">0.0</td>
                        </tr>
                        <tr>
                            <td style="text-align: center;">XIII.3.1.5</td>
                            <td>Гаалийн боомтуудын холбоожуулалт</td>
                            <td style="text-align: center;">2013</td>
                            <td style="text-align: center;">2015</td>
                            <td style="text-align: right;">900.0</td>
                            <td style="text-align: right;">300.0</td>
                        </tr>
                        <tr>
                            <td style="text-align: center;">XIII.3.1.6</td>
                            <td>Гаалийн албаны мэдээллийн системийг бэхжүүлэх</td>
                            <td style="text-align: center;">2013</td>
                            <td style="text-align: center;">2015</td>
                            <td style="text-align: right;">480.0</td>
                            <td style="text-align: right;">180.0</td>
                        </tr>
                        <tr style="color: #3276b1;">
                            <td style="text-align: center;">&nbsp;</td>
                            <td>Шинэ</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: right;">1500.0</td>
                            <td style="text-align: right;">1500.0</td>
                        </tr>
                        <tr>
                            <td style="text-align: center;">XIII.3.1.7</td>
                            <td>Алтанбулаг боомтын гаалийн ажилчдын орон сууц, 60 айл /Сэлэнгэ, Алтанбулаг боомт/</td>
                            <td style="text-align: center;">2014</td>
                            <td style="text-align: center;">2014</td>
                            <td style="text-align: right;">1500.0</td>
                            <td style="text-align: right;">1500.0</td>
                        </tr>
                        <tr style="color: #3276b1; font-weight: bold;">
                            <td style="text-align: center;">XIII.3.3</td>
                            <td>III. Тоног төхөөрөмж</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: right;">2000.0</td>
                            <td style="text-align: right;">2000.0</td>
                        </tr>
                        <tr style="color: #3276b1;">
                            <td style="text-align: center;">&nbsp;</td>
                            <td>Шинэ</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: center;">&nbsp;</td>
                            <td style="text-align: right;">2000.0</td>
                            <td style="text-align: right;">2000.0</td>
                        </tr>
                        <tr>
                            <td style="text-align: center;">XIII.3.3.1</td>
                            <td>Гаалийн байгууллагуудын тоног төхөөрөмж, техник хэрэгсэл</td>
                            <td style="text-align: center;">2014</td>
                            <td style="text-align: center;">2014</td>
                            <td style="text-align: right;">2000.0</td>
                            <td style="text-align: right;">2000.0</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>
        <section id="section8" class="paddingbot20">
            <div class="section-banner" data-stellar-background-ratio="0.5">
                <h2>Сангийн яамны бүтэц</h2>
            </div>
            <div class="container" style="padding-top: 10px; min-height: 2000px;">
                <img id="forclientTab3Img" runat="server" src="files/forclient/mof_organization_chart.png" style="width: 100%;" />
            </div>
        </section>
        <section id="section9" class="section">
            <div class="section-banner" data-stellar-background-ratio="0.5">
                <h2>Тусгай зөвшөөрөл</h2>
            </div>
            <div class="container" style="padding-top: 10px;">
                <a class="btn" style="background-color: #3276b1; width: 100%;" href="#section10">Аудитийн үйл ажиллагаа эрхлэх тусгай зөвшөөрөл</a>
                <a class="btn" style="background-color: #3276b1; width: 100%;" href="#section11">Хөрөнгийн үнэлгээ хийх тусгай зөвшөөрөл</a>
                <a class="btn" style="background-color: #3276b1; width: 100%;" href="#section12">Нягтлан бодох бүртгэлийн програм хангамжийн зөвшөөрөл</a>
                <a class="btn" style="background-color: #3276b1; width: 100%;" href="#section13">Үнэт цаас үйлдвэрлэх тусгай зөвшөөрөл</a>
                <a class="btn" style="background-color: #3276b1; width: 100%;" href="#section14">Татварын мэргэшсэн зөвлөх үйлчилгээ эрхлэх тусгай зөвшөөрөл</a>
                <a class="btn" style="background-color: #3276b1; width: 100%;" href="#section15">Эд мөнгөний хонжворт сугалааны үйл ажиллагаа эрхлэх тусгай зөвшөөрөл</a>
            </div>
        </section>
        <section id="section10" class="section">
            <div class="section-banner" data-stellar-background-ratio="0.5">
                <h2>Аудитын үйл ажиллагаа эрхлэх тусгай зөвшөөрөл шинээр авахад бүрдүүлэх баримт бичгийн жагсаалт</h2>
            </div>
            <div class="container" style="padding-top: 10px; min-height: 1184px;">
                <p><embed src="forclient/files/1.1 Audit requirement.pdf" style="width:100%; height:100%;" /></p>
            </div>
        </section>
        <section id="section11" class="section">
            <div class="section-banner" data-stellar-background-ratio="0.5">
                <h2>Хөрөнгийн үнэлгээний тухай хуулийн сонгон шалгаруулалтад оролцохыг хүсэгчийн бүрдүүлэх баримт бичиг</h2>
            </div>
            <div class="container" style="padding-top: 10px; min-height: 1184px;">
                <p><embed src="forclient/files/7.1 Property assessment.pdf" style="width:100%; height:100%;" /></p>
            </div>
        </section>
        <section id="section12" class="section">
            <div class="section-banner" data-stellar-background-ratio="0.5">
                <h2>Нягтлан бодох бүртгэлийн програм хангамжийн зөвшөөрөл авахад шаардагдах материалууд</h2>
            </div>
            <div class="container" style="padding-top: 10px; min-height: 1184px;">
                <p><embed src="forclient/files/4.1 Accounting software requirement.pdf" style="width:100%; height:100%;" /></p>
            </div>
        </section>
        <section id="section13" class="section">
            <div class="section-banner" data-stellar-background-ratio="0.5">
                <h2>Үнэт цаас үйлдвэрлэх тусгай зөвшөөрөл авахад бүрдүүлэх баримт бичиг</h2>
            </div>
            <div class="container" style="padding-top: 10px; min-height: 1184px;">
                <p><embed src="forclient/files/6.1 Үнэт цаас үйлдвэрлэх.pdf" style="width:100%; height:100%;" /></p>
            </div>
        </section>
        <section id="section14" class="section">
            <div class="section-banner" data-stellar-background-ratio="0.5">
                <h2>Татварын мэргэшсэн зөвлөх үйлчилгээ эрхлэх тусгай зөвшөөрөл авахад бүрдүүлэх баримт бичиг</h2>
            </div>
            <div class="container" style="padding-top: 10px; min-height: 1184px;">
                <p><embed src="forclient/files/2.1 Tax requirement.pdf" style="width:100%; height:100%;" /></p>
            </div>
        </section>
        <section id="section15" class="section">
            <div class="section-banner" data-stellar-background-ratio="0.5">
                <h2>Эд мөнгөний хонжворт сугалааны үйл ажиллагаа эрхлэх тусгай зөвшөөрөл олгох</h2>
            </div>
            <div class="container" style="padding-top: 10px; min-height: 1184px;">
                <p><embed src="forclient/files/3.1 Lotteries requirement.pdf" style="width:100%; height:100%;" /></p>
            </div>
        </section>
    </div>
    <div id="forclientModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display: none;">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header" style="padding: 15px 15px;">
                    <button class="close" aria-hidden="true" data-dismiss="modal" type="button">× </button>
                    <h4 class="modal-title" style="margin: 0px;">Үйлчлүүлэгчийн сэтгэл ханамжийн судалгаа</h4>
                </div>
                <div class="modal-body">
                    <div>
                        <div class="col-md-12">
                            <div id="gazarID" class="form-group hide"></div>
                            <div id="srv1" style="display: block;">
                                <div class="form-group" style="margin-bottom: 15px; text-align: center; font-size: 18px;">
                                    <span id="gazarName"></span>-р үйлчлүүлээд та өөрийн хэрэгцээ, зорилгоо хангаж чадсан уу?
                                </div>
                                <div style="border: 1px solid #ddd; padding: 19px; border-radius: 2px;">
                                    <input type="button" value="ТИЙМ" class="btn" style="background-color: #71843f; width: 100%;" onclick="setSrv1(1, 1)" />
                                    <input type="button" value="ҮГҮЙ" class="btn" style="background-color: #a65858; width: 100%;" onclick="setSrv1(1, 0)" />
                                </div>
                            </div>
                            <div id="srv2" style="display: none;">
                                <div class="form-group" style="margin-bottom: 15px; text-align: center; font-size: 18px;">
                                    Таны сэтгэл ханамжийн төвшин ямар байна?
                                </div>
                                <div style="border: 1px solid #ddd; padding: 19px; border-radius: 2px;">
                                    <input type="button" value="" style="background-color: #fff; border: none; width: 7%; height: 90px;" disabled />
                                    <input type="button" value="" style="background-color: #fff; background-image: url('../forclient/img/face-smile-icon.png'); background-repeat: no-repeat; border: none; width: 30%; height: 90px;" onclick="setSrv2(2, 1)" />
                                    <input type="button" value="" style="background-color: #fff; background-image: url('../forclient/img/face-plain-icon.png'); background-repeat: no-repeat; border: none; width: 30%; height: 90px;" onclick="setSrv2(2, 2)" />
                                    <input type="button" value="" style="background-color: #fff; background-image: url('../forclient/img/face-sad-icon.png'); background-repeat: no-repeat; border: none; width: 30%; height: 90px;" onclick="setSrv2(2, 3)" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="forclientTnxModal" class="modal fade in" aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" style="display: none;">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-body">
                    <div>
                        <div class="col-md-12" style="margin-bottom: 15px; text-align: center; font-size: 18px;">
                            Судалгаанд оролцсон таньд баярлалаа.<br />
                            <br />
                            Өдрийг сайхан өнгөрүүлээрэй!
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script async="" src="../forclient/analytics.js"></script>
    <script src="../forclient/jquery.js"></script>
    <%--<script src="../forclient/modernizr.js"></script>--%>
    <script src="../forclient/bootstrap.js"></script>
    <script src="../forclient/jquery.fitvids.js"></script>
    <script src="../forclient/jquery.easing.1.3.js"></script>
    <script src="../forclient/twitter.js"></script>
    <script type="text/javascript" src="../forclient/jquery.fancybox.pack.js"></script>
    <script type="text/javascript" src="../forclient/jquery.fancybox-thumbs.js"></script>
    <script type="text/javascript" src="../forclient/jquery.fancybox-media.js"></script>
    <script src="../forclient/stellar.js"></script>
    <script src="../forclient/nicescroll.min.js"></script>
    <script src="../forclient/jquery.isotope.min.js"></script>
    <script src="../forclient/custom.js"></script>
    <script src="../forclient/custom-home.js"></script>
    <script src="../forclient/portfolio.js"></script>
    <script src="../forclient/jquery.flexslider.js"></script>
    <script src="../forclient/retina.js"></script>
    <script src="../js/plugin/flexslider/jquery.flexslider-min.js"></script>
    <%--<script type="text/javascript" src="../js/plugin/timer/jquery.min.js"></script>--%>
    <script type="text/javascript" src="../js/plugin/timer/jquery.timer.js"></script>
    
    <script type="text/javascript">
        //$(window).load(function () {
        //    $('.flexslider').flexslider({
        //        animation: "slide"
        //    });
        //});
        $('body').bind('contextmenu', function (e) {
            return false;
        });
        $(document).ready(function () {
            setSection1();
            section1Refresh();
            $('body').disableSelection();
        });
        var date = new Date();
        var timer =
            $.timer(
                function () {
                    date = new Date();
                    $('#forclientTimer').html('Цаг: ' + replace2Char(date.getHours().toString()) + ':' + replace2Char(date.getMinutes().toString()) + ':' + replace2Char(date.getSeconds().toString()));
                },1000,true
            );
        function replace2Char(str) {
            if (parseInt(str) > 0 && parseInt(str) < 10) str = '0' + str.toString();
            return str;
        }
        function setSection1() {
            $('#divsection1Content').find('table').removeAttr("border");
            $('#divsection1Content').find('table').removeAttr("cellpadding");
            $('#divsection1Content').find('table').removeAttr("cellspacing");
            $('#divsection1Content').find('table').removeAttr("height");
            $('#divsection1Content').find('table').removeAttr("width");
            $('#divsection1Content').find('table').addClass("table table-bordered");
            $('#divsection1Content').find('table').find('tbody').find('tr:first').addClass("tbltrhead");
        }

        var scrolled = 0;
        $(".scrollUp").on("click", function () {
            scrolled = scrolled - 300;
            $("body").animate({
                scrollTop: scrolled
            });
        });
        $(".scrollDown").on("click", function () {
            scrolled = scrolled + 300;
            $("body").animate({
                scrollTop: scrolled
            });
        });

        function setGazarInModal(el, gazarId) {
            $('#gazarID').text(gazarId);
            $('#gazarName').text($(el).val());
            $('#srv1').css("display", "block");
            $('#srv2').css("display", "none");
        }
        function setSrv1(srvType, isSrv) {
            $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteNonQueryForClient",
                data: '{qry:"INSERT INTO TBL_SRV_CLIENT (BR_ID, DT, SRV, TYPE) VALUES (' + $('#gazarID').text() + ', sysdate, ' + isSrv + ', ' + srvType + ')"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    $('#srv1').css("display", "none");
                    $('#srv2').css("display", "block");
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }
        function setSrv2(srvType, isSrv) {
            $.ajax({
                type: "POST",
                url: "ws.aspx/WSOracleExecuteNonQueryForClient",
                data: '{qry:"INSERT INTO TBL_SRV_CLIENT (BR_ID, DT, SRV, TYPE) VALUES (' + $('#gazarID').text() + ', sysdate, ' + isSrv + ', ' + srvType + ')"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    $('#forclientModal').modal('hide');
                    $('#forclientTnxModal').modal('show');
                    setTimeout(function () { $('#forclientTnxModal').modal('hide'); }, 2000);
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }
        function section1Refresh() {
            showLoader('loaderTab1');
            var strsection1content = "";
            $.ajax({
                type: "POST",
                url: "ws.aspx/WSMySqlExecuteScalarForClient",
                data: '{qry:"SELECT DATE_FORMAT(post_date,\'%Y-%m-%d\') as dt FROM mof_posts WHERE post_type = \'pendinginvestment\' AND post_date=(SELECT MAX(post_date) FROM mof_posts WHERE post_type = \'pendinginvestment\')"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    var varMsg = msg.d;
                    var arrMsg = varMsg.split("~");
                    if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                    else {
                        strsection1content = arrMsg[1];
                        $('#section1Year').html(strsection1content.split('-')[0]);
                        $('#section1Month').html(strsection1content.split('-')[1]);
                        $('#section1Day').html(strsection1content.split('-')[2]);
                        $.ajax({
                            type: "POST",
                            url: "ws.aspx/WSMySqlExecuteScalarForClient",
                            data: '{qry:"SELECT post_content FROM mof_posts WHERE post_type = \'pendinginvestment\' AND post_date=(SELECT MAX(post_date) FROM mof_posts WHERE post_type = \'pendinginvestment\')"}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                var varMsg = msg.d;
                                var arrMsg = varMsg.split("~");
                                if (arrMsg[0] == "0") window.location = "../#pg/error500.aspx";
                                else {
                                    strsection1content = arrMsg[1];
                                    $('#divsection1Content').html(strsection1content.replace(/&nbsp;&nbsp;/g, ''));
                                    setSection1();
                                    hideLoader('loaderTab1');
                                }
                            },
                            failure: function (response) {
                                alert(response.d);
                            }
                        });
                    }
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }
        function showLoader(el) {
            $('#' + el).css({ "display": "block", "background": "rgba(0, 0, 0, .3)" });
        }
        function hideLoader(el) {
            $('#' + el).css({ "display": "none" });
        };
    </script>
</body>
</html>
