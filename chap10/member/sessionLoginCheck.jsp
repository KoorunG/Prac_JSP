<%@ page contentType="text/html; charset=utf-8" %>
<%  request.setCharacterEncoding("utf-8");
	String memberId = (String)session.getAttribute("MEMBERID");
	String name = (String)session.getAttribute("NAME");
	boolean isLogin = (memberId == null ? false : true);
%>
<html>
	<head>
		<title>로그인 여부 검사</title>
	</head>
	<body>
	<%
		if(isLogin) {
	%>
	<%= name %>님이 아이디 : "<%= memberId %>" 로 로그인 한 상태입니다...
		<% } else { %>
	로그인하지 않은 상태
		<% } %>
	</body>
</html>