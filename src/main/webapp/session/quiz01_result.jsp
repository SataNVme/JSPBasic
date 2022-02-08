<%@page import="com.command.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션에서 student를 얻고
	//student안에 저장된 name, kor값만 출력
	Student s = (Student)session.getAttribute("student");
	String name = s.getName();
	String kor = s.getKor();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%=name %>의 국어점수:<%=kor %>
	
	
</body>
</html>