<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"> </script>
</head>
<body>
	<div>
		<div class="container" >
				<div><br><br><br>
					<div class="col-sm-9 form-group">
						<input type="text" placeholder="请输入要查找的菜品" class="form-control">				
					</div>
					<button type="submit" class="btn btn-info"> 搜 索 </button>
					<a href="<%=request.getContextPath() %>/shopper/dishes_Manage/dishes_info_add.jsp" target="_blank"><button class="btn btn-default">增 加</button></a> &nbsp;&nbsp;&nbsp;&nbsp;
				</div>
			<br><br><br>
			<hr>
			<div class="col-sm-12" style="border:1px solid red;border-top:none">
				<c:forEach var="dishInfo" items="${requestScope.seeDishList }" varStatus="stat">
					<div id="${dishInfo.getId() }" class="col-sm-4">
						<div class="col-sm-6 thumbnail" style="border-left:1px solid red;height:140px;">
							<img  src="<%=request.getContextPath() %>/data/${dishInfo.getImage() }" >
							<a href="dishesInfo.action?command=seeDishesByInfo&id=${dishInfo.getId() }" target="_blank"><button class="btn btn-info" style="position:absolute;bottom:0px">详情</button></a>
							<a href="dishesInfo.action?command=downDishesById&id=${dishInfo.getId() }&status=1&shopper_id=${user.getId()}"><button class="btn btn-danger" style="position:absolute;bottom:0px;margin-left:76px;">下架</button></a>
						</div>
						<div class="col-sm-6">
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