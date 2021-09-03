<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page buffer="1kb" %>
<%@ page errorPage = "/error/viewErrorMessage.jsp" %>


<html>
<head><title>버퍼 플러시 이후 에러 발생 결과</title></head>
<body>

<%
     // 4바이트 X 300 = 1200byte (1kb=1024byte 초과)
	for (int i = 0; i < 300; i++) {out.println(i);}

%>

 <!-- 1을 0으로 나누면 Arithmetic Exception이 발생함 -->
 <%= 1 / 0 %>

</body>
</html>
