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
		$.ajax({
			url : "xml/dataset.xml",
			dataType: "xml",
			success: function(result){
				alert("xml문서 연결 성공");
				//alert($(result).find("rank").length);
				if($(result).find("record".length > 0)){
					$(result).find("record").each(function() { //each를 이용하여 값을 각각받기
						//alert($(this).find("name").text()); 
						//alert($(this).find("tel").text());
						var name = $(this).find("first_name").text();
						//var tel = $(this).find("tel").text();
						$("#div").append(name + "<br>");
						//$("#div").append("<li>" + tel + "</li>");

					});
				}
			}
		});
	});
</script>
</head>
<body>
	인기 검색어 순위
	<hr color="red">
		<div id="div">
		</div>
</body>
</html>