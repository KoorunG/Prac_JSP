<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<title>url 태그</title>
	</head>
	<body>
		<c:url value="http://search.daum.net/search" var="searchUrl">
			<c:param name="b" value="blog"/>
			<c:param name="p" value="공원"/>
		</c:url>
		
		<ul>
			<li>${searchUrl}
			<li><c:url value="/use_choose_tag.jsp"/>
			<li><c:url value="./use_choose_tag.jsp"/>
		</ul>
	</body>
</html>
