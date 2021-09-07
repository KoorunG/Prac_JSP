<%@ page contentType="text/html; charset=utf-8" %>

<html>
	<head>
		<title>EL 스트림 연습</title>
	<head>
	<body>
	기존 : ${vals = [20,18,7,123,50,1,24]}	<br>
	<br><br>
	정렬 : ${sortNum = vals.stream().sorted().toList()} <br>
	역정렬 : ${sortReverse = vals.stream().sorted( (x1,x2) -> x1 > x2 ? -1 : 1).toList()} <br>
	개수 : ${count = vals.stream().count()} <br>
	20보다 큰 수 3개를 정렬 : ${sum = vals.stream().filter(x -> x > 20).limit(3).sorted().toList()} <br>
	최대값 : ${max = vals.stream().max().orElse("없음")}	<br>
	최소값 : ${min = vals.stream().min().orElseGet(() -> -1)}		<br>	<!-- orElseGet( Consumer ) => 값이 없을 경우 Consumer 실행! -->
	맵리듀스 : ${mapReduce = vals.stream().map(m -> 1).reduce(0, (a,b) -> a + b)}	<br>
	평균 : ${vals.stream().average().get()}
	</body>
</html>	