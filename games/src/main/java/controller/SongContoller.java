package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.RandomPlayRule;
import action.RandomPlayYearAction;
import dto.ActionForward;


@WebServlet("*.song")
public class SongContoller extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public SongContoller() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doProcess(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		// 한글처리
		request.setCharacterEncoding("utf-8");
		response.setContentType("html/text;charset=utf-8");
		
		// 요청 파라미터 조회
		String requestURI = request.getRequestURI();
		System.out.println("requestURI : " + requestURI);
		String contextPath = request.getContextPath();
		
		String command = requestURI.substring(contextPath.length());
		System.out.println("command : " + command);
		
		
		// 비지니스 로직 
		ActionForward forward = null;
		Action action = null;
		
		if(command.equals("/randomPlayRule.song")) {
			action = new RandomPlayRule(); 
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		if(command.equals("/randomPlayYear.song")) {
			action = new RandomPlayYearAction(); 
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		// 장르별로 넘어올 때
		if(command.equals("/randomPlayGenre.song")) {
		//	action = new randomPlayGenreAction(); 
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
		// forward 넘기기 작업 
		if(forward != null) {
			if(forward.isRedirect()) { // 리다이렉트일 경우
				response.sendRedirect(forward.getPath());
			}else { // 포워드일 경우
				RequestDispatcher rdp = request.getRequestDispatcher(forward.getPath());
				rdp.forward(request, response);
			}
		}
	}//doProcess
	
	

}//class
