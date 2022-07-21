<%@ page import="com.dao.AddrBook"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 상세 보기</title>
<link rel="stylesheet" href="../resources/css/addrbook.css">
</head>
<jsp:useBean id="abDAO" class="com.dao.AddrBookDAO" scope="application" />
<%
	String uname = request.getParameter("username"); //username 속성 값 가져오기
    AddrBook addrBook = abDAO.getAbByUserName(uname); //dao에서 getAbByUserName() 호출함
%>
<body>
	<div id="container">
		<h2>상세 보기</h2>
		<hr>
		<table id="tbl_view">
			<tr>
				<td>이름</td><td><%=addrBook.getUsername() %>
			</tr>
			<tr>
				<td>전화번호</td><td><%=addrBook.getTel() %>
			</tr>
			<tr>
				<td>이메일</td><td><%=addrBook.getEmail() %>
			</tr>
			<tr>
				<td>성별</td><td><%=addrBook.getGender() %>
			</tr>
		</table>
	</div>
</body>
</html>