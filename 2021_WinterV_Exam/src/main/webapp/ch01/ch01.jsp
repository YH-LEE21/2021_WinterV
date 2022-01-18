<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name = "울산과학대";
	System.out.println("hello");
%>
	<h1>울산과학대</h1>
	<h1><% out.println("울산과학대"); %></h1>
	<div><% out.println(name); %></div>
	<div>자바특강</div>
</body>
</html>