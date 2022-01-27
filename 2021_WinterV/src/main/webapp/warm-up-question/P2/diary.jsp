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
	Calendar calendar = Calendar.getInstance();
	System.out.println(calendar);
	int y = calendar.get(Calendar.YEAR);
	int m = calendar.get(Calendar.MONTH)+1;
	int d = calendar.get(Calendar.DAY_OF_MONTH);
	calendar.set(y,m,1);
	
	int dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK); // 2 ,(1~7)
	int lastDay = calendar.getActualMaximum(Calendar.DATE);
	System.out.println(y+"/"+m+"/"+lastDay);
	System.out.println(lastDay);
	System.out.println(dayOfWeek);
	
	
	//디자인은 기능 다 만들고 나서
	
	
%>
	
	<h1>다이어리</h1>
	<div align="center">
		<h2><%=y%>년 <%=m+1%>월</h2>
	</div>
	<table border="1" width="100%">
		<tr>
			<th class = "Sunday" style="color: red;">일</th>
			<th class = "Monday">월</th>
			<th class = "Tuesday">화</th>
			<th class = "Wednesday">수</th>
			<th class = "Thursday">목</th>
			<th class = "Friday">금</th>
			<th class = "Saturday">토</th>	
		
		</tr>
	 	<tr class = "days">
	 		<%
	 			int count = 0;
	 			for(int i =1;i<dayOfWeek;i++){
	 		%>
	 				<td>&nbsp;</td>
	 		<%
	 				System.out.println("count --> "+ count);
	 				count++;
	 			}
	 			System.out.println("count --> "+ count);
	 		%>
	 		<%
	 			Calendar today = Calendar.getInstance();
	 			for(int i=1;i<=lastDay;i++) {
	 		%>
	 		<%
	 				if(count % 7 == 0 ){
	 		%>
	 					</tr><tr>
	 		<% 
	 				}
	 		%>
	 		<%
	 					//오늘 날짜 배경 파란 줄무니 표시	
	 				if(y == today.get(Calendar.YEAR)&& m == today.get(Calendar.MONTH) && i == today.get(Calendar.DAY_OF_MONTH)){
	 		%>
	 					<td valign="top" align="right" style="border: 3px solid blue;"><%=i %></td>
	 		<%
	 				}else{
	 		%>
	 					<td valign="top" align="right"><%=i %></td>
	 		<%		}
	 			
	 				count++;
	 			} 
	 		%>
	 		
		 	<%-- <%
				for(int i=1;i<dayOfWeek;i++){
			%>
					<td>&nbsp;</td>			
			<%
				}
			%>
	 		<%
	 			for(int i =1;i<=lastDay;i++){
	 				dayOfWeek++;
	 				if(dayOfWeek % 7 == 2){%>
	 				</tr></tr>
			<%	 					
	 				}
	 		%>
	 				<td><%=i%></td>
	 			<% 
	 				}
	 			while(lastDay<35){
	 				lastDay++;	
				%>
						<td>&nbsp;</td>
			<%
				}
	 		%> --%>
	 	</tr>
	</table>
</body>
</html>