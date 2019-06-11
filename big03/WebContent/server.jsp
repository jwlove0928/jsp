<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
		<body>
			<% /* <%는 자바코드 입력 */
				String id = request.getParameter("id"); /* name안에 이름과 파라메터값을 동일하게 */
				String pw = request.getParameter("pw");
				String name = request.getParameter("name");
				String tel = request.getParameter("tel");
				String[] hobby = request.getParameterValues("hobby");
				out.print("취미 리스트입니다." + "<hr>");
				for(int i=0; i<hobby.length; i++){
					out.print(hobby[i] + "<br>");
				}
			%>
			받아온 파라메터 값
			<hr>
			ID : <%= id %> <br>
			PW : <%= pw %> <br>
			NAME : <%= name %> <br>
			TEL : <%= tel %> <br>
			음식 : ${param.food}<br> <!-- param.이름 하면 값받아서 출력까지 -->
			성별 : ${param.gender}<br>
		</body>
</html>