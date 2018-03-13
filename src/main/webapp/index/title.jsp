<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
	String path = request.getContextPath();
%>
<link href="<%=path%>/style/css/bootstrap.css" rel='stylesheet' type='text/css' />
<script src="<%=path%>/style/js/bootstrap.js" type="text/javascript"></script>
<script src="<%=path%>/style/js/jquery.min.js" type="text/javascript"></script>
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
							<li><a href="index.action?command=seeIndex" target="_top">首页</a></li>
							<li><a href="member_order.jsp" target="_top" onclick="callAlert();">我的饿单</a></li>
							<li><a href="#">附近团购</a></li>
							<li><a href="#" >联系客服</a></li>
						</ul>
						<div class="navbar-form navbar-right">
							<a><font>${sessionScope.user.getName() } &nbsp;您好</font></a>
							<a href="login.jsp" target="_top" class="navbar-link">登录</a>
							<a href="register.jsp" target="_top" class="navbar-link">注册</a>
							<input type="text"  class="form-control" placeholder="请输入关键字"/>
							<input type="button" class="btn btn-primary" value="搜索"/>
						</div>
					</div>
			</div>
		</nav>
	</div>
</body>
</html>