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
		String name = request.getParameter("name");
		String rsp = request.getParameter("rsp");
	%>
	<div>이용자 이를 : <%=name %></div>
	<div>가위바위보 선택한거 : <%=rsp %></div>
</body>
</html>