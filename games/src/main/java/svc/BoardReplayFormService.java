package svc;

import dao.BoardDAO;
import dto.BoardBean;

public class BoardReplayFormService {

	public BoardBean getArticle(int board_num) {
		BoardBean article = null;
		BoardDAO dao = new BoardDAO();
		int updateCount = dao.updateReadCount(board_num);
		
		if(updateCount > 0) {
			article = new BoardBean();
			article = dao.selectArticle(board_num);
		}
		return article;
	}

}
