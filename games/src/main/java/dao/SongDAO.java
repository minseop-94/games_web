package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import db.JdbcUtils;
import dto.SongDTO;

public class SongDAO {
	// year를 받아서 조건에 맞는 연도별 노래를 리턴 매서드 
	public ArrayList<SongDTO> selectPlayList(int year) {
		ArrayList<SongDTO> list = new ArrayList<SongDTO>();
		
		String sql = "select * from randomsongs where year >= ? and year < ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = JdbcUtils.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, year);
			pstmt.setInt(2, year + 10);
			rs = pstmt.executeQuery();
				
			while(rs.next()) {
				SongDTO song = new SongDTO(
								rs.getInt("id"),
								rs.getString("mp3"),
								rs.getString("title"),
								rs.getString("singer"),
								rs.getInt("year"),
								rs.getString("genre")
								);
				list.add(song);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtils.close(conn, pstmt, rs);
		}
		
		return list;
	}//selectPlayList

}
