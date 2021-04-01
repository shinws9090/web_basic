<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="partUploadPro2"method="post" enctype="multipart/form-data">
<label>작성자 :</label> <input type="text" name="writer"> <br>
<label>파일1 :</label> <input type="file" name="partFile1"> <br>
<label>파일2 :</label> <input type="file" name="partFile2"> <br>
<input type="submit" value="전송"/>
</form>

</body>
</html>