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
	<form method="post" action="./insertBoardAction.jsp">
		<table class="table">
			<tr>
				<td>category</td>
				<td><input type="text" name="category"></td>
			</tr>
			<tr>
				<td>title</td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td>category</td>
				<td><textarea rows="5" cols="80" name="content"></textarea></td>
			</tr>
			<tr>
				<td>writer</td>
				<td><input type="text" name="writer"></td>
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