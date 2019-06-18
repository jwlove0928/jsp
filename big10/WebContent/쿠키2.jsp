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
	/* 	for(Cookie c : cookies){
			String name = c.getName();
			out.write(name + "<br>");
			out.write("<hr>");
			if(name.equals("hong")){
				String value = c.getValue();
				out.write(value + "<br>");
			}
		} */
		
		for(Cookie c1 : cookies){
			String name = c1.getName();
			out.write(name + "<br>");
			/* if(name.equals("JSESSIONID")){
				String value = c1.getValue();
				out.write(name + " " + value + "<br>");
			} */
		}
	%>
</body>
</html>