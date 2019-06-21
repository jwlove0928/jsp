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
			url : "json/test.json",
			dataType: "json",
			success: function(result){
				alert("json문서 연결 성공");
					var list = result.test;
					if(list.length > 0){
						$("#div").html("test가 존재 확인" + "<br>");
						$(list).each(function(index, member) {
							var id = member.id;
							var name = member.name;
							var tel = member.tel;
							var email = member.email;
							$.ajax({
								url:"jsondb2.jsp",
								data: {
									//이름값가 value값
									"id" : id,
									"name" : name,
									"tel" : tel,
									"email" : email
								},
								success: function () {
									console.log("Ok");
								}
							});
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