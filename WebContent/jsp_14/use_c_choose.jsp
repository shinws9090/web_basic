
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${param.name eq 'ksk'}">
			김상건입니다.
		</c:when>
		<c:when test="${param.name eq 'lny'}">
			이나연입니다.
		</c:when>
		<c:otherwise>
			이태훈입니다.
		</c:otherwise>
	</c:choose>

</body>
</html>

