<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 30.
  Time: 오전 12:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
pageContext에 있는 id값 : <%= pageContext.getAttribute("id") %><br/>
request에 있는 id값 : <%= request.getAttribute("id") %><br/>
session에 있는 id값 : <%= session.getAttribute("id") %><br/>
application에 있는 id값 : <%= application.getAttribute("id") %><br/>
</body>
</html>
