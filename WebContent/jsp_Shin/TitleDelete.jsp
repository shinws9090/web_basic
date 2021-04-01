<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>삭제</h2>
<form action="TitleDelete">
		<fieldset>
			<legend>직책</legend>
			<ul>
				<li>
					<label for="tno">직책번호</label>
					<input type="text" name="tno" size="20" id="tno" autofocus required>
				</li>
				<li>
					<label for="tname">직책이름</label>
					<input type="text" name="tname" size="20" id="tname">
				<li>
					<input type="submit" value="가입"><input type="reset" value="취소"> 
				</li>
			</ul>
		</fieldset>

	</form>
</body>
</html>