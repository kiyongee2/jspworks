<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean 태그</title>
</head>
<jsp:useBean id="calc" class="bean.CalcBean" />
<body>
	<%
		int num = calc.calculate(4);
		out.println("4의 세제곱 : " + num);
	%>
</body>
</html>