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
		String dbPw = "1234";
		
		if((id.equals(dbId))&&(pw.equals(dbPw))){
			session.setAttribute("id", id);
			//setAtrribute할때,
			//session속성의 이름은 String타입
			//session속성의 값은  Object 타입
			//값은 아무타입이나 가능(업캐스팅, 자동형변환)
		}else{
			response.sendRedirect("member.html");
		}
	%>
	
	${id}<br>
	
	<%= session.getAttribute("id") %>
	
	<%
		String sId = (String)session.getAttribute("id");
	%>
</body>
</html>