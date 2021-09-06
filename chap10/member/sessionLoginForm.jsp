<%@ page contentType="text/html; charset=utf-8" %>
<html>
	<head>
		<title>로그인폼</title>
	</head>
	<body>
		<form action = "<%= request.getContextPath() %>/member/sessionLogin.jsp" method="post">
		아이디 : <input type="text" name="id" size="20" placeholder="아이디를 입력해주세요"> <br> 
		이름 : <input type="text" name="name" size="20" placeholder="이름을 입력해주세요"> <br>
		암호 : <input type="password" name="password" size="20" placeholder="비밀번호를 입력해주세요"> <br> <br>
		<input type="submit" value="로그인">
		</form>
	</body>
</html>
