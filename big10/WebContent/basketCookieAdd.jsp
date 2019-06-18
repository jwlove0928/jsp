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
		String value = request.getParameter("pId");
		String value2 = request.getParameter("price");
		
		Cookie cookie = new Cookie(value, value2);
		response.addCookie(cookie);
		/* Cookie cookie2 = new Cookie(value2, value2);
		response.addCookie(cookie2); */
	%>

<jsp:forward page="basket_CookieView.jsp"></jsp:forward>
</body>
</html>