package action;

import java.util.ArrayList;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.ActionForward;
import dto.PeopleDTO;
import svc.PeoplePlayService;

// 1. (유저들이 theme을 선택하면 테마를 받아서) db에 theme가 맞는 애들만 갖고 와서 
// 2. 랜덤으로 넘긴다.

public class PeoplePlayAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		// 한글처리 : controller가 했다.
		
		// 요청 파라미터 조회 : 사용자가 theme을 선택했다면 
		String theme = null;
		// 테마가 나뉘지만, 로직은 같으니까!! theme을 넘어온 값에 따라 바꾸는 작업
		
		theme = request.getParameter("theme");
		
		// theme에 뭐가 잡혔는지 확인
		System.out.println("theme : " + theme);
		
		
		// 비니지스 로직
		
		
		PeoplePlayService peoplePlayService = new PeoplePlayService();
		
		// 입력받은 theme에 맞게 리스트를 가지고 왔다.
		ArrayList<PeopleDTO> peopleList = peoplePlayService.getPeoplePlay(theme);	
		System.out.println("peopleList.size() : " + peopleList.size());
		// 그냥 바로 peopleList애서 랜덤하게 추출해서 보낸다.
		int random = new Random().nextInt(peopleList.size());
		System.out.println("random : " + random);
		PeopleDTO peopleDTO = peopleList.get(random);
		
		// 이제 id 로 랜덤하게 만들어서 하나의 사진만 request에 담아서 넘긴다.
		
		// id값들을 배열에 담아서 그 배열안에서 랜덤한 값이 나오도록 만든다. 
		/* ArrayList<Integer> idList = new ArrayList(); */
		
		/*
		 * for(int i = 0; i < peopleList.size(); i++) {
		 * idList.add(peopleList.get(i).getId());
		 * 
		 * }
		 */
		
		// id배열 을 반복하는 i 값을 랜덤으로 잡는다. 최소= 0 최데 = 배열의 길이 
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
