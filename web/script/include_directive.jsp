<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 5.
  Time: 오후 12:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String start = "[";
    String end ="]";
    Calendar cal = Calendar.getInstance();
    int year = cal.get(Calendar.YEAR);
    int month = cal.get(Calendar.MONTH) + 1;
    int date = cal.get(Calendar.DATE);
%>
현재의 날짜와 시각은<br>
<%@ include file="include_directive_date.jsp" %>

</body>
</html>
