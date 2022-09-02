package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.ActionForward;

public class BaseBallAnswerFormAction implements Action {


	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ActionForward forward = new ActionForward("/baseball/baseball.jsp", false);
		return forward;
	}

}
