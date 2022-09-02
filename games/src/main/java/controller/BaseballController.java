package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.BaseBallAnswerFormAction;

import action.BaseballRuleAction;
import dto.ActionForward;

/**
 * Servlet implementation class BaseballController
 */
@WebServlet("*.ba")
public class BaseballController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BaseballController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 한글처리
				request.setCharacterEncoding("utf-8");
				response.setContentType("text/html; charset=utf-8");
					
				// 요청 uri를 요청 url-pattern을 얻어오는 작업
				String requestURI = request.getRequestURI(); // 요청한 URL를 가져온다. 즉, /DogShop/register.dog
				System.out.println("requestURI : " + requestURI);
						
				// 컨텍스트 패스를 가져온다.
				String contextPath = request.getContextPath(); // /프로젝트명 => /DogShop
						
				// 전체 uri에서 컨텍스트 패스를 제외한 뒷 부분을 가져온다.
				String command = requestURI.substring(contextPath.length());
						
				
				System.out.println("command : " + command);  // ex. dogList.dog, url-pattern값(매핑값)
						
				Action action = null;   // 어떤 Action을 수행할 건지 해당 Action 객체를 담을 객체
				ActionForward forward = null; //  화면으로 포워딩 시키기 위한 객체를 담을 객체

				// 요청에 따른 비즈니스 로직을 수행하는 작업
				if(command.equals("/baseballRule.ba")) {  // 야구게임 룰
					action = new BaseballRuleAction();   
					try {
						forward = action.execute(request, response);
					}catch(Exception e) {
						e.printStackTrace();
						}
					}
				
				else if(command.equals("/baseball.ba")) {	//야구게임 정답폼으로 이동
					action = new BaseBallAnswerFormAction();   
					try {
						forward = action.execute(request, response);
					}catch(Exception e) {
						e.printStackTrace();
					}
					}
				
				
			
				// 응답처리	
						if(forward != null) {
							if(forward.isRedirect()) { // 리다이렉트일 경우
								response.sendRedirect(forward.getPath());
							}else { // 포워드일 경우
								RequestDispatcher rdp = request.getRequestDispatcher(forward.getPath());
								rdp.forward(request, response);
							}

							}

}

	
}