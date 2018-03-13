<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<%
	String path = request.getContextPath();
%>
<link class="usemin" rel="stylesheet" href="<%=path %>/style/css/global_rebuild.a739f3af.css" />
<link class="usemin" rel="stylesheet" href="<%=path %>/style/css/account_rebuild.54cf8909.css" />
<script type="text/javascript" src="../style/js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="../style/js/jquery.validate.js"></script>
</head>
<style type="text/css">
   	input.error { border: 1px solid red; }
   	label.error {
	    font-weight: bold;
	    color: #EA5200;
	}
</style>
<script type="text/javascript">
	$(function () {
	    $("#formLogin").validate({
	    	rules:{
	    		username:{
	    			required:true,
	    			number:true
	    		},
	    		password:{
	    			required:true,
	    			minlength:6,
	    			maxlength:10
	    		}
	    	},
	    	messages:{ 
	    		username:"用户名必须为数字",
	    		password:'密码长度在6~10个字符'
	    	}
	    });
	});
</script>
<body class="page-account">
	<header class="header"> </header>
	<div class="container clrfix">
		<aside class="banner">
			<img class="img"
				src="<%=path %>/style/images/banner-app.75596728.png" alt="随时随地轻松订餐" />
		</aside>
		<div class="panel">
			<div class="panel-hd clrfix" id="login-panel-hd">
				<h2 class="title">登录</h2>
			</div>
			<div class="panel-bd">
				<form action="login.action" id="formLogin" class="login-form block" method="post">
					<div class="form-item">
						<input class="inputbox" name="username" id="username" type="text" placeholder="账号/手机号" />
						<div class="g-error-tip hide"></div>
					</div>
					<div class="form-item">
						<input class="inputbox" name="password" id="password" type="password" placeholder="密码" />
						<div class="g-error-tip hide"></div>
					</div>

					<div class="form-helper">
						<label class="login-checkbox"> <input
							class="login-remember" type="checkbox" name="remember" /> 下次自动登录
						</label> <a class="g-link" href="forget.html">忘记密码了？</a>
					</div>
					
					<div id="showError">
						<font color="red"><c:out value="${requestScope.loginError }" default=""></c:out></font>
					</div>
					<input type="hidden" name="command" value="login">
					<input value="登录" class="g-btn g-btn-l g-btn-submit" type="submit">
				</form>
			</div>
			<div class="panel-ft">
				<div class="g-oauth">
					<a class="weibo oauth-sns" href="/weibo/auth" target="_blank"
						title="通过微博登录"></a> <a class="renren oauth-sns"
						href="/renren/auth" target="_blank" title="通过人人登录"></a>
				</div>
				<a class="g-link js_link_register" href="register.jsp">免费注册</a>
			</div>
			
			<div id="loading_mask" class="ui-wave-loader-mask hide">
				<i class="ui-wave-loader left"></i> <i class="ui-wave-loader middle"></i>
				<i class="ui-wave-loader right"></i>
			</div>
		</div>
	</div>
	<footer class="site-footer group">
		<div class="container">
			<p class="sfooter-line">
				<a class="sfooter-link" href="register_shopper.jsp">我要开店</a> | <a
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
</body>
</html>
</html>