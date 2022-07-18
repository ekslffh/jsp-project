<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>요청 파라미터 이름</th>
			<th>요청 파라미터 값</th>
		</tr>
	<%
		request.setCharacterEncoding("UTF-8");
		
		Enumeration paraNames = request.getParameterNames();
		while (paraNames.hasMoreElements()) {
			String name = (String) paraNames.nextElement();
			out.print("<tr><td>" + name + "</td>\n");
			String paramValue = request.getParameter(name);
			out.print("<td>" + paramValue + "</td></tr>\n");
		}
	%>
	</table>
</body>
</html>