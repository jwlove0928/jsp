<%@page import="bean.bbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
		<body>
			<jsp:useBean id="dto" class="bean.bbsDTO"></jsp:useBean>
			<jsp:setProperty property="*" name="dto"/>
			
			<%
				bbsDAO dao = new bbsDAO();
				dao.insert(dto);
			%>
			게시물이 작성을 완료하였습니다.
		</body>
</html>