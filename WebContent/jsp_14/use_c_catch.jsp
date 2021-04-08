<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	name 파라메터 값 = <%=request.getParameter("name") %><br>
	<c:catch var="e" >
	<%if (request.getParameter("name").equals("test")){ %>
		name 파라미터 값은 test <br>
	<%} %>
	</c:catch>
	${e }<br>
	<c:if test="${param.name == null }">
		예외발생<br>
		${e }
	</c:if>
</body>
</html>