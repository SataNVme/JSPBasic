<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//로그아웃
	//session.removeAttribute("user_id");
	//session.removeAttribute("user_nick");

	session.invalidate();
	response.sendRedirect("session_login.jsp");
%>
    