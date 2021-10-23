<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
          initialView: 'dayGridMonth',
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
          	    			title : obj.timediff
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
        display: none;
        width: 50%;
        height: 60%;
        position: absolute;
        top:10%;
        left: 70%;
        margin: -254px 0 0 -236px;
        background:#FFFFFF;
        z-index: 3;
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
        z-index: 2;
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
	height:10%;
	color:#362222;
	/** background-color: #CAB0FF;
	float:center;
	border-bottom-width:thin;
	border-bottom-color:rgba(25,80,100,0);
	border-bottom:solid; **/
}

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

</style>
<script>
function clickKal(){
	console.log("test")
}

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
    
    var myFunction = function onClick2() {
        document.querySelector('.modal2_wrap').style.display ='block';
        document.querySelector('.black_bg').style.display ='block';
    };   
    function offClick2() {
        document.querySelector('.modal2_wrap').style.display ='none';
        document.querySelector('.black_bg').style.display ='none';
    }

    var className = document.getElementsByClassName('fc-event-title-container');
    for(var i = 0; i < className.length; i++){
    	className[i].addEventListener('click', myFunction, false);
    }
	
    document.querySelector('.black_bg').addEventListener('click', offClick2);
}
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
			<h1 style="font-size: 100px;margin-left: 70px;">The Ai Fitness</h1>
		</div>
		<div class="top_right">
			<img id="modal_btn" src="resources/img/화살표.png"
				style="width: 200px; height: 200px;">
		</div>
   	</div>
   	
   	<div class="main_mid">
   		<div id='calendar' ></div>
   	</div>
   	
    <div class="main_bot">
		<div class="bot_left"><img class="bimg_left" src="resources/img/woman.png"></div>
		<div class="bot_right"><a href="http://localhost:8081/web/main.do"><img class="bimg_right" src="resources/img/gym (1).png"></a></div>
	</div>
	
	</div>
  </body>
</html>