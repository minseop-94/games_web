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
<title>야구 게임 규칙</title>
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
			width : 800px;
			height : 550px;
			border : 10px ridge white;
			color : white;
			text-align : center;
			margin : auto;
			font-size: 22pt;
			
		}
h1{
		color : white;
		text-align:center;
		}
	#icon1{
		width: 80px;
		height: 80px;
		display : block;
		margin: auto;
	}
	
	#id{
		margin: auto;

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

<div style="position: fixed; left:440px; top:20px;">


<form action="baseballRule.ba" method="post" name = "bbr">
<br>
<table id = table1>
		<tr>
			<td>
			<img id="icon1" src=./images/baseball2.jpeg align="middle">
			</td>
			<td>
			<h1>  야구 게임 규칙 </h1>
			</td>
			<td>
			<img id="icon1" src=./images/number.jpeg align="middle">
			</td>
		</tr>
	</table>
	
	<br>
	<br>
	<br>

	<table id = table2>
		<tr>
			<td>야구 게임 규칙</td>
			<td>임의로 선택된 4자리의 중복이 없는 숫자를 맞추는 게임!<br>
				제출한 답이 자리와 숫자가 맞으면 스트라이크,<br> 자리는 틀렸으나 숫자가 맞으면 볼.<br>
				4자리의 숫자를 추리하여 먼저 4스트라이크를 맞추는 게임 
			</td>
		</tr>
		<tr>
			<td>예시 )</td>
			<td>
			정답) 1234 <br>
			
			Q1. 3267 => 1S 1B	(2는 스트라이크, 3은 볼)	<br>
			Q2. 1253 => 2S 1B 	(1,2는 스트라이크, 3은 볼)<br>
			Q3. 1234 => 4S		(정답)
					
			</td>
		</tr>
		<tr>
			<td colspan="3">
				<input type="button" class="w-btn w-btn-indigo" id="button1" style="WIDTH: 80pt; HEIGHT: 30pt; font-size: 12pt;" value = "게임하러 가기" onclick="location.href='baseball.ba'">
			</td>
		</tr>
			<!-- <input type="submit" value = "뒤로가기" onclick="location.href='joinForm.do'"> &nbsp;&nbsp; -->
	</table>
	
</form>
</div>
</body>
</html>