<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<style>

html, body {
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
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
    

.main_top {
width:100%;
height:10%;
color:#362222;
}

.top_left{
float:left;
width:80%;
height:100%;
}

.top_right{
float:right;
width:20%;
height:100%;
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
font-size:60px;
color: pink;
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

#join{
		border-radius:30px;
		font-weight:bolder;
		font-family: 'Noto Sans KR', sans-serif;
	}
	
#button{
		border-radius:30px;
		font-weight:bolder;
		background-color:#FFFFFF;
		font-family: 'Noto Sans KR', sans-serif;
	}
	
#user_name{
 	position:relative;
   	border-radius:20px 0px 0px 20px;
   	background-color:rgb(178,178,178);
   	font-weight:bolder;
   	font-family: 'Noto Sans KR', sans-serif;
}

#user_birthdate{
 	position:relative;
   	border-radius:20px 0px 0px 20px;
   	background-color:rgb(178,178,178);
   	font-weight:bolder;
   	font-family: 'Noto Sans KR', sans-serif;
}

#user_joindate{
 	position:relative;
   	border-radius:20px 0px 0px 20px;
   	background-color:rgb(178,178,178);
   	font-weight:bolder;
   	font-family: 'Noto Sans KR', sans-serif;
}

#user_gym2{
 	position:relative;
   	border-radius:20px 0px 0px 20px;
   	background-color:rgb(178,178,178);
   	font-weight:bolder;
   	font-family: 'Noto Sans KR', sans-serif;
   	width:100%;
   	height:150px;
   	font-size:60px;
   	type:text;
}

div{
position:relative;
}


a{
	position:relative;
	border-radius:30px;
	font-weight:bolder;
	font-size:60px;
	font-family: 'Noto Sans KR', sans-serif;
}

input::-webkit-input-placeholder {
  color: white !important;
  text-align:center;
  
}

select{
  color: white !important;
  text-align:center;
  width:50px;
  height:50px;
}

#name{
position:relative;
padding: 20px 20px 20px 20px;
  text-align:center;
}

#birth{
position:relative;
padding: 20px 20px 20px 20px;
  text-align:center;
}

#date{
padding: 20px 20px 20px 20px;
  text-align:center;
}

#gym{
padding: 20px 20px 20px 20px;
 text-align:center;
}



.middle{
border: 5px solid #1E90FF;
background-color:#FFFFFF;
}

hr{
position:relative;
top:5%
}

#training{
position:relative;
top:40%;
filter : opacity(.5) drop-shadow(0 0 0 gray);
}

#videioTrainging{
position:relative;
top:20%;
filter : opacity(.5) drop-shadow(0 0 0 gray);
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
function successJoin(){
	alert("회원가입 성공")
}
</script>

</head>
<body bgcolor="EFEFEF">
<form action="/web/insertJoin.do" method ="post" >
<div class="black_bg"></div>
	<div class="modal_wrap">
		<div class = "modal_top">
			<div id="NSK_font" style = "font-size:80px;"><b><br>관리자 님</b></div>
			<div class = "modal_top_left"> 
				<div id="NSK_font"><br></div>
			</div>
			<div class = "modal_top_right">
				<div id="NSK_font"><br><br></div>
			</div>
		</div>
		<div class = "modal_mid">
			<div class = "modal_mid_mid">
				<div class = "modal_mid_left"><img id="moicon" src="resources/img/diary.png"></div>
				<div class = "modal_mid_right"><b id = "modal_mid_b">회원 관리</b></div>
			</div>	
			<div class = "modal_mid_mid">
				<div class = "modal_mid_left"><img id="moicon" src="resources/img/dumbbell.png"></div>
				<div class = "modal_mid_right"><b id = "modal_mid_b">회원 가입</b></div>
			</div>
			<div class = "modal_mid_mid">
				<div class = "modal_mid_left"><img id="moicon" src="resources/img/training.png"></div>
				<div class = "modal_mid_right"><b id = "modal_mid_b">회원 영상</b></div>
			</div>		
		</div>
	</div>

		<div class="main_top" style = "text-align : center;">
			<div class="top_left">
				<h1 style = "font-size:110px;">The Ai Fitness</h1>
			</div>
			<div class="top_right">
			
				<img id="modal_btn" src="resources/img/화살표.png"
					style="width: 200px; height: 200px;">
			</div>
		</div>

	
	<div align="center" style="width:100%; height:150px;">
	
		<input id="join" style="width:400px; height:150px;font-size:60px;" class="button" type = "submit" value ="회원 가입">
	
	</div>

	
	
	<div style="width:100%; height:150px;"> </div>
	
	<form action="">
	
	<div class="middle">
	
	<div style="width:100%; height:150px;"> </div>
	
	<div style="width:100%; height:200px;"> 
	<hr style="border: solid 1px gray;">
		<table align="center">
		
			<tr>
				<td id="name"> <a> 성함 </a> </td>
				<td style="width:65%"> <input id="user_name" name="user_name" style="width:100%; height:150px;font-size:60px; type:text"; placeholder="입력 칸";> </td>
			</tr>
		</table>
	
	</div>
		<div style="width:100%; height:200px;"> 
	<hr style="border: solid 1px gray;">
		<table align="center">
		
			<tr>
				<td id="phone"> <a>휴대폰 번호</a> </td>
				<td style="width:65%"> <input id="user_name" name="user_phone" style="width:100%; height:150px;font-size:60px; type:text"; placeholder="입력 칸";> </td>
			</tr>
		</table>
	
	</div>
	<div style="width:100%; height:200px;">
	<hr style="border: solid 1px gray;">
		<table align="center">
			<tr>
			
				<td id="birth"> <a> 생년월일 </a> </td>
				<td style="width:65%"> <input id="user_birthdate" name = "user_birthdate" style="width:100%; height:150px;font-size:60px; type:text"; placeholder="입력 칸";> </td>
			</tr>
		</table>
	</div>
	
	<div style="width:100%; height:200px;">
	<hr style="border: solid 1px gray;">
		<table align="center">
			<tr>
				<td id="date"> <a> 개월수 </a> </td>
				<td style="width:65%"> <input id="user_joindate" name = "user_expire_date" style="width:100%; height:150px;font-size:60px; type:text"; placeholder="입력 칸";> </td>
			</tr>
		</table>
	</div>
	
	<div style="width:100%; height:250px;">
	<hr style="border: solid 1px gray;">
		<table>
			<tr>
				<td id="gym" style="width:35%"> <a> 지점명 </a> </td>
				<td style="width:760px"> 
				
					<select id=user_gym2 name = "user_gym" > 
						 <option name = "user_gym"> 입력 칸 </option>
						 
					 <optgroup label="서울">  
					 	<option value ="강남점" >강남점</option>
					 </optgroup>
					 
					 <optgroup label="부산">  
					 	<option value ="해운대점"  >해운대점</option>
					 </optgroup>
					 
					 <optgroup label="광주">  
					 	<option value ="광주남구"  >광주남구</option>
					 </optgroup>
					
					</select>
					
				</td>
			</tr>
		</table>
	</div>
</form>
	<div style="width:100%; height:250px;"> 
		<div align="center"> <input id="button" style="width:250px; height:150px;font-size:60px;" class="button" type = "submit" value ="제출" onclick = "successJoin()"> </div>
	</div>	
	
	</div>
	
	</form>
	
	<div class="bottom" style="width:100%; height:500px;">
	
	<img id="training" src="resources/img/training.png"
					style="width: 350px; height: 350px;">
	
	<img align=right id="videioTrainging" src="resources/img/videioTrainging.png"
					style="width: 500px; height: 500px;">
				
	</div>
	
</body>
</html>