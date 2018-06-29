<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 7.
  Time: 오전 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
ID: <%= request.getParameter("id") %><br>
PW: <%= request.getParameter("pw") %><br>
자기소개: <%= request.getParameter("desc") %>
</body>
</html>
