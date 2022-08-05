<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
</head>
<body>
	<nav>
	<% if(session.getAttribute("sessionId") == null){ %>
		<ul>
			<li><a href="/main.jsp">Home</a></li>
			<li><a href="/board/boardList.jsp">게시판</a></li>
			<li><a href="/memberForm.jsp">회원가입</a></li>
			<li><a href="/loginMember.jsp">로그인</a></li>
			<li><a href="/memberList.jsp">회원목록</a></li>
		</ul>
	<% }else{%>
		<ul>
			<li><a href="/main.jsp">Home</a></li>
			<li><a href="/board/boardList.jsp">게시판</a></li>
			<li><a href="/memberView.jsp">나의 정보</a></li>
			<li><a href="/logout.jsp">(<%=session.getAttribute("sessionId") %> 님)로그아웃</a></li>
			<li><a href="/memberList.jsp">회원목록</a></li>
		</ul>
	<% } %>
	</nav>
</body>
</html>