<%@page import="javax.swing.JFrame"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<%@ page import="java.util.Calendar"%>

<%
	Calendar c = Calendar.getInstance();
int h = c.get(Calendar.HOUR_OF_DAY);
int m = c.get(Calendar.MINUTE);
int s = c.get(Calendar.SECOND);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>JSP 파일</title>
</head>
<body>
	현재 시각은
	<%=h%>시
	<%=m%>분
	<%=s%>초 입니다.
</body>
</html>