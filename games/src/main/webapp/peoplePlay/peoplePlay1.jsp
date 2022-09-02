<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	
	body{
		background-color: #212121;
		width:40%;
		margin: 0 auto;
	}
	
	
	#peopleImage{
		/* width:400px; */
		width:500px;
		height : 600px;
		align-content: center;
		float:lift;
	}
	
	#timer{
		color: white;
		float: right;
		font-size: 50px;
		font-color: red;
	}
	
</style>
<script>
	// 3초의 시간제한을 두기 위해 count를 줄이면서 보여주는 함수.
	
	var count = 3;
	var counter = setInterval(timer, 1000);
	
	
	function timer(){
		
		 if(count<=0){
			/* clearInterval(counter); */
			submitform();
			return;
		} 
		else if(count == 3){
			document.getElementById("timer").innerHTML = count;
			
		}
		else if(count == 2){
			document.getElementById("timer").innerHTML = count;
			
		}
		else if(count == 1){
			document.getElementById("timer").innerHTML = count;
			
		}
		count--;
		
		return; 
	}
	// 사용자가 누르지 않더라도, 3초뒤에 사진이 자연스레 변하게끔.
	function submitform(){
		document.transform.submit();
	}
	
	function stop(){
		 clearInterval(counter); 
		 return;
	}
	
	function showAnswer(){
		document.getElementById("answerSpace").style.display="block";
	}
	
</script>
</head>
<body>
<h1>랜덤 인물 퀴즈</h1>
<section id="people">
	<c:if test="${peopleDTO != null}">
		<img src="./images/${peopleDTO.img}" id="peopleImage" />
	</c:if>
</section>

<div id="timer" class="tracking-in-expand" ></div>

 <form action="peoplePlay.people" name="transform">
<input type="submit" value="RESTART"/>
</form> 

<input type="button" value="정답확인" onclick= "showAnswer()"/>
<input type="button" value="stop" onclick= "stop()"/>

<div id="answerSpace" style="display:none">
	이름: ${peopleDTO.getTitle()} <br> 
	설명: ${peopleDTO.getContent()} <br>
</div>

</body>
</html>