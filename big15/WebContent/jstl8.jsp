<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="str" value="jspStudy :: the whole new world!!"></c:set>
<hr color="red">
길이 : ${fn:length(str) }<br>
글자 추출 : ${fn:substring(str, 0, 8) }<br>
글자 이후추출 : ${fn:substringAfter(str, "::")}<br>
글자 이전추출 : ${fn:substringBefore(str,"::")}<br>
글자 대문자로 : ${fn:toUpperCase(str)}<br>
글자 소문자로 : ${fn:toLowerCase(str)}<br>
글자 대체변환 : ${fn:replace(str,"::", "콜론")}<br>
글자 위치 : ${fn:indexOf(str, "::")}<br>
글자 확인 : ${fn:contains(str,"::")}<br>



</body>
</html>