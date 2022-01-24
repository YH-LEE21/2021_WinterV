<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="vo.BoardMain" %>
<%@page import="vo.Board" %>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String memo = request.getParameter("memo");
	String pw = request.getParameter("pw");
	
	//공백이 있을때
	if(name.equals("") || memo.equals("") ||pw.equals("")){
		response.sendRedirect("p_insertBoardForm.jsp");
		return;
	}
	
	Class.forName("org.mariadb.jdbc.Driver");
	BoardMain bm = new BoardMain();
	bm.pstmt =null;
	bm.pstmt = bm.con.prepareStatement("Insert into person(name,memo,createdate,pw) values (?,?,NOW(),?)");
	bm.pstmt.setString(1, name);
	bm.pstmt.setString(2, memo);
	bm.pstmt.setString(3, pw);
	
	bm.pstmt.executeUpdate();
	//debug update
	System.out.println(bm.pstmt+"<--update");	
	response.sendRedirect("p_boardList.jsp");
%>