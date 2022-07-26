<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유효성 검사</title>
<script>
function checkMember(){
	//변수 선언
	let form = document.Member;
	let id = form.id.value;
	let pw = form.passwd.value;
	let name = form.name.value;
	
	//정규 표현식
	let regExpId = /^[a-zA-Z가-힣]/;   //id
	let regExpPasswd1 = /[a-zA-Z0-9]/ //passwd
	let regExpPasswd2 = /[~!@#$%^&*+-_/]/  
	
	//유효성 검사
	if(!regExpId.test(id)){
		alert("아이디는 문자로 시작해주세요");
		form.id.select();
		return false;
	}
	if(pw.length < 8 || pw.length > 12 
			|| !regExpPasswd1.test(pw) || !regExpPasswd2.test(pw)){
		alert("비밀번호는 영문자, 숫자, 특수문자 포함 8~12자로 입력해주세요");
		form.passwd.select();
		return false;
	}
	if(pw.search(id) > -1){ //아이디와 비번이 일치하면
		alert("비밀번호는 아이디를 포함할 수 없습니다.");
		form.passwd.select();
		return false;
	}
	if(name == ""){
		alert("이름을 입력해주세요");
		form.name.select();
		return false;
	}
	
	form.submit();
}
</script>
</head>
<body>
	<h3>회원 가입</h3>
	<form action="test_process.jsp" method="post" name="Member">
		<p>아이디: <input type="text" name="id">
		<p>비밀번호: <input type="text" name="passwd">
		<p>이 름: <input type="text" name="name">
		<p><button type="button" 
			onclick="checkMember()">가입하기</button>
	</form>
</body>
</html>