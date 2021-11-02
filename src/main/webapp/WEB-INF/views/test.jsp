<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.mapper.guest" %>

<!DOCTYPE html>
<html lang='en'>
  <head>
    <meta charset='utf-8' />
    <link href='resources/main.css' rel='stylesheet' />
    <script src='resources/main.js'></script>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>

    <script>

      document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          initialView: 'dayGridMonth',//이게 달력형식을 해주는건데
          events: function(info,successCallback, failureCallback){
        	  $.ajax({
         		 type: "post",
          	     url: "/web/infoCalender.do?user_id=1234",
          	     dataType: "json",
          	     success: function(result){
          	    	 console.log(result)
          	    	 var events = [];
          	    	 $.each(result,function(index,obj){
          	    		events.push({
          	    			start : obj.ex_day,
          	    			title : ((4*(3.5*obj.user_weight*obj.timediff))/1000)*5+"kal"
          	    		})
          	    	 })
          	    	console.log(events);
          	    	successCallback(events);
          	    	 }

         	  });
           },
        	  eventDidMount: function(info) {
        	    if (info.event.extendedProps.status === 'done') {

        	      // Change background color of row
        	      info.el.style.backgroundColor = 'red';

        	      // Change color of dot marker
        	      var dotEl = info.el.getElementsByClassName('fc-event-dot')[0];
        	      if (dotEl) {
        	        dotEl.style.backgroundColor = 'white';
        	      }
        	    }
        	  }
        });
        calendar.render();
      });

    </script>
<style>
html, body {
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
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

.modal2_wrap{
        display: none;
        width: 80%;
        height: 50%;
        position: absolute;
        top:30%;
        left: 30%;
        margin: -254px 0 0 -236px;
        background:#FFFFFF;
        z-index: 3;
        border-radius: 5em;
 }
 
.modal2_top{
width:100%;
height:40%;
text-align: center;
padding: 0px 0px 0px 0px;
}

.modal2_top_top{
width:100%;
height:30%;
text-align: center;
padding: 30px 0px 0px 0px;
}

.modal2_top_left{
font-size:60px;
width:65%;
height:100%;
float:left;
text-align: left;
padding: 40px 0px 0px 40px;
}

.modal2_top_right{
font-size:50px;
width:20%;
height:100%;
float:right;
text-align: right;
padding: 60px 50px 0px 0px;
}
 
.modal2_top_bot{
border-top: 10px solid #C6C6C6;
font-size:50px;
width:100%;
height:40%;
text-align: left;
padding: 0px 0px 0px 50px;
}

.modal2_mid{
width:100%;
height:40%;
text-align: center;
padding: 0px 0px 0px 0px;
}

.modal2_mid_top{
width:100%;
height:30%;
text-align: center;
padding: 30px 0px 0px 0px;
}

.modal2_mid_left{
font-size:60px;
width:65%;
height:100%;
float:left;
text-align: left;
padding: 40px 0px 0px 40px;
}

.modal2_mid_right{
font-size:50px;
width:20%;
height:100%;
float:right;
text-align: right;
padding: 60px 50px 0px 0px;
}
 
.modal2_mid_bot{
border-top: 10px solid #C6C6C6;
font-size:50px;
width:100%;
height:40%;
text-align: left;
padding: 0px 0px 0px 50px;
}

.main_map {
	width:100%;
	height:100%;
	background-color : #F1F2F6;
}

.main_top {
width:100%;
height:8%;
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

.main_mid {
width:100%;
height:65%;
border-bottom: 20px solid #DACDF5;
/** background-color:red;
float:left; **/}

.main_bot {
width:100%;
height:25%;
}

.bot_left{
float:left;
width:50%;
height:100%;
}

.bot_right{
float:right;
width:50%;
height:100%;
}

.bimg_left{
width:500px;
height:500px;
position: absolute;
left: 0;
bottom: 0;
filter:blur(10px);
}

.bimg_right{
width:450px;
height:450px;
position: absolute;
right: 0;
bottom: 0;
filter: invert(27%) sepia(11%) saturate(41%)
hue-rotate(201deg) brightness(88%) contrast(84%);
}

h1{
position:relative;
left:-10%;
top:-5%;
}
</style>
<script>
function clickKal(){
	console.log("test")
}

window.onload = function() {
	
	
	   function show1 () {
	        document.querySelector(".black_bg").className = "black_bg show1";
	      }
	   function close1 () {
	        document.querySelector(".black_bg").className = "black_bg";
	      }
	   
	    document.querySelector("#modal_btn").addEventListener("click", show1);
	    document.querySelector(".black_bg").addEventListener("click", close1);
    
    function onClick2() {
        document.querySelector('.modal2_wrap').style.display ='block';
        document.querySelector('.record_bg').style.display ='block';
    };   
    function offClick2() {
        document.querySelector('.modal2_wrap').style.display ='none';
        document.querySelector('.record_bg').style.display ='none';
    }

    var className = document.getElementsByClassName('fc-event-title-container');
    for(var i = 0; i < className.length; i++){
    	className[i].addEventListener('click', onClick2, false);
    }
	
    document.querySelector('.record_bg').addEventListener('click', offClick2);
    
}

<%  guest member = (guest) session.getAttribute("member");%>

function go_record(){
	location.href = "/web/record.do?user_id="+<%=member.getUser_id()%>;
}

function go_calender(){
	location.href = "/web/test.do";
}


</script>
  </head>
  <body>
  <% member = (guest) session.getAttribute("member");%>
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
				<div class = "modal_mid_left"><img id="moicon" src="resources/img/diary.png" onclick="go_calender()"></div>
				<div class = "modal_mid_right"><b id = "modal_mid_b" onclick="go_calender()">운동 다이어리</b></div>
			</div>	
			<div class = "modal_mid_mid">
				<div class = "modal_mid_left"><img id="moicon" src="resources/img/dumbbell.png"></div>
				<div class = "modal_mid_right"><b id = "modal_mid_b">운동 도구</b></div>
			</div>
			<div class = "modal_mid_mid">
				<div class = "modal_mid_left"><img id="moicon" src="resources/img/video.png" onclick="go_record()"></div>
				<div class = "modal_mid_right"><b id = "modal_mid_b" onclick="go_record()">운동 영상</b></div>
			</div>		
		</div>
		<div class = "modal_bot">
			<div id="NSK_font">고객센터     010-4903-4073</div>
		</div>
	</div>
	</div>
	</div>
	<div class="modal2_wrap">
		<div class = "modal2_top">
			<div class="modal2_top_top">
				<div class = "modal2_top_left"> 
					<div id="NSK_font"><b>체스트 프레스</b></div>
				</div>
				<div class = "modal2_top_right">
					<div id="NSK_font">4set</div>
				</div>
			</div>
			<div id="NSK_font" class="modal2_top_bot">	
				<div id="NSK_font">1set x 12reps<br>2set x 12reps
				<br>3set x 12reps<br>4set x 12reps</div>
			</div>
		</div>
		
		<div class = "modal2_mid">
			<div class="modal2_mid_top">
				<div class = "modal2_mid_left"> 
					<div id="NSK_font"><b>인클라인 체스트 프레스</b></div>
				</div>
				<div class = "modal2_mid_right">
					<div id="NSK_font">4set</div>
				</div>	
			</div>
			<div id="NSK_font" class="modal2_mid_bot">	
				<div id="NSK_font">1set x 12reps<br>2set x 12reps
				<br>3set x 12reps<br>4set x 12reps</div>
			</div>
			
		</div>
	</div>
	
	<div class="main_map">
	
		<div class="main_top" style = "text-align : center;">
			<div class="top_left">
				<h1 style = "font-size:80px;">The Ai Fitness</h1>
			</div>
			<div class="top_right">
				<img id="modal_btn" src="resources/img/menu.png"
					style="width: 120px; height: 120px;">
			</div>
		</div>
   	
   	<div class="main_mid">
   		<div id='calendar' ></div>
   	</div>
   	
    <div class="main_bot">
		<div class="bot_left"><img class="bimg_left" src="resources/img/woman.png"></div>
		<div class="bot_right"><a href="http://localhost:8081/web/main.do"><img class="bimg_right" src="resources/img/gym2.png"></a></div>
	</div>
	
	</div>
  </body>
</html>