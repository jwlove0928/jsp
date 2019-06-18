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
		Cookie[] cookies = request.getCookies();
	
		for(Cookie c : cookies){
			String value = c.getValue();
			String name = c.getName();
			if(!(c.getName().equals("JSESSIONID"))){
				out.write("pid = " + name + " " + "price = " + value + "<br>");
					}
				}
	%>
</body>
</html>