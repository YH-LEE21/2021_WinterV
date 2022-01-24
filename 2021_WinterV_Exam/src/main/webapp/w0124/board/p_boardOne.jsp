<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="vo.BoardMain" %>
<%@page import="vo.Person" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body class="container">
<%
	Class.forName("org.mariadb.jdbc.Driver");
	int no = Integer.parseInt(request.getParameter("no"));
	System.out.println(no+" <--no");
	BoardMain bm = new BoardMain();
	
	bm.pstmt = null;
	bm.pstmt = bm.con.prepareStatement("select no,name,memo,createdate from person where no= ?");
	bm.pstmt.setInt(1, no);//쿼리안에 첫번째 물음표를 no변수값으로 채워주는 방법
	bm.rs = bm.pstmt.executeQuery();
	Person board = null;
	if(bm.rs.next()){
		board = new Person();
		board.no = bm.rs.getInt("no");
		board.name = bm.rs.getString("name");
		board.memo = bm.rs.getString("memo");
		board.createdate = bm.rs.getString("createdate");
	}
%>

	<h1>게시글 상세보기</h1>
	<table border="1" class="table table-hover">
		<tr>
			<td>no</td>
			<td><%=board.no %></td>
		</tr>
		<tr>
			<td>memo</td>
			<td><%=board.memo %></td>
		</tr>
		<tr>
			<td>createDate</td>
			<td><%=board.createdate %></td>
		</tr>
	</table>
	<div>
		<a href="p_updateBoardForm.jsp?no=<%=board.no%>">수정</a>
		<a href="p_deleteBoardForm.jsp?no=<%=board.no%>">삭제</a>
	</div>
</body>
</html>