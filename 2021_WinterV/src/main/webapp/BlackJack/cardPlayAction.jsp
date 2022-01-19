<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vo.Card" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	//52개의 카드를 생성
	Card[] card = new Card[52]; //0~51
	for(int i =0;i<card.length;i++){//card.length -> 52
		card[i] = new Card();
	}
	
	for(Card c : card){
		//debug check
		System.out.println(c.kind +", "+ c.num);
	}
%>
</body>
</html>