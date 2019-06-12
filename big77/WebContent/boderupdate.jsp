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
				dao.update(dto);
			%>
			게시물을 수정하였습니다.
			확인해보시겠습니까?<a href=boderselect.jsp?id=<%= dto.getId() %>>수정된 내용 확인해보기</a>
		</body>
</html>