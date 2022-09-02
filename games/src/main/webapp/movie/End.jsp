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
<title>문제가 종료되었습니다!</title>
<style>
 body{background-image: url('images/bg3.jpg');
 background-size: cover; /* background-position: center center;  */
 background-repeat : no-repeat;
 font-family: 'Stylish', sans-serif;
 color: white;
 text-align : center;
 }

#table1{
			font-size : 20pt;
			width : 600px;
			height : 500px;
			border : 10px ridge white;
			color : white;
			text-align : center;
			margin : auto;
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
<div style="position: fixed; left:540px; top:20px;">


<form action = "index.jsp" method = "post" name = "form">
<h1> 영화 제목 맞추기 종료! </h1><br>
<h2> 다음 업데이트를 기대해 주세요 :) </h2><br>

<table id=table1>
	<tr>
		<th colspan="2">정답 공개</th>
	</tr>
	<tr>
		<td>1번 문제 정답 : </td>
		<td>기생충</td>
	</tr>
	<tr>
		<td>2번 문제 정답 : </td>
		<td>극한직업</td>
	</tr>
	<tr>
		<td>3번 문제 정답 : </td>
		<td>관상</td>
	</tr>
	<tr>
		<td>4번 문제 정답 : </td>
		<td>베테랑</td>
	</tr>
	<tr>
		<td>5번 문제 정답 : </td>
		<td>암살</td>
	</tr>
	<tr>
		<td colspan = "2">
		<input type="button" class="w-btn w-btn-indigo" style="WIDTH: 120pt; HEIGHT: 30pt; font-size: 13pt;" value = "목록으로 돌아가기" onclick="location.href='index.jsp'">
		</td>
	</tr>
</table>	


</form>
</div>
</body>
</html>