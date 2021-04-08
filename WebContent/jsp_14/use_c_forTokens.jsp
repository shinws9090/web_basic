<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <pre>
		<c:forTokens var="token" items="문자열" delims="구분자">
		</c:forTokens>
	</pre> --%>
	<c:set var="str" value="red, green, blue"/>
	<c:forTokens var="token" items="${str }" delims=",">
		${token }<br>
	</c:forTokens>
	
	<c:forTokens var="token" items="빨강색,주황색.노랑색,초록색.파랑색,보라색" delims=",.">
		${token }<br>
	</c:forTokens>
	
	
</body>
</html>