<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
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
	    $("#register_form").validate({
	    	rules:{
	    		username:{
	    			required:true,
	    			maxlength:10
	    		},
	    		password:{
	    			required:true,
	    			minlength:6,
	    			maxlength:15
	    		},
	    		tel:{
	    			number:true,
	    			minlength:11,
	    			maxlength:11
	    		},
	    		checkNum:{
	    			number:true,
		    		minlength:4,
	    			maxlength:4
	    		},
	    		repeat:{
	    			required:true,
	    			equalTo:"#password"
	    		}
	    		
	    	},
	    	messages:{ 
	    		username:"用户名长度必须小于10",
	    		password:'密码长度在6~15个字符',
	    		tel:'请输入正确的手机号码',
	    		checkNum:'请输入4位数字验证码',
	    		repeat:'请输出相同密码',
	    	}
	    });
	    
	    
	});
</script>
<body class="page-account">
	<div class="container clrfix" style="margin-top: 30px;">
		<aside class="banner">
			<img class="img"
				src="<%=path %>/style/images/banner-app.75596728.png" alt="随时随地轻松订餐" />
		</aside>
		<div class="panel">
			<div class="panel-hd clrfix">
				<h2 class="title">商家注册</h2>
			</div>
			<div class="panel-bd">
				<form action="login.action" id="register_form" class="form" method="post">
					<div class="form-item">
						<input id="username" class="inputbox js_inputbox async"
							name="username" type="text"  placeholder="用户名" />
						<div class="g-error-tip hide"></div>
					</div>
					<div class="form-item">
						<input id="tel" class="inputbox js_inputbox async"
							name="tel" type="text" placeholder="手机号码" />
						<div class="g-error-tip hide"></div>
					</div>
					<div class="form-item">
						<input id="checkNum" class="inputbox js_inputbox async"
							name="checkNum" type="text" placeholder="验证码" />
						<div class="g-error-tip hide"></div>
					</div>
					<div class="form-item">
						<input id="password" class="inputbox js_inputbox"
							name="password" type="password" placeholder="密码" />
						<div class="g-error-tip hide"></div>
					</div>
					<div class="form-item">
						<input id="repeat" class="inputbox js_inputbox"
							name="repeat" type="password"  placeholder="确认密码" />
						<div class="g-error-tip hide"></div>
						<div  id="pwdError"></div>
					</div>
					<div class="form-helper form-text">
						<input type="checkbox" checked="true" disabled>&nbsp;&nbsp;&nbsp;
						<a class="g-link" href="https://h5.ele.me/service/agreement/" target="_blank">使用条款和协议</a>
					</div>
					<input type="hidden" name="command" value="regist">
					<input type="hidden" name="post" value="商家" >
					<input value="注册" id="submit" class="g-btn g-btn-l g-btn-submit" type="submit">
				</form>
			</div>
			<div class="panel-ft">
				<div class="g-oauth">
					<a class="weibo oauth-sns" href="javascript:;" target="_blank"
						title="通过微博登录"></a> <a class="renren oauth-sns"
						href="javascript:;" target="_blank" title="通过人人登录"></a>
				</div>
				<a class="g-link" href="login.jsp">登录</a>
			</div>
			<div id="loading_mask" class="ui-wave-loader-mask hide">
				<i class="ui-wave-loader left"></i> <i class="ui-wave-loader middle"></i>
				<i class="ui-wave-loader right"></i>
			</div>
		</div>
	</div>
	<footer class="site-footer group" style="margin-top: -50px;">
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
</body>
</html>