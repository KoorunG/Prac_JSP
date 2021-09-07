<%@ page contentType="text/html; charset=utf-8" %>
<%@ page isELIgnored = "true" %>
<% 
	request.setAttribute("name", "장나라");
%>

<html>
	<head>
		<title>EL Object</title>
	</head>
	<body>
		
		요청 URI = ${pageContext.request.requestURI} <br>
		request의 name 속성 : ${requestScope.name} <br>
		code 파라미터 : ${param.code} <br>
	</body>
</html>
