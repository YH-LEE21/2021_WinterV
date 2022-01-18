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
	int systemId = 1001;
	int systemPw = 1234;
	int userId = 1001;
	int userPw = 1234;
	
	/* if(systemId == userId && systemPw == userPw){
		out.println("로그인 성공");
	}
	else{
		out.println("로그인 실패");
	} */
	
	if(systemId == userId){
		if(systemPw == userPw){
			out.print("로그인 성공");
		}else{
			out.print("로그인 실패(잘못된 패스워드)");
		}
	}else{
		out.print("로그인 실패(잘못된 아이디)");
	}
%>
</body>
</html>