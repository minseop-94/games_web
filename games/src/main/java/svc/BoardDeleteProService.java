package svc;

import dao.BoardDAO;

public class BoardDeleteProService {

	public boolean isArticleWriter(int board_num, String board_pass) {
		boolean isArticleWriter = false;
		BoardDAO dao = new BoardDAO();
		isArticleWriter = dao.isArticleBoardWriter(board_num, board_pass);
		return isArticleWriter;
	}

	public boolean removeArticle(int board_num) {
		boolean isRemoveSuccess = false;
		BoardDAO dao = new BoardDAO();
		int deleteCount = dao.deleteArticle(board_num);
		if(deleteCount > 0) {
			isRemoveSuccess = true;
		}
		return isRemoveSuccess;
	}

}
