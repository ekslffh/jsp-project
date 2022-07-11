<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		boolean isLogin = ((request.getParameter("id").equals("ekslffh")) 
							&& (request.getParameter("passwd").equals("1234")));
		if(isLogin) response.sendRedirect("response01_success.jsp");
		else response.sendRedirect("response01_failed.jsp");
	%>
</body>
</html>