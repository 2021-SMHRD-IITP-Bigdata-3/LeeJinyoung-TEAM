<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8' />
    <link href='resources/record.css' rel='stylesheet' />
    <script src='resources/record.js'></script>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://unpkg.com/@popperjs/core@2/dist/umd/popper.js"></script>
<script src="https://unpkg.com/tippy.js@6"></script>
<meta charset="UTF-8">
    <script>

    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
        	 initialView: 'dayGridWeek',
        	 views: {
          		 	dayGridWeek: { // name of view
          		 		titleFormat: {/* year:'numeric',  */month: '2-digit', day: '2-digit' }, // 캘린더 위 타이틀 부분
          		 		dayHeaderFormat:{/* month: '2-digit', */ day: '2-digit' }, // 캘린더 아래 1주일 부분
        		    }  
        		  },
        	events:[{
        	      start: '2021-10-27',
        	      end: '2021-10-27',
        	      display: 'background'
        	}]
        	});
        calendar.render();
      });
    </script>
    
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
        height: 93%;
        position: absolute;
        top:13%;
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

/* 	    .diary_wrap{
        display: none;
        width: 100%;
        height: 30%;
        position: absolute;
        top:26.3%;
        left: 20%;
        margin: -254px 0 0 -236px;
        background:#FFFFFF;
        z-index: 2;
         border-radius:5em; 
    }
    .diary_bg{
        display: none;
        position: absolute;
        content: "";
        width: 100%;
        height: 100%;
        background-color:rgba(218, 215, 216, 0.5);
        top:0;
        left: 0;
        z-index: 1;
    } */

   
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
background-color : white;
}

.top_left{
float:left;
width:80%;
height:100%;
}

#modal_btn{
position:relative;
top:20%;
}

.top_right{
position:relative;
float:right;
width:20%;
height:100%;
}


#NSK_font{
font-family: 'Noto Sans KR', sans-serif;
}

#record{
	position:relative;
	font-size:70px;
	font-family:Regular;
	font-weight:bolder;
	right:-15%;
   }
   
   select{
   position:relative;
   border-radius:40px;
   font-weight:bolder;
   appearance:none;
   right:-20%;
   }

.diary_top{
height: 100%;
}

#diary_btn{
    position: absolute;
    right: 3%;
    top: 11.5%;
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


#training{
	filter : opacity(.5) drop-shadow(0 0 0 gray);
	top: 110px;
    right: 40px;
    position: relative;
}

#videioTrainging{
	filter : opacity(.5) drop-shadow(0 0 0 gray);
	top: 110px;
    left: 40px;
    position: relative;
}

#button_gym{
border: none;
/* position: absolute;
top : 84%;
left : 34%; */
}


hr{
	position: absolute;
	top : 8%;
	width:98%;
	height:0%;
	filter : opacity(.5) drop-shadow(0 0 0 gray);
}

#record_top_title{
font-size:100px;
padding: 50px 50px 50px 50px;
}

#record_middle_content{
position:relative;
top:15%;
}

#video{
position:relative;
width:1000px;
height:800px;
left:5%;
}

#bottom{
border-spacing: 50px;
border-collapse: separate;
}

a{
font-size:40px;
font-family:Regular;
font-weight:bolder;
}

b{
font-size:80px;
}

h1{
position:relative;
left:-10%;
}

h2{
position:relative;

}

.middle{
background-color:#F1F2F6;
}

.d{
padding: 50px 0px 0px 0px;
}

.main_map {
	width:100%;
	height:100%;
	background-color : #F1F2F6;
}

.main_mid {
width:100%;
/* height:70%; */
/* border-bottom: 20px solid #DACDF5; */
/** background-color:red;
float:left; **/}

.mid_top{
width:100%;

}

.mid_bot{
width:100%;
/* height:90%; */
}
.main_bot {
width:100%;
/* height:20%; */
background-color : #F1F2F6;
text-align: center;

}
.calender{

}
.hide{
height: 500px;
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
 
    document.getElementById('button').addEventListener('click', onClick1);
    document.querySelector('.record_bg').addEventListener('click', offClick1);
   	
    
/*     function onClick2() {
        document.querySelector('.diary_wrap').style.display ='block';
        document.querySelector('.diary_bg').style.display ='block';
    }   
    function offClick2() {
        document.querySelector('.diary_wrap').style.display ='none';
        document.querySelector('.diary_bg').style.display ='none';
    }
 
    document.getElementById('diary_btn').addEventListener('click', onClick2);
    document.querySelector('.diary_bg').addEventListener('click', offClick2); */
    

}

</script>
<style>
    .menu a{cursor:pointer;}
    .menu .hide{display:none;}

ul{
   list-style:none;
   padding-left:0px;
   }

</style>

<script>
    // html dom 이 다 로딩된 후 실행된다.
    $(document).ready(function(){
        // menu 클래스 바로 하위에 있는 a 태그를 클릭했을때
        $(".menu>a").click(function(){
            var submenu = $(this).next("ul");
 
            // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
            if( submenu.is(":visible") ){
                submenu.slideUp();
            }else{
                submenu.slideDown();
            }
        });
    });
</script>

</head>
<body>

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
		<div class="record_top" style="width:70%; height:200px;">
			<div id="record_top_title"> <b> 체스트프레스 </b> </div>
			<hr style="border: solid 10px gray;">
		</div>
		
		<div class="record_middle" style="width:70%; height:1000px;" align="center">	
			<div id="record_middle_content">
				<video poster="resources/img/체스트프레스.png" id="video" controls="controls">
    				<source src="resources/record/record1.mp4" type="video/mp4" />
				</video>
			</div>	
		</div>
	
		<div style="width:70%; height:100px;"> </div>
		
			<table align="center" id=bottom>
				<tr>
				<td><input style="width:450px; height:300px;" class="button" type = "submit" value="잘못된 자세"></td>
				<td> <a>상체를 더 왼쪽으로 기울여 주시면 될거 같아요!!</a> </td>
			</tr>
			</table>

			<table align="center" id=bottom>
				<tr>
				<td><input style="width:450px; height:300px;" class="button" type = "submit" value="잘못된 자세"></td>
				<td> <a>어깨를 좀 더 내려주세요</a>></td>
			</tr>
			</table>
	</div>
	
	
<!-- 		<div class="diary_bg"></div>
	<div class="diary_wrap">
		<div class = "diary_top">
			<div id="calendar"></div>
		</div>
	</div> -->
	
	
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
		<table style="padding-top: 40px;">
			<tr>
				<td> <a id="record" align ="center">자세교정 녹화본</a> </td>
				<td>
					<select name="ex_part"  style="width:400px;height:100px;font-size:50px;font-family:Regular;">
					 <option align="center" font-family="Regular" > 운동 부위  </option>
					 <option align="center" value ="등" >등</option>												
					 <option align="center" value ="팔" >팔</option>										
					 <option align="center" value ="가슴" >가슴</option>
					 <option align="center" value ="어깨" >어깨</option>
					 <option align="center" value ="복근" >복근</option>	
					</select>
				</td>
				<td> <!-- <img id="diary_btn" src="resources/img/weightDiary.png" width="100px" height="100px"> --> </td>
			</tr>		
		</table>
		<div>
    	<ul>
        <li class="menu">
            <a><img id="diary_btn" src="resources/img/weightDiary.png" width="100px" height="100px"></a>
            <ul class="hide">
				<div id="calendar"></div>
            </ul>
        </li>
		</ul>
		</div>
	</div>

	<div class="mid_bot">
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
	</div>
</div>

<div class="main_bot">
<form action="/web/loginInsert.do" method ="post" id="form" >
<table style="width:100%; height: 100%;">
<tr>
	<td> <img id="training" src="resources/img/training.png" width="150px" height="150px"> </td>
	<td> <button id="button_gym"> <img id="gym (1)" src="resources/img/gym (1).png" width="350px" height="400px" > </button> </td>
	<td> <img id="videioTrainging" src="resources/img/videioTrainging.png" width="150px" height="150px"> </td>
</tr>
</table>
</form>

</div>

</div>
</body>
</html>