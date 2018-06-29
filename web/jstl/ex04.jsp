<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 28.
  Time: 오전 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String[] color ={"red", "orange", "yellow",  "green", "blue", "navy", "violet"};
    request.setAttribute("color", color);
%>
<jsp:forward page="ex04_result.jsp"/>
</body>
</html>
