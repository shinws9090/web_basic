<%@page import="web_basic.jsp_13.erp.Title"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    List<Title> list = (List<Title>)request.getAttribute("list");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타이틀 흠</title>
</head>
<body>
<%

if(list.size()>0){
	for(Title t :list){
		%> 번호 : <%=t.getTno()%>, 이름 : <%=t.getTname()%><br><%  
	}
}
%>

</body>
</html>