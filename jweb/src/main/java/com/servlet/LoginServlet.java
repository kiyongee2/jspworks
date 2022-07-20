package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//한글 인코딩 처리
		response.setCharacterEncoding("utf-8");
		
		//jsp의 폼의 입력 자료 받기
		String userid = request.getParameter("userid");
		String passwd = request.getParameter("passwd");
		
		System.out.println(userid);
		System.out.println(passwd);
	}

}











