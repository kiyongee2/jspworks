<%@ page import="com.repository.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
<link rel="stylesheet" href="./resources/css/common.css">
</head>
<jsp:useBean id="memberDAO" class="com.repository.MemberDAO" scope="application" />
<body>
	<jsp:include page="./menu.jsp" />
	<div id="container">
		<div class="title">
			<h1>회원 목록</h1>
		</div>
		<div style="margin-bottom: 20px; text-align: right; margin-right:25%">
			<p><a href="/logout.jsp">[관리자 로그아웃]</a>
		</div>
		<div>
			<table class="tbl_list">
				<thead>
					<tr>
						<th>아이디</th>
						<th>비밀번호</th>
						<th>이름</th>
						<th>성별</th>
						<th>가입일</th>
						<th>삭제</th>
					</tr>
				<thead>
				<tbody>
					<%
						for(int i=0; i<memberDAO.getListAll().size(); i++){
							Member member = memberDAO.getListAll().get(i);
					%>
					<tr>
						<td><%=member.getMemberId() %></td>
						<td><%=member.getPasswd() %></td>
						<td><%=member.getName() %></td>
						<td><%=member.getGender() %></td>
						<td><%=member.getJoinDate() %></td>
						<td>
							<a href="./deleteProcess.jsp?memberId=<%=member.getMemberId() %>"
							   onclick="return confirm('정말로 삭제하시겠습니까?')">
								<button type="button">삭제</button>
							</a>
						</td>
					</tr>
					<% } %>
				</tbody>
			</table>
		
		</div>
		
		
	
	</div>
	<jsp:include page="./footer.jsp" />
</body>
</html>