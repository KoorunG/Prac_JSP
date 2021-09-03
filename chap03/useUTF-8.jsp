<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page import="java.util.Date" %>
<%@ page trimDirectiveWhitespaces="true" %>
<% Date now = new Date(); %>

<html>
<head>
<title>현재 시간 </title>
</head>
<body>
현재 시각:
<%= now %><br>
<%= new java.util.Date() %>
</body>
</html>