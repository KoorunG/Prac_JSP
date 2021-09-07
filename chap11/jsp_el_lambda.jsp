<%@ page contentType="text/html; charset=utf-8" %>

<html>
	<head>
		<title>EL 람다식</title>
	</head>
	<body>
												<!-- 1번 방법 -->
		${greaterThan = (a,b) -> a > b ? a : b ; "greaterThan 함수 사용"}	<!-- 람다식 정의 -->		<br>
		${greaterThan(1,3)}						<!-- 람다식 호출 -->		<br>
		
												<!-- 2번 방법 -->
		${((a,b) -> a > b ? a : b)(1,3)}		<!-- 람다식을 특정 변수	에 할당하지 않고 바로 호출 --> 	<br>
		
		
		${factorial = n -> n == 1 ? 1 : n * factorial(n-1); "factorial 사용"}	<!-- 재귀함수(팩토리얼) -->			<br>
		${factorial(5)}
		
	</body>
</html> 