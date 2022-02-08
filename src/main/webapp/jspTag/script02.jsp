<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<% for(int i = 1; i <= 10; i++) { %>
		<%=i %><br>
	<% } %>
	
	<hr>
	<% for(int i = 1; i <= 9; i++) { %>
		3 x <%=i %> = <%=3*i %><br>
	<% } %>
	
	<hr>
	1. 중첩반복문을 사용해서 2~9단까지 표현식을 적용하여 출력
	<% for(int i = 2; i <= 9; i++ ) { %>
		<% for(int j = 1; j <= 9; j++) { %>
			<%=i %> x <%=j %> = <%=i*j %><br>
		<% } %>
	<% } %>
	
	
	<hr>
	2. 반복문으로 체크박스 20개를 만드는데 이름을 붙여서 출력 (체크박스1 체크박스2 체크박스3....)
	<br>
	<% for(int i = 1; i <= 20; i++) { %>
		<input type="checkbox" name="xx">체크박스<%=i %>
	<% } %>
	
</body>
</html>