<%@ page import="java.time.LocalDateTime" %>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello~</title>
</head>
<body>
	<h2>안녕~ JSP!!</h2>
	<hr>
	<!-- html 주석 -->
	<%-- Jsp 주석 : <%= %> Expression(표현문) 태그라 --%>
	<p>현재 날짜와 시간은 <%=LocalDateTime.now() %>
</body>
</html>