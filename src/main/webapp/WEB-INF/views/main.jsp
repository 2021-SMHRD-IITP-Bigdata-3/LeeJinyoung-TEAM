<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.mapper.guest" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>여기가 메인</h1>
<% guest member = (guest) session.getAttribute("member"); %>
<%= member.getUser_name() %>
</body>
</html>