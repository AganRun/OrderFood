<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html class="no-js" lang="zh">
<head>
<meta charset="utf-8" />
<title>个人中心 - 确认订单-member_checkout.html</title>
<meta name="description" content="饿了么是中国最专业的网上订餐平台，提供各类中式、日式、韩式、西式等优质美食。" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link class="usemin" rel="stylesheet" href="<%=path%>/style/css/global.2730d877.css" />
<link class="usemin" rel="stylesheet" href="<%=path%>/style/css/order.58f4e423.css" />
<link class="usemin" rel="stylesheet" 	href="<%=path %>/style/css/bootstrap.css" />
<script src="<%=path%>/style/js/jquery-2.2.3.min.js"></script>
<script src="<%=path%>/style/js/bootstrap.js" type="text/javascript"></script>
</head>
<body class="night cart-wide">
	<div style="width: 100%;">
		<iframe src="title.jsp" width="100%" height="50px"></iframe>
	</div>
	<div class="container" style="margin-top: -20px;">
		<header class="cart-topbar group">
			<div class="ctopbar-breadcrumb"></div>
		</header>
<form action="" >

		<div id="cart_wrap" class="cart-container cart-checkout">
			<header class="checkout-header">
				<div id="restaurant" class="group" data-restaurant="178405"
					data-geo="-614966279988955594" data-olpayment="1">
					<div class="crst-info">
						<a class="crst-name">&nbsp;</a>
					</div>
				</div>
				<ol class="cart-flow">
					<li class="cflow-nav first">选择美食</li>
					<li class="cflow-nav second">饿单信息</li>
					<li class="cflow-nav last">完成饿单</li>
				</ol>
			</header>
			<article id="module_basket" class="cart-table">
				<header class="ctable-header group">
					<h2 class="ctable-title">美食篮子</h2>
					<span class="ctable-categ">单价</span> <span class="ctable-categ">数量</span>
					<span class="ctable-categ">总计</span>
				</header>
				<section class="cart-group cart_group" data-id="0">
					<ul class="cgroup-list">
						<c:forEach var="cart" items="${sessionScope.CART}" varStatus="stat">
						<br>
						<li><font size="3px">店铺：</font>
							<b><font size="3px" color="orange">${cart.getShopper_name() }</font></b></li>
						
							<c:forEach var="dishes" items="${cart.getList()}" varStatus="stat">
							<li class="cgroup-item s_food" data-id="13985256">
								<div class="cdish-name">${ dishes.getDishes_name() }</div>
								<div class="cdish-price symbol-rmb">${dishes.getPrice() }</div>
								<div class="cdish-modify">
									<a class="cdish-action desc dec_btn">-</a> 
									<input class="cdish-qty set_num" type="text" value="${dishes.getNum() }" /> 
									<a class="cdish-action incr inc_btn">+</a>
								</div>
								<div class="cdish-total symbol-rmb sum" id="${dishes.getDishes_id() }"></div>
								<script>
									
									$(function(){
										var num = ${dishes.getNum() } ;
										var price = ${dishes.getPrice() } ;
										var sum = num * price;
										var id = ${dishes.getDishes_id() };
										$("#"+id).html(sum);
									});
								</script>
								<div class="cdish-del">
									<a class="del del_btn">&times;</a>
								</div>
							</li>
							</c:forEach>
							
						</c:forEach>
					</ul>
				</section>
				
				<footer class="ctable-footer group">
					<div id="module_note" class="cart-note">
						<div class="ctable-form group">
							<i class="icon-note"></i> 
							<input id="c_n_text" class="ctable-input" type="text" placeholder="给餐厅留言" maxlength="50" />
						</div>
					</div>
					<div class="float-r">
						<div class="cart-summary basket_info">
							共3份美食 应付金额： 
							<span id="total_price_basket" class="symbol-rmb cart-cost" id="SumPrice">26</span>
						</div>
					</div>
				</footer>
			</article>
			<div id="module_addr" class="relative">
				<div id="module_address" class="cart-module caddress-module group">
					<h3 class="cmodule-title">
						<i class="icon-cmodule address"></i>送达地址：
					</h3>
					<div class="cmodule-content">
						<span><select name="address" class="form-control">
							<c:forEach var="address" items="${requestScope.addressList }" varStatus="stat">
								<option value="${address.getAddress() }">${address.getAddress() }</option>
							</c:forEach>
						</select></span>
					</div>
				</div>
			</div>
			<div id="module_payment" class="cart-module cpayment-module group">
				<h3 class="cmodule-title">
					<i class="icon-cmodule payment"></i>支付方式：
				</h3>
				<div class="cmodule-content">
					<div class="cart-payment">&nbsp;&nbsp;
						 <input type="radio" value="餐到付款 " name="pay_type" />&nbsp;餐到付款&nbsp;&nbsp; 
						 <input type="radio" value="在线支付 " name="pay_type" checked="checked" /> &nbsp;在线支付
						 <span class="cmodule-info current_addr" style="margin-left:130px">${sessionScope.user.getTel() } </span> 
					</div>
				</div>
			</div>
			<div id="cart_mask" class="cart-mask"></div>
				<button id="confirm_order" class="ui-btn ui_submit btn-cart-checkout" type="submit">确认下单</button>
		</div>
</form>
	</div>
	
	
	
	<footer class="site-footer group">
		<div class="container">
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
	</footer>
	<div class="site-bg" style="background-position: 0px -11517.8658px;">
		<div class="bg-sun"></div>
		<div class="bg-moon"></div>
		<div class="bg-cloud-left"></div>
		<div class="bg-cloud-right"></div>
	</div>
</body>
</html>