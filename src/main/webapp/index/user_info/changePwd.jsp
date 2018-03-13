<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=path%>/style/css/bootstrap.css" rel='stylesheet' type='text/css' />
<script src="<%=path%>/style/js/bootstrap.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=path%>/style/js/jquery-1.7.2.js"></script>
<script src="<%=path%>/style/js/jquery.validate.js"  type="text/javascript"></script>
<title></title>
</head>
<style type="text/css">
   	input.error { border: 1px solid red; }
   	label.error {
	    font-weight: bold;
	    color: #EA5200;
	}
</style>
<script type="text/javascript">
	$(function(){
		$("#form").validate({
			rules:{
				oldPwd:{
					required:true,
					minlength:6,
					maxlength:15
				},
				newPwd:{
					required:true,
					minlength:6,
					maxlength:15
				},
				repeat:{
					required:true,
					equalTo:"#newPwd"
				}
			},
			messages:{ 
				oldPwd:"密码长度在6~15个字符",
				newPwd:'密码长度在6~15个字符',
				repeat:"请输入相同的字符"
			}
		});
	})
</script>
<body>
	<div style=" background-color:lightgoldenrodyellow; height:800px">
		<div class="container" style="width:80%">
			<form class="form-horizontal" id="form" action="../info.action" method="post">
			<br><br><br>
			<div class="form-group">
				<div class="form-group">
					<label for="firstname" class="col-md-2 control-label">旧 密 码</label>
					<div class="col-md-4">
						<input type="password" class="form-control" id="oldPwd" name="oldPwd">
					</div>
				</div><br>
				<div class="form-group">
					<label for="firstname" class="col-md-2 control-label">新 密 码 </label>
					<div class="col-md-4">
						<input type="password" class="form-control" id="newPwd"  name="newPwd">
					</div>
				</div><br>
				<div class="form-group">
					<label for="firstname" class="col-md-2 control-label">确 认 新 密 码 </label>
					<div class="col-md-4">
						<input type="password" class="form-control" id="repeat"   name="repeat">
					</div>
				</div><br><br>
				<input type="hidden" name="command" value="changePwd">
				<input type="hidden" name="id" value="${sessionScope.user.getId() }">
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2">
						<input class="btn-info btn" type="submit" style="margin-left: 110px;" value=" 保 &nbsp;&nbsp;存 ">
						<button class="btn-default btn" style="margin-left: 50px;"> 取 &nbsp;&nbsp;消 </button>
					</div>
				</div>
			</div>
		</form>
		</div>
	</div>
</body>
</html>