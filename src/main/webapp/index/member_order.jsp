<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
<title>个人中心 - 订单中心-member_order.html</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description"
	content="饿了么是中国最专业的网上订餐平台，提供各类中式、日式、韩式、西式等优质美食，如肯德基网上订餐，麦当劳网上订餐等。" />
<link href="<%=path %>/style/css/forward_201503262210.css"
	type="text/css" rel="stylesheet" />
<link href="<%=path %>/style/css/background.css" type="text/css"
	rel="stylesheet" />
<script src="<%=path%>/style/js/bootstrap.js" type="text/javascript"></script>
</head>
<body>
	<div id="background"
		style="background-position: 1px -10693.055555556px; background-color: #C0DEED;"
		class=" night ">
		<div id="sun"></div>
		<div id="moon"></div>
		<div id="clouds">
			<div id="cloudGroup1">
				<img src="<%=path %>/style/images/clouds.png" alt=""
					id="cloudPiece1" class="cloudPiece" /> <img
					src="<%=path %>/style/images/clouds.png" alt="" id="cloudPiece2"
					class="cloudPiece" /> <img
					src="<%=path %>/style/images/clouds.png" alt="" id="cloudPiece3"
					class="cloudPiece" />
			</div>
			<div id="cloudGroup2">
				<img src="<%=path %>/style/images/clouds.png" alt=""
					id="cloudPiece4" class="cloudPiece" /> <img
					src="<%=path %>/style/images/clouds.png" alt="" id="cloudPiece5"
					class="cloudPiece" /> <img
					src="<%=path %>/style/images/clouds.png" alt="" id="cloudPiece6"
					class="cloudPiece" />
			</div>
			<div id="cloudGroup3">
				<img src="<%=path %>/style/images/clouds.png" alt=""
					id="cloudPiece7" class="cloudPiece" /> <img
					src="<%=path %>/style/images/clouds.png" alt="" id="cloudPiece8"
					class="cloudPiece" />
			</div>
		</div>
		<div id="bg_stars">
			<div class="star_type_1_big">
				<div class="bg_star" id="star1_1"></div>
				<div class="bg_star" id="star1_2"></div>
				<div class="bg_star" id="star1_3"></div>
				<div class="bg_star" id="star1_4"></div>
			</div>
			<div class="star_type_1_normal">
				<div class="bg_star" id="star1_7"></div>
				<div class="bg_star" id="star1_8"></div>
				<div class="bg_star" id="star1_9"></div>
				<div class="bg_star" id="star1_10"></div>
				<div class="bg_star" id="star1_11"></div>
				<div class="bg_star" id="star1_12"></div>
			</div>
			<div class="star_type_1_small">
				<div class="bg_star" id="star1_13"></div>
				<div class="bg_star" id="star1_14"></div>
				<div class="bg_star" id="star1_15"></div>
				<div class="bg_star" id="star1_16"></div>
				<div class="bg_star" id="star1_17"></div>
				<div class="bg_star" id="star1_18"></div>
			</div>
			<div class="star_type_2_big">
				<div class="bg_star" id="star2_1"></div>
				<div class="bg_star" id="star2_2"></div>
				<div class="bg_star" id="star2_3"></div>
				<div class="bg_star" id="star2_4"></div>
			</div>
			<div class="star_type_2_normal">
				<div class="bg_star" id="star2_7"></div>
				<div class="bg_star" id="star2_8"></div>
				<div class="bg_star" id="star2_9"></div>
				<div class="bg_star" id="star2_10"></div>
				<div class="bg_star" id="star2_11"></div>
				<div class="bg_star" id="star2_12"></div>
			</div>
			<div class="star_type_2_small">
				<div class="bg_star" id="star2_13"></div>
				<div class="bg_star" id="star2_14"></div>
				<div class="bg_star" id="star2_15"></div>
				<div class="bg_star" id="star2_16"></div>
				<div class="bg_star" id="star2_17"></div>
				<div class="bg_star" id="star2_18"></div>
			</div>
		</div>
	</div>
	<div class="full-content-wrapper">
	<div>
		<iframe src="title.jsp" height="45px" width="100%"></iframe><br><br>
	</div>
		<div class="container">
			<nav class="breadcrumb" data-geohash="wtw3equp">&nbsp;</nav>
			<div class="wash-paper clearfix" id="profile">
				<nav class="profile-nav">
					<ul class="nav nav-list">
						<li class="nav-header">饿单中心</li>
						<li><a href="javascript:;"> <i
								class="icon-calendar icon-white"></i> 最近一个月
						</a></li>
						<li><a href="javascript:;"> <i class="icon-list-alt"></i>
								一个月之前
						</a></li>
						<li><a href="javascript:;"> <i class="icon-star-empty"></i>
								未点评饿单
						</a></li>
						<li><a href="javascript:;"> <i class="icon-file"></i>
								退单中饿单
						</a></li>
						<li class="divider"></li>
						
						<li class="nav-header">个人中心</li>
						<li><a href="info.action?command=see&id=${sessionScope.user.getId() }" target="info"> <i class="icon-heart"></i>
								个人资料
						</a></li>
						<li><a href="user_info/changePwd.jsp" target="info"> <i class="icon-star"></i>
								修改密码
						</a></li>
						<li><a href="info.action?command=seeAddress&id=${sessionScope.user.getId() }" target="info"> <i class="icon-star"></i>
								收货地址
						</a></li>
						
						<li class="nav-header">我的收藏</li>
						<li><a href="javascript:;"> <i class="icon-heart"></i>
								我收藏的餐厅
						</a></li>
						<li><a href="javascript:;"> <i class="icon-star"></i>
								我收藏的美食
						</a></li>
						<li class="divider"></li>
						<li class="nav-header">在线支付</li>
						<li><a href="javascript:;"> <i class="icon-eye-open"></i>
								收支明细
						</a></li>
					</ul>
				</nav>
				<div class="main-content">
					<div style="height:800px;border:1px solid red">
						<iframe name="info" height="800px" width="100%"></iframe>
					</div>
				</div>
			</div>
		</div>
		<footer class="site-footer">
			<p class="sfooter-link-list">
				<a class="sfooter-link" href="http://kaidian.ele.me">我要开店</a> <a
					class="sfooter-link" href="contact.html">联系我们</a> <a
					class="sfooter-link" href="agreement.html">服务条款和协议</a> <a
					class="sfooter-link" href="sitemaps.html">站点地图</a> <a
					class="sfooter-link" href="http://jobs.ele.me">加入我们</a>
			</p>
			<p>
				增值电信业务许可证：<a class="sfooter-link sfooter-link-zero" target="_blank"
					rel="nofollow" href="http://www.shca.gov.cn">沪B2-20150033</a> <a
					class="sfooter-link" target="_blank" rel="nofollow"
					href="http://www.miibeian.gov.cn">沪ICP备 09007032</a> <a
					class="sfooter-link" target="_blank" rel="nofollow"
					href="http://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&amp;entyId=20120305173227823">上海工商行政管理</a>
				Copyright &copy;2008-2015 ele.me, All Rights Reserved.
			</p>
		</footer>
	</div>
</body>
</html>