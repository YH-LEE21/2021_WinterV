<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String[] arr = new String[3];
	// 1) 입력
	arr[0] = "루피";
	arr[1] = "조로";
	arr[2] = "우솝";

	for(String s : arr){
		//debug
		System.out.println(s);
	}
	System.out.println();
	ArrayList<String> list = new ArrayList<String>();
	// 1)입력
	list.add("루피");
	list.add("조로");
	list.add("우솝");
	list.add("상디");
	list.add("나미");
	
	for(String s : list){
		//debug
		System.out.println(s);
	}
%>
</body>
</html>