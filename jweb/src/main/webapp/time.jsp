<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Time is...</title>
<style type="text/css">
	#content{width: 800px; margin: 0 auto; text-align: center;}
</style>
<script type="text/javascript">
	setInterval(function(){
		let date = new Date();
		let now = date.toLocaleString();  //대한민국 날짜와 시간 형태
		document.getElementById("demo").innerHTML = now;
	});
</script>
</head>
<body>
	<div id="content">
		<h2>시간이란...</h2>
		<p>내일 죽을 것처럼 오늘을 살고<br>
		   영원히 살 것처럼 내일을 꿈꾸어라</p>
		<img src="./resources/images/time.jpg" alt="손시계">
		<p id="demo"></p>
	</div>
</body>
</html>