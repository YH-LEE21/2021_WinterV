<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<%
	int no = Integer.parseInt(request.getParameter("no"));
%>
	<h1>글삭제</h1>
	<form method="post" action="p_deleteBoardAction.jsp">
		<table class="table table-dark">
			<tr>
				<td>no</td>
				<td><input type="text" name="no" value="<%=no%>" readonly="readonly"></td>
			</tr>
			<tr>
				<td>pw</td>
				<td><input type="password" name="pw"></td>
			</tr>
		</table>
		<button type="submit">삭제</button>
	</form>
</html>