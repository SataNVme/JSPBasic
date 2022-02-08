<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 앞에서 넘어온 폼값을 받아서 평균을 구합니다.
	2. 포워드를 이용해서 평균값을 넘겨주도록 처리합니다.
	평균이 60점 이상이면 score_quiz03으로 이동해서
		~~님 평균은 xx점 합격입니다 를 출력
	평균이 60점 이하라면 score_quiz04으로 이동해서
		~~님 평균은 xx점 불합격입니다 를 출력
		
	조건: 세션을 사용하지 않습니다.		
	*/
	
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String math = request.getParameter("math");

	int a = Integer.parseInt(kor);
	int b = Integer.parseInt(eng);
	int c = Integer.parseInt(math);
	
	double avg = (a+b+c) / 3.0;
	
	//리퀘스트에 저장
	request.setAttribute("avg", avg);
	
	//포워드 방식
	if(avg >= 60) {
		request.getRequestDispatcher("score_quiz03.jsp").forward(request, response);
	} else {
		request.getRequestDispatcher("score_quiz04.jsp").forward(request, response);
	}
	
	
	
%>
