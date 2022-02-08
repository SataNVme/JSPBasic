<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %><!-- 예외페이지임을 명시 -->    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	.box {
		height: 1000px;
		display: flex;
		align-items: center;
		justify-content: center;
	}

</style>


</head>
<body>
	
	<div class="box">
		<img src="/JSPBasic/errorpage/NotFind.gif">
		<span>예기치 못한 에러가 발생했습니다</span>
	</div>
	
</body>
</html>