<%@ page contentType = "text/html; charset=utf-8" %>	<%-- page 인코딩 --%>
<%
	request.setCharacterEncoding("utf-8");	// 요청파라미터의 인코딩을 지정해주지 않으면 파라미터가 제대로 전달되지 않는다
%>
<html>
<head><title>Info</title></head>
<body>
	include 전 name 파라미터 값  : <%= request.getParameter("name") %>
	<hr>
	<jsp:include page="body_sub.jsp" flush="false">
		<jsp:param name="name" value="KoorunG"/>
	</jsp:include>
	<hr/>
	include 후 name 파라미터 값  : <%= request.getParameter("name") %>
	<!-- 기존 파라미터의 값을 유지한다는 것을 확인할 것! -->
</body>
</html>
