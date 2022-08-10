package com.common;

import java.sql.Connection;

public class JDBCTest {
	
	public static void main(String[] args) {
		Connection conn = JDBCUtil3.getConnection();
		System.out.println("DB 연결 - 객체 생성: " + conn);
	}
}
