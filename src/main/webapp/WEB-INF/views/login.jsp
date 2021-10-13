<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h2>Spring MVC BOARD</h2>
		<div class="panel panel-default">
			<div class="panel-heading">BOARD FORM</div>
			<div class="panel-body">
				<form class="form-horizontal" action="/web/loginInsert.do" method ="post">
					<div class="form-group">
						<label class="control-label col-sm-2" for="email">제목:</label>
						<div class="col-sm-10">
							<input class="form-control" name="user_id"
								placeholder="Enter title">
						</div>
						<select name="user_gym" >
				             <option align="center" font-family="Regular" > -- 선택하세요 --</option>
				             <option font-family="Regular" align="center" value ="광주남구" >광주남구</option>
				             <option font-family="Regular" align="center" value ="해운대점" >해운대점</option>
				             <option font-family="Regular" align="center" value ="충장로점" >충장로점</option>
            			</select>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-primary">로그인</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>