<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="beanTest2.jsp" method="get">
<label for ="stdNo">번호 :</label> <input type="text" name="stdNo" id="stdNo"/> <br>
<label for ="stdName">이름 :</label> <input type="text" name="stdName" id="stdName"/> <br>
<label for ="kor">국어 :</label> <input type="text" name="kor" id="kor"/> <br>
<label for ="eng">영어 :</label> <input type="text" name="eng" id="eng"/> <br>
<label for ="math">수학 :</label> <input type="text" name="math" id="math"/> <br>
<input type="submit" value="전송">
</form>

</body>
</html>