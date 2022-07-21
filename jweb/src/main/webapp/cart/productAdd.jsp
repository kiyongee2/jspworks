<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	//세션 가져옴 - 상품 리스트 객체 생성
	ArrayList<String> productList = (ArrayList)session.getAttribute("productList");
	
	if(productList == null){
		productList = new ArrayList<>();
		//productList 이름으로 세션 발급
		session.setAttribute("productList", productList);
	}
	//선택된 상품을 가져옴
	String product = request.getParameter("product");
	
	productList.add(product);  //추가된 상품 저장
%>
<script type="text/javascript">
	alert("<%=product %>가(이) 추가되었습니다.");
	history.go(-1);  //selProduct.jsp 페이지로 이동
</script>

