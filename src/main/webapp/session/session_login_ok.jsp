<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 아이디, 비밀번호, nick을 받습니다.
	2. 아이디랑 비밀번호가 동일하면 (user_id, id)를 저장하는 세션생성
	(user_nick, 닉네임) 세션을 생성합니다.
	
	session_welcome페이지로 리다이렉트해서 (아이디와 닉네임을 찍어주세요)
	틀린경우는 로그인페이지로 리다이렉트
	*/
	
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("name");
	
	if(id.equals(pw)) { //로그인성공
		
		session.setAttribute("user_id", id);
		session.setAttribute("user_nick", nick);
		
		response.sendRedirect("session_welcome.jsp"); //성공페이지
		
	} else {
		response.sendRedirect("session_login.jsp");
	}
	
	
	

%>
    
    