package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/calc")
public class CalcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//폼이 get방식인 경우 post 방식을 동시에 처리
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);  //doPost() 호출
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//폼 데이터 넘겨 받기
		int n1 = Integer.parseInt(request.getParameter("num1")); //첫번째 수
		int n2 = Integer.parseInt(request.getParameter("num2")); //두번째 수
		String op = request.getParameter("op");  //연산자
		int result = 0;  //결과 값
		
		/*System.out.println(n1);
		System.out.println(n2);
		System.out.println(op);*/
		
		switch(op) {
		case "+":
			result = n1 + n2; break;
		case "-":
			result = n1 - n2; break;
		case "*":
			result = n1 * n2; break;
		case "/":
			result = n1 / n2; break;
		}
		
		//html 형식으로 응답 처리
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();  //출력(쓰기) 스트림 out 객체
		
		//append() 메소드로 문자열 추가하기
		out.append("<html><body>")
		   .append("<h2>계산기 서블릿</h2><hr>")
		   .append("계산 결과: " + result)
		   .append("</body></html>");
	}

}









