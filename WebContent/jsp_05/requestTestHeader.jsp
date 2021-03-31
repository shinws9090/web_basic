<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더정보</title>
<style type="text/css">
h1 {
	text-align: center;
}

table {
	margin: auto;
	width: 600px;
	border: 1px solid red;
}

td, th {
	border: 1px solid #ccc;
	
}


</style>
</head>
<body>
	<h1>헤더정보 예제</h1>
	<table>
		<tr>
			<th >헤더이름</th>
			<td>헤더 값</td>
		</tr>
		<%
			Enumeration<String> e = request.getHeaderNames();
		while (e.hasMoreElements()) {
			String headerName = e.nextElement();
		%>
		<tr>
			<td ><%=headerName%></td>
			<td><%=request.getHeader(headerName)%></td>
		</tr>
		<%
			}
		%>

	</table>
	<hr>

	<h1>쿠키, url/uri, 요청방식에 관련된 예제</h1>
	<table>
		<tr>
			<td>쿠키정보</td>

			<%
				Cookie[] cookie = request.getCookies();
			if (cookie == null) {
			%>
			<td>쿠키가 없다</td>
			<%
				} else {
			for (int i = 0; i < cookie.length; i++) {
			%>
				<td><%=cookie[i].getName() %>(<%=cookie[i].getValue() %>)&nbsp;&nbsp;
			<%
				}
			}
			%>
		</tr>
		<tr>
		<td>서버도메인명 </td>	
		<td><%=request.getServerName() %> </td>	
		</tr>
		<tr>
		<td>서버포트번호 </td>	
		<td><%=request.getServerPort() %> </td>	
		</tr>
		<tr>
		<td>요청 URL </td>	
		<td><%=request.getRequestURL() %> </td>	
		</tr>
		<tr>
		<td>요청 URI </td>	
		<td><%=request.getRequestURI() %> </td>	
		</tr>
		<tr>
		<td>요청 쿼리 </td>	
		<td><%=request.getQueryString() %> </td>	
		</tr>
		<tr>
		<td>클라이언트 호스트명 </td>	
		<td><%=request.getRemoteHost() %> </td>	
		</tr>
		<tr>
		<td>클라이언트 IP주소 </td>	
		<td><%=request.getRemoteAddr() %> </td>	
		</tr>
		<tr>
		<td>프로토콜 </td>	
		<td><%=request.getProtocol() %> </td>	
		</tr>
		<tr>
		<td>요청방식 </td>	
		<td><%=request.getMethod() %> </td>	
		</tr>
		<tr>
		<td>컨텍스트 경로 </td>	
		<td><%=request.getContextPath() %> </td>	
		</tr>
	</table>
</body>
</html>