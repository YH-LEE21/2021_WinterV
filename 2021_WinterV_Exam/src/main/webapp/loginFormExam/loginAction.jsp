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
	//Database에서 로그인 가능한 계정 조회 후 가져온다.
	String dbuserid = "admin";
	String dbuserpw = "1234";
	//사용자가 입력한 id/pw
	String userid = request.getParameter("userId");
	String userpw = request.getParameter("userPw");
	
	if(dbuserid.equals(userid) && dbuserpw.equals(userpw)){
		out.println("로그인 성공입니다.");
		out.println("유저 ID : "+userid);
	}else{
		out.println("로그인 실패 입니다.");
	}
%>

<div>
	<p>user : <%=userid %></p>
</div>
</body>
</html>