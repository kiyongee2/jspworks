<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//웹 브라우저 및 서버 정보 가져오기
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
%>
<p>이름: <%=name %><br>
   요청 정보 길이: <%=request.getContentLength() %><br>
   클라이언트 IP: <%=request.getRemoteAddr() %><br>
   클라이언트 전송 방식: <%=request.getMethod() %><br>
   요청 URI: <%=request.getRequestURI() %><br>
   서버 이름: <%=request.getServerName() %><br>
   서버 포트: <%=request.getServerPort() %>
</p>
  