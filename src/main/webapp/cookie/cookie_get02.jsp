<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//특정쿠키 사용하기
	Cookie[] arr = request.getCookies();
	
	String id = ""; //쿠키값을 저장할 변수
	if(arr != null) {
		for(Cookie c : arr ) { //모든쿠키를 회전
			//이름이 user_id인 쿠키를 찾는다.
			if(c.getName().equals("user_id")) {
				id = c.getValue();
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
	user_id쿠키값:<%=id %>

</body>
</html>