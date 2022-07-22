<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록 폼</title>
<style>
	h2{
		background-color: green;
		color: #eee;
		text-align: center;
		padding: 15px 0;
		border-radius: 5px;
	}
	#regform{
		width: 50%;
		margin: 0 auto;
		background: lightgreen;
		padding: 15px 20px;
		border-radius: 10px;
	}
</style>
<script>
	function signUp(){
		let form = document.form1;  //폼 이름 변수 선언
		
		alert("정말로 가입하시겠습니까?");
		document.getElementById("regform").style.display = "none"; //가입 폼 숨기기
		document.getElementById("rname").innerHTML = form.name.value;   //이름
		document.getElementById("remail").innerHTML = form.email.value; //이메일
		//setAttribute(속성, 속성값)
		document.getElementById("result").setAttribute("style", 
				"display:block; background: lightgreen; padding: 5px 20px;")
	}
</script>
</head>
<body>
	<h2>회원 가입</h2>
	<hr>
	<div id="regform">
		<form action="" method="post" name="form1">
			<label>이름</label><br>
			<input type="text" name="name" size=40>
			<hr>
			<label>이메일</label><br>
			<input type="text" name="email" size=40>
			<P>
				<button type="button" onclick="signUp()">가입</button>
			</P>
		</form>
	</div>
	
	<div id="result">
		<h3>가입 정보</h3>
		<hr>
		<p>이름: <span id="rname"></span></p>
		<p>이메일: <span id="remail"></span></p>
	</div>
</body>
</html>



