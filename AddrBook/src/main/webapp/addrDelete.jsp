<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="abDAO" class="com.dao.AddrBookDAO" scope="application" />    
<%
	int num = Integer.parseInt(request.getParameter("num"));	

	if(session.getAttribute("sessionId") != null){  //세션이 있으면
		abDAO.deleteAddress(num);  //번호가 같으면 삭제
		response.sendRedirect("./addrList.jsp"); //목록 보기로 이동
	}else{
		response.sendRedirect("./loginForm.jsp"); //로그인 페이지로 이동
	}
%>