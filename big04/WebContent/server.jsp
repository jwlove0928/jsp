<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="style2.css">
	</head>
		<body>
			<div id = "full" align="center">
				<div id = "top" align="center">
					<ul>
						<li><a href="css1.html">회사소개</a></li>
						<li><a href="css2.html">회사제품</a></li>
						<li><a href="css3.html">게시판</a></li>
						<li><a href="css4.html">회사연락처</a></li>
					</ul>
				</div>
				<div id = "title" align="center">
					<ul>
						<li>나의 회원정보</li>					
					</ul>
				</div>
					<table border="1" bordercolor="red">
						<tr>
							<td class="t1">아이디</td>
							<td class="t2">${param.id}</td>
						</tr>
						<tr>
							<td class="t1">패스워드</td>
							<td class="t2">${param.pw}</td>
						</tr>
						<tr>
							<td class="t1">이름</td>
							<td class="t2">${param.name}</td>
						</tr>
						<tr>
							<td class="t1">전화번호</td>
							<td class="t2">${param.tel}</td>
						</tr>
					</table>
					</div>
		</body>
</html>