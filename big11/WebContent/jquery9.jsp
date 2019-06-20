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
			$("img").attr("width", "500");
			$("img").attr("heigh", "600");
			$("img").css("border","2px dotted red");
			/* $("img").removeAttr("border"); */
		})
	});
</script>
</head>
<body>
	<img src="money.jpeg"><br>
	<button>나를 눌러요</button>
</body>
</html>