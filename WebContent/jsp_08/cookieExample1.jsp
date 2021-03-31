<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
String lang = "korea";
String cookie = request.getHeader("cookie");

if(cookie!=null){
	Cookie[] cookies = request.getCookies();
	for(int i = 0; i<cookies.length; i++){
		if(cookies[i].getName().equals("language")){
		lang = cookies[i].getValue();
		}
	}
}
%>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 예제</title>
</head>
<body>
<%
if(lang.equals("korea")){
	%><h4>안녕하세요 쿠기 예제 입니다</h4> <%
}else{
	%><h4>Hello. This is Cookie example</h4> <%
}
%>
<form action="cookieExample2.jsp">
<label><input type = "radio" name="language" value="korea">한국어 페이지로 보기</label>
<label><input type = "radio" name="language" value="english">영어 페이지로 보기</label>
<input type="submit" value="설정">
</form>



</body>
</html>