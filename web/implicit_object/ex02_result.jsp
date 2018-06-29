<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 27.
  Time: 오후 3:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    response.setContentType("text/html;charset=utf-8");
%>
${param.name}의 값은? ${Map[param.name]}
${Map.A}<p></p>
${Map.B}<p></p>
${Map.C}<p></p>
${Map.D}<p></p>
</body>
</html>
