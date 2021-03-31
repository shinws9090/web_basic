<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	margin: aoto;
	width: 400px;
	border: 1px solid red;
}
</style>
</head>

<body>
	<form action="reqeustTest.jsp" method="post"></form>
	<table>
		<tr>
			<td><label for="name">이름</label></td>
			<td><input type="text" name="name" id="name"></td>
		</tr>
		<tr>
			<td><label for="gender">성별</label></td>
			<td>남 <input type="radio" name="gender" value="male" id="gender">
				여<input type="radio" name="gender" value="female"></td>
		</tr>
		<tr> 
			
		</tr>

	</table>
</body>
</html>