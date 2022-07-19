<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디렉티브 태그 예제</title>
</head>
<body>
	<%!
	    //선언문 태그
		int pageCount = 0;
	
		void addCount(){
			pageCount++;
		}
		
	%>
	
	<%
	   addCount();  //호출
	%>
	
	<p>이 사이트 방문은 <%=pageCount %> 번째 입니다.</p>
</body>
</html>