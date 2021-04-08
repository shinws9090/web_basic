<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String pagefile = request.getParameter("page");
if (pagefile == null) {
	pagefile = "TitleSelect.jsp";
}
%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>display 속성</title>

<link rel="stylesheet" href="css/Title.css">
</head>
<body>
	<nav>
		<ul>
			<li><a href="Title.jsp?page=TitleSelect1.jsp">직책추가</a></li>
			<li><a href="Title.jsp?page=TitleInset.jsp">직책추가</a></li>
			<li><a href="Title.jsp?page=TitleUpdate.jsp">직책수정</a></li>
			<li><a href="Title.jsp?page=TitleDelete.jsp">직책삭제</a></li>
		</ul>
	</nav>
	<jsp:include page='<%=pagefile%>' />
	

</body>
</html>