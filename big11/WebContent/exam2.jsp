<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function () {
		$("button").click(function () {
			$("#review").append("<img src=money.jpeg width=200 height=100>");
		})
	});
</script>
</head>
<body>
	<img src="money.jpeg" id="image"><br>
	<button type="button">전송</button>
	<hr>
	<div id="review"></div>
</body>
</html>