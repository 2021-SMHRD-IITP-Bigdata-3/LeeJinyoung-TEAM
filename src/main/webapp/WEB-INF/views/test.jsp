<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<button id = "1" onClick = "reply_click(this.id)">B1</button>
<button id = "2" onClick = "reply_click(this.id)">B2</button>
<button id = "3" onClick = "reply_click(this.id)">B3</button>

<script >
function reply_click(clicked_id){
	alert(clicked_id);
}
</script>
</body>
</html>