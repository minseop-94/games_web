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
   <title>숫자야구</title>
 <style type="text/css">
 body{background-image: url('images/bg2.jpg');
 background-size: cover; /* background-position: center center;  */
 background-repeat : no-repeat;
 font-family: 'Stylish', sans-serif;
 }
 	#table1{
		 	color : white;
			width: 330px;
			text-align : center;
			margin : auto;
	}
 
 #table2{
			width : 700px;
			height : 700px;
			border : 3px solid white;
			color : white;
			text-align : center;
			margin : auto;
		}
#display{
	text-align : center;
	width : 600px;
	height : 600px;
	font-size : 18pt;
}
#icon1{
		width: 50px;
		height: 50px;
		display : block;
		margin: auto;

	}
#indexicon{
		width: 150px;
		height: 80px;
		display : block;
		margin: 3px 8px;
}
 
 </style>
<script type="text/javascript" src="script/baseball.js"></script>
</head>



<body onload="init();">
<a href = "index.jsp"><img id="indexicon" src=./images/indexhome.png align="left"></a>

<div style="position: fixed; left:490px; top:10px;">

<table id = table1>
	<tr>
	<td>
		<img id="icon1" src=./images/baseballiconhome.gif align="middle">
	</td>
	<td>
		<h1>숫자 야구 게임</h1>
	<td>
		<img id="icon1" src=./images/baseballiconhome.gif align="middle">
	</td>
	</tr>
</table>
<br>
<form id='form' name='form'>
<table id="table2">
	<tr>
		<td>
			<textarea id='display' name='display' rows='30' cols='50' style='overflow:hidden;'></textarea>
			
		</td>
	</tr>
	<tr>
		<td>
		<!-- check(this)도 baseball.js의 함수 -->
			<input type='text' id='no1' name='no1' size='10' maxlength='1' onkeyup='check(this)'>
			<input type='text' id='no2' name='no2' size='10' maxlength='1' onkeyup='check(this)'>
			<input type='text' id='no3' name='no3' size='10' maxlength='1' onkeyup='check(this)'>
			<input type='text' id='no4' name='no4' size='10' maxlength='1' onkeyup='check(this)'>
			<input type='button' class="w-btn w-btn-indigo" value='재시작' onclick='location.reload()'>	<!-- reload : 새로고침 -->
			<input type='button' class="w-btn w-btn-indigo" value='처음으로' onclick="location.href='index.jsp'">
		</td>
	</tr>
</table>

</form>
</div>
</body>
</html>