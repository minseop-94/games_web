package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.BoardDeleteFormAction;
import action.BoardDeleteProAction;
import action.BoardDetailAction;
import action.BoardListAction;
import action.BoardModifyFormAction;
import action.BoardModifyProAction;
import action.BoardReplayFormAction;
import action.BoardReplayProAction;
import action.BoardWriteAction;
import action.BoardWriteFormAction;
import dto.ActionForward;

@WebServlet("*.bo")
public class BoardFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String requestURI = request.getRequestURI();
		System.out.println("requestURI : " + requestURI);
		String contextPath = request.getContextPath(); 
		String command = requestURI.substring(contextPath.length());
	
		System.out.println("command : " + command);  
				
		Action action = null;   
		ActionForward forward = null;
		
		
		if(command.equals("/boardWriteForm.bo")) { 
			 
			 forward = new ActionForward(); 
			 forward.setPath("/board/board_write.jsp");
			 forward.setRedirect(false);
							
		}else if(command.equals("/boardWritePro.bo")) { 
			action = new BoardWriteAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}			
		}
			
		else if(command.equals("/boardList.bo")) { // index, write, detail
			action = new BoardListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}			
		}
				
		else if(command.equals("/boardDetail.bo")) {
			action = new BoardDetailAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}			
		}
				
		else if(command.equals("/boardReplayForm.bo")) { 
			action = new BoardReplayFormAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}			
		}
		
		else if(command.equals("/boardReplayPro.bo")) { 
			action = new BoardReplayProAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}			
		}
		
		else if(command.equals("/boardModifyForm.bo")) { 
			action = new BoardModifyFormAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}			
		}
		
		else if(command.equals("/boardModifyPro.bo")) {
			action = new BoardModifyProAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}			
		}
		
		else if(command.equals("/boardDeleteForm.bo")) { 
			action = new BoardDeleteFormAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}			
		}
		
		else if(command.equals("/boardDeletePro.bo")) { 
			action = new BoardDeleteProAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}			
		}
		
		if(forward != null) {
			if(forward.isRedirect()) { 
				response.sendRedirect(forward.getPath());
			}else {  
				RequestDispatcher rdp = request.getRequestDispatcher(forward.getPath());
				rdp.forward(request, response);
			}
		}
	}

}
