<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//처리하는 곳
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");

	//리퀘스트에 강제값 저장
	request.setAttribute("name", "홍길동");
	
	
	//포워드이동
	//RequestDispatcher dp = request.getRequestDispatcher("forward_java03.jsp");
	//dp.forward(request, response);
	request.getRequestDispatcher("forward_java03.jsp").forward(request, response);
	
	
	
%>