<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
to.jsp<br>
<% String result1 = request.getParameter("name1"); %>
<%= result1 %><br>
<% String result2 = request.getParameter("name2"); %>
<%= result2 %><br>
<% String result3 = request.getParameter("name3"); %>
<%= result3 %><br>
</body>
</html>
