<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다중 처리</title>
</head>
<body>
	<form action="process.jsp" method="post">
		<p>
			오렌지<input type="checkbox" name="fruit" value="Orange">
			사과<input type="checkbox" name="fruit" value="Apple" >
			바나나<input type="checkbox" name="fruit" value="Banana" >
			<input type="submit" value="전송">
		</p>
	</form>
</body>
</html>