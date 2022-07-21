<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String username = request.getParameter("username");
	//세션 발급(이름 - userName)
	session.setAttribute("userName", username);
	
	//로그인이 안된 상태로 url 요청
	if(session.getAttribute("userName") != null){
		String userName = (String)session.getAttribute("userName");
	}else{
		response.sendRedirect("./loginForm.jsp");
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 선택</title>
<link rel="stylesheet" href="../resources/css/cart.css">
</head>
<body>
	<div id="container">
		<h2>상품 선택</h2>
		<hr>
		<p><%=session.getAttribute("userName") %>님 환영합니다.</p>
		<form action="./productAdd.jsp" method="post">
			<select name="product">
				<option>사과</option>
				<option>귤</option>
				<option>토마토</option>
				<option>키위</option>
			</select>
			<input type="submit" value="추가">
		</form>
		<p><input type="button" value="계산하기"
		          onclick="location.href='checkOut.jsp'">
	</div>
</body>
</html>




