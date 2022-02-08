<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	//선언자와 스크립트릿의 차이점
	int total = 0;
%>    
<%
	//페이지가 1번실행될 때마다 작성될 코드를 적습니다.
	int each = 0;	
	total++;
	each++;
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	total: <%=total %><br>
	each: <%=each %><br>
</body>
</html>