<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정규 표현식</title>
<script>
	function checkForm(){
		
	    let form = document.frm;    //form 변수 선언
		let name = form.name.value; //name 변수 선언
		
		//정규표현식 - 이름 항목은 숫자로 시작할 수 없음.
		let regExp = /^[a-zA-Z가-힣]/;
		
		if(!regExp.test(name)){ //정규표현식과 이름값이 일치하지 않으면
			alert("이름은 숫자로 시작할 수 없습니다.");
			return false;
		}
		
		form.submit();
	}

</script>
</head>
<body>
	<form action="" method="post" name="frm">
		<p>이름: <input type="text" name="name">
		<input type="button" value="전송" 
		       onclick="checkForm()">
	</form>
</body>
</html>