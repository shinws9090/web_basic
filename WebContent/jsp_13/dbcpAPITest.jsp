<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Connection con = null;
try{
	Context init = new InitialContext();
	DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/dbstudy");
	con=ds.getConnection();
	out.println("연결됨");
	String sql = "select tno,tname from title";
	
}catch(Exception e){
	out.println("연결안됨");
	e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>흠</title>
</head>
<body>

</body>
</html>