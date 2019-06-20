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
		/* $("li").css("background", "lime"); */
		/* $("ul").empty(); */ 
		/* $("li").empty(); */ //자식을 지울때
		/* $("li").remove(); */ //자기 자신을 지울때
		$("#b1").click(function () {
			$("li").addClass("aqua"); //클래스를 부여
		})
		$("#b2").click(function () {
			$("li").removeClass("aqua"); //부여된 클래스 삭제
		})
	});
</script>
<style type="text/css">
.aqua{
	background: aqua;
}
</style>
</head>
<body>
	<button type="button" id="b1">나를 눌러요</button>
	<button type="button" id="b2">나를 눌러요</button>
	<ul>
		<li>감자</li>
		<li>고구마</li>
		<li>양파</li>
	</ul>
</body>
</html>