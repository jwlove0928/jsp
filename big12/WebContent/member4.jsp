<%@page import="bean.memberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
	
<jsp:useBean id="dto" class="bean.memberDTO">
</jsp:useBean>
<jsp:setProperty property="*" name="dto"/>

<%
	memberDAO dao = new memberDAO();

/* 	String id = request.getParameter("id");
	dto.setId(id); */

	memberDTO dto2 = dao.select(dto);

	if (dto2 != null) {
		out.write("아이디가 있습니다. 다른걸 입력해주세요");
	} else {
		out.write("사용 가능한 아이디입니다.");
	}
%>
<%-- <%
	String dbId = "root";
	String id = request.getParameter("id");
	if(id.equals(dbId)){
		out.write("로그인 OK");
	}else{
		out.write("로그인 not");
	}
%> --%>