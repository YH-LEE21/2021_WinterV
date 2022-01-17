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
	int y = 3;
%>
	<h1>산술 연산자</h1>
	<div><%=x+y %></div>
	<div><%=x-y %></div>
	<div><%=x*y %></div>
	<div><%=x/y %></div>
	<div><%=x%y %></div>
	
	<h1>비교 연산자</h1>
	<div><%=x==y %></div>
	<div><%=x>=y %></div>
	<div><%=x<=y %></div>
	<div><%=x!=y %></div>
	
	
</body>
</html>