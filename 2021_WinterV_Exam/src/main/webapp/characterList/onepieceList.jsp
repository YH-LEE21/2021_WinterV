<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vo.Member" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 원피스 캐릭터 -->
<%
	// 1. 요청(호출) 분석 - 컨터롤러 계층
	// 2. 모델 데이터 값을 구하다. - 모델 계층
	// ex)DBMS(Oracle, MSsql, Mysql, mariadb,...) -> 자료구조(메모리안에 배열)
	// 3. 출력(보고서) - 뷰 계층
	
	// 2. 모델값(데이터)
	ArrayList<Member> list = new ArrayList<Member>();
	Member m1 = new Member();
	m1.name = "루피";
	m1.gender = "남";
	m1.age = 19;
	m1.devilFruit = true;
	m1.teamName = "밀짚모자해적단";
	list.add(m1);
	
	Member m2 = new Member();
	m2.name = "조로";
	m2.gender = "남";
	m2.age = 21;
	m2.devilFruit = false;
	m2.teamName = "밀짚모자해적단";
	list.add(m2);
	
	Member m3 = new Member();
	m3.name = "나미";
	m3.gender = "여";
	m3.age = 21;
	m3.devilFruit = false;
	m3.teamName = "밀짚모자해적단";
	list.add(m3);
	
	Member m4 = new Member();
	m4.name = "상디";
	m4.gender = "남";
	m4.age = 20;
	m4.devilFruit = false;
	m4.teamName = "밀짚모자해적단";
	list.add(m4);
	
	Member m5 = new Member();
	m5.name = "우솝";
	m5.gender = "남";
	m5.age = 19;
	m5.devilFruit = false;
	m5.teamName = "밀짚모자해적단";
	list.add(m5);
	
	Member m6 = new Member();
	m6.name = "쵸파";
	m6.gender = "남";
	m6.age = 7;
	m6.devilFruit = true;
	m6.teamName = "밀짚모자해적단";
	list.add(m6);
	
	Member m7 = new Member();
	m7.name = "로빈";
	m7.gender = "여";
	m7.age = 24;
	m7.devilFruit = true;
	m7.teamName = "밀짚모자해적단";
	list.add(m7);
	
	Member m8 = new Member();
	m8.name = "프랑키";
	m8.gender = "남";
	m8.age = 30;
	m8.devilFruit = false;
	m8.teamName = "밀짚모자해적단";
	list.add(m8);
	
	Member m9 = new Member();
	m9.name = "브룩";
	m9.gender = "남";
	m9.age = 100;
	m9.devilFruit = true;
	m9.teamName = "밀짚모자해적단";
	list.add(m9);
	
	Member m10 = new Member();
	m10.name = "징베";
	m10.gender = "남";
	m10.age = 40;
	m10.devilFruit = false;
	m10.teamName = "밀짚모자해적단";
	list.add(m10);
	
	// 디버깅(for문:읽기,쓰기)
	for(int i=0; i<list.size(); i+=1) {
		System.out.println(list.get(i).name);
	}
	// 디버깅(foreach문:읽기)
	for(Member m : list) {
		System.out.println(m.name);
	}
	
	// 휴계소 1) 여자는 몇명?
	int femaleCount = 0;
	for(Member m : list) {
		if(m.gender.equals("여")) {
			femaleCount = femaleCount + 1;
		}
	}
	
	// 휴계소 2) 열매 비능력자는 몇명?
	int notFruitCount = 0;
	for(Member m : list) {
		if(m.devilFruit == false) { // if(!m.devilFruit)
			notFruitCount = notFruitCount + 1;
		}
	}
	
	// 휴계소 3) 평균나이(소수점까지)?
	int sumAge = 0;
	for(Member m : list) {
		sumAge = sumAge + m.age;
	}
	double avgAge = (double)sumAge / (double)list.size();
	
	// 휴계소 4) 나이가 제일 많은 멤버의 이름과 나이?	
	String maxAgeName = null;
	int maxAge = 0;
	for(Member m : list) {
		if(m.age > maxAge) {
			maxAge = m.age;
			maxAgeName = m.name;
		}
	}
	
%>

	<table border="1">
		<thead>
			<tr>
				<th>이름</th>
				<th>성별</th>
				<th>나이</th>
				<th>악마의 열매</th>
				<th>소속</th>
			</tr>
		</thead>
		<tbody>
			<%
				for(Member m :list){
			%>
				<tr>
						<td><%=m.name %></td>
						<td>
							<% if(m.gender.equals("남")){
							%>
									<img alt="남" src="./image/man.png" width="100px">
							<%
								}else{ 
							%>
									<img alt="여" src="./image/woman.png" width="100px">
							<%
								} 
							%>
						</td>
						<td><%=m.age %></td>
						<td><%=m.devilFruit %></td>
						<td><%=m.teamName %></td>
				</tr>
			<% 
				}
			%>
		</tbody>
	</table>
	<div>1) 여자멤버는 <%=femaleCount%>명</div>
	<div>2) 열매 비능력자는 <%=notFruitCount%>명</div>
	<div>3) 평균나이는 <%=avgAge%>살</div>
	<div>4) 가장 나이가 많은 멤버는 <%=maxAgeName%>이고 <%=maxAge%>살 입니다.</div>
</body>
</html>