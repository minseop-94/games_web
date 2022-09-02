package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import db.JdbcUtils;
import dto.BoardBean;

public class BoardDAO {
	
	
	public int selectListCount() {
		int listCount = 0;
		String sql = "select count(*) from board"; 
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = JdbcUtils.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				listCount = rs.getInt(1);
			}
		} catch (Exception e) {
			System.out.println("getListCount 에러 : " + e);
		} finally {
			JdbcUtils.close(conn, pstmt, rs);
		}		
		return listCount;
	}

	public int insertArticle(BoardBean article) {
		int insertCount = 0;  
		String sql = "";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int num = 0;  
		
		try {
			conn = JdbcUtils.getConnection();
			sql = "select max(board_num) from board";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) { 
				num = rs.getInt(1) + 1;
			}else { 
				num = 1;
			} 
			
			sql = "insert into board values(?,?,?,?,?,?,?,?,?,?,now())";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, article.getBoard_name());
			pstmt.setString(3, article.getBoard_pass());
			pstmt.setString(4, article.getBoard_subject());
			pstmt.setString(5, article.getBoard_content());
			pstmt.setString(6, article.getBoard_file());
			pstmt.setInt(7, num);
			pstmt.setInt(8, 0);
			pstmt.setInt(9, 0);
			pstmt.setInt(10, 0);
			
			insertCount = pstmt.executeUpdate(); 
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("boardInsert 에러 : " + e);
		} finally {
			JdbcUtils.close(conn, pstmt, rs);
		}
		
		return insertCount;
	}
	
	public ArrayList<BoardBean> selectArticleList(int page, int limit){
		ArrayList<BoardBean> articleList = new ArrayList<>();
		String sql = "select * from board order by board_re_ref desc, board_re_step asc limit ?, 10";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		BoardBean board = null;
		
		// �б� ������ ���ȣ 
		int startRow = (page-1) * 10;
		
		try {
			conn = JdbcUtils.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				board = new BoardBean();
				board.setBoard_num(rs.getInt("board_num"));
				board.setBoard_name(rs.getString("board_name"));
				board.setBoard_subject(rs.getString("board_subject"));
				board.setBoard_content(rs.getString("board_content"));
				board.setBoard_file(rs.getString("board_file"));
				board.setBoard_re_ref(rs.getInt("board_re_ref"));
				board.setBoard_re_lev(rs.getInt("board_re_lev"));
				board.setBoard_re_step(rs.getInt("board_re_step"));
				board.setBoard_readcount(rs.getInt("board_readcount"));
				board.setBoard_date(rs.getDate("board_date"));				
				articleList.add(board);
			}
			
		} catch (Exception e) {
			System.out.println("boardList 에러 : " + e); 
		} finally {
			JdbcUtils.close(conn, pstmt, rs);
		}
		return articleList;
	}
	
	public BoardBean selectArticle(int board_num) {
		BoardBean board = null;
		String sql = "select * from board where board_num = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = JdbcUtils.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, board_num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				board = new BoardBean();
				board.setBoard_num(rs.getInt("board_num"));
				board.setBoard_name(rs.getString("board_name"));
				board.setBoard_subject(rs.getString("board_subject"));
				board.setBoard_content(rs.getString("board_content"));
				board.setBoard_file(rs.getString("board_file"));
				board.setBoard_re_ref(rs.getInt("board_re_ref"));
				board.setBoard_re_lev(rs.getInt("board_re_lev"));
				board.setBoard_re_step(rs.getInt("board_re_step"));
				board.setBoard_readcount(rs.getInt("board_readcount"));
				board.setBoard_date(rs.getDate("board_date"));	
			}
			
		} catch (Exception e) {
			System.out.println("getDetail 에러 : " + e);
		} finally {
			JdbcUtils.close(conn, pstmt, rs);
		}		
		return board;
	}
	
	public int insertReplayArticle(BoardBean article) {
		int result = 0;
		String sql = "select max(board_num) from board"; 
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int num = 0;								
		int insertCount = 0;						
		int re_ref = article.getBoard_re_ref();		
		int re_lev = article.getBoard_re_lev();		
		int re_step = article.getBoard_re_step();  
		
		try {
			conn = JdbcUtils.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) 
				num = rs.getInt(1) + 1; 
			else
				num = 1;
			
			sql = "update board set board_re_step=board_re_step+1 where board_re_ref=? ";
			sql += "and board_re_step > ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, re_ref);
			pstmt.setInt(2, re_step);
			pstmt.executeUpdate();
			
			re_step = re_step+1;
			re_lev = re_lev+1;
			sql = "insert into board values(?,?,?,?,?,?,?,?,?,?,now())";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, article.getBoard_name());
			pstmt.setString(3, article.getBoard_pass());
			pstmt.setString(4, article.getBoard_subject());
			pstmt.setString(5, article.getBoard_content());
			pstmt.setString(6, ""); 
			pstmt.setInt(7, re_ref);
			pstmt.setInt(8, re_lev);
			pstmt.setInt(9, re_step);
			pstmt.setInt(10, 0);
			insertCount = pstmt.executeUpdate();			
		} catch (Exception e) {
			System.out.println("boardReply 에러 : " + e);
		} finally {
			JdbcUtils.close(conn, pstmt, rs);
		}		
		return insertCount;
	}
	
	// �ۼ���
	public int updateArticle(BoardBean article) {
		int updateCount = 0;
		String sql = "update board set board_subject=?, board_content=? where board_num=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = JdbcUtils.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, article.getBoard_subject());
			pstmt.setString(2, article.getBoard_content());
			pstmt.setInt(3, article.getBoard_num());
			updateCount = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("boardModify 에러 : " + e);
		} finally {
			JdbcUtils.close(conn, pstmt);
		}
		return updateCount;
	}
	
	public int deleteArticle(int board_num) {
		String sql = "delete from board where board_num=?";
		int deleteCount = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = JdbcUtils.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, board_num);
			deleteCount = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("boardDelete 에러 : " + e);
		} finally {
			JdbcUtils.close(conn, pstmt);
		}		
		return deleteCount;
	}
	
	public int updateReadCount(int board_num) {
		int updateCount = 0;
		String sql = "update board set board_readcount = board_readcount + 1 where board_num=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = JdbcUtils.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, board_num);
			updateCount = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("boardReadCountUpdate 에러 : " + e);
		} finally {
			JdbcUtils.close(conn, pstmt);
		}		
		return updateCount;
	}
	
	public boolean isArticleBoardWriter(int board_num, String pass) {
		boolean isWriter = false;
		String sql = "select * from board where board_num=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = JdbcUtils.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, board_num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(pass.equals(rs.getString("board_pass"))) {
					isWriter = true;
				}
			}
		} catch (Exception e) {
			System.out.println("isBoardWriter 에러 : " + e);
		} finally {
			JdbcUtils.close(conn, pstmt, rs);
		}
		
		return isWriter;
	}
}
