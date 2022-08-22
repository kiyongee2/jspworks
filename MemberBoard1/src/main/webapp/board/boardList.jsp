<%@page import="com.repository.Board"%>
<%@ page import="com.repository.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<link rel="stylesheet" href="../resources/css/common.css">
</head>
<jsp:useBean id="boardDAO" class="com.repository.BoardDAO" scope="application" />
<%
	String pageNum = request.getParameter("pageNum");
    if(pageNum == null){ //파라미터로 전달된 page 번호가 없으면
    	pageNum = "1";   //1페이지로 설정
    }
    
    //현재 페이지
    int currentPage = Integer.parseInt(pageNum);
    
    //페이지당 게시글 수
    int pageSize = 10;
    
    //게시글 첫 행
    // 1page -> 1번(start), (2 -> 11), (3 -> 21)
    int startRow = (currentPage-1) * pageSize + 1;
    
    //게시글 총 개수
    int total = boardDAO.getBoardCount();
    
    //시작 페이지
    int startPage = startRow / pageSize + 1;
    
    /* 마지막 페이지
    	13 -> 2page, 23 -> 3, 33 -> 4
    	13/10 -> 1.3 -> ceil(1.3) -> 2.0 ->(int)2.0 -> 2
    */
    int endPage = (int)Math.ceil((double)total/pageSize);

%>
<body>
	<jsp:include page="../menu.jsp" />
	<div id="container">
		<div class="title">
			<h1>게시판 목록</h1>
		</div>
		<div>
			<p style="text-align: left; margin-left: 30%; margin-bottom: 10px">
			    게시글 총 개수 : <%=total %> <%-- <%=endPage %> --%></p>
			<table class="tbl_list">
				<thead>
					<tr>
						<th>글번호</th>
						<th>제목</th>
						<th>작성일</th>
						<th>글쓴이</th>
					</tr>
				<thead>
				<tbody>
					<%
						for(int i=0; i<boardDAO.getListAll(startRow, pageSize).size(); i++){
							Board board = boardDAO.getListAll(startRow, pageSize).get(i);
					%>
					<tr>
						<td><%=board.getBnum() %></td>
						<td><a href="./boardView.jsp?bnum=<%=board.getBnum() %>"> 
						    <%=board.getTitle() %></a></td>
						<td><%=board.getRegDate() %></td>
						<td><%=board.getMemberId() %></td>
					</tr>
					<% } %>
				</tbody>
			</table>
			<div style="text-align: center; margin-top: 10px">
				<% if(startPage > 1){ %>
					<a href="./boardList.jsp?pageNum=<%=startPage-1 %>">이전</a>
				<% }else{ %>
					<a href="./boardList.jsp?pageNum=<%=startPage%>">이전</a>
				<%} %>
				<%
					for(int i=1; i<=endPage; i++){
				%>
					<!-- 현재 페이지 활성화(굵게) -->
					<% if(currentPage == i){ %>
						<a href="./boardList.jsp?pageNum=<%=i %>"><b><%=i %></b></a>
					<%}else{ %>
						<a href="./boardList.jsp?pageNum=<%=i %>"><%=i %></a>
					<%} %>
				<% } %>
					<% if(endPage > startPage){ %>
						<a href="./boardList.jsp?pageNum=<%=startPage+1 %>">다음</a>
					<%}else{ %>
						<a href="./boardList.jsp?pageNum=<%=endPage %>">다음</a>
					<%} %>
			</div>
			<div class="btnWrite">
				<a href="./writeForm.jsp">
					<button type="button">글쓰기</button>
				</a>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>