<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style type="text/css">
h1 {
	text-align: center; /* 페이지 가운데로 오기 */
}

#loginFromArea {
	text-align: center;
	width: 250px;
	margin: auto;
	border: 1px solid red;
}
</style>
</head>
<body>
	<h1>로그인</h1>
	<section id="loginFromArea">
	  	<!-- http://localhost:8080/web_basic/jsp_03/login?id=?&passwd=? -->
		<form action="login" method="get">
			<label id="id">아이디 : </label> 
			<input type="text" name="id" id="id">
			<br> 
			<label id="passwd">비밀번호 : </label> 
			<input type="password" name="passwd" id="passwd"> 
			<br>
			<br>
			<input type="submit" value="로그인">
		</form>
	</section>
</body>
</html>