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
		// �ѱ�ó�� - �̹� �ص�
		ActionForward forward = null;
		ArrayList<SongDTO> list = new ArrayList<SongDTO>();
		// ��û �Ķ���� ��ȸ - ����, �׸��� �Ѿ�� �ٵ�;;
		int year = 0;
		year = Integer.parseInt(request.getParameter("year")); // �ϴ� �Ѿ ����?
		
		System.out.println("year : " + year);
		
		HttpSession session = request.getSession();
		session.setAttribute("year", year);
		
		RandomPlayYearService randomPlayYearService = new RandomPlayYearService();
		list = randomPlayYearService.selectList(year);
		System.out.println("list.size() : " + list.size());
		
		// list�� �Ѱܾ� �ǳ�? �ƴϸ� �Ź� �ϳ��� ���� �ѱ�°� ����? Ȯ���� �����ؼ� �Ѱ�
		int random = new Random().nextInt(list.size());
		System.out.println("random : " + random);
		
		SongDTO songDto = list.get(random);
		request.setAttribute("songDto", songDto); 
		
		// ���ۿ��� �޾ƾ� �ؼ� �ϳ��� �ѱ�°� �δ㽺���� �ʴ�.
		// ����ó��
		
		// request�� ���
		
		
		/* forward = new ActionForward("randomSongPlay.jsp", false); */
		
		// buffer �׽�Ʈ�� jsp�� �ѱ��
		forward = new ActionForward("randomSongPlay.jsp", false);
		return forward;
	}

}
