<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String idCheck = request.getParameter("idCheck");

	/*
	1. id=abc이고 pw=1234라면 로그인성공이라고 간주하고 (user_id, 아이디)쿠키를 생성
	2. 아이디나 비밀번호가 틀린경우는 다시 로그인페이지로 리다이렉트
	3. 로그인 성공시 cookie_ex01_welcome으로 리다이렉트해서 화면에 "id님이 로그인중입니다" 출력
	
	*/
	if(id.equals("abc") && pw.equals("1234")) { //성공
		
		Cookie cookie = new Cookie("user_id", id);
		cookie.setMaxAge(1800);
		response.addCookie(cookie);
		
		//아이디 기억하기 쿠키
		if(idCheck != null) {
			Cookie check = new Cookie("idCheck", id);
			check.setMaxAge(20); //20초
			response.addCookie(check);
		}
		
		response.sendRedirect("cookie_ex01_welcome.jsp"); //성공페이지로
		
	} else {
		
		response.sendRedirect("cookie_ex01.jsp"); //로그인페이지로
	}
	
	
%>