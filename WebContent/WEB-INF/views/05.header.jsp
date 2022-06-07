<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="vo.UserVo" %>

<%
    //해더 로그인   
	UserVo authUser = (UserVo)session.getAttribute("authUser");
%>

<h1>el, jstl</h1>
<h2>el</h2>
<h3>자바문법 session</h3>

<div id="header" class="clearfix">
   <h1>
      <a href="/mysite2/main">MySite</a>
   </h1>

   <%if(authUser == null) { //로그인 실패, 로그인 전%>
		 <ul>
			<li><a href="/mysite2/user?action=loginForm" class="btn_s">로그인</a></li>
			<li><a href="/mysite2/user?action=joinForm" class="btn_s">회원가입</a></li>
		</ul> 
	<%}else { //로그인 성공%>
		<ul>
			<li><%=authUser.getName()%> 님 안녕하세요 ﻿คʕ•ﻌ•ʔค</li>
			<li><a href="/mysite2/user?action=logout" class="btn_s">로그아웃</a></li>
			<li><a href="/mysite2/user?action=modifyForm" class="btn_s">회원정보수정</a></li>
		</ul>
	<%}%>
   
</div>

<br><br>

<h3>el session</h3>

<div id="header" class="clearfix">
   <h1>
      <a href="/mysite2/main">MySite</a>
   </h1>

   <c:if test="${ empty authUser }"> <!-- //로그인 실패, 로그인 전 -->
		 <ul>
			<li><a href="/mysite2/user?action=loginForm" class="btn_s">로그인</a></li>
			<li><a href="/mysite2/user?action=joinForm" class="btn_s">회원가입</a></li>
		</ul> 
	</c:if>
	<c:if test="${ authUser != null }"> <!-- //로그인 성공 -->
		<ul>
			<li>${sessionScope.authUser.name} 님 안녕하세요 ﻿คʕ•ﻌ•ʔค</li>
			<li><a href="/mysite2/user?action=logout" class="btn_s">로그아웃</a></li>
			<li><a href="/mysite2/user?action=modifyForm" class="btn_s">회원정보수정</a></li>
		</ul>
	</c:if>
   
</div>









