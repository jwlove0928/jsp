<%@page import="bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
			<jsp:useBean id="dto" class="bean.MemberDTO"></jsp:useBean>
			<jsp:setProperty property="*" name="dto"/>
	</head>
		<body>
			<%
				MemberDAO dao = new MemberDAO();
				dao.insert(dto);
			%>
			회원가입 신청이 완료되었습니다.
		</body>
</html>