<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Calendar 클래스 사용</title>
</head>
<body>
	오늘은 <%= java.util.Calendar.getInstance().get(java.util.Calendar.YEAR) %> 년 
	 <%= java.util.Calendar.getInstance().get(java.util.Calendar.MONTH) + 1 %> 월
	<%= java.util.Calendar.getInstance().get(java.util.Calendar.DATE) %> 일 입니다!
</body>
</html>