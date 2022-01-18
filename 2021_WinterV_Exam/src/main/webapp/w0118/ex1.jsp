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
	int num = 7;
	if(num % 2 == 0){
		out.println("짝수");
	}else{
		out.println("홀수");
	}
%>
</body>
</html>