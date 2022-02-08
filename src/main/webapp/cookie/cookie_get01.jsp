<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//쿠키는 브라우저에서 자동으로 넘어오게 되고 request에 담깁니다
	Cookie[] arr = request.getCookies();

	//쿠키를 사용하기 전에 null체크 우선
	if(arr != null) {
		for(Cookie c : arr) {
			String cName = c.getName();
			String cValue = c.getValue();
			
			out.println(cName + "<br>"); //브라우저 출력
			out.println(cValue+ "<br>"); //브라우저 출력
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

	<a href="cookie_get02.jsp">특정 쿠키확인하기</a>

</body>
</html>