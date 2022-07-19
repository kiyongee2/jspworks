<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.bean.Calculator" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산 결과</title>
<link rel="stylesheet" href="../resources/css/calc.css">
</head>
<body>
	<div id="container">
		<h2>계산기</h2>
		<hr>
		<%
		    // 입력된 문자를 숫자로 변환, 값을 입력하지 않은 경우 오류 발생
		   String str1 = request.getParameter("num1");
		   String str2 = request.getParameter("num2");
		   int num1 =0, num2 = 0;
		   String op="";
		   if(str1.equals("") || str2.equals("")){
			   out.println("값을 입력해 주세요");
		   }else{
			   num1 = Integer.parseInt(str1);
			   num2 = Integer.parseInt(str2);
			   op = request.getParameter("op");
		   }
		   
		   /*int num1 = Integer.parseInt(request.getParameter("num1"));
		   int num2 = Integer.parseInt(request.getParameter("num2"));
		   String op = request.getParameter("op");*/

		   Calculator calc = new Calculator();
		   calc.setNum1(num1);  //num1 설정
		   calc.setNum2(num2);  //num2 설정  
		   calc.setOp(op);      //연산자 설정
		   
		   calc.calculate();  //계산 메소드 호출
		%>
		<p>계산 결과: <%=calc.getResult() %>
	</div>
</body>
</html>