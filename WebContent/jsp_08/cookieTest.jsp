<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	Cookie cookie = new Cookie("name", "hohgkildong");
	cookie.setMaxAge(600);
	response.addCookie(cookie);
%>
<html>
<head>
<meta charset="UTF-8">
<title>cookie테스트</title>
</head>
<body>
<h2><%=cookie.getName() %></h2>
<h2><%=cookie.getValue() %></h2>
<h2><%=cookie.getMaxAge() %></h2>
<a href="cookicTest2.jsp">쿠키값 불러오기</a>

</body>
</html>