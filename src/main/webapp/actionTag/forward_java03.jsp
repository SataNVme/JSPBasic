<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	//리퀘스트에 강제저장한 값을 얻는방법
	String name = (String)request.getAttribute("name");


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	리퀘스트에 담긴값:<%=id %><br>
	
	리퀘스트에 담긴값:<%=name %>
	
</body>
</html>