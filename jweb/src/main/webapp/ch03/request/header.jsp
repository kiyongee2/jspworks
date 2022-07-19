<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 객체 예제</title>
</head>
<body>
	<%
	 	//내 컴의 header 정보
		String hostValue = request.getHeader("host");
		String alValue = request.getHeader("accept-language");
	
		out.println("호스트명: " + hostValue + "<br>"); 
		out.println("설정된 언어: " + alValue + "<br>"); 
	%>

</body>
</html>