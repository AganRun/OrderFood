<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	String path = request.getContextPath();
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增加菜品信息</title>
<link href="<%=path %>/shopper/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<script src="<%=path %>/shopper/js/jquery-1.11.1.min.js"></script>
<script src="<%=path %>/shopper/js/bootstrap.js"> </script>
</head>
<body>
<div >
	<form id="form" class="form-horizontal" enctype="multipart/form-data"  role="form" action="<%=path %>/shopper/dishesInfo.action" method="post">
		<div class="container" style="background-color:pink; height:1300px">
			<br><br>
			<div class="form-group col-sm-12" >
				<div class="col-sm-1"></div>
				<div class="col-sm-4" style="height:230px;width:370px">
					<img src="<%=path %>/data/DemoImage.jpg" height="220px" width="360px">	
					<input type="file" name="image" value="选择图片">
				</div>
				
				<div class="col-sm-7">
					<label for="inputEmail3" class="col-sm-3 control-label">月销量</label>
					<div class="col-sm-7">
						<input type="text" class="form-control"  readonly = "readonly"  name="monthNum">
					</div>
				</div><br><br><br>
				
				<div class="col-sm-7">
					<label for="inputEmail3" class="col-sm-3 control-label">评分</label>
					<div class="col-sm-7">
						<input type="text" class="form-control"    readonly = "readonly"  name="star">
					</div>
				</div><br><br><br>
				
				<div class="col-sm-7">
					<label for="inputEmail3" class="col-sm-3 control-label">评价量</label>
					<div class="col-sm-7">
						<input type="text" class="form-control"    readonly = "readonly"  name="messageNum">
					</div>
				</div><br><br><br>
				
				<div class="col-sm-7">
					<label for="inputEmail3" class="col-sm-3 control-label">剩余数量</label>
					<div class="col-sm-7">
						<input type="text" class="form-control"   name="leftNum">
					</div>
				</div><br><br><br>
			</div>
			<div class="col-sm-12 form-group" style="background-color:1px blue solid">
				
				<label for="inputEmail3" class="col-sm-2 control-label">菜品编号</label>
				<div class="col-sm-9">
					<input type="text" class="form-control"  readonly = "readonly"   name="id">
				</div><br><br><br>
				
				<label for="inputEmail3" class="col-sm-2 control-label">菜品名称</label>
				<div class="col-sm-9">
					<input type="text" class="form-control"  name="name">
				</div><br><br><br>
				
				<label for="inputEmail3" class="col-sm-2 control-label">菜品简介</label>
				<div class="col-sm-9">
					<input type="text" class="form-control"  name="Diytext">
				</div><br><br><br>
				
				<label for="inputEmail3" class="col-sm-2 control-label">菜品单价</label>
				<div class="col-sm-9">
					<input type="text" class="form-control"  name="price">
				</div><br><br><br>
				
				<label for="inputEmail3" class="col-sm-2 control-label">菜品种类</label>
				<div class="col-sm-9">
					<input type="text" class="form-control"  name="kind">
				</div><br><br><br>
				<!--<label for="inputEmail3" class="col-sm-2 control-label">菜品种类</label>&nbsp;&nbsp;&nbsp;
				<div class="col-sm-2"><input id="addKind" type="text" class="form-control"></div>
				<button id="delete" class="btn btn-default" type="button">增加</button>&nbsp;&nbsp;&nbsp;
				<script type="text/javascript">
					$(function(){
						//增加菜品种类
						$("#delete").click(function(){
							var kind = $("#addKind").val();
							$("#addKind").val("");
							$("#delete").after("<label>&nbsp;&nbsp;&nbsp;<label name='kind'><font size='4px'>"+kind+"</font></label>"+
									"<a class='delA'><font color='red' size='4px'>&Chi;</font></a>&nbsp;&nbsp;&nbsp;</label>");
							$("delete ~label:first").val("dd");
							$(".delA").click(function(){
								var par = $(this).parent();
								par.remove();
							});
						});
						//删除菜品种类
						$(".delA").click(function(){
							var par = $(this).parent();
							par.remove();
						});
						
					});
				</script> -->
			</div>
			<div style="height:600px;"></div>
			<div>
				<input type="hidden" name="command" value="addDishesInfo">
				<input type="hidden" name="shopper_id" value="${sessionScope.user.getId() }">
				<input type="submit" style="margin-left:300px" class="btn btn-info" value="确 定">
				<input type="reset" style="margin-left:300px" class="btn btn-default" value="取 消">
			</div>
		</div>
	</form>
</div>
			<!-- 下面留言 -->
</body>
</html>