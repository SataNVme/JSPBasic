<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 
		아래 form태그의 내용을 req_quiz_ok페이지로 post방식으로 전달합니다.
		ok페이지에서는 값을 받아서 화면에 출력.
	 -->
	
	<h1>폼 태그</h1>
	
	<form action="req_quiz_ok.jsp" method="post">
		<h3>회원가입 양식</h3>	
		<hr>
		아이디:<input type = "text" size = "10" placeholder = "8글자" name="id"><br>
		비밀번호:<input type = "password" size = "10" placeholder = "5글자" name="pw"><br>
		
		<!-- cf) name속성으로 하나로 묶어줘야 합니다.(식별하기 위해) -->
		
		관심분야 <!-- checkbox : 여러개 선택 가능 -->
		<input type="checkbox" name = "inter">JAVA
		<input type="checkbox" name = "inter">DB
		<input type="checkbox" name = "inter">JSP
		<input type="checkbox" name = "inter">SPRING
		<input type="checkbox" name = "inter">응용소프트웨어
		
		<br>
		
		전공분야 <!-- radio : 하나만 선택 가능  -->
		<input type="radio" name = "major" value="경영"> 경영학과
		<input type="radio" name = "major" value="컴공"> 컴퓨터공학과
		<input type="radio" name = "major" value="수학"> 수학과
		<input type="radio" name = "major" value="기공"> 기계공학과
		
		<br>
		
		지역 <!-- select : 콤보박스 -->
		<select name = "region">
			<option>서울시</option>
			<option>경기도</option>
			<option>부산시</option>
			<option>제주시</option>
		</select>
		
		<br>
		
		자신을 소개해보세요!<br> <!-- textarea : 범위를 지정한 입력창 생성 -->
		<textarea rows="10" cols="50" name="hello"></textarea>
		
		<br>

		<!-- submit : 폼 태그 안의 정보를 지정한 주소로 날라준다. -->
		<input type = "submit" value = "전송하기">
		
		<!-- reset : 폼 태그 안의 정보를 초기화한다. -->
		<input type = "reset" value = "초기화">

	</form>
</body>
</html>