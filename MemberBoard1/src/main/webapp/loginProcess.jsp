<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberDAO" class="com.repository.MemberDAO" 
       scope="application" />
<%
	//데이터 가져오기
	String memberId = request.getParameter("memberId");
	String passwd = request.getParameter("passwd");
	
	//db 처리
	boolean result = memberDAO.checkLogin(memberId, passwd);
	
	if(result){
		session.setAttribute("sessionId", memberId); //세션 발급
		response.sendRedirect("./main.jsp"); //페이지 이동
	}else{
		out.println("<script>");
		out.println("alert('아이디나 비밀번호를 확인해 주세요')");
		out.println("history.go(-1)");
		out.println("</script>");
	}
%>