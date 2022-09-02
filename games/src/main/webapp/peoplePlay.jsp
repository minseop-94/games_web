<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<link rel="preconnect" href="https://fonts.googleapis.com"> 
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> 
<link href="https://fonts.googleapis.com/css2?family=Stylish&display=swap" rel="stylesheet">
<link href="./reset.css" rel="stylesheet"> 
<link href="./button.css" rel="stylesheet"> 
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>
	
	#people{
	
	}
	
	body{
	background-image: url('images/bg2.jpg');
	background-size: cover; /* background-position: center center;  */
	background-repeat : no-repeat;
		margin: 0 auto;
		  font-family: 'Stylish', sans-serif;
		
	}
	.tracking-in-expand {
	-webkit-animation: tracking-in-expand 0.5s 3 both;
	        animation: tracking-in-expand 0.5s 3 both;
	}
	/* https://animista.net/play/text/tracking-in/tracking-in-expand */
	@-webkit-keyframes tracking-in-expand{0%{letter-spacing:-.5em;opacity:0}40%{opacity:.6}100%{opacity:1}}@keyframes tracking-in-expand{0%{letter-spacing:-.5em;opacity:0}40%{opacity:.6}100%{opacity:1}}
	
	#peopleImage{
		
		width:550px;
		height:600px;
		align-content: center;
		float:lift;
	}
	
	#timer{
		float: right;
		font-size: 50px;
		color: white;
	}
	
	h1{text-align: center;  
	font-size: 30pt;
	color:white;}
	
	#indexicon{
		width: 150px;
		height: 80px;
		display : block;
		margin: 10px 13px;
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
<a href = "index.jsp"><img id="indexicon" src=./images/indexhome.png align="left"></a>

<div style="position: fixed; left:570px; top:0px;">
<h1>랜덤 인물 퀴즈</h1>
<section id="people">
	<c:if test="${peopleDTO != null}">
		<img src="images/${peopleDTO.img}" id="peopleImage" />
	</c:if>
</section>

<div id="timer" class="tracking-in-expand" ></div>

<form action="peoplePlay.people" name="transform">
<input type="hidden"  name="theme" value="${peopleDTO.theme}"/>
<!-- <input type="submit" value="RESTART"> -->
</form>
<img style="WIDTH: 40pt; HEIGHT: 40pt;" src=./images/return.gif onclick="location.reload();">

<img  style="WIDTH: 40pt; HEIGHT: 40pt;" src=./images/pause_icon.jpg onclick= "stop()">
<!-- <input type="button" value="STOP" onclick= "stop()"> -->
<div class="container">

<input type="button" class="w-btn w-btn-indigo" value="정답확인" onclick= "showAnswer()"/>

<!-- <form action="home.people">
	<input type="submit" value="메인으로">
</form> -->

</div>
<div id="answerSpace" style=" position: fixed; left:1250px; top:330px; display:none; color:white; font-size: 3em;">
	이름: ${peopleDTO.getTitle()} <br> 
	설명: ${peopleDTO.getContent()} <br>
</div>
</div>
</body>
</html>