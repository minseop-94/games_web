package svc;

import java.util.ArrayList;

import dao.BoardDAO;
import dto.BoardBean;

public class BoardListService {

	public int getListCount() {
		int listCount = 0;
		BoardDAO dao = new BoardDAO();
		listCount = dao.selectListCount();		
		return listCount;
	}

	public ArrayList<BoardBean> getArticleList(int page, int limit) { 
		ArrayList<BoardBean> articleList = null;
		BoardDAO dao = new BoardDAO();
		articleList = dao.selectArticleList(page, limit);
		return articleList;
	}

}
