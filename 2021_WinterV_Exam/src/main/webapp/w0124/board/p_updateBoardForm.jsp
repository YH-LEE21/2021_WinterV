<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="vo.BoardMain" %>
<%@ page import="vo.Person" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	BoardMain bm = new BoardMain();
	bm.pstmt = bm.con.prepareStatement("select no,name,memo,createdate,pw from person where no=?");
	bm.pstmt.setInt(1, no);
	bm.rs = bm.pstmt.executeQuery();
	
	Person p = new Person();
	while(bm.rs.next()){
		p.no = bm.rs.getInt("no");
		p.name = bm.rs.getString("name");
		p.memo = bm.rs.getString("memo");
		p.createdate = bm.rs.getString("createdate");
		p.pw = bm.rs.getString("pw");
	}
%>
	<h1>글삭제</h1>
	<form method="post" action="p_updateBoardAction.jsp">
		<table class="table table-dark">
			<tr>
				<td>no</td>
				<td><input type="text" name="no" value="<%=p.no %>"readonly="readonly"></td>
			</tr>
			<tr>
				<td>name</td>
				<td><input type="text" value="<%=p.name %>" name="name"></td>
			</tr>
			<tr>
				<td>memo</td>
				<td><textarea name="memo" style="width:500px; height: 500px;"><%=p.memo %></textarea></td>
			</tr>
			<tr>
				<td>createdate</td>
				<td><input type="date" value="<%=p.createdate%>" name="createdate" readonly="readonly"></td>
			</tr>
			<hr>
			<tr>
				<td>pw</td>
				<td><input type="password" name="pw"></td>
			</tr>
		</table>
		<button type="submit">수정</button>
	</form>
</body>
</html>