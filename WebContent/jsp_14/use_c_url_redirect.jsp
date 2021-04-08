<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>url tag</title>
</head>
<body>
	<h4>url을 생성해주는 테그</h4>
	<!-- https://www.daum.net/search?w=blog&q=공원 -->
	<c:url value="https://search.daum.net/search" var="searchUrl">
		<c:param name="w" value="blog"/>
		<c:param name="q" value="공원"/>
	</c:url>
	${searchUrl}<br>
	<c:url value="/use_c_url.jsp"/><br>	<!-- 절대경로 -->
	<c:url value="./use_c_url.jsp"/><br> <!-- 상대경로 -->
	
	<c:redirect url="${searchUrl}"/>
</body>
</html>