package svc;

import java.util.ArrayList;

import dao.SongDAO;
import dto.SongDTO;

public class RandomPlayYearService {

	public ArrayList<SongDTO> selectList(int year) {
		ArrayList<SongDTO> list = new ArrayList<SongDTO>();
		SongDAO dao = new SongDAO();
		
		list = dao.selectPlayList(year);
		return list;
	}

}
