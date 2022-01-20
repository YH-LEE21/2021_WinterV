<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>폼태그를 이용하여 x=10, y=5 매개변수값 다른페이지로 넘기기</h1>
	<form method="post" action="./valueAction1.jsp">
		<div>
			x : <input name= "x" value = "10" readonly="readonly">
		</div>
		<div>
			y : <input name= "y" value= "5" readonly="readonly">
		</div>
		<div>
			<button type="submit">보내기</button>
		</div>
	</form>
</body>
</html>