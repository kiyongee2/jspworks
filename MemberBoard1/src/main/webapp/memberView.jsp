<%@ page import="com.repository.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 정보</title>
<link rel="stylesheet" href="./resources/css/common.css">
</head>
<jsp:useBean id="memberDAO" class="com.repository.MemberDAO" scope="application" />
<body>
	<jsp:include page="./menu.jsp" />
	<div id="container">
		<div class="title">
			<h1>나의 정보</h1>
		</div>
		<div>
		<form action="./updateMember.jsp" method="post">
			<table class="tbl">
			<%
				String memberId = null;
				if(session.getAttribute("sessionId") != null){
					memberId = (String)session.getAttribute("sessionId");
					Member member = memberDAO.getMember(memberId);
			%>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="memberId" value="<%=member.getMemberId() %>"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="passwd" value="<%=member.getPasswd() %>"></td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td><input type="password" name="passwd_confirm" value="<%=member.getPasswd() %>"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value="<%=member.getName() %>"></td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
					<% if(member.getGender().equals("남")){ %>
						<input type="radio" name="gender" value="남" checked>남 
						<input type="radio" name="gender" value="여" >여 
					<% }else{ %>
						<input type="radio" name="gender" value="남">남 
						<input type="radio" name="gender" value="여" checked>여 
					<% } %>
					</td>
				</tr>
				<tr>
					<td>가입일</td>
					<td><input type="text" name="joinDate" value="<%=member.getJoinDate() %>"></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="수정">
						<input type="reset" value="취소">
					</td>
				</tr>
				<%
				  }else{ //로그인이 안된 상태 페이지 이동
					  response.sendRedirect("./loginMember.jsp");
				  }
				%>
			</table>
		</form>
		</div>
	</div>
	<jsp:include page="./footer.jsp" />
</body>
</html>