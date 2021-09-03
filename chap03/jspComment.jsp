<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import = "java.util.stream.IntStream"  %>

<%
	// 자바8의 스트림을 이용한 1~10까지 합 구하기
	int sum = IntStream.range(1, 11).sum();
%>

<html>
	<head>
		<title>JSP 주석</title>
	</head>
	<body>
		주석은 출력 결과에 포함되지 않습니다 <br>
		<%-- <%= sum %> --%>
	</body>
</html>
