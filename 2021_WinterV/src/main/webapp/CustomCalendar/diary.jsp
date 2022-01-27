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
	Calendar targetday = Calendar.getInstance();
	int y = 0;
	int m = 0;
	int d = 0;
	System.out.println(targetday);
	if(request.getParameter("y")==null || request.getParameter("m") == null){
		y = targetday.get(Calendar.YEAR);
		m = targetday.get(Calendar.MONTH);
		targetday.set(y, m, 1);
	}else{
		y = Integer.parseInt(request.getParameter("y"));
		m = Integer.parseInt(request.getParameter("m"));
		if(request.getParameter("flag").equals("pre")){
			if(m == 0){
				targetday.set(Calendar.YEAR,y-1);
				targetday.set(Calendar.MONTH, 11);
				y-=1;
				m=11;
			}
			else{
				targetday.set(Calendar.YEAR,y);
				targetday.set(Calendar.MONTH, m-1);
				m-=1;
			}
		}else{
			if(m == 11){
				targetday.set(Calendar.YEAR,y+1);
				targetday.set(Calendar.MONTH, 0);
				y+=1;
				m=0;
			}else{
				targetday.set(Calendar.YEAR,y);
				targetday.set(Calendar.MONTH, m+1);
				m+=1;
			}
		}
		targetday.set(Calendar.DAY_OF_MONTH, 1);
	}
	//debug
	
	int dayOfWeek = targetday.get(Calendar.DAY_OF_WEEK); // 2 ,(1~7)
	int lastDay = targetday.getActualMaximum(Calendar.DATE);
	System.out.println(y+"/"+m+"/"+lastDay);
	System.out.println(lastDay);
	System.out.println(dayOfWeek);
	
	
	//디자인은 기능 다 만들고 나서
	
	
%>
	<h1>다이어리</h1>
	<div align="center" style="margin: 20px;">
			<span><a href="./diary.jsp?y=<%=y%>&m=<%=m%>&flag=pre" style="text-decoration: none"> << </a></span>
			<a style="margin: 0px 20px;"><%=y%>년 <%=m+1%>월</a>
			<span><a href="./diary.jsp?y=<%=y%>&m=<%=m%>&flag=next" style="text-decoration: none"> >> </a></span>
	</div>
	<table  width="100%">
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
	 					<td valign="top" align="right" style="border: 3px solid blue; height: 100px;">
	 						<a href="./insertTodo.jsp?y=<%=y%>&m=<%=m%>&d=<%=i%>" style="text-decoration: none;"><%=i %></a>
	 					</td>
	 		<%
	 				}else if(count%7==6){
	 		%>
	 					<td valign="top" align="right" style="height: 100px;">
	 						<a href="./insertTodo.jsp?y=<%=y%>&m=<%=m%>&d=<%=i%>" style="text-decoration: none; color: blue;"><%=i %></a>
	 					</td>
	 		<%		}
 					else if(count%7==0){
 			%>
 						<td valign="top" align="right" style="height: 100px;">
 							<a href="./insertTodo.jsp?y=<%=y%>&m=<%=m%>&d=<%=i%>" style="text-decoration: none; color: red;"><%=i %></a>
 						</td>
 			<%		}
					else{
			%>
						<td valign="top" align="right" style="height: 100px;">
							<a href="./insertTodo.jsp?y=<%=y%>&m=<%=m%>&d=<%=i%>" style="text-decoration: none; color: black;"><%=i %></a>
						</td>
			<%		}
	 			
	 				count++;
	 			} 
	 		%>
	 	</tr>
	</table>
</body>
</html>