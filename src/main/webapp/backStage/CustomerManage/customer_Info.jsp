<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>顾客信息管理</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="../css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<link href="../css/style.css" rel='stylesheet' type='text/css' />
<link href="../css/font-awesome.css" rel="stylesheet"> 
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
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
		
    
    <style>
    	.position{
    		color: #ED1983;
    	}
    	
    </style>   
        
	<div id="page-wrapper">
	    <div class="col-md-12 graphs">
		    <div class="xs">
	  	 	<font>您当前的位置：</font><a><font class="position">顾客管理</font></a>----><a><font  class="position">顾客信息管理</font></a><br /><br />
	  			<div class="bs-example4" data-example-id="contextual-table">
					<table class="table">
						<thead>
							<tr>
								<th>账号</th>
								<th>姓名</th>
								<th>手机号码</th>
								<th>邮箱</th>
								<th>积分</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<tr class="active">
								<th scope="row">1</th>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>
									<button class="btn btn-default">详情</button>
									<button class="btn btn-info">修改</button>
									<button class="btn btn-danger">删除</button>
								</td>
							</tr>
							<tr class="success">
								<th scope="row">1</th>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>
									<button class="btn btn-default">详情</button>
									<button class="btn btn-info">修改</button>
									<button class="btn btn-danger">删除</button>
								</td>
							</tr>
							<tr class="info">
								<th scope="row">1</th>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>
									<button class="btn btn-default">详情</button>
									<button class="btn btn-info">修改</button>
									<button class="btn btn-danger">删除</button>
								</td>
							</tr>
							<tr class="warning">
								<th scope="row">1</th>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>
									<button class="btn btn-default">详情</button>
									<button class="btn btn-info">修改</button>
									<button class="btn btn-danger">删除</button>
								</td>
							</tr>
							<tr class="danger">
								<th scope="row">1</th>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>
									<button class="btn btn-default">详情</button>
									<button class="btn btn-info">修改</button>
									<button class="btn btn-danger">删除</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
	  		</div>
	    </div>
	</div>

</div>
<!-- Nav CSS -->
<link href="../css/custom.css" rel="stylesheet">
<script src="../js/metisMenu.min.js"></script>
<script src="../js/custom.js"></script>
</body>
</html>
