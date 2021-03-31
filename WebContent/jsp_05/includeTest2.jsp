<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String name = request.getParameter("name");
%>
<html>
<head>
<meta charset="UTF-8">
<title>인클루드 테스트2</title>
</head>
<body>
<b><%=name %></b>

</body>
</html>