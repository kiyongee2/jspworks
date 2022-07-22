package com.session;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/sess1")
public class SessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		//세션 객체 생성
		HttpSession session = request.getSession();
		
		out.println("세션 아이디: " + session.getId() + "<br>");
		out.println("최초 세션 생성 시각: " + new Date(session.getCreationTime()) + "<br>");
		out.println("최초 세션 접근 시각: " + new Date(session.getLastAccessedTime()) + "<br>");
		out.println("세션 유효 시간: " + session.getMaxInactiveInterval() / 60 + "분<br>");
		
		//유효시간을 1분으로 설정
		session.setMaxInactiveInterval(60);
		
		if(session.isNew()) { //최초 생성된 세션인지 판별
			out.println("새 세션이 만들어졌습니다.");
		}
		
		//모든 세션 삭제
		session.invalidate();
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
