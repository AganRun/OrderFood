<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<title>近三个月留言</title>
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
		<link href="../css/bootstrap.min.css" rel='stylesheet' type='text/css' />
		<link href="../css/style.css" rel='stylesheet' type='text/css' />
		<link href="../css/font-awesome.css" rel="stylesheet">
		<script src="../js/jquery.min.js"></script>
		<script src="../js/bootstrap.min.js"></script>
	</head>

	<body>
		<div id="wrapper">
		         <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">ELM</a>
            </div>
            
            <!-- /.头部--按钮下拉 -->
            <ul class="nav navbar-nav navbar-right">
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><i class="fa fa-cog"></i></a>
	        		<ul class="dropdown-menu">
						<li class="m_2"><a href="http://ishuo.cn"  target="view_window"><i class="fa fa-coffee"></i> 轻松一刻</a></li>
						<li class="m_2"><a href="http://www.weather.com.cn"  target="view_window"><i class="fa fa-road"></i> 天 气 </a></li>
						<li class="m_2"><a href="http://map.baidu.com"  target="view_window"><i class="fa fa-umbrella"></i> 出行地图 </a></li>
						<li class="m_2"><a href="#"><i class="fa fa-lock"></i> 注销 </a></li>	
	        		</ul>
	      		</li>
			</ul>
			
			
			<form class="navbar-form navbar-right">
              <input type="text" class="form-control" value="Search..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search...';}">
            </form>
            
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
		                        <li><a href="../index.jsp"><i class="fa  fa-home nav_icon"></i>主页</a></li>
		                        <li>
		                            <a href="#"><i class="fa fa-laptop nav_icon"></i>顾客管理<span class="fa arrow"></span></a>
		                            <ul class="nav nav-second-level">
		                                <li><a href="../CustomerManage/customer_Info.jsp">顾客信息管理</a></li>
		                                <li><a href="../CustomerManage/menber_Info.jsp">会员信息管理</a></li>
		                                <li><a href="../CustomerManage/blackList.jsp">黑名单管理</a></li>
		                            </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="fa fa-indent nav_icon"></i>商家管理<span class="fa arrow"></span></a>
		                            <ul class="nav nav-second-level">
		                                <li><a href="../Shop/shop_Info.jsp">商家信息管理</a></li>
		                                <li><a href="../Shop/blackList.jsp">黑名单管理</a></li>
		                            </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="fa fa-user nav_icon"></i>个人信息管理<span class="fa arrow"></span></a>
		                            <ul class="nav nav-second-level">
		                                <li>
		                                    <a href="../PersonalInfo/seeInfo.jsp">查看信息</a>
		                                    <a href="../PersonalInfo/changePwd.jsp">修改密码</a>
		                                </li>
		                            </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="fa fa-envelope nav_icon"></i>留言管理<span class="fa arrow"></span></a>
		                            <ul class="nav nav-second-level">
		                                <li>
		                                	<a href="../Message/threeMonth.jsp">近三个月留言查看</a>
		                                    <a href="../Message/badWords.jsp">恶意留言管理</a>
		                                    <a href="../Message/longWords.jsp">长留言管理</a>
		                                </li>
		                            </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="fa fa-flask nav_icon"></i>销售统计<span class="fa arrow"></span></a>
		                            <ul class="nav nav-second-level">
		                                <li><a href="../Money/month.jsp">月销量统计</a></li>
		                                <li><a href="../Money/day.jsp">日销量统计</a></li>
		                            </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="fa fa-check-square-o nav_icon"></i>订单管理<span class="fa arrow"></span></a>
		                            <ul class="nav nav-second-level">
		                                <li><a href="../List/threeMonth.jsp">近三个月订单</a></li>
		                                <li><a href="../List/refuseSeller.jsp">商家拒接单</a></li>
		                                <li><a href="../List/refuseCustomer.jsp">顾客拒收单</a></li>
		                                <li><a href="../List/good.jsp">高分订单</a></li>
		                                <li><a href="../List/bad.jsp">低分订单</a></li>
		                            </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="fa fa-pencil nav_icon"></i>常见问题<span class="fa arrow"></span></a>
		                            <ul class="nav nav-second-level">
		                                <li>
		                                    <a href="../Problem/orderAndPay.jsp">订餐支付</a>
		                                    <a href="../Problem/sellOver.jsp">售后服务</a>
		                                    <a href="../Problem/rules.jsp">网站规则</a>
		                                </li>
		                            </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="fa fa-sitemap fa-fw nav_icon"></i>关于我们<span class="fa arrow"></span></a>
		                            <ul class="nav nav-second-level">
		                                <li>
		                                    <a href="../AboutUs/history.jsp">公司历史</a>
		                                    <a href="../AboutUs/future.jsp">前景规划</a>
		                                    <a href="../AboutUs/bandBook.jsp">员工手册</a>
		                                </li>
		                            </ul>
		                        </li>
		                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
		<div id="page-wrapper">
			<div class="graphs">
				<div class="xs">
					<font>您当前的位置：</font><a><font color="red">留言管理</font></a>----><a><font  color="red">近三个月留言查看</font></a><br /><br />
					<div class="col-md-1"></div>
					<div class="col-md-10">
						<form action="#" method="GET">
							<div class="input-group">
								<input type="text" name="search" class="form-control1 input-search" placeholder=" 搜索 ...账号 ">
								<span class="input-group-btn">
		                        <button class="btn btn-success" type="button"><i class="fa fa-search"></i></button>
		                    </span>
							</div>
							<!-- Input Group -->
						</form>
						<div class="mailbox-content" style="height: 150px;">
							<div class="mail-toolbar clearfix">
								<div class="float-left">
									<div class="btn btn_1 btn-default mrg5R">
										<i class="fa fa-refresh"> </i>
									</div>
									<div class="dropdown">
										<a href="#" title="" class="btn btn-default" data-toggle="dropdown" aria-expanded="false">
											<i class="fa fa-cog icon_8"></i>
											<i class="fa fa-chevron-down icon_8"></i>
											<div class="ripple-wrapper"></div>
										</a>
										<ul class="dropdown-menu float-right">
											<li>
												<a href="#" class="font-red" title="">
													<i class="fa fa-times" icon_9=""></i>删除全部
												</a>
											</li>
										</ul>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="float-right">
									<span class="text-muted m-r-sm">Showing 20 of 346 </span>
									<div class="btn-group">
										<a class="btn btn-default"><i class="fa fa-angle-left"></i></a>
										<a class="btn btn-default"><i class="fa fa-angle-right"></i></a>
									</div>
								</div>
							</div>
						</div>
					<style>
						.name{
							color: blue;
							font-weight: bolder;
							font: 新宋体;
						}
						.text{
							font: 楷体;
						}
						.time{
							color: #00AAF1;
						}
						
					</style>
						<!--留言模块-->
						<div id="message">
							<br /><br /><br />
							
							<div id="" class="row">
								<div class="col-sm-2">
									<div style="margin-left: 20px;" class="name"> 姓 名 </div>
									<div class="">
										<img src="images/pic4.jpg" height="50px"/>
									</div>
								</div>
								<div class="col-sm-9" style="text-align: left;">
									<br />
									<font class="text">asdffffffffffffffffffffffffffffffffffffffffffffffffffffffff</font>
								</div>
								<div style="text-align: center;" class="col-sm-1">
									<div><font class="time">时间</font></div>
									<div>
										<a href="#" class="font-red" title="">
											<i class="fa fa-times" icon_9=""></i>  删 除
										</a>
									</div>
								</div>
							</div>
							<div style="height: 30px;"></div>
							
							<div id="" class="row">
								<div class="col-sm-2">
									<div style="margin-left: 20px;" class="name"> 姓 名 </div>
									<div class="">
										<img src="images/pic4.jpg" height="50px"/>
									</div>
								</div>
								<div class="col-sm-9" style="text-align: left;">
									<br />
									<font class="text">asdffffffffffffffffffffffffffffffffffffffffffffffffffffffff</font>
								</div>
								<div style="text-align: center;" class="col-sm-1">
									<div><font class="time">时间</font></div>
									<div>
										<a href="#" class="font-red" title="">
											<i class="fa fa-times" icon_9=""></i>  删 除
										</a>
									</div>
								</div>
							</div>
							<div style="height: 30px;"></div>
							
							
							
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="copy_layout">
					<p>Copyright &copy; 2016.Company name All rights reserved.More Templates</p>
				</div>
			</div>
		</div>
		</div><!--Wrapper  -->
		<link href="../css/custom.css" rel="stylesheet">
		<script src="../js/metisMenu.min.js"></script>
		<script src="../js/custom.js"></script>
</body>
</html>
