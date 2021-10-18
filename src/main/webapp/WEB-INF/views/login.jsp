<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

header{
      position: fixed;
      top:150px;
      left:0;
      background-color: rgb(172,179,195);
      opacity: 0.5;
      height: 500px;
      width: 100%;
      transform: rotate(-15deg);    
      transform: skewy(-15deg);
	}
	
	 footer{
      position: fixed;
      bottom: 0;
      left: 0;
      height: 500px;
      width:100%;
      background-color: rgb(93,93,93);
      line-height:80px;
   }
	

	#head{
		position: absolute;
		left: 50%;
		opacity: 0.2;
	}
	#head2{
		position: absolute;
		opacity: 0.1;
		top: 10%;
		left: 15%;
	}
	
	#title{
		position: absolute;
		top: 8%;
		left: 35%;
		transform: translate(-50%,-50%);
		font-family:Regular;
		font-size:180px;
		transform: rotateZ(-15deg);     
		line-height:200px;
	}
	
	#title2{
		position: absolute;
		top:15%;
		left: 22%;
		transform: translate(-50%,-50%);
		font-family:Regular;
		font-size:180px;
		transform: rotateZ(-15deg);     
		line-height:200px;
	}
	
	#form{
		position: absolute;
		top: 35%;
		width:100%;
	}
	
	#button{
		background-color:rgb(147,148,177);
		border-radius:70px;
		font-family:Regular;
		font-weight:bolder;
	}
	
	table{
   	position:relative;
   	border-radius:30px;
   }
	
	#user_num{
	position:relative;
	font-size:80px;
	font-family:Regular;
	font-weight:bolder;
   }

   select{
   border-radius:40px;
   background-color:rgb(227,228,236);
   font-weight:bolder;
   appearance:none; 
   }
   
   input{
   border-radius:40px;
   background-color:rgb(227,228,236);
   font-size:60px;
   font-weight:bolder;
   text-align: center;
   }
   
   @font-face{
   	font-family:Regular;
   	src:url('resources/font/FrancoisOne-Regular.ttf');
   }
   
   middle{
      position: fixed;
      top:1100px;
      left:0;
      background-color: rgb(227,228,236);
      opacity: 0.6;
      height: 500px;
      width: 100%;
      transform: rotate(15deg);    
      transform: skewy(15deg);
	}
	option{
	font-weight:bolder;
	}
	
	
</style>

</head>
<body bgcolor='#f0f0f0'>

	<img id="head2" src="resources/img/자세교정.png" width="450px" height="450px">

	<img id="head" src="resources/img/AI.png" width="600px" height="600px">

	<header>
			
	</header>
	
	<a id="title"> The  </a>
	<a id="title2"> Ai Fitness </a>
	
	 <form action="/web/loginInsert.do" method ="post" id="form" align="center">
	 
	 <div style="width:100%; height:300px;"></div>
	 
	 <middle>
		
	 </middle>
	 

	<table align="center">
		<tr>
			<td> <a id="user_num" align ="center">소속지점</a> </td>
			<td>
				<select name="user_gym"  style="width:600px;height:100px;font-size:60px;font-family:Regular;">
					 <option align="center" font-family="Regular" > -- 선택하세요 --</option>
					 <optgroup label="서울">  
					 	<option font-family="Regular" align="center" value ="강남점" >강남점</option>
					 </optgroup>
					 
					 <optgroup label="부산">  
					 	<option font-family="Regular" align="center" value ="해운대점" >해운대점</option>
					 </optgroup>
					 
					 <optgroup label="광주">  
					 	<option font-family="Regular" align="center" value ="광주남구" >광주남구</option>
					 </optgroup>
						
				</select>
			</td>
		</tr>
	</table>
	
	<div style="width:100%; height:100px;"></div>
	
      <table align="center" >
         <tr>
         <td> <a id="user_num" align ="center">회원번호</a> </td>
         <td><input style="width:600px; height:100px;font-size:60px;"  type="text" name="user_id" ></td>
         </tr>
      </table>
         
         <div style="width:100%; height:100px;"></div>
         
         <table align = "center"> 
         <tr>
            <td><input font-family="Regular" id="button" style="width:330px; height:150px;font-size:80px;" class="button" type = "submit" value ="로그인"></td>
         </tr>
      </table>
      
      <footer>
      
       <div style="width:100%; height:110px;"></div>
      
      <table align="center" style="font-size:45px;color:white;'">
      	<tr>
      		<td><a> @ 2023 By Riley Olson.</a></td>
      	</tr>
      	<tr>
      		<td><a> Proudly created by Wix.com</a></td>
      	</tr>
      	<tr>
      		<td><a> 본사 : 서울 특별시 이태원 사거리</a></td>
      	</tr>
      </table>
      </footer>
      
	</form>
	
  </body>
</html>