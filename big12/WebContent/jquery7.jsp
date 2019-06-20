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
			var d = $(this).serialize();
			$.ajax({
				url : "member3.jsp",
				data : d,
				success: function (result) {
					alert("ajax 성공3");
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
		이름 : <input type="text" name="id">
		<button type="submit" id="button">AJAX통신</button>
	</form>
</body>
</html>