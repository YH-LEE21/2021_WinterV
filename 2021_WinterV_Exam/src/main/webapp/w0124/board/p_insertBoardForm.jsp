<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body class = "container">
	<h1>글입력</h1>
	<form method="post" action="./p_insertBoardAction.jsp">
		<table class="table">
			<tr>
				<td>name</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>memo</td>
				<td><input type="text" name="memo"></td>
			</tr>
			<tr>
				<td>pw</td>
				<td><input type="password" name="pw"></td>
			</tr>
		</table>
		<button class ="btn btn-default" type="submit">글입력</button>
	</form>
</body>
</html>