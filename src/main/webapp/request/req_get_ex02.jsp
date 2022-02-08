<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//값을 받을 때는 name="xx" 인 값을 받습니다.
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	//checkbox를 받을때는 values()
	String[] agree = request.getParameterValues("agree");
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	화면에서넘어온id:<%=id %><br>
	화면에서넘어온pw:<%=pw %><br>
	화면에서넘어온항목:<%=Arrays.toString(agree) %>


</body>
</html>