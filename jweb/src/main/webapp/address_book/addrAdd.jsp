<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소 추가</title>
<link rel="stylesheet" href="../resources/css/addrbook.css">
</head>
<jsp:useBean id="addrBook" class="com.dao.AddrBook" />
<jsp:setProperty property="username" name="addrBook"/>
<jsp:setProperty property="tel" name="addrBook"/>
<jsp:setProperty property="email" name="addrBook"/>
<jsp:setProperty property="gender" name="addrBook"/>
<jsp:useBean id="abDAO" class="com.dao.AddrBookDAO" scope="application"/>
<!-- setProperty 이후 ArrayList에 저장됨 -->
<!-- scope : application(웹 페이지 전체에 걸쳐서 공유, 저장 기능) -->
<%
	String username = request.getParameter("username");
	
	session.setAttribute("userName", username); //세션 발급
	
	//세션이 없는 경우 주소록 등록 페이지로 가기
	if(session.getAttribute("userName") != null){
		abDAO.add(addrBook);  //dao의 add() 메소드 호출
	}else{
		response.sendRedirect("./addrForm.jsp");
	}
%>
<body>
	<div id="container">
		<h2>등록 내용</h2>
	    <hr>
	    <p>이 름: <%=addrBook.getUsername() %></p>
	    <p>전화번호: <%=addrBook.getTel() %></p>
	    <p>이메일: <%=addrBook.getEmail() %></p>
	    <p>성 별: <%=addrBook.getGender() %></p>
	    <hr>
	    <p><a href="addrList.jsp">목록 보기</a></p>
	</div>
</body>
</html>