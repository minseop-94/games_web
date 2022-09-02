package svc;

import dao.BoardDAO;
import dto.BoardBean;

public class BoardReplayProService {

	public boolean replayArticle(BoardBean article) {
		boolean isReplaySuccess = false;
		int insertCount = 0;
		BoardDAO dao = new BoardDAO();
		insertCount = dao.insertReplayArticle(article);
		if(insertCount > 0) {   
			isReplaySuccess = true;
		}
		return isReplaySuccess;
	}

}
