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
	// 3���� �ð������� �α� ���� count�� ���̸鼭 �����ִ� �Լ�.
	
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
	// ����ڰ� ������ �ʴ���, 3�ʵڿ� ������ �ڿ����� ���ϰԲ�.
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
<h1>���� �ι� ����</h1>
<section id="people">
	<c:if test="${peopleDTO != null}">
		<img src="./images/${peopleDTO.img}" id="peopleImage" />
	</c:if>
</section>

<div id="timer" class="tracking-in-expand" ></div>

 <form action="peoplePlay.people" name="transform">
<input type="submit" value="RESTART"/>
</form> 

<input type="button" value="����Ȯ��" onclick= "showAnswer()"/>
<input type="button" value="stop" onclick= "stop()"/>

<div id="answerSpace" style="display:none">
	�̸�: ${peopleDTO.getTitle()} <br> 
	����: ${peopleDTO.getContent()} <br>
</div>

</body>
</html>