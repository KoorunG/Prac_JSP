<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import ="java.net.URLEncoder" %>
<%
	Cookie cookie = new Cookie("oneh", "1time");
	cookie.setMaxAge(60 * 60);
	response.addCookie(cookie);
%>

<html>
<head>
	<title>쿠키 생성</title>
</head>
<body>
	유효시간이 1시간인 oneh 쿠키 생성!
</body>
</html>