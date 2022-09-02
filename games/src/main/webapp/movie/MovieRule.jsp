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
<title>영화 제목 맞추기</title>
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
<h1> 영화대사 듣고 제목 맞추기 </h1><br>
<form action="MoiveRule.mo" method="post" name = "mr">
	<table id = table1>
		<tr>
			<td>
			<img id="icon1" src=./images/movierule.jpeg align="middle">
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
	<table id = table2>
	<tr>
		<td><h1>게임 규칙</h1></td>
	</tr>		
		<tr>
			<td id = "rule1">
			영화 대사를 듣고 영화의 제목을 맞춰라!<br>
			주어진 힌트를 듣고 어떤 영화에서 나온 대사인지 <br>
			추측해서 답을 맞추어보세요!<br>
			총 다섯문제로, 한 문제당 2개의 힌트가 제공됩니다.
			</td>
		</tr>
		<tr>
			<td>
			<input type="button" class="w-btn w-btn-indigo" style="WIDTH: 80pt; HEIGHT: 30pt; font-size: 17pt;" value = "start" onclick="location.href='movie1.mo'">
			<br><br>
			</td>
		</tr>
	</table>
	<br><br>
	
</form>
</div>
</body>
</html>