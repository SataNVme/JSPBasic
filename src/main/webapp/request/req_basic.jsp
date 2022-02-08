<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//request는 자동생성 되며 request에 .을 찍어 바로 사용합니다.
	//request에는 브라우저에 대한 정보, 많은 값이 담겨있습니다.
	StringBuffer url = request.getRequestURL(); //url값 

	String uri = request.getRequestURI(); //uri값
	
	String path = request.getContextPath(); //프로젝트의 구분경로
	
	String addr = request.getRemoteAddr(); //클라이언트의 접속 ip
	
	System.out.println("접속주소:" + addr);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	url:<%=url %><br>
	uri:<%=uri %><br>
	path:<%= path %><br>
	접속주소:<%= addr %><br>

</body>
</html>