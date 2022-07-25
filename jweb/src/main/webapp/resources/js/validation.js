/**
 *  데이터 길이 확인
 */
 
 function checkForm(){
	
	let form = document.loginForm;
	let id = form.userid.value;
	let pw = form.passwd.value;
	
	//아이디 길이 체크
	if(id.length < 4 || id.length > 12){
		alert("아이디는 4~12자로 입력해주세요");
		form.userid.select();  //선택 영역 지정
		return false;
	}else if(!(pw.length == 5)){ //비밀번호 길이 체크
		alert("비밀번호는 5자로 입력해주세요");
		form.passwd.select();  //선택 영역 지정
		return false;
	}else{
		form.submit();
	}
}




