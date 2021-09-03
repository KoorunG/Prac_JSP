<%@ page contentType="text/html; charset=utf-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%!
	public int multiply(int a, int b){
		int c = a * b;
		return c;
	}
		%>
<%! int multi = multiply(10,25); %>
<html>
<head>
<title>선언부를 사용한 두 정수의 곱</title>
</head>
<body>
<% int multi = multiply(10,25); %>
10 * 25 = <%= multi %>
</body>
</html>