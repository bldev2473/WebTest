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
