<%@ page import="web_basic.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="con" value="${JndiDS.getConnection()}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터베이스 연동 테스트</title>

<link rel="stylesheet" href="css/index.css">
</head>
<body>
	<c:out value="${con }"></c:out>
	<br>
	<fieldset>
		<legend>ERP</legend>
		<ul>
			<li><a href="Title.jsp?page=TitleInset.jsp">직책관리</a></li>
			<li><a href="Title.jsp?page=TitleUpdate.jsp">부서관리</a></li>
			<li><a href="Title.jsp?page=TitleDelete.jsp">사원갈리</a></li>
		</ul>
	</fieldset>
</body>
</html>