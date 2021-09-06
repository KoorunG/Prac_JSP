<%@ page contentType="text/html; charset=utf-8" %>
<% 
	request.setCharacterEncoding("utf-8");
%>

<html>
	<head>
		<title>JSP EL 활용</title>
	</head>
	<body>
		이름 : ${param.name}	<br>
		취미 : ${param.hobby} <br>
	</body>
</html>
