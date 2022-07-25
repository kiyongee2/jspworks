<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유효성 검사</title>
<script>
	//아이디 체크 - 영문 소문자만 입력하도록 검사
	//비밀번호 - 숫자만 입력 가능
	function checkForm(){
		let form = document.loginForm;  //폼 변수
		let userid = form.userid.value; //아이디 입력 값 변수 
		let passwd = form.passwd.value;
		
		//정규 표현식
		let a = /^[a-z]*$/ //영어소문자만 
		
		if(userid == ""){
			alert("아이디를 입력해 주세요");
			form.userid.focus();  //커서 위치
			return false;
		}
		if(!a.test(userid)){  //test() - 매개변수값이 정규식과 일치하는지 여부
			alert("아이디는 영문소문자만 입력해주세요");
			form.userid.select();
			return false;
		}
		/*for(var i=0; i<userid.length; i++){
			var ch = userid.charAt(i);  //charAt() - 특정 위치의 문자를 반환함
			
			if((ch<'a' || ch>'z') && (ch>'A' || ch<'Z') 
					&& (ch>'0' || ch<'9')){
				alert("아이디는 영문소문자만 입력해주세요");
				form.userid.select();
				return false;
			}
		}*/
		if(passwd == ""){
			alert("비밀번호를 입력해 주세요");
			form.passwd.focus();  //커서 위치
			return false;
		}
		if(isNaN(passwd)){  //isNaN(입력값) - 입력값이 숫자가 아니면
			alert("비밀번호는 숫자만 입력해주세요");
			form.passwd.focus();
			return false;
		}
		form.submit();
	}
</script>
</head>
<body>
	<form action="../validation/loginProcess2.jsp" method="post" name="loginForm">
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