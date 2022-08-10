<%@page import="com.repository.Board"%>
<%@ page import="com.repository.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세 보기</title>
<link rel="stylesheet" href="../resources/css/common.css">
</head>
<jsp:useBean id="boardDAO" class="com.repository.BoardDAO3" scope="application" />
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
			<h1>상세 보기</h1>
		</div>
		<div>
		<form action="./updateBoard.do" method="post">
			<input type="hidden" name="bnum" value="${board.bnum}" >
			<table class="tbl_bo_view">
				<tr>
					<td>제목</td>
					<td><input type="text" name="title" class="bo_v_title"
							value="${board.title}"></td>
				</tr>
				<tr>
					<td>글쓴이</td>
					<td>
						<input type="text" name="memberId" class="bo_v_id"
							value="${board.memberId}" readOnly="readonly">
					</td>
				</tr>
				<tr>
					<td>내용</td>
					<td>
						<textarea rows="15" cols="80" 
						 name="content"><c:out value="${board.content}" /></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
					<c:if test="${sessionId eq board.memberId}">
						<input type="submit" value="수정">
						<a href="./deleteBoard.do?bnum=<c:out value='${board.bnum }' />"
						   onclick="return confirm('정말로 삭제하시겠습니까?')">
							<input type="button" value="삭제"></a>
					</c:if>
						<a href="./boardList.do"><input type="button" value="목록"></a>
					</td>
				</tr>
			</table>
		</form>
		</div>
		
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>