<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import ="java.util.Calendar" %>
<html>
	<head>
		<title>현재 시간</title>
	</head>
	<body>
	<%
		Calendar cal = (Calendar)request.getAttribute("time");  // request.getAttribute의 반환형은 Object이기 때문에 적절하게 캐스팅을 해줘야 함!
	%>
	현재 시간은 <%= cal.get(Calendar.HOUR) %> 시
			  <%= cal.get(Calendar.MINUTE) %> 분
			  <%= cal.get(Calendar.SECOND) %> 초 입니다.
	</body>
</html>