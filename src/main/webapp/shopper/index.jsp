<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Curabitur Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<script src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
 <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script

><!-- cart -->
		<script src="js/simpleCart.min.js"> </script>
	<!-- cart -->
  <script src="js/bootstrap.js"> </script>
  
</head>
<body>
		<!-- start-header section-->
			<div class="header">
				<div class="container">
				     <div class="top-header">
						<div class="phone">
							<ul>
								<li>${sessionScope.user.getName() }</li>
								<li><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span></li>
								<li><p>${sessionScope.user.getTel() }</p></li>
							</ul>
						</div>
						<div class="logo" >
							<h1><a href="index.jsp">E L M</a></h1>
						</div>
						<div class="header-right">
							<div class="login" style="margin-left:280px;">
								<a href="../index/login.jsp"> 注  销 </a>
							</div>
						<div class="cart box_1">
							<div class="clearfix"> </div>
						</div>
				</div>
		
						<div class="clearfix"></div>
					</div>	
				</div>
			</div>
		<!-- end-header section-->
		<!--start-banner-->
			<div class="banner">
				<div class="container">
					<div class="top-menu">
					<span class="menu"><img src="images/nav.png" alt=""/> </span>
						<ul>
							<li><a  href="index.jsp" class="active">首页</a></li>
							<li><a  href="notReceive.jsp">未接单</a></li>
							<li><a  href="yesReceive.jsp">已接单</a></li>
							<li><a  href="historyList.jsp">历史账单</a></li>
							<li><a  href="menuManage.jsp">菜品管理</a></li>
							<li><a  href="userInfo.action?id=${ sessionScope.user.getId() }&command=seeUserInfo">个人中心</a></li>
						</ul>
						<!-- script for menu -->
							 <script>
							 $("span.menu").click(function(){
							 $(".top-menu ul").slideToggle("slow" , function(){
							 });
							 });
							 </script>
						<!-- //script for menu -->

					</div>
					<section class="slider">
						<div class="flexslider">
							<ul class="slides">
								<li>
									<div class="slider-info">
										<h3 style="color:white;">饿了别叫妈</h3><br>
										<h2>  叫  &nbsp;&nbsp;饿了么</h2>
										<p></p>
									</div>
								</li>
								<li>
									<div class="slider-info">
									<h2>一亿餐补&nbsp;&nbsp; 饿者有份</h2>
									</div>
								</li>
								<li>	
									<div class="slider-info">
									<h2>ELM</h2>
										<p>全民好好吃饭&nbsp;&nbsp;别让妈担心.</p>
									</div>
								</li>
							</ul>
						</div>
					</section>
						<!-- FlexSlider -->
							  <script defer src="js/jquery.flexslider.js"></script>
							  <script type="text/javascript">
									$(function(){
									  SyntaxHighlighter.all();
									});
									$(window).load(function(){
									  $('.flexslider').flexslider({
										animation: "slide",
										start: function(slider){
										  $('body').removeClass('loading');
										}
									  });
									});
							  </script>
						<!-- FlexSlider -->
				</div>	
			</div>
		<!--end-banner-->
			<div class="content">
				<!--hot-offer-->
					<div class="today-offer">
						<div class="today-head">
						<font face="黑体" size="10px">热门食物</font><br>
						<div style="margin-left:600px"><font color="red" face="宋体" size="5px">美味健康 从这里开始</font></div>
					</div>
					<div class="today-grids">
						<div class="col-md-3 today-grid test1">
						<img src="images/p1.jpg" class="img-responsive" alt="/">
							<div class="textbox">
								<h4>FOOD QUALITY </h4>
								<p>Arenean nonummy hendrerit mau phaselntes nascetur ridic ulusm dui fusce feu. Cras vitae neque turpis…</p>
							</div>
						</div>
						<div class="col-md-3 today-grid test1">
						<img src="images/p2.jpg" class="img-responsive" alt="/">
						<div class="textbox">
								<h4>FOOD QUALITY </h4>
								<p>Arenean nonummy hendrerit mau phaselntes nascetur ridic ulusm dui fusce feu. Cras vitae neque turpis…</p>
							</div>
						</div>
						<div class="col-md-3 today-grid test1">
						<img src="images/p3.jpg" class="img-responsive" alt="/">
						<div class="textbox">
								<h4>FOOD QUALITY </h4>
								<p>Arenean nonummy hendrerit mau phaselntes nascetur ridic ulusm dui fusce feu. Cras vitae neque turpis…</p>
							</div>
						</div>
						<div class="col-md-3 today-grid test1">
						<img src="images/p4.jpg" class="img-responsive" alt="/">
						<div class="textbox">
								<h4>FOOD QUALITY </h4>
								<p>Arenean nonummy hendrerit mau phaselntes nascetur ridic ulusm dui fusce feu. Cras vitae neque turpis…</p>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<!--end-hot-offer-->
				<!--menu-->
					<div class="menu-offer">
						<div class="container">
						<div class="menu-head">
						<h3>我们的菜单</h3>
					</div>
					<div class="menu-grids">
						<div class="col-md-4 menu-grid">
							<div class="menu-text">
									<div class="menu-text-left">
										<h5>京酱肉丝</h5>
									</div>
									<div class="menu-text-midle">
										<span class="line"> </span>
									</div>
									<div class="menu-text-right">
										<h5>$ 29</h5>
									</div>
									<div class="clearfix"> </div>
								</div>	
								<div class="menu-text">
									<div class="menu-text-left">
										<h5>蚂蚁上树</h5>
									</div>
									<div class="menu-text-midle">
										<span class="line"> </span>
									</div>
									<div class="menu-text-right">
										<h5>$22</h5>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="menu-text">
									<div class="menu-text-left">
										<h5>黄焖鸡</h5>
									</div>
									<div class="menu-text-midle">
										<span class="line"> </span>
									</div>
									<div class="menu-text-right">
										<h5>$15</h5>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="menu-text">
									<div class="menu-text-left">
										<h5>香辣炸鸡汉堡</h5>
									</div>
									<div class="menu-text-midle">
										<span class="line"> </span>
									</div>
									<div class="menu-text-right">
										<h5>$10</h5>
									</div>
									<div class="clearfix"> </div>
								</div>
						</div>
						<div class="col-md-4 menu-grid">
							<div class="menu-text">
									<div class="menu-text-left">
										<h5>奥尔良烤肉披萨</h5>
									</div>
									<div class="menu-text-midle">
										<span class="line"> </span>
									</div>
									<div class="menu-text-right">
										<h5>$13</h5>
									</div>
									<div class="clearfix"> </div>
								</div>	
								<div class="menu-text">
									<div class="menu-text-left">
										<h5>上校鸡块</h5>
									</div>
									<div class="menu-text-midle">
										<span class="line"> </span>
									</div>
									<div class="menu-text-right">
										<h5>$6</h5>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="menu-text">
									<div class="menu-text-left">
										<h5>大盘鸡</h5>
									</div>
									<div class="menu-text-midle">
										<span class="line"> </span>
									</div>
									<div class="menu-text-right">
										<h5>$59</h5>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="menu-text">
									<div class="menu-text-left">
										<h5>毛血旺</h5>
									</div>
									<div class="menu-text-midle">
										<span class="line"> </span>
									</div>
									<div class="menu-text-right">
										<h5>$38</h5>
									</div>
									<div class="clearfix"> </div>
								</div>
						
						</div>
						<div class="col-md-4 menu-grid cooke">
						<img src="images/p5.jpg" class="img-responsive" alt="/">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
				<!--end-menu-->
				<div class="order-grids">
				<div class="container">
				<div class="order-head">
						<h3>我们 与众不同</h3>
					</div>
				<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title">
								<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
									DESSERTS
								</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body">
								<div class="col-md-3 order-grid">
								<img src="images/d1.jpg" class="img-responsive" alt="/">
								</div>
								<div class="col-md-3 order-grid">
								<img src="images/d2.jpg" class="img-responsive" alt="/">
								</div>
								<div class="col-md-3 order-grid">
								<img src="images/d3.jpg" class="img-responsive" alt="/">
								</div>
								<div class="col-md-3 order-grid">
								<img src="images/d4.jpg" class="img-responsive" alt="/">
								</div>
								<div class="clerafix"></div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingTwo">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
								CHICKEN
								</a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
							<div class="panel-body">
							<div class="col-md-3 order-grid">
								<img src="images/p6.jpg" class="img-responsive" alt="/">
								</div>
								<div class="col-md-3 order-grid">
								<img src="images/p7.jpg" class="img-responsive" alt="/">
								</div>
								<div class="col-md-3 order-grid">
								<img src="images/p8.jpg" class="img-responsive" alt="/">
								</div>
								<div class="col-md-3 order-grid">
								<img src="images/p9.jpg" class="img-responsive" alt="/">
								</div>
								<div class="clerafix"></div>
							</div>
						</div>
						</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingThree">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
							DESSERTS
								</a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
							<div class="panel-body">
							<div class="col-md-3 order-grid">
								<img src="images/d1.jpg" class="img-responsive" alt="/">
								</div>
								<div class="col-md-3 order-grid">
								<img src="images/d2.jpg" class="img-responsive" alt="/">
								</div>
								<div class="col-md-3 order-grid">
								<img src="images/d3.jpg" class="img-responsive" alt="/">
								</div>
								<div class="col-md-3 order-grid">
								<img src="images/d4.jpg" class="img-responsive" alt="/">
								</div>
								<div class="clerafix"></div>
							</div>
						</div>
					</div>
										<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingFour">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFoure">
							SEAFOOD
								</a>
							</h4>
						</div>
						<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
							<div class="panel-body">
							<div class="col-md-3 order-grid">
								<img src="images/s1.jpg" class="img-responsive" alt="/">
								</div>
								<div class="col-md-3 order-grid">
								<img src="images/s2.jpg" class="img-responsive" alt="/">
								</div>
								<div class="col-md-3 order-grid">
								<img src="images/s3.jpg" class="img-responsive" alt="/">
								</div>
								<div class="col-md-3 order-grid">
								<img src="images/s4.jpg" class="img-responsive" alt="/">
								</div>
								<div class="clerafix"></div>
							</div>
						</div>
					</div>
										<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingFive">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
								SALADS
								</a>
							</h4>
						</div>
						<div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
							<div class="panel-body">
							<div class="col-md-3 order-grid">
								<img src="images/s5.jpg" class="img-responsive" alt="/">
								</div>
								<div class="col-md-3 order-grid">
								<img src="images/s6.jpg" class="img-responsive" alt="/">
								</div>
								<div class="col-md-3 order-grid">
								<img src="images/s7.jpg" class="img-responsive" alt="/">
								</div>
								<div class="col-md-3 order-grid">
								<img src="images/s8.jpg" class="img-responsive" alt="/">
								</div>
								<div class="clerafix"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
		<div class="specials-section">
			<div class="container">
			<div class="col-md-4 specials1">
			<font size="6px">用户帮助</font><br><br>
			<ul>
				<li><a href="#">服务中心</a></li>
				<li><a href="#">常见问题</a></li>
				<li><a href="#">在线客服</a></li>
			</ul>
			</div>
			<div class="col-md-4 specials1">
			<font size="6px">常务合作</font><br><br>
			<ul>
				<li><a href="#">加盟指南</a></li>
				<li><a href="#">市场合作</a></li>
				<li><a href="#">开放平台</a></li>
			</ul>
			</div>
			<div class="col-md-4 specials1">
			<font size="6px">关于我们</font><br><br>
			<ul>
				<li><a href="#">饿了吗介绍</a></li>
				<li><a href="#">加入我们</a></li>
				<li><a href="#">联系我们</a></li>
				<li><a href="#">规则中心</a></li>
			</ul>
			</div>
			<div class="clearfix"></div>
			</div>
			</div>
	</div>
	<div class="footer-section">
					<div class="container">
						<div class="footer-top">
						<p>Copyright &copy; 2016.Company name All rights reserved.More Templates  - Collect from </p>
					</div>
					<script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>


					</div>
					</div>


	
</body>
</html>
	