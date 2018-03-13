<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<title>公司历史简介</title>
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
			<div class="graphs" style="background-image: url(../images/history_bg1.jpg);height: 1200px;">
				<div class="xs">
					<font>您当前的位置：</font><a><font color="red">关于我们</font></a>----><a><font  color="red">公司历史</font></a><br /><br />
				</div>
				<div style=""><br /><br />
					<div class="container" style="color:#EA4C89">
						<p>2009.04 “饿了么 ”网站正式上线</p><br />
	     				<p>2009.09 推出餐厅运营一体化解决方案</p><br />
						<p>2010.05 网站2.0版本上线，各方面性能均有所提升</p><br />
						<p>2010.08 公司规模扩张，喜迁新址 </p><br />
						<p>2010.11 手机网页订餐平台上线 </p><br />
						<p>2011.05 年交易额突破2000万 </p><br />
						<p>2011.07 成立北京分公司、杭州分公司 </p><br />
						<p>2011.12 日均交易额突破10000单，成为中国最大的订餐网站 </p><br />
						<p>2012.03 成立广州分公司、天津分公司，团队规模超过100人 </p><br />
						<p>2012.11Android版应用上线 </p><br />
						<p>2013.03 成立苏州分公司，哈尔滨分公司，福州分公司 </p><br />
						<p>2013.11 完成2500万美元C轮融资，领投方为红杉资本，其A轮投资方金沙江创投、B轮投资方经纬创投跟投。 </p><br />
						<p>2014.05 饿了么获得大众点评8000万美元投资，成为其深度战略合作伙伴。 </p><br />
						<p>2015.06“有菜”平台启动、7月试运行、8月正式上线，目前，日交易额达400万元，覆盖全国8个城市。 </p><br />
						<p>2015.11饿了么的自营配送队伍已超过6000人，标准人效达每人每天35单，蜂鸟团队及众包配送员更超过50万人，覆盖全国300多个城市。 </p><br />
						<p>2015年12月17日，饿了么和阿里巴巴签署投资框架性协议，阿里巴巴投资饿了么12.5亿美元，获投资后，饿了么估值超过45亿美元，继续独立运作。本轮投资后阿里占股饿了么27.7%，成为第一大股东。 </p><br />
						<p>2016年4月13日，饿了么与阿里巴巴及蚂蚁金服正式达成战略合作协议，获得12.5亿美元投资。其中，阿里巴巴投资9亿美元，蚂蚁金服投资3.5亿美元。 </p><br />
						<br /><br /><br />
						<div  style="text-align: center;">
							<font face="黑体" size="10px" color="red">我们一直在路上</font>
						</div>
						<br /><br /><br /><br />
						<div style="text-align: center;">
							<p>Copyright &copy; 2016.Company name All rights reserved.More Templates</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div><!--Wrapper  -->
		<link href="../css/custom.css" rel="stylesheet">
		<script src="../js/metisMenu.min.js"></script>
		<script src="../js/custom.js"></script>
</body>
</html>
