<%@page import="dto.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardBean article = (BoardBean)request.getAttribute("article");
	String nowPage = (String)request.getAttribute("page");
%>
<%=nowPage %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
	<title>GAME</title>
	<script type="text/javascript">
	function modifyboard(){
		/* 작성자, 제목, 글내용, 비밀번호가 생략되어있으면 객체를 테이블에 담을 수 없다.<Not Null> */
		//modifyform.submit();
	}
	</script>
	<style type="text/css">
   #registForm{
      width: 500px;
      height: 600px;
      border : 1px solid red; 
      margin:auto; 
   }   
   h2{
      text-align: center;
   }
   table{
      margin:auto;
      width: 450px;
      }
   .td_left{
      width: 150px;
      background:orange;
   }
   .td_right{
      width: 300px;
      background:skyblue;
   }
   #commandCell{
      text-align: center;
      
   }
</style>
</head>
<body>
<!-- 게시판 등록 -->

<section id = "writeForm">
<h2>게시판글수정</h2>
<form action="boardModifyPro.bo" method="post" name = "modifyform">
<input type = "hidden" name = "board_num" value = "<%=article.getBoard_num()%>"/>
<input type = "hidden" name = "page" value = "<%=nowPage %>"/>
<table>
	<tr>
		<td class="td_left">
			작성자
		</td>
		<td class="td_right">
			<input type = "text" name="board_name" value = "<%=article.getBoard_name()%>"/>
		</td>
	</tr>
	<tr>
		<td class="td_left">
			<label for = "board_pass">비밀번호</label>
		</td>
		<td class="td_right">
			<input name="board_pass" type="password" />
		</td>
	</tr>
	<tr>
		<td class="td_left">
			추가할 항목
		</td>
		<td class="td_right">
			<input name="board_subject" type="text" value = "<%=article.getBoard_subject()%>"/>
		</td>
	</tr>
	<tr>
		<td class="td_left">
			내 용
		</td>
		<td>
			<textarea name="board_content" cols="40" rows="15"><%=article.getBoard_content()%></textarea>
		</td>
	</tr>
	<tr>
				<td class="td_left">첨부파일</td>
				<td class = "td_right">
					<input type="file" name="board_file" />
				</td>
			</tr>
</table>
	<section id = "commandCell">
			<input type = "submit" value="[수정]">&nbsp;&nbsp;
			<!-- <a href="javascript:modifyboard()">[수정]</a>&nbsp;&nbsp; -->
			<a href="javascript:history.go(-1)">[뒤로]</a>
	</section>
</form>
</section>
</body>
</html>