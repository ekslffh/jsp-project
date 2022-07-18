<%@page contentType="text/html; charset=utf-8"%>
<%@page import="org.apache.commons.fileupload.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<%
		String path = "/Users/nasungmin/Desktop/upload";
	
		DiskFileUpload upload = new DiskFileUpload();
		
		upload.setSizeMax(1000000);
		upload.setSizeThreshold(4096);
		upload.setRepositoryPath(path);
		
		List items = upload.parseRequest(request);
		Iterator params = items.iterator();

		while (params.hasNext()) {
			FileItem item = (FileItem) params.next();
			if (item.isFormField()) { // 파일이 아닌 일반 문서
				String name = item.getFieldName();
				String value = item.getString("utf-8");
				out.println(name + "=" + value + "<br>");
				
			} else { // 파일
				String fileFieldName = item.getFieldName(); // 요청 파라미
				String fileName = item.getName(); // 파일 이름
				String contentType = item.getContentType();
				
				// 기존 업로드 경로에서 이름 가져와서 내가 지정한 경로에 저장하기
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
				long fileSize = item.getSize();
				
				File file = new File(path + "/" + fileName);
				item.write(file);
				
				out.println("-------------------------<br>");
				out.println("요청 파라미터 이름 : " + fileFieldName + "<br>");
				out.println("저장 파일 이름 : " + fileName + "<br>");
				out.println("파일 콘텐츠 유형 : " + contentType + "<br>");
				out.println("파일 크기 : " + fileSize);
			}
		}
	%>
</body>
</html>