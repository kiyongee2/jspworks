package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//html 형식으로 설정
		response.setContentType("text/html; charset=utf-8");
		
		//문자를 전송하는 클래스 객체 생성
		PrintWriter out = response.getWriter();
		
		//쿼리스트링 - get 방식
		int cnt = 1;
		String param = request.getParameter("cnt");
		if(param != null) {
			cnt = Integer.parseInt(param);
		}
		
		for(int i = 0; i < cnt; i++) {
			out.println("안녕~ Servlet!<br>");
		}
	}

}
