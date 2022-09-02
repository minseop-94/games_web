package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.ActionForward;
import dto.BoardBean;
import svc.BoardModifyProService;

public class BoardModifyProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) 
			throws Exception {
		ActionForward forward = null;
		boolean isModifySuccess = false;
		
		String page = request.getParameter("page");
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		String board_pass = request.getParameter("board_pass");

		BoardBean article = new BoardBean();
		BoardModifyProService boardModifyProService = new BoardModifyProService();
		boolean isRightUser = boardModifyProService.isArticleWriter(board_num, board_pass);
		
		if(!isRightUser) { // 글번호와 입력된 비밀번호가 일치하지 않으면
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('수정할 권한이 없습니다.');");
			out.println("history.back();");
			out.println("</script>");
		}else {
			article.setBoard_num(board_num);
			article.setBoard_subject(request.getParameter("board_subject"));
			article.setBoard_content(request.getParameter("board_content"));
			isModifySuccess = boardModifyProService.modifyArticle(article);
			
			if(!isModifySuccess) {
				response.setContentType("text/html; charset=utf-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('수정실패');");
				out.println("history.back();");
				out.println("</script>");
			}else {
				request.setAttribute("page", page);
				forward = new ActionForward("boardDetail.bo?board_num="+article.getBoard_num(), false);
			}
		}
		
		return forward;
	}

}
