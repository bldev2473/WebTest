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
