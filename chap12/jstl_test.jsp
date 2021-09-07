<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	<!-- JSTL 라이브러리 끌어옴 -->

<html>
	<head>
		<title>JSTL 연습</title>
	</head>
	<body>
		${list = [1,2,3,4,5]}
		<c:set var="num" value="${list}"/> <br>
		${num.stream().sum()}
	</body>
</html>
