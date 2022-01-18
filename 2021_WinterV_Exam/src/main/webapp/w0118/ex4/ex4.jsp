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
	// 전체 학생수가 100명
	// 학생들은 번호는 1번 ~ 100번 부여
	// 10명씩 1~10, 11~20, ..., 91~100 팀으로 구성
	// 각팀의 1번으로 끝나는 친구가 팀장
	// 번호를 입력하면 팀장이면 팀장, 아니면 팀원으로 출력
	// 그리고.... 팀장 번호를 출력
	
	int num = 71;
	if(num %10 == 1){
		out.println("팀장");
		out.print("팀장번호 : "+num);
	}else{
		out.println("팀원 : "+num);
		int leaderNum = 0;
		if(num % 10 ==0){
			leaderNum =((num/10)-1)*10 + 1;
		}else{
			leaderNum = (num/10)*10 + 1;
		}
		out.print("팀장번호 : "+leaderNum);
	}
%>
</body>
</html>