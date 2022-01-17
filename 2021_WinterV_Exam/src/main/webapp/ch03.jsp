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
	int x = 10;
	int y = 3;
%>
	<h1>산술 연산자</h1>
	<div><%=x+y %></div>
	<div><%=x-y %></div>
	<div><%=x*y %></div>
	<div><%=x/y %></div>
	<div><%=x%y %></div>
	
	<h1>비교 연산자</h1>
	<div><%=x==y %></div>
	<div><%=x>=y %></div>
	<div><%=x<=y %></div>
	<div><%=x!=y %></div>
	
	<h1>논리 연산자</h1>
	<div><%=x>y && x!=1 %></div>
	<div><%=x<y || x!=0 %></div>
	
	<h1>문자열 연산자</h1>
	<div><%="울산"+"과학대" %></div>
	
	<pre>
	String s1,s2,s3,s4;
	s1 ="울산"; 
	s2 = "울산"; 
	s3 = new String("울산"); 
	s4 = new String("울산");</pre>
	<!-- 추천하지 않는 방법 -->
	<%
		String s1 ="울산";
		String s2 = "울산";
		
		String s3 = new String("울산");
		String s4 = new String("울산");
	%>
	<h3>== 비교</h3>
	<div>s1==s2  <%=s1==s2 %></div>
	<div>s1==s3  <%=s1==s3 %></div>
	<div>s3==s4  <%=s3==s4 %></div>
	<hr>
	<h3>equals 비교</h5>
	<div>s1.equals(s2)  <%=s1.equals(s2)%></div>
	<div>s1.equals(s3)  <%=s1.equals(s3)%></div>
	<div>s3.equals(s4)  <%=s3.equals(s4)%></div>
</body>
</html>