<%@page import="java.util.Random"%>
<%@page import="dto.SongDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<!-- session에 저장된 year 정보를 불러와 selected 를 부여 -->

<style>
html,body{height:100%;width:100%;}
body{margin:0 auto, padding:0 auto;
background-image: url('images/bg3.jpg');
		 background-size: cover; /* background-position: center center;  */
		 background-repeat : no-repeat;
}
.container{
	display:flex;
	/* background-color: #191718; */
	
}
.logo{
	/* background-color: #68020f; */
	width:20%;
	height:30%;
}
#indexicon{
width:100%;
height:100%;
/* object-fit:cover; */
}

.content{
	/* background-color: #F3D849; */
	width:60%;
	align-items: center;
	display: table;
}

.outer{
display: table-cell;
vertical-align: middle;
text-align: center;
}

.inner{
display: inline-block;
}

.imagebox{
	/* background-color: #497faf; */
	width:10%;
	overflow:hidden;
	
}
.rightimg{
display: block;
width:40%;
height:40%;

}
#tapeimg{
width:100%;
height:100%;
object-fit:cover;
}

#playButton{
	width: 80pt; height: 30pt; font-size: 12pt;"
}
#answerButton{
	width: 80pt; height: 30pt; font-size: 12pt;"
}
#answerSpace{
	font-size: 5em;
	font-color: white;
}

</style>

</head>
<body>
<%-- <div id="include">
	<%@ include file="../index.jsp" %><br><br>
</div> --%>

 <!-- 서버에서 음악 데이터를 받아 <audio> 안에 넣는다. -->

<div class="container">
	<div class="logo">
		<a href = "index.jsp"><img id="indexicon" src=./images/indexhome.png align="left"></a>
	</div>
	<div class="content">
		<div class="outer">
			<div class="inner">
				<h3 class="incontent">노래 제목 맞추기!!</h3>
				<div class="incontent"><input type="image" id=tapeimg 
					src=./images/tape3.png></div>
				<div id="aboutSong">
<c:if test="${songDto != null}">
	${song.getTitle()}<br>
	
	<!-- audio 태그를 이용한 재생 -->
	<audio id="audio2" loop="loop" preload="auto"> 
		<source src="songs/${songDto.getMp3()}" type="audio/mp3">
	</audio> 


<!--  노래 다시 듣기(같은 시작점, 같은 노래) -->
<button id="playButton" onclick="play()">
    <span>RePlay</span>
</button> &nbsp;&nbsp;&nbsp;

<button id="answerButton" onclick="showAnswer()">
	<span>정답</span>
</button>

<!-- session 에 year 넘어 왔는지 체크 -->
<div id="selectedYear">${year}</div>

<div id="answerSpace" style="display:none">
	제목: ${songDto.getTitle()} <br> 
	가수: ${songDto.getSinger()} <br>
	년도: ${songDto.getYear()} <br>
	장르: ${songDto.getGenre()} <br>
</div>

<div>
<form action="randomPlayYear.song">

				<input type="image" id=icon1 src=./images/musicicon.gif>
					<select name="year" id="years" style="width: 80pt; height: 30pt; font-size: 12pt;">
						<!-- <option value="allTheme">뭐든 상관없다</option> -->
						<option value=2000>2000년대</option>
						<option value=2010>2010년대</option>
						<option value=2020>21,22년</option>
						<!-- <option value="1990">8090</option> -->
				</select>
		
				<input type="submit"
					style="width: 80pt; height: 30pt; font-size: 12pt;" value="게임하러 가기">
</form>
</div>
</c:if>		
</div>
				
				
				
			</div>
		</div>
	</div>
	<div class="imagebox">
	<!-- <img class="rightimg" src="images/bubblePick1.png" align="right"/>
	<img class="rightimg" src="images/bubblePick2.png" align="right"/>  배경이랑 겹침-->
	</div>
</div>

 
 
<%-- <div id="aboutSong">
<c:if test="${songDto != null}">
	${song.getTitle()}<br>
	
	<!-- audio 태그를 이용한 재생 -->
	<audio id="audio2" loop="loop" preload="auto"> 
		<source src="songs/${songDto.getMp3()}" type="audio/mp3">
	</audio> 


<!--  노래 다시 듣기(같은 시작점, 같은 노래) -->
<button id="playbutton" onclick="play()">
    <span>RePlay</span>
</button> &nbsp;&nbsp;&nbsp;

<button id="answerButton" onclick="showAnswer()">
	<span>정답</span>
</button>

<!-- session 에 year 넘어 왔는지 체크 -->
<div id="selectedYear">${year}</div>

<div id="answerSpace" style="display:none">
	제목: ${songDto.getTitle()} <br> 
	가수: ${songDto.getSinger()} <br>
	년도: ${songDto.getYear()} <br>
	장르: ${songDto.getGenre()} <br>
</div>

<form action="randomPlayYear.song">
<table>
			<tr>
				<td>
				
				<input type="image" id=icon1 src=./images/musicicon.gif>
					<select name="year" id="years">
						<!-- <option value="allTheme">뭐든 상관없다</option> -->
						<option value=2000>2000년대</option>
						<option value=2010>2010년대</option>
						<option value=2020>21,22년</option>
						<!-- <option value="1990">8090</option> -->
				</select></td>
			</tr>
			<tr>
				<td><input type="submit"
					style="width: 80pt; height: 30pt; font-size: 12pt;" value="게임하러 가기">
				</td>
			</tr>
</table>
</form>
</c:if>		
</div> --%>		
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
/* // playTime에 사용자가 지정한 길이를 넣기.
var playTime = 3;
playTime = document.getElementById("playTime").value;

console.log("playTime : " + playTime);  */

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


</body>
</html>