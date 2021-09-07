<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import = "chap11.Member, java.util.*" %>	<!-- chap11.Member.class와 java.util의 모든 클래스를 import -->

<html>
	<head>
		<title>stream - sorted</title>
	<head>
	<body>
		<% 
			List<Member> memberList = Arrays.asList(new Member("장나라", 20), new Member("이순신", 54), new Member("김유신", 19), new Member("쿠렁",30));
			
			request.setAttribute("members", memberList);
		%>
		
		${sorted = members.stream().sorted((m1,m2) -> m1.age.compareTo(m2.age)).toList(); ""} <br>
		${sorted} <br>
		<b><br> 
		${sorted.stream().map(m -> m.name).toList()} <br>
		</b>
	</body>
</html>