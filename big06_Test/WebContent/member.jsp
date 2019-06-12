<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="member.js"></script>
<link rel="stylesheet" type="text/css" href="list.css">
		</head>
			<body>
				<div id = "top">
				<ul>
					<li><a href="Exam01.html">메인페이지</a></li>
					<li><a href="Exam02.html">여행패키지</a></li>
					<li><a href="Exam03.html">버스티켓권</a></li>
					<li><a href="Exam04.html">로그인</a></li>
					<li><a href="Exam05.html">홍보 영상</a></li>
					<hr color="red" size="7" width="1400">
				</ul>
				</div>
			<div id = "main" align="center">
			<%
				String [] users = {"aaaaaa","bbbbbb","cccccc"};
				String [] passwords = {"111111","222222","333333"};
				
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");
				
			%>
				<%= id %>님 환영합니다.
							
			<br>
				주소 : 인천시 부평구 부평대로 부일로<br>
				연락처 : 032)990-8282<br>
				참조 사이트 : <a href="https://m.ybtour.co.kr/product/main.yb?menu=DMT&dspSid=AD00000">클릭하세요</a>
			</center>
		</body>
</html>