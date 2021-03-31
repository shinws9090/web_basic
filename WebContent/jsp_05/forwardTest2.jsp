<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1">
<tr>
<td>이름 </td>
<td><%=request.getParameter("name") %> </td>
</tr>
<tr>
<td>나이 </td>
<td><%=request.getParameter("age") %> </td>
</tr>
<tr>
<td>주소 </td>
<td><%=request.getParameter("address") %> </td>
</tr>
<tr>
<td>번호 </td>
<td><%=request.getParameter("tel") %> </td>
</tr>

</table>

</body>
</html>