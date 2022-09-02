package svc;

import dao.BoardDAO;
import dto.BoardBean;

public class BoardModifyProService {

	public boolean isArticleWriter(int board_num, String board_pass) {
		boolean isArticleWriter = false;
		BoardDAO dao = new BoardDAO();
		isArticleWriter = dao.isArticleBoardWriter(board_num, board_pass);
		return isArticleWriter;
	}

	public boolean modifyArticle(BoardBean article) {
		boolean isModifySuccess = false;
		BoardDAO dao = new BoardDAO();
		int updateCount = dao.updateArticle(article);
		if(updateCount > 0) {
			isModifySuccess = true;
		}
		return isModifySuccess;
	}

}
