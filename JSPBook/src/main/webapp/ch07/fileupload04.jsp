<%@page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<form action="fileupload04_process.jsp" method="post" enctype="multipart/form-data"
	name="fileForm">
		<p> 이 름 : <input type="text" name="name">
		<p> 제 목 : <input type="text" name="subject">
		<p> 파 일 : <input type="file" name="filename">
		<p> <input type="submit" value="파일 올리기">
	</form>
</body>
</html>