<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="vo.BoardMain" %>
<%@page import="vo.Board" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Class.forName("org.mariadb.jdbc.Driver");
	int no = Integer.parseInt(request.getParameter("no"));
	System.out.println(no+" <--no");
	BoardMain bm = new BoardMain();
	
	bm.pstmt = null;
	bm.pstmt = bm.con.prepareStatement("select no,category,title,content,writer,createdate from board where no= ?");
	bm.pstmt.setInt(1, no);//쿼리안에 첫번째 물음표를 no변수값으로 채워주는 방법
	bm.rs = bm.pstmt.executeQuery();
	Board board = null;
	if(bm.rs.next()){
		board = new Board();
		board.no = bm.rs.getInt("no");
		board.category = bm.rs.getString("category");
		board.title = bm.rs.getString("title");
		board.content = bm.rs.getString("content");
		board.writer = bm.rs.getString("writer");
		board.createdate = bm.rs.getString("createdate");
	}
%>

	<h1>게시글 상세보기</h1>
	<table border="1">
		<tr>
			<td>no</td>
			<td><%=board.no %></td>
		</tr>
		<tr>
			<td>category</td>
			<td><%=board.category %></td>
		</tr>
		<tr>
			<td>title</td>
			<td><%=board.title %></td>
		</tr>
		<tr>
			<td>content</td>
			<td><%=board.content %></td>
		</tr>
		<tr>
			<td>writer</td>
			<td><%=board.writer %></td>
		</tr>
		<tr>
			<td>createDate</td>
			<td><%=board.createdate %></td>
		</tr>
	</table>
</body>
</html>