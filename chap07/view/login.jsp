<%@ page contentType = "text/html; charset=utf-8" %>

<html>
<head><title>login</title></head>
<body>

ID : <input type="text" size="30"><br>
PW : <input type="password" size="15"><br><br>

현재 시간은 <%= CURRENT_TIME %> 입니다. <br>
현재 시간은 <%= CURRENT_TIME2 %> 입니다. <br>
<!-- WEB-INF/web.xml 에 *.jsp로 URL 패턴이 매핑되었기 때문에 변수를 쓸 수 있는 것이다! -->

</body>
</html>
