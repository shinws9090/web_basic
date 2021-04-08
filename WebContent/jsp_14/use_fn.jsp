<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fn tag</title>
</head>
<body>
	<c:set var="str1" value="Functions <태그>를 사용합니다."/>
	<c:set var="str2" value="사용"/>
	<c:set var="tokens" value="1,2,3,4,5,6,7,8,9,10"/>
	
	length(str1) = ${fn:length(str1) }<br>
	toUpperCaes(str1) = ${fn:toUpperCase(str1) }<br>
	toLowerCase(str1) = ${fn:toLowerCase(str1) }<br>
	substring(str1) = ${fn:substring(str1,3,6) }<br>
	trim(str1) = ${fn:trim(str1) } - ${fn:length(fn:trim(str1)) }<br>
	replace(str1, src, dest) = ${fn:replace(str1, " ", "-") }<br>
	indexOf(str1, str2) = ${fn:indexOf(str1,str2) }<br>
	<hr>
	startsWith(str1, str2) = ${fn:startsWith(str1,'Fun') }<br>
	endsWith(str1, str2) = ${fn:endsWith(str1,'합니다.') }<br>
	contains(str1, str2) = ${fn:contains(str1,str2) }<br>
	containsIgnoreCase(str1, str2) = ${fn:containsIgnoreCase(str1,'function') }<br>
	
</body>
</html>