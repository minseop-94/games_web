package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.ActionForward;
import dto.BoardBean;
import dto.PageInfo;
import svc.BoardListService;

public class BoardListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ActionForward forward = new ActionForward();
		
		ArrayList<BoardBean> articleList = new ArrayList<>();
		int page = 1;
		int limit = 10;   // 한 페이지에 표시될 게시글의 수, 페이지수의 10
		
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		BoardListService boardListService = new BoardListService(); // 총 리스트의 수를 얻어오는 작업
		int listCount = boardListService.getListCount();
		articleList = boardListService.getArticleList(page, limit);
		int maxPage = (int)((double)listCount/limit+0.95);
		// 현재 페이지에서 보여줄 시작 페이지 수 
		/* 한 화면에 10개의 페이지를 보여줄 것이다. 현재페이지(page) = 1 , 마지막페이지 = 10 
		 * page   startPage   endPage     page    srartNum       endNum
		 * 1        1          10           1        1            10
		 * 2        2          11           2        11           20 
		 * 3        3          12
		 * */
		int startPage = (((int)((double)page / 10 + 0.9)) - 1) * 10 + 1;
		// 현재 페이지에서 보여줄 마지막 페이지 수 : 10, 20, 30....
		int endPage = startPage + 10 - 1;
		
		if(endPage > maxPage) endPage = maxPage;
		
		PageInfo pageInfo = new PageInfo();
		pageInfo.setEndPage(endPage);
		pageInfo.setListCount(listCount);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setStartPage(startPage);
		pageInfo.setPage(page);
		
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("articleList", articleList);
		
		forward.setPath("/board/board_list.jsp");
		forward.setRedirect(false);
		return forward;
	}

}

