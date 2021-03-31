<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String name;
	String id;
	if(session.getAttribute("name")!=null){
		name= (String)session.getAttribute("name");
	}else{
		name= "세션값 없음";
	}
	if(session.getId()!=null){
		id = (String)session.getId();
	}else{
		id="세션 id없음";
	}
	
	Date time = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>

<html>
<head>
<meta charset="UTF-8">
<title>세션테스트</title>
</head>
<body>

<h2>새션 테스트</h2>
<input type="button" onclick="location.href='sessionSet.jsp'" value="새션값 저장">
<input type="button" onclick="location.href='sessionDel.jsp'" value="새션값 삭제">
<input type="button" onclick="location.href='sessionInvalidate.jsp'" value="새션값 초기화">

<h3><%=name %></h3>
<hr>
<fieldset>
	<legend>세션아이디</legend>
<h3>세션id : <%=id %></h3>
<%time.setTime(session.getCreationTime()); %>
<h3>세션 생성시간 : <%=sdf.format(time) %></h3>
<%time.setTime(session.getLastAccessedTime()); %>
<h3>세션  마지막 접근시간 : <%=sdf.format(time)  %></h3>
</fieldset>
</body>
</html>