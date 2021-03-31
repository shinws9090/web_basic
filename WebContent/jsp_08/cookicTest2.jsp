<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String name = "";
	String value = "";
	String cookie = request.getHeader("cookie");
	
	if(cookie!=null){
		Cookie cookies[] = request.getCookies();
		for(int i = 0; i<cookies.length; i++){
			if(cookies[i].getName().equals("name")){
				name=cookies[i].getName();
				value=cookies[i].getValue();	
			}
		}
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키테승트</title>
</head>
<body>
<h2>쿠키이름 : <%=name %></h2>
<h2>쿠키정보 : <%=value %></h2>

</body>
</html>