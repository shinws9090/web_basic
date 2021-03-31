<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="std" class="web_basic.jsp_07.Student" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="std" />
<html>
<head>
<meta charset="UTF-8">
<title>bean test</title>
</head>
<body>
	<b>번호: </b><%=std.getStdNo() %><br>
	<b>이름: </b><%=std.getStdName() %><br>
	<b>국어: </b><%=std.getKor() %><br>
	<b>영어: </b><%=std.getEng() %><br>
	<b>수학: </b><%=std.getMath() %><br>
	<b>총점: </b><%=std.getTotal() %><br>
	<b>평균: </b><%=std.getAvg() %><br>
	<hr>
	<b>번호: </b><jsp:getProperty property="stdNo" name="std"/><br>
	<b>이름: </b><jsp:getProperty property="stdName" name="std"/><br>
	<b>국어: </b><jsp:getProperty property="kor" name="std"/><br>
	<b>영어: </b><jsp:getProperty property="eng" name="std"/><br>
	<b>수학: </b><jsp:getProperty property="math" name="std"/><br>
	<b>총점: </b><jsp:getProperty property="total" name="std"/><br>
	<b>평균: </b><jsp:getProperty property="avg" name="std"/><br>


</body>
</html>