<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import = "java.util.*" %>

<html>
	<head>
		<title>AnyMatch NoneMatch AllMatch</title>
	<head>
	<body>
		${lst = [1,2,3,4,5,6,7,8,9,10]} <br>
		조건 : x > 5 <br><hr>
		5보다 큰 숫자가 있는 지 확인 : ${lst.stream().anyMatch(x -> x > 5).orElseGet(() -> -1)} <br>
		모두 5보다 큰 숫자인지 확인 : ${lst.stream().allMatch(x -> x > 5).orElseGet(() -> -1)} <br>
		조건을 충족하는 원소가 한개도 존재하지 않는지 확인 : ${lst.stream().noneMatch(x -> x > 5).orElseGet(() -> -1)} <br>
	</body>
</html>