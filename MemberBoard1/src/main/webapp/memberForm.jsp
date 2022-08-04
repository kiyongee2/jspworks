<%@ page import="com.repository.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<link rel="stylesheet" href="./resources/css/common.css">
<script type="text/javascript">
	function checkMember(){
		//alert("testing...");
		//변수 할당
		let form = document.regForm;     //폼 이름
		let id = form.memberId.value;    //아이디 입력값
		let pwd1 = form.passwd.value;    //비밀번호 입력값
		let pwd2 = form.passwd_confirm.value; //비밀번호 확인 입력값
		let name = form.name.value;      //이름 입력값
		
		//정규식 변수 할당
		let regExpId = /^[a-zA-Z0-9]*$/ //영문자, 숫자만(^-시작, *-반복)
		let regExpPwd1 = /[a-zA-Z0-9]/  //영문자, 숫자
		let regExpPwd2 = /[~!@#$%^&*()_+/]/  //특수문자
		let regExpPwd3 = /[ㄱ-ㅎㅏ-ㅣ가-힣]/  //한글
		
		if(id.length < 4 || id.length > 12 || !regExpId.test(id)){
			alert("아이디는 영문자, 숫자 포함 4-12자 이하로 입력해주세요 ");
			form.memberId.focus();
			form.memberId.select();
			return false;
		}else if(pwd1.length < 8 || pwd1.length > 12 ||
				!regExpPwd1.test(pwd1) || !regExpPwd2.test(pwd1) ||
				regExpPwd3.test(pwd1)){
			alert("비밀번호는 영문자, 숫자, 특수문자 포함 8-12자 이하로 입력해주세요 ");
			form.passwd.focus();
			form.passwd.select();
			return false;
		}else if(pwd1 != pwd2){
			alert("비밀번호를 동일하게 입력해주세요");
			form.passwd_confirm.focus();
			form.passwd_confirm.select();
			return false;
		}else if(name == ""){
			alert("이름을 입력해주세요");
			form.name.focus();
			return false;
		}else{
			form.submit();  //폼을 전송
		}
		
		/*유효성 검사 조건
		  1. 아이디는 영문자, 숫자 포함 4-12자 이하로 입력해주세요 
		  2. 비밀번호는 영문자, 숫자, 특수문자 포함 8~12자로 입력해주세요
		  3. 비밀번호를 동일하게 입력하세요		  
		  4. 이름을 입력해주세요
		*/
	}

</script>
</head>
<jsp:useBean id="memberDAO" class="com.repository.MemberDAO" scope="application" />
<body>
	<jsp:include page="./menu.jsp" />
	<div id="container">
		<div class="title">
			<h1>회원 가입</h1>
		</div>
		<div>
		<form action="./addMember.jsp" method="post" name="regForm">
			<table class="tbl">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="memberId" placeholder="ID"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="text" name="passwd" placeholder="PASSWORD"></td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td><input type="text" name="passwd_confirm" placeholder="PASSWORD_CONFRIM"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<select name="gender">
							<option selected>남</option>
							<option>여</option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="등록" onclick="checkMember()">
						<input type="reset" value="취소">
					</td>
				</tr>
			</table>
		</form>
		</div>
		
		
	
	</div>
	<jsp:include page="./footer.jsp" />
</body>
</html>