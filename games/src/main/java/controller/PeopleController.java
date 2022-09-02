package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.PeoplePlayAction;
import action.PeoplePlayRuleAction;
import dto.ActionForward;

/**
 * Servlet implementation class PeopleController
 */
@WebServlet("*.people")
public class PeopleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PeopleController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// �ѱ� ó��
		request.setCharacterEncoding("utf-8");
		response.setContentType("html/text;charset=utf-8");
		
		// ��û �Ķ���� ��ȸ
		String requestURI = request.getRequestURI();
		System.out.println("requestURI = " + requestURI);
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		System.out.println("command = " + command);
		
		Action action = null;
		ActionForward forward = null;
		
		// �� ��û�� �����Ͻ� ����
		
		//���������� �̵�(�̿ϼ�!!!!!!)
		if(command.equals("/peoplePlayRule.people")) {
			action = new PeoplePlayRuleAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		
		
		// theme�� �޾ƿ� ���(��, all �� �ƴҶ�)
		if(command.equals("/peoplePlay.people")) {
			action = new PeoplePlayAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		/* System.out.println("command : " + command); */
		// home ���� ���ư���
		 if(command.equals("/home.people")) {
			forward = new ActionForward("index.jsp",false);
		}
		
		// theme�� all �̶� ��� ���� �� ã�ƿ� ��.
		// �̿Ϸ�;;;
		else if(command.equals("/peopleAll.people")) {
			action = new PeoplePlayAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		
		
		
		
		
		
		
		if(forward != null) {
			if(forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			}
			else {
				RequestDispatcher rdp = request.getRequestDispatcher(forward.getPath());
				rdp.forward(request, response);
			}
		}
		
	}//doProcess
	
	

}//class
