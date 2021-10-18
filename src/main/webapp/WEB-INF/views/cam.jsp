<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.mapper.exinfo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
  margin:0;
  padding:0;
}
html.body{
  height: 100%;
}
.wrapper{
  height:100%;
  overflow:hidden;
  display:flex;
  flex-direction:column;
  align-items:center;
  justify-content:center;
}
.video-container{
  display:flex;
  width:550px;
  padding:1rem;
  justify-content:space-around;
}
.video-item > h2{
  text-align:center;
}
.video-item > video{
  border:1px solid red;
  weight:250px;
  height:188px;
}
button, a{
  border:none;
  font-size:14px;
  background: #ccc;
  padding: 0.5rem 1rem;
  cursor:pointer;
}
</style>
</head>
<body>
<% exinfo info = (exinfo) session.getAttribute("memberVO");
%>
  <div class="wrapper">
    <div class="button">
      <button class = "record-button">녹화</button>
      <button class = "stop-button">중지</button>
      <button class = "play-button">녹화보기</button>
      <p3><%=info.getEx_name()%></p3>
      <a class="download-button">다운로드</a>
    </div>
    <div class="video-container">
      <div class="video-item">
        <h2>미리보기</h2>
        <video autoplay muted id="preview"></video>
      </div>
      <div class="video-item">
        <h2>미리보기</h2>
        <video id="recording"></video>
      </div>
    </div>
  </div>
<script type ="text/javascript">
//dom
const recordButton = document.querySelector(".record-button")
const stopButton = document.querySelector(".stop-button")
const playButton = document.querySelector(".play-button")

const downloadButton = document.querySelector(".download-button")
const previewPlayer = document.querySelector("#preview")
const recordingPlayer = document.querySelector("#recording")

let recorder;
let recordedChunks;
//functions
function videoStart(){
  navigator.mediaDevices.getUserMedia({video:true,audio:true})
  .then(stream =>{
  	previewPlayer.srcObject = stream;
  	startRecording(previewPlayer.captureStream())
  })
}

function startRecording(stream){
	recordedChunks = [];
	const recorder = new MediaRecorder(stream);
	recorder.ondataabailable = (e)=> { recordedChunks.push(e.data) }
	recorder.start()
}

function stopRecording(){
	previewPlayer.srcObject.getTracks().forEach(track=> track.stop());
	recorder.stop()
}

function playRecording(){
	const recordedBlob = new Blob(recordedChunks,{ type: "video/webm"});
	recordingPlayer.src = URL.createObjectURL(recordedBlob);
	recordingPlayer.play()
}
//event
recordButton.addEventListener("click",videoStart)
stopButton.addEventListener("click",stopRecording)
playButton.addEventListener("click",playRecording)
</script>
</body>
</html>