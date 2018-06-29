<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 7.
  Time: 오전 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String option1Str = request.getParameter("select1");
        out.print(option1Str + "<br>");

    String option2Str = request.getParameter("select2");
        out.print(option2Str + "<br>");

    String[] option3Arr = request.getParameterValues("select3");
    for (int i = 0; i < option3Arr.length; i++) {
        out.print(option3Arr[i] + "<br>");
    }
%>
</body>
</html>
