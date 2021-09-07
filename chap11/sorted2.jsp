<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import = "chap11.Member, java.util.*" %>	<!-- chap11.Member.class와 java.util의 모든 클래스를 import -->

<%
	Member member1 = new Member("장나라", 20);
	Member member2 = new Member("이순신", 54);
	Member member3 = new Member("김유신", 19);
	Member member4 = new Member("쿠렁",30);
	
	List<Member> memberList = new ArrayList<>();
	memberList.add(member1);
	memberList.add(member2);
	memberList.add(member3);
	memberList.add(member4);
	
	request.setAttribute("memberList", memberList);
%>

<html>
	<head>
		<title>스트림 2</title>
	</head>
	<body>
		카운팅 : ${memberList.stream().map(m -> 1).reduce(0, (m1, m2) -> m1 + m2)} <br>
		나이순 정렬 : ${memberList.stream().sorted((m1,m2) -> m1.age.compareTo(m2.age)).toList(); memberList.stream().map(m1 -> m1.name).toList()}
	</body>
</html>