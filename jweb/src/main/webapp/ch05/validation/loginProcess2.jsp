<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userid = request.getParameter("userid");
	String passwd = request.getParameter("passwd");

%>
<h3>입력에 성공했습니다.</h3>
<p>아이디: <%=userid %></p>
<p>비밀번호: <%=passwd %></p>