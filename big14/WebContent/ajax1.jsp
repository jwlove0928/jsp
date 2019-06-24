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
			url : "https://api.rss2json.com/v1/api.json?rss_url=http://www.chosun.com/site/data/rss/rss.xml&api_key=bwu0q9xvwqzn7d7vj3vxvuqgcp2zz0dgpywaxtii", //rss2json에서 받은 값
			dataType: "json",
			data : {
				url : "http://www.chosun.com/site/data/rss/rss.xml", //원래 요청 url
				api_key : "bwu0q9xvwqzn7d7vj3vxvuqgcp2zz0dgpywaxtii", //요청시 받은 api_key
				count : 20
			},
			success : function (result) {
				for(var i = 0; i < 20; i++) {
					var title = result.items[i].title;
					var img = result.items[i].thumbnail;
					var link = result.items[i].link;
					$("#result").append("<a href= " + link + ">" + title + "</a><br>");
					$("#result").append("<img src= " + img + "><br>");
				}
			}
		})
	});
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function () {
		$("#sosa").click (function () {
			$.ajax({
				url : "https://api.rss2json.com/v1/api.json?rss_url=http://www.chosun.com/site/data/rss/national.xml&api_key=bwu0q9xvwqzn7d7vj3vxvuqgcp2zz0dgpywaxtii",
				dataType : "json",
				data : {
					url : "http://www.chosun.com/site/data/rss/national.xml",
					api_key : "bwu0q9xvwqzn7d7vj3vxvuqgcp2zz0dgpywaxtii",
					count : 20
				},
				success : function (result) {
					$("#result").text(" ");
					for (var i = 0; i < 20; i++) {
						var title = result.items[i].title;
						var img = result.items[i].thumbnail;
						var link = result.items[i].link;
						$("#result").append("<a href= " + link + ">" + title + "</a><br>");
						$("#result").append("<img src= " + img + "><br>");
					}
				}
			})
		})
	})
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function () {
		$("#sport").click (function () {
			$.ajax({
				url : "https://api.rss2json.com/v1/api.json?rss_url=http://www.chosun.com/site/data/rss/sports.xml&api_key=bwu0q9xvwqzn7d7vj3vxvuqgcp2zz0dgpywaxtii",
				dataType : "json",
				data : {
					url : "http://www.chosun.com/site/data/rss/sports.xml",
					api_key : "bwu0q9xvwqzn7d7vj3vxvuqgcp2zz0dgpywaxtii",
					count : 20
				},
				success : function (result) {
					$("#result").text(" ");
					for (var i = 0; i < 20; i++) {
						var title = result.items[i].title;
						var img = result.items[i].thumbnail;
						var link = result.items[i].link;
					http://www.chosun.com/site/data/rss/sports.xml	var link = result.items[i].link;
						$("#result").append("<a href= " + link + ">" + title + "</a><br>");
						$("#result").append("<img src= " + img + "><br>");
					}
				}
			})
		})
	})
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function () {
		$("#cul").click (function () {
			$.ajax({
				url : "https://api.rss2json.com/v1/api.json?rss_url=http://www.chosun.com/site/data/rss/culture.xml&api_key=bwu0q9xvwqzn7d7vj3vxvuqgcp2zz0dgpywaxtii",
				dataType : "json",
				data : {
					url : "http://www.chosun.com/site/data/rss/culture.xml",
					api_key : "bwu0q9xvwqzn7d7vj3vxvuqgcp2zz0dgpywaxtii",
					count : 20
				},
				success : function (result) {
					$("#result").text(" ");
					for (var i = 0; i < 20; i++) {
						var title = result.items[i].title;
						var img = result.items[i].thumbnail;
						var link = result.items[i].link;
						$("#result").append("<a href= " + link + ">" + title + "</a><br>");
						$("#result").append("<img src= " + img + "><br>");
					}
				}
			})
		})
	})
</script>
</head>
<body>
	<input type="button" id="sosa" value="사회">
	<input type="button" id="sport" value="스포츠">
	<input type="button" id="cul" value="문화">
	<div id="result"></div>
</body>
</html>