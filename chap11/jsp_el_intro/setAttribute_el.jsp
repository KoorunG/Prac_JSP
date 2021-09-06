<%@ page contentType="text/html; charset=utf-8" %>
<% 
	request.setCharacterEncoding("utf-8");
%>

<html>
	<head>
		<title>JSP EL(표현언어) 처리 우선 순위</title>
	</head>
	<%
		application.setAttribute("name", "김희선");
		session.setAttribute("name", "이순신");
		request.setAttribute("name", "장나라");
	%>
	
	<body>
		${name}
		
		<!-- EL(표현언어)은 범위가 작은 부분에서 큰 부분으로 출력 우선순위를 정하는 것을 알 수 있음 -->
		<!-- 즉 page > request > session > application 의 우선순위를 가짐 -->
	</body>
</html>
