package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.ActionForward;
import svc.BoardDeleteProService;

public class BoardDeleteProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ActionForward forward = null;
		
		// 요청 파라미터 조회
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		String board_pass = request.getParameter("board_pass");
		String nowPage = request.getParameter("page");
		
		// 비즈니스 로직
		BoardDeleteProService boardDeleteProService = new BoardDeleteProService();
		boolean isArticleWriter = boardDeleteProService.isArticleWriter(board_num, board_pass);
		if(!isArticleWriter) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('삭제할 권한이 없습니다.');");
			out.println("history.back();");
			out.println("</script>");
		}else {
			boolean isDeleteSuccess = boardDeleteProService.removeArticle(board_num);
			if(!isDeleteSuccess) {
				response.setContentType("text/html; charset=utf-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('삭제실패');");
				out.println("history.back();");
				out.println("</script>");
			}else {
				forward = new ActionForward("boardList.bo?page=" + nowPage, true);
			}
		}
		return forward;
	}

}
