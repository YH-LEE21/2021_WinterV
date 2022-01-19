<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Lotto Practice -->
<%
	int[] balls = new int[45]; //0~44
	for(int i =0;i<balls.length;i++){
		balls[i] = i+1;
	}
	for(int b: balls){
		//debug checked
		//System.out.println(b);
	}
	
	//shuffle
	for(int i =0;i<5;i++){
		int randomNum = (int)(Math.random()*45);
		int temp = balls[0];
		balls[0] = balls[randomNum];
		balls[randomNum] = temp;
	}
	for(int b : balls){
		//debug checked
		//System.out.print(b +"  ");
	}
	//System.out.println();
	
	for(int i=0;i<6;i++){
		System.out.print(balls[i]+"/");
	}
	System.out.println();
	
%>
</body>
</html>