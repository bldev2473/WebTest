<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 7. 3.
  Time: 오후 3:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<% response.setStatus(200); %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>에러</h2>
<%= exception.getMessage() %>
</body>
</html>
