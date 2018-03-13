<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html class="no-js" lang="zh">
<head>
<meta charset="utf-8" />
<title>店铺详情-shop_detail.html</title>
<meta name="description" content="地道老四川麻辣烫！" />
<meta name="mobile-agent"  content="format=html5;url=http://m.ele.me/kxljmlt-pt" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link class="usemin" rel="stylesheet" href="<%=path %>/style/css/global.2730d877.css" />
<link class="usemin" rel="stylesheet" 	href="<%=path %>/style/css/restaurant.92731b91.css" />
<link class="usemin" rel="stylesheet" 	href="<%=path %>/style/css/bootstrap.css" />
<script src="<%=path%>/style/js/jquery-2.2.3.min.js"></script>
<script src="<%=path%>/style/js/bootstrap.js" type="text/javascript"></script>
</head>
<body id="restaurant">
	<div class="restaurant-header">
		<div style="width:100%;height:60px;background-color:red;">
			<iframe src="title.jsp" width="100%"></iframe>
		</div>
		<div class="container rst_header_con">
			<article class="rst-header-main rst-header-toggle rst_info_header">
				<header class="rst-header-info group">
					<a class="rst-logo" href="/kxljmlt-pt"> <img
						class="rst-logo-img" src="<%=path%>/data/${shopper.getImage() }" />
					</a>
					<div class="rst-basic-info">
						<div class="rst-name-wrapper">
							<a class="rst-name text-overflow" href="/kxljmlt-pt"
								data-toggle="bs-tooltip" title="开心罗记麻辣烫"> <img
								class="rst-logo-img" /> <c:out value="${shopper.getShopper_name() }"></c:out>
							</a>
						</div>
						<div class="rst-misc">
							<span class="rst-flavor text-overflow" title="中式">中式</span>
						</div>
					</div>
				</header>
			</article>
			<nav class="rst-header-nav">
				<a class="rst-header-nav-item ui_active" href="<%=path%>/index/shop_detail.jsp">菜单</a>
				<a class="rst-header-nav-item" href="javascript:;">评价</a> 
				<a class="rst-header-nav-item" href="javascript:;">留言</a>
			</nav>
			<ul style="margin-left:100px">
				<li class="rst-data-block">
					<div class="rst-data no-border">
						<b class="rst-data-info value">${shopper.getSpeed() }</b> <span
							class="rst-data-info unit">速度/分钟</span>
					</div>
				</li>
				<li class="rst-data-block">
					<div class="rst-data">
						<b class="rst-data-info value rst_deliver_amount">0</b> <span
							class="rst-data-info unit">起送价/元</span>
					</div>
				</li>
				<li class="rst-data-block">
					<div class="rst-data">
						<b class="rst-data-info value rst_deliver_amount">${shopper.getMonthNum() }</b> <span
							class="rst-data-info unit">月销量/个</span>
					</div>
				</li>
			</ul>
		</div>
	</div>
	
	<!-- 回到顶部按钮 -->
	<a class="scroll_top"><img src="../style/images/top.png"></a> 
	<a class="scroll_car"><img id="car" src="../style/images/che.jpg" height="45px"></a>
	<script type="text/javascript">
		$(function(){
			$('.scroll_top').click(function(){
				$('html,body').animate({scrollTop: '0px'}, 600);
			});
			//向后台的购物车传值
			$(".badge").click(function(){
				$("#car").animate({height:"100px"},500);
				$("#car").animate({height:"45px"},1000);
				if("${sessionScope.user.getId()}"=="" || "${sessionScope.user.getId()}" == null){
					window.location.href="login.jsp";
				}else{
					var id = $(this).children("input").val();
					$.post("index.action",{ dishes_id:id , command:"cartAdd"},
						function(){
								
					});
				}
			});
			$('#car').click(function(){
				if("${sessionScope.user.getId()}"=="" || "${sessionScope.user.getId()}" == null){
					window.location.href="login.jsp";
				}else{
					var user_id = "${sessionScope.user.getId()}";
					window.location.href="index.action?user_id="+user_id+"&command=seeCart";
				}
			});
		})
		
	</script>
	<style>
		.scroll_top{
			position:fixed; right:20px; bottom:30px;
		}
		.scroll_car{
			position:fixed; right:20px; bottom:90px;
		}
	</style>
	<!-- 回到顶部按钮  结束 -->
	
<div style="background-color: gainsboro;width:100%;border:solid 2px green">
	<div style="height:55px"></div>
	<div style="width:80%;margin-left:160px">
		<div class="col-sm-9" id="left">
			<!-- 菜品种类汇总 -->
			<div style="width:100%;height:80px;background-color:white;border:dashed 1px black">
				<c:forEach var="kind" items="${requestScope.kindList }" varStatus="stat">
					<a class="scroll"  href="#${kind}" style="margin-left:20px;"><font size="4px" color="black"><c:out value="${ kind }"></c:out></font></a>
				</c:forEach>
			</div><br><br>
				
				<c:forEach var="kind" items="${requestScope.kindList }" varStatus="stat">
				
				<div class="col-sm-12"><br><br>
					<!-- 菜品单个种类 -->
					<div id="${kind }"><font face="黑体" size="4px"> <c:out value="${ kind }"></c:out></font></div>
					<div>
						<c:forEach var="dishes" items="${requestScope.dishesList }" varStatus="stat">
						<!-- 输出种类对应的菜品 -->
						<c:if test="${dishes.getDishes_kind()==kind }">
							
							<div class="col-sm-6" style="margin-top:15px;height:100px;background-color:white">
								<div class="row">
									<!-- 菜品图片 -->
									<div class="col-sm-4">
										<img src="<%= path %>/data/${ dishes.getDishes_image() }" height="100px" width="100px">
									</div>
									
									<!-- 菜品信息详情 -->
									<div class="col-sm-8" style="height:100px;border:solid 1px red;border-left:none">
										<font><c:out value="${ dishes.getDishes_name() }"></c:out></font><br>
										<font>评分:<c:out value="${ dishes.getDishes_star() }"></c:out></font><br>
										<font>月售:<c:out value="${ dishes.getDishes_monthNum() }"></c:out></font><br>
										<b><font color="red" ><c:out value="${ dishes.getPrice() }"></c:out>￥</font></b>
										<span class="badge pull-right" style="background-color:blue;">
											<font color="white">加入购物车</font>
											<input type="hidden" value="${dishes.getDishes_id() }">
										</span>
									</div>
								</div>
							</div>
						</c:if>
						</c:forEach>
					</div>
				</div>
				</c:forEach>
		</div>
		<div id="right" class="col-sm-3">
			<br>
			<aside id="rst_aside" class="restaurant-aside">
				<section class="rst-block restaurant-board">
					<h3 class="rst-aside-title">餐厅公告</h3>
					<p class="rst-deliver-detail">
						<i class="icon-rst-deliver"></i>起送价<span
							class="rst_deliver_amount"></span>元。
					</p>
					<ul class="rst-badge-list">
						<li class="rst-badge-item"><i
							class="icon-rst-badge v v-person"></i> 该商家已通过个人身份认证</li>
						<li class="rst-badge-item"><i
							class="icon-rst-badge online-payment"></i>该餐厅支持在线支付</li>
						<li class="rst-badge-item"><i
							class="icon-rst-badge new-user-discount"></i>饿了么新用户首次订餐，可立减15元。(不与其他活动同享)</li>
						<li class="rst-badge-item"><i
							class="icon-rst-badge extra-discount"></i>在线支付满20减10</li>
					</ul>
				</section>
				<section id="favor_food" class="rst-block"></section>
				<section id="rec_food" class="rst-block hide">
					<h3 class="rst-aside-title">本周热卖</h3>
					<ul id="weekly_ranking" class="rst-aside-menu-list"></ul>
				</section>
				<section class="rst-block restaurant-board fixed rst_fix_panel">
					<h3 class="rst-aside-title">餐厅公告</h3>
					<p class="rst-deliver-detail">
						<i class="icon-rst-deliver"></i>起送价<span
							class="rst_deliver_amount"></span>元。
					</p>
				</section>
			</aside>
		</div>
	</div>
	<script type="text/javascript">
		$(function(){
			var $height = $("#left").height(); 
			$("#right").height($height);
		})
	</script>
	<div style="width:70%;margin-left:200px">
		<div>
			<p class="sfooter-line">
				<a class="sfooter-link" href="http://kaidian.ele.me">我要开店</a> | <a
					class="sfooter-link" href="contact.html">联系我们</a> | <a
					class="sfooter-link" href="http://ele.me/about/agreement">服务条款和协议</a>
				| <a class="sfooter-link" href="sitemaps.html">站点地图</a> | <a
					class="sfooter-link" href="http://ele.me/jobs">加入我们</a>
			</p>
			<p class="sfooter-line">
				增值电信业务许可证：<a class="sfooter-link sfooter-link-zero" target="_blank"
					rel="nofollow" href="http://www.shca.gov.cn">沪B2-20150033</a> <a
					class="sfooter-link" target="_blank" rel="nofollow"
					href="http://www.miibeian.gov.cn">沪ICP备 09007032</a> <a
					class="sfooter-link" target="_blank" rel="nofollow"
					href="http://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&amp;entyId=20120305173227823">上海工商行政管理</a>
				Copyright &copy;2008-2015 ele.me, All Rights Reserved.
			</p>
		</div>
		
	</div>
</div>
</body>
</html>