<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<title>timeZone 국가별 키워드 목록 보기</title>
	</head>
	<body>
		<c:forEach var="id" items="<%= java.util.TimeZone.getAvailableIDs() %>">
		${id} <br>
		</c:forEach>
	</body>
</html>