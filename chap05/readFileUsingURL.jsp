<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.URL" %>
<html>
	<head>
		<title>application 기본 객체를 이용하여 자원 읽기(URL)</title>
	</head>
	<body>
		<%
			String resourcePath = "/message/notice.txt";
			%>
		<br>
		---------------- <br>
		
		<%
			char[] buff = new char[128];
			int len = -1;
			URL url = application.getResource(resourcePath);
			try(InputStreamReader isr = new InputStreamReader(url.openStream(), "utf-8")){
				while((len = isr.read(buff)) != -1){
					out.println(new String(buff,0,len));
				}
			} catch(IOException e) {
				out.println("Exception 발생! : " + e.getMessage());
			}
			%>
		
	</body>
</html>