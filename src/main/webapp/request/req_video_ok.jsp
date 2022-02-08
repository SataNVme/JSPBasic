<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. course파라미터 값을 받아서
	//각 데이터별로 알맞은 화면을 보여주도록 처리
	String course = request.getParameter("course");
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- course파라미터를 반드시 들고 들어와야합니다 -->
	<% if(course == null) { %>
	<p>잘못들어왔는데요??</p>
		
	<% } else if(course.equals("java")) { %>
	<div align="center">
		<h2>강의 영상</h2>
		<hr>
		<p>자바 수업소개</p>
		<iframe width="560" height="315" src="https://www.youtube.com/embed/L0a6N-rj-CI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>
	<% } else if(course.equals("js")) { %>

	<div align="center">
		<h2>강의 영상</h2>
		<hr>
		<p>자바스크립트 수업소개</p>
		<iframe width="560" height="315" src="https://www.youtube.com/embed/nOTpuof2YG8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>
	<% } else if(course.equals("oracle")) { %>
	
	<div align="center">
		<h2>강의 영상</h2>
		<hr>
		<p>오라클 수업소개</p>
		<iframe width="560" height="315" src="https://www.youtube.com/embed/DEVR_R2Hva0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>
	<% } %>

</body>
</html>