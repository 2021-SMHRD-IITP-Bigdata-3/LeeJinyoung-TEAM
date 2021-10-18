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
    
    .admin_wrap{
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
    .admin_bg{
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
height:20%;
text-align: center;
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
font-size:70px;
color : #CCA7A7;
}

.modal_mid_left{
width:35%;
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

#admin{
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

#admin_top_title{
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

#user_name{
text-align: center; 
border-radius:40px;
background-color:#F1F2F6;
font-weight:bolder;
appearance:none;
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
            document.querySelector('.admin_wrap').style.display ='block';
            document.querySelector('.admin_bg').style.display ='block';
        }   
        function offClick1() {
            document.querySelector('.admin_wrap').style.display ='none';
            document.querySelector('.admin_bg').style.display ='none';
        }
     
        document.getElementById('mid').addEventListener('click', onClick1);
        document.querySelector('.admin_bg').addEventListener('click', offClick1);

		}

</script>


</head>
<body bgcolor="#F1F2F6">

<div class="black_bg"></div>
	<div class="modal_wrap">
		<div class = "modal_top">
			<div id="NSK_font" style = "font-size:80px;"><b><br>관리자 님</b></div>
		</div>
		<br><br>
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
	
<div class="admin_bg"></div>
	<div class="admin_wrap">
		<div class="admin_top" style="width:100%; height:200px;">
			<div id="admin_top_title"> <b> 영상 제목 </b> </div>
			<hr style="border: solid 10px gray;">
		</div>
		
		<div class="admin_middle" style="width:100%; height:500px;">
			<div id="admin_middle_content">  </div>
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

<table style="width:100%;">
		<tr>
			<td style="width:10%; align:center;"></td>
			<td style="width:30%; align:center;">
				<input style="width:400px;height:100px;font-size:60px;font-family:Regular;" type="text" id="user_name" >
			</td>
			<td style="width:50%;">
				<select name="ex_part"  style="width:400px;height:100px;font-size:60px;font-family:Regular;">
					 <option align="center" font-family="Regular" > 운동 부위  </option>
					 	<option align="center" value ="등" >등</option>												
					 	<option align="center" value ="팔" >팔</option>										
					 	<option align="center" value ="가슴" >가슴</option>
					 	<option align="center" value ="어깨" >어깨</option>
					 	<option align="center" value ="복근" >복근</option>
					 	
				</select>
			</td>
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

<table align="center" id=mid>
<tr>
<td><input id="button" style="width:450px; height:300px;" class="button" type = "submit" value="영상"></td>
<td><input id="button" style="width:450px; height:300px;" class="button" type = "submit" value="영상"> </td>
</tr>
</table>


</body>
</html>