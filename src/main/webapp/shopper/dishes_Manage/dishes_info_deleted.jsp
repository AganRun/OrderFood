<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>下架菜品</title>
<link href="<%=request.getContextPath() %>/shopper/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<script src="<%=request.getContextPath() %>/shopper/js/jquery-1.11.1.min.js"></script>
<script src="<%=request.getContextPath() %>/shopper/js/bootstrap.js"> </script>
</head>
<body>
	<div>
		<div class="container" >
				<div><br><br><br>
					<div class="col-sm-9 form-group">
						<input type="text" placeholder="请输入要查找的菜品" class="form-control">				
					</div>
					<button type="submit" class="btn btn-info"> 搜 索 </button>
				</div>
			<br><br><br>
			<hr>
			<div class="col-sm-12" style="border:1px solid red;border-top:none">
				<c:forEach var="dishInfo" items="${requestScope.seeDishList }" varStatus="stat">
				<div id="${dishInfo.getId() }" >
					<div class="col-sm-2 thumbnail" style="border-left:1px solid red;height:140px;">
						<img  src="<%=request.getContextPath() %>/data/${dishInfo.getImage() }" >
						<a href="dishesInfo.action?command=deleteDishesById&id=${dishInfo.getId()}&shopper_id=${user.getId()}&status=0" ><button class="btn btn-danger" style="position:absolute;bottom:0px">删除</button></a>
						<a href="dishesInfo.action?command=upDishesById&id=${dishInfo.getId() }&shopper_id=${user.getId()}&status=0" ><button class="btn btn-info" style="position:absolute;bottom:0px;margin-left:76px;"> 上架 </button></a>
					</div>
					<div class="col-sm-2" >
						<font>菜品  名  :${dishInfo.getName() }</font><br>
						<font>单 &nbsp;&nbsp;&nbsp;&nbsp;价  :${dishInfo.getPrice() }</font><br>
						<font>评 &nbsp;&nbsp;&nbsp;&nbsp;分  :${dishInfo.getStar() }</font><br>
						<font>一月销量 :${dishInfo.getMonthNum() }</font><br>
						<font>剩余数量 :${dishInfo.getLeftNum() }</font><br>
					</div>
				</div>
				</c:forEach>
			</div>
		 </div>
	</div>
</body>
</html>