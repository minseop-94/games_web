package action;

import java.util.ArrayList;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.ActionForward;
import dto.SongDTO;
import svc.RandomPlayYearService;

public class RandomPlayYearAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 한글처리 - 이미 해둠
		ActionForward forward = null;
		ArrayList<SongDTO> list = new ArrayList<SongDTO>();
		// 요청 파라미터 조회 - 연도, 테마가 넘어올 텐데;;
		int year = 0;
		year = Integer.parseInt(request.getParameter("year")); // 일단 넘어가 볼까?
		
		System.out.println("year : " + year);
		
		HttpSession session = request.getSession();
		session.setAttribute("year", year);
		
		RandomPlayYearService randomPlayYearService = new RandomPlayYearService();
		list = randomPlayYearService.selectList(year);
		System.out.println("list.size() : " + list.size());
		
		// list를 넘겨야 되나? 아니면 매번 하나의 곡을 넘기는게 낫나? 확장을 생각해서 한개
		int random = new Random().nextInt(list.size());
		System.out.println("random : " + random);
		
		SongDTO songDto = list.get(random);
		request.setAttribute("songDto", songDto); 
		
		// 버퍼에서 받아야 해서 하나만 넘기는게 부담스럽지 않다.
		// 랜덤처리
		
		// request에 담기
		
		
		/* forward = new ActionForward("randomSongPlay.jsp", false); */
		
		// buffer 테스트용 jsp로 넘기기
		forward = new ActionForward("randomSongPlay.jsp", false);
		return forward;
	}

}
