<%@ page contentType="text/html; charset=utf-8" %>
<html>
	<head>
		<title>로그 메세지 기록</title>
	</head>
	<body>
		<%
			application.log("로그 메세지 기록");
		%>
		로그 메세지를 기록합니다.
		<%
			log("로그 메세지 기록2");
		%>
		로그 메세지2를 기록합니다.
	</body>
</html>