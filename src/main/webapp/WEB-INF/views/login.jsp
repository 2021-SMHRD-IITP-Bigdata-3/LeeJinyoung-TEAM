<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor='#f0f0f0'>

	 <form action="/web/loginInsert.do" method ="post" id="form" align="center">
	 
	 <div style="width:100%; height:300px;"></div>
	 
	<table align="center">
		<tr>
			<td> <a id="user_num" align ="center">소속지점</a> </td>
			<td>
				<select name="user_gym">
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
      
	</form>
	
  </body>
</html>