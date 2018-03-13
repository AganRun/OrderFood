<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

<script type="application/x-javascript">
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/lines.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet">

<script src="js/jquery.min.js"></script>
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<script src="js/d3.v3.js"></script>
<script src="js/rickshaw.js"></script>
</head>

<body>
	<div id="wrapper">
     <!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp">ELM</a>
            </div>
            
            <!-- /.头部--按钮下拉 -->
            <ul class="nav navbar-nav navbar-right">
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><i class="fa fa-cog"></i></a>
	        		<ul class="dropdown-menu">
						<li class="m_2"><a href="http://ishuo.cn"  target="view_window"><i class="fa fa-coffee"></i> 轻松一刻</a></li>
						<li class="m_2"><a href="http://www.weather.com.cn"  target="view_window"><i class="fa fa-road"></i> 天 气 </a></li>
						<li class="m_2"><a href="http://map.baidu.com"  target="view_window"><i class="fa fa-umbrella"></i> 出行地图 </a></li>
						<li class="m_2"><a href="../index/login.jsp"><i class="fa fa-lock"></i> 注销 </a></li>	
	        		</ul>
	      		</li>
			</ul>
			
			
			<form class="navbar-form navbar-right">
              <input type="text" class="form-control" value="Search..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search...';}">
            </form>
            
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li><a href="index.jsp"><i class="fa  fa-home nav_icon"></i>主页</a></li>
                        <li>
                            <a href="#"><i class="fa fa-laptop nav_icon"></i>顾客管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li><a href="CustomerManage/customer_Info.jsp">顾客信息管理</a></li>
                                <li><a href="CustomerManage/menber_Info.jsp">会员信息管理</a></li>
                                <li><a href="CustomerManage/blackList.jsp">黑名单管理</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-indent nav_icon"></i>商家管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li><a href="Shop/shop_Info.jsp">商家信息管理</a></li>
                                <li><a href="Shop/blackList.jsp">黑名单管理</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-user nav_icon"></i>个人信息管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="PersonalInfo/seeInfo.jsp">查看信息</a>
                                    <a href="PersonalInfo/changePwd.jsp">修改密码</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-envelope nav_icon"></i>留言管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                	<a href="Message/threeMonth.jsp">近三个月留言查看</a>
                                    <a href="Message/badWords.jsp">恶意留言管理</a>
                                    <a href="Message/longWords.jsp">长留言管理</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-flask nav_icon"></i>销售统计<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li><a href="Money/month.jsp">月销量统计</a></li>
                                <li><a href="Money/day.jsp">日销量统计</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-check-square-o nav_icon"></i>订单管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li><a href="List/threeMonth.jsp">近三个月订单</a></li>
                                <li><a href="List/refuseSeller.jsp">商家拒接单</a></li>
                                <li><a href="List/refuseCustomer.jsp">顾客拒收单</a></li>
                                <li><a href="List/good.jsp">高分订单</a></li>
                                <li><a href="List/bad.jsp">低分订单</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-pencil nav_icon"></i>常见问题<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="Problem/orderAndPay.jsp">订餐支付</a>
                                    <a href="Problem/sellOver.jsp">售后服务</a>
                                    <a href="Problem/rules.jsp">网站规则</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-sitemap fa-fw nav_icon"></i>关于我们<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="AboutUs/history.jsp">公司历史</a>
                                    <a href="AboutUs/future.jsp">前景规划</a>
                                    <a href="AboutUs/bandBook.jsp">员工手册</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
		<div class="copyrights">Collect from
			<a href="http://www.cssmoban.com/">网页模板</a>
		</div>
<div id="page-wrapper">
	<div class="graphs">
		
	<div class="col-md-4 span_7">
		<div class="cal1 cal_2">
				
			<!--日历-->
			<div class="clndr">
				<div class="clndr-controls">
					<div class="clndr-control-button">
						<p class="clndr-previous-button">previous</p>
					</div>
					<div class="month">July 2015</div>
					<div class="clndr-control-button rightalign">
						<p class="clndr-next-button">next</p>
					</div>
				</div>
				<table class="clndr-table" border="0" cellspacing="0" cellpadding="0">
					<thead>
						<tr class="header-days">
							<td class="header-day">S</td>
							<td class="header-day">M</td>
							<td class="header-day">T</td>
							<td class="header-day">W</td>
							<td class="header-day">T</td>
							<td class="header-day">F</td>
							<td class="header-day">S</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="day adjacent-month last-month calendar-day-2015-06-28">
								<div class="day-contents">28</div>
							</td>
							<td class="day adjacent-month last-month calendar-day-2015-06-29">
								<div class="day-contents">29</div>
							</td>
							<td class="day adjacent-month last-month calendar-day-2015-06-30">
								<div class="day-contents">30</div>
							</td>
							<td class="day calendar-day-2015-07-01">
								<div class="day-contents">1</div>
							</td>
							<td class="day calendar-day-2015-07-02">
								<div class="day-contents">2</div>
							</td>
							<td class="day calendar-day-2015-07-03">
								<div class="day-contents">3</div>
							</td>
							<td class="day calendar-day-2015-07-04">
								<div class="day-contents">4</div>
							</td>
						</tr>
						<tr>
							<td class="day calendar-day-2015-07-05">
								<div class="day-contents">5</div>
							</td>
							<td class="day calendar-day-2015-07-06">
								<div class="day-contents">6</div>
							</td>
							<td class="day calendar-day-2015-07-07">
								<div class="day-contents">7</div>
							</td>
							<td class="day calendar-day-2015-07-08">
								<div class="day-contents">8</div>
							</td>
							<td class="day calendar-day-2015-07-09">
								<div class="day-contents">9</div>
							</td>
							<td class="day calendar-day-2015-07-10">
								<div class="day-contents">10</div>
							</td>
							<td class="day calendar-day-2015-07-11">
								<div class="day-contents">11</div>
							</td>
						</tr>
						<tr>
							<td class="day calendar-day-2015-07-12">
								<div class="day-contents">12</div>
							</td>
							<td class="day calendar-day-2015-07-13">
								<div class="day-contents">13</div>
							</td>
							<td class="day calendar-day-2015-07-14">
								<div class="day-contents">14</div>
							</td>
							<td class="day calendar-day-2015-07-15">
								<div class="day-contents">15</div>
							</td>
							<td class="day calendar-day-2015-07-16">
								<div class="day-contents">16</div>
							</td>
							<td class="day calendar-day-2015-07-17">
								<div class="day-contents">17</div>
							</td>
							<td class="day calendar-day-2015-07-18">
								<div class="day-contents">18</div>
							</td>
						</tr>
						<tr>
							<td class="day calendar-day-2015-07-19">
								<div class="day-contents">19</div>
							</td>
							<td class="day calendar-day-2015-07-20">
								<div class="day-contents">20</div>
							</td>
							<td class="day calendar-day-2015-07-21">
								<div class="day-contents">21</div>
							</td>
							<td class="day calendar-day-2015-07-22">
								<div class="day-contents">22</div>
							</td>
							<td class="day calendar-day-2015-07-23">
								<div class="day-contents">23</div>
							</td>
							<td class="day calendar-day-2015-07-24">
								<div class="day-contents">24</div>
							</td>
							<td class="day calendar-day-2015-07-25">
								<div class="day-contents">25</div>
							</td>
						</tr>
						<tr>
							<td class="day calendar-day-2015-07-26">
								<div class="day-contents">26</div>
							</td>
							<td class="day calendar-day-2015-07-27">
								<div class="day-contents">27</div>
							</td>
							<td class="day calendar-day-2015-07-28">
								<div class="day-contents">28</div>
							</td>
							<td class="day calendar-day-2015-07-29">
								<div class="day-contents">29</div>
							</td>
							<td class="day calendar-day-2015-07-30">
								<div class="day-contents">30</div>
							</td>
							<td class="day calendar-day-2015-07-31">
								<div class="day-contents">31</div>
							</td>
							<td class="day adjacent-month next-month calendar-day-2015-08-01">
								<div class="day-contents">1</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
	<div class="col-md-4 stats-info">
		<div class="panel-heading">
			<h4 class="panel-title">Browser Stats</h4>
		</div>
		<div class="panel-body">
			<ul class="list-unstyled">
				<li>Google Chrome
					<div class="text-success pull-right">12%<i class="fa fa-level-up"></i></div>
				</li>
				<li>Firefox
					<div class="text-success pull-right">15%<i class="fa fa-level-up"></i></div>
				</li>
				<li>Internet Explorer
					<div class="text-success pull-right">18%<i class="fa fa-level-up"></i></div>
				</li>
				<li>Safari
					<div class="text-danger pull-right">17%<i class="fa fa-level-down"></i></div>
				</li>
				<li>Opera
					<div class="text-danger pull-right">10%<i class="fa fa-level-down"></i></div>
				</li>
				<li>Mobile &amp; tablet
					<div class="text-success pull-right">14%<i class="fa fa-level-up"></i></div>
				</li>
				<li class="last">Others
					<div class="text-success pull-right">5%<i class="fa fa-level-up"></i></div>
				</li>
			</ul>
		</div>
	</div>
</div>
<div class="span_11">
		<!----Calender -------->
		<link rel="stylesheet" href="css/clndr.css" type="text/css" />
		<script src="js/underscore-min.js" type="text/javascript"></script>
		<script src="js/moment-2.2.1.js" type="text/javascript"></script>
		<script src="js/clndr.js" type="text/javascript"></script>
		<script src="js/site.js" type="text/javascript"></script>
		<!----End Calender -------->
	</div>
		<script>
			var seriesData = [
				[],
				[],
				[],
				[],
				[]
			];
			var random = new Rickshaw.Fixtures.RandomData(50);
		
			for(var i = 0; i < 75; i++) {
				random.addData(seriesData);
			}
		
			var graph = new Rickshaw.Graph({
				element: document.getElementById("chart"),
				renderer: 'multi',
		
				dotSize: 5,
				series: [{
					name: 'temperature',
					data: seriesData.shift(),
					color: '#AFE9FF',
					renderer: 'stack'
				}, {
					name: 'heat index',
					data: seriesData.shift(),
					color: '#FFCAC0',
					renderer: 'stack'
				}, {
					name: 'dewpoint',
					data: seriesData.shift(),
					color: '#555',
					renderer: 'scatterplot'
				}, {
					name: 'pop',
					data: seriesData.shift().map(function(d) {
						return {
							x: d.x,
							y: d.y / 4
						}
					}),
					color: '#555',
					renderer: 'bar'
				}, {
					name: 'humidity',
					data: seriesData.shift().map(function(d) {
						return {
							x: d.x,
							y: d.y * 1.5
						}
					}),
					renderer: 'line',
					color: '#ef553a'
				}]
			});
		
			graph.render();
		
			var detail = new Rickshaw.Graph.HoverDetail({
				graph: graph
			});
		</script>
</div>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
