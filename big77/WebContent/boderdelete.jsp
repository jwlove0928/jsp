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
				dao.delete(dto);
			%>
			게시물을 삭제되었습니다.
			확인해보시겠습니까?<a href=boderselect.jsp?id=<%= dto.getId() %>>삭제 유무 확인하기</a>
		</body>
</html>