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
			var data = $("input").val();
			$("#review").append(data + "<br>");
		})
	});
</script>
</head>
<body>
	값을 입력하세요 <input type="text" id="input"><br>
	<button type="button">전송</button>
	<hr>
	<p>원글<p>
	<p id="review"></p>
</body>
</html>