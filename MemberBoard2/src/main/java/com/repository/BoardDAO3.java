package com.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.common.JDBCUtil3;

public class BoardDAO3 {
	
	Connection conn = null;   //db 연결 객체
	PreparedStatement pstmt = null; //sql 처리
	ResultSet rs = null;  //반환 자료값 객체
	
	//게시글 쓰기
	public void insertBoard(Board board) {
		conn = JDBCUtil3.getConnection();
		String sql = "INSERT INTO t_board(title, content, memberId)" 
				+ " VALUES (?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, board.getTitle()); //폼에 입력 데이터를 db에 저장
			pstmt.setString(2, board.getContent());
			pstmt.setString(3, board.getMemberId());
			pstmt.executeUpdate();  //실행 처리
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil3.close(conn, pstmt);
		}
	}

	//게시글 목록 보기
	public ArrayList<Board> getListAll(){
		ArrayList<Board> boardList = new ArrayList<>();
		
		try {
			conn = JDBCUtil3.getConnection();
			String sql = "SELECT * FROM t_board ORDER BY bnum DESC";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) { //반환 자료가 있는 동안
				Board board = new Board();
				board.setBnum(rs.getInt("bnum"));  //db 칼럼을 가져와서 객체에 세팅
				board.setTitle(rs.getString("title"));
				board.setContent(rs.getString("content"));
				board.setRegDate(rs.getDate("regdate"));
				board.setMemberId(rs.getString("memberId"));
				boardList.add(board);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil3.close(conn, pstmt, rs);
		}
		
		return boardList;
	}
	
	
	//게시글 상세 보기
	public Board getBoard(int bnum) {
		Board board = new Board();
		try {
			conn= JDBCUtil3.getConnection();
			String sql = "SELECT * FROM t_board WHERE bnum=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bnum);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				board.setBnum(rs.getInt("bnum"));
				board.setTitle(rs.getString("title"));
				board.setContent(rs.getString("content"));
				board.setMemberId(rs.getString("memberId"));
				board.setRegDate(rs.getDate("regdate"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil3.close(conn, pstmt, rs);
		}
		return board;
	}
	
	//게시글 삭제
	public void deleteBoard(int bnum) {
		try {
			conn = JDBCUtil3.getConnection();
			String sql = "DELETE FROM t_board WHERE bnum=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bnum);
			pstmt.executeUpdate();  //삭제 실행
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil3.close(conn, pstmt);
		}
	}
	
	//게시글 수정
	public void updateBoard(Board board) {
		conn = JDBCUtil3.getConnection();
		String sql = "UPDATE t_board SET title=?, content=? WHERE bnum=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getContent());
			pstmt.setInt(3, board.getBnum());
			pstmt.executeUpdate();  //수정 처리
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil3.close(conn, pstmt);
		}
	}	
	
}//boardDAO 닫기
