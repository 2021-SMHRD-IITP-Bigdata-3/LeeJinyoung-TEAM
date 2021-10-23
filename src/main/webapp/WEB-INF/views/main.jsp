<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.mapper.guest" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<style>
html, body {
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
}

#NSK_font{
font-family: 'Noto Sans KR', sans-serif;
font-size:60px;
}

.modal_wrap{
        display: none;
        width: 50%;
        height: 60%;
        position: absolute;
        top:10%;
        left: 70%;
        margin: -254px 0 0 -236px;
        background:#FFFFFF;
        z-index: 2;
        border-top-left-radius: 5em;
        border-bottom-left-radius: 5em;
    }
    .black_bg{
        display: none;
        position: absolute;
        content: "";
        width: 100%;
        height: 100%;
        background-color:rgba(218, 215, 216, 0.5);
        top:0;
        left: 0;
        z-index: 1;
    }
    
#modal_btn{
position:relative;
top:20%;
}
    
.modal_top{
width:100%;
height:30%;
text-align: center;
}

.modal_top_top{
width:100%;
height:50%;
text-align: center;
}

.modal_top_left{
font-size:50px;
width:40%;
height:50%;
float:left;
text-align: right;
}

.modal_top_right{
font-size:40px;
width:55%;
height:50%;
float:right;
text-align: left;
}

.modal_mid{
width:100%;
height:60%;
font-size:50px;
text-align: center;
}

.modal_mid_mid{
height:20%;
padding: 0px 30px 0px 0px;
}

#modal_mid_b{
text-align: center;
font-size:45px;
}

.modal_mid_left{
width:40%;
height:100%;
float:left;
text-align: right;
}

.modal_mid_right{
width:55%;
height:100%;
float:right;
text-align: left;
}

#moicon{
width: 130px;
height: 130px;
}

.modal_bot{
width:100%;
height:10%;
font-size:40px;
text-align: center;
}

.main_map {
width:100%;
height:100%;
background-color : #FFFFFF;
}

.main_mid{
background-color : #F1F2F6;
}


.main_top {
width:100%;
height:10%;
/** background-color: #CAB0FF;
float:center;
border-bottom-width:thin;
border-bottom-color:rgba(25,80,100,0);
border-bottom:solid; **/}

.top_left{
float:left;
width:80%;
height:100%;

/** border-bottom-right-radius: 2em; **/
}

.top_right{
float:right;
width:20%;
height:100%;
}

.main_mid {
width:100%;
height:80%;
/** background-color:red;
float:left; **/}

.mid_top{
font-size:80px;
height:10%;
text-align: center;
padding: 50px 0px 0px 100px;
}


.mid_bot{
height:88%;
}

.mid_bot_table{
font-size:50px;
text-align: center;
width: 100%;
}

.mbimg{
width:90%;
height:90%;
border-radius: 2em;
}

.main_bot {
position:relative;
width:100%;
height:20%;
background-color: #FFFFFF;
}

.bicon{
float: left;
padding: 20px 0px 0px 20px;
width: 23%;
font-size:40px;
text-align: center;
color:black;
}


.bimg{
width:150px;
height:150px;
}

.mbimg{
width:550px;
height:500px;
}


td{
font-size:40px;
font-weight:bolder;
}

h1{
position:relative;
left:-10%;
}


</style>
<script>
window.onload = function() {
	 
    function onClick() {
        document.querySelector('.modal_wrap').style.display ='block';
        document.querySelector('.black_bg').style.display ='block';
    }   
    function offClick() {
        document.querySelector('.modal_wrap').style.display ='none';
        document.querySelector('.black_bg').style.display ='none';
    }
 
    document.getElementById('modal_btn').addEventListener('click', onClick);
    document.querySelector('.black_bg').addEventListener('click', offClick);
 
}


<%  guest member = (guest) session.getAttribute("member");%>
function reply_click(clicked_id){
	location.href = "${cpath}/insertExName.do?ex_name="+clicked_id+"&user_id="+<%=member.getUser_id() %>;
	
}
function go_calender(){
	location.href = "/web/test.do";
}

function go_record(){
	location.href = "/web/record.do";
}

</script>
</head>
<body>

<% member = (guest) session.getAttribute("member");%>

	<div class="black_bg"></div>
	<div class="modal_wrap">
		<div class = "modal_top">
			<div id="NSK_font" style = "font-size:80px;"><b><br><%= member.getUser_name() %></b></div>
			<div class = "modal_top_left"> 
				<div id="NSK_font"><br>만기일</div>
			</div>
			<div class = "modal_top_right">
				<div id="NSK_font"><br><%=member.getUser_expire_date() %><br>D-day 30일</div>
			</div>
		</div>
		<div class = "modal_mid">
			<div class = "modal_mid_mid">
				<div class = "modal_mid_left"><img id="moicon" src="resources/img/diary.png" onclick = "go_calender()"></div>
				<div class = "modal_mid_right"><b id = "modal_mid_b" onclick = "go_calender()">운동 다이어리</b></div>
			</div>	
			<div class = "modal_mid_mid">
				<div class = "modal_mid_left"><img id="moicon" src="resources/img/dumbbell.png"></div>
				<div class = "modal_mid_right"><b id = "modal_mid_b">운동 도구</b></div>
			</div>
			<div class = "modal_mid_mid">
				<div class = "modal_mid_left"><img id="moicon" src="resources/img/video.png" onclick = "go_record()"></div>
				<div class = "modal_mid_right"><b id = "modal_mid_b" onclick = "go_record()">운동 영상</b></div>
			</div>		
		</div>
		<div class = "modal_bot">
			<div id="NSK_font">고객센터     010-4903-4073</div>
		</div>
	</div>
	
	<div class="main_map">

		<div class="main_top" style = "text-align : center;">
			<div class="top_left">
				<h1 style = "font-size:90px;">The Ai Fitness</h1>
			</div>
			<div class="top_right">
			
				<img id="modal_btn" src="resources/img/menu.png"
					style="width: 120px; height: 120px;">
			</div>
		</div>


		<div class="main_mid">
			<div class="mid_top">
				<table>
					<tr>
					<td><img src = "resources/img/가슴.png"
					style = "width:150px; height:150px;"></td>
					<td><b id="NSK_font">오늘의 대흉근</b></td>
					</tr>
				</table>
			</div>
			<div class="mid_bot" >
				<table class="mid_bot_table" id="NSK_font">
					<tr>
						<td>
							<img class="mbimg" src="resources/img/체스트프레스.png" onclick = "InsertCam('체스트프레스','팔')" >
						</td>
						<td>
							<img class="mbimg" src="resources/img/펙덱플라이.png">
						</td>
					</tr>
					<tr>
						<td>체스트 프레스</td>
						<td>펙 덱 플라이</td>
					</tr>
					<tr><td style="padding: 50px 0px 50px 0px;"></td><td></td></tr>
					<tr>
						<td>
							<img class="mbimg" src="resources/img/인클라인체스트프레스.png">
						</td>
						<td>
							<img class="mbimg" src="resources/img/인클라인체스트프레스2.png">
						</td>
					</tr>
					<tr>
						<td>인클라인 체스트프레스</td>
						<td>인클라인 체스트프레스<br>(다각도)</td>
					</tr>
				</table>
				
			</div>
			

		<div class="main_bot" id="NSK_font">
			<div class="bicon"><img class="bimg" src="resources/img/가슴.png"><br>가슴</div>
			<div class="bicon"><img class="bimg" src="resources/img/어깨.png"><br>어깨</div>
			<div class="bicon"><img class="bimg" src="resources/img/등.png"><br>등</div>
			<div class="bicon"><img class="bimg" src="resources/img/p.png"><br>팔</div>
		</div>

	</div>
	
	</div>
	
</body>

</html>