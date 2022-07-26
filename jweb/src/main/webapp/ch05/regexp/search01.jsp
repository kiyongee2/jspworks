<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트 search() 함수</title>
</head>
<body>
	<!-- search()는 정확히 일치하는 문자열의 위치(인덱스)를 반환 -->
	<h2>The search() Method</h2>
	<p>search()는 정확히 일치하는 문자열의 위치(인덱스)를 반환한다</p>
	<p id="demo"></p>
	
	<script>
		let text = "Mr. Blue has a blue house.";
		let position = text.search(/blue/i);  //-/정규표현식/
		//i-ignore case: 대소문자 허용
		//search() > -1 : 찾았다는 의미
		
		document.getElementById("demo").innerHTML = position;
	</script> 
</body>
</html>






