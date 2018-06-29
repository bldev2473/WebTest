<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 27.
  Time: 오후 2:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int sum = 0;
    for (int i = 0; i < 100; i++) {
        sum += i;
    }
    request.setAttribute("sum", sum);
    request.setAttribute("sum1", sum);
    RequestDispatcher rd = request.getRequestDispatcher("ex01_result.jsp");
    rd.forward(request, response);
%>
</body>
</html>
