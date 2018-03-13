<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<title>地址管理</title>
</head>
<body>
		<div style=" background-color:lightgoldenrodyellow; height:800px">
			<div class="container" style="width:90%">
				<br><br><br>
				<table class="table table-striped">
				<thead>
					<tr>
						<th>地址</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="add" items="${requestScope.ADD }" varStatus="stat">
					<tr class="active">
						<th scope="row"><c:out value="${add.getAddress() }" default=""></c:out></th>
						<td>
							<button class="btn btn-default">详情</button>
							<button class="btn btn-info">修改</button>
							<a href="info.action?del_id=${add.getId() }&id=${add.getUser_id() }&command=delAddress"><button class="btn btn-danger">删除</button></a>
						</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			
			
			<br><br><br>
			<form action="info.action" method="post">
				<div class="form-group">
					<label for="firstname" class="col-md-2 control-label">增加新地址 </label>
					<div class="col-md-4">
						<input type="text" class="form-control" id="newAdd"  name="newAdd">
					</div>
				</div>
				<input type="hidden" name="command" value="addAddress">
				<input type="hidden" name="id" value="${requestScope.ADD.get(0).getUser_id() }">
				<input type="submit" style="width:95%; margin-left:15px;" class="form-control btn btn-info" value="增加">
			</form>
			</div>
		</div>
</body>
</html>