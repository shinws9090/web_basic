<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attribute Test</title>
</head>
<body>

<h1>영역과 속성 테스트</h1>
<%
String name = (String)application.getAttribute("name");
String id = (String)application.getAttribute("id");

String email = (String)session.getAttribute("email");
String address = (String)session.getAttribute("address");
String tel = (String)session.getAttribute("tel");

%>

<table border ="1">
<tr>
<td colspan="2">application영역에 저장된 정보 </td>
</tr>
<tr>
<td>이름 </td>
<td> <%= name %></td>
</tr>

<tr>
<td>아이디 </td>
<td> <%= id %></td>
</tr>
</table>
<br>
<br>


<table border ="1">
<tr>
<td colspan="2">session영역에 저장된 정보 </td>
</tr>

		<%
			Enumeration e = session.getAttributeNames();
		while (e.hasMoreElements()) {
			
			String a = (String) e.nextElement();
			String b = (String) session.getAttribute(a);
		%>
		<tr>
			<td><%=a %></td>
			<td><%=b %></td>
		</tr>
		<%
			}
		%>

</table>


</body>
</html>