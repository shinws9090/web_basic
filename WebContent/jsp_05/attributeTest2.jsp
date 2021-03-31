<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	String tel = request.getParameter("tel");
	session.setAttribute("email", email);
	session.setAttribute("address", address);
	session.setAttribute("tel", tel);
	
	session.getAttribute("email");
	
	
%>
	<a href="attributeTest3.jsp">확인하러가기</a>
	
<%-- 	이메일 : <%=session.getAttribute("email") %><br>
	주소 : <%=session.getAttribute("address") %><br>
	번호 : <%=session.getAttribute("tel") %><br> --%>

</body>
</html>