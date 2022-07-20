<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿼리 스트링 예제</title>
</head>
<body>
	<%
		//int cnt = Integer.parseInt(request.getParameter("cnt"));	
	
		int cnt = 1;
		
		/*String strCount = request.getParameter("cnt");
		if(strCount != null){
			cnt = Integer.parseInt(strCount);
		}*/
		
		if(request.getParameter("cnt") != null){
			cnt = Integer.parseInt(request.getParameter("cnt"));
		}
		
		for(int i = 0; i < cnt; i++){
			out.println("안녕 JSP<br>");
		}
	%>
</body>
</html>