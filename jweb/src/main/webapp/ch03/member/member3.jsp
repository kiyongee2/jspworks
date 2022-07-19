<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bean.MemberBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberBean 사용</title>
</head>
<body>
	<%
		//MemberBean의 객체 생성
		MemberBean member = new MemberBean();
	    
	    /*out.println(member.getId());
	    out.println(member.getName());*/
	
	%>
	<p>아이디: <%=member.getId() %></p>
	<p>이 름: <%=member.getName() %></p>
</body>
</html>