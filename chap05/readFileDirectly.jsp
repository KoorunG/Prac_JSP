<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.io.*" %>
<html>
	<head>
		<title>절대 경로 사용하여 자원 읽기</title>
	</head>
	<body>
		<%
			char[] buff = new char[128];
			int len = -1;
			
			String filePath = "C:/Program Files/Apache Software Foundation/Tomcat 9.0/webapps/chap05"+"/message/notice.txt";
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