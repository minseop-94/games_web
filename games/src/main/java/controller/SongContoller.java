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
		
		// �ѱ�ó��
		request.setCharacterEncoding("utf-8");
		response.setContentType("html/text;charset=utf-8");
		
		// ��û �Ķ���� ��ȸ
		String requestURI = request.getRequestURI();
		System.out.println("requestURI : " + requestURI);
		String contextPath = request.getContextPath();
		
		String command = requestURI.substring(contextPath.length());
		System.out.println("command : " + command);
		
		
		// �����Ͻ� ���� 
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
		
		// �帣���� �Ѿ�� ��
		if(command.equals("/randomPlayGenre.song")) {
		//	action = new randomPlayGenreAction(); 
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
		// forward �ѱ�� �۾� 
		if(forward != null) {
			if(forward.isRedirect()) { // �����̷�Ʈ�� ���
				response.sendRedirect(forward.getPath());
			}else { // �������� ���
				RequestDispatcher rdp = request.getRequestDispatcher(forward.getPath());
				rdp.forward(request, response);
			}
		}
	}//doProcess
	
	

}//class
