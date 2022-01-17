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
		String name = request.getParameter("name");
		String ursp = request.getParameter("rsp");
		String com_Rsp = "";
		double num = Math.random(); // 0.0000... ~ 0.999999....
		int num2 = (int)(num*3);
		if(num2==0){
			com_Rsp = "가위";
		}
		else if(num2 == 1){
			com_Rsp = "바위";
		}
		else if(num2 == 2){
			com_Rsp = "보";
		}
	%>
	<h1>컴퓨터와 대결</h1>
	<div><%=name %> :<%=ursp %></div>
	<div>시스템 : <%=com_Rsp%></div>
	
	<%
		String result = "";
		if(com_Rsp.equals(ursp)){
			result = "비겼습니다.";
		}
		else if(ursp.equals("가위")&&com_Rsp.equals("보")||ursp.equals("바위")&&com_Rsp.equals("가위")||ursp.equals("보")&&com_Rsp.equals("바위")){
			result = "유저 승";
		}
		else{
			result = "컴퓨터 승";
		}
	%>
	<h2><%=result %></h2>
</body>
</html>