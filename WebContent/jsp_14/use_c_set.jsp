<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="web_basic.jsp_13.erp.Title"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%Title t = new Title();%>
    <!-- t.settNO(1), t.setName() -->
<c:set target="<%=t%>" property="tno" value="1"/>
<c:set target="<%=t%>" property="tname" value="사장"/>
<c:set var="tt" value="<%=t %>"/>
<%=t.getTno() %><br>
<c:out value="${tt}"/><br>
<%=t.getTname() %>
<hr>
<c:set var="m" value="<%=t %>"/>
직책번호 : ${m.tno}<br>
직책 명 : ${m.tname}
<hr>
<c:set target="${m}" property="tno" value="2"/>
<c:set target="${m}" property="tname" value="부장"/>
직책번호 : ${m.tno}<br>
직책 명 : ${m.tname}

<hr>
<%Map<String ,String> prop =new HashMap<>();%>
<!-- prop.put(키,밸류) -->
<c:set target="<%=prop %>" property="color" value="김상건"/>
<%=prop.get("color") %>
<c:set var="pro" value="<%=prop %>"/>
${pro.color }

<hr>
 <%Title t2 = new Title();%>
<c:set var="name" value="영남인제교육원"/> <!--String name = "영남인제교육원";  -->
학교이름 : ${name }<br>

<c:set var="title" value="<%=t2 %>"/> <!-- Title title = t2; -->
<c:set target="${title}" property="tname" value="과장"/> <!--  -->
직책명 : ${title.tname }

<hr>
<%
Title test = new Title();
test.setTno(4);
test.setTname("대리");
%>
직책 번호 : <%=test.getTno() %><br>
직책 명 : <%=test.getTname() %><br>
<hr>
<%
Title test2 = new Title();
%>
<c:set var="mm" value="<%=test2 %>"/>
<c:set target="${mm}" property="tno" value="5"/>
<c:set target="${mm}" property="tname" value="사원"/>
직책번호 : ${mm.tno}<br>
직책 명 : ${mm.tname}
<hr>
변수삭제<br>

<c:remove var="mm"/>
<c:out value="${mm}"/>흠<br>

