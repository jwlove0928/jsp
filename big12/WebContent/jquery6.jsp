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
		$("#form").submit(function(){
			var d = $(this).serialize(); //key,value값을 자동으로 만들어줌 
			$.ajax({
				url : "member2.jsp",
				data : d,
				success: function (result) {
					alert("ajax 성공2");
					$("#result").text(result);
				}
			});
			return false;
		});
	});
</script>
</head>
<body>
	<div id="result"></div>
	<form action="" id="form">
		이름 : <input type="text" name="name" value="hong gil dong">
		<button type="submit" id="button">AJAX통신</button>
	</form>
</body>
</html>