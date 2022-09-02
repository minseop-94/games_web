package svc;

import java.util.ArrayList;

import dao.PeopleDAO;
import dto.PeopleDTO;

public class PeoplePlayService {

	public ArrayList<PeopleDTO> getPeoplePlay(String theme) {
		ArrayList<PeopleDTO> peopleList = new ArrayList<PeopleDTO>();
		PeopleDAO dao = new PeopleDAO();
		
		peopleList = dao.selectPeopleList(theme);
		return peopleList;
	}
	
}
