<%@page import="java.io.IOException"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어플리케이션 테스트</title>
</head>
<body>
	<h1>어플리케이션 테스트</h1>
	<table>
		<tr>
			<td>JSP버전</td>
			<td><%=application.getMajorVersion()%>.<%=application.getMinorVersion()%>
		</tr>
		<tr>
			<td>컨테이너 정보</td>
			<td><%=application.getServerInfo()%>
		</tr>
		<tr>
			<td>웹 어플리케이션의 실제 파일시스템 경로</td>
			<td><%=application.getRealPath("/")%>
		</tr>
		<tr>
			<td>웹 어플리케이션의 자원경로</td>
			<td><%=application.getResource("/")%>
		</tr>
	</table>
	<hr> 
	<!-- -------------------------------------------------------------------------------------------------- -->
	<table border="1">
		<tr>
			<td>초기 파라미터 이름</td>
			<td>초기 파라미터 값</td>
		</tr>

		<%
			Enumeration<String> e = application.getInitParameterNames();
		while (e.hasMoreElements()) {
			String init_paramName = (String) e.nextElement();
		%>
		<tr>

			<td><%=init_paramName%></td>
			<td><%=application.getInitParameter(init_paramName)%></td>
		</tr>
		<%
			}
		%>
	</table>
	
	<hr>
	<h2>application 기본객체를 사용하여 자원읽기</h2>
	<%
	String resoutcePath = "message/notice/notice.txt";
	%>
	자원의 실제 경로 : <%= application.getRealPath(resoutcePath) %>
	
	<br>
	기지고온 파일 ▼
	<br>
	<%
	try(BufferedReader br = new BufferedReader(new InputStreamReader(application.getResourceAsStream(resoutcePath)))){
		String str=null;
		while((str = br.readLine())!=null){
			out.print(str);
		}
	}catch(IOException e1){
		out.println("예외발생"+ e1.getMessage());
	}
	%>
</body>
</html>