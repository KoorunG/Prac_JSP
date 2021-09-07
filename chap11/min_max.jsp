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
		
		나이 최대값 : ${maxAge = members.stream().map(m -> m.age).max().orElse("없음")} <br><hr>
		나이가 가장 많은 사람 객체 : ${maxAgeMemOpt = members.stream().max((m1,m2) -> m1.age.compareTo(m2.age)).orElse("없음")} <br><br>
		나이가 가장 많은 사람의 나이 : ${maxAgeMemOpt.age} <br>
		나이가 가장 많은 사람 : ${maxAgeMemOpt.name} <br>
		<!-- 객체를 스트림으로 구한 뒤 프로퍼티를 이용해 속성값을 얻었다 -->
	</body>
</html>