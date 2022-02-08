<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>과제</h3>
	<%--
	1. form태그를 이용해서 post형식으로 이름, 국어, 영어, 수학점수을 받습니다.
	2. res_quiz01_result.jsp로 데이터를 넘겨서 평균을 구합니다.
	3. 60점 이상 이하여부에 따라서 합격, 불합격페이지로 리다이렉트
	--%>
	
	<form action="res_quiz01_result.jsp" method="post">
		이름:<input type="text" name="name"><br>
		국어:<input type="number" name="kor"><br>
		영어:<input type="number" name="eng"><br>
		수학:<input type="number" name="math"><br>
		<input type="submit" value="확인"><br>
	</form>
	
	
</body>
</html>