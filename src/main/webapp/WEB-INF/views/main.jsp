<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.mapper.guest" %>
<%@taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value = "${pageContext.request.contextPath}"/>
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
background-color : #F1F2F6;
}

.main_top {
width:100%;
height:10%;
color:#362222;
background-color : white;
/** background-color: #CAB0FF;
float:center;
border-bottom-width:thin;
border-bottom-color:rgba(25,80,100,0);
border-bottom:solid; **/}

.top_left{
float:left;
width:70%;
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
height:70%;
/** background-color:red;
float:left; **/}

.mid_top{
font-size:80px;
height:20%;
text-align: center;
}

.mid_top_left{
float:left;
width:20%;
height:100%;
text-align: right;
padding: 0px 0px 0px 40px;
}

.mid_top_right{
float:right;
width:70%;
height:100%;
text-align: left;
padding: 0px 40px 0px 0px;
/** font-family: 'Noto Sans KR', Times, serif; **/
}


.mid_bot{
height:80%;
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
width:100%;
height:20%;
background-color: #5D5D5D;
}

.bicon{
float: left;
padding: 40px 0px 0px 20px;
width: 23%;
font-size:60px;
text-align: center;
color:white;
}


.bimg{
width:200px;
height:200px;
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
<% guest member = (guest) session.getAttribute("member"); %>

function reply_click(clicked_id){
	location.href = "${cpath}/insertExName.do?ex_name="+clicked_id+"&user_id="+<%=member.getUser_id() %>;
}
</script>
</head>

<body>
<%  member = (guest) session.getAttribute("member");%>
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
				<div class = "modal_mid_left"><img id="moicon" src="resources/img/diary.png"></div>
				<div class = "modal_mid_right"><b id = "modal_mid_b">운동 다이어리</b></div>
			</div>	
			<div class = "modal_mid_mid">
				<div class = "modal_mid_left"><img id="moicon" src="resources/img/dumbbell.png"></div>
				<div class = "modal_mid_right"><b id = "modal_mid_b">운동 도구</b></div>
			</div>
			<div class = "modal_mid_mid">
				<div class = "modal_mid_left"><img id="moicon" src="resources/img/video.png"></div>
				<div class = "modal_mid_right"><b id = "modal_mid_b">운동 영상</b></div>
			</div>		
		</div>
		<div class = "modal_bot">
			<div id="NSK_font">고객센터     010-4903-4073</div>
		</div>
	</div>
	
	<div class="main_map">

		<div class="main_top" style = "text-align : center;">
			<div class="top_left">
				<div><h1 style = "font-size:100px;">The Ai Fitness</h1></div>
			</div>
			<div class="top_right">
			
				<img id="modal_btn" src="resources/img/화살표.png"
					style="width: 200px; height: 200px;">
			</div>
		</div>

		<div class="main_mid">
			<div class="mid_top">
				<div class="mid_top_left">
					<img src = "resources/img/가슴.png"
					style = "width:200px; height:200px; padding-top:60px;">
				</div>
				<div class="mid_top_right" >
					<b><text id="NSK_font"><br>오늘의 대흉근</text></b>
				</div>
			</div>
			<div class="mid_bot" >
				<table class="mid_bot_table" id="NSK_font">
					<tr>
						<td>
							<img class="mbimg" id = "chestpress" src="resources/img/체스트프레스.png" onclick= "reply_click(this.id)">
						</td>
						<td>
							<img class="mbimg" src="resources/img/펙덱플라이.png" onclick="goEquip()" value = "펙덱플라이">
						</td>
					</tr>
					<tr>
						<td><input type= "hidden">체스트 프레스</td>
						<td>펙 덱 플라이</td>
					</tr>
					<tr><td style="padding: 50px 0px 50px 0px;"></td><td></td></tr>
					<tr>
						<td>
							<img class="mbimg" src="resources/img/인클라인체스트프레스.png" onclick="goEquip()" value = "인클라인체스트프레스">
						</td>
						<td>
							<img class="mbimg" src="resources/img/인클라인체스트프레스2.png" onclick="goEquip()" value = "인클라인체스트프레스2">
						</td>
					</tr>
					<tr>
						<td>인클라인 체스트프레스</td>
						<td>인클라인 체스트프레스<br>(다각도)</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="main_bot" id="NSK_font">
			<div class="bicon"><img class="bimg" src="resources/img/가슴.png"><br>가슴</div>
			<div class="bicon"><img class="bimg" src="resources/img/어깨.png"><br>어깨</div>
			<div class="bicon"><img class="bimg" src="resources/img/등.png"><br>등</div>
			<div class="bicon"><img class="bimg" src="resources/img/arm-muscles-silhouette.png"><br>팔</div>
		</div>
	</div>
</body>

</html>