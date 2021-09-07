<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%
	Map<String, Object> mapData = new HashMap<>();
	mapData.put("name","쿠렁");
	mapData.put("today",new java.util.Date());
%>
<c:set var="intArray" value="<%=new int[] {1,2,3,4,5} %>" />
<c:set var="map" value="<%= mapData %>" />

<html>
	<head>
		<title>forEach 태그</title>
	</head>
	<body>
		<h4>1부터 100까지 홀수의 합</h4>
		<c:set var="sum" value="0"/>
		<c:forEach var="i" begin="1" end="100" step="2">
		<c:set var="sum" value="${sum + i}"/>
		</c:forEach>
		결과 = ${sum}
		<hr>
		<br><br>
		<c:forEach var="n" begin="2" end="9">
		<c:set var="dan" value="${n}"/>
		<h4>구구단 ${n}단</h4>
		<c:forEach var="i" begin="1" end="9">
		<c:set var="multi" value="${dan * i}"/>
		${dan} x ${i} = ${multi} <br>
		</c:forEach>
		<hr>
		</c:forEach>
		
		<br>
		<h4>int형 배열</h4>
		
		<c:forEach var="i" items="${intArray}" begin="2" end="4" varStatus="status">
			${status.index} - ${status.count} - [${i}] <br>
		</c:forEach>
		<!-- items => 반복 처리할 데이터 / varStatus => 루프 상태를 저장할 EL변수 이름 -->
		<br><hr>
		<h4>Map</h4>
		<c:forEach var="i" items="${map}">
			${i.key} = ${i.value} <br>
		</c:forEach>
	</body>
</html>