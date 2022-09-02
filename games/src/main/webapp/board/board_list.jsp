<%@page import="dto.PageInfo"%>
<%@page import="dto.BoardBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<BoardBean> articleList = (ArrayList<BoardBean>)request.getAttribute("articleList");
	PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
	int listCount = pageInfo.getListCount();	// 전체 게시글의 수
	int nowPage = pageInfo.getPage();			// 현재 페이지
	int maxPage = pageInfo.getMaxPage();		// 전체 페이지수
	int startPage = pageInfo.getStartPage();	// 한 화면의 페이지 시작페이지 
	int endPage = pageInfo.getEndPage();		// 한 화면의 마지막 페이지
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GAME</title>
<style type="text/css">

@import url(https://fonts.googleapis.com/css?family=Signika:700,300,600);


html, body { height: 100%; }
body { display: flex; justify-content: center; align-items: center; margin:20px 0; 
background-image: url('images/bg.PNG'); background-size: 100% 100%; background-position: center center; 
text-align:center; overflow:hidden; }

h1 {
 vertical-align: top;
 font-size:5em;
 font:bold 7.5vw/1.6 'Signika', sans-serif;
 user-select:none;
}

h1 span { display:inline-block; animation:float .2s ease-in-out infinite; }
 @keyframes float {
  0%,100%{ transform:none; }
  33%{ transform:translateY(-1px) rotate(-2deg); }
  66%{ transform:translateY(1px) rotate(2deg); }
}
body:hover span { animation:bounce .6s; }
@keyframes bounce {
  0%,100%{ transform:translate(0); }
  25%{ transform:rotateX(20deg) translateY(2px) rotate(-3deg); }
  50%{ transform:translateY(-20px) rotate(3deg) scale(1.1);  }
}

span:nth-child(4n) { color:hsl(50, 75%, 55%); text-shadow:1px 1px hsl(50, 75%, 45%), 2px 2px hsl(50, 45%, 45%), 3px 3px hsl(50, 45%, 45%), 4px 4px hsl(50, 75%, 45%); }
span:nth-child(4n-1) { color:hsl(135, 35%, 55%); text-shadow:1px 1px hsl(135, 35%, 45%), 2px 2px hsl(135, 35%, 45%), 3px 3px hsl(135, 35%, 45%), 4px 4px hsl(135, 35%, 45%); }
span:nth-child(4n-2) { color:hsl(155, 35%, 60%); text-shadow:1px 1px hsl(155, 25%, 50%), 2px 2px hsl(155, 25%, 50%), 3px 3px hsl(155, 25%, 50%), 4px 4px hsl(140, 25%, 50%); }
span:nth-child(4n-3) { color:hsl(30, 65%, 60%); text-shadow:1px 1px hsl(30, 45%, 50%), 2px 2px hsl(30, 45%, 50%), 3px 3px hsl(30, 45%, 50%), 4px 4px hsl(30, 45%, 50%); }

h1 span:nth-child(2){ animation-delay:.05s; }
h1 span:nth-child(3){ animation-delay:.1s; }
h1 span:nth-child(4){ animation-delay:.15s; }
h1 span:nth-child(5){ animation-delay:.2s; }
h1 span:nth-child(6){ animation-delay:.25s; }
h1 span:nth-child(7){ animation-delay:.3s; }
h1 span:nth-child(8){ animation-delay:.35s; }
h1 span:nth-child(9){ animation-delay:.4s; }
h1 span:nth-child(10){ animation-delay:.45s; }
h1 span:nth-child(11){ animation-delay:.5s; }
h1 span:nth-child(12){ animation-delay:.55s; }
h1 span:nth-child(13){ animation-delay:.6s; }
h1 span:nth-child(14){ animation-delay:.65s; }


a { text-decoration:none } 
	
	#table1{	/* 타이틀 */
		/* border : 1px solid white; */
		text-align:center;
		width: 800px;
			
		}
	
	#table2{
			
			font-size: 22pt;
			witdh :200px;
			text-align : center;
			margin : auto;
		}

	 body{background-image: url('images/bg4.jpg');
		 background-size: cover; /* background-position: center center;  */
		 background-repeat : no-repeat;
		 }
	#listForm{
		width:700px;
		height:600px;
		border: 4px solid black;
		margin: auto;
	}
	h2{text-align: center;
		font-size: 30pt;
		}
	table{width:650px;margin:auto;}
	#tr_top{background-color:lightgray;text-align: center;}
	#pageList{
		margin:auto;
		width:500px;
		text-align: center;
	}
	#emptyArea{
		margin:auto;
		width:500px;
		text-align: center;
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
<div style="position: fixed; left:10px; top:5px;">
<a href = "index.jsp"><img id="indexicon" src=./images/goindex.png align="left"></a>
</div>
<div style="position: fixed; left:450px; top:-85px;">
<table id = table1>

	<tr>
		<th><h1><span>F</span><span>U</span><span>N</span><span>S</span><span>.</span><span> </span><span>C</span><span>O</span><span>M</span></h1><th>
	</tr>
</table>
</div>

<div style="position: fixed; left:490px; top:220px;">
<section id="listForm">
	<h2> 게 시 판 </h2><br>
	<table id = "table2">
	<tr>
	<td>
	<a href="boardWriteForm.bo">건의사항</a> &nbsp;
	<a href="index.jsp">메인 화면으로</a>
	</td>
	</tr>
	</table>
	<br>
	<table>
		<% if(articleList != null && listCount > 0){ %>
		<tr id="tr_top">
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>			
		</tr>
		
		<% for(int i = 0; i < articleList.size(); i++){ %>
		<tr>
			<td><%=articleList.get(i).getBoard_num() %></td>  <!-- 글번호 -->
			<td>
				<% if(articleList.get(i).getBoard_re_lev() != 0){ %> <!-- 댓글여부에 따라 -->
					<%for(int a = 0; a <= articleList.get(i).getBoard_re_lev()*2; a++){ %>
					&nbsp;
					<%} %>
				<%}else{%>	 <%}%> 
				<a href = "boardDetail.bo?board_num=<%=articleList.get(i).getBoard_num()%>&page=<%=nowPage%>">
						<%=articleList.get(i).getBoard_subject()%></a>
			</td>
			<td><%=articleList.get(i).getBoard_name() %></td>
			<td><%=articleList.get(i).getBoard_date() %></td>
			<td><%=articleList.get(i).getBoard_readcount() %></td>
		</tr>
		<%}%>
	</table>
</section>

<section id = "pageList">
<% if(nowPage<=1){ %>
[이전]&nbsp;
<%}else{%>
<a href="boardList.bo?page=<%=nowPage-1%>">[이전]</a>&nbsp;
<%}%>

<% for(int a=startPage; a<=endPage; a++){
	if(a==nowPage){%>	
[<%=a%>]
<%}else{%>

<a href="boardList.bo?page=<%=a%>">[<%=a%>]</a>&nbsp;
<%} %>
<%} %>
<%if(nowPage>=maxPage){ %>
[다음]
<%}else{%>
<a href="boardList.bo?page=<%=nowPage+1%>">[다음]</a>
<%}%>
</section>

<%}
else{%>
<section id="emptyArea">등록된 글이 없습니다.</section>		
<%} %>
</div>
</body>
</html>