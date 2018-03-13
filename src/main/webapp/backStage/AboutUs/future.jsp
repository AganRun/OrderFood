<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<title>公司前景规划</title>
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
			<div class="graphs" style="background-image: url(../images/history_bg1.jpg);height: 800px;">
				<div class="xs">
					<font>您当前的位置：</font><a><font color="red">关于我们</font></a>----><a><font  color="red">前景规划</font></a><br /><br />
				</div>
				<div style="height: 550px;"><br /><br />
					<div class="container">
						<p>“饿了么”是中国专业的餐饮O2O平台。公司创立于2009年4月。由张旭豪、康嘉等人在上海创立。</p><br />
	     				<p>作为O2O平台，“饿了么”的自身定位是连接“跟吃有关的一切”。除了现有的餐饮配送业务，目前“饿了么”已经将触角延伸至商超配送等其他领域。</p><br />
						<p>截止2015年10月，“饿了么”已进入超过300个城市，累计用户超过4000万，加盟餐厅近50万家，日交易额超过8000万，超过98%的交易额来自移动端。</p><br />
						<p>2015年8月，饿了么获6.3亿美元融资，本轮融资由中信产业基金、华联股份领投，华人文化产业基金、歌斐资产等新投资方以及腾讯、京东、红杉资本等原投资方跟投。 </p><br />
						<p> “饿了么”整合了线下餐饮品牌和线上网络资源，用户可以方便地通过手机、电脑搜索周边餐厅，在线订餐、享受美食。与此同时，“饿了么”向用户传达一种健康、年轻化的饮食习惯和生活方式。</p><br />
						<p>“饿了么”隶属于拉扎斯网络科技（上海）有限公司，“拉扎斯”来源于梵文“Rajax”，寓意着“激情和能量”。公司始终将自己定位成一家创业型公司，充满激情，充满能量。公司秉承“极致”、“激情”、“创新”的信仰，致力于推进餐饮行业数字化的发展进程。</p><br />
						<br /><br /><br />
						<div  style="text-align: center;">
							<font face="黑体" size="10px" color="red">我们一直在路上</font>
						</div>
					</div>
 

  
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
