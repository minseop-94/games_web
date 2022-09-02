<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container{
	display: flex;
	background-color: #191718;
}
.left{
	width: 20%;
	height: 20%;
	background-color: #68020f;
}
#indexicon{
width:100%;
height:100%;
}
.middle{
	width: 50%; height: 50%;
	display: table;
	background-color: #F3D849;
	text-align: center;
}
#inner{
	display:table-cell;
	vertical-align: middle;
	
}
#content{
	display: inline-block;
}
.right{
	width: 30%;
	height: 30%;
	
	/* background-color: #497faf; */
}
.rightimg{
	width: 50%;
	height: 50%;
}
.pimgbox{
width: 30%;
height: 30%;
display: flex;
align-items: center;
}
.pimg{
width:100%;
height: 100%;
display: inline-block;
}
</style>
</head>
<body>
<!-- https://studiomeal.com/archives/197 display 참고 사이트 -->
<section class="container">
	<section class="left">
		<a href = "index.jsp"><img id="indexicon" src=./images/indexhome.png align="left"></a>
	</section>
	
	<!-- https://saimplay.tistory.com/115 -->
	<!-- 영역을 겹쳐서 content에 내용을 넣으면 중앙정렬이 되도록 -->
	<section class="middle">
		<div id="inner">
			<div id="content">
					<table id="table" border=0 cellpadding=0 cellspacing=30>

						<tr>
							<td>
								<fieldset id="field"
									style="padding: 10; border-color: white; border-width: 0.5em;
									border-style:solid; border-radius: 30px;">
									<legend>
										<h2>
											<b>RULE</b>
										</h2>
									</legend>
									<div class="pimgbox">
									<img class="pimg" src="images/person12.png"/>
									<img class="pimg" src="images/person11.jpg"/>
									
									<img class="pimg" src="images/question1.gif"/>
									</div>
									<div class="ruleContent">
										<h3>규칙 =></h3>
										"시작!!" 버튼을 누르면 <br> <br> <br> 
										랜덤으로 인물 사진을 보여주는 페이지가 나옵니다.<br>
										1. 친구들과 순서를 정해놓고<br> 
										2. 해당 차례가 되면 제한 시간 안에<br> 인물사진의 이름을 외치세요!!
										<br>
									</div>
									<div class="form">
									<form action="peoplePlay.people">
										<input type="submit" value="시작!!"/>
									</form>
									</div>
							</td>
						</tr>

					</table>
				</div>
		</div>
	</section>
	<section class="right">
		<img class="rightimg"src="images/pquiz.png"/>
	</section>
</section>
</body>
</html>