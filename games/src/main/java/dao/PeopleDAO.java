package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import db.JdbcUtils;
import dto.PeopleDTO;

public class PeopleDAO {

	public ArrayList<PeopleDTO> selectPeopleList(String theme) {
		// 유저의 선택을 theme로 받아서 맞는 theme를 찾아온다.
		String sql = "select * from randompeople where theme = ?";
		ArrayList<PeopleDTO> peopleList = new ArrayList();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = JdbcUtils.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, theme);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				PeopleDTO peopleDTO = new PeopleDTO(
											rs.getInt("id"),
											rs.getString("img"),
											rs.getString("title"),
											theme,
											rs.getString("content"));
				
				
				peopleList.add(peopleDTO);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtils.close(conn, pstmt, rs);
		}
		
		return peopleList;
		
	}//method

}//class
