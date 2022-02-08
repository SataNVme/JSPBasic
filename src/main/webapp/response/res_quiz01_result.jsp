<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String math = request.getParameter("math");
	
	int a = Integer.parseInt(kor);
	int b = Integer.parseInt(eng);
	int c = Integer.parseInt(math);
	double avg = ( a + b + c ) / 3.0;
	
	if(avg >= 60) {
		response.sendRedirect("res_quiz01_ok.jsp");
	} else {
		response.sendRedirect("res_quiz01_no.jsp");
	}
%>
    