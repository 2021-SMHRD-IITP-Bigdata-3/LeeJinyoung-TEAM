<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.mapper.exinfo" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Web Cam Video</title>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript" src="https://unpkg.com/webcam-easy/dist/webcam-easy.min.js"></script>
    <style>
    *{
    	margin : 0;
    	padding : 0;
    }
    html,body{
    	height:100%;
    }
    .wrapper{
    	height : 100%;
    	overflow : hidden;
    	display:flex;
    	flex-direction : column;
    	align-items: center;
    	justify-content: center;
    }
    .video-container{
    	display:flex;
    	width:550px;
    	padding : 1rem;
    	justify-content: space-around;
    }
    .video-item > h2{
    text-align: center;
    }
    .vide-item > video{
    border :1px solid red;
    width:250px;
    height:188px;
    }
    button,a {
    border : none;
    font-size:14px;
    padding : 0.5rem 1rem;
    cursor;pointer;
    }
	</style>
</head>
<body>
	<div class = "wrapper">
		<div class = "button-container">
			<button class = "record-button">녹화</button>
			<button class = "stop-button">중지</button>
			<button class = "play-button">녹화보기</button>
			<a class = "download-button">다운로드</a>
		</div>
		<div class = "video-container">
			<div class = "video-item">
				<h2>미리보기</h2>
				<video autoplay muted id = "preview"></video>
			</div>
			<div class = "video-item">
				<h2>미리보기</h2>
				<video id = "recording"></video>
			</div>
		</div>
	</div>
    <script>
    const recordButton = document.querySelector(".record-button")
    const stopButton = document.querySelector(".stop-button")
    const playButton = document.querySelector(".play-button")
    const downloadButton = document.querySelector(".download-button")
    const previewButton = document.querySelector("#preview")
    const recordingButton = document.querySelector("#recording")
    
    //중지하기위한 변수
    let recorder;
    let recordedChunks;
    //function
    function videoStart(){
    	navigator.mediaDevices.getUserMedia({video:true, audio : true})
    		.then(stream => console.log(stream))
    }
    /*
    function startRecording(stream){
    	recordedChunks=[];
    	recorder = new MediaRecorder(stream);
    	recorder.ondataavilable = (e) => {recordedChunks.push(e.data)}
    	recorder.start()
    }
    function stopRecording(){
    	previewPlayer.srcObject.getTracks().forEach(track=> track.stop());
    	recorder.stop()
    	console.log(recordedChunks)
    }
    function playRecording(){
    	const recordedBlob = new Blob(recordedChunks, {type : "video/webm"});
    	recordingPlayer.src = URL.createObjectURL(recordedBlob);
    	recordingPlayer.play()
//    	downloadButton.href = recordingPlayer.src;
//    	downloadButton.download = 'recording_${new Date().webm}'
//    	console.log(recordingPlayer.src)
    }
    */
    //event
    recordButton.addEventListener("click",videoStart);
    //stopButton.addEventListener("click",stopRecording);
    //playButton.addEventListener("click",playRecording);
    </script>
</body>
</html>