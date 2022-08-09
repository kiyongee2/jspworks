<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome~ </title>
<link rel="stylesheet" href="./resources/css/common.css">
</head>
<body>
	<c:if test="${empty sessionId}">
		<script>
			alert("로그인이 필요합니다.");
			location.href = "../loginMember.jsp";
		</script>
	</c:if>
	<jsp:include page="../menu.jsp" />
	<div id="container">
		<div class="title">
			<h1>글쓰기</h1>
		</div>
		<div>
			<form action="./writeProcess.do" method="post">
			<table class="tbl_write">
				<tr>
					<td><input type="text" name="title" class="w_title"
					           placeholder="글 제목" required="required"></td>
				</tr>
				<tr>
					<td>
						<textarea rows="15" cols="50" name="content"
						    required="required" placeholder="글 내용"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="글쓰기">
						<input type="reset" value="취소">
					</td>
				</tr>
			</table>
		</form>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>