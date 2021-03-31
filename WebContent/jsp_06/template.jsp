<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
String pageFile = request.getParameter("page");
if(pageFile==null){
	pageFile="newitem";
}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{
	margin: auto;
	width: 960px;
	color: gray;
	border: 1px solid gray;
}

</style>

</head>
<body>
<table border="1">
<tr>
<td height="43" colspan = "3" align = "left">
<jsp:include page="top.jsp"></jsp:include>
</td>
</tr>
<tr>
<td   width="15%" align =right valign=top>
<jsp:include page="left.jsp"></jsp:include>
</td>
<td  colspan = "2" align = "center">
<jsp:include page='<%=pageFile+".jsp" %>'></jsp:include>
</td>
</tr>
<tr>
<td colspan = "3" width="100%" height="40">
<jsp:include page="bottom.jsp"></jsp:include>
</td>
</tr>
</table>


</body>
</html>