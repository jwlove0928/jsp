<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel = "stylesheet" type="text/css" href="style3.css">
	</head>
		<body>
		<h1>게시판</h1>
			<%
				String title = request.getParameter("title");
				String content = request.getParameter("content");
				String user = request.getParameter("user");
				String pw = request.getParameter("pw");
			%>
			받아온 값
			<hr>
			TITLE : <%= title %> <br>
			CONTENT : <%= content %> <br>
			USER : <%= user %> <br>
			PW : <%= pw %> <br>
			
			<a href="bbs.html">메인 페이지로....</a>
		
		</body>
</html>