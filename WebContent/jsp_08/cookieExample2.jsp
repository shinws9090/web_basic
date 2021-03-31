<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
	Cookie cookie = new Cookie("language",request.getParameter("language"));
response.addCookie(cookie);

%>
<script type="text/javascript">
location.href="cookieExample1.jsp"
</script>