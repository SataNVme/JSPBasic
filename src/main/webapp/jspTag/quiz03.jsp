<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	Random ran = new Random();
	String[] jobs = {"어피치", "라이언", "무지", "제이지", "프로도", "튜브"}; //랜덤한 참가자명단
	List<String> list = new ArrayList<>(); //참가자가 저장될 list
%>    
<%
	/*
	-------과제-------
	1.랜덤한 참가자를 추출해서 list에 순서대로 저장하면 됩니다.
	2.마지막에 참가한 사람과 중복된 사람의 명단을 숫자로 출력하면 됩니다.
	3.리스트 크기가 10이 되면 list.clear() 이용해서 리스트를 비워주세요.
	
	*/

	int r = ran.nextInt(6); //0-5랜덤수
	String choose = jobs[r]; //선택된 케릭터
	list.add(choose); //추가

	int count = 0; //중복인원 확인
	for(String e : list) {
		if(e.equals(choose)) {
			count++;
		}
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p>
		<b>[<%=choose %>]</b> 님이 입장<br>
		현재 같은 카카오 프렌즈는 <%=count %>명입니다.
	</p>
	
	<h2>현재 구성정보</h2>
	<p>
		<%=list.toString() %>(<%=list.size()%>명 참가중)
	</p>
	
	<%
		//리스트의 크기가 10개가 되면 리스트내부의 객체를 전체삭제
		if(list.size() == 10) {
			list.clear();
		}
	%>

	<script>
		window.setInterval(() => {location.reload(); }, 3000);
	</script>
	
</body>
</html>