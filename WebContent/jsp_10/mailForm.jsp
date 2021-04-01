<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메일 보네기</title>
<style type="text/css">
table{
	width: 450px;
	margin: auto;
}
h1{
	text-align: center;
}
td{
	border: 1px dotted gray;
}
</style>

</head>
<body>
	<form action="mailsend" method="post">
		<h1>자바 메일 보네기</h1>
		<table>
			<tr>
				<td>보네는 사람 메일 :</td>
				<td><input type="text" name="sender"></td>
			</tr>
			<tr>
				<td>받는 사람 메일 :</td>
				<td><input type="text" name="receiver"></td>
			</tr>
			<tr>
				<td>제목 :</td>
				<td><input type="text" name="subject"></td>
			</tr>
			<tr>
				<td>내용 :</td>
				<td><textarea name="content" cols="40" rows="20"> </textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="전송"></td>
			</tr>

		</table>

	</form>

</body>
</html>