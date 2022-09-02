package svc;

import dao.BoardDAO;
import dto.BoardBean;

public class BoardWriteService {

	public boolean registerArticle(BoardBean boardBean) {
		boolean isWriteSuccess = false;
		BoardDAO dao = new BoardDAO();
		
		int result = dao.insertArticle(boardBean); // 1 or 0
		if(result > 0) {  // if(result == 1)
			isWriteSuccess = true;
		}
		
		return isWriteSuccess;
	}

}
