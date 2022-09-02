package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.ActionForward;
import dto.BoardBean;
import svc.BoardDetailService;

public class BoardDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) 
			throws Exception {
		ActionForward forward = null;
		// 한글처리
		
		// 요청 파라미터
		int board_num = Integer.parseInt(request.getParameter("board_num")); // 상세글을 보기위해 글번호 받는다.
		String page = (String)request.getParameter("page");
		
		// 비즈니스 로직
		BoardDetailService boardDetailService = new BoardDetailService();
		BoardBean article = boardDetailService.getArticle(board_num);
		
		request.setAttribute("page", page);
		request.setAttribute("article", article);
		
		// 응답처리
		forward = new ActionForward("/board/board_view.jsp", false);				
		return forward;
	}

}
