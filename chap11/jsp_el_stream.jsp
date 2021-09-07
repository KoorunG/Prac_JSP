<%@ page contentType="text/html; charset=utf-8" %>

<html>
	<head>
		<title>EL 스트림</title>
	</head>
	<body>
		${lst = [1,2,3,4,5]; ""}	<br> 
		${sum = lst.stream().sum()}	<br>
		${sorted = lst.stream().sorted().toList()}	<br>
	</body>
</html> 