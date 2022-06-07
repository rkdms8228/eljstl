<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>el, jstl</h1>
	<h2>el</h2>
	<h3>파라미터</h3>
	
	<%
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
	%>
	
	id=<%=id%> <br>
	password=<%=password%> <br>
	name=<%=name%> <br>
	num1=<%=num1%> <br>
	num2=<%=num2%> <br>
	sum = <%=num1 + num2%> <br>
	
	<h3>el parameter 꺼내쓰기</h3>
	
	id=${param.id} <br>
	password=${param.password} <br>
	name=${param.name} <br>
	num1=${param.num1} <br>
	num2=${param.num2} <br>
	sum = ${param.num1 + param.num2} <br>

</body>
</html>