<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="addrBook" class="com.dao.AddrBook" />
<jsp:setProperty property="num" name="addrBook"/>
<jsp:setProperty property="username" name="addrBook"/>
<jsp:setProperty property="tel" name="addrBook"/>
<jsp:setProperty property="email" name="addrBook"/>
<jsp:setProperty property="gender" name="addrBook"/>
<jsp:useBean id="abDAO" class="com.dao.AddrBookDAO" scope="application" />
<%
	if(session.getAttribute("sessionId") != null){
		abDAO.updateAddress(addrBook);  //수정 처리
		out.println("<script>");
		out.println("alert('주소를 수정했습니다.')");
		out.println("location.href='./addrList.jsp' "); //목록 페이지 이동
		out.println("</script>");
	}else{
		response.sendRedirect("./loginForm.jsp"); //로그인 페이지 이동
	}

	

%>