<%@page import="bean.basketDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="dto" class="bean.basketDTO"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>
<%
	//장바구니로 사용할 ArrayList 생성
	ArrayList<basketDTO> list = (ArrayList<basketDTO>)session.getAttribute("basket");
%>
<%
	for(int i = 0; i<list.size(); i++){
		dto = list.get(i);
	}
%>
	장바구니에 들어간 물건의 개수 : <%= list.size() %>

	장바구니에 들어간 물건 id = <%= dto.getpId() %><br>
	장바구니에 들어간 물건의 개수 : <%= dto.getCount() %><br>
	장바구니에 들어간 물건 가격 = <%= dto.getPrice() %>
	
</body>
</html>