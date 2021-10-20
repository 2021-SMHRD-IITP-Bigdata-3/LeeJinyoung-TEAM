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

	 footer{
      position: fixed;
      bottom: 0;
      left: 0;
      height: 500px;
      width:100%;
      line-height:80px;
   }
	

	#title_name{
		position: absolute;
		top: 20%;
		left:40%;
		font-family:Regular;
		font-size:180px;    
	}
	
	#title_name2{
		position: absolute;
		top: 28%;
		left:20%;
		font-family:Regular;
		font-size:180px;    
	}
	
	
	#form{
		position: absolute;
		top: 35%;
		width:100%;
	}
	
	#button{
		background-color:rgb(147,148,177);
		border-radius:100px;
		font-family:Regular;
		font-weight:bolder;
		border: none;
	}
	
	table{
   	position:relative;
   	border-radius:30px;
   }
	


   select{
   position:relative;
   border-radius:40px;
   font-weight:bolder;
   appearance:none;
   padding: 50px 50px 50px 50px;
   }
   
   input{
   border-radius:40px;
   font-weight:bolder;
   padding: 50px 50px 50px 50px;

   }
   
   @font-face{
   	font-family:"Regular";
   	src:url('resources/font/FrancoisOne-Regular.ttf');
   }
   
	option{
	font-weight:bolder;
	}
	
	#modal_btn{
	position:relative;
	}
	
	#option_click{
	position:absolute;
	top:12%; 
	right:8%; 
	transform: rotate(90deg);
	}
	
	
	
</style>


</head>

<body>
	
<div id="title" style="width:100%; height:500px;">
	<a id="title_name"> The </a>
	<a id="title_name2"> Ai Fitness </a>

</div>
	

<body>


	 <form action="/web/loginInsert.do" method ="post" id="form" align="center">
	 
	 <div style="width:100%; height:150px;"></div>
	 

		<div class="middle1">
		
				<select name="user_gym" style="width:950px;height:200px;font-size:60px;font-family:Regular;">
					 <option> <a id="gym"> 지점명 </a> </option>

	<table align="center">
		<tr>
			<td>			
					 <optgroup label="서울">  
					 	<option font-family="Regular"  value ="강남점" >강남점</option>
					 </optgroup>
					 
					 <optgroup label="부산">  
					 	<option font-family="Regular" value ="해운대점" >해운대점</option>
					 </optgroup>
					 
					 <optgroup label="광주">  

					 	<option font-family="Regular"  value ="광주남구" >광주남구</option>
					 </optgroup>						

					 </td>
					 </tr>
					 
				</select>
				
				<img id="option_click" src="resources/img/화살표2.png"
					style="width: 300px; height: 300px;"> 
		</div>	

	
	<div style="width:100%; height:30px;"></div>
	
	<div>
      <input style="width:850px; height:100px; font-weight:bolder; color:rgb(143,143,143); font-size:60px;" type="text" name="user_id" value ="회원번호"> </td>
    </div>
      
         <div style="width:100%; height:50px;"></div>
         
         <table align = "center"> 
         <tr>
            <td><input font-family="Regular" id="button" style="width:950px; height:200px;font-size:80px;" class="button" type = "submit" value ="로그인"></td>
         </tr>
      </table>
      

      <footer>
      
       <div style="width:100%; height:110px;"></div>
      
      <table align="center" style="font-size:40px;color:rgb(143,143,143);">
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