package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.repository.Member;
import com.repository.MemberDAO;

@WebServlet("*.do")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 2L;
	
	MemberDAO memberDAO;

	public void init(ServletConfig config) throws ServletException {
		memberDAO = new MemberDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String uri = request.getRequestURI();
		System.out.println(uri);  //경로(주소 -path) 정보
		
		String command = uri.substring(uri.lastIndexOf("/"));  //주소 문자열 추출
		System.out.println(uri.lastIndexOf("/"));
		System.out.println(command);
		
		String nextPage = null;  //jsp 페이지
		HttpSession session = request.getSession(); //세션 객체 생성
		PrintWriter out = response.getWriter();     //쓰기 객체 생성
		
		if(command.equals("/memberForm.do")) {
			//회원 가입 페이지 요청
			//페이지 이동
			nextPage = "/memberForm.jsp";
		}else if(command.equals("/addMember.do")) {
			//회원 추가 요청
			//자료 넘겨 받기
			String memberId = request.getParameter("memberId");
			String passwd = request.getParameter("passwd");
			String name = request.getParameter("name");
			String gender = request.getParameter("gender");
			
			//member 객체 set
			Member member = new Member();
			member.setMemberId(memberId);
			member.setPasswd(passwd);
			member.setName(name);
			member.setGender(gender);
			//회원 추가 dao
			memberDAO.addMember(member);
			//view 
			nextPage = "/main.jsp";
		}else if(command.equals("/memberList.do")) {
			//회원 목록 요청
			ArrayList<Member> memberList = memberDAO.getListAll();
	
			//model - 회원 목록 데이터
			request.setAttribute("memberList", memberList);
			//view
			nextPage = "./memberList.jsp";
		}else if(command.equals("/loginMember.do")){
			nextPage = "/loginMember.jsp";
		}else if(command.equals("/loginProcess.do")) {
			//로그인 처리 요청
			String memberId = request.getParameter("memberId");
			String passwd = request.getParameter("passwd");
			
			boolean loginResult = memberDAO.checkLogin(memberId, passwd);
			
			if(loginResult){
				session.setAttribute("sessionId", memberId);  //세션 발급
				nextPage = "./main.jsp";
			}else{
				out.println("<script>");
				out.println("alert('아이디나 비밀번호를 확인해주세요')");
				out.println("history.go(-1)");
				out.println("</script>");
			}
		}else if(command.equals("/logout.do")) {
			//로그 아웃 처리 요청
			session.invalidate();
			nextPage = "./main.jsp";
		}
		//포워딩 - 페이지 이동
		RequestDispatcher dispatcher = request.getRequestDispatcher(nextPage);
		dispatcher.forward(request, response);
	}

}
