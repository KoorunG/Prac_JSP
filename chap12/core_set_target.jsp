<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	<!-- JSTL 라이브러리 끌어옴 -->
<jsp:useBean id="vo" class="jstl.MemberVO" />						<%-- <jsp:useBean으로 자바빈 객체 끌어옴 --%>

<html>
	<head>
		<title>JSTL Java ValueObject 연계 활용!</title>
	</head>
	<body>
		<%-- setName()의 장나라 값으로 name 정의 --%>
		<c:set target="${vo}" property="name" value="장나라" />		<%-- target을 지정하여 (위에서 설정한 Bean의 id로) 프로퍼티를 설정 --%>
		회원님의 이름은 ${vo.name} 입니다! <br>
		<c:set target="${vo}" property="age" value="30" />
		회원님의 나이는 ${vo.age}살 입니다! <br>	
		<c:set target="${vo}" property="email" value="koorung23@gmail.com" />
		회원님의 이메일 주소는 ${vo.getEmail()} 입니다!
		<c:set target="${vo}" property="name" value="null" />
		<hr>
		회원님의 이름은 ${vo.name} 입니다! <br>
	</body>
</html>
