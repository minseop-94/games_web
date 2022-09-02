<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GAME</title>
<style>
	body{
		 background-image: url('images/bg4.jpg');
		 background-size: cover; /* background-position: center center;  */
		 background-repeat : no-repeat;
	 }
	#writeForm{
		width: 850px;
		height: 600px;
		margin: auto;
	}	
	h2{ text-align: center;
	font-size: 30pt;}	
	table{width: 750px;	margin: auto;}	
	.td_left{width:150px;background-color:gray;text-align: center; font-size: 15pt;}	
	.td_right{width:450px;background-color:lightgray; font-size: 12pt;}	
	#commandCell{text-align: center;}
	
	
	
</style>
</head>
<body>
<div style="position: fixed; left:400px; top:90px;">
<section id="writeForm">
	<h2>건의 사항</h2><br>
	<form action="boardWritePro.bo" method="post" name = "boardform" 
		enctype="multipart/form-data">
		<table>
			<tr>
				<td class="td_left">작성자</td>
				<td class = "td_right"><input type="text" name="board_name" maxlength="50" required="required"></td>
			</tr>
			<tr>
				<td class="td_left">비밀번호</td>
				<td class = "td_right"><input type="password" name="board_pass" maxlength="50" required="required"></td>
			</tr>
			<tr>
				<td class="td_left">항목</td>
				<td class = "td_right"><input type="text" name="add" placeholder="노래 or 인물 or 영화">
			</tr>
			
			<tr>
				<td class="td_left">내용</td>
				<td class = "td_right">
					<textarea cols="50" rows="15" required="required" name="board_content"></textarea>
				</td>
			</tr>
			<tr>
				<td class="td_left">첨부파일</td>
				<td class = "td_right">
					<input type="file" name="board_file" />
				</td>
			</tr>
		</table>
		<br>
		<section id="commandCell">
			<input type="submit" style="WIDTH: 60pt; HEIGHT: 20pt; font-size: 12pt;" value="등록">&nbsp;&nbsp;&nbsp;
			<input type="reset" style="WIDTH: 60pt; HEIGHT: 20pt; font-size: 12pt;" value="다시쓰기"/>
		</section>
	</form>
</section>
</div>
</body>
</html>