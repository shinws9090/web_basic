<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    String driver="com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/native_jdbc?useSSL=false";
    
    boolean connect= false;
    	Class.forName(driver);
    	
    try(Connection con = DriverManager.getConnection(url,"user_native_jdbc","rootroot")){
    	
    	connect=true;
    	
    }catch(Exception e){
    	connect=false;
    	e.printStackTrace();
    }
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디비 연동</title>
</head>
<body>
<%if(connect){%>
	연결됨
<%}else{ %>
안됨
<%} %>
</body>
</html>