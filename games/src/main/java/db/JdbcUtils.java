package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JdbcUtils {
	
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection() {
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/games?serverTimezone=UTC";
		String user = "root";
		String pass = "1234";
		
		try {
			conn = DriverManager.getConnection(url, user, pass);
			//conn.setAutoCommit(false); 占쌘듸옙 commit占쏙옙 占쏙옙占쏙옙占싹댐옙 占쏙옙占� 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void close(Connection conn, PreparedStatement pstmt) {
		try {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 트占쏙옙占쏙옙占� 처占쏙옙
	public static void commit(Connection conn) {
		try {
			conn.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void rollback(Connection conn) {
		try {
			conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
