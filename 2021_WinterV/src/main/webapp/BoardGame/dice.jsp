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
	int diceNum = 0;
	int diceTwo = 0;
	diceNum = (int)(Math.random()*6)+1;
	diceTwo = (int)(Math.random()*6)+1;
%>
	<div>주사위의 합 : <%=diceNum+diceTwo %></div>
	<div>
		<img alt="주사위" src= "<%=diceNum %>.jpg" width="200px" height="200px">
		<img alt="주사위" src= "<%=diceTwo %>.jpg" width="200px" height="200px">
	</div>
</body>
</html>