<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
%>
<html lang="zh">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
<title>个人中心-个人资料</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<%=path%>/style/css/bootstrap.css" rel='stylesheet' type='text/css' />
<script src="<%=path%>/style/js/bootstrap.js" type="text/javascript"></script>
<script src="<%=path%>/style/js/jquery.min.js" type="text/javascript"></script>
</head>
<body>
	<div style=" background-color:lightgoldenrodyellow; height:800px">
		<div class="container" style="width:80%">
			<form class="form-horizontal" role="form" action="info.action" method="post">
			<br><br><br>
			<div class="form-group">
				<div class="form-group">
					<label for="firstname" class="col-md-2 control-label">账 号 </label>
					<div class="col-md-4">
						<input type="text" class="form-control" name="id" value="${SeeInfo.getId() }" disabled>
					</div>
				</div><br>
				<div class="form-group">
					<label for="focusedinput" class="col-md-2 control-label"> 姓 名 </label>
					<div class="col-md-4">
						<input type="text" class="form-control" name="name" value="${SeeInfo.getName() }" >
					</div>
				</div>
				<div class="form-group">
					<label for="focusedinput" class="col-sm-2 control-label"> 头 像 </label>
					<div class="col-sm-8">
						<img alt="" src="" height="30px" width="30px">
						<input type="file" id="headImage">
					</div>
				</div>
				<div class="form-group">
					<label for="mediuminput" class="col-sm-2 control-label"> 个 性 签 名 </label>
					<div class="col-sm-8">
						<textarea class="form-control" rows="2" name="diytext" ><c:out value="${SeeInfo.getDiyText() }"></c:out></textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="checkbox" class="col-sm-2 control-label"> 性 别 </label>
					<div class="col-sm-8">
						<div class="checkbox-inline1"><label><input type="radio"  name="gender" value="男" > 男 </label></div>
						<div class="checkbox-inline1"><label><input type="radio"  name="gender" value="女"> 女 </label></div>
						<script>
								var $gender = "${SeeInfo.getGender()}";
								if($gender == '男'){
									document.getElementsByName("gender")[0].checked = true;
								}else{
									document.getElementsByName("gender")[1].checked = true;
								}
						</script>
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="col-sm-2 control-label"> 手 机 号 码 </label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="tel" value="${SeeInfo.getTel() }">
					</div>
				</div>
				<div class="form-group">
					<label for="mediuminput" class="col-sm-2 control-label"> 邮 箱 </label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="email" value="${SeeInfo.getEmail() }">
					</div>
				</div><br /><br />
				<input type="hidden" name="command" value="changeInfo">
				<input type="hidden" name="id" value="${SeeInfo.getId() }">
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2">
						<button class="btn-info btn" style="margin-left: 110px;"> 保 &nbsp;&nbsp;存 </button>
						<button class="btn-default btn" style="margin-left: 50px;"> 取 &nbsp;&nbsp;消 </button>
					</div>
				</div>
				
		</form>
		</div>
	</div>
</body>
</html>