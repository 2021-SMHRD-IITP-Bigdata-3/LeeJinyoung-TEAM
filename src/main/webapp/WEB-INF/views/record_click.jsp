<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

#record_top_title{
font-size:100px;
padding: 50px 50px 50px 50px;
}

#record_middle_content{
position:relative;
top:15%;
}

input{
	font-size:150px;
	background-color: white;
}

#a{
font-size:80px;
}

table{
	border-spacing: 50px;
  	border-collapse: separate;
}

</style>

</head>
<body>

<div class="record_bg"></div>
	<div class="record_wrap">
		<div class="record_top" style="width:100%; height:200px;">
			<div id="record_top_title"> <b> 영상 제목 </b> </div>
			<hr style="border: solid 10px gray;">
		</div>
		
		<div class="record_middle" style="width:100%; height:1000px;" align="center">	
			<div id="record_middle_content"><input style="width:1000px; height:800px;" class="button" type = "submit" value="영상"></div>	
		</div>
	
		<div style="width:100%; height:100px;"> </div>
		
			<table align="center" id=bottom>
				<tr>
				<td><input id="a" style="width:450px; height:300px;" class="button" type = "submit" value="잘못된 자세"></td>
				<td><input id="a" style="width:450px; height:300px;" class="button" type = "submit" value="올바른 자세"></td>
			</tr>
			</table>

			<table align="center" id=bottom>
				<tr>
				<td><input id="a" style="width:450px; height:300px;" class="button" type = "submit" value="잘못된 자세"></td>
				<td><input id="a" style="width:450px; height:300px;" class="button" type = "submit" value="올바른 자세"></td>
			</tr>
			</table>
		
		
	</div>

</body>
</html>