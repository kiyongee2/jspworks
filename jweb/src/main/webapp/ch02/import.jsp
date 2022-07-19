<%@ page import="java.util.Arrays"%>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이지 디렉티브 태그</title>
</head>
<body>
	<%
		//배열
		int[] arr = new int[]{10, 20, 30};
		for(int i=0; i<arr.length; i++){
			out.println(arr[i]);
		}
		out.println("<br>");
		
		//Arrays 클래스 - 배열 형태로 출력
		int[] arr2 = new int[]{10, 20, 30};
		out.println(Arrays.toString(arr2));
		
		//ArrayList 클래스
		ArrayList<String> fruitList = new ArrayList<>();
		fruitList.add("참외");
		fruitList.add("수박");
		fruitList.add("바나나");
		
		out.println("<br>");
		out.println(fruitList.get(1)); //수박
		
		out.println("<br>");
		for(String fruit : fruitList)
			out.println(fruit);
	%>
</body>
</html>






