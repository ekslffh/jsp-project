<%@page import="java.net.URLDecoder"%>
<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>

	<%
		String title = request.getParameter("title");
	%>
	<p><%=URLDecoder.decode(title) %></p>
	<p>Today is :<%=request.getParameter("date")%></p>
</body>
</html>