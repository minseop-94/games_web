package action;

import java.util.ArrayList;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.ActionForward;
import dto.PeopleDTO;
import svc.PeoplePlayService;

// 1. (�������� theme�� �����ϸ� �׸��� �޾Ƽ�) db�� theme�� �´� �ֵ鸸 ���� �ͼ� 
// 2. �������� �ѱ��.

public class PeoplePlayAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		// �ѱ�ó�� : controller�� �ߴ�.
		
		// ��û �Ķ���� ��ȸ : ����ڰ� theme�� �����ߴٸ� 
		String theme = null;
		// �׸��� ��������, ������ �����ϱ�!! theme�� �Ѿ�� ���� ���� �ٲٴ� �۾�
		
		theme = request.getParameter("theme");
		
		// theme�� ���� �������� Ȯ��
		System.out.println("theme : " + theme);
		
		
		// ������� ����
		
		
		PeoplePlayService peoplePlayService = new PeoplePlayService();
		
		// �Է¹��� theme�� �°� ����Ʈ�� ������ �Դ�.
		ArrayList<PeopleDTO> peopleList = peoplePlayService.getPeoplePlay(theme);	
		System.out.println("peopleList.size() : " + peopleList.size());
		// �׳� �ٷ� peopleList�ּ� �����ϰ� �����ؼ� ������.
		int random = new Random().nextInt(peopleList.size());
		System.out.println("random : " + random);
		PeopleDTO peopleDTO = peopleList.get(random);
		
		// ���� id �� �����ϰ� ���� �ϳ��� ������ request�� ��Ƽ� �ѱ��.
		
		// id������ �迭�� ��Ƽ� �� �迭�ȿ��� ������ ���� �������� �����. 
		/* ArrayList<Integer> idList = new ArrayList(); */
		
		/*
		 * for(int i = 0; i < peopleList.size(); i++) {
		 * idList.add(peopleList.get(i).getId());
		 * 
		 * }
		 */
		
		// id�迭 �� �ݺ��ϴ� i ���� �������� ��´�. �ּ�= 0 �ֵ� = �迭�� ���� 
		// https://velog.io/@on-n-on-turtle/java-Math.random-%EC%9B%90%ED%95%98%EB%8A%94-%EB%B2%94%EC%9C%84%EA%B9%8C%EC%A7%80-%EB%A7%8C%EB%93%9C%EB%8A%94-%EB%B2%95
		// int random = (int)Math.random()*(((idList.size()-1) - 0) + 1) + 0; 
		/*
		 * Random random = new Random(); int randomList = random.nextInt(idList.size());
		 * System.out.println("randomList : " + randomList);
		 * 
		 * int randomPeopleId = idList.get(randomList);
		 * System.out.println("randomPeopleId : " + randomPeopleId);
		 * 
		 * PeopleDTO peopleDTO = null;
		 * 
		 * for(int i=0; i < peopleList.size(); i++) { if(randomPeopleId ==
		 * peopleList.get(i).getId()) { peopleDTO = peopleList.get(i); break; } }
		 */
		
		request.setAttribute("peopleDTO", peopleDTO);
		
		forward = new ActionForward("peoplePlay.jsp", false);
		return forward;
	}

}
