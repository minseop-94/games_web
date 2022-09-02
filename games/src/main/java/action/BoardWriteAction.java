package action;

import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dto.ActionForward;
import dto.BoardBean;
import svc.BoardWriteService;

public class BoardWriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ActionForward forward = null;
		BoardBean boardBean = new BoardBean();
		

		String realFolder = "";
		String saveFolder = "boardUpload";
		int fileSize = 5 * 1024 * 1024; // 5MB
		
		ServletContext context = request.getServletContext();
		realFolder = context.getRealPath(saveFolder);
		
		MultipartRequest multi = new MultipartRequest(
								request,
								realFolder,
								fileSize,
								"UTF-8",
								new DefaultFileRenamePolicy()); // abc(1).txt, abc(2).txt
		boardBean.setBoard_name(multi.getParameter("board_name"));
		boardBean.setBoard_pass(multi.getParameter("board_pass"));
		boardBean.setBoard_subject(multi.getParameter("board_subject"));
		boardBean.setBoard_content(multi.getParameter("board_content"));		
		boardBean.setBoard_file(multi.getOriginalFileName((String)multi.getFileNames().nextElement()));
		
		BoardWriteService boardWriteService = new BoardWriteService();		
		boolean isWriteSuccess = boardWriteService.registerArticle(boardBean);
		
		if(!isWriteSuccess) { //
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('등록실패')");
			out.println("history.back();");
			out.println("</script>");
			
		}else { 
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/boardList.bo");
		}	

		return forward;
	}

}