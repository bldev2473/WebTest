<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 12.
  Time: 오전 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String targetPage = request.getParameter("target") + ".jsp";
    if (request.getParameter("target") == null) {
        targetPage = "sub_contents1.jsp";
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
Main
<jsp:include page="sub_menu.jsp"/>
<jsp:include page="<%= targetPage%>"/>
</body>
</html>
