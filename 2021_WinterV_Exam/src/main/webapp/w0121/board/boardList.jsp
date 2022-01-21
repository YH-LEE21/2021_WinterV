<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="vo.BoardMain" %>
<%@page import="vo.Board" %>
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
	Class.forName("org.mariadb.jdbc.Driver");
	//DriverManager.getConnection() 입력값으로 인증된 db연결이면 Connection객체를 만들어 리턴
	BoardMain bm = new BoardMain();
	
	bm.pstmt = null;
	bm.pstmt = bm.con.prepareStatement("select no,title,createdate from board order by createdate desc limit 10");
	bm.rs = bm.pstmt.executeQuery();
	
	ArrayList<Board> list = new ArrayList<Board>();
	
	while(bm.rs.next()){
		int no = bm.rs.getInt("no");
		String title = bm.rs.getString("title");
		String createdate = bm.rs.getString("createdate");
		
		Board b = new Board();
		b.no = no;
		b.title = title;
		b.createdate = createdate;

		list.add(b);
	}
	
%>
	<table	border="1">
		<thead>
			<tr>
				<th>no</th><th>title</th><th>createDate</th>
			</tr>
		</thead>
		<tbody>
			<%
				for(Board b : list){
			%>
					<tr>
						<td><%=b.no %></td><td><a href="boardOne.jsp?no=<%=b.no%>"><%=b.title %></a></td><td><%=b.createdate%></td>
					</tr>
			<%
				}
			%>
		</tbody>
	</table>
</body>
</html>