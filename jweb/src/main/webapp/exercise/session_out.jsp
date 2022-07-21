<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate();  //모든 세션 삭제 : 로그아웃 처리

	response.sendRedirect("session.jsp"); //페이지 이동

%>