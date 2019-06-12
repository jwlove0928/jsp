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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		String dbId = "root";
		String dbpw = "1234";
		if(id.equals(dbId) && pw.equals(dbpw)){
			response.sendRedirect("http://www.kgitbank.com");
		}else{
			response.sendRedirect("jsp6.jsp");
		}
	%>
</body>
</html>