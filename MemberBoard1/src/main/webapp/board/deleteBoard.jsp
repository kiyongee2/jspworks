<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="boardDAO" class="com.repository.BoardDAO" scope="application" />
<%
	//글 번호 넘겨받기
	int bnum = Integer.parseInt(request.getParameter("bnum"));	

	if(session.getAttribute("sessionId") != null){
		boardDAO.deleteBoard(bnum);  //삭제 처리
		out.println("<script>");
		out.println("alert('게시글을 삭제했습니다.')");
		out.println("location.href='./boardList.jsp'");
		out.println("</script>");
	}

	//페이지 이동
	//response.sendRedirect("./boardList.jsp");
%>
