<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import = "java.util.*" %>

<html>
	<head></head>
	<body>
		${list = [1,2,3,4,5]}	<br> <br>
		합 : ${list.stream().sum()} <br>
		평균 : ${[1,2,3,4,5].stream().average().orElseGet(() -> -1)}
	</body>
</html>