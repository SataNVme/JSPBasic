<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//쿠키생성문법
	//1. 쿠키생성(이름, 값)
	Cookie cookie = new Cookie("user_id", "kkk123");

	//2. 속성설정
	cookie.setMaxAge(3600); //1시간지속
	
	//3. 쿠키를 response에 저장
	response.addCookie(cookie);
	
	//두번째쿠키
	Cookie cookie2 = new Cookie("user_name", "홍길동");
	cookie2.setMaxAge(20); //20초지속
	response.addCookie(cookie2);
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<a href="cookie_get01.jsp">쿠키확인해보기</a>
	
</body>
</html>