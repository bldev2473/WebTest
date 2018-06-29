<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 5.
  Time: 오전 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int operand1 = 8;
    int operand2 = 5;
    int i = 0;
    int j = 1;
%>
operand1 + operand2 = <%= (operand1 + operand2) %><br/>
<%
    out.println("operand1 - operand2 = " + (operand1 - operand2) + "<br/>");
%>
1. i++ = <%= i++ %><br/>
2. i = <%= i %><br/>
3. ++i = <%= ++i %><br/>
4. i = <%= i %><br/>

</body>
</html>
