<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//인증이 안된경우
	if( session.getAttribute("authYN") == null ) {
		response.sendRedirect("auth.jsp");
	}

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div align="center">	
		<h2>영화예약페이지</h2>
		<h3>영화를 선택하고 예약버튼을 누르세요</h3>
		<hr>
		
		<form action="reserve_ok" method="post">
			<b>좌석배치도</b>
			반복문.....
			<br>
			
			&nbsp;&nbsp;&nbsp;
			<% for(char c = 'A'; c <= 'Z'; c++) { %>
				<small><%=c %></small>&nbsp;&nbsp;
			<% } %>
			<br>
			
			<% for(int i = 1; i <= 6; i++) { %>
				<%=i %>
				
				<% for(char c = 'A'; c <= 'Z'; c++) { %>
					<input type="checkbox" name="seat" value="<%=i %>-<%=c %>">
				<% } %>
				
				<%= i == 3 ? "<br>" : "" %>
				<br>
			<% } %>
			
			<input type="submit" value="확인">
			<input type="reset" value="초기화">
		</form>
		
	</div>
	
</body>
</html>



