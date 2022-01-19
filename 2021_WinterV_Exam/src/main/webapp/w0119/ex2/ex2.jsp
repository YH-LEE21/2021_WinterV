<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 반복문 연습 -->
<%
	//count : 10, 0~9
	for(int i = 0; i < 10; i = i + 1){//i+=1, i++, ++i
%>
		<a><b><%=i%></b>hello </a>
<%
	}
	int sum=0;
	for(int i = 1; i <= 10; i++){
		sum +=i;
	}
%>
	<div>sum : <%=sum %></div>
	<br>
<%
	String[] names = new String[5];
	names[0] = "AAA";
	names[1] = "BBB";
	names[2] = "CCC";
	names[3] = "DDD";
	names[4] = "EEE";

	for(int i = 0; i < names.length; i++){
%>	
	<div>names[<%=i %>] : <%=names[i] %></div>	
<%
	}
	out.println("<br>");
	for(String s : names){
%>
		<div><%=s %></div>
<%
	}
%>
</body>
</html>