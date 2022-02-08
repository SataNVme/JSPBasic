<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
	//날짜객체 생성
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-DD");
	String now = sdf.format(date);
	
	//리스트생성
	List<String> list = new ArrayList<>();
	list.add("홍길동");
	list.add("이순신");
	list.add("신사임당");
	
	//키는 숫자, 값은 문자열 을 가지는 map생성하고 값추가
	Map<Integer, String> map = new HashMap<>();
	map.put(1, "홍길동");
	map.put(2, "이순신");
	
	//셋
	Set<Integer> set = new HashSet<>();
	set.add(1);
	set.add(2);
	%>
	
	
	시간:<%=now %><br>
	리스트: <%=list.toString() %><br>
	맵:<%=map.toString() %><br>
	셋:<%=set.toString() %><br>
	
	<h3>리스트안에 요소를 순서대로 반복문을 이용해서 출력</h3>
	<% for(int i = 0; i < list.size(); i++ ) { %>
		<%=list.get(i) %>
	<% } %>
	
	<br>
	<% for(String s : list ) { %>
		<%=s %>
	<% } %>
	
	<h3>Entry안에 있는 키와 값을 순서대로 출력(검색)</h3>
	
	<%
	Set<Entry<Integer, String>> iter = map.entrySet();
	for(Entry<Integer, String> i : iter) {
	%>		
		<%=i.getKey() %>
		<%=i.getValue() %>
	<%	
	}
	%>
	
	
	
	
	
</body>
</html>