<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	pageContext.setAttribute("page", "pageValue");
	request.setAttribute("request", "requestValue");
	%>
	
	
	
	<jsp:forward page="attributeTest5Result.jsp"></jsp:forward>

</body>
</html>