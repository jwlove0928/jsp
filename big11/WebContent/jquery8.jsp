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
			$(":checkbox").attr("checked", true);
		});
	});
</script>
</head>
<body>
	<h1>짜잔</h1><br>
	감자 <input type="checkbox" value="감자">
	고구마 <input type="checkbox" value="고구마">
	양파 <input type="checkbox" value="양파">
	대파 <input type="checkbox" value="대파"><br>
	<button type="button">버튼을 눌러주세요</button>
</body>
</html>