<%@ page import="com.dao.AddrBook"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 상세 보기</title>
<link rel="stylesheet" href="./resources/css/addrbook.css">
</head>
<jsp:useBean id="abDAO" class="com.dao.AddrBookDAO" scope="application" />
<body>
	<div id="container">
		<h2>상세 보기</h2>
		<hr>
		<table id="tbl_view">
		<%
			int num = Integer.parseInt(request.getParameter("num"));  
		
			if(session.getAttribute("sessionId") != null){
				AddrBook addrBook = abDAO.getOne(num);
		%>
			<tr>
				<td>번호</td>
				<td><input type="text" name="num" value=<%=addrBook.getNum() %> readonly></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value=<%=addrBook.getUsername() %> readonly></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="tel" value=<%=addrBook.getTel() %> readonly></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" value=<%=addrBook.getEmail() %> readonly></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
				<% if(addrBook.getGender().equals("남")){ %>
					<input type="radio" name="gender" value="남" checked>남
					<input type="radio" name="gender" value="여">여
				<% }else{ %>
					<input type="radio" name="gender" value="남">남
					<input type="radio" name="gender" value="여" checked>여
				<% } %>
				</td>
			</tr>
			<tr>
				<td>가입일</td>
				<td><input type="text" name="joinDate" value=<%=addrBook.getJoinDate() %> readonly></td>
			</tr>
			<tr>
				<td colspan="2">
				<% if(session.getAttribute("sessionId").equals(addrBook.getEmail())){ %>
					<a href="./addrUpdate.jsp?num=<%=addrBook.getNum() %>">
				 		<button type="button">수정</button>
			    	</a>
					<a href="./addrDelete.jsp?num=<%=addrBook.getNum() %>"
					   onclick="return confirm('정말로 삭제하시겠습니까?')">
				 		<button type="button">삭제</button>
			    	</a>
			    <% } %>
					<a href="./addrList.jsp">
					 <button type="button">목록</button>
				    </a>
				 </td>
			</tr>
		<%
			}else{
				response.sendRedirect("./loginForm.jsp");
			}
		%>
		</table>
	</div>
</body>
</html>