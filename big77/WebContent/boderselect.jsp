<%@page import="bean.bbsDTO"%>
<%@page import="bean.bbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<script type="text/javascript">
			function update() {
				document.choice.action="boderupdate.jsp"
				document.choice.submit();
			}
			function del() {
				document.choice.action="boderdelete.jsp"
				document.choice.submit();
			}
		</script>
	</head>
		<body>
			<jsp:useBean id="dto" class="bean.bbsDTO"></jsp:useBean>
			<jsp:setProperty property="*" name="dto"/>
			
			<%
				bbsDAO dao = new bbsDAO();
				bbsDTO dto2 = dao.select(dto);
			%>
			ID <div class="alert alert-primary" role="alert">
			<%= dto.getId() %>
			</div>
			TITLE <div class="alert alert-success" role="alert">
  			<%= dto.getTitle() %>
			</div>
			CONTENT <div class="alert alert-danger" role="alert">
  			<%= dto.getContent() %>
			</div>
			ETC <div class="alert alert-warning" role="alert">
  			<%= dto.getEtc() %>
			</div>
			검색결과입니다.
			<hr color="red">
			<form name="choice">
				제목 수정 <input type="text" name="title" value =<%= dto.getTitle() %>><br>
				내용 수정 <input type="text" name="content" value = <%= dto.getContent() %>><br>
				기타 수정 <input type="text" name="etc" value = <%= dto.getEtc() %>><br>
				수정요청 ID <input type="text" name="id" value = <%= dto.getId() %>><br>
				<button type="button" onclick="update()" class="btn btn-success">수정 요청</button>
				<button type="button" onclick="del()"class="btn btn-danger">삭제 요청</button>
			</form>
		</body>
</html>