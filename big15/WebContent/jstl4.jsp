<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

내가 가장 먹고 싶은 음식은 ?? ${param.like }<br>
내가 가장 먹고 싶지 않은 음식은 ?? ${param.unlike }<br>

<c:if test = "${param.like == param.unlike }">두 음식이 같다.</c:if>
<c:if test = "${param.like != param.unlike }">두 음식이 다르다.</c:if>
</body>
</html>