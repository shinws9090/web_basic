<%@page import="web_basic.jsp_13.erp.Title"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타이틀 흠</title>
</head>
<body>

	<%
		request.getRequestDispatcher("TitleServlet").include(request, response);
	%>

</body>
</html>