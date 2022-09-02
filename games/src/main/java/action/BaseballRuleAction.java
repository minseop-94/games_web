package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.ActionForward;

public class BaseballRuleAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return new ActionForward("/baseball/baseballRule.jsp", false);
	}

}
