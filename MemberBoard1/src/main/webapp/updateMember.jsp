<%@page import="com.repository.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberDAO" class="com.repository.MemberDAO" scope="application" />
<%
	//회원 수정 코드 작성
	request.setCharacterEncoding("utf-8");
	
	//데이터 넘겨 받음
	String memberId = request.getParameter("memberId");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	
	//Member 객체 생성 및 set
	Member member = new Member();
	member.setMemberId(memberId);
	member.setPasswd(passwd);
	member.setName(name);
	member.setGender(gender);
	
	//수정 처리-dao 및 페이지 이동
	memberDAO.updateMember(member);
	out.println("<script>");
	out.println("alert('나의 정보를 수정했습니다.')");
	out.println("location.href='./memberView.jsp'");
	out.println("</script>");

%>