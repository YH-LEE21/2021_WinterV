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
	int x = 10;
	int y = 100;
	int temp = x;// x값을 백업
	x = y; // x = 100
	y = temp; // y = 10
%>
	<div>x : <%=x %></div>
	<div>y : <%=y %></div>
</body>
</html>