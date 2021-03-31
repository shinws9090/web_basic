<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
<style type="text/css">

</style>
</head>
<body>
<form action="FileUploadServlet" method="post" enctype="multipart/form-data">
<table>
<tr>
<td colspan ="2"> 파일 업로드 폼</td>
</tr>
<tr>
<td><label>올린사람 : </label></td>
<td> <input type="text" name="name"> </td>
</tr>
<tr>
<td><label>제목 : </label></td>
<td> <input type="text" name="subject"> </td>
</tr>
<tr>
<td><label>파일명1 : </label></td>
<td> <input type="file" name="filename1"> </td>
</tr>
<tr>
<td><label>파일명2 : </label></td>
<td> <input type="file" name="filename2"> </td>
</tr>
<tr>
<td colspan ="2"> <input type="submit" value="전송"></td>
</tr>
</table>
</form>
</body>
</html>