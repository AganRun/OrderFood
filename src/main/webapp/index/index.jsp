<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
<title>饿了店铺</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<%=path%>/style/css/forward_201503262210.css" type="text/css" rel="stylesheet" />
<link rel="apple-touch-icon-precomposed" href="<%=path%>/style/images/apple-touch-icon.png" />
<link rel="shortcut icon" href="<%=path%>/style/images/favicon.ico" type="image/x-icon" />
<link href="<%=path%>/style/css/background.css" type="text/css" rel="stylesheet" />
<link href="<%=path%>/style/css/bootstrap.css" rel='stylesheet' type='text/css' />
<script src="<%=path%>/style/js/bootstrap.js" type="text/javascript"></script>
<script src="<%=path%>/style/js/jquery-1.11.1.min.js"></script>
</head>
<body>
	<div>
		<nav class="navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button class="navbar-toggle" data-toggle="collapse" data-target="#navbarCollapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
					<div class="collapse navbar-collapse" id="navbarCollapse">
						<ul class="nav navbar-nav">
							<li class="active"><a href="index.action?command=seeIndex">首页</a></li>
							<li><a href="member_order.jsp" onclick="callAlert();">我的饿单</a></li>
							<li><a href="#">附近团购</a></li>
							<li><a href="#" >联系客服</a></li>
						</ul>
						<div class="navbar-form navbar-right">
							<a><font>${sessionScope.user.getName() } &nbsp;您好</font></a>
							<a href="login.jsp" class="navbar-link">登录</a>
							<a href="register.jsp" class="navbar-link">注册</a>
							<input type="text"  class="form-control" placeholder="请输入关键字"/>
							<input type="button" class="btn btn-primary" value="搜索"/>
						</div>
					</div>
			</div>
		</nav>
	</div>
	<div id="background" style="background-position: 1px -10810.138888889px;" class=" night">
		<div id="sun"></div>
		<div id="moon"></div>
		<div id="clouds">
			<div id="cloudGroup1">
				<img src="<%=path%>/style/images/clouds.png" alt="" id="cloudPiece1"
					class="cloudPiece" /> <img src="<%=path%>/style/images/clouds.png"
					alt="" id="cloudPiece2" class="cloudPiece" /> <img
					src="<%=path%>/style/images/clouds.png" alt="" id="cloudPiece3"
					class="cloudPiece" />
			</div>
			<div id="cloudGroup2">
				<img src="<%=path%>/style/images/clouds.png" alt="" id="cloudPiece4"
					class="cloudPiece" /> <img src="<%=path%>/style/images/clouds.png"
					alt="" id="cloudPiece5" class="cloudPiece" /> <img
					src="<%=path%>/style/images/clouds.png" alt="" id="cloudPiece6"
					class="cloudPiece" />
			</div>
			<div id="cloudGroup3">
				<img src="<%=path%>/style/images/clouds.png" alt="" id="cloudPiece7"
					class="cloudPiece" /> <img src="<%=path%>/style/images/clouds.png"
					alt="" id="cloudPiece8" class="cloudPiece" />
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
	<div class="full-content-wrapper"
		style="height: auto !important; min-height: 700px;">
		<div class="container" style="margin-left:270px">
			<nav class="breadcrumb" data-geohash="wtw3equp">
				登科保洁(长寿路店) <a class="breadcrumb-switch" href="javascript:;">[切换地址]</a>
			</nav>
			<div class="row more-restaurants restaurants-row"></div>
			<div class="row promoted-restaurants restaurants-row">
				<div class="span12 row-wrapper">
					<div class="row">
						<div
							class="span12 category-restaurant-header with-restaurant-filter">
							<div class="row">
								<div class="span12">
									<div id="filter-btn-wrapper">
										<span class="filter-btn"> <input type="checkbox"
											name="filter" value="tuijian" /><span
											class="filter-text tuijian">热门餐厅</span>
										</span> <span class="filter-btn"> <input type="checkbox"
											name="filter" value="open" /><span class="filter-text open">营业中</span>
										</span> <span class="filter-divider"></span>
										<div class="flavorblock">
											<select style="margin-top: 7px;">
												<option>--店铺类别--</option>
											</select>
										</div>
										<div class="deliver-slider-wrapper " style="margin-top: 3px;">
											查询店铺：<input type="text" />
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="span12">
							<table class="restaurant-list-table">
								<tbody>
									<c:forEach var="index" items="${requestScope.IndexList }" varStatus="stat">
										<c:if test="${stat.count != 1 &&  (stat.count-1) % 5 == 0}">    
									    	  <tr>    
									    </c:if>
										<td>
											<div class="restaurant-block" id="restaurant-12753"
												data-restaurantid="12753">
												<div class="line-one">
													<div class="logo-wrapper">
														<div class="logo">
															<a href="index.action?command=seeShopperById&shopper_id=${index.getShopper_id() }" target="_blank"><img class="restaurant-logo" src="<%=path%>/data/${index.getImage() }" /></a>
														</div>
														<div class="deliver-time-wrapper tooltip_on"
															data-toggle="tooltip"><c:out value="${index.getSpeed() }" default=""></c:out>分钟</div>
													</div>
													<div class="info">
														<div class="name">
															<a class="restaurant-link" href="index.action?command=seeShopperById&shopper_id=${index.getShopper_id() }" target="_blank">${index.getShopper_name() }</a>
														</div>
														<div class="flavors ">中式</div>
														<div class="ratings ">
															<div class="r9 rating-star" title="餐厅评价：4.5星"></div>
															<span class="rating-number"><c:out value="${index.getMonthNum() }" default=""></c:out> 份</span>
														</div>
														<div class="icons">
															<span class="restaurant-icons online-payment tooltip_on"
																data-toggle="tooltip" title="该餐厅支持在线支付">&nbsp;</span> <span
																class="restaurant-icons extra-discount tooltip_on"
																data-toggle="tooltip" title="在线支付满20减10">&nbsp;</span> <span
																class="restaurant-icons new-user-discount tooltip_on"
																data-toggle="tooltip" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span>
														</div>
													</div>
												</div>
											</div>
										</td>
										<c:if test="${stat.count != 1 && (stat.count-1) % 5 == 0}">    
									    	  </tr>    
									    </c:if>
									</c:forEach>
									<%
										for(int j=0;j<5;j++){
									%>
									<tr>
									<%
										int i=0;
										for(i=1;i<=5;i++){
											
									%>
										<td>
											<div class="restaurant-block" id="restaurant-12753"
												data-restaurantid="12753">
												<div class="line-one">
													<div class="logo-wrapper">
														<div class="logo">
															<a href="#" target="_blank"><img class="restaurant-logo" src="<%=path%>/data/kouweijipai.png" /></a>
														</div>
														<div class="deliver-time-wrapper tooltip_on"
															data-toggle="tooltip" title="平均送餐时间:43分钟">44分钟</div>
													</div>
													<div class="info">
														<div class="name">
															<a class="restaurant-link" href="#" target="_blank">口味鸡排</a>
														</div>
														<div class="flavors ">中式</div>
														<div class="ratings ">
															<div class="r9 rating-star" title="餐厅评价：4.5星"></div>
															<span class="rating-number">100份</span>
														</div>
														<div class="icons">
															<span class="restaurant-icons online-payment tooltip_on"
																data-toggle="tooltip" title="该餐厅支持在线支付">&nbsp;</span> <span
																class="restaurant-icons extra-discount tooltip_on"
																data-toggle="tooltip" title="在线支付满20减10">&nbsp;</span> <span
																class="restaurant-icons new-user-discount tooltip_on"
																data-toggle="tooltip" title="饿了么新用户在该餐厅下首单，可立减15元">&nbsp;</span>
														</div>
													</div>
												</div>
											</div>
										</td>
									<% 		
										}
									%>
									<%
										}
									%>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<script type="text/javascript">
				var filterJson = '{"tuijian":[31767,24226,36683,168750,119301,12753,13242,12833,44827,21738,17037,25064,58309,165066,110720],"open":[31767,24226,36683,168750,119301,12753,13242,12833,44827,21738,17037,25064,58309,165066,110720,164953,168020,173973,187201,55367,188611,24160,131758,188857,13253,55132,159377,24251,134451,54573,12750,166370,4501,15888,165442,25730,25758,39593,24237,161527,102987,173179,24448,24910,158031,57191,57334,203420,13876,61018,157248,20572,46687,25217,175506,55481,173776,59607,174298,4486,92979,114405,164216,164217,123724,172004,163241,13931,24229,24454,36208,50963,25625,54811,30917,56672,58514,31568,55201,43012,181798,166235,29615,167558,120888,169396,185867,155212,75351,75355,75358,171499,10006,71306,171207,55490,30916,84678,187591,18633,161543,34606,181377,114460,32546,20618,55615,170307,70470,25416,129357,166456,165733,160624,172411,79744,55617,59273,59287,22425,25514,39855,115124,78278,200654,75341,13286,103408],"online_payment":[31767,24226,36683,168750,119301,12753,13242,12833,44827,21738,17037,25064,58309,165066,110720,164953,168020,187201,55367,188611,24160,131758,188857,13253,55132,159377,24251,134451,54573,12750,4501,15888,165442,25730,25758,39593,24237,161527,102987,173179,24448,24910,158031,57191,57334,203420,13876,61018,157248,20572,25217,55481,173776,59607,4486,92979,114405,123724,163241,13931,24229,24454,36208,50963,25625,54811,30917,56672,58514,31568,55201,43012,181798,29615,167558,120888,169396,185867,155212,75358,171499,10006,71306,171207,55490,30916,84678,187591,18633,161543,34606,181377,114460,20618,55615,170307,70470,25416,129357,166456,160624,79744,55617,59273,59287,22425,25514,39855,115124,78278,200654,13286,103408,24259,31737,33734,166408,114363,22840,17143,114310,165016,21105,18982,13411,31757,160581,54617,17156,160588,164976,80645,155440,21113,25213,18051,20615,57347,21939,31567,15864,146088,47654,166403,59614,57894,159854,57879,163975,163974,21118,24248,22301,13180,24452,26631,21589,34060,40425,33357,20666,58520,30906,36213,31781,46630,54030,27023,58517,34705,50187,135171,25216,214277,149026,31281,210492,138336,209994,38987,195042,144474,184081,138345,159857,173193,58515,36500,186523,176922,124529,161450,164898,191185,14370,21115,187629,26865,211707,48393,175382,26414,27863,54074,20820,200643,160610,98156,164213,91530,91549,59670,129352,49320,21462,119648,55275,58865,36852,24575],"chaoshipeifu":[131758,24910,123724,39855,146088,198761,34060,31781,195042,164898,98156],"new_user_discount":[31767,24226,36683,168750,119301,12753,13242,12833,21738,17037,25064,165066,168020,187201,55367,188611,24160,131758,188857,13253,159377,54573,165442,25730,25758,161527,102987,173179,24448,24910,158031,57191,57334,61018,25217,55481,59607,4486,114405,123724,13931,36208,25625,30917,56672,58514,55201,43012,181798,29615,120888,10006,71306,55490,30916,34606,25416,79744,59287,25514,39855,115124,13286,24259,31737,33734,166408,114363,22840,17143,114310,165016,21105,18982,160581,164976,25213,57347,31567,146088,47654,24452,26631,34060,40425,20666,58520,31781,54030,27023,50187,25216,195042,144474,159857,173193,176922,161450,164898,191185,14370,21115,202998,26865,211707,175382,26414,54074,200643,160610,98156,91549,129352,21462,119648,24575],"extra_discount":[31767,24226,36683,168750,119301,12753,13242,12833,21738,17037,25064,165066,168020,187201,55367,188611,24160,131758,188857,13253,159377,54573,165442,25730,25758,161527,102987,173179,24448,24910,158031,57191,57334,61018,25217,55481,59607,4486,114405,123724,13931,36208,25625,30917,56672,58514,55201,43012,181798,29615,120888,10006,71306,55490,30916,34606,25416,79744,59287,25514,39855,115124,13286,24259,31737,33734,166408,114363,22840,17143,114310,165016,21105,18982,160581,164976,25213,57347,31567,146088,47654,24452,26631,34060,40425,20666,58520,31781,54030,27023,50187,25216,195042,144474,159857,173193,176922,161450,164898,191185,14370,21115,202998,26865,211707,175382,26414,54074,200643,160610,98156,91549,129352,21462,119648,24575],"zhongshi":[31767,24226,36683,168750,119301,12753,13242,12833,21738,17037,25064,165066,110720,164953,187201,55367,188611,24160,131758,188857,13253,55132,24251,134451,54573,12750,166370,4501,15888,165442,25730,25758,39593,24237,161527,102987,173179,24448,24910,57191,57334,61018,157248,20572,25217,175506,59607,174298,4486,92979,114405,123724,13931,24229,24454,50963,30917,56672,31568,43012,181798,166235,29615,167558,120888,169396,75351,75355,75358,171499,10006,71306,171207,30916,84678,187591,18633,161543,34606,32546,20618,55615,170307,166456,165733,172411,79744,55617,59273,22425,25514,39855,115124,200654,75341,103408,24259,31737,33734,166408,114363,22840,17143,114310,165016,21105,13411,31757,160588,164976,13318,80645,59704,21113,25213,18051,57347,21939,31567,146088,198761,35950,47654,57894,159854,57879,163975,163974,21118,24248,16930,13180,24452,26631,27065,34060,40425,20666,58520,30906,36213,31781,54030,27023,34659,58517,34705,25216,210492,138336,38987,195042,144474,184081,138345,159857,85647,58515,36500,48362,124529,161450,164898,191185,21115,202998,26865,211707,31959,175382,26414,27863,54074,20820,165719,200643,160610,98156,164213,196477,98453,196483,196486,91530,192919,192911,192914,59670,129352,21462,119648,75749,175080,58865,36852,24575],"xishi":[58309,173973,203420,13876,46687,55481,92979,164216,164217,36208,58514,31568,55490,103408,18982,20615,15864,166403,21589,149026,38987,165494,14370,48393,175889,54074],"gangshi":[134451,92979,50963,43012,155212,160624,78278,103408,31737,114363,114310,35950,47654,22301,26631,46630,149026,176922,164898,187629],"naichahanbao":[110720,134451,203420,61018,173776,54811,31568,181798,155212,160624,78278,31737,54617,20615,15864,22301,21589,50187,135171,149026,186523,48393,49320],"shaokao":[164953,131758,163241,59287,39855,160588,35950],"rishi":[187201,36208,55201,13286,114310,174143,160581,17156,160588,164206,14370,21115,54074,91549],"hanshi":[159377,92979,36208,25416,155440,214277,164898,21115,54074],"tiandian":[13242,110720,168020,13253,155212,70470,78278,103408,31737,54617,194658,35950,166403,59614,50187,149026,31281,38987,173193,48393,175889,174488,55275],"hanbao":[110720,24251,134451,55481,160624,20615,22301,38987,48393],"allRst":[31767,24226,36683,168750,119301,12753,13242,12833,44827,21738,17037,25064,58309,165066,110720,164953,168020,173973,187201,55367,188611,24160,131758,188857,13253,55132,159377,24251,134451,54573,12750,166370,4501,15888,165442,25730,25758,39593,24237,161527,102987,173179,24448,24910,158031,57191,57334,203420,13876,61018,157248,20572,46687,25217,175506,55481,173776,59607,174298,4486,92979,114405,164216,164217,123724,172004,163241,13931,24229,24454,36208,50963,25625,54811,30917,56672,58514,31568,55201,43012,181798,166235,29615,167558,120888,169396,185867,155212,75351,75355,75358,171499,10006,71306,171207,55490,30916,84678,187591,18633,161543,34606,181377,114460,32546,20618,55615,170307,70470,25416,129357,166456,165733,160624,172411,79744,55617,59273,59287,22425,25514,39855,115124,78278,200654,75341,13286,103408,24259,31737,33734,166408,114363,22840,17143,114310,165016,21105,18982,13411,31757,174143,160581,54617,17156,160588,164976,13318,80645,155440,59704,21113,25213,18051,20615,57347,21939,31567,15864,146088,194658,198761,35950,47654,166403,59614,57894,159854,57879,163975,164206,163974,21118,24248,16930,22301,13180,24452,26631,27065,21589,34060,40425,33357,20666,58520,30906,36213,31781,46630,54030,27023,34659,58517,34705,50187,135171,25216,214277,149026,31281,210492,138336,209994,38987,195042,144474,184081,138345,159857,165494,173193,85647,58515,36500,186523,176922,48362,124529,161450,164898,191185,14370,21115,202998,187629,26865,211707,48393,31959,175889,175382,196484,26414,27863,54074,20820,165719,200643,160610,98156,164213,196477,98453,196483,196486,91530,192919,192911,192914,192915,174488,91549,59670,129352,49320,21462,119648,75749,175080,55275,58865,36852,24575],"Activity_14337":[75355,29615],"NameActivity_14337":"\u95ea\u7535\u7ea2\u5305","deliver_amount":[[36683,24160,164216,164217,75351,75355,75358,187591,32546,55617,75341,163975,164206,38987,196484],[31767,24226,36683,168750,119301,12753,13242,12833,44827,25064,24160,13253,55132,12750,24237,158031,157248,25217,175506,173776,92979,164216,164217,24229,58514,75351,75355,75358,187591,32546,20618,55617,75341,103408,24259,31737,33734,166408,114363,22840,17143,114310,165016,31757,54617,13318,59704,57347,31567,146088,198761,57894,163975,164206,21118,24248,27065,31781,34705,210492,38987,195042,144474,184081,176922,191185,202998,196484,27863,200643,129352],[31767,24226,36683,168750,119301,12753,13242,12833,44827,21738,17037,25064,165066,110720,187201,55367,24160,13253,55132,24251,54573,12750,15888,39593,24237,24448,158031,57191,203420,157248,20572,46687,25217,175506,173776,92979,164216,164217,123724,24229,24454,50963,54811,30917,58514,181798,185867,75351,75355,75358,10006,187591,32546,20618,55617,25514,75341,103408,24259,31737,33734,166408,114363,22840,17143,114310,165016,21105,31757,54617,13318,59704,21113,20615,57347,21939,31567,15864,146088,198761,57894,159854,57879,163975,164206,163974,21118,24248,16930,13180,27065,33357,58520,36213,31781,58517,34705,135171,210492,38987,195042,144474,184081,159857,85647,186523,176922,191185,21115,202998,187629,211707,175382,196484,26414,27863,54074,20820,200643,160610,59670,129352,119648,24575],[31767,24226,36683,168750,119301,12753,13242,12833,44827,21738,17037,25064,58309,165066,110720,164953,168020,173973,187201,55367,188611,24160,131758,188857,13253,55132,159377,24251,134451,54573,12750,166370,4501,15888,165442,25730,25758,39593,24237,161527,102987,173179,24448,24910,158031,57191,57334,203420,13876,61018,157248,20572,46687,25217,175506,55481,173776,59607,174298,4486,92979,114405,164216,164217,123724,172004,163241,13931,24229,24454,36208,50963,25625,54811,30917,56672,58514,31568,55201,43012,181798,166235,29615,167558,120888,169396,185867,155212,75351,75355,75358,171499,10006,71306,171207,55490,30916,84678,187591,18633,161543,34606,181377,114460,32546,20618,55615,170307,70470,25416,129357,166456,165733,160624,172411,79744,55617,59273,59287,22425,25514,39855,115124,78278,200654,75341,13286,103408,24259,31737,33734,166408,114363,22840,17143,114310,165016,21105,18982,13411,31757,174143,160581,54617,17156,160588,164976,13318,80645,155440,59704,21113,25213,18051,20615,57347,21939,31567,15864,146088,194658,198761,35950,47654,166403,59614,57894,159854,57879,163975,164206,163974,21118,24248,16930,22301,13180,24452,26631,27065,21589,34060,40425,33357,20666,58520,30906,36213,31781,46630,54030,27023,34659,58517,34705,50187,135171,25216,214277,149026,31281,210492,138336,209994,38987,195042,144474,184081,138345,159857,165494,173193,85647,58515,36500,186523,176922,48362,124529,161450,164898,191185,14370,21115,202998,187629,26865,211707,48393,31959,175889,175382,196484,26414,27863,54074,20820,165719,200643,160610,98156,164213,196477,98453,196483,196486,91530,192919,192911,192914,192915,174488,91549,59670,129352,49320,21462,119648,75749,175080,55275,58865,36852,24575]]}';
				var amountLevelJson = '[10,20,30,999]';
			</script>

			<div id="modal-add-favor" class="modal hide fade" tabindex="-1">
				<div class="modal-header">
					<a href="#" class="close">&times;</a>
					<h3>收藏你喜欢的餐厅</h3>
				</div>
				<div class="modal-body"></div>
				<div class="modal-footer">
					<a href="#" class="btn btn-yellow complete">完成收藏</a>
				</div>
			</div>
			<div id="copy_dlg_restaurant"
				class="restaurant-hover-dlg right hidden">
				<div class="wrapper dark_shadow">
					<div class="callout_tip"></div>
					<div class="detail"></div>
				</div>
			</div>

		</div>
		<div id="modal_globalLogin" class="modal-global-login modal hide fade"
			tabindex="-1">
			<a class="close">&times;</a>
		</div>
		<footer class="site-footer">
			<p class="sfooter-link-list">
				<a class="sfooter-link" href="register_shopper.jsp">我要开店</a> <a
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