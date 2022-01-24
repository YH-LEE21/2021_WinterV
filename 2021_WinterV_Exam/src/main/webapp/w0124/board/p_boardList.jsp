<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="vo.BoardMain" %>
<%@page import="vo.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body  class="container">
<%
	request.setCharacterEncoding("UTF-8");
	//1) mariadb 장치를 사용 가능하도록 드라이버 로딩
	Class.forName("org.mariadb.jdbc.Driver");
	//DriverManager.getConnection() 입력값으로 인증된 db연결이면 Connection객체를 만들어 리턴
	
	//2) mariadb에 접속
	BoardMain bm = new BoardMain();
	
	bm.pstmt = null;
	
	//category search
	String category = request.getParameter("category");
	String search = request.getParameter("search");
	//category debug O
	System.out.println(category+"<---category");
	//search debug O
	System.out.println(search+"<---search");
	if(search != null){
		bm.pstmt = bm.con.prepareStatement("select no,name,memo,createdate from person where name LIKE ? order by createdate desc limit 10");
		String writeSearch = "%"+search+"%";
		bm.pstmt.setString(1,writeSearch);
		category = null;
	}
	else{
		if(category !=null ){
			bm.pstmt = bm.con.prepareStatement("select no,name,memo,createdate from board where category = ? order by createdate desc limit 10");
			bm.pstmt.setString(1, category);
		}
		else{
			bm.pstmt = bm.con.prepareStatement("select no,name,memo,createdate from person order by createdate desc limit 10");
		}
		search = null;
	}
	
	System.out.println(bm.pstmt);
	bm.rs = bm.pstmt.executeQuery();
	ArrayList<Person> list = new ArrayList<Person>();
	
	while(bm.rs.next()){
		int no = bm.rs.getInt("no");
		String title = bm.rs.getString("name");
		String createdate = bm.rs.getString("createdate");
		String memo = bm.rs.getString("memo");
		
		Person p = new Person();
		p.no = no;
		p.name = title;
		p.createdate = createdate;
		p.memo = memo;
		list.add(p);
	}
	
%>

	<h1>board list</h1>
	<!-- 카테고리별 리스트 메뉴 -->
	<form method="post" action="p_boardList.jsp">
		<input type="text" name ="search" placeholder="name insert">
		<button type="submit">검색</button>
	</form>
	<table	border="1" class="table table-hover">
		<thead>
			<tr>
				<th>no</th><th>title</th><th>category</th><th>createDate</th>
			</tr>
		</thead>
		<tbody>
			<%
				for(Person b : list){
			%>
					<tr>
						<td><%=b.no %></td><td><a href="p_boardOne.jsp?no=<%=b.no%>"><%=b.name %></a></td><td><%=b.memo %></td><td><%=b.createdate%></td>
					</tr>
			<%
				}
			%>
		</tbody>
	</table>
	<a href="p_insertBoardForm.jsp" class ="btn btn-secondary" >글쓰기</a>
</body>
</html>