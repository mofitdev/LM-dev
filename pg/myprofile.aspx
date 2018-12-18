<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myprofile.aspx.cs" Inherits="LMWebApp.pg.myprofile" %>
<div class="row">    <div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
		<h1 class="page-title txt-color-blueDark"><i class="fa-fw fa fa-file-o"></i> Миний хуудас</h1>
	</div></div><div class="row">    <div class="col-sm-12">        <div class="well well-sm">            <div class="row">
				<div class="col-sm-12 col-md-12 col-lg-8">
					<div class="well well-light well-sm no-margin no-padding">
						<div class="row">
							<div class="col-sm-12">
								<div id="myCarousel" class="carousel fade profile-carousel">
									<div class="air air-top-left padding-10">
										<h4 class="txt-color-white font-md" style="text-shadow: 1px 1px #000;">Ажилд орсон огноо: <span id="staffJoined" runat="server">2014-05-01</span></h4>
									</div>
									<ol class="carousel-indicators">
										<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
									</ol>
									<div class="carousel-inner">
										<!-- Slide 1 -->
										<div class="item active">
											<img src="../img/s1.jpg" alt="">
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-12">
								<div class="row">

									<div class="col-sm-3 profile-pic">
										<img src="staffImage.ashx?stid=<%=Session["LM_UserID"]%>">
									</div>
									<div class="col-sm-9">
										<h1>
                                            <span id="staffName" runat="server" class="semi-bold">Гантөмөр Гүндсамба</span>
										    <br>
										    <small id="staffBranch" runat="server">Санхүү мэдээлэл технологийн хэлтэс</small>
										    <br>
										    <small id="staffPos" runat="server"><i>Төслийн зөвлөх</i></small>
										</h1>
										<ul class="list-unstyled">
											<li>
												<p class="text-muted">
													<i class="fa fa-calendar"></i>&nbsp;&nbsp;<span class="txt-color-darken">Сүүлийн хандалт: </span><span id="staffLastVisit" runat="server" class="txt-color-darken">2014-10-28</span>
												</p>
											</li>
										</ul>										
                                        <p class="font-md">
											<i>Системд авсан эрх:</i>
										</p>
                                        <div>                                            
										    <ul id="staffRoles" runat="server" class="list-unstyled">
											    <li>
													<span class="txt-color-darken">Админ</span>
											    </li>
										    </ul>	
                                        </div>
									</div>

								</div>
							</div>
						</div>
						<!-- end row -->

					</div>

				</div>
			</div>        </div>    </div></div>