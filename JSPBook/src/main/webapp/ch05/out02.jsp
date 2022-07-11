<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		out.println("오늘의 날짜 및 시각 " + "<br>");
		out.println(Calendar.getInstance().getTime());
	%>
</body>
</html>