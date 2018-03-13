<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Account</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Curabitur Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" />
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js">
	
</script>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1200);
		});
	});
</script>
<!---End-smoth-scrolling---->
<style>
	.title{
		font-size:2em;
		color:blue;
		line-height:40px;
	}
</style>
</head>
<body>
	<!-- start-header section-->
	<div class="banner ban1">
		<div class="container">
			<div class="top-menu">
				<span class="menu"><img src="images/nav.png" alt="" /> </span>
				<ul>
					<li><a href="index.jsp">首页</a></li>
					<li><a href="notReceive.jsp">未接单</a></li>
					<li><a href="yesReceive.jsp">已接单</a></li>
					<li><a href="historyList.jsp">历史账单</a></li>
					<li><a href="menuManage.jsp">菜品管理</a></li>
					<li><a href="userCenter.jsp" class="active">信息中心</a></li>
				</ul>

				<script>
							 $("span.menu").click(function(){
							 $(".top-menu ul").slideToggle("slow" , function(){
							 });
							 });
							 </script>
				<!-- //script for menu -->
			</div>
		</div>
	</div>
	<!--end-banner-->
	<div class="banner-bottom">
		<div class="container" style="height: 40px"></div>
	</div>
<style type="text/css"> 
	.linear{ 
	width:100%; 
	background:-moz-linear-gradient(top,#b8c4cb,#f6f6f8);
	} 
</style> 
	<div class="content">
		<!-- registration -->
		<div class="main-1 linear" style="border:2px red solid">
			<div class="container">
				
				<div id="shopper-Info">
					<form class="form-horizontal" role="form" action="userInfo.action" method="post">
						<br><br><br>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">账号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control "  value="${requestScope.shopper.getId() }" disabled>
							</div>
						</div></br>
						<script>
							$(function(){
								var img = "${requestScope.shopper.getImage() }";
								if(img == "" || img == null){
									$("#img").attr("src","images/whiteLogo.jpg");
								}else{
									$("#img").attr("src",img);
								}
							})
						</script>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">logo</label>
							<div class="col-sm-8">
								<img height="45px" width="45px" id="img">
							</div>
						</div></br>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">店铺名称</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" value="${requestScope.shopper.getName() }"  name="name">
							</div>
						</div></br>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">手机号码</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" value="${requestScope.shopper.getTel() }"   name="tel">
							</div>
						</div></br>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">介绍</label>
							<div class="col-sm-8">
								<textarea class="form-control" name="diytext">${requestScope.shopper.getDiytext() }</textarea>
							</div>
						</div></br>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">邮箱</label>
							<div class="col-sm-8">
								<input type="text" class="form-control " value="${requestScope.shopper.getEmail() }"  name="email">
							</div>
						</div></br>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">地址</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" value="${requestScope.shopper.getAddress() }"  name="address">
							</div>
						</div></br>
						<br><br>
						<div>
							<input type="hidden" name="id"  value="${requestScope.shopper.getId() }">
							<input type="hidden" name="command" value="changeUserInfo">
							<div class="row">
								<div class="col-sm-8 col-sm-offset-2">
									<button type="submit" class="btn-info btn" style="margin-left: 210px;"> 保 &nbsp;&nbsp;存 </button>
									<button class="btn-default btn" style="margin-left: 50px;"> 取 &nbsp;&nbsp;消 </button>
								</div>
							</div>
						</div>
					</form>
				</div>
				
				<div id="shopInfo">
					
				</div>
			</div>
			</br><br><br>
		</div>
		<!-- registration -->

		<div class="specials-section">
			<div class="container">
				<div class="col-md-4 specials1">
					<font size="6px">用户帮助</font><br>
					<br>
					<ul>
						<li><a href="#">服务中心</a></li>
						<li><a href="#">常见问题</a></li>
						<li><a href="#">在线客服</a></li>
					</ul>
				</div>
				<div class="col-md-4 specials1">
					<font size="6px">常务合作</font><br>
					<br>
					<ul>
						<li><a href="#">加盟指南</a></li>
						<li><a href="#">市场合作</a></li>
						<li><a href="#">开放平台</a></li>
					</ul>
				</div>
				<div class="col-md-4 specials1">
					<font size="6px">关于我们</font><br>
					<br>
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
				<p>
					Copyright &copy; 2015.Company name All rights reserved.More
				</p>
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
			<a href="#" id="toTop" style="display: block;"> <span
				id="toTopHover" style="opacity: 1;"> </span></a>


		</div>
	</div>



</body>
</html>
