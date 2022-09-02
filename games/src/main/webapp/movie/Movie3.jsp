<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link href="./reset.css" rel="stylesheet"> 
<link href="./button.css" rel="stylesheet">
<head>
<link rel="preconnect" href="https://fonts.googleapis.com"> 
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> 
<link href="https://fonts.googleapis.com/css2?family=Stylish&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 body{background-image: url('images/bg5.jpg');
 background-size: cover; /* background-position: center center;  */
 background-repeat : no-repeat;
  font-family: 'Stylish', sans-serif;
 
 }
	#table1{
	width: 330px;
	}

	#movieform{
		width: 800px;
		height: 500px;
/* 		border: 1px solid black;  */
		margin: auto;		
	}
	#icon1{
		width: 50px;
		height: 50px;
		display : block;
		margin: auto;
		
		
	}
	#cinema{
		width: 680px;
		height: 380px;
		display : block;
		margin: auto;	
	}
	
	h1{text-align: center;  color:white;}
	h2{text-align: center;  color:white;}
	table{
			color:white;
			text-align:center;
			margin:auto;	/* 수평 가운데 정렬 */
			width: 400px;
		}
	th,td {padding : 10px;}
	
	#indexicon{
		width: 150px;
		height: 80px;
		display : block;
		margin: 3px 8px;
	
</style>

	<script type="text/javascript" src="script/movie.js"></script>
</head>

<body onload="gwansang();" bgcolor = "#212121">
<a href = "index.jsp"><img id="indexicon" src=./images/indexhome.png align="left"></a>
<div style="position: fixed; left:460px; top:30px;">

<table id = table1>
	<tr>
	<td>
		<img id="icon1" src=./images/movie.gif align="middle">
	</td>
	<td>
		<h1>영화 맞추기</h1>
	<td>
		<img id="icon1" src=./images/movie.gif align="middle">
	</td>
	</tr>
</table>

	<h1> =  재생 버튼을 눌러 시작하세요  = </h1>
	
	<section id = "movieform">
	<img id="cinema" src=./images/gwansang_blur.jpg>
	
	<table>
	
	<tr>
		<td><h3>Hint 1</h3></td>
		<td>
			<img id="btnPlay1" style="WIDTH: 40pt; HEIGHT: 40pt;" src=./images/play_icon.jpg> 
			<!-- <button id="btnPlay1" style="WIDTH: 60pt; HEIGHT: 25pt; font-size: 12pt;"> 재생 </button> &nbsp; -->
			<img id="btnPause1" style="WIDTH: 40pt; HEIGHT: 40pt;" src=./images/pause_icon.jpg>
			<img id="btnStop1" style="WIDTH: 40pt; HEIGHT: 40pt;" src=./images/stop_icon.jpg>
		</td>
	
	</tr>
	<tr>
		<td><h3>Hint 2</h3></td>
		<td>
			<img id="btnPlay2" style="WIDTH: 40pt; HEIGHT: 40pt;" src=./images/play_icon.jpg>
			<!-- <button id="btnPlay1" style="WIDTH: 60pt; HEIGHT: 25pt; font-size: 12pt;"> 재생 </button> &nbsp; -->
			<img id="btnPause2" style="WIDTH: 40pt; HEIGHT: 40pt;" src=./images/pause_icon.jpg>
			<img id="btnStop2" style="WIDTH: 40pt; HEIGHT: 40pt;" src=./images/stop_icon.jpg>
		</td>
	</tr>
	</table>
	
<form action = "movie4.mo" method = "post" name = "form">
	<table>
	<tr>
		<td> 정답 : &nbsp;
		 <input type='text' id ='asn' name='asn' size='15'>&nbsp;
		</td>
		<td>
			
			<input type='button' class="w-btn w-btn-indigo" style="WIDTH: 60pt; HEIGHT: 30pt; font-size: 12pt;" value='정답확인' onclick="return confirm3()">&nbsp;
			<input type='submit' class="w-btn w-btn-indigo" style="WIDTH: 60pt; HEIGHT: 30pt; font-size: 12pt;" value='다음문제'>&nbsp;
		</td>
		
	</tr>
	</table>
</form>
</section>
</div>
</body>
</html>