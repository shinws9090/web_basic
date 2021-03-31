<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext Test</title>
</head>
<body>
<%
	pageContext.include("pageContextTest3.jsp");
%>
<h2>pageContext의 forward 메소드로 포워딩된 페이지 입니다.</h2>


<hr>
<%
	HttpServletRequest httpRequest = (HttpServletRequest)pageContext.getRequest();
%>
	request와 pageContext.getRequest()의 동일여부<br>
<%= request == httpRequest %>
<hr>
<%pageContext.getOut().println("pageContext.getOut()으로 출력된것"); %>

</body>
</html>