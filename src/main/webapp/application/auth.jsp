<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//랜덤한 16진수 문자값
	UUID uuid = UUID.randomUUID();
	//- 단위로 자른다
	String[] arr = uuid.toString().split("-");
	//1번째 값
	String ran = arr[1];
	//세션에 저장
	session.setAttribute("auth", ran);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>인증페이지</h2>
	<hr>
	
	인증문자값:<%=ran %>
	
	<form action="auth_ok.jsp" method="post">
	
		인증문자입력:<input type="text" name="code" size="10"><br>	
		<input type="submit" value="인증하기">
	</form>

</body>
</html>