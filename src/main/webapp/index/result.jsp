<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<div style="margin-left:50px;margin-top:30px">
		<font color="green" size="4px"><c:out value="${requestScope.ChangeYes }" default=""></c:out></font>
		<font color="green" size="4px"><c:out value="${requestScope.changePwdYes }" default=""></c:out></font>
		<font color="red" size="4px"><c:out value="${requestScope.ChangeNo }" default=""></c:out></font>
		<font color="red" size="4px"><c:out value="${requestScope.changePwdError }" default=""></c:out></font>
		<font color="red" size="4px"><c:out value="${requestScope.registerError }" default=""></c:out></font>
	
	</div>
</body>
</html>