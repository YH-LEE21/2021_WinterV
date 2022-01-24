<%@page import="vo.BoardMain"%>
<%@page import="vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
	
	int no = Integer.parseInt(request.getParameter("no"));
	String name = request.getParameter("name");
	String memo = request.getParameter("memo");
	String createdate = request.getParameter("createdate");
	String pw = request.getParameter("pw");
	//debug
	System.out.println(no+" <--no");
	System.out.println(name+" <--name");
	
	BoardMain bm = new BoardMain();
	bm.pstmt = bm.con.prepareStatement("update person set name=?,memo=? where no = ? and pw= ?");
	bm.pstmt.setString(1,name);
	bm.pstmt.setString(2, memo);
	bm.pstmt.setInt(3, no);
	bm.pstmt.setString(4,pw);
	bm.pstmt.executeUpdate();
	response.sendRedirect("p_boardList.jsp");
%>