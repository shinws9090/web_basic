<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%session.setAttribute("id",request.getParameter("id")); %>
    <%session.setAttribute("passwd",request.getParameter("passwd")); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>로그인 되었습니다.</h3>
<h3>로그인 id : <%=session.getAttribute("id") %></h3>
<a href="sessionLogout.jsp">로그아웃하기</a>
</body>
</html>