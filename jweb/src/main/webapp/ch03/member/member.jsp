<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean 태그 사용</title>
</head>
<body>
	<!-- id가 객체(인스턴스)와 같음  -->
	<jsp:useBean id="member" class="bean.MemberBean" />
	<%-- <jsp:setProperty property="id" name="member"/>
	<jsp:setProperty property="name" name="member"/> 생략 가능--%>
	
	
	<p>아이디 : <jsp:getProperty property="id" name="member"/>
	<p>이 름 : <jsp:getProperty property="name" name="member"/>
</body>
</html>