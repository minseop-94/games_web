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
<title>노래 제목 맞추기</title>
	<style>
	 body{background-image: url('images/bg3.jpg');
		 background-size: cover; /* background-position: center center;  */
		 background-repeat : no-repeat;
		   font-family: 'Stylish', sans-serif;
		 
		 }
		#table1{
			witdh :100px;
			text-align : center;
			margin : auto;
		}
	
		#table2{
			width : 700px;
			height : 400px;
			border : 10px ridge white;
			color : white;
			text-align : center;
			margin : auto;
		}
		#icon1{
		width: 100px;
		height: 100px;
		display : block;
		margin: auto;
		
		
	}
		h1{
		color : white;
		text-align:center;
		}
		
		#rule1{
		font-size: 25pt;
		
		}
		#indexicon{
		width: 150px;
		height: 80px;
		display : block;
		margin: 3px 8px;
		}
		
	</style>
</head>
<body>
<a href = "index.jsp"><img id="indexicon" src=./images/indexhome.png align="left"></a>

<div style="position: fixed; left:490px; top:20px;">

<br>
<h1> 랜덤 노래 맞추기 </h1><br>
<form action="randomPlayYear.song" method="post" name = "year">
	<table id = table1>
		<tr>
			<td>
			<img id="icon1" src=./images/tape.gif align="middle">
			</td>
			<td>
			<img id="icon1" src=./images/wave.gif align="middle">
			</td>
			<td>
			<img id="icon1" src=./images/headphone.jpeg align="middle">
			</td>
		</tr>
	</table>
	
	<br>
	<br>
	<br>
	<table id = table2>
	<tr>
		<td><h1>게임 규칙</h1></td>
	</tr>		
		<tr>
		
			<td id = "rule1">
			랜덤으로 재생되는 노래의 제목을 맞춰라!<br>
			연도를 선택하면 연도별 노래가 랜덤재생 됩니다 <br>
			어디서부터 시작할지 또한 랜덤입니다!<br>
			*주의* 버튼을 누르면 노래가 바로 재생되니<br>
			주의를 기울여 주세요!!
			</td>
		</tr>
	<tr>
		<td>
		
			<select name="year" id="years">
				<!-- <option value="allTheme">뭐든 상관없다</option> -->
				<option value=2000>2000년대</option>
				<option value=2010>2010년대</option>
				<option value=2020>21,22년</option>
				<!-- <option value="1990">8090</option> -->
			</select>
		</td>
	</tr>
		<tr>
			<td>
			<input type="submit" class="w-btn w-btn-indigo" style="width: 80pt; height: 30pt; font-size: 12pt;" value = "게임하러 가기" >
			</td>
		</tr>
	</table>
	<br>
	<br>
	
</form>
</div>
</body>
</html>