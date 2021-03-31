<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포워드 액션 테스트</title>
</head>
<body>
<form action="forwardTest1.jsp"method="post">
<input type="hidden" name="forwardPage" value="forwardTest2.jsp">
<table border="1">
<tr>
<td>이름 </td>
<td><input type="text" name="name"> </td>
</tr>
<tr>
<td>나이 </td>
<td><input type="number" name="age"> </td>
</tr>
<tr>
<td>주소 </td>
<td><input type="text" name="address"> </td>
</tr>
<tr>
<td colspan = "2"><input type="submit" value="전송"> </td>
</tr>
</table>

</form>

</body>
</html>