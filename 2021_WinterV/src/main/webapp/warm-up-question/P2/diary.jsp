<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Calendar today = Calendar.getInstance();
	System.out.println(today);
	int y = today.get(Calendar.YEAR);
	int m = today.get(Calendar.MONTH)+1;
	int d = today.get(Calendar.DATE);
	int dayOfWeek = today.get(Calendar.DAY_OF_WEEK);
	int lastDay = today.getActualMaximum(Calendar.DAY_OF_MONTH);
	System.out.println(y+"/"+m+"/"+d);
	System.out.println(lastDay);
	String[] days = {"일","월","화","수","목","금","토"};
%>
	<h1>다이어리</h1>
	<table border="1" width="100%">
		<tr>
			<% 
				for(String s : days){
			%>
				<th><%=s%></th>
			<%
				}
			%>
		</tr>
	</table>
	<table border="1" width="100%">
	 	<tr>
		 	<%
				for(int i=1;i<dayOfWeek;i+=1){
			%>
					<td>&nbsp;</td>			
			<%
				}
			%>
	 		<%
	 			for(int i =1;i<=lastDay;i++){
	 				
	 		%>
	 				<th><%=i%></th>
	 			<%		if((i+3)%7==0){
	 			%>
	 					</tr><tr>
	 			<% 
	 				}
	 			}
	 			if((3+lastDay)%7 !=0){
					int temp = 7 - (3+lastDay) % 7;
					for(int i =1;i<=temp; i+=1){
				%>
						<td>&nbsp;</td>
			<%
					}
	 			}
	 		%>
	 	</tr>
	 	
	</table>
</body>
</html>