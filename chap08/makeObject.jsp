<%@ page contentType="text/html; charset=utf-8" %>
<jsp:useBean id="member" scope="request" class="chap08.member.MemberInfo"/>
<!-- useBean으로 컴파일된 class파일 사용! request스코프의 member으로 설정한 chap08.member.MemberInfo.class 를 사용할 것을 명시한 것 -->
<%
	member.setId("madvirus");
	member.setName("최범균");		// setter으로 프로퍼티 설정
%>
<jsp:forward page="/useObject.jsp"/>	<!-- 포워딩 -->