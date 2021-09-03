<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.net.URLEncoder" %>
<%
	String value = "자바";
	String encodedValue = URLEncoder.encode(value, "utf-8");
	
	response.sendRedirect("/chap03/form_a.jsp?name="+encodedValue);
	%>
<html>
<head>
<title>로그인에 실패</title>
</head>
<body>
	<%= encodedValue %>
</body>
</html>
