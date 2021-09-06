<%@ page contentType="text/html; charset=utf-8" %>
<% 
	request.setCharacterEncoding("utf-8");
%>

<html>
	<head>
		<title>JSP 표현식 활용</title>
	</head>
	<body>
		이름 : <%= request.getParameter("name") %> <br>
		취미 : <%= request.getParameter("hobby") %> <br>
	</body>
</html>
