<%@page import="dto.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardBean article=(BoardBean)request.getAttribute("article");
    String nowPage = (String)request.getAttribute("page");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>GAME</title>

<style type="text/css">
#registForm {
	width: 500px;
	height: 610px;
	border: 1px solid red;
	margin: auto;
}

h2 {
	text-align: center;
}

table {
	margin: auto;
	width: 450px;
}

.td_left {
	width: 150px;
	background: orange;
}

.td_right {
	width: 300px;
	background: skyblue;
}

#commandCell {
	text-align: center;
}
</style>
</head>
<body>
	<!-- 게시판 답변 -->


	<section id="writeForm">
		<h2>게시판 댓글등록</h2>
		<form action="boardReplayPro.bo" method="post" name="boardform">
			<input type="hidden" name="page" value="<%=nowPage %>"/> 
			<input type="hidden" name="board_num" value="<%=article.getBoard_num() %>">
			<input type="hidden" name="board_re_ref" value="<%=article.getBoard_re_ref() %>"> 
			<input	type="hidden" name="board_re_lev" value="<%=article.getBoard_re_lev() %>"> 
			<input	type="hidden" name="board_re_step" value="<%=article.getBoard_re_step() %>">
			<table>
				<tr>
					<td class="td_left">작성자</td>
					<td class="td_right"><input type="text" name="board_name"/></td>
				</tr>
				<tr>
					<td class="td_left">비밀번호</td>
					<td class="td_right"><input name="board_pass" type="password"/></td>
				</tr>
				<tr>
					<td class="td_left">제 목</td>
					<td class="td_right"><input name="board_subject" type="text"/></td>
				</tr>
				<tr>
					<td class="td_left">내 용</td>
					<td><textarea name="board_content"	cols="40" rows="15"></textarea></td>
				</tr>
			</table>
			<section id="commandCell">
				<input type="submit" value="답변글등록" />&nbsp;&nbsp; 
				<input type="reset" value="다시작성" />
			</section>
		</form>
	</section>
</body>
</html>