<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
<link rel="stylesheet" href="./resources/css/common.css">
</head>
<body>
	<jsp:include page="./menu.jsp" />
	<div id="container">
		<div class="title">
			<h1>회원 정보</h1>
		</div>
		<div class="msg">
		<c:choose>
			<c:when test="${msg eq 'login'}">
				<h2><c:out value="${name}" /> 님 환영합니다.</h2>
			</c:when>
			<c:when test="${msg eq 'register'}">
				<h2>회원 가입을 축하합니다.</h2>
			</c:when>
			<c:when test="${msg eq 'update'}">
				<h2>회원 정보가 수정되었습니다.</h2>
			</c:when>
			<c:when test="${msg eq 'bo_delete'}">
				<h2>게시글이 삭제되었습니다.</h2>
			</c:when>
			<c:when test="${msg eq 'bo_update'}">
				<h2>게시글이 수정되었습니다.</h2>
			</c:when>
		</c:choose>
		</div>
	</div>
	<jsp:include page="./footer.jsp" />
</body>
</html>