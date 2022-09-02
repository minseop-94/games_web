/**
 * 
 */
 
 
 
 // 변수 선언
	var num1, num2, num3, num4, strike, ball, no1, no2, no3, no4, display;

	// 초기화 함수
	function init(){
		// key1을 0부터 9사이의 값으로 입력
		
		num1 = Math.round(Math.random() * 9);
         num2 = num1;
         num3 = num2;
         num4 = num3;
		
		// key2를 key1과는 다른 값중에 0부터 9사이의 값으로 입력
		while(1){
			if(num2!=num1){
				break;
			}
			else{
				num2 = Math.round(Math.random() * 9);
			}
		}

		// num3를 num1, num2와는 다른 값중에 0부터 9사이의 값으로 입력
		while(1){
			if(num3!=num1 && num3!=num2){
				break;
			}
			else{
				num3 = Math.round(Math.random() * 9);
			}
		}
		// num4를 num1, num2, num3와는 다른 값중에 0부터 9사이의 값으로 입력

		while(1){
			if(num4!=num1 && num4!=num2  && num4!=num3){
				break;
			}
			else{
				num4 = Math.round(Math.random() * 9);
			}
		}
		
		//Document.getElementById() : 주어진 문자열과 일치하는 id 속성을 가진 요소를 찾고, 
		//이를 나타내는 Element 객체를 반환합니다.
		// 입력박스 no1로 포커스
		document.getElementById("no1").focus();
	}

	// 입력박스에 값이 들어온 경우 입력값 확인
	function check(obj){
		// 입력박스 no1에 값이 들어온 경우
		if(obj.id=="no1"){
			// 입력값이 숫자인지 확인하여 숫자가 아닌 경우 처리
			if(obj.value.charCodeAt(0) < 48 || obj.value.charCodeAt(0) > 57){
				obj.value = "";
				obj.value.focus();
			}
			else{
				// 입력박스 no2로 포커스
				document.getElementById("no2").focus();
			}
		}
		// 입력박스 no2에 값이 들어온 경우
		else if(obj.id=="no2"){
			// 입력값이 숫자인지 확인하여 숫자가 아닌 경우 처리
			if(obj.value.charCodeAt(0) < 48 || obj.value.charCodeAt(0) > 57){
				obj.value = "";
				obj.value.focus();
			}
			// 입력값이 입력박스 no1과 동일한지 확인하여 동일한 경우 처리
			else if(obj.value == document.getElementById("no1").value){
				obj.value = "";
				obj.value.focus();
			}
			else{
				// 입력박스 no3로 포커스
				document.getElementById("no3").focus();
			}
		}
		// 입력박스 no3에 값이 들어온 경우
		else if(obj.id=="no3"){
			// 입력값이 숫자인지 확인하여 숫자가 아닌 경우 처리
			if(obj.value.charCodeAt(0) < 48 || obj.value.charCodeAt(0) > 57){
				obj.value = "";
				obj.value.focus();
			}
			// 입력값이 입력박스 no1, no2와 동일한지 확인하여 동일한 경우 처리
			else if(obj.value == document.getElementById("no1").value || obj.value == document.getElementById("no2").value){
				obj.value = "";
				obj.value.focus();
			}
			else{
				// 입력박스 no3로 포커스
				document.getElementById("no4").focus();
			}
			
		}
			// 입력박스 no4에 값이 들어온 경우
			else if(obj.id=="no4"){
				// 입력값이 숫자인지 확인하여 숫자가 아닌 경우 처리
				if(obj.value.charCodeAt(0) < 48 || obj.value.charCodeAt(0) > 57){
					obj.value = "";
					obj.value.focus();
				}
				// 입력값이 입력박스 no1, no2, no3와 동일한지 확인하여 동일한 경우 처리
				else if(obj.value == document.getElementById("no1").value || obj.value == document.getElementById("no2").value || obj.value == document.getElementById("no3").value){
					obj.value = "";
					obj.value.focus();
				}
			
			else{
				// 결과 확인 함수 호출
				hit();
			}
		}
	}

	// 입력박스에 입력이 완료되면 결과 확인
	function hit(){
		// no1이라는 입력박스의 값을 no1이라는 변수에 담아 사용하기 편한형태로 처리
		no1 = document.getElementById("no1").value;
		no2 = document.getElementById("no2").value;
		no3 = document.getElementById("no3").value;
		no4 = document.getElementById("no4").value;
		//display는 입력한 값이 표시될 text박스 
		display = document.getElementById("display");

		// 입력박스의 값을 초기화
		document.getElementById("no1").value = '';
		document.getElementById("no2").value = '';
		document.getElementById("no3").value = '';
		document.getElementById("no4").value = '';


		// 스트라이크와 볼 변수를 초기화
		strike = 0;
		ball = 0;

		// 입력박스에 아무런 값도 입력하지 않은 경우 입력 오류 출력
		if(no1 == "" || no2 == "" || no3 == "" || no4 == ""){
			display.value = no1 + ' ' + no2 + ' ' + no3 + ' ' + no4 + ' ' + ' : ' + '입력 오류!' + '\n' + display.value;
		}
		else{
			// 입력값 no1이 key1과 같은 경우 스트라이크
			if(no1 == num1){
				strike++;
			}
			// 입력값 no1이 key2과 같은 경우 볼
			if(no1 == num2){
				ball++;
			}
			// 입력값 no1이 key3과 같은 경우 볼
			if(no1 == num3){
				ball++;
			}
			
			// 입력값 no1이 key4과 같은 경우 볼
			if(no1 == num4){
				ball++;
			}
			

			// 입력값 no2이 key1과 같은 경우 볼
			if(no2 == num1){
				ball++;
			}
			// 입력값 no2이 key2과 같은 경우 스트라이크
			if(no2 == num2){
				strike++;
			}
			// 입력값 no2이 key3과 같은 경우 볼
			if(no2 == num3){
				ball++;
			}
			
			// 입력값 no2이 key4과 같은 경우 볼
			if(no2 == num4){
				ball++;
			}

			// 입력값 no3이 key1과 같은 경우 볼
			if(no3 == num1){
				ball++;
			}
			// 입력값 no3이 num2과 같은 경우 볼
			if(no3 == num2){
				ball++;
			}
			// 입력값 no3이 num3과 같은 경우 스트라이크
			if(no3 == num3){
				strike++;
			}
			
			// 입력값 no3이 num4과 같은 경우 스트라이크
			if(no3 == num4){
				ball++;
			}
			
			// 입력값 no4이 num1과 같은 경우 볼
			if(no4 == num1){
				ball++;
			}
			// 입력값 no4이 num2과 같은 경우 볼
			if(no4 == num2){
				ball++;
			}
			// 입력값 no4이 num3과 같은 경우 볼
			if(no4 == num3){
				ball++;
			}
			// 입력값 no3이 num3과 같은 경우 스트라이크
			if(no4 == num4){
				strike++;
			}

			// 스트라이크가 4개인 경우
			if(strike == 4){
				display.value = no1 + ' ' + no2 + ' ' + no3 + ' ' + no4 + ' ' + ' : ' + 'HOME RUN!' + '\n' + display.value;
			}
			// 스트라이크와 볼이 1개도 없는 경우
			else if(strike==0 && ball==0){
				display.value = no1 + ' ' + no2 + ' ' + no3 + ' ' + no4 + ' ' + ' : ' + 'OUT!' + '\n' + display.value;
			}
			else{
				display.value = no1 + ' ' + no2 + ' ' + no3 + ' ' + no4 + ' ' + ' : ' + strike + ' S ' + ball + ' B ' + '\n' + display.value;
			}
			
			//뒷쪽의 display.value는 다음 입력값을 말한다
		}

		// 입력박스 no1로 포커스
		document.getElementById("no1").focus();
	}
		
		
		
		
         
		
	