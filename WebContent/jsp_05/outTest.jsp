<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>1부터 100까지의 합은
<%
int sum=0;
for(int i =0;i<=100;i++){
	sum +=i;
}
%>

<%=sum %>입니다.
</h2>
<h2>1부터 100까지의 합은
<%
sum=0;
for(int i =0;i<=100;i++){
	sum +=i;
}

out.print(sum+"입니다.");
%>
</h2>


</body>
</html>