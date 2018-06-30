<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    response.setContentType("text/html;charset=utf-8");
%>
${param.name}의 값은? ${Map[param.name]}<p></p>
${Map.A}<p></p>
${Map.B}<p></p>
${Map.C}<p></p>
${Map.D}<p></p>
</body>
</html>
