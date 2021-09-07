<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	<!-- JSTL 라이브러리 끌어옴 -->

<html>
	<head>
		<title>JSTL 코어 태그 활용</title>
	</head>
	<body>
		<%-- <c:set> 태그 기본 사용 방법 --%>
		<c:set var="name1" value="장나라"/>	<!-- JSTL 코어 -->
		${name1}<br>						<!-- EL -->
		<c:set var="name2">쿠렁</c:set>
		${name2}<br>
		<c:set var="num1" value="5"/> 
		<c:set var="num2" value="${2}"/> 
		<c:set var="num3">5.2</c:set> 
		${num1} + ${num2} + ${num3} = <br>
		합은 : ${num1 + num2 + num3}
	</body>
</html>
