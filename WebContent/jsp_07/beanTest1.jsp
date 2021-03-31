<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="std" class="web_basic.jsp_07.Student" scope="page"/>
<jsp:setProperty property="stdNo" name="std" value="100"/>
<jsp:setProperty property="stdName" name="std" value="우이잉"/>
<jsp:setProperty property="kor" name="std" value="150"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>bean테스트</h1>
	<%=std.getStdName() %>
	<%=std.getStdNo() %>
	<%=std.getKor() %>

</body>
</html>