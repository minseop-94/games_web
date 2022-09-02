package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.ActionForward;

public class BoardWriteFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) 
			throws Exception {
		ActionForward forward = new ActionForward();
		forward.setPath("/board/board_write.jsp");
		forward.setRedirect(false);
		return forward;
	}

}
