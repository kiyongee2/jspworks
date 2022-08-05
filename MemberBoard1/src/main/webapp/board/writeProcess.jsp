<%@ page import="com.repository.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="boardDAO" class="com.repository.BoardDAO" scope="application" />
<%
	request.setCharacterEncoding("utf-8"); //한글 인코딩
	
	//세션 처리
	String memberId = null;
	if(session.getAttribute("sessionId") != null){
		memberId = (String)session.getAttribute("sessionId");
	}
	
	//폼 데이터 수집
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	//객체 생성
	Board board = new Board();
	board.setTitle(title);      //제목
	board.setContent(content);  //내용
	board.setMemberId(memberId);//글쓴이
	
	//db 글쓰기 처리
	boardDAO.insertBoard(board);
	
	//페이지 이동
	response.sendRedirect("./boardList.jsp");
%>