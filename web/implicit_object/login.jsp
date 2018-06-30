<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 12.
  Time: 오전 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
관리자(Master) 로그인
<form action="login_process.jsp" method="post">
    ID: <input type="text" name="id"><br>
    PW: <input type="password" name="pw"><br>
    <input type="submit" value="전송">
</form>
</body>
</html>
