package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.ActionForward;

public class BoardDeleteFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) 
			throws Exception {
		ActionForward forward = null;
		
		
		String nowPage = request.getParameter("page");
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		
		
		request.setAttribute("page", nowPage);
		request.setAttribute("board_num", board_num);
				
		return new ActionForward("/board/board_delete.jsp", false);
	}

}
