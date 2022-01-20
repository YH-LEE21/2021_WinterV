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
<%

	request.setCharacterEncoding("utf-8");
	String select_teamName = request.getParameter("teamName");
	//debug
	System.out.println(select_teamName);
	Member m1 = new Member();
	m1.name = "마르코";
	m1.teamName = "흰수염해적단";
	
	Member m2 = new Member();
	m2.name = "에이스";
	m2.teamName = "흰수염해적단";
	
	Member m3 = new Member();
	m3.name = "조즈";
	m3.teamName = "흰수염해적단";
	
	Member m4 = new Member();
	m4.name = "삿치";
	m4.teamName = "흰수염해적단";
	
	Member m5 = new Member();
	m5.name = "이조";
	m5.teamName = "흰수염해적단";
	
	Member m6 = new Member();
	m6.name = "샹크스";
	m6.teamName = "빨간머리해적단";
	
	Member m7 = new Member();
	m7.name = "벤베크맨";
	m7.teamName = "빨간머리해적단";
	
	Member m8 = new Member();
	m8.name = "야솝";
	m8.teamName = "빨간머리해적단";
	
	Member m9 = new Member();
	m9.name = "럭키루";
	m9.teamName = "빨간머리해적단";
	
	Member m10 = new Member();
	m10.name = "라임주스";
	m10.teamName = "빨간머리해적단";
	
	Member m11 = new Member();
	m11.name = "루피";
	m11.teamName = "밀짚모자해적단";
	
	Member m12 = new Member();
	m12.name = "조로";
	m12.teamName = "밀짚모자해적단";
	
	Member m13 = new Member();
	m13.name = "나미";
	m13.teamName = "밀짚모자해적단";
	
	Member m14 = new Member();
	m14.name = "우솦";
	m14.teamName = "밀짚모자해적단";
	
	Member m15 = new Member();
	m15.name = "상디";
	m15.teamName = "밀짚모자해적단";
	
	Member m16 = new Member();
	m16.name = "티치";
	m16.teamName = "검은수염해적단";
	
	Member m17 = new Member();
	m17.name = "시류";
	m17.teamName = "검은수염해적단";
	
	Member m18 = new Member();
	m18.name = "데본";
	m18.teamName = "검은수염해적단";
	
	Member m19 = new Member();
	m19.name = "라피트";
	m19.teamName = "검은수염해적단";
	
	Member m20 = new Member();
	m20.name = "반오거";
	m20.teamName = "검은수염해적단";
	
	ArrayList<Member> list = new ArrayList<Member>();
	list.add(m1);list.add(m2);list.add(m3);list.add(m4);list.add(m5);
	list.add(m6);list.add(m7);list.add(m8);list.add(m9);list.add(m10);
	list.add(m11);list.add(m12);list.add(m13);list.add(m14);list.add(m15);
	list.add(m16);list.add(m17);list.add(m18);list.add(m19);list.add(m20);
	
	ArrayList<Member> list2 = new ArrayList<Member>();
	if(select_teamName == null || select_teamName == ""){
		list2 = list;
	}else{
		for(Member m : list){
			if(m.teamName.equals(select_teamName)){
				list2.add(m);
			}			
		}
	}
	
%>
	<h1>멤버 목록</h1>
	<form method = "post" action="./memberList.jsp">
		<select name="teamName">
			<option value="" >해적단 이름 선택</option>
			<option value="밀짚모자해적단" >밀짚모자해적단</option>
			<option value="빨간머리해적단" >빨간머리해적단</option>
			<option value="흰수염해적단" >흰수염해적단</option>
			<option value="검은수염해적단" >검은수염해적단</option>
		</select>
		<button type="submit">검색</button>
	</form>
	<table border="1">
		<thead>
			<tr>
				<th>이름</th>
				<th>소속 해적</th>
			</tr>
		</thead>
		<tbody>
			<%
				for(int i =0;i<list2.size();i++){
			%>
					<tr>
						<td><%=list2.get(i).name %></td>
						<td><%=list2.get(i).teamName %></td>
					</tr>
			<% 
				}
			%>
		</tbody>
	</table>
</body>
</html>