<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유효성 검사</title>
<script type="text/javascript">
	function checkForm(){
		//document.폼이름.입력항목이름.value
		let form = document.loginForm;
		
		//아이디 값이 없는 경우
		if(form.userid.value == ""){
			alert("아이디를 입력해주세요");
			form.userid.focus();  //커서 표시
			return false;         //전송을 막음
		}else if(form.passwd.value == ""){ //비밀번호 값이 없는 경우
			alert("비밀번호를 입력해주세요");
			form.passwd.focus();  //커서 표시
			return false;         //전송을 막음
		}else{
			form.submit();  //폼에 전송
		}
	}

</script>
</head>
<body>
	<form action="loginProcess2.jsp" method="post" name="loginForm">
		<p>
			<label for="userid">아이디 : </label>
			<input type="text" id="userid" name="userid">
		</p>
		<p>
			<label for="passwd">비밀번호 : </label>
			<input type="password" id="passwd" name="passwd">
		</p>
		<p><input type="button" value="로그인" onclick="checkForm()" >
	</form>
</body>
</html>