<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="preconnect" href="https://fonts.googleapis.com"> 
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> 
<link href="https://fonts.googleapis.com/css2?family=Stylish&display=swap" rel="stylesheet">
<link href="./reset.css" rel="stylesheet"> 
<link href="./button.css" rel="stylesheet">
<head>
<meta charset="UTF-8">
<title>인물 맞추기</title>
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
		
		#ruleimage{
		width: 250px;
		height: 180px;
		display : block;
		margin: auto;
		}
		
		
	</style>
</head>
<body>
<a href = "index.jsp"><img id="indexicon" src=./images/indexhome.png align="left"></a>

<div style="position: fixed; left:490px; top:20px;">

<br>
<h1> 사진보고 인물 맞추기 </h1><br>
	<table id = table1>
		<tr>
			<td>
			<img id="ruleimage" src=./images/peoplerule1.jpg align="middle">
			</td>
			<td>
			<img id="icon1" src=./images/right.gif align="middle">
			</td>
			<td>
			<img id="ruleimage" src=./images/peoplerule2.jpg align="middle">
			</td>
		</tr>
	</table>
	
	<br>
	<br>
	<br>
	<form action="peoplePlay.people">
	<table id = table2>
	<tr>
		<td><h1>게임 규칙</h1></td>
	</tr>		
		<tr>
			<td id = "rule1">
			랜덤으로 나오는 인물사진을 보고<br>
			이름을 맞춰라!<br>
			문제당 3초의 시간이 주어지고<br>
			사진은 자동으로 변경됩니다.<br>
			</td>
		</tr>
		<tr>
			<td colspan = "2">
			<select name="theme">
				<!-- <option value="allTheme">뭐든 상관없다</option> -->
				<option value="inPopular">국내 유명인</option>
				<option value="outPopular">해외 유명인들</option>
				<option value="inRespect">국내 위인들</option>
				<option value="inGirlGroup">국내 걸그룹</option>
			</select>
			<input type="submit" class="w-btn w-btn-indigo" style="WIDTH: 80pt; HEIGHT: 30pt; font-size: 12pt;" value = "게임하러 가기">
			</td>
		</tr>
	</table>
	<br>
	<br>
	<!-- onclick="location.href='peoplePlay.people'" -->
</form>
</div>
</body>
</html>