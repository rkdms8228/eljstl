<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="vo.UserVo" %>

<%
	pageContext.setAttribute("name", "page name");
	request.setAttribute("name", "request name");
	session.setAttribute("name", "session name");
	application.setAttribute("name", "application name");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>el, jstl</h1>
<h2>el</h2>
<h3>자바문법</h3>
   
	page name = <%=pageContext.getAttribute("name") %> <br>
	request name = <%=request.getAttribute("name") %> <br>
	session name = <%=session.getAttribute("name") %> <br>
	application name = <%=application.getAttribute("name") %> <br>

<br><br>

<h3>el</h3>

	page name = ${ pageScope.name } <br>
	request name = ${ requestScope.name } <br>
	session name = ${ sessionScope.name } <br>
	application name = ${ applicationScope.name } <br>
	
	<br><br>
	
	부적절한 생략 예시 <br>
	page name = ${ name } <br>
	request name = ${ name } <br>
	session name = ${ name } <br>
	application name = ${ name } <br>
	<br>
	[name만 쓰게 되면 제일 처음 필터링을 거치는 page에서의 name값을 가져온다. 해서 구체적으로 스코프를 써 주는 것이 좋다.]
	<br>

</body>
</html>
