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
<script src="masonry.pkgd.js"></script>

<meta charset="UTF-8">
    <script>

/*     document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
        	 initialView: 'dayGridWeek',
        	 views: {
          		 	dayGridWeek: { // name of view
          		 		titleFormat: { year:'numeric',  month: '2-digit', day: '2-digit' }, // 캘린더 위 타이틀 부분
          		 		dayHeaderFormat:{ month: '2-digit',  day: '2-digit' }, // 캘린더 아래 1주일 부분
        		    }  
        		  },
        	events:[{
        	      start: '2021-10-26',

        	}]
        	});
        calendar.render();
      }); */
    </script>
    
<title>Insert title here</title>

<style>

html, body {
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
}

    .black_bg{
        /* display: none; */
        position: fixed;
        content: "";
        width: 100%;
        height: 100vh;
        background-color:rgba(218, 215, 216, 0.5);
        top:0;
        left: 0;
        z-index: 1000;
        
          /* 숨기기 */
  		z-index: -1;
  		opacity: 0;
    }
    
    .modal_wrap{
        /* display: none; */
        width: 50%;
        height: 50%;
        position: relative;
        left: 50%;
/*      top:10%;
        margin: -254px 0 0 -236px; */
        background:#FFFFFF;
/*      z-index: 2; */
        border-top-left-radius: 3em;
        border-bottom-left-radius: 3em;
    }
    
.modal_main{
  position: absolute;
    top: 53%;
    left: 52%;
    width: 100%;
    height: 100%;
  transform: translate(-50%, -50%);
  
   /* 초기에 약간 아래에 배치 */
  transform: translate(-50%, -40%);
}

.show1 {
  opacity: 1;
  z-index: 1000;
  transition: all .5s;
}

.show1 .modal_main {
  transform: translate(-50%, -50%);
  transition: all .5s;
}
    
    /* .record_p, .record_g, .record_b, .record_d, .record_u */
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

.modal_top_left{
    font-size: 50px;
    width: 40%;
    height: 50%;
    float: left;
    top: 56px;
    margin-bottom: 40px;
    text-align: right;
}

.modal_top_right{
font-size: 40px;
width: 55%;
height: 64%;
float: right;
text-align: left;
top: 6%;
margin-bottom: 20px;
}

.modal_mid{
width:100%;
height:60%;
font-size:50px;
text-align: center;
margin-top: -60px;
}

.modal_mid_mid{
height:20%;
padding: 0px 30px 0px 0px;
}

#modal_mid_b{
text-align: center;
font-size:40px;
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
   
/*    select{
   position:relative;
   border-radius:40px;
   font-weight:bolder;
   appearance:none;
   right:-20%;
   } */

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
	width:450px;
	height:300px;
}
input{
font-size:60px;
text-align: center;
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
/* 	position: absolute;
	top : 8%;
	width:98%;
	height:0%;
	filter : opacity(.5) drop-shadow(0 0 0 gray); */
	   position:relative;
   width:98%;
   filter : opacity(.5) drop-shadow(0 0 0 gray);
}

#record_top_title{
font-size:100px;
font-weight:bolder;
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
font-size:50px;
font-family:Regular;
font-weight:bolder;
}

.ttleft{
font-size: 50px;
    font-family: Regular;
    font-weight: bolder;
        width: 50%;
    height: 100%;
    float: left;
        padding-top: 40px;
    padding-left: 50px;
}
.ttright{
font-size: 50px;
    font-family: Regular;
    font-weight: bolder;
        width: 50%;
    height: 100%;
    float: right;
        text-align: right;
    padding-right: 50px;
}

#out{
width: 150px;
}

b{
font-size:40px;
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
height:70%;
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

#record_video7, #record_video2, #record_video3,
#record_video4, #record_video5, #record_video6{
width: 450px;
height: 450px;
}
.main_bot {
width:100%;
height:20%;
background-color : #F1F2F6;
text-align: center;
padding-top: 30%;
}
.calender{

}
.hide{
height: 300px;
}

#exercise{
width:400px;
height:100px;
font-size:50px;
font-family:Regular;
}

.item {
    width: 450px;
    float: left;
    margin-left: 90px;
    margin-top: 40px;
    margin-bottom: 30px;
}

#calendar{
    height: 30%;
    width: 120%;
    text-align: center;
    margin-right: 33px;
}
#cal_left{
width: 85%;
float: left;
position: relative;
text-align: right;
}
#cal_right{
    width: 15%;
    height: 100%;
    position: relative;
    float: right;
}
#memos{
text-align: center;
}
#texts{
    width: 90%;
    text-align: center;
}
#dates{
    border-radius: 40px;
    font-family: 'Noto Sans KR', sans-serif;
    border: none;
}

</style>

<script>
window.onload = function() {
	 
	function show1 () {
		  document.querySelector(".black_bg").className = "black_bg show1";
		}
	function close1 () {
		  document.querySelector(".black_bg").className = "black_bg";
		}
	
    document.querySelector("#modal_btn").addEventListener("click", show1);
    document.querySelector(".black_bg").addEventListener("click", close1);
    
    
    
    function onClick3() {
        document.querySelector('.record_wrap').style.display ='block';
        document.querySelector('.record_bg').style.display ='block';
    }   
    function offClick3() {
        document.querySelector('.record_wrap').style.display ='none';
        document.querySelector('.record_bg').style.display ='none';
    }
 
    document.getElementById('record_video2').addEventListener('click', onClick3);
    document.querySelector('.record_bg').addEventListener('click', offClick3);
       
    
    function onClick4() {
        document.querySelector('.record_wrap').style.display ='block';
        document.querySelector('.record_bg').style.display ='block';
    }   
    function offClick4() {
        document.querySelector('.record_wrap').style.display ='none';
        document.querySelector('.record_bg').style.display ='none';
    }
 
    document.getElementById('record_video3').addEventListener('click', onClick4);
    document.querySelector('.record_bg').addEventListener('click', offClick4);
    
    function onClick5() {
        document.querySelector('.record_wrap').style.display ='block';
        document.querySelector('.record_bg').style.display ='block';
    }   
    function offClick5() {
        document.querySelector('.record_wrap').style.display ='none';
        document.querySelector('.record_bg').style.display ='none';
    }
 
    document.getElementById('record_video4').addEventListener('click', onClick5);
    document.querySelector('.record_bg').addEventListener('click', offClick5);

 
    function onClick6() {
        document.querySelector('.record_wrap').style.display ='block';
        document.querySelector('.record_bg').style.display ='block';
    }   
    function offClick6() {
        document.querySelector('.record_wrap').style.display ='none';
        document.querySelector('.record_bg').style.display ='none';
    }
 
    document.getElementById('record_video5').addEventListener('click', onClick6);
    document.querySelector('.record_bg').addEventListener('click', offClick6);
      
    
    function onClick7() {
        document.querySelector('.record_wrap').style.display ='block';
        document.querySelector('.record_bg').style.display ='block';
    }   
    function offClick7() {
        document.querySelector('.record_wrap').style.display ='none';
        document.querySelector('.record_bg').style.display ='none';
    }
 
    document.getElementById('record_video6').addEventListener('click', onClick7);
    document.querySelector('.record_bg').addEventListener('click', offClick7);
/*     function onClick() {
        document.querySelector('.modal_wrap').style.display ='block';
        document.querySelector('.black_bg').style.display ='block';
    }   
    function offClick() {
        document.querySelector('.modal_wrap').style.display ='none';
        document.querySelector('.black_bg').style.display ='none';
    }
 
    document.getElementById('modal_btn').addEventListener('click', onClick);
    document.querySelector('.black_bg').addEventListener('click', offClick); */
    
    
    
/*     var onClick_d = function onClick_d() {	
        document.querySelector('.record_d').style.display ='block';
        document.querySelector('.record_bg').style.display ='block';
    }   
    function offClick_d() {
        document.querySelector('.record_d').style.display ='none';
        document.querySelector('.record_bg').style.display ='none';
    }
 	
    var className = document.getElementsByClassName('button_d');
    for(var i = 0; i<className.length;i++){
    	className[i].addEventListener('click', onClick_d, false);
    }
    
    var onClick_p = function onClick_p() {	
        document.querySelector('.record_p').style.display ='block';
        document.querySelector('.record_bg').style.display ='block';
    }   
    function offClick_p() {
        document.querySelector('.record_p').style.display ='none';
        document.querySelector('.record_bg').style.display ='none';
    }
 	
    var className = document.getElementsByClassName('button_p');
    for(var i = 0; i<className.length;i++){
    	className[i].addEventListener('click', onClick_p, false);
    }
    
    var onClick_g = function onClick_g() {	
        document.querySelector('.record_g').style.display ='block';
        document.querySelector('.record_bg').style.display ='block';
    }   
    function offClick_g() {
        document.querySelector('.record_g').style.display ='none';
        document.querySelector('.record_bg').style.display ='none';
    }
 	
    var className = document.getElementsByClassName('button_g');
    for(var i = 0; i<className.length;i++){
    	className[i].addEventListener('click', onClick_g, false);
    }
    
    var onClick_u = function onClick_u() {	
        document.querySelector('.record_u').style.display ='block';
        document.querySelector('.record_bg').style.display ='block';
    }   
    function offClick_u() {
        document.querySelector('.record_u').style.display ='none';
        document.querySelector('.record_bg').style.display ='none';
    }
 	
    var className = document.getElementsByClassName('button_u');
    for(var i = 0; i<className.length;i++){
    	className[i].addEventListener('click', onClick_u, false);
    }
    
    var onClick_b = function onClick_b() {	
        document.querySelector('.record_b').style.display ='block';
        document.querySelector('.record_bg').style.display ='block';
    }   
    function offClick_b() {
        document.querySelector('.record_b').style.display ='none';
        document.querySelector('.record_bg').style.display ='none';
    }
 	
    var className = document.getElementsByClassName('button_b');
    for(var i = 0; i<className.length;i++){
    	className[i].addEventListener('click', onClick_b, false);
    } */
    
    /* document.getElementById('button').addEventListener('click', onClick1); */
    /* 꺼질때는 다같이 */
/*     document.querySelector('.record_bg').addEventListener('click', offClick_d);
    document.querySelector('.record_bg').addEventListener('click', offClick_p);
    document.querySelector('.record_bg').addEventListener('click', offClick_g);
    document.querySelector('.record_bg').addEventListener('click', offClick_u);
    document.querySelector('.record_bg').addEventListener('click', offClick_b); */
   	
    
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
    
    /* 달력 기본날짜 오늘날짜로 */
    today = new Date();
	console.log("today.toISOString() >>>" + today.toISOString());
	today = today.toISOString().slice(0, 10);
	console.log("today >>>> " + today);
	bir = document.getElementById("dates");
	bir.value = today;
	

}

</script>
<style> /* 다이어리 스크롤 */
/*     .menu a{cursor:pointer;}
    .menu .hide{display:none;}

ul{
   list-style:none;
   padding-left:0px;
   } */

[type="date"] {
  background:#fff 
/*   url(https://cdn1.iconfinder.com/data/icons/cc_mono_icon_set
  /blacks/16x16/calendar_2.png) */
  url(resources/img/circlesm.png)
    90% 50% no-repeat ;
}
[type="date"]::-webkit-inner-spin-button {
  display: none;
}
[type="date"]::-webkit-calendar-picker-indicator {
  opacity: 0;
}
</style>

<!-- <script> /* 다이어리 눌렀을때 스크롤 */
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
</script> -->
<!-- input에 오늘날짜 기본값으로 넣기 -->
<script type="text/javascript">
/* 	window.onload = function() {
		today = new Date();
		console.log("today.toISOString() >>>" + today.toISOString());
		today = today.toISOString().slice(0, 10);
		console.log("today >>>> " + today);
		bir = document.getElementById("dates");
		bir.value = today;
	} */
	function showDiary(){
		  const element = document.getElementById('change');
		  element.innerHTML = '<div id="calendar"><input type="date" id="dates"></div>';
		} 
</script>

<style>
/* reset */
*{
    list-style: none;
    /* margin: 0; */
    padding: 0;
    font-size: 45px;
    box-sizing: border-box;
}

/* common */
/* body{
    padding: 30px;
} */
.hide{
    display: none;
}
.show {
  /* display: none; */
}

/* 셀렉트 영역 스타일 */
.select{
    position: relative;
    padding: 5px 10px;
    width: 400px;
    height: 100px;
    margin-left: 95px;
    border-radius: 60px;
    /* border:1px solid salmon; */
    background-color: white;
    background-image: url("https://img.icons8.com/material-rounded/24/000000/expand-arrow.png");
    background-repeat: no-repeat;
    background-position: 96% center;
    cursor: pointer;
    padding-left: 35px;
    padding-top: 15px;
}

/* 옵션 영역 스타일 */
.select ul{
    position: absolute;
    top: 30px;
    left: 0;
    width: 100%;
    border:1px solid salmon;
    border-radius: 5px;
    background-color: white;
    cursor: pointer;
    z-index: 2;
}
.select ul li{	/* 셀렉트목록 */
    padding: 10px;
    height: 100px;
}
.select ul li:first-child{
    background: white;
}
.select ul li:nth-child(2){
    background: white;
}
.select ul li:nth-child(3){
    background: white;
}
.select ul li:nth-child(4){
    background: white;
}
.select ul li:nth-child(5){
    background: white;
}
.select ul li:hover{
    background-color: white;
}
/* 아이콘 스타일 */
i{
    vertical-align: bottom;
    margin-right: 5px;
}
i img{
    width: 60px;
}
</style>

</head>
<body>

	<div class="black_bg">
	<div class="modal_wrap">
	<div class="modal_main">
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
	</div>
	</div>
	
	<div class="record_bg"></div>
    <div class="record_wrap">
      <div class="record_top" style="width:100%; height:200px;">
         <div id="record_top_title">
         <div class="ttleft"> 체스트프레스 </div> 
         <div class="ttright"><img id="out" src="resources/img/out.png" onclick = "go_record()"></div>
         </div>
         <hr style="border: solid 10px gray;">
      </div>
      
      <div class="record_middle" style="width:100%; height:1000px;" align="center">   
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
            <td> <b>상체를 더 왼쪽으로 기울여 주시면 될거 같아요!!</b> </td>
         </tr>
         </table>

         <table align="center" id=bottom>
            <tr>
            <td><input style="width:450px; height:300px;" class="button" type = "submit" value="잘못된 자세"></td>
            <td> <b>어깨를 좀 더 내려주세요</b>></td>
         </tr>
         </table>
   </div>

<!-- 	<div class="record_p">	팔운동
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
		
		
		<div class="record_g">	가슴운동
			<div class="record_top" style="width:70%; height:200px;">
				<div id="record_top_title"> <b> 펙 덱 플라이 </b> </div>
			<hr style="border: solid 10px gray;">
			</div>
			<div class="record_middle" style="width:70%; height:1000px;" align="center">	
				<div id="record_middle_content">
					<video poster="resources/img/펙덱플라이.png" id="video" controls="controls">
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
		</div> -->
		
<!-- 				<div class="record_u">	어깨운동
			<div class="record_top" style="width:70%; height:200px;">
				<div id="record_top_title"> <b> 어깨운동 </b> </div>
			<hr style="border: solid 10px gray;">
			</div>
			<div class="record_middle" style="width:70%; height:1000px;" align="center">	
				<div id="record_middle_content">
					<video poster="resources/img/어깨.png" id="video" controls="controls">
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

	<div class="record_b">
		복근운동
		<div class="record_top" style="width: 70%; height: 200px;">
			<div id="record_top_title">
				<b> 복근운동 </b>
			</div>
			<hr style="border: solid 10px gray;">
		</div>
		<div class="record_middle" style="width: 70%; height: 1000px;"
			align="center">
			<div id="record_middle_content">
				<video poster="resources/img/복근.png" id="video" controls="controls">
					<source src="resources/record/record1.mp4" type="video/mp4" />
				</video>
			</div>
		</div>
		<div style="width: 70%; height: 100px;"></div>
		<table align="center" id=bottom>
			<tr>
				<td><input style="width: 450px; height: 300px;" class="button"
					type="submit" value="잘못된 자세"></td>
				<td><a>상체를 더 왼쪽으로 기울여 주시면 될거 같아요!!</a></td>
			</tr>
		</table>
		<table align="center" id=bottom>
			<tr>
				<td><input style="width: 450px; height: 300px;" class="button"
					type="submit" value="잘못된 자세"></td>
				<td><a>어깨를 좀 더 내려주세요</a>></td>
			</tr>
		</table>
	</div> -->


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
				<td><div id="change"> <a id="record" align ="center">자세교정 녹화본</a> </div></td>
				<td>
<!-- 					<select name="exercise" id="exercise">
					 <option align="center" value ="운동 부위" font-family="Regular" > 운동 부위  </option>
					 <option align="center" value ="등" >등</option>												
					 <option align="center" value ="팔" >팔</option>										
					 <option align="center" value ="가슴" >가슴</option>
					 <option align="center" value ="어깨" >어깨</option>
					 <option align="center" value ="복근" >복근</option>	
					</select> -->
					
						<div class="select" data-role="selectBox" name="exercise" id="exercise">
							<span date-value="optValue" class="selected-option">
								<!-- 선택된 옵션 값이 출력되는 부분 -->
							</span>
							<!-- 옵션 영역 -->
							<ul class="hide" id="wrap">
								<li class ="전체"><i><img src="resources/img/menu.png" alt="전체"/></i>전체</li>
								<li class ="등"><i><img src="resources/img/등.png" alt="등" /></i>등</li>
								<li class ="팔"><i><img src="resources/img/p.png" alt="팔" /></i>팔</li>									
								<li class ="가슴"><i><img src="resources/img/가슴.png" alt="가슴" /></i>가슴</li>
								<li class ="어깨"><i><img src="resources/img/어깨.png" alt="어깨" /></i>어깨</li>
								<li class ="복근"><i><img src="resources/img/복근.png" alt="복근" /></i>복근</li>
							</ul>
						</div>

						</td>
				<td> <!-- <img id="diary_btn" src="resources/img/weightDiary.png" width="100px" height="100px"> --> </td>
			</tr>		
		</table>
		<div>
    	<ul>
        <li class="menu">
            <a onclick='showDiary()' value='changeDiary'><img id="diary_btn" src="resources/img/weightDiary.png" width="100px" height="100px"></a>
            <ul class="hide">
				<div id="calendar">
					<!-- <div id="cal_left"> -->
						<input type="date" id="dates">
					<!-- </div> -->
<!-- 					<div id="cal_right">
						<button onclick="calM()">메모</button>
					</div> -->
				</div>
<!-- 				<div id="memos"><input type="text" id="texts"></div> -->
            </ul>
        </li>
		</ul>
		</div>
	</div>
<script>
/* function calM() {
  var x = document.getElementById("dates").value;
  document.getElementById("memos").innerHTML = x;
  
} */
</script>	

<div id="container">
  <div class="div_p" ><div class="item">
  	<video poster="resources/img/p.png" id="record_video3"></video></div></div>
  <div class="div_d"><div class="item">
    <video poster="resources/img/등.png" id="record_video2"></video></div></div>
  <div class="div_b"><div class="item">
  	<video poster="resources/img/복근.png" id="record_video6"></video></div></div>
  <div class="div_u"><div class="item">
  	<video poster="resources/img/어깨.png" id="record_video5"></div></div>
  <div class="div_p"><div class="item">
  	<video poster="resources/img/p.png" id="record_video3"></div></div>
  <div class="div_g"><div class="item">
  	<video poster="resources/img/가슴.png" id="record_video4"></div></div>
<!--   <div class="div_b"><div class="item">
  	<input id="button" class="button_b" type = "submit" value="복근영상"></div></div>
  <div class="div_p"><div class="item">
  	<input id="button" class="button_p" type = "submit" value="팔영상"></div></div> -->
 <!-- <div class="div_b"><div class="item">
  	<input id="button" class="button_b" type = "submit" value="복근영상"></div></div>
  <div class="div_p"><div class="item">
  	<input id="button" class="button_p" type = "submit" value="팔영상"></div></div>
  <div class="div_p"><div class="item">
  	<input id="button" class="button_p" type = "submit" value="팔영상"></div></div> -->
</div>
<!-- 	<div class="mid_bot">
	<div class="div_d">
<table align="center" id=mid>
<tr>
<td><input id="button" class="button" type = "submit" value="등영상"></td>
<td><input id="button" class="button" type = "submit" value="등영상"></td>
</tr>
</table>
	</div>
	
	<div class="div_p">
<table align="center" id=mid>
<tr>
<td><input id="button" class="button" type = "submit" value="팔영상"></td>
<td><input id="button" class="button" type = "submit" value="팔영상"></td>
</tr>
</table>
	</div>
	
	<div class="div_g">
<table align="center"id=mid>
<tr>
<td><input id="button" class="button" type = "submit" value="가슴영상"></td>
<td><input id="button" class="button" type = "submit" value="가슴영상"></td>
</tr>
</table>
	</div>
	
	<div class="div_b">
<table align="center" id=mid>
<tr>
<td><input id="button" class="button" type = "submit" value="복근영상"></td>
<td><input id="button" class="button" type = "submit" value="복근영상"> </td>
</tr>
</table>
	</div>
	</div> -->
</div>
	
<div class="main_bot" id="NSK_font">
      <img id="gym2" align="bottom" src="resources/img/gym2.png" width="150px" height="150px" onclick = "go_main()">
</div>

</div>
<script> /* 컨테이너 */
  var container = document.querySelector( '#container' );
  var msnry = new Masonry( container, {
    // options
    columnWidth: 100,
    itemSelector: '.item',
  } );
</script>
<script> /* 셀렉트 선택시 동영상 상자 */
$('.전체').click(function(){
	$('.div_d').show();
	$('.div_p').show();
	$('.div_g').show();
	$('.div_u').show();
	$('.div_b').show();
})
$('.등').click(function(){
    $('.div_d').show();
    $('.div_p').hide();
    $('.div_g').hide();
    $('.div_u').hide();
    $('.div_b').hide();
})
$('.팔').click(function(){
  	$('.div_p').show();
	$('.div_d').hide();
    $('.div_g').hide();
    $('.div_u').hide();
    $('.div_b').hide();
})
$('.가슴').click(function(){
	$('.div_g').show();
 	$('.div_d').hide();
    $('.div_p').hide();
    $('.div_u').hide();
    $('.div_b').hide();
})
$('.어깨').click(function(){
	$('.div_u').show();
	$('.div_d').hide();
    $('.div_p').hide();
    $('.div_g').hide();
    $('.div_b').hide();
})	    
$('.복근').click(function(){
	$('.div_b').show();
	$('.div_d').hide();
    $('.div_p').hide();
    $('.div_g').hide();
    $('.div_u').hide();
})	
</script>
<script type="text/javascript"> /* 셀렉트 */
const body = document.querySelector('body');
const select = document.querySelector(`[data-role="selectBox"]`);
const values = select.querySelector(`[date-value="optValue"]`);
const option = select.querySelector('ul');
const opts = option.querySelectorAll('li');

/* 셀렉트영역 클릭 시 옵션 숨기기, 보이기 */
function selects(e){
    e.stopPropagation();
    option.setAttribute('style',`top:${select.offsetHeight}px`)
    if(option.classList.contains('hide')){
        option.classList.remove('hide');
        option.classList.add('show');
    }else{
        option.classList.add('hide');
        option.classList.remove('show');
    }
    selectOpt();
}

/* 옵션선택 */
function selectOpt(){
    opts.forEach(opt=>{
        const innerValue = opt.innerHTML;
        function changeValue(){
            values.innerHTML = innerValue;
        }
        opt.addEventListener('click',changeValue)
    });
}

/* 선택시 div보이게 */


/* 렌더링 시 옵션의 첫번째 항목 기본 선택 */
function selectFirst(){
    const firstValue = opts[0].innerHTML;
    values.innerHTML = `${firstValue}`
}



/* 옵션밖의 영역(=바디) 클릭 시 옵션 숨김 */
function hideSelect(){
    if(option.classList.contains('show')){
        option.classList.add('hide');
        option.classList.remove('show');
    }
}

selectFirst();
select.addEventListener('click',selects);
body.addEventListener('click',hideSelect);
</script>
</body>
</html>