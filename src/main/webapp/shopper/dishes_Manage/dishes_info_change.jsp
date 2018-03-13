<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜品信息修改</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"> </script>
</head>
<body>
<div >
		<div class="container" style="background-color:pink; min-height:1200px">
	<form class="form-horizontal" role="form" action="dishesInfo.action" method="post">
			<br><br>
			<div class="form-group col-sm-12" >
				<div class="col-sm-1"></div>
				<div class="col-sm-3" style="height:220px;width:300px;">
					<img src="<%=request.getContextPath() %>/data/${dishInfo.getImage() }" height="220px" width="240px">					
				</div>
				
				<div class="col-sm-7">
					<label for="inputEmail3" class="col-sm-3 control-label">月销量</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" value="${requestScope.dishInfo.getMonthNum() }"   readonly = "readonly"  name="monthNum">
					</div>
				</div><br><br><br>
				
				<div class="col-sm-7">
					<label for="inputEmail3" class="col-sm-3 control-label">评分</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" value="${dishInfo.getStar() }"   readonly = "readonly"  name="star">
					</div>
				</div><br><br><br>
				
				<div class="col-sm-7">
					<label for="inputEmail3" class="col-sm-3 control-label">评价量</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" value="${dishInfo.getMessageNum() }"   readonly = "readonly"  name="messageNum">
					</div>
				</div><br><br><br>
				
				<div class="col-sm-7">
					<label for="inputEmail3" class="col-sm-3 control-label">剩余数量</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" value="${dishInfo.getLeftNum() }"  name="leftNum">
					</div>
				</div><br><br><br>
			</div>
			<div class="col-sm-12 form-group" style="background-color:1px blue solid">
				
				<label for="inputEmail3" class="col-sm-2 control-label">菜品编号</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" value="${dishInfo.getId() }"  readonly = "readonly"   name="id">
				</div><br><br><br>
				
				<label for="inputEmail3" class="col-sm-2 control-label">菜品名称</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" value="${dishInfo.getName() }"   name="name">
				</div><br><br><br>
				
				<label for="inputEmail3" class="col-sm-2 control-label">菜品简介</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" value="${dishInfo.getDiytext() }"   name="Diytext">
				</div><br><br><br>
				
				<label for="inputEmail3" class="col-sm-2 control-label">菜品单价</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" value="${dishInfo.getPrice() }"   name="price">
				</div><br><br><br>
				
				<label for="inputEmail3" class="col-sm-2 control-label">菜品种类</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" value="${dishInfo.getKind() }"   name="kind">
				</div><br><br><br>
			
			</div>
			<div style="height:600px;"></div>
			<div>
				<input type="hidden" name="command" value="changeDishesInfo">
				<input type="submit" style="margin-left:300px" class="btn btn-info" value="确 定">
				<input type="reset" style="margin-left:300px" class="btn btn-default" value="取 消">
			</div>
	</form>
</div>
			<!-- 下面留言 -->
</body>
</html>