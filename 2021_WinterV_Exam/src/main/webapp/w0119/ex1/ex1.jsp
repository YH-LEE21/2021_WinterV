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
	int[] arr = null;//int변수 여러개를 가리키는 참조값(주소를 가리키는 값)
	arr = new int[3];
%>
	<div>arr[0] : <%=arr[0] %></div>
	<div>arr[1] : <%=arr[1] %></div>
	<div>arr[2] : <%=arr[2] %></div>
<%
	arr[0] = 7;
	arr[1] = 27;
	arr[2] = 57;
%>
	<div>arr[0] : <%=arr[0] %></div>
	<div>arr[1] : <%=arr[1] %></div>
	<div>arr[2] : <%=arr[2] %></div>
</body>
</html>