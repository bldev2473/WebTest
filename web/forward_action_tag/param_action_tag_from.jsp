<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 11.
  Time: 오전 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
from.jsp
<jsp:forward page="param_action_tag_to.jsp">
    <jsp:param name="name_value" value="value_value"/>
</jsp:forward>
</body>
</html>
