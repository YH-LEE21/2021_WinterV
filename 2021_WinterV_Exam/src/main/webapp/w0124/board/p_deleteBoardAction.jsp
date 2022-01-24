<%@page import="vo.BoardMain"%>
<%@page import="vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
	
	int no = Integer.parseInt(request.getParameter("no"));
	String pw = request.getParameter("pw");
	
	//debug
	System.out.println(no+" <--no");
	System.out.println(pw+" <--pw");
	
	BoardMain bm = new BoardMain();
	bm.pstmt = bm.con.prepareStatement("delete from person where no = ? and pw=?");
	bm.pstmt.setInt(1,no);
	bm.pstmt.setString(2, pw);
	bm.pstmt.executeUpdate();
	response.sendRedirect("p_boardList.jsp");
%>