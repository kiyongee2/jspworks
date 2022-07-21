<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 세션 발급 - 로그인, 회원가입
	String userid = request.getParameter("userid");
	String passwd = request.getParameter("passwd");
	
	if(userid.equals("corona") && passwd.equals("2019")){
		session.setAttribute("userID", userid); //userID - 세션 이름
		session.setAttribute("passwd", passwd); //passwd - 세션 이름
		out.println("세션 설정이 성공했습니다.");
	}else{
		out.println("<script>");
		out.println("alert('아이디나 비밀번호가 일치하지 않습니다.')");
		out.println("history.go(-1)"); //이전 페이지로 이동
		out.println("</script>");
	}
	
	/* //반환형이 Object이므로 형 변환을 해야함
	String sessionId = (String)session.getAttribute("userID");
	out.println("<br>");
	out.println("아이디 : " + sessionId);*/
%>
<p><%=session.getAttribute("userID") %>님이 로그인 한 상태입니다.</p>
<p><%=session.getId() %>


