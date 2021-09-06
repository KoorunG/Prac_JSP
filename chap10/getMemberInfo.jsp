<%@ page contentType="text/html; charset=utf-8" %>
<% 
	String name = (String)session.getAttribute("NAME");
	String memberId = (String)session.getAttribute("MEMBER");
%>
<html>
	<head>
		<title> 세션 불러오기</title>
	</head>
	<body>
		회원명 : <%= name %> <br>
		아이디 : <%= memberId %> <br>
	</body>
</html>