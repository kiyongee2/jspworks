package com.cookie;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cookie")
public class CookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=utf-8"); //한글 문자 유형 설정
		
		Date date = new Date();
		
		//쿠키 객체 생성 - 쿠키 값(한글로 설정)
		Cookie cookie = new Cookie("cookieTest", URLEncoder.encode("JSP 프로그래밍", "utf-8"));
		
		//쿠키 유효시간 설정
		cookie.setMaxAge(24*60*60); //1일 - 초로 환산
		
		//서버에서 클라이언트 컴에게 발행(전송)
		response.addCookie(cookie);
		
		PrintWriter out = response.getWriter();
		
		out.println("쿠키가 생성되었습니다.<br>");
		out.println("현재 시간: " + date);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
