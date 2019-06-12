<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
요청 방식 : <%= request.getScheme()%><br>
<%= request.getServerName() %><br>
<%= request.getLocalAddr() %><br>
<%= request.getServerPort() %><br>
<%= request.getRemotePort() %><br>
<%= request.getRemoteHost() %><br>
<%= request.getRemoteAddr() %><br>
<hr>
<%-- jsp경로 --%><%= request.getRequestURI() %><br>
<%-- jsp 전체경로 --%><%= request.getRequestURL() %>
<%--  --%><%= request.getContextPath() %>
</body>
</html>