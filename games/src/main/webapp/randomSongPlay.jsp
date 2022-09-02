<%@page import="java.util.Random"%>
<%@page import="dto.SongDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
<link rel="preconnect" href="https://fonts.googleapis.com"> 
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> 
<link href="https://fonts.googleapis.com/css2?family=Stylish&display=swap" rel="stylesheet">
<link href="./reset.css" rel="stylesheet"> 
<link href="./button.css" rel="stylesheet">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- session에 저장된 year 정보를 불러와 selected 를 부여 -->

<style>
body, html{height:100%; width:100%;}
body{
	background-image: url('images/bg5.jpg');
	background-size: 100%; /* background-position: center center;  */
	background-repeat : no-repeat;
		margin: auto;
	color : white;
  font-family: 'Stylish', sans-serif;
	
	}

#title_sing{
	animation: scale-up-center 2s ease-in-out forward;
}
/**
 * ----------------------------------------
 * animation scale-up-center
 * ----------------------------------------
 */
@-webkit-keyframes scale-up-center {
  0% {
    -webkit-transform: scale(0.5);
            transform: scale(0.5);
  }
  100% {
    -webkit-transform: scale(1);
            transform: scale(1);
  }
}
@keyframes scale-up-center {
  0% {
    -webkit-transform: scale(0.5);
            transform: scale(0.5);
  }
  100% {
    -webkit-transform: scale(1);
            transform: scale(1);
  }
}

	#indexicon{
		width: 150px;
		height: 80px;
		display : block;
		margin: 10px 13px;
		}
	#icon1{
		width: 48px;
		height: 48px;
		display : block;
		margin: auto;
		}
	#table1{
		width: 300px;
		height: 100px;	margin: auto;
		text-align:center;
	}	
		#ipod{
		width: 350px;
		height:600px;
		display : block;
		margin: auto;
		}
		
</style>

</head>
<body>
<a href = "index.jsp"><img id="indexicon" src=./images/indexhome.png align="left"></a>

<div style="position: fixed; left:660px; top:70px;">

 <!-- 서버에서 음악 데이터를 받아 <audio> 안에 넣는다. -->

 <span style="font-size:30pt" id="title_sing">
 	${year}년대 노래 제목 맞추기!!
 </span>
 </div>
 
<div style="position: fixed; left:690px; top:180px;">
<img id="ipod" src=./images/iPod.png align="middle">
</div> 
 
<div style="position: fixed; left:700px; top:350px;" id="aboutSong">
<c:if test="${songDto != null}">
	${song.getTitle()}<br>
	
	<!-- audio 태그를 이용한 재생 -->
	<audio id="audio2" loop="loop" preload="auto"> 
		<source src="songs/${songDto.getMp3()}" type="audio/mp3">
	</audio> 
	
<!-- 노래 재생 시간을 range로 조정(1,3,5) -->
<div style="position: fixed; left:785px; top:290px;">
	<span style="font-size:18pt">재생시간 설정하기</span><br><br>
	<span id="showTime"></span>
  <input type="range" id="playTime"
         min="1" max="5" step="2" 
         oninput="document.getElementById('showTime').innerHTML=this.value+'초';">
  <label for="playTime">몇초?</label>
</div>  
<div style="position: fixed; left:710px; top:525px;">
<!--  노래 다시 듣기(같은 시작점, 같은 노래) -->
<table id="table1">
	<tr>
		<td>	
		<img id="icon1" src=./images/next1.gif onclick="location.reload(); play();"> &nbsp;&nbsp;  
		
		<img id="icon1" src=./images/return.gif onclick="play()">&nbsp;&nbsp;  
		
		<img id="icon1" src=./images/next2.gif onclick="location.reload(); play();">
	
		</td>
	</tr>
	
	<tr>
		<td>
			<br><br><br><br><br>
			<button class="w-btn w-btn-indigo" style="WIDTH: 60pt; HEIGHT: 30pt; font-size: 12pt;" id="answerButton" onclick="showAnswer()">
			<span>정답</span>
			</button> 
		</td>
	</tr>
</table>
</div>
<!-- session 에 year 넘어 왔는지 체크 -->
<%-- <div id="selectedYear">${year}</div> --%>

<div id="answerSpace" style="position: fixed; left:1070px; top:550px; text-align:left; font-size:20pt; display:none;">

	제목: ${songDto.getTitle()} <br> 
	가수: ${songDto.getSinger()} <br>
	년도: ${songDto.getYear()} <br>
	장르: ${songDto.getGenre()} <br>
	
</div>		
</c:if>				
<script> 
// 1~100 사이의 정수 랜덤 선정
var randomStart = Math.floor(Math.random()*100);
console.log("randomStart : " +randomStart);

myAudio=document.getElementById('audio2');
// 오디오에 이벤트 걸기 

// 오디오 로딩 error 를 해결하기 위해
// 에러 : 
playPromise = myAudio.play();
 if (playPromise !== undefined) {
    playPromise.then(_ => {
      // Automatic playback started!
      // Show playing UI.
     
    	myAudio.addEventListener('canplaythrough', timeplay());
    })
    .catch(error => {
      // Auto-play was prevented
      // Show paused UI.
    });
  }	
	
/* myAudio.addEventListener('canplaythrough', timeplay()); */
// 오디오 이벤트 함수 
function timeplay() {
        if(this.currentTime < randomStart){this.currentTime = randomStart }
        this.play();
        setTimeout(function(){
       		 			document.getElementById('audio2').pause();
		  			}, 3000);
}
// replay 버튼 이벤트 함수 
function play(){
	if(randomStart > 3){
		myAudio.currentTime = randomStart - 3;
	}
	myAudio.play();
	setTimeout(function(){
			document.getElementById('audio2').pause();
	}, 3000);
}

// answer 관련

function showAnswer(){
	document.getElementById("answerSpace").style.display="block";
}
// playTime에 사용자가 지정한 길이를 넣기.
var playTime = 3;
playTime = document.getElementById("playTime").value;

console.log("playTime : " + playTime); 

<!-- select option에서 선택된 값을 유지 하도록  -->
function selectYear(){
    var years = document.getElementById("years");
    for(var i=0; i<years.length; i++){
        if(years[i].value == ${year}){
        	years[i].selected = true;
        }
        console.log("years[i].value : " + years[i].value);
    }
}
if(${year} != null){
var sessionYear = ${year}
 /* document.addEventListener("DOMContentLoaded", function() {
	selectYear();
	});  */
window.onload = selectYear();

}  

</script>


</div>
</body>
</html>