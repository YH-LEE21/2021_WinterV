<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "inputAction.jsp">
		<div>이름 : <input name = "name" type ="text"></div>
		<div>(가위,바위,보)중에 하나를 선택하세요</div>
		<div>
			<select name="rsp">
				<option>가위</option>
				<option>바위</option>
				<option>보</option>
			</select>
		</div>
		<button>play</button>
	</form>
</body>
</html>