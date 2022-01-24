<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="vo.BoardMain" %>
<%@page import="vo.Board" %>
<%
	request.setCharacterEncoding("utf-8");
	String category = request.getParameter("category");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String writer = request.getParameter("writer");
	String pw = request.getParameter("pw");
	
	//공백이 있을때
	if(category.equals("") || title.equals("") || content.equals("") || writer.equals("") || pw.equals("")){
		response.sendRedirect("insertBoardForm.jsp");
		return;
	}
	
	Class.forName("org.mariadb.jdbc.Driver");
	BoardMain bm = new BoardMain();
	bm.pstmt =null;
	bm.pstmt = bm.con.prepareStatement("Insert into board(category,title,content,writer,createdate,pw) values (?,?,?,?,NOW(),?)");
	bm.pstmt.setString(1, category);
	bm.pstmt.setString(2, title);
	bm.pstmt.setString(3, content);
	bm.pstmt.setString(4, writer);
	bm.pstmt.setString(5, pw);
	
	bm.pstmt.executeUpdate();
	//debug update
	System.out.println(bm.pstmt+"<--update");	
	response.sendRedirect("boardList.jsp");
%>