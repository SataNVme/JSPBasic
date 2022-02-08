<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//idCheck쿠키사용
	Cookie[] arr = request.getCookies();
	
	String lastId = "";
	if(arr != null) {
		for(Cookie c :arr ) {
			if(c.getName().equals("idCheck")) {
				lastId = c.getValue();
			}
		}
	}

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- input태그에 미리값을 나타내는 속성은 value입니다 -->
	
	<h3>쿠키로그인 연습(아이디기억하기)</h3>
	
	<form action="cookie_ex01_ok.jsp" method="post">
	
		아이디:<input type='text' name="id" value="<%=lastId %>"><br>
		비밀번호:<input type="password" name="pw"><br>
		<input type="submit" value="로그인">
		<input type="checkbox" name="idCheck" value="y">아이디기억하기
	</form>
	
	
</body>
</html>