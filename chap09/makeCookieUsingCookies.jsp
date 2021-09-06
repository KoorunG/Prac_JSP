<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import ="java.net.URLEncoder" %>
<%@ page import ="util.Cookies" %>
<%
	response.addCookie(Cookies.createCookie("name", "koorung"));
	response.addCookie(Cookies.createCookie("id", "madvirus", "/chap09", -1));
%>

<html>
<head>
	<title>Cookies 사용 예</title>
</head>
<body>
	Cookies를 사용하여 쿠키 생성
</body>
</html>