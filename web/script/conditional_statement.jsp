<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 5.
  Time: 오전 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
if<br>
<%
    int num = 5;
    if (num == 1) out.println("1<br/>");
    if (num == 5) out.println("5<br/>");
%>
<hr>
switch-case<br>
<%
    switch (num) {
        case 1:
            out.println("1<br/>");
            break;
        case 5:
            out.println("5<br/>");
            break;
        default:
            break;
    }
%>
<hr>
구구단 출력<br>
<%
    for (int i = 2; i <= 9; i++) {
        for (int j = 1; j <= 9; j++) {
            out.println(i + " * " + j + " = " + (i * j));
            out.println("<br>");
        }
        out.println("<br>");
    }
%>
</body>
</html>
