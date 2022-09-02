package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.ActionForward;
import dto.BoardBean;
import svc.BoardReplayProService;

public class BoardReplayProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ActionForward forward = null;
		
		// 요청 파라미터 조회
		String nowPage = request.getParameter("page");
		
		// 비즈니스 로직
		BoardBean article = new BoardBean();
		article.setBoard_num(Integer.parseInt(request.getParameter("board_num")));
		article.setBoard_name(request.getParameter("board_name"));
		article.setBoard_pass(request.getParameter("board_pass"));
		article.setBoard_subject(request.getParameter("board_subject"));
		article.setBoard_content(request.getParameter("board_content"));
		article.setBoard_re_ref(Integer.parseInt(request.getParameter("board_re_ref")));
		article.setBoard_re_lev(Integer.parseInt(request.getParameter("board_re_lev")));
		article.setBoard_re_step(Integer.parseInt(request.getParameter("board_re_step")));
		
		BoardReplayProService boardReplayProService = new BoardReplayProService();
		boolean isReplaySuccess = boardReplayProService.replayArticle(article);
		if(isReplaySuccess) {
			forward = new ActionForward("boardList.bo?page=" + nowPage, false);
		}else {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('댓글실패');");
			out.println("history.back();");
			out.println("</script>");
		}
		return forward;
	}

}
