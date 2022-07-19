<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//폼 페이지에서 전달받은 한글을 인코딩 처리
	request.setCharacterEncoding("utf-8");
	
	//이름 필드에 입력된 값 가져오기
	String name= request.getParameter("name");
%>

<p>이름: <%=name %></p>
    