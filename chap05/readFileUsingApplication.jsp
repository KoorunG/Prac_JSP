<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.io.*" %>
<html>
	<head>
		<title>application을 이용해 경로 찾기</title>
	</head>
	<body>
		<%
			String resourcePath = "/message/notice.txt";
			%>
		자원의 실제 경로 : <br>
		<%= application.getRealPath(resourcePath) %>
		<br>
		---------------- <br>
		
		<%
			char[] buff = new char[128];
			int len = -1;
			
			String filePath = "C:/Program Files/Apache Software Foundation/Tomcat 9.0/webapps/chap05"+ resourcePath;
			try(InputStreamReader isr = new InputStreamReader(new FileInputStream(filePath), "utf-8")){
				while((len = isr.read(buff)) != -1){
					out.println(new String(buff,0,len));
				}
			} catch(IOException e) {
				out.println("Exception 발생! : " + e.getMessage());
			}
			%>
		
	</body>
</html>