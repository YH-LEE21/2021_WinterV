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
		if(i/13 == 0){
			card[i].kind = "spade";
		}else if(i/13 == 1){
			card[i].kind = "diamond";
		}else if(i/13 == 2){
			card[i].kind = "heart";
		}else{
			card[i].kind = "clover";
		}
		card[i].num = (i%13)+1;
	}
	
	/* for(Card c : card){
		//debug check clear
		//System.out.println(c.kind +", "+ c.num);
	} */
	for(int i=0;i<5000;i++){
		int rand = (int)(Math.random()*52);
		Card temp = card[0];
		card[0] = card[rand];
		card[rand] = temp;
	}
	
	int count=0;
	/* for(Card c : card){
		//debug check
		count++;
		System.out.print(c.kind +", "+ c.num+" / ");
	}
	System.out.println();
	System.out.println(count); */
	
	for(int i = 0; i < 6; i++){
		if(i%3==0){
%>
			<br>
<%			
		}
%>
		<!-- <div><%=card[i].kind %> <%=card[i].num%></div> -->
			<img alt = "<%=card[i].kind%> <%=card[i].num%>" src=./card/<%=card[i].kind%><%=card[i].num%>.jpg>
<%	
	}
%>
</body>
</html>