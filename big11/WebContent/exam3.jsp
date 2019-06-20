<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	var result = true;
	var result2 = true;
	$(function () {
		$("#food").change(function () {
			if(result == true){
				$(".checkbox1").attr("checked", true);
				result = false;
			}else{
				$(".checkbox1").attr("checked", false);
				result = true;
			}
		});
		
		$("#place").change(function () {
			if(result2 == true){
				$(".checkbox2").attr("checked", true);
				result2 = false;
			}else{
				$(".checkbox2").attr("checked", false);
				result2 = true;
			}
		});
	});
</script>
</head>
<body>
	음식 <input type="checkbox" id="food">
	<hr color="red">
	감자 <input type="checkbox" class="checkbox1">
	고구마 <input type="checkbox" class="checkbox1">
	<hr color="blue">
	장소 <input type="checkbox" id="place">
	<hr color="lime">
	공원 <input type="checkbox" class="checkbox2">
	주차장 <input type="checkbox" class="checkbox2">
	
</body>
</html>