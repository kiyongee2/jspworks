<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>param 액션 태그</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		/* out.print("아이디: " + id + "<br>");
		out.print("패스워드: " + pwd); */
	%>
	
	<p>아이디 : <%=id %>
	<p>패스워드 : <%=pwd %>
	
</body>
</html>