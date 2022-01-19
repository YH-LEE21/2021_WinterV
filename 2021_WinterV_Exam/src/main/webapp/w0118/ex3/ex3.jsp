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
	String systemId = "admin";
	String systemPw = "1234";
	String userId = "admin";
	String userPw = "1234";
	
	if(systemId.equals(userId) && systemPw.equals(userPw)){
		out.println("로그인 성공");
	}
	else{
		out.println("로그인 실패");
	}
%>
</body>
</html>