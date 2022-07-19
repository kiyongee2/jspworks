<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산 결과</title>
<link rel="stylesheet" href="../resources/css/calc.css">
</head>
<jsp:useBean id="calc" class="com.bean.Calculator" />
<jsp:setProperty property="num1" name="calc"/>
<jsp:setProperty property="num2" name="calc"/>
<jsp:setProperty property="op" name="calc"/>
<body>
	<div id="container">
		<h2>계산기</h2>
		<hr>
		<%
			calc.calculate();
		%>
		<p>계산 결과: <%=calc.getResult() %>
		<hr>
	</div>
</body>
</html>