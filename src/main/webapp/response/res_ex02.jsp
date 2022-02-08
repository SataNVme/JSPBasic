<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<!-- class이름을 나타내는 표현방식(선택자) . -->
	<style>
		.form-content {margin: 0 auto; width: 200px; }
		.form-group {text-align: center;}
		.form-control {width: 100%; box-sizing: border-box; padding: 5px;}
		.form-btn {width:100%; box-sizing: border-box; padding: 10px; background-color: green; border: none; font-weight: 900; }
	</style>

</head>
<body>

	<!-- class속성과 css속성 -->
	<!-- 
		css에는 html을 꾸미는 작업입니다. 인라인시트, 내부스타일시트, 외부스타일시트 방법이 있습니다.
		내부스타일시트는 head태그에 style태그를 이용해서 css문법을 기술하고. 태그의 선택자 개념을 이용해서 디자인을 적용해주는 방법.
	 -->

	<section>
		<div class="form-content">
			<form action="res_ex02_result.jsp" method="post" class="form-group">
			
				<h3>로그인폼</h3>
				<input type="text" name="id" placeholder="아이디" class="form-control"><br>
				<input type="password" name="pw" placeholder="비밀번호" class="form-control"><br>
				<input type="submit" value="로그인" class="form-btn">
			</form>
		</div>
	</section>


</body>
</html>