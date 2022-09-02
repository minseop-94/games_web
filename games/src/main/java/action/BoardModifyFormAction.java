package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.ActionForward;
import dto.BoardBean;
import svc.BoardModifyFormService;

public class BoardModifyFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) 
			throws Exception {
		ActionForward forward = null;
		
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		String page = (String)request.getParameter("page");
		System.out.println("page = " + page);
		
		BoardModifyFormService boardModifyFormService = new BoardModifyFormService();
		BoardBean article = boardModifyFormService.getArticle(board_num);		
		request.setAttribute("article", article);
		request.setAttribute("page", page);
		
		return new ActionForward("/board/board_modify.jsp", false);
	}

}
