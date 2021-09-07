<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<title>dateFormat 태그 사용</title>
	</head>
	<body>
		<c:set var="now" value="<%= new java.util.Date() %>" />
		<fmt:formatDate value="${now}" type="date" dateStyle="full" /> <br><br>
		<fmt:formatDate value="${now}" type="date" dateStyle="short" /> <br><br>
		<fmt:formatDate value="${now}" type="time" /> <br><br>
		<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" /> <br><br>
		<fmt:formatDate value="${now}" pattern="z a h:mm" /> <br><br>
		
		<!-- z : zone : KST -->
		<!-- a : am/pm : AM -->
		<!-- h : hour : 시간 -->
		<!-- mm : minute : 분 -->
	</body>
</html>