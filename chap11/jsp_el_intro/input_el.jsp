<%@ page contentType="text/html; charset=utf-8" %>
<% 
	request.setCharacterEncoding("utf-8");
%>

<html>
	<head>
		<title>JSP 입력폼 활용</title>
	</head>
	<body>
		<form action = "output_el.jsp" method="get">
		이름 : <input type="text" name="name" size="10" placeholder="이름"> <br> 
		취미 : <input type="text" name="hobby" size="10" placeholder="취미"> <br>
		<input type="submit" value="전송">
		</form>
	</body>
</html>
