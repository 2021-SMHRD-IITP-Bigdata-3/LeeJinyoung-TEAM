<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
    
    .record_wrap{
        display: none;
        width: 90%;
        height: 80%;
        position: absolute;
        top:20%;
        left: 25%;
        margin: -254px 0 0 -236px;
        background:#FFFFFF;
        z-index: 2;
        border-radius:5em;
    }
    .record_bg{
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

#NSK_font{
font-family: 'Noto Sans KR', sans-serif;
}

#record{
	position:relative;
	font-size:80px;
	font-family:Regular;
	font-weight:bolder;
	right:-5%;
   }
   
   select{
   position:relative;
   border-radius:40px;
   background-color:#F1F2F6;
   font-weight:bolder;
   appearance:none;
   right:-15%;
   }

#diary{
	position:relative;
	right:-70%;
	}
	
#button{
	background-color: white;
}
input{
	font-size:60px;
}

#mid{
	border-spacing: 50px;
  	border-collapse: separate;
  	filter : drop-shadow(0 0 0 white);
}
#mid{
	border-spacing: 50px;
  	border-collapse: separate;
  	filter : drop-shadow(0 0 0 white);
}
#mid{
	border-spacing: 50px;
  	border-collapse: separate;
  	filter :drop-shadow(0 0 0 white);
}
#mid{
	border-spacing: 50px;
  	border-collapse: separate;
  	filter : drop-shadow(0 0 0 white);
}

#training{
	position: absolute;
	filter : opacity(.5) drop-shadow(0 0 0 gray);
	top : 94%;
	left : 8%;
}

#videioTrainging{
	position: absolute;
	filter : opacity(.5) drop-shadow(0 0 0 gray);
	top : 94%;
	left : 30%;
}

#button_gym{
border: none;
}

#record_top_title{
	position: absolute;
	font-size:60px;
	top : 3%;
	left : 5%;
}

hr{
	position: absolute;
	top : 8%;
	width:98%;
	height:0%;
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
   	  
    
        function onClick1() {
            document.querySelector('.record_wrap').style.display ='block';
            document.querySelector('.record_bg').style.display ='block';
        }   
        function offClick1() {
            document.querySelector('.record_wrap').style.display ='none';
            document.querySelector('.record_bg').style.display ='none';
        }
     
        document.getElementById('mid').addEventListener('click', onClick1);
        document.querySelector('.record_bg').addEventListener('click', offClick1);

		}

</script>


</head>
<body bgcolor="#F1F2F6">

<div class="black_bg"></div>
	<div class="modal_wrap">
		<div class = "modal_top">
			<div id="NSK_font" style = "font-size:80px;"><b><br>이진영 님</b></div>
			<div class = "modal_top_left"> 
				<div id="NSK_font"><br>만기일</div>
			</div>
			<div class = "modal_top_right">
				<div id="NSK_font"><br>2021-12-07<br>D-day 30일</div>
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
	
<div class="record_bg"></div>
	<div class="record_wrap">
		<div class="record_top" style="width:100%; height:200px;">
			<div id="record_top_title"> <b> 영상 제목 </b> </div>
			<hr style="border: solid 10px gray;">
		</div>
		
		<div class="record_middle" style="width:100%; height:500px;">
			<div id="record_middle_content">  </div>
		</div>
		
	</div>

<div class="main_map">

		<div class="main_top" style = "text-align : center;">
			<div class="top_left">
				<h1 style = "font-size:110px;">The Ai Fitness</h1>
			</div>
			<div class="top_right">
			
				<img id="modal_btn" src="resources/img/화살표.png"
					style="width: 200px; height: 200px;">
			</div>
		</div>
</div>

<form action="" method="" >

<table align="">
		<tr>
			<td> <a id="record" align ="center">자세교정 녹화본</a> </td>
			<td>
				<select name="ex_part"  style="width:400px;height:100px;font-size:60px;font-family:Regular;">
					 <option align="center" font-family="Regular" > 운동 부위  </option>
					 	<option align="center" value ="등" >등</option>												
					 	<option align="center" value ="팔" >팔</option>										
					 	<option align="center" value ="가슴" >가슴</option>
					 	<option align="center" value ="어깨" >어깨</option>
					 	<option align="center" value ="복근" >복근</option>
					 	
				</select>
			</td>
			<td> <img id="diary" src="resources/img/weightDiary.png" width="100px" height="100px"> </td>
		</tr>		
		
		
	</table>
	
</form>

	 <div style="width:100%; height:100px;"></div>

<table align="center" id=mid>
<tr>
<td><input id="button" style="width:450px; height:300px;" class="button" type = "submit" value="영상"></td>
<td><input id="button" style="width:450px; height:300px;" class="button" type = "submit" value="영상"></td>
</tr>
</table>


<table align="center" id=mid>
<tr>
<td><input id="button" style="width:450px; height:300px;" class="button" type = "submit" value="영상"></td>
<td><input id="button" style="width:450px; height:300px;" class="button" type = "submit" value="영상"></td>
</tr>
</table>


<table align="center"id=mid>
<tr>
<td><input id="button" style="width:450px; height:300px;" class="button" type = "submit" value="영상"></td>
<td><input id="button" style="width:450px; height:300px;" class="button" type = "submit" value="영상"></td>
</tr>
</table>


<table align="center" id=mid>
<tr>
<td><input id="button" style="width:450px; height:300px;" class="button" type = "submit" value="영상"></td>
<td><input id="button" style="width:450px; height:300px;" class="button" type = "submit" value="영상"> </td>
</tr>
</table>

<form action="/web/loginInsert.do" method ="post" id="form">
<table style="width:100%;">
<tr>
	<td> <img id="training" src="resources/img/training.png" width="150px" height="150px"> </td>
	<td> <img id="videioTrainging" src="resources/img/videioTrainging.png" width="150px" height="150px"> </td>
	<td align="right"> <button id="button_gym"> <img id="gym (1)" src="resources/img/gym (1).png" width="350px" height="350px"> </button> </td>
</tr>
</table>
</form>


</body>
</html>