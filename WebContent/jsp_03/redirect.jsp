<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	request 속성값 : <%=request.getAttribute("req") %> <br>
	session 속성값 : <%=session.getAttribute("reqSess") %>
</body>
</html>