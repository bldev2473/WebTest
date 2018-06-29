<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 7.
  Time: 오전 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<
<form action="file_upload_test_action_page.jsp" method="post" enctype="multipart/form-data">
    사용자명: <input type="text" name="userName">
    업로드할 파일: <input type="file" name="uploadFile">
    <input type="submit" value="Upload">
</form>
</body>
</html>
