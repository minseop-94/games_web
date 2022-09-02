<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com"> 
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> 
<link href="https://fonts.googleapis.com/css2?family=Stylish&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
 <!-- 최소한의 예의를 위한 애니메이션 효과 -->
<style type="text/css">

a { text-decoration:none } /* a태그 밑줄 지우기 */


#co1::before {  
  transform: scaleX(0);
  transform-origin: bottom right;
}

#co1:hover::before {
  transform: scaleX(1);
  transform-origin: bottom left;
}

#co1::before {
  content: " ";
  display: block;
  position: absolute;
  top: 0; right: 0; bottom: 0; left: 0;
  inset: 20 0 0 0;
  background: hsl(0 100% 90%);
  z-index: -1;
  transition: transform .3s ease;
}

#co2::before {  
  transform: scaleX(0);
  transform-origin: bottom right;
}

#co2:hover::before {
  transform: scaleX(1);
  transform-origin: bottom left;
}

#co2::before {
  content: " ";
  display: block;
  position: absolute;
  top: 0; right: 0; bottom: 0; left: 0;
  inset: 0 0 0 0;
  background: hsl(60 100% 90%);
  z-index: -1;
  transition: transform .3s ease;
}

#co3::before {  
  transform: scaleX(0);
  transform-origin: bottom right;
}

#co3:hover::before {
  transform: scaleX(1);
  transform-origin: bottom left;
}

#co3::before {
  content: " ";
  display: block;
  position: absolute;
  top: 0; right: 0; bottom: 0; left: 0;
  inset: 0 0 0 0;
  background:hsl(105 100% 90%);
  z-index: -1;
  transition: transform .3s ease;
}

#co4::before {  
  transform: scaleX(0);
  transform-origin: bottom right;
}

#co4:hover::before {
  transform: scaleX(1);
  transform-origin: bottom left;
}

#co4::before {
  content: " ";
  display: block;
  position: absolute;
  top: 0; right: 0; bottom: 0; left: 0;
  inset: 0 0 0 0;
  background: hsl(215 100% 90%);
  z-index: -1;
  transition: transform .3s ease;
}

#co5::before {  
  transform: scaleX(0);
  transform-origin: bottom right;
}

#co5:hover::before {
  transform: scaleX(1);
  transform-origin: bottom left;
}

#co5::before {
  content: " ";
  display: block;
  position: absolute;
  top: 0; right: 0; bottom: 0; left: 0;
  inset: 0 0 0 0;
  background: hsl(285 100% 90%);
  z-index: -1;
  transition: transform .3s ease;
}

h3 {
  position: relative;
  font-size: 3rem;
}

/* html {
  block-size: 100%;
  inline-size: 100%;
} */

/* body {
  min-block-size: 100%;
  min-inline-size: 100%;
  margin: 0;
  box-sizing: border-box;
  display: grid;
  place-content: center;
  font-family: system-ui, sans-serif;
}
 */
/* @media (orientation: landscape) {
  body {
    grid-auto-flow: column;
  }
}
 */

 
/* https://www.creativosonline.org/ko/efectos-css-texto.html css 효과 참고*/
@import url(https://fonts.googleapis.com/css?family=Signika:700,300,600);

html, body { height: 100%; }
body { display: flex; justify-content: center; align-items: center; margin:20px 0; 
background-image: url('images/bg.PNG'); background-size: 100% 100%; background-position: center center; 
text-align:center; overflow:hidden; color:white; 
font-family: 'Stylish', sans-serif;
}

h1 {
 vertical-align: top;
 font-size:5em;
 font:bold 7.5vw/1.6 'Signika', sans-serif;
 user-select:none;
}

h1 span { display:inline-block; animation:float .2s ease-in-out infinite; }
 @keyframes float {
  0%,100%{ transform:none; }
  33%{ transform:translateY(-1px) rotate(-2deg); }
  66%{ transform:translateY(1px) rotate(2deg); }
}
body:hover span { animation:bounce .6s; }
@keyframes bounce {
  0%,100%{ transform:translate(0); }
  25%{ transform:rotateX(20deg) translateY(2px) rotate(-3deg); }
  50%{ transform:translateY(-20px) rotate(3deg) scale(1.1);  }
}

span:nth-child(4n) { color:hsl(50, 75%, 55%); text-shadow:1px 1px hsl(50, 75%, 45%), 2px 2px hsl(50, 45%, 45%), 3px 3px hsl(50, 45%, 45%), 4px 4px hsl(50, 75%, 45%); }
span:nth-child(4n-1) { color:hsl(135, 35%, 55%); text-shadow:1px 1px hsl(135, 35%, 45%), 2px 2px hsl(135, 35%, 45%), 3px 3px hsl(135, 35%, 45%), 4px 4px hsl(135, 35%, 45%); }
span:nth-child(4n-2) { color:hsl(155, 35%, 60%); text-shadow:1px 1px hsl(155, 25%, 50%), 2px 2px hsl(155, 25%, 50%), 3px 3px hsl(155, 25%, 50%), 4px 4px hsl(140, 25%, 50%); }
span:nth-child(4n-3) { color:hsl(30, 65%, 60%); text-shadow:1px 1px hsl(30, 45%, 50%), 2px 2px hsl(30, 45%, 50%), 3px 3px hsl(30, 45%, 50%), 4px 4px hsl(30, 45%, 50%); }

h1 span:nth-child(2){ animation-delay:.05s; }
h1 span:nth-child(3){ animation-delay:.1s; }
h1 span:nth-child(4){ animation-delay:.15s; }
h1 span:nth-child(5){ animation-delay:.2s; }
h1 span:nth-child(6){ animation-delay:.25s; }
h1 span:nth-child(7){ animation-delay:.3s; }
h1 span:nth-child(8){ animation-delay:.35s; }
h1 span:nth-child(9){ animation-delay:.4s; }
h1 span:nth-child(10){ animation-delay:.45s; }
h1 span:nth-child(11){ animation-delay:.5s; }
h1 span:nth-child(12){ animation-delay:.55s; }
h1 span:nth-child(13){ animation-delay:.6s; }
h1 span:nth-child(14){ animation-delay:.65s; }


#table1{	/* 타이틀 */
		/* border : 1px solid white; */
		text-align:center;
		width: 800px;
			
		}
		
#table2{	/* index */
		color:white;
		text-align:center;
		/* margin: 220px -400px 300px 400px;	/* 위 오른쪽 아래 왼쪽 */
		width: 400px;
		height: 100px;
		
		}
		
	#table3{	/* index */
	/* border : 1px solid white; */
	color:white;
	text-align:center;
	/* margin: 620px 80px 300px -80px;	/* 위 오른쪽 아래 왼쪽 */ 
		width: 400px;
				height: 60px;
		
		
	}		



#icon1{
		width: 55px;
		height: 55px;
		display : block;
		margin: auto;
		
	}
	


	

</style>


<script type="text/javascript"></script>

</head>

<body>


<!-- <input type=radio value="테마 O" name="needTheme"/> 테마O
<input type=radio value="테마 X" name="noTheme" checked/>테마X -->



<div style="position: fixed; left:440px; top:-85px;">
<table id = table1>

	<tr>
		<th><h1><span>F</span><span>U</span><span>N</span><span>S</span><span>.</span><span> </span><span>C</span><span>O</span><span>M</span></h1><th>
	</tr>
</table>
</div>


 <div style="position: fixed; left:650px; top:300px; line-height: 50px;">
<table id = table2>

	<tr>
		<th colspan=2><font size = "20pt">I n d e x</font></th>
	<tr>

	<tr>
		<td>
		<h3 id=co1>
		<a href = "baseballRule.ba"><font size="10pt" color="#fc206a">숫자 야구게임</font></a>
		</h3>
		</td>
		<td>
		<a href = "baseballRule.ba"><img id=icon1 src=./images/baseballicon.gif></a>
		</td>
	</tr>
	</table>
</div>

 <div style="position: fixed; left:645px; top:470px; line-height: 50px;">

<table id = table3>
	<tr>
		<td>
		<h3 id=co2>
		<a href = "movieRule.mo"><font size="10pt" color="#febc75">영화 제목 맞추기</font></a>
		</h3>
		</td>
		<td>
		<a href = "movieRule.mo"><img id=icon1 src=./images/movieicon.gif></a>
		</td>
	</tr>

	</table>
</div> 
	
<div style="position: fixed; left:645px; top:570px; line-height: 50px;">
<form action="peoplePlayRule.people">
	
 <table id = table3>
	
	<tr>
		<td>
		<h3 id=co3>
		<a href = "peoplePlayRule.people"><font size="10pt" color="#38cb93">인물 이름 맞추기</font></a>
		</h3>
 	</td>
		<td> 
		
			<input type="image" id=icon1 src=./images/celeicon.gif>
	
			<!-- <select name="theme">
				<option value="allTheme">뭐든 상관없다</option>
				<option value="inPopular">국내 유명인</option>
				<option value="outPopular">해외 유명인들</option>
				<option value="inRespect">국내 위인들</option>
				<option value="inGirlGroup">국내 걸그룹</option>
			</select> -->
 	</td>
	</tr>

	</table> 
</form>
</div>


<div style="position: fixed; left:645px; top:680px; line-height: 50px;">
<form action="randomPlayRule.song">
	
<table id = table3>


	<tr>
		<td>
		<h3 id=co4>
		<a href = "randomPlayRule.song"><font size="7em" color="#0159fd">노래 제목 맞추기</font></a></h3>
		</td>
		<td>
			<input type="image" id=icon1 src=./images/musicicon.gif>
		
		</td>
	</tr>
</table>
</form>
</div>


<div style="position: fixed; left:665px; top:770px; line-height: 50px;"> 
<table id = table3>
	<tr>
		<td><h3 id=co5>
		<a href="boardList.bo"><font size="10pt" color="#e185fd">게 시 판</font></a></h3>
		</td>
		<td>
		<a href = "boardList.bo"><img id=icon1 src=./images/boardicon.png></a>
		</td>
	</tr>
</table>
</div>

</body>
</html>