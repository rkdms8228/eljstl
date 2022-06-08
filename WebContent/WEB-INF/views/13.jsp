<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="java.util.List"%>
<%@ page import="vo.UserVo"%>

<%
	List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>비번</th>
				<th>이메일</th>
			</tr>
		</thead>
		<tbody>
		<%for(UserVo uv : userList) { %>
			<tr>
				<td><%=uv.getNo()%></td>
				<td><%=uv.getName()%></td>
				<td><%=uv.getPassword()%></td>
				<td><%=uv.getEmail()%></td>
			</tr>
		<%}%>
		</tbody>
	</table>
--%>

	<h3>jstl + el</h3>
	
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>비번</th>
				<th>이메일</th>
				<th>index</th>
				<th>count</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${requestScope.userList}" var="uv" varStatus="status">
			<tr>
				<td>${uv.no}</td>
				<td>${uv.name}</td>
				<td>${uv.password}</td>
				<td>${uv.email}</td>
				<td>${status.index}</td>
				<td>${status.count}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>

</body>
</html>