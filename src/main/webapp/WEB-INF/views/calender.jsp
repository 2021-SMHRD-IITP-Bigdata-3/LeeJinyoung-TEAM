<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "com.test.mapper.guest" %>
<%@page import = "java.util.List" %>
<% List<guest> list = (List<guest>)request.getAttribute("list"); %>
<%@ taglib prefix = "c" uri= "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type ="text/javascript">
</script>
<c:forEach var ="vo" items = "${requestScope.list}">
	<h1>${vo.idx }</h1>
</c:forEach>
</body>
</html>