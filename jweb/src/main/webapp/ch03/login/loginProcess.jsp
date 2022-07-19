<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="login" class="bean.LoginBean" />
<jsp:setProperty property="userid" name="login"/>
<jsp:setProperty property="passwd" name="login"/>

<%
	if(login.checkUser()){
		out.println("로그인 성공!!");
	}else{
		out.println("로그인 실패!!");
	}
%>
<hr>
<p>사용자 아이디: <jsp:getProperty property="userid" name="login"/>
<p>사용자 패스워드: <jsp:getProperty property="passwd" name="login"/>