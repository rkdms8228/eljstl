<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="vo.UserVo" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>el, jstl</h1>
	<h2>el</h2>
	<h3>자바문법 request.attribute</h3>
	
	<%
		UserVo userVo = (UserVo)request.getAttribute("userVo");
	
		int num = (int)request.getAttribute("num");
		String str = (String)request.getAttribute("str");
	%>
	
	no = <%=userVo.getNo() %> <br>
	name = <%=userVo.getName() %> <br>
	email = <%=userVo.getEmail() %> <br>
	password = <%=userVo.getPassword() %> <br>
	gender = <%=userVo.getGender() %> <br>
	
	<br><br>
	
	num=<%=num %> <br>
	str=<%=str %> <br>
	
	<br><br>
	
	<h3>el</h3>
	
	no = ${requestScope.userVo.no} <br> <!-- no => getNo() -->
	name = ${requestScope.userVo.name} <br>
	email = ${requestScope.userVo.email} <br>
	password = ${requestScope.userVo.password} <br>
	gender = ${requestScope.userVo.gender} <br>
	
	<br><br>
	
	num = ${requestScope.num} <br>
	str = ${requestScope.str} <br>
	
	<br><br>
	
	no = ${userVo.no} <br> <!-- no => getNo() -->
	name = ${userVo.name} <br>
	email = ${userVo.email} <br>
	password = ${userVo.password} <br>
	gender = ${userVo.gender} <br>
	
	<br><br>
	
	num = ${num} <br>
	str = ${str} <br>
	
	<br><br>


</body>
</html>