<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vo.Position" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 배열 연습 -->
<%
	int[] arr = null;//int변수 여러개를 가리키는 참조값(주소를 가리키는 값)
	arr = new int[3];
%>
	<!-- int 배열 초기값 확인 -->
	<div>arr[0] : <%=arr[0] %></div>
	<div>arr[1] : <%=arr[1] %></div>
	<div>arr[2] : <%=arr[2] %></div>
	<br>
<%
	arr[0] = 7;
	arr[1] = 27;
	arr[2] = 57;
%>
	<!-- int 배열 값 확인 -->
	<div>arr[0] : <%=arr[0] %></div>
	<div>arr[1] : <%=arr[1] %></div>
	<div>arr[2] : <%=arr[2] %></div>
	<br>
<%
//java도 c언어처럼 배열 선언 가능
	String[] arr2 = null;//java
	//String arr2[] = null;//c
	arr2 = new String[2];
%>
	<!-- String 배열 초기값 확인 -->
	<div>arr2[0] : <%=arr2[0] %></div>
	<div>arr2[1] : <%=arr2[1] %></div>
	<br>
<%
	arr2[0] = "abc";
	arr2[1] = "가나다";
%>
	<!-- String 배열 값 확인 -->
	<div>arr2[0] : <%=arr2[0] %></div>
	<div>arr2[1] : <%=arr2[1] %></div>
	<br>
<%
	Position p =  null;
	p = new Position();//x , y멤버
	System.out.println(p.hashCode());
%>
	<div>p : <%=p%></div>
	<div>p.name : <%=p.name %></div>
	<div>p.x : <%=p.x %></div>
	<div>p.y : <%=p.y %></div>
	
<%
	p.name = "YH-LEE21";
	p.x = 5;
	p.y = 7;
%>	
	<div>p : <%=p%></div>
	<div>p.name : <%=p.name %></div>
	<div>p.x : <%=p.x %></div>
	<div>p.y : <%=p.y %></div>
	<br>
<%
	Position[] arr3 = null;
	arr3 = new Position[3];
%>
	<div>arr3[0] : <%=arr3[0] %></div>
	<div>arr3[1] : <%=arr3[1] %></div>
	<div>arr3[2] : <%=arr3[2] %></div>
	<br>
<%
	arr3[0] = new Position();
	arr3[1] = new Position();
	arr3[2] = new Position();
%>
	<div>arr3[0] : <%=arr3[0] %></div>
	<div>arr3[1] : <%=arr3[1] %></div>
	<div>arr3[2] : <%=arr3[2] %></div>
<br>
	<div>arr3[0].name : <%=arr3[0].name %></div>
	<div>arr3[0].x : <%=arr3[0].x %></div>
	<div>arr3[0].y : <%=arr3[0].y %></div>
	<br>
<%
	arr3[0].name = "YH-LEE21";
	arr3[0].x = 5;
	arr3[0].y = 1;
	
	arr3[1].name = "SJ-HONG";
	arr3[1].x = 6;
	arr3[1].y = 5;
	
	arr3[2].name = "SH-SUE";
	arr3[2].x = 5;
	arr3[2].y = 2;
%>
	<div>arr3[0].name : <%=arr3[0].name %></div>
	<div>arr3[0].x : <%=arr3[0].x %></div>
	<div>arr3[0].y : <%=arr3[0].y %></div>
	<br>
	<div>arr3[1].name : <%=arr3[1].name %></div>
	<div>arr3[1].x : <%=arr3[1].x %></div>
	<div>arr3[1].y : <%=arr3[1].y %></div>
	<br>
	<div>arr3[2].name : <%=arr3[2].name %></div>
	<div>arr3[2].x : <%=arr3[2].x %></div>
	<div>arr3[2].y : <%=arr3[2].y %></div>
</body>
</html>