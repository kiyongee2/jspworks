<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h3>===== 세션을 삭제하기 전 =====</h3> 
<%
	String id = (String)session.getAttribute("userID");
	String pw = (String)session.getAttribute("passwd");
	
	out.println("설정된 세션의 이름 userID " + id + "<br>");
	out.println("설정된 세션의 속성 passwd " + pw + "<br>");
	
	session.removeAttribute("userID");  //단일 세션 삭제
%>

<h3>===== 세션을 삭제하기 전 =====</h3>
<%
	id = (String)session.getAttribute("userID");
	pw = (String)session.getAttribute("passwd");
	
	out.println("설정된 세션의 이름 userID " + id + "<br>");
	out.println("설정된 세션의 속성 passwd " + pw + "<br>");
%>