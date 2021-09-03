<%@ page contentType="text/html; charset=utf-8" %>
<jsp:useBean id="member" scope="request" class="chap08.member.MemberInfo"/>
<jsp:setProperty name="member" property="id" param="memberId"/>
<html>
	<head>
		<title>인사말</title>
	</head>
	<body>
		<%= member.getName() %> (<%= member.getId() %>) 회원님
		안녕하세요.
		<br><br><br>
		class 파일을 useBean 액션태그를 이용하여 불러온 뒤, setter 메소드로 프로퍼티를 가져와서 씀
	</body>
</html>	