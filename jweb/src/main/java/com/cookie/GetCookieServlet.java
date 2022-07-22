package com.cookie;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/getcookie")
public class GetCookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		Cookie[] cookies = request.getCookies(); //쿠키 가져오기
		
		for(int i=0; i<cookies.length; i++) {
			//쿠키 이름 가져오기
			boolean name = cookies[i].getName().equals("cookieTest"); 
			if(name) {  //쿠키 값 가져오기(한글)
				String value = URLDecoder.decode(cookies[i].getValue(), "utf-8");
				out.println("<h3>쿠키 값 가져오기: " + value + "</h3>");
			}
		}
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
