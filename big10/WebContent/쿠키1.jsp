<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie cookie = new Cookie("hi", "cookiehello");
		response.addCookie(cookie);
		Cookie cookie2 = new Cookie("hong", "jsp");
		response.addCookie(cookie2);
		Cookie cookie3 = new Cookie("subject", "jsp");
		response.addCookie(cookie2);
	%>
	<jsp:forward page="쿠키2.jsp"></jsp:forward>
</body>
</html>