<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource
	url = "jdbc:mysql://localhost:3306/bigdata"
	driver = "com.mysql.jdbc.Driver"
	user = "root"
	password = "1234"
	scope = "application"
	var = "db"
/>
<sql:query var="list" dataSource="${db }">
	select * from bbs
</sql:query>
	<table widt="200px" height="100px" border="1">
		<c:forEach var ="imsi" items="${list.rows }">
			<tr>
				<td>아이디 : ${imsi.id}</td>
				<td>제목 : ${imsi.title}</td>
				<td>내용 : ${imsi.content}</td>
				<td>기타 : ${imsi.etc}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>